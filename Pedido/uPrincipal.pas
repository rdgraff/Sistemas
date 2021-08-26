unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.NumberBox, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFPrincipal = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    eNomeCliente: TEdit;
    gbProduto: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eDescricaoProduto: TEdit;
    btnAdicionarProduto: TButton;
    eCodigoProduto: TNumberBox;
    eQuantidade: TNumberBox;
    eUnitario: TNumberBox;
    eValorTotal: TNumberBox;
    btnEditarPedido: TButton;
    btnDeletarPedido: TButton;
    eCodigoCliente: TNumberBox;
    Panel2: TPanel;
    dbgProdutos: TDBGrid;
    Panel4: TPanel;
    Label5: TLabel;
    Panel3: TPanel;
    btnGravarPedido: TButton;
    btnSair: TButton;
    cdsProdutos: TClientDataSet;
    cdsProdutoscodigo: TIntegerField;
    cdsProdutosdescricao: TStringField;
    cdsProdutosquantidade: TCurrencyField;
    cdsProdutosunitario: TCurrencyField;
    cdsProdutostotal: TCurrencyField;
    dsProdutos: TDataSource;
    eTotalPedido: TNumberBox;
    procedure eCodigoClienteExit(Sender: TObject);
    procedure eCodigoProdutoExit(Sender: TObject);
    procedure btnAdicionarProdutoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarPedidoClick(Sender: TObject);
    procedure btnEditarPedidoClick(Sender: TObject);
    procedure dbgProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsProdutosquantidadeValidate(Sender: TField);
    procedure btnDeletarPedidoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses classe.Pedido, classe.Produto, classe.Pessoa;

procedure TFPrincipal.btnAdicionarProdutoClick(Sender: TObject);
begin
  cdsProdutos.Append;
  cdsProdutoscodigo.AsInteger := eCodigoProduto.ValueInt;
  cdsProdutosdescricao.Text := eDescricaoProduto.Text;
  cdsProdutosquantidade.Value := eQuantidade.Value;
  cdsProdutosunitario.Value := eUnitario.Value;
  cdsProdutostotal.Value := eValorTotal.Value;
  cdsProdutos.Post;
end;

procedure TFPrincipal.btnDeletarPedidoClick(Sender: TObject);
begin
  TPedido.DeletarPedido(0);
end;

procedure TFPrincipal.btnEditarPedidoClick(Sender: TObject);
var
  LPedido: TPedido;
begin
  LPedido := TPedido.Create;
  try
    eCodigoCliente.ValueInt := LPedido.Cliente;
    eTotalPedido.Value := LPedido.ValorTotal;
  finally
    LPedido.Free;
  end;
end;

procedure TFPrincipal.btnGravarPedidoClick(Sender: TObject);
var
  LPedido: TPedido;
begin
  LPedido := TPedido.Create;
  try
    LPedido.Cliente := eCodigoCliente.ValueInt;
    LPedido.ValorTotal := eTotalPedido.Value;
  finally
    LPedido.Free;
  end;
end;

procedure TFPrincipal.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFPrincipal.cdsProdutosquantidadeValidate(Sender: TField);
begin
  if cdsProdutosquantidade.Value <= 0 then
    raise Exception.Create('Quantidade inv�lida');
end;

procedure TFPrincipal.dbgProdutosKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
  if (Key = 13) then
  begin
    cdsProdutos.Edit;
  end;
end;

procedure TFPrincipal.eCodigoClienteExit(Sender: TObject);
var
  LCliente : TCliente;
begin
  if eCodigoCliente.ValueInt > 0 then
  begin
    try
      LCliente := TCliente.Create;
      LCliente.LerCliente(eCodigoCliente.ValueInt);
      eNomeCliente.Text := LCliente.Nome;
    finally
      LCliente.Free;
    end;
  end;
end;

procedure TFPrincipal.eCodigoProdutoExit(Sender: TObject);
var
  Lproduto: TProduto;
begin
  if eCodigoProduto.ValueInt > 0 then
  begin
    try
      Lproduto := TProduto.Create;
      eDescricaoProduto.Text := Lproduto.Descricao;
      eUnitario.Value := Lproduto.Preco;
    finally
      Lproduto.Free;
    end;
  end;
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

end.