program Pedidos;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FPrincipal},
  classe.Pedido in 'classe.Pedido.pas',
  classe.Pessoa in 'classe.Pessoa.pas',
  classe.Produto in 'classe.Produto.pas',
  uDataModule in 'uDataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
