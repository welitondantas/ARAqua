object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 376
  Width = 575
  object FDQueryUsuario: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from usuario')
    Left = 64
    Top = 88
  end
  object FDConnection1: TFDConnection
    Left = 56
    Top = 24
  end
end
