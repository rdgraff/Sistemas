object DM: TDM
  Left = 0
  Top = 0
  Caption = 'DM'
  ClientHeight = 241
  ClientWidth = 381
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=meubanco'
      'DriverID=MySQL')
    Left = 32
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 32
    Top = 72
  end
end