object FormCadastroSolo: TFormCadastroSolo
  Left = 0
  Top = 0
  Caption = 'Cadastro de Solo'
  ClientHeight = 399
  ClientWidth = 793
  Color = 15332585
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object panelFundoSolo: TPanel
    Left = 0
    Top = 0
    Width = 793
    Height = 399
    Align = alClient
    Color = 14478812
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 176
    ExplicitTop = 200
    ExplicitWidth = 185
    ExplicitHeight = 41
    DesignSize = (
      793
      399)
    object GroupBoxSolo: TGroupBox
      Left = 39
      Top = 16
      Width = 233
      Height = 89
      Anchors = [akTop]
      Caption = ' Solo '
      TabOrder = 0
      ExplicitLeft = 16
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 20
        Height = 13
        Caption = 'Tipo'
        Color = 14609884
        ParentColor = False
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 43
        Width = 121
        Height = 21
        TabOrder = 0
      end
    end
    object GroupBoxCarreaSuper: TGroupBox
      Left = 39
      Top = 111
      Width = 233
      Height = 162
      Anchors = [akTop]
      Caption = ' Carreamento Superficial '
      TabOrder = 1
      ExplicitLeft = 16
      object Label2: TLabel
        Left = 24
        Top = 27
        Width = 90
        Height = 13
        Caption = 'Perda Solo (Kg/ha)'
        Color = 14806492
        ParentColor = False
      end
      object Label3: TLabel
        Left = 24
        Top = 93
        Width = 97
        Height = 13
        Caption = 'Perda '#193'gua (m3/ha)'
        Color = 14609884
        ParentColor = False
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 46
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 112
        Width = 121
        Height = 21
        TabOrder = 1
      end
    end
    object GroupBoxLixiviacao: TGroupBox
      Left = 278
      Top = 16
      Width = 501
      Height = 257
      Anchors = [akTop]
      Caption = ' Lixivia'#231#227'o '
      TabOrder = 2
      object Label4: TLabel
        Left = 9
        Top = 49
        Width = 48
        Height = 13
        Caption = 'Camada 1'
        Color = 14609884
        ParentColor = False
      end
      object Label5: TLabel
        Left = 9
        Top = 136
        Width = 48
        Height = 13
        Caption = 'Camada 3'
        Color = 14609884
        ParentColor = False
      end
      object Label6: TLabel
        Left = 9
        Top = 91
        Width = 51
        Height = 13
        Caption = ' Camada 2'
        Color = 14609884
        ParentColor = False
      end
      object Label7: TLabel
        Left = 9
        Top = 177
        Width = 48
        Height = 13
        Caption = 'Camada 4'
        Color = 14609884
        ParentColor = False
      end
      object Label8: TLabel
        Left = 40
        Top = 24
        Width = 88
        Height = 13
        Caption = 'Profundidade (cm)'
        Color = 14609884
        ParentColor = False
      end
      object Label9: TLabel
        Left = 142
        Top = 24
        Width = 132
        Height = 13
        Caption = 'Capacidade de campo (v/v)'
        Color = 14609884
        ParentColor = False
      end
      object Label10: TLabel
        Left = 280
        Top = 24
        Width = 90
        Height = 13
        Caption = 'Densidade (g/cm3)'
        Color = 14609884
        ParentColor = False
      end
      object Label11: TLabel
        Left = 384
        Top = 24
        Width = 114
        Height = 13
        Caption = 'Carbono Org'#226'nico (v/v)'
        Color = 14609884
        ParentColor = False
      end
      object DBEdit4: TDBEdit
        Left = 64
        Top = 43
        Width = 49
        Height = 21
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 64
        Top = 88
        Width = 49
        Height = 21
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 64
        Top = 133
        Width = 49
        Height = 21
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 64
        Top = 174
        Width = 49
        Height = 21
        TabOrder = 3
      end
      object DBEdit8: TDBEdit
        Left = 176
        Top = 43
        Width = 57
        Height = 21
        TabOrder = 4
      end
      object DBEdit9: TDBEdit
        Left = 176
        Top = 133
        Width = 57
        Height = 21
        TabOrder = 5
      end
      object DBEdit10: TDBEdit
        Left = 176
        Top = 174
        Width = 57
        Height = 21
        TabOrder = 6
      end
      object DBEdit11: TDBEdit
        Left = 296
        Top = 43
        Width = 57
        Height = 21
        TabOrder = 7
      end
      object DBEdit12: TDBEdit
        Left = 296
        Top = 88
        Width = 57
        Height = 21
        TabOrder = 8
      end
      object DBEdit13: TDBEdit
        Left = 296
        Top = 133
        Width = 57
        Height = 21
        TabOrder = 9
      end
      object DBEdit14: TDBEdit
        Left = 296
        Top = 174
        Width = 57
        Height = 21
        TabOrder = 10
      end
      object DBEdit15: TDBEdit
        Left = 407
        Top = 43
        Width = 58
        Height = 21
        TabOrder = 11
      end
      object DBEdit16: TDBEdit
        Left = 407
        Top = 88
        Width = 58
        Height = 21
        TabOrder = 12
      end
      object DBEdit17: TDBEdit
        Left = 408
        Top = 133
        Width = 57
        Height = 21
        TabOrder = 13
      end
      object DBEdit18: TDBEdit
        Left = 408
        Top = 174
        Width = 57
        Height = 21
        TabOrder = 14
      end
      object DBEdit19: TDBEdit
        Left = 176
        Top = 88
        Width = 57
        Height = 21
        TabOrder = 15
      end
    end
    object Panel1: TPanel
      Left = 165
      Top = 304
      Width = 458
      Height = 65
      Anchors = [akTop]
      TabOrder = 3
      ExplicitLeft = 151
      object btnCancelar: TButton
        Left = 40
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 0
      end
      object btnSalvar: TButton
        Left = 328
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 1
      end
    end
  end
end
