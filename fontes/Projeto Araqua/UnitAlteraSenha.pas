unit UnitAlteraSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TFmAlteraSenha = class(TForm)
    EditSenhaAtual: TEdit;
    EditNova: TEdit;
    EditConfirma: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    FDQueryLogin: TFDQuery;
    FDQueryAlterar: TFDQuery;
    Panel1: TPanel;
    ButtonCancelar: TButton;
    ButtonAltera: TButton;
    Image1: TImage;
    Shape1: TShape;
    Shape2: TShape;
    Label4: TLabel;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonAlteraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmAlteraSenha: TFmAlteraSenha;

implementation

{$R *.dfm}

uses UnitPrincipal, UnitFuncoes, UnitDataModule;

procedure TFmAlteraSenha.ButtonAlteraClick(Sender: TObject);
begin
  FDQueryLogin.Active := False;
  FDQueryLogin.ParamByName('IDUSUARIO').AsInteger := FormPrincipal.idUsuario;
  FDQueryLogin.Active := True;
    if (FDQueryLogin.FieldByName('SENHA').AsString = EditSenhaAtual.Text) then
      begin
       if (Length(EditNova.Text) >= 3) then
          begin
            if (EditNova.Text = EditConfirma.Text) then
              begin
                FDQueryAlterar.Active := False;
                FDQueryAlterar.ParamByName('SENHA').AsString := EditNova.Text;
                FDQueryAlterar.ParamByName('IDUSUARIO').AsInteger := FormPrincipal.idUsuario;
                  try
                    FDQueryAlterar.ExecSQL;
                    ShowMessage('Senha alterada com sucesso.');
                  except on E: exception do
                    ShowMessage('N�o foi poss�vel alterar a senha do usu�rio.'+#13+'Motivo do erro: '+e.Message);
                  end;
                Close;
              end
              else
              begin
                ShowMessage('As senhas informadas n�o coincidem. Verifique se as senhas s�o iguais e tente novamente.');
                EditNova.Text := '';
                EditConfirma.Text := '';
                EditNova.SetFocus;
              end;
          end
          else
            ShowMessage('A senha informada n�o atende aos requisitos m�nimos de seguran�a. Verifique!');
      end
      else
      begin
        ShowMessage('A senha atual n�o corresponde com a senha do usu�rio. Verifique!');
        EditSenhaAtual.Text := '';
        EditSenhaAtual.SetFocus;
      end;
end;

procedure TFmAlteraSenha.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFmAlteraSenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmAlteraSenha := nil;
  Action := CaFree;
end;

end.