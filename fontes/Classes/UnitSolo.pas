unit UnitSolo;

interface

  type
    TSolo = class

    private
      FCapacidadeDeCampo: double;
      FDensidade: double;
      FID: integer;
      FProfundidadeDeCamada1: double;
      FProfundidadeDeCamada2: double;
      FProfundidadeDeCamada3: double;
      FProfundidadeDeCamada4: double;
      FNome: String;
      FCarbonoOrganico: double;
      procedure SetCapacidadeDeCampo(const Value: double);
      procedure SetCarbonoOrganico(const Value: double);
      procedure SetDensidade(const Value: Double);
      procedure SetID(const Value: integer);
      procedure SetNome(const Value: String);
      procedure SetProfundidadeDeCamada1(const Value: double);
      procedure SetProfundidadeDeCamada2(const Value: double);
      procedure SetProfundidadeDeCamada3(const Value: double);
      procedure SetProfundidadeDeCamada4(const Value: double);
      function getCapacidadeDeCampo: double;
      function getCarbonoOrganico: double;
      function getDensidade: Double;
      function getID: integer;
      function getNome: String;
      function getProfundidadeDeCamada1: double;
      function getProfundidadeDeCamada2: double;
      function getProfundidadeDeCamada3: double;
      function getProfundidadeDeCamada4: double;

    public

    published
      property ID: integer read getID write SetID;
      property Nome: String read getNome write SetNome;
      property ProfundidadeDeCamada1: double read getProfundidadeDeCamada1 write SetProfundidadeDeCamada1;
      property ProfundidadeDeCamada2: double read getProfundidadeDeCamada2 write SetProfundidadeDeCamada2;
      property ProfundidadeDeCamada3: double read getProfundidadeDeCamada3 write SetProfundidadeDeCamada3;
      property ProfundidadeDeCamada4: double read getProfundidadeDeCamada4 write SetProfundidadeDeCamada4;
      property CapacidadeDeCampo: double read getCapacidadeDeCampo write SetCapacidadeDeCampo;
      property Densidade: double read getDensidade write SetDensidade;
      property CarbonoOrganico: double read getCarbonoOrganico write SetCarbonoOrganico;
    end;

implementation

{ TForm }

function TSolo.getCapacidadeDeCampo: double;
begin
  Result := FCapacidadeDeCampo;
end;

function TSolo.getCarbonoOrganico: double;
begin
  Result := FCarbonoOrganico;
end;

function TSolo.getDensidade: double;
begin
  Result := FDensidade;
end;

function TSolo.getID: integer;
begin
  Result := FID;
end;

function TSolo.getNome: String;
begin
  Result := FNome;
end;

function TSolo.getProfundidadeDeCamada1: double;
begin
  Result := FProfundidadeDeCamada1;
end;

function TSolo.getProfundidadeDeCamada2: double;
begin
  Result := FProfundidadeDeCamada2;
end;

function TSolo.getProfundidadeDeCamada3: double;
begin
  Result := FProfundidadeDeCamada3;
end;

function TSolo.getProfundidadeDeCamada4: double;
begin
  Result := FProfundidadeDeCamada4;
end;

procedure TSolo.SetCapacidadeDeCampo(const Value: double);
begin
  FCapacidadeDeCampo := Value;
end;

procedure TSolo.SetCarbonoOrganico(const Value: double);
begin
  FCarbonoOrganico := Value;
end;

procedure TSolo.SetDensidade(const Value: double);
begin
  FDensidade := Value;
end;

procedure TSolo.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TSolo.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TSolo.SetProfundidadeDeCamada1(const Value: double);
begin
  FProfundidadeDeCamada1 := Value;
end;

procedure TSolo.SetProfundidadeDeCamada2(const Value: double);
begin
  FProfundidadeDeCamada2 := Value;
end;

procedure TSolo.SetProfundidadeDeCamada3(const Value: double);
begin
  FProfundidadeDeCamada3 := Value;
end;

procedure TSolo.SetProfundidadeDeCamada4(const Value: double);
begin
  FProfundidadeDeCamada4 := Value;
end;

end.
