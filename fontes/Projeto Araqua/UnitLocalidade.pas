unit UnitLocalidade;

interface
  type
    TLocalidade = class
      private
        FPrecipitacao: double;
        FId: integer;
        FProfundidadeAquifero: integer;
        FEvapotranspiracao: double;
        FPorosidadeAquifero: double;
        FIrrigacao: double;
        FDecliv: double;
        FInterplan: double;
        FFxcont: double;
        FCoefe: double;
        FDescricao: String;
        procedure SetEvapotranspiracao(const Value: double);
        procedure SetId(const Value: integer);
        procedure SetIrrigacao(const Value: double);
        procedure SetPorosidadeAquifero(const Value: double);
        procedure SetPrecipitacao(const Value: double);
        procedure SetProfundidadeAquifero(const Value: integer);
        procedure SetDescricao(const Value: String);
        procedure SetDecliv(const Value: double);
        procedure SetInterplan(const Value: double);
        procedure SetFxcont(const Value: double);
        procedure SetCoefe(const Value: double);
        function getEvapotranspiracao: double;
        function getId: integer;
        function getIrrigacao: double;
        function getPorosidadeAquifero: double;
        function getPrecipitacao: double;
        function getProfundidadeAquifero: integer;
        function getDescricao: String;
        function getDecliv: double;
        function getInterplan: double;
        function getFxcont: double;
        function getCoefe: double;

      published
        property Id: integer read getId write SetId;
        property Precipitacao: double read getPrecipitacao write SetPrecipitacao;
        property Evapotranspiracao: double read getEvapotranspiracao write SetEvapotranspiracao;
        property Irrigacao: double read getIrrigacao write SetIrrigacao;
        property PorosidadeAquifero: double read getPorosidadeAquifero write SetPorosidadeAquifero;
        property ProfundidadeAquifero: integer read getProfundidadeAquifero write SetProfundidadeAquifero;
        property Decliv: double read getDecliv write SetDecliv;
        property Interplan: double read getInterplan write SetInterplan;
        property Fxcont: double read getFxcont write SetFxcont;
        property Coefe: double read getCoefe write SetCoefe;
        property Descricao: String read getDescricao write SetDescricao;
    end;
implementation

{ TForm }

function TLocalidade.getCoefe: double;
begin
  Result := FCoefe;
end;

function TLocalidade.getDecliv: double;
begin
  Result := FDecliv;
end;

function TLocalidade.getDescricao: String;
begin
  Result := FDescricao;
end;

function TLocalidade.getEvapotranspiracao: double;
begin
  Result := FEvapotranspiracao;
end;

function TLocalidade.getFxcont: double;
begin
  Result := FFxcont;
end;

function TLocalidade.getId: integer;
begin
  Result := FId;
end;

function TLocalidade.getInterplan: double;
begin
  Result := FInterplan;
end;

function TLocalidade.getIrrigacao: double;
begin
  Result := FIrrigacao;
end;

function TLocalidade.getPorosidadeAquifero: double;
begin
  Result := FPorosidadeAquifero;
end;

function TLocalidade.getPrecipitacao: double;
begin
  Result := FPrecipitacao;
end;

function TLocalidade.getProfundidadeAquifero: integer;
begin
  Result := FProfundidadeAquifero;
end;

procedure TLocalidade.SetCoefe(const Value: double);
begin
  FCoefe := Value;
end;

procedure TLocalidade.SetDecliv(const Value: double);
begin
  FDecliv := Value;
end;

procedure TLocalidade.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TLocalidade.SetEvapotranspiracao(const Value: double);
begin
  FEvapotranspiracao := Value;
end;

procedure TLocalidade.SetFxcont(const Value: double);
begin
  FFxcont := Value;
end;

procedure TLocalidade.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TLocalidade.SetInterplan(const Value: double);
begin
  FInterplan := Value;
end;

procedure TLocalidade.SetIrrigacao(const Value: double);
begin
  FIrrigacao := Value;
end;

procedure TLocalidade.SetPorosidadeAquifero(const Value: double);
begin
  FPorosidadeAquifero := Value;
end;

procedure TLocalidade.SetPrecipitacao(const Value: double);
begin
  FPrecipitacao := Value;
end;

procedure TLocalidade.SetProfundidadeAquifero(const Value: integer);
begin
  FProfundidadeAquifero := Value;
end;

end.
