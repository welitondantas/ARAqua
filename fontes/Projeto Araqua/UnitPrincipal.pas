unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.Imaging.GIFImg, Vcl.ComCtrls,
  Vcl.Menus, IniFiles, Vcl.Themes, Vcl.WinXCalendars, Vcl.ToolWin;

type
  TFormPrincipal = class(TForm)
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    Usurio1: TMenuItem;
    Cadastros1: TMenuItem;
    Clculos1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Solo1: TMenuItem;
    Localidade1: TMenuItem;
    Agrotxicos1: TMenuItem;
    Gerais1: TMenuItem;
    guaSuperficial1: TMenuItem;
    rocarUsurio1: TMenuItem;
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
    ImgCalcular: TImage;
    Label2: TLabel;
    Panel1: TPanel;
    Image2: TImage;
    Label7: TLabel;
    Panel2: TPanel;
    Image3: TImage;
    Label8: TLabel;
    Configuraes1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    AlterarTema1: TMenuItem;
    Timer1: TTimer;
    CalendarView1: TCalendarView;
    Calendrio1: TMenuItem;
    procedure ImageUserClick(Sender: TObject);
    procedure ImageAgroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImageSoloClick(Sender: TObject);
    procedure ImageLocalClick(Sender: TObject);
    procedure ImgCalcularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImageLogoutClick(Sender: TObject);
    procedure AlterarTema1Click(Sender: TObject);
    procedure AlterarSenha1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Calendrio1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rocarUsurio1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
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

uses UnitCadastroUsuario, UnitCadastroAgrot�xico, UnitSolo,
  UnitCadastroSolo, UnitCadastroLocalidade, UnitCalculoResultado, UnitLogin,
  UnitDataModule, UnitUsuario, UnitFuncoes, UnitTema, UnitAlteraSenha;

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
     //Carrega valores para conex�o com banco de dados
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
                            ShowMessage('N�o foi poss�vel realizar a conex�o com servidor.'+#13+'Verifique o arquivo de configura��o ou tente novamente mais tarde.'+#13+'Motivo: '+e.Message);
                            Application.Terminate;
                          end;
          end;

     StatusBar1.Panels[2].Text := ' Servidor: '+SERVER;
     StatusBar1.Panels[3].Text := ' Usu�rio: '+MyUser;
     StatusBar1.Panels[4].Text := ' Database: '+MyDatabase;
    finally
      ArqIni.Free;
    end;
 end
   else
 begin
    ShowMessage('Arquivo de configura��o n�o encontrado. Verifique!');
    Application.Terminate;
 end;

 FormLogin:=TFormLogin.Create(self);
  if FormLogin.ShowModal = mrOK then
    begin
      if (acesso=2) then
        begin
          paneCadLocalidade.Visible := true;
          paneCadAgro.Visible := true;
          paneCadSolo.Visible := true;
          paneCadUser.Visible := true;
        end
      else
        begin
          paneCadLocalidade.Visible := false;
          paneCadAgro.Visible := false;
          paneCadSolo.Visible := false;
          paneCadUser.Visible := false;
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
        AdicionaLog(DateTimeToStr(now)+' - N�o foi poss�vel guardar os dados de usu�rio no Login.',LogDir);
        end;

        if ( length(usuario) > 0 ) then
              try
                  Datamodule1.FDQueryTema.Active := False;
                  Datamodule1.FDQueryTema.SQL[2] := 'where idTemas = '+idTema;
                  Datamodule1.FDQueryTema.Active := True;
                  TStyleManager.TrySetStyle( Datamodule1.FDQueryTema.FieldByName('NOMETEMA').AsString );
                  StatusBar1.Panels[5].Text := 'Tema : '+ Datamodule1.FDQueryTema.FieldByName('NOMETEMA').AsString;
              except
                  ShowMessage('O tema do usu�rio n�o pode ser aplicado.');
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

//Fecha todos os formul�rio se ocorrer troca de usu�rio.
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
                ShowMessage('N�o foi poss�vel carregar o wallpaper. Motivo: '+e.Message);
              end;
  if not logado = True then
    Application.Terminate;

end;

procedure TFormPrincipal.ImageUserClick(Sender: TObject);
begin
    if FormCadastroUsuario=NIL then
      begin
        FormCadastroUsuario := TFormCadastroUsuario.Create(self);
        FormCadastroUsuario.Show;
      end
      else
      FormCadastroUsuario.Show;
end;

procedure TFormPrincipal.ImgCalcularClick(Sender: TObject);
begin
  if FormCalculoResultado = NIL then
    begin
      FormCalculoResultado := TFormCalculoResultado.Create(self);
      FormCalculoResultado.Show;
    end
    else
      FormCalculoResultado.Show;
end;

procedure TFormPrincipal.rocarUsurio1Click(Sender: TObject);
begin
  FormCreate(nil);
end;

procedure TFormPrincipal.Sair1Click(Sender: TObject);
begin
  case MessageDlg('Deseja encerrar a aplica��o?', mtConfirmation, [mbYES, mbNO], 0) of
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

procedure TFormPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := TimeToStr(Time);
end;

procedure TFormPrincipal.ImageSoloClick(Sender: TObject);
begin
    if FormCadastroSolo = NIL then
      begin
        FormCadastroSolo := TFormCadastroSolo.Create(self);
        FormCadastroSolo.Show;
      end
      else
        FormCadastroSolo.Show;
end;

procedure TFormPrincipal.ImageAgroClick(Sender: TObject);
begin
    if FormAgrotoxico = NIL then
      begin
        FormAgrotoxico := TFormAgrotoxico.Create(self);
        FormAgrotoxico.Show;
      end
      else
        FormAgrotoxico.Show;
end;

procedure TFormPrincipal.ImageLocalClick(Sender: TObject);
begin
    if FormCadastroLocalidade = NIL then
      begin
        FormCadastroLocalidade := TFormCadastroLocalidade.Create(self);
        FormCadastroLocalidade.Show;
      end
      else
        FormCadastroLocalidade.Show;
end;

procedure TFormPrincipal.ImageLogoutClick(Sender: TObject);
begin
  FormLogin := TFormLogin.Create(Self);
  FormLogin.Show;
  FormPrincipal.Hide;
end;

end.
