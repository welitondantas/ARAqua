unit UnitCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask;

type
  TFormCadastroUsuario = class(TForm)
    paneFormCad: TPanel;
    dbEditNomeUsuario: TDBEdit;
    dbEditSenha: TDBEdit;
    editRedigiteSenha: TEdit;
    dbComboAcesso: TDBComboBox;
    dbEditLogin: TDBEdit;
    btnSalvar: TButton;
    btnCancelar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroUsuario: TFormCadastroUsuario;

implementation

{$R *.dfm}

procedure TFormCadastroUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormCadastroUsuario := nil;
  Action := caFree;
end;

end.
