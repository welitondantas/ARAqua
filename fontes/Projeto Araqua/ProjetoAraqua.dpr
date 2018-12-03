program ProjetoAraqua;

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
  UnitCalculoResultado in 'UnitCalculoResultado.pas' {FormCalculoResultado},
  UnitUsuario in 'UnitUsuario.pas',
  UnitLogin in 'UnitLogin.pas' {FormLogin},
  UnitBackup in 'UnitBackup.pas' {FmBackup},
  UnitAlteraSenha in 'UnitAlteraSenha.pas' {FmAlteraSenha},
  UnitTrataErro in 'UnitTrataErro.pas' {FmSistema_Trata_Erros},
  UnitFuncoes in 'UnitFuncoes.pas',
  UnitTema in 'UnitTema.pas' {FmTema},
  Vcl.Themes,
  Vcl.Styles,
  UnitReport in 'UnitReport.pas' {FmReport},
  UnitSobreARAqua in 'UnitSobreARAqua.pas' {FmSobre};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFmSistema_Trata_Erros, FmSistema_Trata_Erros);
  Application.Run;
end.
