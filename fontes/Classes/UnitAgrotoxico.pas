unit UnitAgrotoxico;

interface
  type
    TForm = class(TForm)

      private
        FPrincipioAtivo: String;
        FId: integer;
        FMeiaVida: double;
        FCoeficienteSorcao: double;
        FDose: double;
        procedure SetCoeficienteSorcao(const Value: double);
        procedure SetDose(const Value: double);
        procedure SetId(const Value: integer);
        procedure SetMeiaVida(const Value: double);
        procedure SetPrincipioAtivo(const Value: String);
        function getCoeficienteSorcao: double;
        function getDose: double;
        function getId: integer;
        function getMeiaVida: double;
        function getPrincipioAtivo: String;

      published
        property Id: integer read getId write SetId;
        property PrincipioAtivo: String read getPrincipioAtivo write SetPrincipioAtivo;
        property Dose: double read getDose write SetDose;
        property CoeficienteSorcao: double read getCoeficienteSorcao write SetCoeficienteSorcao;
        property MeiaVida: double read getMeiaVida write SetMeiaVida;
    end;
implementation

{ TForm }

function TForm.getCoeficienteSorcao: double;
begin
  Result := FCoeficienteSorcao;
end;

function TForm.getDose: double;
begin
  Result := FDose;
end;

function TForm.getId: integer;
begin
  Result := FId;
end;

function TForm.getMeiaVida: double;
begin
  Result := FMeiaVida;
end;

function TForm.getPrincipioAtivo: String;
begin
  Result := FPrincipioAtivo;
end;

procedure TForm.SetCoeficienteSorcao(const Value: double);
begin
  FCoeficienteSorcao := Value;
end;

procedure TForm.SetDose(const Value: double);
begin
  FDose := Value;
end;

procedure TForm.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TForm.SetMeiaVida(const Value: double);
begin
  FMeiaVida := Value;
end;

procedure TForm.SetPrincipioAtivo(const Value: String);
begin
  FPrincipioAtivo := Value;
end;

end.
