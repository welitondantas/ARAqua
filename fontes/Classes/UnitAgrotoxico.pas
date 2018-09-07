unit UnitAgrotoxico;

interface
  type
    TAgrotoxico = class

      private
        FMeiaVidaCamada2: integer;
        FMeiaVidaCamada3: integer;
        FCoeficienteSorcaoCamada2: double;
        FPrincipioAtivo: String;
        FMeiaVidaCamada1: integer;
        FCoeficienteSorcaoCamada3: double;
        FCoeficienteSorcaoCamada1: double;
        FMeiaVidaCamada4: integer;
        FCoeficienteSorcaoCamada4: double;
        FId: integer;
        FDose: double;
        procedure SetCoeficienteSorcaoCamada1(const Value: double);
        procedure SetCoeficienteSorcaoCamada2(const Value: double);
        procedure SetCoeficienteSorcaoCamada3(const Value: double);
        procedure SetCoeficienteSorcaoCamada4(const Value: double);
        procedure SetDose(const Value: double);
        procedure SetId(const Value: integer);
        procedure SetMeiaVidaCamada1(const Value: integer);
        procedure SetMeiaVidaCamada2(const Value: integer);
        procedure SetMeiaVidaCamada3(const Value: integer);
        procedure SetMeiaVidaCamada4(const Value: integer);
        procedure SetPrincipioAtivo(const Value: String);
        function getCoeficienteSorcaoCamada1: double;
        function getCoeficienteSorcaoCamada2: double;
        function getCoeficienteSorcaoCamada3: double;
        function getCoeficienteSorcaoCamada4: double;
        function getDose: double;
        function getId: integer;
        function getMeiaVidaCamada1: integer;
        function getMeiaVidaCamada2: integer;
        function getMeiaVidaCamada3: integer;
        function getMeiaVidaCamada4: integer;
        function getPrincipioAtivo: String;

      published
        property Id: integer read getId write SetId;
        property PrincipioAtivo: String read getPrincipioAtivo write SetPrincipioAtivo;
        property Dose: double read getDose write SetDose;
        property CoeficienteSorcaoCamada1: double read getCoeficienteSorcaoCamada1 write SetCoeficienteSorcaoCamada1;
        property CoeficienteSorcaoCamada2: double read getCoeficienteSorcaoCamada2 write SetCoeficienteSorcaoCamada2;
        property CoeficienteSorcaoCamada3: double read getCoeficienteSorcaoCamada3 write SetCoeficienteSorcaoCamada3;
        property CoeficienteSorcaoCamada4: double read getCoeficienteSorcaoCamada4 write SetCoeficienteSorcaoCamada4;
        property MeiaVidaCamada1: integer read getMeiaVidaCamada1 write SetMeiaVidaCamada1;
        property MeiaVidaCamada2: integer read getMeiaVidaCamada2 write SetMeiaVidaCamada2;
        property MeiaVidaCamada3: integer read getMeiaVidaCamada3 write SetMeiaVidaCamada3;
        property MeiaVidaCamada4: integer read getMeiaVidaCamada4 write SetMeiaVidaCamada4;
    end;
implementation

{ TForm }

{ TAgrotoxico }

function TAgrotoxico.getCoeficienteSorcaoCamada1: double;
begin
  Result := FCoeficienteSorcaoCamada1;
end;

function TAgrotoxico.getCoeficienteSorcaoCamada2: double;
begin
  Result := FCoeficienteSorcaoCamada2;
end;

function TAgrotoxico.getCoeficienteSorcaoCamada3: double;
begin
  Result := FCoeficienteSorcaoCamada3;
end;

function TAgrotoxico.getCoeficienteSorcaoCamada4: double;
begin
  Result := FCoeficienteSorcaoCamada4;
end;

function TAgrotoxico.getDose: double;
begin
  Result := FDose;
end;

function TAgrotoxico.getId: integer;
begin
  Result := FId;
end;

function TAgrotoxico.getMeiaVidaCamada1: integer;
begin
  Result := FMeiaVidaCamada1;
end;

function TAgrotoxico.getMeiaVidaCamada2: integer;
begin
  Result := FMeiaVidaCamada2;
end;

function TAgrotoxico.getMeiaVidaCamada3: integer;
begin
  Result := FMeiaVidaCamada3;
end;

function TAgrotoxico.getMeiaVidaCamada4: integer;
begin
  Result := FMeiaVidaCamada4;
end;

function TAgrotoxico.getPrincipioAtivo: String;
begin
  Result := FPrincipioAtivo;
end;

procedure TAgrotoxico.SetCoeficienteSorcaoCamada1(const Value: double);
begin
  FCoeficienteSorcaoCamada1 := Value;
end;

procedure TAgrotoxico.SetCoeficienteSorcaoCamada2(const Value: double);
begin
  FCoeficienteSorcaoCamada2 := Value;
end;

procedure TAgrotoxico.SetCoeficienteSorcaoCamada3(const Value: double);
begin
  FCoeficienteSorcaoCamada3 := Value;
end;

procedure TAgrotoxico.SetCoeficienteSorcaoCamada4(const Value: double);
begin
  FCoeficienteSorcaoCamada4 := Value;
end;

procedure TAgrotoxico.SetDose(const Value: double);
begin
  FDose := Value;
end;

procedure TAgrotoxico.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TAgrotoxico.SetMeiaVidaCamada1(const Value: integer);
begin
  FMeiaVidaCamada1 := Value;
end;

procedure TAgrotoxico.SetMeiaVidaCamada2(const Value: integer);
begin
  FMeiaVidaCamada2 := Value;
end;

procedure TAgrotoxico.SetMeiaVidaCamada3(const Value: integer);
begin
  FMeiaVidaCamada3 := Value;
end;

procedure TAgrotoxico.SetMeiaVidaCamada4(const Value: integer);
begin
  FMeiaVidaCamada4 := Value;
end;

procedure TAgrotoxico.SetPrincipioAtivo(const Value: String);
begin
  FPrincipioAtivo := Value;
end;

end.
