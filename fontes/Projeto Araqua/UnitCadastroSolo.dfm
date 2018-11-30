object FormCadastroSolo: TFormCadastroSolo
  Left = 0
  Top = 0
  Caption = 'Cadastro de Solo'
  ClientHeight = 545
  ClientWidth = 949
  Color = 15332585
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object panelFundoSolo: TPanel
    Left = 0
    Top = 0
    Width = 949
    Height = 545
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      949
      545)
    object Splitter1: TSplitter
      Left = 339
      Top = 1
      Height = 493
      ExplicitLeft = 344
      ExplicitTop = 16
      ExplicitHeight = 100
    end
    object GroupBoxSolo: TGroupBox
      Left = 354
      Top = 16
      Width = 584
      Height = 81
      Anchors = [akTop]
      Caption = ' Solo '
      TabOrder = 0
      object Label1: TLabel
        Left = 17
        Top = 36
        Width = 20
        Height = 13
        Caption = 'Tipo'
        Color = clBtnFace
        ParentColor = False
      end
      object DBEditTipo: TDBEdit
        Left = 64
        Top = 33
        Width = 193
        Height = 21
        DataField = 'nome'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 0
      end
    end
    object GroupBoxLixiviacao: TGroupBox
      Left = 356
      Top = 111
      Width = 584
      Height = 226
      Anchors = [akTop]
      Caption = ' Lixivia'#231#227'o '
      TabOrder = 1
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
        Left = 63
        Top = 24
        Width = 88
        Height = 13
        Caption = 'Profundidade (cm)'
        Color = 14609884
        ParentColor = False
      end
      object Label9: TLabel
        Left = 192
        Top = 24
        Width = 119
        Height = 13
        Caption = 'Capacidade Campo (v/v)'
        Color = 14609884
        ParentColor = False
      end
      object Label10: TLabel
        Left = 328
        Top = 24
        Width = 90
        Height = 13
        Caption = 'Densidade (g/cm3)'
        Color = 14609884
        ParentColor = False
      end
      object Label11: TLabel
        Left = 456
        Top = 24
        Width = 114
        Height = 13
        Caption = 'Carbono Org'#226'nico (v/v)'
        Color = 14609884
        ParentColor = False
      end
      object DBEditProfunCam1: TDBEdit
        Left = 64
        Top = 43
        Width = 100
        Height = 21
        DataField = 'profundidadeCamada1'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 0
      end
      object DBEditProfunCam2: TDBEdit
        Left = 64
        Top = 88
        Width = 100
        Height = 21
        DataField = 'profundidadeCamada2'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 1
      end
      object DBEditProfunCam3: TDBEdit
        Left = 63
        Top = 133
        Width = 100
        Height = 21
        DataField = 'profundidadeCamada3'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 2
      end
      object DBEditProfunCam4: TDBEdit
        Left = 64
        Top = 174
        Width = 100
        Height = 21
        DataField = 'profundidadeCamada4'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 3
      end
      object DBEditCapacCampo1: TDBEdit
        Left = 192
        Top = 43
        Width = 100
        Height = 21
        DataField = 'capacidadeCampo1'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 4
      end
      object DBEditCapacCampo3: TDBEdit
        Left = 192
        Top = 133
        Width = 100
        Height = 21
        DataField = 'capacidadeCampo3'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 5
      end
      object DBEditCapacCampo4: TDBEdit
        Left = 192
        Top = 174
        Width = 100
        Height = 21
        DataField = 'capacidadeCampo4'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 6
      end
      object DBEditDensidade1: TDBEdit
        Left = 328
        Top = 43
        Width = 100
        Height = 21
        DataField = 'densidadeSolo1'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 7
      end
      object DBEditDensidade2: TDBEdit
        Left = 328
        Top = 88
        Width = 100
        Height = 21
        DataField = 'densidadeSolo2'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 8
      end
      object DBEditDensidade3: TDBEdit
        Left = 328
        Top = 133
        Width = 100
        Height = 21
        DataField = 'densidadeSolo3'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 9
      end
      object DBEditDensidade4: TDBEdit
        Left = 328
        Top = 174
        Width = 100
        Height = 21
        DataField = 'densidadeSolo4'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 10
      end
      object DBEditCarbOrg1: TDBEdit
        Left = 455
        Top = 43
        Width = 100
        Height = 21
        DataField = 'carbonoOrganico1'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 11
      end
      object DBEditCarbOrg2: TDBEdit
        Left = 455
        Top = 88
        Width = 100
        Height = 21
        DataField = 'carbonoOrganico2'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 12
      end
      object DBEditCarbOrg3: TDBEdit
        Left = 456
        Top = 133
        Width = 100
        Height = 21
        DataField = 'carbonoOrganico3'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 13
      end
      object DBEditCarbOrg4: TDBEdit
        Left = 456
        Top = 174
        Width = 100
        Height = 21
        DataField = 'carbonoOrganico4'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 14
      end
      object DBEditCapacCampo2: TDBEdit
        Left = 192
        Top = 88
        Width = 100
        Height = 21
        DataField = 'capacidadeCampo2'
        DataSource = DataSourceSolo
        Enabled = False
        TabOrder = 15
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 494
      Width = 947
      Height = 50
      Align = alBottom
      ParentBackground = False
      TabOrder = 2
      object btnCancelar: TButton
        Left = 377
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        Enabled = False
        ImageIndex = 1
        Images = FormPrincipal.ImageList1
        TabOrder = 0
        OnClick = btnCancelarClick
      end
      object btnSalvar: TButton
        Left = 192
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Salvar'
        Enabled = False
        ImageIndex = 2
        Images = FormPrincipal.ImageList1
        TabOrder = 1
        OnClick = btnSalvarClick
      end
      object btnEditar: TButton
        Left = 8
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
        Left = 281
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
        Left = 490
        Top = 7
        Width = 224
        Height = 25
        DataSource = DataSourceSolo
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 4
      end
      object btnNovo: TButton
        Left = 105
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
        Left = 861
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
    object GroupBoxBusca: TGroupBox
      Left = 1
      Top = 1
      Width = 338
      Height = 493
      Align = alLeft
      Caption = 'Busca de Solo'
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 3
      object DBGridSolo: TDBGrid
        Left = 2
        Top = 56
        Width = 334
        Height = 435
        Align = alClient
        DataSource = DataSourceSolo
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
            Title.Caption = 'C'#243'digo'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Descri'#231#227'o do Solo'
            Width = 247
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 2
        Top = 15
        Width = 334
        Height = 41
        Align = alTop
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 16
          Width = 24
          Height = 13
          Caption = 'Solo:'
        end
        object EditBuscaSolo: TEdit
          Left = 38
          Top = 12
          Width = 211
          Height = 21
          TabOrder = 0
          OnChange = EditBuscaSoloChange
        end
      end
    end
  end
  object DataSourceSolo: TDataSource
    DataSet = FDQuerySolo
    Left = 744
    Top = 24
  end
  object FDQuerySolo: TFDQuery
    BeforePost = FDQuerySoloBeforePost
    AfterPost = FDQuerySoloAfterPost
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from solo')
    Left = 672
    Top = 24
  end
end
