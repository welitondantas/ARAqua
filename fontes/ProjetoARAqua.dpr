program ProjetoARAqua;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FmPrincipal},
  UnitDataModule in 'UnitDataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'ARAqua';
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFmPrincipal, FmPrincipal);
  Application.Run;
end.
