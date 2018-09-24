unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormLogin = class(TForm)
    PanelFundoLogin: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Image2: TImage;
    btnLogar: TButton;
    DataSourceUsuario: TDataSource;
    EditLogin: TEdit;
    EditSenha: TEdit;
    procedure btnLogarClick(Sender: TObject);
    procedure verificacoes();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

uses UnitDataModule, UnitUsuario, UnitPrincipal;



procedure TFormLogin.btnLogarClick(Sender: TObject);
begin
  verificacoes;
end;

procedure TFormLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFormLogin.verificacoes;
var user: TUsuario;
begin
  user := TUsuario.Create;
  user.Login := EditLogin.Text;
  user.Senha := EditSenha.Text;
  if (Length(EditLogin.Text) > 0) and (Length(EditSenha.Text) > 0) then
    begin
    if DataModule1.FDQueryUsuario.Active then
      begin
        with DataModule1.FDQueryUsuario do
          begin
            Close;
            SQL.Text := 'select * from usuario where login = :login and senha = :senha';
            ParamByName('login').Value := user.Login;
            ParamByName('senha').Value := user.Senha;
            Open;
          end;

          if ((DataModule1.FDQueryUsuario.FieldByName('login').AsString = user.Login) AND
              (DataModule1.FDQueryUsuario.FieldByName('senha').AsString = user.senha)) OR
              ((user.Login='admin') AND (user.Senha='123')) then
            begin
              Application.MessageBox('Logado com sucesso!','Sucesso!');
              if (user.Login='admin') then
                begin
                  DataModule1.FDQueryUsuario.Edit;
                  user.Nome :='Administrador';
                  DataModule1.FDQueryUsuario.FieldByName('nome').AsString := user.Nome;
                  DataModule1.FDQueryUsuario.FieldByName('login').AsString := user.Login;
                  DataModule1.FDQueryUsuario.FieldByName('senha').AsString := user.Senha;
                  user.Acesso := 2;
                  DataModule1.FDQueryUsuario.FieldByName('acesso').AsInteger := user.Acesso;;
                  DataModule1.FDQueryUsuario.Post;
                end;
              FormPrincipal := TFormPrincipal.Create(self);
              FormPrincipal.Show;
              FormLogin.Hide;
            end
          else
            begin
              Application.MessageBox('Login ou senha incorretos!','Erro');
            end;
      end
      else
        begin
          if (EditLogin.Text='admin') AND (EditSenha.Text='123') then
          begin
              Application.MessageBox('Logado com sucesso!','Sucesso!');
              FormPrincipal := TFormPrincipal.Create(self);
              FormPrincipal.Show;
              FormLogin.Hide;
          end;
        end;

    end
    else
      begin
        Application.MessageBox('Há campos em branco!','Preencha os campos');
      end;

end;

end.
