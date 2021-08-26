unit classe.Pedido;

interface

uses classe.Produto, System.Generics.Collections ;

type

  TPedidoItem = class
    Seq : integer;
    Numero: Integer;
    CodigoProduto: integer;
    Quantidade: Double;
    Unitario: Double;
    Total: Double;
  end;

  TPedido = class
  private
    FPedidoItens: TObjectList<TPedidoItem>;
  public
    Numero: Integer;
    Emissao: TDate;
    Cliente: Integer;
    ValorTotal: Double;
    property PedidoItens: TObjectList<TPedidoItem> read FPedidoItens write FPedidoItens;
    class procedure DeletarPedido(ANumPedido: Integer);
    function CarregarPedido(ANumPedido: Integer): Variant;
    function UltimoPedido: Integer;
    procedure GravarPedido;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TPedido }

uses uDM;

function TPedido.CarregarPedido(ANumPEdido: Integer): Variant;
begin

end;

constructor TPedido.Create;
begin
  FPedidoItens := TObjectList<TPedidoItem>.Create;
end;

class procedure TPedido.DeletarPedido(ANumPedido: Integer);
const LSQL: String = 'DELETE FROM PEDIDOS WHERE NUMERO = :NUMERO';
var
  F: TPedido;
begin
  F := TPedido.Create;
  try
    F.DeletarPedido(ANumPedido);
  finally
    F.Free
  end;
end;

destructor TPedido.Destroy;
begin
  FPedidoItens.Free;
  inherited;
end;

procedure TPedido.GravarPedido;
const LSQL: String = 'INSERT INTO PEDIDOS (numero_pedido, data_emissao, cliente, valor_total) ' +
                     'VALUES (:numero_pedido, :data_emissao, :cliente, :valor_total)';
CONST LSQLi: string = 'INSERT INTO PEDIDO_ITENS (numero_pedido, codigo_produto, quantidade, unitario, total) ' +
                      'VALUES (:numero_pedido, :codigo_produto, :quantidade, :unitario, :total)';
var
  LNumero: Integer;
  I: Integer;
begin
  LNumero := UltimoPedido;
  try
    try


      for I := 0 to FPedidoItens.Count - 1 do
      begin
//        PedidoItens[i].CodigoProduto;

      end;

    except


    end;
  finally

  end;
end;

function TPedido.UltimoPedido: Integer;
begin
//  'select max(numero_pedido) as ultimo from pedidos';
end;

end.
