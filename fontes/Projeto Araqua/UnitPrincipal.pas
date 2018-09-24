unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFormPrincipal = class(TForm)
    panelFundoPrincipal: TPanel;
    paneCadLocalidade: TPanel;
    paneCadAgro: TPanel;
    paneCadSolo: TPanel;
    paneCalculadora: TPanel;
    paneCadUser: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image5: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    panelLogout: TPanel;
    Image6: TImage;
    procedure Image1Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image3Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UnitCadastroUsuario, UnitCadastroAgrotóxico, UnitSolo,
  UnitCadastroSolo, UnitCadastroLocalidade, UnitCalculoResultado, UnitLogin,
  UnitDataModule, UnitUsuario;

procedure TFormPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
  var usr: TUsuario;
begin
  usr := TUsuario.Create;
  usr.Acesso := DataModule1.FDQueryUsuario.FieldByName('acesso').AsInteger;

  if (usr.acesso=2) then
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

end;

procedure TFormPrincipal.Image1Click(Sender: TObject);
begin
    if FormCadastroUsuario=NIL then
      begin
        FormCadastroUsuario := TFormCadastroUsuario.Create(self);
        FormCadastroUsuario.ShowModal;
      end;
end;

procedure TFormPrincipal.Image2Click(Sender: TObject);
begin
  if FormCalculoResultado = NIL then
    begin
      FormCalculoResultado := TFormCalculoResultado.Create(self);
      FormCalculoResultado.ShowModal;
    end;
end;

procedure TFormPrincipal.Image3Click(Sender: TObject);
begin
    if FormCadastroSolo = NIL then
      begin
        FormCadastroSolo := TFormCadastroSolo.Create(self);
        FormCadastroSolo.ShowModal;
      end;
end;

procedure TFormPrincipal.Image4Click(Sender: TObject);
begin
    if FormAgrotoxico = NIL then
      begin
        FormAgrotoxico := TFormAgrotoxico.Create(self);
        FormAgrotoxico.ShowModal;
      end;

end;

procedure TFormPrincipal.Image5Click(Sender: TObject);
begin
    if FormCadastroLocalidade = NIL then
      begin
        FormCadastroLocalidade := TFormCadastroLocalidade.Create(self);
        FormCadastroLocalidade.ShowModal;
      end;
end;

procedure TFormPrincipal.Image6Click(Sender: TObject);
begin
  FormLogin := TFormLogin.Create(Self);
  FormLogin.Show;
  FormPrincipal.Hide;
end;

end.
