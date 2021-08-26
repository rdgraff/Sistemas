object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'FPrincipal'
  ClientHeight = 421
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 669
    Height = 118
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 692
    object Label1: TLabel
      Left = 40
      Top = 17
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object eNomeCliente: TEdit
      Left = 88
      Top = 31
      Width = 250
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object gbProduto: TGroupBox
      Left = 0
      Top = 56
      Width = 669
      Height = 62
      Align = alBottom
      Caption = '[ Produto ]'
      TabOrder = 2
      ExplicitWidth = 692
      object Label2: TLabel
        Left = 349
        Top = 14
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Quantidade'
      end
      object Label3: TLabel
        Left = 461
        Top = 15
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Unit'#225'rio'
      end
      object Label4: TLabel
        Left = 565
        Top = 15
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Total'
      end
      object eDescricaoProduto: TEdit
        Left = 88
        Top = 28
        Width = 250
        Height = 21
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object btnAdicionarProduto: TButton
        Left = 595
        Top = 23
        Width = 59
        Height = 25
        Caption = 'Adicionar'
        TabOrder = 1
        OnClick = btnAdicionarProdutoClick
      end
      object eCodigoProduto: TNumberBox
        Left = 37
        Top = 28
        Width = 50
        Height = 21
        Alignment = taRightJustify
        TabOrder = 2
        OnExit = eCodigoProdutoExit
      end
      object eQuantidade: TNumberBox
        Left = 344
        Top = 28
        Width = 61
        Height = 21
        Alignment = taRightJustify
        TabOrder = 3
      end
      object eUnitario: TNumberBox
        Left = 411
        Top = 28
        Width = 87
        Height = 21
        Alignment = taRightJustify
        TabOrder = 4
      end
      object eValorTotal: TNumberBox
        Left = 502
        Top = 28
        Width = 87
        Height = 21
        Alignment = taRightJustify
        TabOrder = 5
      end
    end
    object btnEditarPedido: TButton
      Left = 461
      Top = 4
      Width = 100
      Height = 25
      Caption = 'Editar Pedio'
      TabOrder = 3
      OnClick = btnEditarPedidoClick
    end
    object btnDeletarPedido: TButton
      Left = 461
      Top = 29
      Width = 100
      Height = 25
      Caption = 'Deletar Pedido'
      TabOrder = 4
      OnClick = btnDeletarPedidoClick
    end
    object eCodigoCliente: TNumberBox
      Left = 37
      Top = 31
      Width = 50
      Height = 21
      Alignment = taRightJustify
      TabOrder = 0
      OnExit = eCodigoClienteExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 118
    Width = 669
    Height = 257
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 692
    ExplicitHeight = 239
    object dbgProdutos: TDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 663
      Height = 228
      Align = alClient
      DataSource = dsProdutos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyDown = dbgProdutosKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          ReadOnly = True
          Title.Caption = 'Produto'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantidade'
          Title.Alignment = taRightJustify
          Title.Caption = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'unitario'
          Title.Alignment = taRightJustify
          Title.Caption = 'Unit'#225'rio'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Title.Alignment = taRightJustify
          Title.Caption = 'Total'
          Width = 80
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 0
      Top = 234
      Width = 669
      Height = 23
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 216
      ExplicitWidth = 692
      object Label5: TLabel
        Left = 523
        Top = 0
        Width = 59
        Height = 23
        Align = alRight
        Caption = 'Total Pedido'
        ExplicitLeft = 587
        ExplicitTop = 3
      end
      object eTotalPedido: TNumberBox
        Left = 582
        Top = 0
        Width = 87
        Height = 23
        Align = alRight
        Alignment = taRightJustify
        TabOrder = 0
        ExplicitLeft = 502
        ExplicitTop = 2
        ExplicitHeight = 21
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 375
    Width = 669
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 357
    ExplicitWidth = 692
    object btnGravarPedido: TButton
      AlignWithMargins = True
      Left = 460
      Top = 3
      Width = 100
      Height = 40
      Align = alRight
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = btnGravarPedidoClick
      ExplicitLeft = 483
    end
    object btnSair: TButton
      AlignWithMargins = True
      Left = 566
      Top = 3
      Width = 100
      Height = 40
      Align = alRight
      Caption = '&Sair'
      TabOrder = 1
      OnClick = btnSairClick
      ExplicitLeft = 589
    end
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 112
    Top = 206
    object cdsProdutoscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsProdutosdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object cdsProdutosquantidade: TCurrencyField
      FieldName = 'quantidade'
      OnValidate = cdsProdutosquantidadeValidate
      DisplayFormat = ',0.00'
    end
    object cdsProdutosunitario: TCurrencyField
      FieldName = 'unitario'
      DisplayFormat = ',0.00#'
    end
    object cdsProdutostotal: TCurrencyField
      FieldName = 'total'
      DisplayFormat = ',0.00'
    end
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 112
    Top = 254
  end
end