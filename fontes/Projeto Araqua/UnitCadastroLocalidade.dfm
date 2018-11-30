object FormCadastroLocalidade: TFormCadastroLocalidade
  Left = 0
  Top = 0
  Caption = 'Cadastro de Local'
  ClientHeight = 560
  ClientWidth = 977
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 977
    Height = 560
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #193'gua Subterr'#226'nea'
      object panelFundoLocal: TPanel
        Left = 0
        Top = 0
        Width = 969
        Height = 532
        Align = alClient
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          969
          532)
        object Splitter1: TSplitter
          Left = 329
          Top = 1
          Height = 480
          ExplicitLeft = 328
          ExplicitTop = 176
          ExplicitHeight = 100
        end
        object PanelDescricao: TPanel
          Left = 359
          Top = 11
          Width = 307
          Height = 89
          Anchors = [akTop]
          BevelOuter = bvNone
          TabOrder = 0
          object Label1: TLabel
            Left = 2
            Top = 8
            Width = 50
            Height = 13
            Caption = 'Descri'#231#227'o:'
          end
        end
        object GroupBoxClima: TGroupBox
          Left = 357
          Top = 90
          Width = 429
          Height = 122
          Anchors = [akTop]
          Caption = 'Clima'
          Color = clBtnFace
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
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
            Left = 200
            Top = 24
            Width = 100
            Height = 21
            DataField = 'precipitacao'
            DataSource = DataSource1
            Enabled = False
            TabOrder = 0
          end
          object DBEditIrrigacao: TDBEdit
            Left = 200
            Top = 56
            Width = 100
            Height = 21
            DataField = 'irrigacao'
            DataSource = DataSource1
            Enabled = False
            TabOrder = 1
          end
          object DBEditEvapotranspiracao: TDBEdit
            Left = 200
            Top = 87
            Width = 100
            Height = 21
            DataField = 'evapotranspiracao'
            DataSource = DataSource1
            Enabled = False
            TabOrder = 2
          end
        end
        object GroupBoxAquifero: TGroupBox
          Left = 356
          Top = 218
          Width = 430
          Height = 122
          Anchors = [akTop]
          Caption = 'Aqu'#237'fero'
          Color = clBtnFace
          ParentBackground = False
          ParentColor = False
          TabOrder = 2
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
            Left = 200
            Top = 21
            Width = 100
            Height = 21
            DataField = 'porosidadeAquifero'
            DataSource = DataSource1
            Enabled = False
            TabOrder = 0
          end
          object DBEditProfundidade: TDBEdit
            Left = 200
            Top = 56
            Width = 100
            Height = 21
            DataField = 'profundidadeAquifero'
            DataSource = DataSource1
            Enabled = False
            TabOrder = 1
          end
        end
        object PanelBotoes: TPanel
          Left = 1
          Top = 481
          Width = 967
          Height = 50
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvNone
          TabOrder = 3
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
            Left = 520
            Top = 14
            Width = 220
            Height = 25
            DataSource = DataSource1
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
            Left = 881
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
            ExplicitHeight = 26
          end
        end
        object GroupBoxBuscaLocal: TGroupBox
          Left = 1
          Top = 1
          Width = 328
          Height = 480
          Align = alLeft
          Caption = 'Busca de Local'
          Color = clBtnFace
          ParentBackground = False
          ParentColor = False
          TabOrder = 4
          ExplicitHeight = 482
          object DBGridLocalidade: TDBGrid
            Left = 2
            Top = 56
            Width = 324
            Height = 422
            Align = alClient
            DataSource = DataSource1
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
          object Panel4: TPanel
            Left = 2
            Top = 15
            Width = 324
            Height = 41
            Align = alTop
            TabOrder = 1
            object Label12: TLabel
              Left = 8
              Top = 16
              Width = 50
              Height = 13
              Caption = 'Descri'#231#227'o:'
            end
            object EditBuscaLocal: TEdit
              Left = 72
              Top = 12
              Width = 241
              Height = 21
              TabOrder = 0
              OnChange = EditBuscaLocalChange
            end
          end
        end
        object DBEditDescricao: TDBEdit
          Left = 374
          Top = 38
          Width = 427
          Height = 21
          DataField = 'descricao'
          DataSource = DataSource1
          TabOrder = 5
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #193'gua Superficial'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 969
        Height = 532
        Align = alClient
        ParentBackground = False
        TabOrder = 0
        object Panel2: TPanel
          Left = 353
          Top = 1
          Width = 615
          Height = 480
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 482
          object Label7: TLabel
            Left = 23
            Top = 35
            Width = 50
            Height = 13
            Caption = 'Descri'#231#227'o:'
          end
          object Splitter2: TSplitter
            Left = 0
            Top = 0
            Height = 480
            ExplicitLeft = 8
            ExplicitTop = 24
            ExplicitHeight = 100
          end
          object DBEdit2: TDBEdit
            Left = 88
            Top = 32
            Width = 225
            Height = 21
            DataSource = DataSource_superficial
            TabOrder = 0
          end
          object GroupBox1: TGroupBox
            Left = 23
            Top = 79
            Width = 435
            Height = 178
            Caption = 'Clima'
            Color = clBtnFace
            ParentBackground = False
            ParentColor = False
            TabOrder = 1
            object Label8: TLabel
              Left = 23
              Top = 24
              Width = 130
              Height = 13
              Caption = 'Declividade do terreno (%)'
              Color = 15332585
              ParentColor = False
            end
            object Label9: TLabel
              Left = 23
              Top = 56
              Width = 156
              Height = 13
              Caption = 'Intercepta'#231#227'o pelas plantas (%)'
              Color = 15201511
              ParentColor = False
            end
            object Label10: TLabel
              Left = 23
              Top = 88
              Width = 166
              Height = 13
              Caption = 'Largura de faixa de conten'#231#227'o (m)'
              Color = 15332585
              ParentColor = False
            end
            object Label11: TLabel
              Left = 23
              Top = 128
              Width = 181
              Height = 13
              Caption = 'Coeficiente de escoamento superficial'
              Color = 15332585
              ParentColor = False
            end
            object DBEdit_Declividade: TDBEdit
              Left = 250
              Top = 24
              Width = 100
              Height = 21
              DataField = 'DeclividadeTerreno'
              DataSource = DataSource_superficial
              Enabled = False
              TabOrder = 0
            end
            object DBEdit_InterceptacaoPlantas: TDBEdit
              Left = 250
              Top = 60
              Width = 100
              Height = 21
              DataField = 'InterceptacaoPelasPlantas'
              DataSource = DataSource_superficial
              Enabled = False
              TabOrder = 1
            end
            object DBEdit_LarguraContencao: TDBEdit
              Left = 250
              Top = 87
              Width = 100
              Height = 21
              DataField = 'LarguraFaixaContencao'
              DataSource = DataSource_superficial
              Enabled = False
              TabOrder = 2
            end
            object DBEdit_CoeficienteSuper: TDBEdit
              Left = 250
              Top = 122
              Width = 100
              Height = 21
              DataField = 'CoeficienteEscoamento'
              DataSource = DataSource_superficial
              Enabled = False
              TabOrder = 3
            end
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 481
          Width = 967
          Height = 50
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvNone
          TabOrder = 1
          object Button1: TButton
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
          object Button2: TButton
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
          object Button3: TButton
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
          object Button4: TButton
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
          object DBNavigator2: TDBNavigator
            Left = 520
            Top = 14
            Width = 220
            Height = 25
            DataSource = DataSource2
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            TabOrder = 4
          end
          object Button5: TButton
            Left = 17
            Top = 15
            Width = 75
            Height = 25
            Caption = 'Novo'
            ImageIndex = 0
            Images = FormPrincipal.ImageList1
            TabOrder = 5
          end
          object Button6: TButton
            AlignWithMargins = True
            Left = 881
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
            OnClick = Button6Click
            ExplicitHeight = 26
          end
        end
        object GroupBox3: TGroupBox
          Left = 1
          Top = 1
          Width = 352
          Height = 480
          Align = alLeft
          Caption = 'Busca de Local'
          Color = clBtnFace
          ParentBackground = False
          ParentColor = False
          TabOrder = 2
          ExplicitHeight = 482
          object DBGrid1: TDBGrid
            Left = 2
            Top = 63
            Width = 348
            Height = 415
            Align = alClient
            DataSource = DataSource_superficial
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
                Width = 44
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Width = 278
                Visible = True
              end>
          end
          object Panel5: TPanel
            Left = 2
            Top = 15
            Width = 348
            Height = 48
            Align = alTop
            TabOrder = 1
            object Label13: TLabel
              Left = 16
              Top = 16
              Width = 50
              Height = 13
              Caption = 'Descri'#231#227'o:'
            end
            object Edit1: TEdit
              Left = 72
              Top = 12
              Width = 265
              Height = 21
              TabOrder = 0
              OnChange = EditBuscaLocalChange
            end
          end
        end
      end
    end
  end
  object DataSourceLocalidade: TDataSource
    DataSet = FDQueryLocalidade
    Left = 872
    Top = 184
  end
  object FDQueryLocalidade: TFDQuery
    BeforePost = FDQueryLocalidadeBeforePost
    AfterPost = FDQueryLocalidadeAfterPost
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from localidade')
    Left = 877
    Top = 280
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 872
    Top = 248
  end
  object FDQuery1: TFDQuery
    BeforePost = FDQueryLocalidadeBeforePost
    AfterPost = FDQueryLocalidadeAfterPost
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from localidade')
    Left = 877
    Top = 136
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 872
    Top = 96
  end
  object FDQuery2: TFDQuery
    BeforePost = FDQueryLocalidadeBeforePost
    AfterPost = FDQueryLocalidadeAfterPost
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from localidade')
    Left = 869
    Top = 216
  end
  object FDQuery_superficial: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from localidade_superficial')
    Left = 876
    Top = 336
  end
  object DataSource_superficial: TDataSource
    DataSet = FDQuery_superficial
    Left = 884
    Top = 400
  end
end
