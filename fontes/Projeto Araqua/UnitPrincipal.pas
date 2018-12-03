unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.Imaging.GIFImg, Vcl.ComCtrls,
  Vcl.Menus, IniFiles, Vcl.Themes, Vcl.WinXCalendars, Vcl.ToolWin, System.UITypes;

type
  TFormPrincipal = class(TForm)
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Solo1: TMenuItem;
    Localidade1: TMenuItem;
    Agrotxicos1: TMenuItem;
    Gerais1: TMenuItem;
    reportGeral: TMenuItem;
    AlterarSenha1: TMenuItem;
    Utilitrios1: TMenuItem;
    Backup1: TMenuItem;
    PanelBotoes: TPanel;
    StatusBar1: TStatusBar;
    paneCadSolo: TPanel;
    ImageSolo: TImage;
    Label3: TLabel;
    paneCadAgro: TPanel;
    ImageAgro: TImage;
    Label4: TLabel;
    paneCadLocalidade: TPanel;
    ImageLocal: TImage;
    Label5: TLabel;
    paneCadUser: TPanel;
    ImageUser: TImage;
    Label1: TLabel;
    paneCalculadora: TPanel;
    Image1: TImage;
    paneSair: TPanel;
    ImageLogout: TImage;
    Label6: TLabel;
    ImgBackup: TImage;
    Label2: TLabel;
    Panel1: TPanel;
    Image2: TImage;
    Label7: TLabel;
    Panel2: TPanel;
    ImageCalcular: TImage;
    Label8: TLabel;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    AlterarTema1: TMenuItem;
    Timer1: TTimer;
    CalendarView1: TCalendarView;
    Calendrio1: TMenuItem;
    Usurio2: TMenuItem;
    Exibir1: TMenuItem;
    BarradeMenu1: TMenuItem;
    procedure ImageAgroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImageSoloClick(Sender: TObject);
    procedure ImageLocalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImageLogoutClick(Sender: TObject);
    procedure AlterarTema1Click(Sender: TObject);
    procedure AlterarSenha1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Calendrio1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rocarUsurio1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Solo1Click(Sender: TObject);
    procedure Backup1Click(Sender: TObject);
    procedure Gerais1Click(Sender: TObject);
    procedure ImgBackupClick(Sender: TObject);
    procedure ImageCalcularClick(Sender: TObject);
    procedure Agrotxicos1Click(Sender: TObject);
    procedure Localidade1Click(Sender: TObject);
    procedure Usurio2Click(Sender: TObject);
    procedure ImageUserClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure reportGeralClick(Sender: TObject);
    procedure BarradeMenu1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
  private
    { Private declarations }
  public
  BackupDir,LogDir,usuario,nomeUsuario,idTema,LEMBRAR, LOGIN, SENHA, ScriptDir,MySqlDir,MyUser,MyPass,MyDatabase,MyServer,MyPort:string;
  idUsuario, Acesso:integer;
  logado : boolean;
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

const
ARAQUA='ARAQUA';

implementation

{$R *.dfm}

uses UnitCadastroUsuario, UnitCadastroAgrotóxico, UnitSolo,
  UnitCadastroSolo, UnitCadastroLocalidade, UnitCalculoResultado, UnitLogin,
  UnitDataModule, UnitUsuario, UnitFuncoes, UnitTema, UnitAlteraSenha,
  UnitTrataErro, UnitBackup, UnitReport, UnitSobreARAqua;

procedure TFormPrincipal.Agrotxicos1Click(Sender: TObject);
begin
    if FormAgrotoxico = NIL then
      begin
        FormAgrotoxico := TFormAgrotoxico.Create(self);
        FormAgrotoxico.Show;
      end
      else
        FormAgrotoxico.Show;
end;

procedure TFormPrincipal.AlterarSenha1Click(Sender: TObject);
begin
   if FmAlteraSenha = nil then
    begin
      FmAlteraSenha := TFmAlteraSenha.Create(Self);
      FmAlteraSenha.Showmodal;
    end;
end;

procedure TFormPrincipal.AlterarTema1Click(Sender: TObject);
begin
   if FmTema = nil then
    FmTema := TFmTema.Create(Self)
  else
    FmTema.Show;
end;

procedure TFormPrincipal.Backup1Click(Sender: TObject);
begin
  if (FmBackup = nil) then
   begin
     FmBackup := TFmBackup.Create(self);
     FmBackup.Show;
   end
   else
   begin
     FmBackup.Show;
   end;

end;

procedure TFormPrincipal.BarradeMenu1Click(Sender: TObject);
begin
  if (BarradeMenu1.Checked = True) then
  begin
  PanelBotoes.Visible := False;
  BarradeMenu1.Checked := False;
  end
    else
  begin
  PanelBotoes.Visible := True;
  BarradeMenu1.Checked := True;
  end;

end;

