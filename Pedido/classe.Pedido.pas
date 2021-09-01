unit classe.Pedido;

interface

uses classe.Produto, System.Generics.Collections ;

type

  TPedidoItem = class
  private

  public
    Sequencia : integer;
    Pedido: Integer;
    CodigoProduto: integer;
    Quantidade: Double;
    Unitario: Double;
    Total: Double;
    procedure GravarItemPedido();
  end;

  TPedido = class
  private
    FPedidoItens: TObjectList<TPedidoItem>;
  public
    Numero: Integer;
    Emissao: TDateTime;
    Cliente: Integer;
    ValorTotal: Double;
    property PedidoItens: TObjectList<TPedidoItem> read FPedidoItens write FPedidoItens;
    class procedure DeletarPedido(ANumPedido: Integer);
    function UltimoPedido: Integer;
    procedure GravarPedido();
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TPedido }

uses uDataModule, System.SysUtils;

constructor TPedido.Create;
begin
  FPedidoItens := TObjectList<TPedidoItem>.Create;
end;

class procedure TPedido.DeletarPedido(ANumPedido: Integer);
const LSQL: String = 'DELETE FROM PEDIDOS WHERE numero_pedido = :NUMERO';
begin
  DataModule1.fdquery1.ExecSQL('DELETE FROM PEDIDOS WHERE numero_pedido = :NUMERO', [ANumPedido]);
  DataModule1.fdquery1.ExecSQL('DELETE FROM PEDIDO_ITENS WHERE numero_pedido = :NUMERO', [ANumPedido]);
end;

destructor TPedido.Destroy;
begin
  FPedidoItens.Free;
  inherited;
end;

procedure TPedido.GravarPedido;
const LSQL: String = 'REPLACE INTO PEDIDOS (numero_pedido, data_emissao, cliente, valor_total) ' +
                     'VALUES (:numero_pedido, :Data_Emissao, :cliente, :valor_total)';
var
  LNumero: Integer;
begin
  LNumero := UltimoPedido;
  if Numero = 0 then
    Numero := LNumero + 1;
  DataModule1.fdquery1.ExecSQL(LSQL, [Numero, Emissao, Cliente, ValorTotal]);
end;

function TPedido.UltimoPedido: Integer;
begin
  DataModule1.fdquery1.Open('select max(numero_pedido) as ultimo from pedidos');
  Result := DataModule1.fdquery1.FieldByName('ultimo').AsInteger;
end;

{ TPedidoItem }

procedure TPedidoItem.GravarItemPedido;
CONST LSQL: string = 'REPLACE INTO PEDIDO_ITENS (sequencia, numero_pedido, codigo_produto, quantidade, unitario, total) ' +
                      'VALUES (:sequencia,:numero_pedido, :codigo_produto, :quantidade, :unitario, :total)';
begin
  DataModule1.fdquery1.ExecSQL(LSQL,
    [sequencia, Pedido, CodigoProduto, Quantidade, Unitario, Total]);
end;

end.
