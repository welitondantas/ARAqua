unit UnitResultado;

interface

  uses UnitSolo, UnitLocalidade, UnitAgrotoxico, UnitCalculo;

  type
    TResultado = class
      public

      private
        FConcentracaoEstimada: double;
        FId: integer;
        FRecargaHidrica: double;
        FId_Solo: integer;
        FId_Agrotoxico: integer;
        FId_Localidade: integer;
        procedure SetConcentracaoEstimada(const Value: double);
        procedure SetId(const Value: integer);
        procedure SetRecargaHidrica(const Value: double);
        procedure SetId_Agrotoxico(const Value: integer);
        procedure SetId_Localidade(const Value: integer);
        procedure SetId_Solo(const Value: integer);
        function getConcentracaoEstimada: double;
        function getId: integer;
        function getRecargaHidrica: double;
        function getId_Agrotoxico: integer;
        function getId_Localidade: integer;
        function getId_Solo: integer;


      published
        property Id: integer read getId write SetId;
        property RecargaHidrica: double read getRecargaHidrica write SetRecargaHidrica;
        property ConcentracaoEstimada: double read getConcentracaoEstimada write SetConcentracaoEstimada;
        property Id_Solo: integer read getId_Solo write SetId_Solo;
        property Id_Agrotoxico: integer read getId_Agrotoxico write SetId_Agrotoxico;
        property Id_Localidade: integer read getId_Localidade write SetId_Localidade;
    end;
implementation

{ TResultado }

{ TResultado }

function TResultado.getConcentracaoEstimada: double;
begin
  Result := FConcentracaoEstimada;
end;

function TResultado.getId: integer;
begin
  Result := FId;
end;

function TResultado.getId_Agrotoxico: integer;
begin
  Result := FId_Agrotoxico;
end;

function TResultado.getId_Localidade: integer;
begin
  Result := FId_Localidade;
end;

function TResultado.getId_Solo: integer;
begin
  Result := FId_Solo;
end;

function TResultado.getRecargaHidrica: double;
begin
  Result := FRecargaHidrica;
end;

procedure TResultado.SetConcentracaoEstimada(const Value: double);
begin
  FConcentracaoEstimada := Value;
end;

procedure TResultado.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TResultado.SetId_Agrotoxico(const Value: integer);
begin
  FId_Agrotoxico := Value;
end;

procedure TResultado.SetId_Localidade(const Value: integer);
begin
  FId_Localidade := Value;
end;

procedure TResultado.SetId_Solo(const Value: integer);
begin
  FId_Solo := Value;
end;

procedure TResultado.SetRecargaHidrica(const Value: double);
begin
  FRecargaHidrica := Value;
end;

end.
