unit UnitResultado;

interface
  type
    TResultado = class
      public

      private
        FIdAgrotoxico: integer;
        FIdLocalidade: integer;
        FConcentracaoEstimada: integer;
        FId: integer;
        FIdSolo: integer;
        FRecargaHidrica: integer;
        procedure SetConcentracaoEstimada(const Value: integer);
        procedure SetId(const Value: integer);
        procedure SetIdAgrotoxico(const Value: integer);
        procedure SetIdLocalidade(const Value: integer);
        procedure SetIdSolo(const Value: integer);
        procedure SetRecargaHidrica(const Value: integer);
        function getConcentracaoEstimada: integer;
        function getId: integer;
        function getIdAgrotoxico: integer;
        function getIdLocalidade: integer;
        function getIdSolo: integer;
        function getRecargaHidrica: integer;

      published
        property Id: integer read getId write SetId;
        property IdLocalidade: integer read getIdLocalidade write SetIdLocalidade;
        property IdSolo: integer read getIdSolo write SetIdSolo;
        property IdAgrotoxico: integer read getIdAgrotoxico write SetIdAgrotoxico;
        property RecargaHidrica: integer read getRecargaHidrica write SetRecargaHidrica;
        property ConcentracaoEstimada: integer read getConcentracaoEstimada write SetConcentracaoEstimada;

    end;
implementation

{ TResultado }

function TResultado.getConcentracaoEstimada: integer;
begin
  Result := FConcentracaoEstimada;
end;

function TResultado.getId: integer;
begin
  Result := FId;
end;

function TResultado.getIdAgrotoxico: integer;
begin
  Result := FIdAgrotoxico;
end;

function TResultado.getIdLocalidade: integer;
begin
  Result := FIdLocalidade;
end;

function TResultado.getIdSolo: integer;
begin
  Result := FIdSolo;
end;

function TResultado.getRecargaHidrica: integer;
begin
  Result := FRecargaHidrica;
end;

procedure TResultado.SetConcentracaoEstimada(const Value: integer);
begin
  FConcentracaoEstimada := Value;
end;

procedure TResultado.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TResultado.SetIdAgrotoxico(const Value: integer);
begin
  FIdAgrotoxico := Value;
end;

procedure TResultado.SetIdLocalidade(const Value: integer);
begin
  FIdLocalidade := Value;
end;

procedure TResultado.SetIdSolo(const Value: integer);
begin
  FIdSolo := Value;
end;

procedure TResultado.SetRecargaHidrica(const Value: integer);
begin
  FRecargaHidrica := Value;
end;

end.
