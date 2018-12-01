object FmBackup: TFmBackup
  Left = 0
  Top = 0
  Caption = 'Backup e Restaura'#231#227'o'
  ClientHeight = 531
  ClientWidth = 967
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControlBackup: TPageControl
    Left = 0
    Top = 0
    Width = 967
    Height = 531
    ActivePage = TabSheetCliente
    Align = alClient
    TabOrder = 0
    object TabSheetCliente: TTabSheet
      Caption = '  Backup e Restaura'#231#227'o  '
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Splitter1: TSplitter
        Left = 417
        Top = 0
        Height = 453
        ExplicitLeft = 491
        ExplicitTop = 3
        ExplicitHeight = 468
      end
      object PanelBarra: TPanel
        Left = 0
        Top = 453
        Width = 959
        Height = 50
        Margins.Left = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alBottom
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 16
          Width = 40
          Height = 13
          Caption = 'Status:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelStatus: TLabel
          Left = 62
          Top = 16
          Width = 152
          Height = 13
          Caption = 'Aguardando in'#237'cio da opera'#231#227'o.'
        end
        object ButtonSair: TButton
          AlignWithMargins = True
          Left = 863
          Top = 11
          Width = 75
          Height = 28
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 20
          Margins.Bottom = 10
          Align = alRight
          Caption = '&Fechar'
          TabOrder = 0
          OnClick = ButtonSairClick
        end
      end
      object PanelDados: TPanel
        Left = 420
        Top = 0
        Width = 539
        Height = 453
        Align = alClient
        TabOrder = 1
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 6
          Top = 150
          Width = 527
          Height = 297
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          Caption = ' Pr'#233'-Visualiza'#231#227'o '
          TabOrder = 0
        end
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 6
          Top = 6
          Width = 527
          Height = 139
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alTop
          Caption = ' Processos do Banco de Dados '
          TabOrder = 1
          object Panel1: TPanel
            AlignWithMargins = True
            Left = 432
            Top = 20
            Width = 88
            Height = 112
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alRight
            TabOrder = 0
            object ButtonRefresh: TButton
              AlignWithMargins = True
              Left = 4
              Top = 14
              Width = 80
              Height = 25
              Margins.Top = 13
              Align = alTop
              Caption = 'Atualizar'
              TabOrder = 0
              OnClick = ButtonRefreshClick
            end
            object ButtonKill: TButton
              AlignWithMargins = True
              Left = 4
              Top = 45
              Width = 80
              Height = 25
              Align = alTop
              Caption = 'Enc. Processo'
              TabOrder = 1
              OnClick = ButtonKillClick
            end
            object ButtonKillAll: TButton
              AlignWithMargins = True
              Left = 4
              Top = 76
              Width = 80
              Height = 25
              Align = alTop
              Caption = 'Enc. Todos'
              TabOrder = 2
              OnClick = ButtonKillAllClick
            end
          end
          object DBGrid1: TDBGrid
            AlignWithMargins = True
            Left = 7
            Top = 20
            Width = 420
            Height = 112
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 5
            Align = alClient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ID'
                Title.Alignment = taCenter
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USER'
                Title.Alignment = taCenter
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HOST'
                Title.Alignment = taCenter
                Width = 86
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DB'
                Title.Alignment = taCenter
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COMMAND'
                Title.Alignment = taCenter
                Width = 77
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'TIME'
                Title.Alignment = taCenter
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATE'
                Title.Alignment = taCenter
                Width = 58
                Visible = True
              end>
          end
        end
      end
      object PanelLista: TPanel
        Left = 0
        Top = 0
        Width = 417
        Height = 453
        Margins.Left = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        TabOrder = 2
        object PanelFiltro: TPanel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Width = 405
          Height = 44
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alTop
          TabOrder = 0
          object Label10: TLabel
            AlignWithMargins = True
            Left = 6
            Top = 16
            Width = 41
            Height = 13
            Margins.Left = 5
            Margins.Top = 15
            Align = alLeft
            Caption = 'Arquivo:'
          end
          object ButtonConsulta: TButton
            AlignWithMargins = True
            Left = 324
            Top = 10
            Width = 75
            Height = 24
            Margins.Left = 5
            Margins.Top = 9
            Margins.Right = 5
            Margins.Bottom = 9
            Align = alRight
            Caption = '&Atualizar'
            TabOrder = 2
            OnClick = ButtonConsultaClick
          end
          object EditNome: TEdit
            AlignWithMargins = True
            Left = 55
            Top = 11
            Width = 166
            Height = 22
            Margins.Left = 5
            Margins.Top = 10
            Margins.Right = 5
            Margins.Bottom = 10
            Align = alClient
            CharCase = ecUpperCase
            TabOrder = 0
            OnKeyPress = EditNomeKeyPress
            ExplicitHeight = 21
          end
          object FilterComboBox1: TFilterComboBox
            AlignWithMargins = True
            Left = 229
            Top = 11
            Width = 87
            Height = 21
            Margins.Top = 10
            Margins.Bottom = 5
            Align = alRight
            FileList = FileListBox1
            Filter = 'Selecionados|*.*|SQL (*.sql)|*.sql|DMP (*.dmp)|*.dmp'
            TabOrder = 1
          end
        end
        object FileListBox1: TFileListBox
          AlignWithMargins = True
          Left = 6
          Top = 170
          Width = 138
          Height = 212
          Hint = 'Duplo clique para visualizar o arquivo.'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alLeft
          ItemHeight = 13
          TabOrder = 1
          OnChange = FileListBox1Change
          OnDblClick = FileListBox1DblClick
          OnMouseMove = FileListBox1MouseMove
        end
        object DirectoryListBox1: TDirectoryListBox
          AlignWithMargins = True
          Left = 6
          Top = 55
          Width = 405
          Height = 110
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alTop
          FileList = FileListBox1
          TabOrder = 2
        end
        object PanelParametro: TPanel
          AlignWithMargins = True
          Left = 6
          Top = 387
          Width = 405
          Height = 60
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alBottom
          TabOrder = 3
          object Label1: TLabel
            AlignWithMargins = True
            Left = 6
            Top = 23
            Width = 57
            Height = 13
            Margins.Left = 5
            Margins.Top = 22
            Margins.Right = 0
            Align = alLeft
            Caption = 'Opera'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ButtonExec: TButton
            AlignWithMargins = True
            Left = 339
            Top = 16
            Width = 60
            Height = 28
            Margins.Left = 5
            Margins.Top = 15
            Margins.Right = 5
            Margins.Bottom = 15
            Align = alRight
            Caption = 'E&xecutar'
            TabOrder = 0
            OnClick = ButtonExecClick
          end
          object RadioButtonBackup: TRadioButton
            AlignWithMargins = True
            Left = 68
            Top = 4
            Width = 61
            Height = 52
            Margins.Left = 5
            Margins.Right = 0
            Align = alLeft
            Caption = '&Backup'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
          object RadioButtonRest: TRadioButton
            AlignWithMargins = True
            Left = 134
            Top = 4
            Width = 70
            Height = 52
            Margins.Left = 5
            Margins.Right = 0
            Align = alLeft
            Caption = '&Restaurar'
            TabOrder = 2
          end
          object ButtonDelete: TButton
            AlignWithMargins = True
            Left = 274
            Top = 16
            Width = 60
            Height = 28
            Margins.Left = 5
            Margins.Top = 15
            Margins.Right = 0
            Margins.Bottom = 15
            Align = alRight
            Caption = '&Deletar'
            TabOrder = 3
            OnClick = ButtonDeleteClick
          end
          object Button1: TButton
            AlignWithMargins = True
            Left = 209
            Top = 16
            Width = 60
            Height = 28
            Margins.Left = 0
            Margins.Top = 15
            Margins.Right = 0
            Margins.Bottom = 15
            Align = alRight
            Caption = '&Explorar'
            TabOrder = 4
            OnClick = Button1Click
          end
        end
        object Memo1: TMemo
          AlignWithMargins = True
          Left = 149
          Top = 170
          Width = 262
          Height = 212
          Margins.Left = 0
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          Color = cl3DLight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            '')
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
      end
    end
  end
end
