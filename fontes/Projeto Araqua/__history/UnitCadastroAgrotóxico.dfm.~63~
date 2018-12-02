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
    ExplicitHeight = 406
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
      ExplicitHeight = 404
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
      ExplicitHeight = 404
      object Splitter1: TSplitter
        Left = 1
        Top = 1
        Height = 399
        ExplicitLeft = 8
        ExplicitTop = 40
        ExplicitHeight = 100
      end
      object PanelPrincipio: TPanel
        Left = 28
        Top = 32
        Width = 221
        Height = 73
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 9
          Width = 71
          Height = 13
          Caption = 'Princ'#237'pio Ativo:'
        end
        object DBEditPrincipioAtivo: TDBEdit
          Left = 16
          Top = 28
          Width = 185
          Height = 21
          DataField = 'principioAtivo'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 0
        end
      end
      object PanelDose: TPanel
        Left = 266
        Top = 32
        Width = 215
        Height = 73
        TabOrder = 1
        object Label2: TLabel
          Left = 16
          Top = 9
          Width = 61
          Height = 13
          Caption = 'Dose (g/ha):'
        end
        object DBEditDose: TDBEdit
          Left = 16
          Top = 28
          Width = 100
          Height = 21
          DataField = 'dose'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 0
        end
      end
      object PanelCamadas: TPanel
        Left = 28
        Top = 125
        Width = 453
        Height = 153
        TabOrder = 2
        object Label3: TLabel
          Left = 15
          Top = 14
          Width = 173
          Height = 13
          Caption = 'Coeficiente de Sor'#231#227'o - Koc - (mL/g)'
        end
        object Label4: TLabel
          Left = 18
          Top = 36
          Width = 52
          Height = 13
          Caption = 'Camada 1:'
        end
        object Label5: TLabel
          Left = 18
          Top = 63
          Width = 52
          Height = 13
          Caption = 'Camada 2:'
        end
        object Label6: TLabel
          Left = 18
          Top = 119
          Width = 52
          Height = 13
          Caption = 'Camada 4:'
        end
        object Label7: TLabel
          Left = 18
          Top = 90
          Width = 52
          Height = 13
          Caption = 'Camada 3:'
        end
        object Label9: TLabel
          Left = 235
          Top = 14
          Width = 71
          Height = 13
          Caption = 'Meia-vida (dia)'
        end
        object DBEditKocCamada1: TDBEdit
          Left = 84
          Top = 33
          Width = 100
          Height = 21
          DataField = 'coeficienteSorcaoCam1'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 0
        end
        object DBEditKocCamada2: TDBEdit
          Left = 84
          Top = 60
          Width = 100
          Height = 21
          DataField = 'coeficienteSorcaoCam2'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 1
        end
        object DBEditKocCamada3: TDBEdit
          Left = 84
          Top = 87
          Width = 100
          Height = 21
          DataField = 'coeficienteSorcaoCam3'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 2
        end
        object DBEditKocCamada4: TDBEdit
          Left = 84
          Top = 114
          Width = 100
          Height = 21
          DataField = 'coeficienteSorcaoCam4'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 3
        end
        object DBEditMeiaVidaCam1: TDBEdit
          Left = 237
          Top = 33
          Width = 100
          Height = 21
          DataField = 'meiaVidaCam1'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 4
        end
        object DBEditMeiaVidaCam2: TDBEdit
          Left = 237
          Top = 60
          Width = 100
          Height = 21
          DataField = 'meiaVidaCam2'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 5
        end
        object DBEditMeiaVidaCam3: TDBEdit
          Left = 237
          Top = 87
          Width = 100
          Height = 21
          DataField = 'meiaVidaCam3'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 6
        end
        object DBEditMeiaVidaCam4: TDBEdit
          Left = 237
          Top = 114
          Width = 100
          Height = 21
          DataField = 'meiaVidaCam4'
          DataSource = DataSourceAgro
          Enabled = False
          TabOrder = 7
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
      ExplicitHeight = 25
    end
  end
  object DataSourceAgro: TDataSource
    DataSet = FDQueryAgro
    Left = 608
    Top = 296
  end
  object FDQueryAgro: TFDQuery
    BeforePost = FDQueryAgroBeforePost
    AfterPost = FDQueryAgroAfterPost
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from agrotoxico')
    Left = 528
    Top = 296
  end
end
