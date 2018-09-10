program ProjectEstudar;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitCadastroUsuario in 'UnitCadastroUsuario.pas' {FormCadastroUsuario},
  UnitSolo in 'UnitSolo.pas',
  UnitAgrotoxico in 'UnitAgrotoxico.pas',
  UnitLocalidade in 'UnitLocalidade.pas',
  UnitCalculo in 'UnitCalculo.pas',
  UnitCadastroAgrotóxico in 'UnitCadastroAgrotóxico.pas' {FormAgrotoxico},
  UnitDataModule in 'UnitDataModule.pas' {DataModule1: TDataModule},
  UnitResultado in 'UnitResultado.pas',
  UnitCadastroSolo in 'UnitCadastroSolo.pas' {FormCadastroSolo},
  UnitCadastroLocalidade in 'UnitCadastroLocalidade.pas' {FormCadastroLocalidade},
  UnitCalculoResultado in 'UnitCalculoResultado.pas' {FormCalculoResultado};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
