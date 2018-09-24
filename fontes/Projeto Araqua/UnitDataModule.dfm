object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 376
  Width = 575
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=dbaraqua'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object FDQueryUsuario: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from usuario')
    Left = 64
    Top = 88
  end
end
