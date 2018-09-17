unit UnitDAO;

interface
  uses UnitSolo;

  type
    TDao = class
      public

      private

      published
        function buscaSoloPeloId(id: integer): TSolo;
    end;

implementation

{ TDao }

uses UnitCalculoResultado;

function TDao.buscaSoloPeloId(id: integer): TSolo;
begin
  with FormCalculoResultado.FDQuerySolo do
		begin
			Close;
			SQL.Text := 'select * from solo where id = :id'; //
			ParamByName('id').Value := id;
			Open;
		end;
end;

end.
