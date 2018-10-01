unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList;

type
  TFormPrincipal = class(TForm)
    panelFundoPrincipal: TPanel;
    paneCadLocalidade: TPanel;
    paneCadAgro: TPanel;
    paneCadSolo: TPanel;
    paneCalculadora: TPanel;
    paneCadUser: TPanel;
    ImageUser: TImage;
    ImgCalcular: TImage;
    ImageLocal: TImage;
    ImageSolo: TImage;
    ImageAgro: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    panelLogout: TPanel;
    ImageLogout: TImage;
    ImageList1: TImageList;
    procedure ImageUserClick(Sender: TObject);
    procedure ImageAgroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImageSoloClick(Sender: TObject);
    procedure ImageLocalClick(Sender: TObject);
    procedure ImgCalcularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImageLogoutClick(Sender: TObject);
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

procedure TFormPrincipal.ImageUserClick(Sender: TObject);
begin
    if FormCadastroUsuario=NIL then
      begin
        FormCadastroUsuario := TFormCadastroUsuario.Create(self);
        FormCadastroUsuario.ShowModal;
      end;
end;

procedure TFormPrincipal.ImgCalcularClick(Sender: TObject);
begin
  if FormCalculoResultado = NIL then
    begin
      FormCalculoResultado := TFormCalculoResultado.Create(self);
      FormCalculoResultado.ShowModal;
    end;
end;

procedure TFormPrincipal.ImageSoloClick(Sender: TObject);
begin
    if FormCadastroSolo = NIL then
      begin
        FormCadastroSolo := TFormCadastroSolo.Create(self);
        FormCadastroSolo.ShowModal;
      end;
end;

procedure TFormPrincipal.ImageAgroClick(Sender: TObject);
begin
    if FormAgrotoxico = NIL then
      begin
        FormAgrotoxico := TFormAgrotoxico.Create(self);
        FormAgrotoxico.ShowModal;
      end;

end;

procedure TFormPrincipal.ImageLocalClick(Sender: TObject);
begin
    if FormCadastroLocalidade = NIL then
      begin      
        FormCadastroLocalidade := TFormCadastroLocalidade.Create(self);
        FormCadastroLocalidade.ShowModal;
      end;
end;

procedure TFormPrincipal.ImageLogoutClick(Sender: TObject);
begin
  FormLogin := TFormLogin.Create(Self);
  FormLogin.Show;
  FormPrincipal.Hide;
end;

end.
