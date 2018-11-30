object FmTema: TFmTema
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Sele'#231#227'o de Tema'
  ClientHeight = 548
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 586
    Height = 463
    Align = alClient
    TabOrder = 0
    object Shape1: TShape
      Left = 1
      Top = 1
      Width = 584
      Height = 461
      Align = alClient
      Brush.Color = clMenu
      ExplicitLeft = 9
      ExplicitTop = 12
      ExplicitWidth = 65
      ExplicitHeight = 65
    end
    object DBImageTema: TDBImage
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 574
      Height = 451
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      DataField = 'Preview'
      DataSource = DataModule1.DataSourceTema
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 463
    Width = 586
    Height = 85
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 14
      Width = 201
      Height = 16
      Caption = 'Escolha o tema que deseja aplicar:'
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 392
      Top = 44
      Width = 80
      Height = 25
      Margins.Left = 20
      Margins.Top = 43
      Margins.Bottom = 15
      Align = alRight
      Caption = '&Aplicar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 495
      Top = 44
      Width = 80
      Height = 25
      Margins.Left = 20
      Margins.Top = 43
      Margins.Right = 10
      Margins.Bottom = 15
      Align = alRight
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 289
      Top = 44
      Width = 80
      Height = 25
      Margins.Left = 20
      Margins.Top = 43
      Margins.Bottom = 15
      Align = alRight
      Caption = '&Padr'#227'o'
      TabOrder = 2
      OnClick = Button3Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 9
      Top = 45
      Width = 257
      Height = 24
      KeyField = 'idTemas'
      ListField = 'NomeTema'
      ListSource = DataModule1.DataSourceTema
      TabOrder = 3
    end
  end
  object FDQueryUsuTema: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'UPDATE usuario SET idTemas = :TEMA'
      'WHERE id = :USUARIO')
    Left = 456
    Top = 360
    ParamData = <
      item
        Name = 'TEMA'
        ParamType = ptInput
      end
      item
        Name = 'USUARIO'
        ParamType = ptInput
      end>
  end
end
