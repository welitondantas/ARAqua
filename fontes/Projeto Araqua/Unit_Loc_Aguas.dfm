object Form_Localidade: TForm_Localidade
  Left = 0
  Top = 0
  Caption = 'Localidade Aguas Superficial '
  ClientHeight = 637
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 739
    Height = 637
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 48
    ExplicitTop = 24
    object DBNavigator1: TDBNavigator
      Left = 135
      Top = 552
      Width = 440
      Height = 41
      TabOrder = 0
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 737
      Height = 400
      ActivePage = TabSheet1
      Align = alTop
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Manuten'#231#227'o /  Consulta'
        ExplicitLeft = 8
        ExplicitTop = 25
        object Label1: TLabel
          Left = 140
          Top = 26
          Width = 142
          Height = 16
          Caption = 'Descri'#231#227'o da Localidade:'
        end
        object Label2: TLabel
          Left = 43
          Top = 26
          Width = 17
          Height = 16
          Caption = 'ID:'
        end
        object Label3: TLabel
          Left = 138
          Top = 98
          Width = 144
          Height = 16
          Caption = 'Declividade de Terro (%)'
        end
        object Label4: TLabel
          Left = 99
          Top = 170
          Width = 183
          Height = 16
          Caption = 'Intercepta'#231#227'o pelas Plantas (%)'
        end
        object Label5: TLabel
          Left = 79
          Top = 234
          Width = 203
          Height = 16
          Caption = 'Largura da Faixa de Conten'#231#227'o (m)'
        end
        object Label6: TLabel
          Left = 64
          Top = 290
          Width = 218
          Height = 16
          Caption = 'Coeficiente de Escoamento Superficial'
        end
      end
    end
    object DBEdit1: TDBEdit
      Left = 76
      Top = 51
      Width = 63
      Height = 24
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 293
      Top = 51
      Width = 273
      Height = 24
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 293
      Top = 258
      Width = 121
      Height = 24
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 293
      Top = 195
      Width = 121
      Height = 24
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 293
      Top = 123
      Width = 121
      Height = 24
      TabOrder = 6
    end
    object DBEdit6: TDBEdit
      Left = 293
      Top = 315
      Width = 121
      Height = 24
      TabOrder = 7
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 401
      Width = 737
      Height = 120
      Align = alTop
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end