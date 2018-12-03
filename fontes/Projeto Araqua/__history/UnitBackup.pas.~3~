unit UnitBackup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl, Vcl.Mask, ShellAPI,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, AdvMemo, AdvmSQLS, FlCtrlEx, IOUtils,IdGlobalProtocols,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFmBackup = class(TForm)
    PageControlBackup: TPageControl;
    TabSheetCliente: TTabSheet;
    Splitter1: TSplitter;
    PanelBarra: TPanel;
    ButtonSair: TButton;
    PanelDados: TPanel;
    GroupBox1: TGroupBox;
    PanelLista: TPanel;
    PanelFiltro: TPanel;
    Label10: TLabel;
    ButtonConsulta: TButton;
    EditNome: TEdit;
    FileListBox1: TFileListBox;
    AdvMemo1: TAdvMemo;
    ButtonExec: TButton;
    DirectoryListBox1: TDirectoryListBox;
    FilterComboBox1: TFilterComboBox;
    PanelParametro: TPanel;
    RadioButtonBackup: TRadioButton;
    RadioButtonRest: TRadioButton;
    Label1: TLabel;
    Memo1: TMemo;
    ButtonDelete: TButton;
    Button1: TButton;
    Label2: TLabel;
    LabelStatus: TLabel;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    ButtonRefresh: TButton;
    DBGrid1: TDBGrid;
    ButtonKill: TButton;
    ButtonKillAll: TButton;
    AdvSQLMemoStyler1: TAdvSQLMemoStyler;
    procedure ButtonSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonExecClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FileListBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure ButtonConsultaClick(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure ButtonDeleteClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EditNomeKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonRefreshClick(Sender: TObject);
    procedure ButtonKillClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButtonKillAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmBackup: TFmBackup;

implementation

{$R *.dfm}

uses UnitPrincipal, UnitFuncoes, UnitDataModule;

procedure TFmBackup.Button1Click(Sender: TObject);
begin
  ShellExecute(Application.Handle,nil,'explorer.exe',PChar(FormPrincipal.BackupDir), nil,SW_NORMAL );
end;

procedure TFmBackup.ButtonRefreshClick(Sender: TObject);
begin
  Datamodule1.FDQuerySession.Active := False;
  Datamodule1.FDQuerySession.ParamByName('DATABASE').AsString := FormPrincipal.MyDatabase;
  Datamodule1.FDQuerySession.Active := True;
end;

procedure TFmBackup.ButtonConsultaClick(Sender: TObject);
begin
  FilterComboBox1.Filter := 'Selecionados |*'+EditNome.Text+'*.* | SQL (*.sql)|*.sql| DMP (*.dmp)|*.dmp';
  FileListBox1.Update;
//  FileListBox1.Refresh;
end;

procedure TFmBackup.ButtonDeleteClick(Sender: TObject);
begin
if  FileExists(FileListBox1.FileName) then
      if Application.MessageBox('Tem certeza que deseja deletar arquivo selecionado?','Atenção!',mb_yesno + mb_iconquestion) = id_yes then
        Begin
         DeleteFile(FileListBox1.FileName);
         Sleep(500);
         ShowMessage('Arquivo de backup apagado.');
         ButtonConsulta.Click;
        End;
end;

procedure TFmBackup.ButtonExecClick(Sender: TObject);
var aux,Arquivo:String;
mydate :TDatetime;
begin
  mydate := now;
//arquivo := 'bkp'+StringReplace( StringReplace( DateTimeToStr(now)),'/','_',[rfReplaceAll],':','',[rfReplaceAll]) +'.sql';
  arquivo := 'bkp'+FormatDateTime('YYYYMMDDHHMMSS',mydate)+'.sql';
//showmessage(arquivo);
  if RadioButtonBackup.Checked then
    begin

    aux := 'cmd.exe /c ""'+FormPrincipal.MySqlDir+'mysqldump" --user=' + FormPrincipal.MyUser +' --password=' + FormPrincipal.MyPass +' --host='+FormPrincipal.MyServer+' --port=' + FormPrincipal.MyPort;
    aux := aux + ' --result-file=' + FormPrincipal.BackupDir + Arquivo +' --default-character-set=latin1 --routines --events --databases ' + FormPrincipal.MyDatabase +' | replace utf8 latin1 "';

{    aux := 'cmd.exe /c "mysqldump --opt --flush-logs --triggers --port=' + FormPrincipal.MyPort;
    aux := aux + ' --user=' + FormPrincipal.MyUser + ' --password=' + FormPrincipal.MyPass;
    aux := aux + ' --result-file=' + FormPrincipal.BackupDir + Arquivo +' --databases ' + FormPrincipal.MyDatabase +'"'; }
//  memo1.Text := aux;
    Application.ProcessMessages;
    if not UnitFuncoes.CreateProcessSimple(aux) then
        ShowMessage('Atenção, O BACKUP NÃO FOI PROCESSADO!')
      else
        begin
        ShowMessage('Backup Realizado!'+#13+'IMPORTANTE! Por segurança verifique o arquivo gerado.'+#13+FormPrincipal.BackupDir+arquivo);
        Sleep(1000);

        DataModule1.FDQueryDML.SQL.Clear;
        DataModule1.FDQueryDML.SQL.Text := 'insert into backuprestore (arquivo, datahora, operacao, idusuario) values (:arquivo, now(), :operacao, :idusuario);';
        DataModule1.FDQueryDML.ParamByName('ARQUIVO').AsString := Arquivo;
        DataModule1.FDQueryDML.ParamByName('OPERACAO').AsString := 'Backup';
        DataModule1.FDQueryDML.ParamByName('IDUSUARIO').AsInteger := FormPrincipal.idUsuario;
        DataModule1.FDQueryDML.ExecSQL;

        ButtonConsulta.Click;
        end;
    end;

if RadioButtonRest.Checked then
    begin
    ButtonRefresh.Click;
    if (DataModule1.FDQuerySession.RecordCount > 0) then ShowMessage('ATENÇÃO! Existem '+inttostr(DataModule1.FDQuerySession.RecordCount)+' processos para o banco selecionado.'+#13+'A rotina de restauração pode falhar. Recomendamos encerrá-los antes de proseguir.');

      if Application.MessageBox('Tem certeza que deseja restaurar o backup do arquivo selecionado?','Atenção!',mb_yesno + mb_iconquestion) = id_yes then
      Begin
        LabelStatus.Caption := 'Finalizando conexão com o banco de dados.';
        DataModule1.FDConnection1.Connected := False;
        Sleep(3000);
        LabelStatus.Caption := 'Conexões finalizadas. Iniciando Restauração';
        aux := 'cmd.exe /c ""'+FormPrincipal.MySqlDir+'mysql" --user=' + FormPrincipal.MyUser +' --password=' + FormPrincipal.MyPass +' --host='+FormPrincipal.MyServer+' --port=' + FormPrincipal.MyPort;
        aux := aux + ' < ' + FileListBox1.FileName +'"';
        Application.ProcessMessages;
        if not UnitFuncoes.createProcessSimple(aux) then
            ShowMessage('Atenção, A RESTAURAÇÃO NÃO FOI PROCESSADA!')
          else
            ShowMessage('Restauração Realizada!'+#13+'Bando restaurado utilizando o arquivo '+FileListBox1.FileName+#13+'Reinicie o sistema e valide a restauração.');
        LabelStatus.Caption := 'Realizando nova conexão com o banco de dados.';
        //DataModuleUsuario.ZCMySql.Connected := True;
        DataModule1.FDConnection1.Connected := True;

        DataModule1.FDQueryDML.SQL.Clear;
        DataModule1.FDQueryDML.SQL.Text := 'insert into backuprestore (arquivo, datahora, operacao, idusuario) values (:arquivo, now(), :operacao, :idusuario);';
        DataModule1.FDQueryDML.ParamByName('ARQUIVO').AsString := Arquivo;
        DataModule1.FDQueryDML.ParamByName('OPERACAO').AsString := 'Restauração';
        DataModule1.FDQueryDML.ParamByName('IDUSUARIO').AsInteger := FormPrincipal.idUsuario;
        DataModule1.FDQueryDML.ExecSQL;

        Sleep(3000);
        LabelStatus.Caption := 'Conexão realizada. É recomendado reiniciar o sistema para continuar a utilização.';
      end
      else
        ShowMessage('Operação cancelada!');
    end;

end;

procedure TFmBackup.ButtonKillAllClick(Sender: TObject);
begin
  if (DataModule1.FDQuerySession.RecordCount > 0) then

  DataModule1.FDQuerySession.First;
  while not DataModule1.FDQuerySession.Eof do
  begin
    try
      DataModule1.FDQueryKill.ParamByName('PROCESSO').AsInteger := DataModule1.FDQuerySession.FieldByName('ID').AsInteger;
      DataModule1.FDQueryKill.ExecSQL;
    except on E: Exception do
      begin
        ShowMessage('Não foi possivel encerrar o processo '+inttostr(DataModule1.FDQueryKill.ParamByName('ID').AsInteger)+#13+'Motivo: '+e.Message);
      end;
    end;
  DataModule1.FDQuerySession.Next;
  end;

  ButtonRefresh.Click;

end;

procedure TFmBackup.ButtonKillClick(Sender: TObject);
begin
  if (DataModule1.FDQuerySession.RecordCount > 0) then
  try
    DataModule1.FDQueryKill.ParamByName('PROCESSO').AsInteger := DataModule1.FDQuerySession.FieldByName('ID').AsInteger;
    DataModule1.FDQueryKill.ExecSQL;
  except on E: Exception do
    begin
      ShowMessage('Não foi possivel encerrar o processo '+inttostr(DataModule1.FDQueryKill.ParamByName('ID').AsInteger)+#13+'Motivo: '+e.Message);
    end;
  end;
  ButtonRefresh.Click;
end;

procedure TFmBackup.ButtonSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFmBackup.EditNomeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then ButtonConsulta.Click;
end;

procedure TFmBackup.FileListBox1Change(Sender: TObject);
var tamanho:double;
begin
if  FileExists(FileListBox1.FileName) then
    begin
      tamanho := FileSizeByName(FileListBox1.FileName);
      Memo1.Clear;
      Memo1.Lines.Append('Informações do arquivo');
      Memo1.Lines.Append('Nome do arquivo: '    +#13+FileListBox1.FileName);
      Memo1.Lines.Append('Data de criação: '    +#13+DateTimeToStr(TFile.GetCreationTime(FileListBox1.FileName)) );
      Memo1.Lines.Append('Data de modificação: '+#13+DateTimeToStr(TFile.GetLastWriteTime(FileListBox1.FileName)) );
      Memo1.Lines.Append('Último acesso: '      +#13+DateTimeToStr(TFile.GetLastAccessTime(FileListBox1.FileName)) );
      Memo1.Lines.Append('Tamanho em bytes: '+#13+ IntToStr(FileSizeByName(FileListBox1.FileName))+' bytes.');
      Memo1.Lines.Append('Tamanho em megabytes: '+#13+ FloatToStrF(tamanho/1048576,ffFixed, 4, 2 )+' MBs.');
      Memo1.Lines.Append('Tamanho em gigabytes: '+#13+ FloatToStrF(tamanho/1073741824,ffFixed, 4, 2 )+' GBs.');
    end
    else
      Memo1.Clear;
end;

procedure TFmBackup.FileListBox1DblClick(Sender: TObject);
begin
  try
    AdvMemo1.Lines.LoadFromFile(FileListBox1.FileName);
  except
    ShowMessage('Não foi possível carregar o arquivo selecionado. Verifique!');
  end;
end;

procedure TFmBackup.FileListBox1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
FileListBox1.ShowHint := True;
end;

procedure TFmBackup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmBackup := nil;
  Action := caFree;
end;

procedure TFmBackup.FormCreate(Sender: TObject);
begin
  FileListBox1.Directory := FormPrincipal.BackupDir;
end;

procedure TFmBackup.FormShow(Sender: TObject);
begin
  ButtonRefresh.Click;
end;

end.
