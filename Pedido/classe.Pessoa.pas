unit classe.Pessoa;

interface

type
  TCliente = class
  private

  Public
    Codigo: Integer;
    Nome: String;
    Cidade: String;
    UF: String;
    procedure LerCliente(AValue : Integer);
  end;


implementation

{ TCliente }

uses uDataModule, System.SysUtils;

procedure TCliente.LerCliente(AValue : Integer);
var
  LSQL: String;
begin
  LSQL := 'select nome from clientes where codigo = ' + intToStr(Avalue);
  DataModule1.fdquery1.open(LSQL);
  Nome := DataModule1.fdquery1.FieldByName('nome').AsString;
end;

end.
