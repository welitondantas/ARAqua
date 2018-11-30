object FormCalculoResultado: TFormCalculoResultado
  Left = 0
  Top = 0
  Caption = 'C'#225'lculos'
  ClientHeight = 600
  ClientWidth = 984
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
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFundo: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 600
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 982
      Height = 598
      ActivePage = TabSheetLixiviacao
      Align = alClient
      TabOrder = 0
      object TabSheetLixiviacao: TTabSheet
        Caption = 'Lixivia'#231#227'o'
        object PanelTabLixiviacao: TPanel
          Left = 0
          Top = 0
          Width = 974
          Height = 570
          Align = alClient
          ParentBackground = False
          TabOrder = 0
          DesignSize = (
            974
            570)
          object GroupBoxLocal: TGroupBox
            Left = 329
            Top = 8
            Width = 333
            Height = 81
            Caption = 'Local'
            Color = clBtnFace
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            object DBLookupComboLocal: TDBLookupComboBox
              Left = 19
              Top = 35
              Width = 171
              Height = 21
              DataField = 'localidade_id'
              DataSource = DataSourceResultado
              KeyField = 'id'
              ListField = 'descricao'
              ListSource = DataSourceLocalidade
              TabOrder = 0
            end
          end
          object GroupBoxSolo: TGroupBox
            Left = 329
            Top = 105
            Width = 333
            Height = 89
            Anchors = [akTop]
            Caption = 'Solo'
            Color = clBtnFace
            ParentBackground = False
            ParentColor = False
            TabOrder = 1
            object DBLookupComboBoxSolo: TDBLookupComboBox
              Left = 24
              Top = 32
              Width = 171
              Height = 21
              DataField = 'solo_id'
              DataSource = DataSourceResultado
              KeyField = 'id'
              ListField = 'nome'
              ListSource = DataSourceSolo
              TabOrder = 0
            end
          end
          object GroupBoxAgrotoxico: TGroupBox
            Left = 329
            Top = 208
            Width = 333
            Height = 137
            Anchors = [akTop]
            Caption = 'Agrot'#243'xico'
            Color = clBtnFace
            ParentBackground = False
            ParentColor = False
            TabOrder = 2
            object Label3: TLabel
              Left = 215
              Top = 40
              Width = 57
              Height = 13
              Caption = 'Dose (g/ha)'
            end
            object CheckBoxInserirManual: TCheckBox
              Left = 24
              Top = 62
              Width = 145
              Height = 17
              Caption = 'Inserir dose manualmente'
              TabOrder = 0
              OnClick = CheckBoxInserirManualClick
            end
            object EditDoseManual: TEdit
              Left = 24
              Top = 85
              Width = 89
              Height = 21
              Enabled = False
              TabOrder = 1
            end
            object DBLookupComboAgro: TDBLookupComboBox
              Left = 24
              Top = 35
              Width = 171
              Height = 21
              DataField = 'agrotoxico_id'
              DataSource = DataSourceResultado
              KeyField = 'id'
              ListField = 'principioAtivo'
              ListSource = DataSourceAgro
              TabOrder = 2
            end
          end
          object GroupBox4: TGroupBox
            Left = 668
            Top = 1
            Width = 305
            Height = 518
            Align = alRight
            Caption = 'C'#225'lculos'
            Color = clBtnFace
            ParentBackground = False
            ParentColor = False
            TabOrder = 3
            ExplicitHeight = 519
            object Panel1: TPanel
              Left = 24
              Top = 35
              Width = 241
              Height = 82
              BorderStyle = bsSingle
              TabOrder = 0
              object Label1: TLabel
                Left = 16
                Top = 14
                Width = 107
                Height = 16
                Caption = 'Recarga H'#237'drica:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 184
                Top = 36
                Width = 46
                Height = 13
                Caption = '(mm/ano)'
              end
              object DBEditRecargaHidrica: TDBEdit
                Left = 16
                Top = 32
                Width = 162
                Height = 21
                DataField = 'recargaHidrica'
                DataSource = DataSourceResultado
                Enabled = False
                TabOrder = 0
              end
            end
            object Panel4: TPanel
              Left = 24
              Top = 149
              Width = 241
              Height = 125
              BorderStyle = bsSingle
              TabOrder = 1
              object Label7: TLabel
                Left = 8
                Top = 13
                Width = 172
                Height = 16
                Caption = 'Concentra'#231#227'o Estimada na'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 8
                Top = 32
                Width = 125
                Height = 16
                Caption = #193'gua Subterr'#226'nea:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 183
                Top = 75
                Width = 48
                Height = 13
                Caption = '(ug i.a./L)'
              end
              object DBEditConcentracaoEstimada: TDBEdit
                Left = 16
                Top = 72
                Width = 161
                Height = 21
                DataField = 'concentracaoEstimada'
                DataSource = DataSourceResultado
                TabOrder = 0
              end
            end
          end
          object Panel5: TPanel
            Left = 1
            Top = 519
            Width = 972
            Height = 50
            Align = alBottom
            TabOrder = 4
            object btnCalcular: TButton
              Left = 347
              Top = 16
              Width = 90
              Height = 25
              Caption = 'Calcular'
              ImageIndex = 6
              Images = FormPrincipal.ImageList1
              TabOrder = 0
              OnClick = btnCalcularClick
            end
            object btnNovaConsulta: TButton
              Left = 20
              Top = 16
              Width = 90
              Height = 25
              Caption = 'Novo C'#225'lculo'
              Enabled = False
              ImageIndex = 0
              Images = FormPrincipal.ImageList1
              TabOrder = 1
              OnClick = btnNovaConsultaClick
            end
            object btnSalvar: TButton
              Left = 235
              Top = 16
              Width = 90
              Height = 25
              Caption = 'Salvar'
              Enabled = False
              ImageIndex = 2
              Images = FormPrincipal.ImageList1
              TabOrder = 2
              OnClick = btnSalvarClick
            end
            object btnCancelar: TButton
              Left = 128
              Top = 16
              Width = 90
              Height = 25
              Caption = 'Cancelar'
              ImageIndex = 1
              Images = FormPrincipal.ImageList1
              TabOrder = 3
              OnClick = btnCancelarClick
            end
            object Button1: TButton
              AlignWithMargins = True
              Left = 886
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
              TabOrder = 4
              OnClick = Button1Click
              ExplicitHeight = 27
            end
            object DBNavigator2: TDBNavigator
              Left = 490
              Top = 15
              Width = 224
              Height = 25
              DataSource = DataSourceSolo
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              TabOrder = 5
            end
          end
          object Panel3: TPanel
            Left = 1
            Top = 1
            Width = 322
            Height = 518
            Align = alLeft
            TabOrder = 5
            ExplicitHeight = 519
            object Panel6: TPanel
              Left = 1
              Top = 1
              Width = 320
              Height = 48
              Align = alTop
              TabOrder = 0
              object Label13: TLabel
                Left = 16
                Top = 16
                Width = 52
                Height = 13
                Caption = 'Resultado:'
              end
              object Edit1: TEdit
                Left = 88
                Top = 16
                Width = 217
                Height = 21
                TabOrder = 0
              end
            end
            object DBGrid2: TDBGrid
              Left = 1
              Top = 49
              Width = 320
              Height = 468
              Align = alClient
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
            end
          end
        end
      end
      object TabSheetCarreamento: TTabSheet
        Caption = 'Carreamento Superficial'
        Enabled = False
        ImageIndex = 1
        object PanelTabCarreamento: TPanel
          Left = 0
          Top = 0
          Width = 974
          Height = 570
          Align = alClient
          Color = 15463657
          ParentBackground = False
          TabOrder = 0
          object Panel2: TPanel
            Left = 1
            Top = 1
            Width = 972
            Height = 568
            Align = alClient
            ParentBackground = False
            TabOrder = 0
            object DBNavigator1: TDBNavigator
              Left = 145
              Top = 527
              Width = 440
              Height = 41
              TabOrder = 0
            end
            object PageControl2: TPageControl
              Left = 1
              Top = 1
              Width = 970
              Height = 400
              ActivePage = TabSheet1
              Align = alTop
              TabOrder = 1
              object TabSheet1: TTabSheet
                Caption = 'Manuten'#231#227'o /  Consulta'
                object Label2: TLabel
                  Left = 140
                  Top = 26
                  Width = 118
                  Height = 13
                  Caption = 'Descri'#231#227'o da Localidade:'
                end
                object Label4: TLabel
                  Left = 43
                  Top = 26
                  Width = 15
                  Height = 13
                  Caption = 'ID:'
                end
                object Label5: TLabel
                  Left = 138
                  Top = 98
                  Width = 120
                  Height = 13
                  Caption = 'Declividade de Terro (%)'
                end
                object Label6: TLabel
                  Left = 99
                  Top = 170
                  Width = 156
                  Height = 13
                  Caption = 'Intercepta'#231#227'o pelas Plantas (%)'
                end
                object Label11: TLabel
                  Left = 79
                  Top = 234
                  Width = 170
                  Height = 13
                  Caption = 'Largura da Faixa de Conten'#231#227'o (m)'
                end
                object Label12: TLabel
                  Left = 64
                  Top = 290
                  Width = 182
                  Height = 13
                  Caption = 'Coeficiente de Escoamento Superficial'
                end
              end
            end
            object DBEdit1: TDBEdit
              Left = 76
              Top = 51
              Width = 63
              Height = 21
              TabOrder = 2
            end
            object DBEdit2: TDBEdit
              Left = 293
              Top = 51
              Width = 273
              Height = 21
              TabOrder = 3
            end
            object DBEdit3: TDBEdit
              Left = 293
              Top = 258
              Width = 121
              Height = 21
              TabOrder = 4
            end
            object DBEdit4: TDBEdit
              Left = 293
              Top = 195
              Width = 121
              Height = 21
              TabOrder = 5
            end
            object DBEdit5: TDBEdit
              Left = 293
              Top = 123
              Width = 121
              Height = 21
              TabOrder = 6
            end
            object DBEdit6: TDBEdit
              Left = 293
              Top = 315
              Width = 121
              Height = 21
              TabOrder = 7
            end
            object DBGrid1: TDBGrid
              Left = 1
              Top = 401
              Width = 970
              Height = 120
              Align = alTop
              TabOrder = 8
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
            end
          end
        end
      end
    end
  end
  object FDQueryResultado: TFDQuery
    BeforePost = FDQueryResultadoBeforePost
    AfterPost = FDQueryResultadoAfterPost
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from resultado')
    Left = 808
    Top = 176
  end
  object DataSourceResultado: TDataSource
    DataSet = FDQueryResultado
    Left = 883
    Top = 81
  end
  object FDQuerySolo: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from solo')
    Left = 806
    Top = 119
  end
  object FDQueryLocalidade: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from localidade')
    Left = 822
    Top = 407
    object FDQueryLocalidadeid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQueryLocalidadeprecipitacao: TSingleField
      FieldName = 'precipitacao'
      Origin = 'precipitacao'
      Required = True
    end
    object FDQueryLocalidadeevapotranspiracao: TSingleField
      FieldName = 'evapotranspiracao'
      Origin = 'evapotranspiracao'
      Required = True
    end
    object FDQueryLocalidadeirrigacao: TSingleField
      FieldName = 'irrigacao'
      Origin = 'irrigacao'
      Required = True
    end
    object FDQueryLocalidadeporosidadeAquifero: TSingleField
      FieldName = 'porosidadeAquifero'
      Origin = 'porosidadeAquifero'
      Required = True
    end
    object FDQueryLocalidadeprofundidadeAquifero: TIntegerField
      FieldName = 'profundidadeAquifero'
      Origin = 'profundidadeAquifero'
      Required = True
    end
    object FDQueryLocalidadedescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 100
    end
  end
  object FDQueryAgro: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from agrotoxico')
    Left = 774
    Top = 71
  end
  object DataSourceSolo: TDataSource
    DataSet = FDQuerySolo
    Left = 836
    Top = 241
  end
  object DataSourceLocalidade: TDataSource
    DataSet = FDQueryLocalidade
    Left = 844
    Top = 297
  end
  object DataSourceAgro: TDataSource
    DataSet = FDQueryAgro
    Left = 835
    Top = 353
  end
end
