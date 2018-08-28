unit UnitSolo;

interface

  type
    TForm = class(TForm)

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
      procedure SetProfundidadeDeCamada1(const Value: array of double);
      procedure SetProfundidadeDeCamada2(const Value: double);
      procedure SetProfundidadeDeCamada3(const Value: double);
      procedure SetProfundidadeDeCamada4(const Value: double);
      function getCapacidadeDeCampo: double;
      function getCarbonoOrganico: double;
      function getDensidade: Double;
      function getID: integer;
      function getNome: String;
      function getProfundidadeDeCamada1:  double;
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

function TForm.getCapacidadeDeCampo: double;
begin
  Result := FCapacidadeDeCampo;
end;

function TForm.getCarbonoOrganico: double;
begin
  Result := FCarbonoOrganico;
end;

function TForm.getDensidade: double;
begin
  Result := FDensidade;
end;

function TForm.getID: integer;
begin
  Result := FID;
end;

function TForm.getNome: String;
begin
  Result := FNome;
end;

function TForm.getProfundidadeDeCamada1: double;
begin
  Result := FProfundidadeDeCamada1;
end;

function TForm.getProfundidadeDeCamada2: double;
begin
  Result := FProfundidadeDeCamada2;
end;

function TForm.getProfundidadeDeCamada3: double;
begin
  Result := FProfundidadeDeCamada3;
end;

function TForm.getProfundidadeDeCamada4: double;
begin
  Result := FProfundidadeDeCamada4;
end;

procedure TForm.SetCapacidadeDeCampo(const Value: double);
begin
  FCapacidadeDeCampo := Value;
end;

procedure TForm.SetCarbonoOrganico(const Value: double);
begin
  FCarbonoOrganico := Value;
end;

procedure TForm.SetDensidade(const Value: double);
begin
  FDensidade := Value;
end;

procedure TForm.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TForm.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TForm.SetProfundidadeDeCamada1(const Value: double);
begin
  FProfundidadeDeCamada1 := Value;
end;

procedure TForm.SetProfundidadeDeCamada2(const Value: double);
begin
  FProfundidadeDeCamada2 := Value;
end;

procedure TForm.SetProfundidadeDeCamada3(const Value: double);
begin
  FProfundidadeDeCamada3 := Value;
end;

procedure TForm.SetProfundidadeDeCamada4(const Value: double);
begin
  FProfundidadeDeCamada4 := Value;
end;

end.
