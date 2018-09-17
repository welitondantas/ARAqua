unit UnitSolo;

interface

  type
    TSolo = class

    private
      FID: integer;
      FNome: String;
      FDensidadeSolo2: double;
      FDensidadeSolo3: double;
      FDensidadeSolo1: double;
      FDensidadeSolo4: double;
      FProfundidadeDeCamada2: integer;
      FProfundidadeDeCamada3: integer;
      FProfundidadeDeCamada1: integer;
      FProfundidadeDeCamada4: integer;
      FCarbonoOrganico2: double;
      FCarbonoOrganico3: double;
      FCarbonoOrganico1: double;
      FCarbonoOrganico4: double;
      FCapacidadeDeCampo2: double;
      FCapacidadeDeCampo3: double;
      FCapacidadeDeCampo1: double;
      FCapacidadeDeCampo4: double;
      procedure SetCapacidadeDeCampo1(const Value: double);
      procedure SetCapacidadeDeCampo2(const Value: double);
      procedure SetCapacidadeDeCampo3(const Value: double);
      procedure SetCapacidadeDeCampo4(const Value: double);
      procedure SetCarbonoOrganico1(const Value: double);
      procedure SetCarbonoOrganico2(const Value: double);
      procedure SetCarbonoOrganico3(const Value: double);
      procedure SetCarbonoOrganico4(const Value: double);
      procedure SetDensidadeSolo1(const Value: double);
      procedure SetDensidadeSolo2(const Value: double);
      procedure SetDensidadeSolo3(const Value: double);
      procedure SetDensidadeSolo4(const Value: double);
      procedure SetID(const Value: integer);
      procedure SetNome(const Value: String);
      procedure SetProfundidadeDeCamada1(const Value: integer);
      procedure SetProfundidadeDeCamada2(const Value: integer);
      procedure SetProfundidadeDeCamada3(const Value: integer);
      procedure SetProfundidadeDeCamada4(const Value: integer);
      function getCapacidadeDeCampo1: double;
      function getCapacidadeDeCampo2: double;
      function getCapacidadeDeCampo3: double;
      function getCapacidadeDeCampo4: double;
      function getCarbonoOrganico1: double;
      function getCarbonoOrganico2: double;
      function getCarbonoOrganico3: double;
      function getCarbonoOrganico4: double;
      function getDensidadeSolo1: double;
      function getDensidadeSolo2: double;
      function getDensidadeSolo3: double;
      function getDensidadeSolo4: double;
      function getID: integer;
      function getNome: String;
      function getProfundidadeDeCamada1: integer;
      function getProfundidadeDeCamada2: integer;
      function getProfundidadeDeCamada3: integer;
      function getProfundidadeDeCamada4: integer;

    public

    published
      property ID: integer read getID write SetID;
      property Nome: String read getNome write SetNome;
      property ProfundidadeDeCamada1: integer read getProfundidadeDeCamada1 write SetProfundidadeDeCamada1;
      property ProfundidadeDeCamada2: integer read getProfundidadeDeCamada2 write SetProfundidadeDeCamada2;
      property ProfundidadeDeCamada3: integer read getProfundidadeDeCamada3 write SetProfundidadeDeCamada3;
      property ProfundidadeDeCamada4: integer read getProfundidadeDeCamada4 write SetProfundidadeDeCamada4;
      property CapacidadeDeCampo1: double read getCapacidadeDeCampo1 write SetCapacidadeDeCampo1;
      property CapacidadeDeCampo2: double read getCapacidadeDeCampo2 write SetCapacidadeDeCampo2;
      property CapacidadeDeCampo3: double read getCapacidadeDeCampo3 write SetCapacidadeDeCampo3;
      property CapacidadeDeCampo4: double read getCapacidadeDeCampo4 write SetCapacidadeDeCampo4;
      property DensidadeSolo1: double read getDensidadeSolo1 write SetDensidadeSolo1;
      property DensidadeSolo2: double read getDensidadeSolo2 write SetDensidadeSolo2;
      property DensidadeSolo3: double read getDensidadeSolo3 write SetDensidadeSolo3;
      property DensidadeSolo4: double read getDensidadeSolo4 write SetDensidadeSolo4;
      property CarbonoOrganico1: double read getCarbonoOrganico1 write SetCarbonoOrganico1;
      property CarbonoOrganico2: double read getCarbonoOrganico2 write SetCarbonoOrganico2;
      property CarbonoOrganico3: double read getCarbonoOrganico3 write SetCarbonoOrganico3;
      property CarbonoOrganico4: double read getCarbonoOrganico4 write SetCarbonoOrganico4;
    end;

