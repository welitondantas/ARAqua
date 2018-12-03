unit UnitTrataErro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  AppEvnts, System.UITypes;

type
  TFmSistema_Trata_Erros = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSistema_Trata_Erros: TFmSistema_Trata_Erros;

implementation

{$R *.DFM}

procedure TFmSistema_Trata_Erros.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
var mensagem: String;
    Pos1, Pos2 : Integer;
begin
if Pos(UpperCase('EXCEPTION '), UpperCase(E.Message)) > 0  then
  begin
   Pos1 := Pos(UpperCase('exception '), UpperCase(E.Message)) + 11;
   Pos2 := Pos(UpperCase('. Error'), UpperCase(E.Message));
   Mensagem := Copy(E.Message,Pos1,Pos2 - Pos1);
   MessageDlg(Mensagem, mtError, [mbOK], 0);
  end
else
if Pos(UpperCase('invalid input value'), UpperCase(E.Message)) > 0  then
   MessageDlg('Dado Inv�lido, proceda a corre��o.', mtInformation, [mbOK], 0)
else
if Pos(UpperCase('is not a valid date'), UpperCase(E.Message)) > 0  then
   MessageDlg('Data inv�lida, proceda a corre��o.', mtInformation, [mbOK], 0)
else
{FireBird}
if Pos(UpperCase('*** null ***'), UpperCase(E.Message)) > 0  then
   begin
     Pos1 := Pos('column',E.Message) + 7;
     Pos2 := Pos(', value',E.Message);

     Mensagem := Copy(E.Message,Pos1,Pos2-Pos1);
     MessageDlg('� obrigat�rio o preenchimento do campo ' + mensagem + '.', mtInformation, [mbOK], 0);
   end
else
if Pos(UpperCase('violation of primary'), UpperCase(E.Message)) <> 0  then
   MessageDlg('Houve viola��o de chave prim�ria. Esse registro j� foi inclu�do.', mtError, [mbOK], 0)
else
if Pos(UpperCase('Input value'), UpperCase(E.Message)) <> 0  then
   MessageDlg('Campo preenchido com valor n�o v�lido. Proceda corre��o.', mtError, [mbOK], 0)
else
if Pos(UpperCase('is not a valid time'), UpperCase(E.Message)) <> 0  then
   MessageDlg('Hora inv�lida. Proceda corre��o.', mtError, [mbOK], 0)
else
if Pos(UpperCase('update aborted'), UpperCase(E.Message)) <> 0  then
   MessageDlg('A��o cancelada.', mtError, [mbOK], 0)
else
if Pos(UpperCase('is not a valid integer'), UpperCase(E.Message)) <> 0  then
   MessageDlg('N�o � um valor inteiro v�lido.', mtError, [mbOK], 0)
else
if Pos(UpperCase('a parent row'), UpperCase(E.Message)) <> 0  then
   MessageDlg('Houve viola��o de chave estrangeira. Verifique as dependencias deste registro.', mtError, [mbOK], 0)
else
if Pos(UpperCase('ORA-02292'), UpperCase(E.Message)) <> 0  then
   MessageDlg('Houve viola��o de chave prim�ria. Verifique as dependencias deste registro.', mtError, [mbOK], 0)
else
if Pos(UpperCase('ORA-06550'), UpperCase(E.Message)) <> 0  then
   MessageDlg('Identifica��o inv�lida ou procedure n�o cadastrada. Verifique os cadastros de abastecimento.', mtError, [mbOK], 0)
else
if Pos(UpperCase('ORA-01400'), UpperCase(E.Message)) <> 0  then
   MessageDlg('N�o � possivel inserir valor nulo. Verifique os campos informados.', mtError, [mbOK], 0)
else
if Pos(UpperCase('ORA-00903'), UpperCase(E.Message)) <> 0  then
   MessageDlg('Nome da tabela inv�lido. Verifique o cadastro das tabelas.', mtError, [mbOK], 0)
else
if Pos(UpperCase('invalid modify request'), UpperCase(E.Message)) <> 0  then
   MessageDlg('Dado inv�lido, proceda corre��o', mtError, [mbOK], 0)
else
if Pos(UpperCase('Delete Record'), UpperCase(E.Message)) <> 0  then
   MessageDlg('Deseja eliminar este registro?', mtError, [mbOK], 0)
else
if Pos(UpperCase('Drive not Ready'), UpperCase(E.Message)) <> 0  then
   MessageDlg('Disquete n�o est� pronto. Insira o Disquete para continuar...', mtError, [mbOK], 0)
else
   MessageDlg('Ocorreu o seguinte erro: ' + #13 +
               UpperCase(E.Message), mtError, [mbOK], 0);

end;

end.
