unit UnitCalculo;

interface
  type
    TCalculos = class

      public

      private

      published
        function fatorRetardamento(bd, oc, koc, fc: double): double;
        function tempoPercurso(l, fc, q, rf: double): double;
        function meiaVidaAgro(t: integer): double;
        function lixiviacao(tr, k: double): double;
        function massaPrevista(d, af: double): double;
        function concentracaoAgroAguaSubterranea(m, p, d, a: double):double;
        function recargaHidrica(precipitacao, irrigacao, evapotranspiracao: double): double;
    end;
implementation

{ TCalculos }

uses Math;

function TCalculos.concentracaoAgroAguaSubterranea(m, p, d, a: double): double;
begin
  Result := m/(p*d*a);
end;

function TCalculos.fatorRetardamento(bd, oc, koc, fc: double): double;
begin
  Result := 1 + ((bd*oc*koc)/fc);
end;

function TCalculos.lixiviacao(tr, k: double): double;
begin
  Result := Exp(-tr*k);
end;

function TCalculos.massaPrevista(d, af: double): double;
begin
  Result := d*af;
end;

function TCalculos.meiaVidaAgro(t: integer): double;
begin
  Result := 0.693/t;
end;

function TCalculos.recargaHidrica(precipitacao, irrigacao,
  evapotranspiracao: double): double;
begin
  Result := precipitacao + irrigacao - evapotranspiracao;
end;

function TCalculos.tempoPercurso(l, fc, q, rf: double): double;
begin
  q := q/365;
  Result := ((l*fc)/q)*rf;
end;

end.
