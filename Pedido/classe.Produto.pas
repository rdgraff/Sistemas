unit classe.Produto;

interface

type
  TProduto = class
  private

  Public
    Codigo: integer;
    Descricao: String;
    Preco: Double;
    procedure LerProduto(AValue: Integer);
  end;

implementation

{ TProduto }

uses uDataModule, System.SysUtils;

procedure TProduto.LerProduto(AValue: Integer);
var
  LSQL: String;
begin
  LSQL := 'select descricao, preco from produtos where codigo = ' + intToStr(Avalue);
  DataModule1.fdquery1.open(LSQL);
  Descricao := DataModule1.fdquery1.FieldByName('descricao').AsString;
  Preco :=  DataModule1.fdquery1.FieldByName('preco').Value;
end;

end.
