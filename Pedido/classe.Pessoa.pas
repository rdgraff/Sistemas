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

uses uDM;

procedure TCliente.LerCliente(AValue : Integer);
//var
//  Q: TConexao;
begin
  TConexao.create
  Codigo := AValue;
  Nome := '';
  Cidade := '';
  UF := '';
end;

end.
