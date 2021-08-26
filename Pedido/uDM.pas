unit uDM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef;

type
  TDM = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure create;
  end;

  TConexao = class
    private

    public
      FDQuery: TFDQuery;
      Transaction: TFDTransaction;
      constructor create(AConnection: TFDConnection);
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

{ TDM }

procedure TDM.create;
begin
  TConexao.Create(FDConnection1);
end;

{ TConexao }

constructor TConexao.create(AConnection: TFDConnection);
begin
  Transaction.Connection := AConnection;
  FDQuery.Transaction := Transaction;
end;

end.
