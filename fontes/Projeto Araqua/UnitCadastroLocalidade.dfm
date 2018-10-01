object FormCadastroLocalidade: TFormCadastroLocalidade
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Local'
  ClientHeight = 462
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object panelFundoLocal: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 462
    Align = alClient
    Color = 15070437
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 618
    ExplicitHeight = 452
    DesignSize = (
      628
      462)
    object PanelDescricao: TPanel
      Left = 16
      Top = 16
      Width = 307
      Height = 89
      Anchors = [akTop]
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 13
      object Label1: TLabel
        Left = 2
        Top = 8
        Width = 50
        Height = 13
        Caption = 'Descri'#231#227'o:'
      end
      object DBMemoDescricao: TDBMemo
        Left = 2
        Top = 27
        Width = 305
        Height = 46
        DataField = 'descricao'
        DataSource = DataSourceLocalidade
        Enabled = False
        TabOrder = 0
      end
    end
    object GroupBoxClima: TGroupBox
      Left = 18
      Top = 95
      Width = 305
      Height = 122
      Anchors = [akTop]
      Caption = 'Clima'
      Color = 15201511
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      ExplicitLeft = 15
      object Label2: TLabel
        Left = 23
        Top = 24
        Width = 111
        Height = 13
        Caption = 'Precipita'#231#227'o (mm/ano):'
        Color = 15332585
        ParentColor = False
      end
      object Label3: TLabel
        Left = 23
        Top = 56
        Width = 96
        Height = 13
        Caption = 'Irriga'#231#227'o (mm/ano):'
        Color = 15201511
        ParentColor = False
      end
      object Label4: TLabel
        Left = 23
        Top = 88
        Width = 143
        Height = 13
        Caption = 'Evapotranspira'#231#227'o (mm/ano):'
        Color = 15332585
        ParentColor = False
      end
      object DBEditPrecipitacao: TDBEdit
        Left = 193
        Top = 24
        Width = 65
        Height = 21
        DataField = 'precipitacao'
        DataSource = DataSourceLocalidade
        Enabled = False
        TabOrder = 0
      end
      object DBEditIrrigacao: TDBEdit
        Left = 193
        Top = 56
        Width = 65
        Height = 21
        DataField = 'irrigacao'
        DataSource = DataSourceLocalidade
        Enabled = False
        TabOrder = 1
      end
      object DBEditEvapotranspiracao: TDBEdit
        Left = 193
        Top = 87
        Width = 65
        Height = 21
        DataField = 'evapotranspiracao'
        DataSource = DataSourceLocalidade
        Enabled = False
        TabOrder = 2
      end
    end
    object GroupBoxAquifero: TGroupBox
      Left = 15
      Top = 223
      Width = 308
      Height = 122
      Anchors = [akTop]
      Caption = 'Aqu'#237'fero'
      Color = 15332585
      ParentBackground = False
      ParentColor = False
      TabOrder = 2
      ExplicitLeft = 12
      object Label5: TLabel
        Left = 32
        Top = 56
        Width = 92
        Height = 13
        Caption = 'Profundidade (cm):'
        Color = 15201511
        ParentColor = False
      end
      object Label6: TLabel
        Left = 32
        Top = 24
        Width = 84
        Height = 13
        Caption = 'Porosidade (v/v):'
        Color = 15398121
        ParentColor = False
      end
      object DBEditPorosidade: TDBEdit
        Left = 152
        Top = 21
        Width = 62
        Height = 21
        DataField = 'porosidadeAquifero'
        DataSource = DataSourceLocalidade
        Enabled = False
        TabOrder = 0
      end
      object DBEditProfundidade: TDBEdit
        Left = 152
        Top = 56
        Width = 65
        Height = 21
        DataField = 'profundidadeAquifero'
        DataSource = DataSourceLocalidade
        Enabled = False
        TabOrder = 1
      end
    end
    object PanelBotoes: TPanel
      Left = 49
      Top = 361
      Width = 517
      Height = 73
      Anchors = [akBottom]
      BevelInner = bvRaised
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitLeft = 44
      ExplicitTop = 351
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
        Left = 426
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
        Left = 120
        Top = 46
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
    end
    object GroupBoxBuscaLocal: TGroupBox
      Left = 334
      Top = 24
      Width = 283
      Height = 321
      Anchors = [akTop]
      Caption = 'Busca de Local'
      Color = 15201511
      ParentBackground = False
      ParentColor = False
      TabOrder = 4
      ExplicitLeft = 326
      DesignSize = (
        283
        321)
      object DBGridLocalidade: TDBGrid
        Left = 16
        Top = 58
        Width = 257
        Height = 258
        Anchors = [akTop]
        DataSource = DataSourceLocalidade
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
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 189
            Visible = True
          end>
      end
      object EditBuscaLocal: TEdit
        Left = 16
        Top = 31
        Width = 257
        Height = 21
        TabOrder = 1
        OnChange = EditBuscaLocalChange
      end
    end
  end
  object DataSourceLocalidade: TDataSource
    DataSet = FDQueryLocalidade
    Left = 512
    Top = 16
  end
  object FDQueryLocalidade: TFDQuery
    BeforePost = FDQueryLocalidadeBeforePost
    AfterPost = FDQueryLocalidadeAfterPost
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from localidade')
    Left = 517
    Top = 72
  end
end
