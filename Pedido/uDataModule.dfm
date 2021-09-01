object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 241
  Width = 293
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=bancopedido'
      'User_Name=root'
      'Server=localhost'
      'DriverID=MySQL')
    Left = 56
    Top = 16
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'D:\Sistemas\Pedido\libmySQL.dll'
    Left = 184
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 112
    Top = 72
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 40
    Top = 136
  end
end
