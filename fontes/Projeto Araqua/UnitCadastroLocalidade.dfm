object FormCadastroLocalidade: TFormCadastroLocalidade
  Left = 0
  Top = 0
  Caption = 'Cadastro de Local'
  ClientHeight = 560
  ClientWidth = 1147
  Color = clBtnFace
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
  object Splitter1: TSplitter
    Left = 410
    Top = 0
    Height = 510
    ExplicitLeft = 328
    ExplicitTop = 176
    ExplicitHeight = 100
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 510
    Width = 1147
    Height = 50
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 482
    ExplicitWidth = 966
    object btnSalvar: TButton
      Left = 215
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Salvar'
      Enabled = False
      ImageIndex = 2
      Images = FormPrincipal.ImageList1
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnEditar: TButton
      Left = 120
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Editar'
      ImageIndex = 4
      Images = FormPrincipal.ImageList1
      TabOrder = 1
      OnClick = btnEditarClick
    end
    object btnCancelar: TButton
      Left = 440
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Enabled = False
      ImageIndex = 1
      Images = FormPrincipal.ImageList1
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnExcluir: TButton
      Left = 330
      Top = 15
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
      Left = 546
      Top = 14
      Width = 220
      Height = 25
      DataSource = DataSourceLocalidade
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 4
    end
    object btnNovo: TButton
      Left = 17
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Novo'
      ImageIndex = 0
      Images = FormPrincipal.ImageList1
      TabOrder = 5
      OnClick = btnNovoClick
    end
    object Button7: TButton
      AlignWithMargins = True
      Left = 1061
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
      OnClick = Button7Click
      ExplicitLeft = 880
    end
  end
  object PanelDescricao: TPanel
    Left = 0
    Top = 0
    Width = 410
    Height = 510
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitHeight = 482
    object GroupBoxBuscaLocal: TGroupBox
      Left = 0
      Top = 0
      Width = 410
      Height = 510
      Align = alClient
      Caption = 'Busca de Local'
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      ExplicitHeight = 482
      object Panel4: TPanel
        Left = 2
        Top = 15
        Width = 406
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 15
          Top = 15
          Width = 50
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object EditBuscaLocal: TEdit
          Left = 72
          Top = 12
          Width = 249
          Height = 21
          TabOrder = 0
          OnChange = EditBuscaLocalChange
        end
        object ButtonConsultar: TButton
          Left = 327
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Consultar'
          TabOrder = 1
          OnClick = ButtonConsultarClick
        end
      end
      object DBGridLocalidade: TDBGrid
        Left = 2
        Top = 56
        Width = 406
        Height = 452
        Align = alClient
        DataSource = DataSourceLocalidade
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'dsc_tipo'
            Title.Caption = 'Tipo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id'
            Title.Caption = 'C'#243'digo'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o da Localidade'
            Width = 335
            Visible = True
          end>
      end
    end
  end
  object panelFundoLocal: TPanel
    Left = 413
    Top = 0
    Width = 734
    Height = 510
    Align = alClient
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 0
    ExplicitWidth = 556
    ExplicitHeight = 482
    object Label12: TLabel
      Left = 34
      Top = 96
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object GroupBoxClima: TGroupBox
      Left = 27
      Top = 120
      Width = 329
      Height = 135
      Caption = 'Clima'
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      object Label2: TLabel
        Left = 20
        Top = 24
        Width = 111
        Height = 13
        Caption = 'Precipita'#231#227'o (mm/ano):'
        Color = 15332585
        ParentColor = False
      end
      object Label3: TLabel
        Left = 20
        Top = 56
        Width = 96
        Height = 13
        Caption = 'Irriga'#231#227'o (mm/ano):'
        Color = 15201511
        ParentColor = False
      end
      object Label4: TLabel
        Left = 20
        Top = 88
        Width = 143
        Height = 13
        Caption = 'Evapotranspira'#231#227'o (mm/ano):'
        Color = 15332585
        ParentColor = False
      end
      object DBEditPrecipitacao: TDBEdit
        Left = 210
        Top = 24
        Width = 100
        Height = 21
        DataField = 'precipitacao'
        DataSource = DataSourceLocalidade
        Enabled = False
        TabOrder = 0
      end
      object DBEditIrrigacao: TDBEdit
        Left = 210
        Top = 56
        Width = 100
        Height = 21
        DataField = 'irrigacao'
        DataSource = DataSourceLocalidade
        Enabled = False
        TabOrder = 1
      end
      object DBEditEvapotranspiracao: TDBEdit
        Left = 210
        Top = 87
        Width = 100
        Height = 21
        DataField = 'evapotranspiracao'
        DataSource = DataSourceLocalidade
        Enabled = False
        TabOrder = 2
      end
    end
    object GroupBoxAquifero: TGroupBox
      Left = 27
      Top = 264
      Width = 329
      Height = 89
      Caption = 'Aqu'#237'fero'
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      object Label5: TLabel
        Left = 20
        Top = 56
        Width = 92
        Height = 13
        Caption = 'Profundidade (cm):'
        Color = 15201511
        ParentColor = False
      end
      object Label6: TLabel
        Left = 20
        Top = 24
        Width = 84
        Height = 13
        Caption = 'Porosidade (v/v):'
        Color = 15398121
        ParentColor = False
      end
      object DBEditPorosidade: TDBEdit
        Left = 210
        Top = 21
        Width = 100
        Height = 21
        DataField = 'porosidadeAquifero'
        DataSource = DataSourceLocalidade
        Enabled = False
        TabOrder = 0
      end
      object DBEditProfundidade: TDBEdit
        Left = 210
        Top = 56
        Width = 100
        Height = 21
        DataField = 'profundidadeAquifero'
        DataSource = DataSourceLocalidade
        Enabled = False
        TabOrder = 1
      end
    end
    object DBEditDescricao: TDBEdit
      Left = 90
      Top = 93
      Width = 615
      Height = 21
      DataField = 'descricao'
      DataSource = DataSourceLocalidade
      TabOrder = 2
    end
    object GroupBox1: TGroupBox
      Left = 379
      Top = 120
      Width = 326
      Height = 135
      Caption = #193'gua Superficial'
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 3
      object Label8: TLabel
        Left = 20
        Top = 24
        Width = 130
        Height = 13
        Caption = 'Declividade do terreno (%)'
        Color = 15332585
        ParentColor = False
      end
      object Label9: TLabel
        Left = 20
        Top = 52
        Width = 156
        Height = 13
        Caption = 'Intercepta'#231#227'o pelas plantas (%)'
        Color = 15201511
        ParentColor = False
      end
      object Label10: TLabel
        Left = 20
        Top = 80
        Width = 166
        Height = 13
        Caption = 'Largura de faixa de conten'#231#227'o (m)'
        Color = 15332585
        ParentColor = False
      end
      object Label11: TLabel
        Left = 20
        Top = 108
        Width = 181
        Height = 13
        Caption = 'Coeficiente de escoamento superficial'
        Color = 15332585
        ParentColor = False
      end
      object DBEdit_Declividade: TDBEdit
        Left = 210
        Top = 21
        Width = 100
        Height = 21
        DataField = 'decliv'
        DataSource = DataSourceLocalidade
        Enabled = False
        TabOrder = 0
      end
      object DBEdit_InterceptacaoPlantas: TDBEdit
        Left = 210
        Top = 48
        Width = 100
        Height = 21
        DataField = 'interplan'
        DataSource = DataSourceLocalidade
        Enabled = False
        TabOrder = 1
      end
      object DBEdit_LarguraContencao: TDBEdit
        Left = 210
        Top = 75
        Width = 100
        Height = 21
        DataField = 'fxcont'
        DataSource = DataSourceLocalidade
        Enabled = False
        TabOrder = 2
      end
      object DBEdit_CoeficienteSuper: TDBEdit
        Left = 210
        Top = 102
        Width = 100
        Height = 21
        DataField = 'coefe'
        DataSource = DataSourceLocalidade
        Enabled = False
        TabOrder = 3
      end
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 27
      Top = 11
      Width = 326
      Height = 76
      Caption = ' Tipo de Localidade '
      DataField = 'tipo'
      DataSource = DataSourceLocalidade
      Items.Strings = (
        #193'gua Subterr'#226'nea'
        #193'gua Superficial')
      TabOrder = 4
      Values.Strings = (
        '1'
        '2')
    end
  end
  object DataSourceLocalidade: TDataSource
    DataSet = FDQueryLocalidade
    Left = 56
    Top = 408
  end
  object FDQueryLocalidade: TFDQuery
    BeforePost = FDQueryLocalidadeBeforePost
    AfterPost = FDQueryLocalidadeAfterPost
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select '
      'case tipo when 1 then '#39#193'gua Subterr'#226'nea'#39
      '               when 2 then '#39#193'gua Superficial'#39' end as dsc_tipo,'
      'l.* '
      'from localidade l'
      'where upper(descricao) like upper(:local)')
    Left = 53
    Top = 344
    ParamData = <
      item
        Name = 'LOCAL'
        DataType = ftWideString
        ParamType = ptInput
        Value = '%%'
      end>
  end
end
