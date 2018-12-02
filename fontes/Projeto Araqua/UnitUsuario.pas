unit UnitUsuario;

interface
  type
    TUsuario = class
      public

      private
        FId: integer;
        FAcesso: integer;
        FTema: integer;
        FSenha: String;
        FLogin: String;
        FNome: String;
        procedure SetAcesso(const Value: integer);
        procedure SetId(const Value: integer);
        procedure SetTema(const Value: integer);
        procedure SetLogin(const Value: String);
        procedure SetNome(const Value: String);
        procedure SetSenha(const Value: String);
        function getAcesso: integer;
        function getId: integer;
        function getTema: integer;
        function getLogin: String;
        function getNome: String;
        function getSenha: String;

      published
        property Id: integer read getId write SetId;
        property Tema: integer read getTema write SetTema;
        property Nome: String read getNome write SetNome;
        property Login: String read getLogin write SetLogin;
        property Senha: String read getSenha write SetSenha;
        property Acesso: integer read getAcesso write SetAcesso;
    end;
implementation

{ TUsuario }

function TUsuario.getAcesso: integer;
begin
  Result := FAcesso;
end;

function TUsuario.getId: integer;
begin
  Result := FId;
end;

function TUsuario.getLogin: String;
begin
  Result := FLogin;
end;

function TUsuario.getNome: String;
begin
  Result := FNome;
end;

function TUsuario.getSenha: String;
begin
  Result := FSenha;
end;

function TUsuario.getTema: integer;
begin
  Result := FTema;
end;

procedure TUsuario.SetAcesso(const Value: integer);
begin
  FAcesso := Value;
end;

procedure TUsuario.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TUsuario.SetLogin(const Value: String);
begin
  FLogin := Value;
end;

procedure TUsuario.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TUsuario.SetSenha(const Value: String);
begin
  FSenha := Value;
end;

procedure TUsuario.SetTema(const Value: integer);
begin
  FTema := Value;
end;

end.
