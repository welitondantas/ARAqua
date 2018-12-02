object FormCalculoResultado: TFormCalculoResultado
  Left = 0
  Top = 0
  Caption = 'C'#225'lculos'
  ClientHeight = 600
  ClientWidth = 1181
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 536
    Top = 0
    Height = 550
    ExplicitTop = 40
    ExplicitHeight = 100
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 550
    Align = alLeft
    TabOrder = 0
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 534
      Height = 80
      Align = alTop
      Color = clMenu
      ParentBackground = False
      TabOrder = 0
      object Label13: TLabel
        Left = 16
        Top = 20
        Width = 52
        Height = 13
        Caption = 'Resultado:'
      end
      object Edit1: TEdit
        Left = 74
        Top = 16
        Width = 334
        Height = 21
        TabOrder = 0
        OnChange = Edit1Change
      end
      object RadioButtonAS: TRadioButton
        Left = 16
        Top = 45
        Width = 113
        Height = 17
        Caption = #193'gua Superficial'
        TabOrder = 1
        OnClick = RadioButtonASClick
      end
      object RadioButtonAB: TRadioButton
        Left = 200
        Top = 45
        Width = 113
        Height = 17
        Caption = #193'gua Subterr'#226'nea'
        TabOrder = 2
        OnClick = RadioButtonABClick
      end
      object RadioButtonAT: TRadioButton
        Left = 384
        Top = 45
        Width = 105
        Height = 17
        Caption = 'Todos'
        Checked = True
        TabOrder = 3
        TabStop = True
        OnClick = RadioButtonATClick
      end
      object ButtonConsultar: TButton
        Left = 414
        Top = 14
        Width = 75
        Height = 25
        Caption = 'Consultar'
        TabOrder = 4
        OnClick = ButtonConsultarClick
      end
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 81
      Width = 534
      Height = 468
      Align = alClient
      DataSource = DSResult
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Tipo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id'
          Title.Caption = 'C'#243'd.'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Solo'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'principioativo'
          Title.Caption = 'Agrot'#243'xico'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Localidade'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Recarga'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Concentracao'
          Width = 80
          Visible = True
        end>
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 550
    Width = 1181
    Height = 50
    Align = alBottom
    Color = clMenu
    ParentBackground = False
    TabOrder = 1
    object Button1: TButton
      AlignWithMargins = True
      Left = 1095
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
      TabOrder = 0
      OnClick = Button1Click
    end
    object DBNavigator2: TDBNavigator
      Left = 1
      Top = 8
      Width = 430
      Height = 33
      DataSource = DSResult
      TabOrder = 1
    end
  end
  object Panel7: TPanel
    Left = 539
    Top = 0
    Width = 642
    Height = 550
    Align = alClient
    Color = clMenu
    ParentBackground = False
    TabOrder = 2
    object GroupBox4: TGroupBox
      Left = 343
      Top = 151
      Width = 274
      Height = 224
      Caption = ' Resultados '
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 17
        Top = 33
        Width = 241
        Height = 80
        Caption = ' Recarga H'#237'drica '
        TabOrder = 0
        object Label9: TLabel
          Left = 183
          Top = 31
          Width = 46
          Height = 13
          Caption = '(mm/ano)'
        end
        object DBEditRecargaHidrica: TDBEdit
          Left = 20
          Top = 31
          Width = 149
          Height = 21
          DataField = 'recargaHidrica'
          DataSource = DataSourceResultado
          Enabled = False
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 17
        Top = 130
        Width = 241
        Height = 79
        Caption = ' Concentra'#231#227'o Estimada '
        TabOrder = 1
        object Label10: TLabel
          Left = 183
          Top = 35
          Width = 48
          Height = 13
          Caption = '(ug i.a./L)'
        end
        object DBEditConcentracaoEstimada: TDBEdit
          Left = 21
          Top = 32
          Width = 148
          Height = 21
          DataField = 'concentracaoEstimada'
          DataSource = DataSourceResultado
          TabOrder = 0
        end
      end
    end
    object GroupBoxAgrotoxico: TGroupBox
      Left = 345
      Top = 17
      Width = 272
      Height = 128
      Caption = 'Agrot'#243'xico'
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      object Label3: TLabel
        Left = 191
        Top = 43
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
        Width = 161
        Height = 21
        DataField = 'agrotoxico_id'
        DataSource = DataSourceResultado
        KeyField = 'id'
        ListField = 'principioAtivo'
        ListSource = DataSourceAgro
        TabOrder = 2
      end
    end
    object GroupBoxLocal: TGroupBox
      Left = 33
      Top = 112
      Width = 288
      Height = 81
      Caption = 'Localidade Superficial'
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 2
      object DBLookupComboSup: TDBLookupComboBox
        Left = 20
        Top = 35
        Width = 250
        Height = 21
        DataField = 'localidade_id'
        DataSource = DataSourceResultado
        KeyField = 'id'
        ListField = 'descricao'
        ListSource = DataSourceSuper
        TabOrder = 0
      end
    end
    object GroupBoxSolo: TGroupBox
      Left = 33
      Top = 286
      Width = 288
      Height = 89
      Caption = 'Solo'
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 3
      object DBLookupComboBoxSolo: TDBLookupComboBox
        Left = 20
        Top = 32
        Width = 250
        Height = 21
        DataField = 'solo_id'
        DataSource = DataSourceResultado
        KeyField = 'id'
        ListField = 'nome'
        ListSource = DataSourceSolo
        TabOrder = 0
      end
    end
    object btnCalcular: TButton
      Left = 359
      Top = 392
      Width = 90
      Height = 25
      Caption = 'Calcular'
      ImageIndex = 6
      Images = FormPrincipal.ImageList1
      TabOrder = 4
      OnClick = btnCalcularClick
    end
    object btnSalvar: TButton
      Left = 247
      Top = 392
      Width = 90
      Height = 25
      Caption = 'Salvar'
      Enabled = False
      ImageIndex = 2
      Images = FormPrincipal.ImageList1
      TabOrder = 5
      OnClick = btnSalvarClick
    end
    object btnCancelar: TButton
      Left = 140
      Top = 392
      Width = 90
      Height = 25
      Caption = 'Cancelar'
      ImageIndex = 1
      Images = FormPrincipal.ImageList1
      TabOrder = 6
      OnClick = btnCancelarClick
    end
    object btnNovaConsulta: TButton
      Left = 32
      Top = 392
      Width = 90
      Height = 25
      Caption = 'Novo C'#225'lculo'
      Enabled = False
      ImageIndex = 0
      Images = FormPrincipal.ImageList1
      TabOrder = 7
      OnClick = btnNovaConsultaClick
    end
    object GroupBox3: TGroupBox
      Left = 32
      Top = 17
      Width = 289
      Height = 88
      Caption = 'Tipo de C'#225'lculo'
      TabOrder = 8
      object RadioButtonSup: TRadioButton
        Left = 24
        Top = 24
        Width = 113
        Height = 17
        Caption = #193'gua Superficial'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButtonSupClick
      end
      object RadioButtonSub: TRadioButton
        Left = 24
        Top = 55
        Width = 113
        Height = 17
        Caption = #193'gua Subterr'#226'nea'
        TabOrder = 1
        OnClick = RadioButtonSubClick
      end
    end
    object GroupBoxSub: TGroupBox
      Left = 32
      Top = 199
      Width = 288
      Height = 81
      Caption = 'Localidade Subterr'#226'nea'
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 9
      object DBLookupComboBoxLocal: TDBLookupComboBox
        Left = 24
        Top = 32
        Width = 249
        Height = 21
        DataField = 'localidade_id'
        DataSource = DataSourceResultado
        Enabled = False
        KeyField = 'id'
        ListField = 'descricao'
        ListSource = DataSourceLocalidade
        TabOrder = 0
      end
    end
  end
  object FDQueryResultado: TFDQuery
    BeforePost = FDQueryResultadoBeforePost
    AfterPost = FDQueryResultadoAfterPost
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from resultado')
    Left = 40
    Top = 312
  end
  object DataSourceResultado: TDataSource
    DataSet = FDQueryResultado
    Left = 139
    Top = 305
  end
  object FDQuerySolo: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from solo')
    Left = 230
    Top = 431
  end
  object FDQueryLocalidade: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from localidade')
    Left = 230
    Top = 375
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
    Left = 230
    Top = 487
  end
  object DataSourceSolo: TDataSource
    DataSet = FDQuerySolo
    Left = 300
    Top = 433
  end
  object DataSourceLocalidade: TDataSource
    DataSet = FDQueryLocalidade
    Left = 332
    Top = 377
  end
  object DataSourceAgro: TDataSource
    DataSet = FDQueryAgro
    Left = 299
    Top = 489
  end
  object FDQueryResult: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'SELECT case tipo when 1 then '#39#193'gua Sub.'#39' when 2 then '#39#193'gua Sup.'#39 +
        ' end as Tipo,'
      'r.id,'
      'r.recargahidrica Recarga,'
      'r.concentracaoestimada Concentracao,'
      's.nome,'
      'a.principioativo,'
      'l.descricao'
      'from resultado r'
      'left join solo s on'
      's.id = r.solo_id'
      'left join localidade l on'
      'l.id = r.localidade_id'
      'left join agrotoxico a on'
      'a.id = r.agrotoxico_id'
      'where ( upper(s.nome) like upper( :SOLO )'
      'or upper(a.principioativo) like upper( :AGRO )'
      'or upper(l.descricao) like upper( :LOCAL )'
      'or r.id = :ID ) '
      'and tipo = :tipo')
    Left = 38
    Top = 370
    ParamData = <
      item
        Name = 'SOLO'
        DataType = ftWideString
        ParamType = ptInput
        Value = '%%'
      end
      item
        Name = 'AGRO'
        DataType = ftWideString
        ParamType = ptInput
        Value = '%%'
      end
      item
        Name = 'LOCAL'
        DataType = ftWideString
        ParamType = ptInput
        Value = '%%'
      end
      item
        Name = 'ID'
        DataType = ftWideString
        ParamType = ptInput
        Value = '0'
      end
      item
        Name = 'TIPO'
        DataType = ftWideString
        ParamType = ptInput
        Value = '0'
      end>
  end
  object DSResult: TDataSource
    DataSet = FDQueryResult
    Left = 110
    Top = 370
  end
  object DataSourceSuper: TDataSource
    DataSet = FDQuerySuper
    Left = 332
    Top = 305
  end
  object FDQuerySuper: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from localidade_superficial')
    Left = 232
    Top = 312
  end
end
