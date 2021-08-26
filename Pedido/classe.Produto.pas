unit classe.Produto;

interface

type
  TProduto = class
  private

  Public
    Codigo: integer;
    Descricao: String;
    Preco: Double;
    procedure create(AValue: Integer) overload;
  end;

implementation

{ TProduto }

procedure TProduto.create(AValue: Integer);
begin
  Codigo := AValue;
  Descricao := '';
  Preco := 0;
end;

end.