procedure TFormPrincipal.Calendrio1Click(Sender: TObject);
begin
  if Calendrio1.Checked then
    begin
      CalendarView1.Visible := False;
      Calendrio1.Checked := False;
    end
    else
    begin
      CalendarView1.Visible := True;
      Calendrio1.Checked := True;
    end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
  var usr: TUsuario;
      ARQUIVOINI, SERVER, DATABASE, PASSWORD, USER, LOG, BACKUP, MYSQL, SCRIPT, PORT,CRIPTO, DECRIPTO: string;
      ArqIni : TIniFile;
      I : integer;
begin
   // Verifica se o arquivo INI existe
   ARQUIVOINI := StringReplace(LowerCase(Application.ExeName),'.exe','.ini',[]);
 if FileExists(ARQUIVOINI) then
 begin
    try
     //Carrega valores para conexão com banco de dados
     ArqIni := TIniFile.Create(ARQUIVOINI);
     SERVER   := ArqIni.ReadString(ARAQUA, 'SERVER', '');
     PORT       := ArqIni.ReadString(ARAQUA, 'PORT', '');
     DATABASE   := ArqIni.ReadString(ARAQUA, 'DATABASE', '');
     PASSWORD   := ArqIni.ReadString(ARAQUA, 'PASSWORD', '');
     CRIPTO     := ArqIni.ReadString(ARAQUA, 'CRIPTO', '');
     USER       := ArqIni.ReadString(ARAQUA, 'USER', '');
     LOG        := ArqIni.ReadString(ARAQUA, 'LOG', '');
     BACKUP     := ArqIni.ReadString(ARAQUA, 'BACKUP', '');
     MYSQL      := ArqIni.ReadString(ARAQUA, 'MYSQL', '');
     LEMBRAR    := ArqIni.ReadString(ARAQUA, 'LEMBRAR', '');
     LOGIN      := ArqIni.ReadString(ARAQUA, 'LOGIN', '');
     SENHA      := ArqIni.ReadString(ARAQUA, 'SENHA', '');
     Datamodule1.FDConnection1.Params.UserName := USER;
     //DataModuleUsuario.ZCMySql.User := USER;
     if (CRIPTO='S') then
        begin
         DECRIPTO := Crypt('D',PASSWORD);
         MyPass:=DECRIPTO;
         Datamodule1.FDConnection1.Params.Password := DECRIPTO;

        end
        else
        begin
         MyPass:=PASSWORD;
         DECRIPTO :=PASSWORD;
         ArqIni.WriteString(ARAQUA,'PASSWORD',Crypt('C',PASSWORD));
         ArqIni.WriteString(ARAQUA,'CRIPTO','S');
         Datamodule1.FDConnection1.Params.Password := DECRIPTO;

        end;
     //ArqIni.Free;
     Datamodule1.FDConnection1.Params.Values['Port'] := PORT;
     Datamodule1.FDConnection1.Params.Values['Server'] := SERVER;
     Datamodule1.FDConnection1.Params.Database := DATABASE;
     LogDir:=LOG;
     BackupDir:=BACKUP;
     ScriptDir:=SCRIPT;
     MyServer:=SERVER;
     MySqlDir:=MYSQL;
     MyUser:=USER;
     MyPort:=PORT;
          try
          Datamodule1.FDConnection1.Connected := True;
          MyDatabase := DATABASE;
          except on
            E : Exception do
                          begin
                            ShowMessage('Não foi possível realizar a conexão com servidor.'+#13+'Verifique o arquivo de configuração ou tente novamente mais tarde.'+#13+'Motivo: '+e.Message);
                            Application.Terminate;
                          end;
          end;

     StatusBar1.Panels[2].Text := ' Servidor: '+SERVER;
     StatusBar1.Panels[3].Text := ' Usuário: '+MyUser;
     StatusBar1.Panels[4].Text := ' Database: '+MyDatabase;
    finally
      ArqIni.Free;
    end;
 end
   else
 begin
    ShowMessage('Arquivo de configuração não encontrado. Verifique!');
    Application.Terminate;
 end;

 FormLogin:=TFormLogin.Create(self);
  if FormLogin.ShowModal = mrOK then
    begin
      if (acesso=2) then
        begin
          paneCadLocalidade.Visible := True;
          paneCadAgro.Visible := True;
          paneCadSolo.Visible := True;
          paneCadUser.Visible := True;
          Localidade1.Enabled := True;
          Agrotxicos1.Enabled := True;
          Solo1.Enabled := True;
          Usurio2.Enabled := True;
        end
      else
        begin
          paneCadLocalidade.Visible := False;
          paneCadAgro.Visible := False;
          paneCadSolo.Visible := False;
          paneCadUser.Visible := False;
          Localidade1.Enabled := False;
          Agrotxicos1.Enabled := False;
          Solo1.Enabled := False;
          Usurio2.Enabled := False;
        end;


        try
        ArqIni := TIniFile.Create(ARQUIVOINI);
        if FormLogin.CheckBoxLembrar.Checked then
            begin

              ArqIni.WriteString(ARAQUA,'LEMBRAR','S');
              ArqIni.WriteString(ARAQUA,'LOGIN',FormLogin.EditLogin.Text);
              ArqIni.WriteString(ARAQUA,'SENHA',Crypt('C',FormLogin.EditSenha.Text));
            end
            else
            begin
              ArqIni.WriteString(ARAQUA,'LEMBRAR','N');
              ArqIni.WriteString(ARAQUA,'LOGIN',' ');
              ArqIni.WriteString(ARAQUA,'SENHA',' ');
            end;
        ArqIni.Free;
        except
        //AdicionaLog(DateTimeToStr(now)+' - Não foi possível guardar os dados de usuário no Login.',LogDir);
        end;

        if ( length(usuario) > 0 ) then
              try
                  Datamodule1.FDQueryTema.Active := False;
                  Datamodule1.FDQueryTema.SQL[2] := 'where idTemas = '+idTema;
                  Datamodule1.FDQueryTema.Active := True;
                  TStyleManager.TrySetStyle( Datamodule1.FDQueryTema.FieldByName('NOMETEMA').AsString );
                  StatusBar1.Panels[5].Text := 'Tema : '+ Datamodule1.FDQueryTema.FieldByName('NOMETEMA').AsString;
              except
                  ShowMessage('O tema do usuário não pode ser aplicado.');
              end;
      FormLogin.Close;
    end
    else
    begin
      Application.Terminate;
    end;
end;


procedure TFormPrincipal.FormShow(Sender: TObject);
var I:integer;
    Wallpaper:String;
begin

//Fecha todos os formulário se ocorrer troca de usuário.
         with Sender do
         begin
          for I := MDIChildCount - 1 downto 0 do
            MDIChildren[I].Close;
        {  LiberaTela;   }
          Show;
          end;

  Wallpaper := StringReplace(LowerCase(Application.ExeName),'.exe','.png',[]);
            if FileExists(wallpaper) then
              try
                Image1.Picture.LoadFromFile(wallpaper);
              except on E: exception do
                ShowMessage('Não foi possível carregar o wallpaper. Motivo: '+e.Message);
              end;
  if not logado = True then
    Application.Terminate;

end;

procedure TFormPrincipal.Gerais1Click(Sender: TObject);
begin
  if FormCalculoResultado = NIL then
    begin
      FormCalculoResultado := TFormCalculoResultado.Create(self);
      FormCalculoResultado.Show;
    end
    else
      FormCalculoResultado.Show;
end;

procedure TFormPrincipal.ImgBackupClick(Sender: TObject);
begin
  Backup1.Click;
end;

procedure TFormPrincipal.Localidade1Click(Sender: TObject);
begin
     if FormCadastroLocalidade = NIL then
      begin
        FormCadastroLocalidade := TFormCadastroLocalidade.Create(self);
        FormCadastroLocalidade.Show;
      end
      else
        FormCadastroLocalidade.Show;
end;

procedure TFormPrincipal.reportGeralClick(Sender: TObject);
begin
  FmReport := TFmReport.Create(self);
  FmReport.ShowModal;
end;

procedure TFormPrincipal.rocarUsurio1Click(Sender: TObject);
begin
  FormCreate(nil);
end;

procedure TFormPrincipal.Sair1Click(Sender: TObject);
begin
  case MessageDlg('Deseja encerrar a aplicação?', mtConfirmation, [mbYES, mbNO], 0) of
  mrYES:
    begin
    // Write code here for pressing button OK
    Application.Terminate;
    end;
  mrNO:
    begin

    end;
  end;
end;

procedure TFormPrincipal.Sobre1Click(Sender: TObject);
begin
  FmSobre := TFmSobre.Create(Self);
  FmSobre.ShowModal;
end;

procedure TFormPrincipal.Solo1Click(Sender: TObject);
begin
    if FormCadastroSolo = NIL then
      begin
        FormCadastroSolo := TFormCadastroSolo.Create(self);
        FormCadastroSolo.Show;
      end
      else
        FormCadastroSolo.Show;
end;

procedure TFormPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := TimeToStr(Time);
end;

procedure TFormPrincipal.Usurio2Click(Sender: TObject);
begin
    if FormCadastroUsuario=NIL then
      begin
        FormCadastroUsuario := TFormCadastroUsuario.Create(self);
        FormCadastroUsuario.Show;
      end
      else
      FormCadastroUsuario.Show;
end;

procedure TFormPrincipal.ImageSoloClick(Sender: TObject);
begin
  Solo1.Click;
end;

procedure TFormPrincipal.ImageUserClick(Sender: TObject);
begin
  Usurio2.Click;
end;

procedure TFormPrincipal.Image2Click(Sender: TObject);
begin
 reportGeral.Click;
end;

procedure TFormPrincipal.ImageAgroClick(Sender: TObject);
begin
  Agrotxicos1.Click;
end;

procedure TFormPrincipal.ImageCalcularClick(Sender: TObject);
begin
  Gerais1.Click;
end;

procedure TFormPrincipal.ImageLocalClick(Sender: TObject);
begin
  Localidade1.Click;
end;

procedure TFormPrincipal.ImageLogoutClick(Sender: TObject);
begin
  Sair1.Click;
end;

end.
