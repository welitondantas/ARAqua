object FormCalculoResultado: TFormCalculoResultado
  Left = 0
  Top = 0
  Caption = 'C'#225'lculos'
  ClientHeight = 424
  ClientWidth = 794
  Color = 15201254
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFundo: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 424
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 376
    ExplicitTop = 192
    ExplicitWidth = 185
    ExplicitHeight = 41
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 792
      Height = 422
      ActivePage = TabSheetLixiviacao
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 722
      ExplicitHeight = 455
      object TabSheetLixiviacao: TTabSheet
        Caption = 'Lixivia'#231#227'o'
        ExplicitWidth = 714
        ExplicitHeight = 427
        object PanelTabLixiviacao: TPanel
          Left = 0
          Top = 0
          Width = 784
          Height = 394
          Align = alClient
          Color = 15463914
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 232
          ExplicitTop = 144
          ExplicitWidth = 185
          ExplicitHeight = 41
          DesignSize = (
            784
            394)
          object GroupBox1: TGroupBox
            Left = 23
            Top = 8
            Width = 281
            Height = 81
            Anchors = [akTop]
            Caption = 'Local'
            Color = 15529450
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            ExplicitLeft = 8
            object DBComboBox1: TDBComboBox
              Left = 24
              Top = 27
              Width = 185
              Height = 21
              TabOrder = 0
            end
          end
          object GroupBox2: TGroupBox
            Left = 23
            Top = 104
            Width = 281
            Height = 89
            Anchors = [akTop]
            Caption = 'Solo'
            Color = 15529450
            ParentBackground = False
            ParentColor = False
            TabOrder = 1
            ExplicitLeft = 8
            object DBComboBox2: TDBComboBox
              Left = 24
              Top = 35
              Width = 185
              Height = 21
              TabOrder = 0
            end
          end
          object GroupBox3: TGroupBox
            Left = 23
            Top = 208
            Width = 281
            Height = 113
            Anchors = [akTop]
            Caption = 'Agrot'#243'xico'
            Color = 15529450
            ParentBackground = False
            ParentColor = False
            TabOrder = 2
            ExplicitLeft = 8
            object Label3: TLabel
              Left = 215
              Top = 40
              Width = 57
              Height = 13
              Caption = 'Dose (g/ha)'
            end
            object DBComboBox3: TDBComboBox
              Left = 24
              Top = 35
              Width = 185
              Height = 21
              TabOrder = 0
            end
            object CheckBox1: TCheckBox
              Left = 24
              Top = 62
              Width = 145
              Height = 17
              Caption = 'Inserir dose manualmente'
              TabOrder = 1
            end
            object Edit1: TEdit
              Left = 24
              Top = 85
              Width = 89
              Height = 21
              TabOrder = 2
            end
          end
          object GroupBox4: TGroupBox
            Left = 320
            Top = 8
            Width = 457
            Height = 313
            Anchors = [akTop]
            Caption = 'C'#225'lculos'
            Color = 15529450
            ParentBackground = False
            ParentColor = False
            TabOrder = 3
            object Panel1: TPanel
              Left = 24
              Top = 27
              Width = 209
              Height = 82
              BorderStyle = bsSingle
              TabOrder = 0
              object Label1: TLabel
                Left = 16
                Top = 14
                Width = 79
                Height = 13
                Caption = 'Recarga H'#237'drica:'
              end
              object Label9: TLabel
                Left = 128
                Top = 36
                Width = 46
                Height = 13
                Caption = '(mm/ano)'
              end
              object Edit2: TEdit
                Left = 16
                Top = 33
                Width = 98
                Height = 21
                TabOrder = 0
              end
            end
            object Panel2: TPanel
              Left = 24
              Top = 115
              Width = 209
              Height = 82
              BorderStyle = bsSingle
              TabOrder = 1
              object Label2: TLabel
                Left = 16
                Top = 14
                Width = 188
                Height = 13
                Caption = 'Par'#226'metro para Organismos Aqu'#225'ticos:'
              end
              object Label4: TLabel
                Left = 151
                Top = 36
                Width = 29
                Height = 13
                Caption = '(ug/L)'
              end
              object Edit3: TEdit
                Left = 16
                Top = 33
                Width = 121
                Height = 21
                TabOrder = 0
              end
            end
            object Panel3: TPanel
              Left = 24
              Top = 204
              Width = 209
              Height = 82
              BorderStyle = bsSingle
              TabOrder = 2
              object Label5: TLabel
                Left = 16
                Top = 16
                Width = 114
                Height = 13
                Caption = 'Padr'#227'o de Potabilidade:'
              end
              object Label6: TLabel
                Left = 151
                Top = 40
                Width = 29
                Height = 13
                Caption = '(ug/L)'
              end
              object Edit4: TEdit
                Left = 16
                Top = 35
                Width = 121
                Height = 21
                TabOrder = 0
              end
            end
            object Panel4: TPanel
              Left = 261
              Top = 93
              Width = 169
              Height = 125
              BorderStyle = bsSingle
              TabOrder = 3
              object Label7: TLabel
                Left = 8
                Top = 37
                Width = 133
                Height = 13
                Caption = 'Concentra'#231#227'o Estimada'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 8
                Top = 51
                Width = 123
                Height = 13
                Caption = 'na '#193'gua Subterr'#226'nea:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 111
                Top = 75
                Width = 48
                Height = 13
                Caption = '(ug i.a./L)'
              end
              object Edit5: TEdit
                Left = 8
                Top = 70
                Width = 97
                Height = 21
                TabOrder = 0
              end
            end
          end
          object Panel5: TPanel
            Left = 238
            Top = 335
            Width = 297
            Height = 50
            Anchors = [akBottom]
            TabOrder = 4
            object btnCalcular: TButton
              Left = 145
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Calcular'
              TabOrder = 0
            end
            object btnLimpar: TButton
              Left = 64
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Limpar'
              TabOrder = 1
            end
          end
        end
      end
      object TabSheetCarreamento: TTabSheet
        Caption = 'Carreamento Superficial'
        Enabled = False
        ImageIndex = 1
        ExplicitWidth = 714
        ExplicitHeight = 427
        object PanelTabCarreamento: TPanel
          Left = 0
          Top = 0
          Width = 784
          Height = 394
          Align = alClient
          Color = 15463657
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 192
          ExplicitTop = 160
          ExplicitWidth = 185
          ExplicitHeight = 41
        end
      end
    end
  end
end