implementation

{ TSolo }

function TSolo.getCapacidadeDeCampo1: double;
begin
  Result := FCapacidadeDeCampo1;
end;

function TSolo.getCapacidadeDeCampo2: double;
begin
  Result := FCapacidadeDeCampo2;
end;

function TSolo.getCapacidadeDeCampo3: double;
begin
  Result := FCapacidadeDeCampo3;
end;

function TSolo.getCapacidadeDeCampo4: double;
begin
  Result := FCapacidadeDeCampo4;
end;

function TSolo.getCarbonoOrganico1: double;
begin
  Result := FCarbonoOrganico1;
end;

function TSolo.getCarbonoOrganico2: double;
begin
  Result := FCarbonoOrganico2;
end;

function TSolo.getCarbonoOrganico3: double;
begin
  Result := FCarbonoOrganico3;
end;

function TSolo.getCarbonoOrganico4: double;
begin
  Result := FCarbonoOrganico4;
end;

function TSolo.getDensidadeSolo1: double;
begin
  Result := FDensidadeSolo1;
end;

function TSolo.getDensidadeSolo2: double;
begin
  Result := FDensidadeSolo2;
end;

function TSolo.getDensidadeSolo3: double;
begin
  Result := FDensidadeSolo3;
end;

function TSolo.getDensidadeSolo4: double;
begin
  Result := FDensidadeSolo4;
end;

function TSolo.getID: integer;
begin
  Result := FID;
end;

function TSolo.getNome: String;
begin
  Result := FNome;
end;

function TSolo.getProfundidadeDeCamada1: integer;
begin
  Result := FProfundidadeDeCamada1;
end;

function TSolo.getProfundidadeDeCamada2: integer;
begin
  Result := FProfundidadeDeCamada2;
end;

function TSolo.getProfundidadeDeCamada3: integer;
begin
  Result := FProfundidadeDeCamada3;
end;

function TSolo.getProfundidadeDeCamada4: integer;
begin
  Result := FProfundidadeDeCamada4;
end;

procedure TSolo.SetCapacidadeDeCampo1(const Value: double);
begin
  FCapacidadeDeCampo1 := Value;
end;

procedure TSolo.SetCapacidadeDeCampo2(const Value: double);
begin
  FCapacidadeDeCampo2 := Value;
end;

procedure TSolo.SetCapacidadeDeCampo3(const Value: double);
begin
  FCapacidadeDeCampo3 := Value;
end;

procedure TSolo.SetCapacidadeDeCampo4(const Value: double);
begin
  FCapacidadeDeCampo4 := Value;
end;

procedure TSolo.SetCarbonoOrganico1(const Value: double);
begin
  FCarbonoOrganico1 := Value;
end;

procedure TSolo.SetCarbonoOrganico2(const Value: double);
begin
  FCarbonoOrganico2 := Value;
end;

procedure TSolo.SetCarbonoOrganico3(const Value: double);
begin
  FCarbonoOrganico3 := Value;
end;

procedure TSolo.SetCarbonoOrganico4(const Value: double);
begin
  FCarbonoOrganico4 := Value;
end;

procedure TSolo.SetDensidadeSolo1(const Value: double);
begin
  FDensidadeSolo1 := Value;
end;

procedure TSolo.SetDensidadeSolo2(const Value: double);
begin
  FDensidadeSolo2 := Value;
end;

procedure TSolo.SetDensidadeSolo3(const Value: double);
begin
  FDensidadeSolo3 := Value;
end;

procedure TSolo.SetDensidadeSolo4(const Value: double);
begin
  FDensidadeSolo4 := Value;
end;

procedure TSolo.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TSolo.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TSolo.SetProfundidadeDeCamada1(const Value: integer);
begin
  FProfundidadeDeCamada1 := Value;
end;

procedure TSolo.SetProfundidadeDeCamada2(const Value: integer);
begin
  FProfundidadeDeCamada2 := Value;
end;

procedure TSolo.SetProfundidadeDeCamada3(const Value: integer);
begin
  FProfundidadeDeCamada3 := Value;
end;

procedure TSolo.SetProfundidadeDeCamada4(const Value: integer);
begin
  FProfundidadeDeCamada4 := Value;
end;

end.
