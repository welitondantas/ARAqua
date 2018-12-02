object FormAgrotoxico: TFormAgrotoxico
  Left = 0
  Top = 0
  Caption = 'Agrot'#243'xicos'
  ClientHeight = 453
  ClientWidth = 843
  Color = 15397866
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
  PixelsPerInch = 96
  TextHeight = 13
  object panelAgro: TPanel
    Left = 0
    Top = 0
    Width = 843
    Height = 403
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      843
      403)
    object PanelDadosSimples: TPanel
      Left = 24
      Top = 16
      Width = 511
      Height = 66
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 0
    end
    object GroupBoxBuscaAgro: TGroupBox
      Left = 1
      Top = 1
      Width = 352
      Height = 401
      Align = alLeft
      Caption = 'Busca de Agrot'#243'xicos'
      TabOrder = 1
      object DBGridAgro: TDBGrid
        Left = 2
        Top = 62
        Width = 348
        Height = 337
        Align = alClient
        DataSource = DataSourceAgro
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Title.Caption = 'ID'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'principioAtivo'
            Title.Caption = 'Princ'#237'pio Ativo'
            Width = 205
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dose'
            Title.Caption = 'Dose'
            Width = 70
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 2
        Top = 15
        Width = 348
        Height = 47
        Align = alTop
        TabOrder = 1
        object Label8: TLabel
          Left = 9
          Top = 16
          Width = 43
          Height = 13
          Caption = 'Princ'#237'pio:'
        end
        object EditBuscaAgro: TEdit
          Left = 69
          Top = 12
          Width = 185
          Height = 21
          TabOrder = 0
          OnChange = EditBuscaAgroChange
        end
      end
    end
    object Panel1: TPanel
      Left = 353
      Top = 1
      Width = 489
      Height = 401
      Align = alClient
      TabOrder = 2
      object Splitter1: TSplitter
        Left = 1
        Top = 1
        Height = 399
        ExplicitLeft = 8
        ExplicitTop = 40
        ExplicitHeight = 100
      end
      object GroupBox1: TGroupBox
        Left = 28
        Top = 112
        Width = 381
        Height = 177
        Caption = ' Camadas '
        TabOrder = 0
        object Label3: TLabel
          Left = 23
          Top = 30
          Width = 173
          Height = 13
          Caption = 'Coeficiente de Sor'#231#227'o - Koc - (mL/g)'
        end
        object Label4: TLabel
          Left = 26
          Top = 52
          Width = 52
          Height = 13
          Caption = 'Camada 1:'
        end
        object Label9: TLabel
          Left = 259
          Top = 30
          Width = 71
          Height = 13
          Caption = 'Meia-vida (dia)'
        end
        object Label5: TLabel
          Left = 26
          Top = 79
          Width = 52
          Height = 13
          Caption = 'Camada 2:'
        end
        object Label7: TLabel
          Left = 26
          Top = 106
          Width = 52
          Height = 13
          Caption = 'Camada 3:'
        end
        object Label6: TLabel
          Left = 26
          Top = 138
          Width = 52
          Height = 13
          Caption = 'Camada 4:'
        end
        object DBEditKocCamada1: TDBEdit
          Left = 108
          Top = 49
          Width = 100
          Height = 21
          DataField = 'coeficienteSorcaoCam1'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 0
        end
        object DBEditMeiaVidaCam1: TDBEdit
          Left = 261
          Top = 49
          Width = 100
          Height = 21
          DataField = 'meiaVidaCam1'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 1
        end
        object DBEditKocCamada2: TDBEdit
          Left = 108
          Top = 76
          Width = 100
          Height = 21
          DataField = 'coeficienteSorcaoCam2'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 2
        end
        object DBEditMeiaVidaCam2: TDBEdit
          Left = 261
          Top = 76
          Width = 100
          Height = 21
          DataField = 'meiaVidaCam2'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 3
        end
        object DBEditMeiaVidaCam3: TDBEdit
          Left = 261
          Top = 103
          Width = 100
          Height = 21
          DataField = 'meiaVidaCam3'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 4
        end
        object DBEditKocCamada3: TDBEdit
          Left = 108
          Top = 103
          Width = 100
          Height = 21
          DataField = 'coeficienteSorcaoCam3'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 5
        end
        object DBEditKocCamada4: TDBEdit
          Left = 108
          Top = 130
          Width = 100
          Height = 21
          DataField = 'coeficienteSorcaoCam4'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 6
        end
        object DBEditMeiaVidaCam4: TDBEdit
          Left = 261
          Top = 130
          Width = 100
          Height = 21
          DataField = 'meiaVidaCam4'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 7
        end
      end
      object GroupBox2: TGroupBox
        Left = 28
        Top = 25
        Width = 245
        Height = 72
        Caption = ' Princ'#237'pio Ativo '
        TabOrder = 1
        object DBEditPrincipioAtivo: TDBEdit
          Left = 17
          Top = 28
          Width = 209
          Height = 21
          DataField = 'principioAtivo'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 279
        Top = 25
        Width = 129
        Height = 72
        Caption = ' Dose (g/ha) '
        TabOrder = 2
        object DBEditDose: TDBEdit
          Left = 12
          Top = 28
          Width = 100
          Height = 21
          DataField = 'dose'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 0
        end
      end
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 403
    Width = 843
    Height = 50
    Align = alBottom
    ParentBackground = False
    TabOrder = 1
    object btnSalvarAgro: TButton
      Left = 200
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Salvar'
      Enabled = False
      ImageIndex = 2
      Images = FormPrincipal.ImageList1
      TabOrder = 0
      OnClick = btnSalvarAgroClick
    end
    object btnCancelarAgro: TButton
      Left = 387
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Enabled = False
      ImageIndex = 1
      Images = FormPrincipal.ImageList1
      TabOrder = 1
      OnClick = btnCancelarAgroClick
    end
    object btnEditar: TButton
      Left = 13
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Editar'
      ImageIndex = 4
      Images = FormPrincipal.ImageList1
      TabOrder = 2
      OnClick = btnEditarClick
    end
    object btnExcluir: TButton
      Left = 298
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excluir'
      Enabled = False
      ImageIndex = 3
      Images = FormPrincipal.ImageList1
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object DBNavigator1: TDBNavigator
      Left = 476
      Top = 6
      Width = 220
      Height = 25
      DataSource = DataSourceAgro
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 4
    end
    object btnNovo: TButton
      Left = 103
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Novo'
      ImageIndex = 0
      Images = FormPrincipal.ImageList1
      TabOrder = 5
      OnClick = btnNovoClick
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 757
      Top = 11
      Width = 75
      Height = 28
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alRight
      Caption = 'Fechar'
      ImageIndex = 5
      Images = FormPrincipal.ImageList1
      TabOrder = 6
      OnClick = Button1Click
    end
  end
  object DataSourceAgro: TDataSource
    DataSet = FDQueryAgro
    Left = 480
    Top = 368
  end
  object FDQueryAgro: TFDQuery
    BeforePost = FDQueryAgroBeforePost
    AfterPost = FDQueryAgroAfterPost
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from agrotoxico')
    Left = 400
    Top = 368
  end
end
