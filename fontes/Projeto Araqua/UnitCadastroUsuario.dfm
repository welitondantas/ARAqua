object FormCadastroUsuario: TFormCadastroUsuario
  Left = 0
  Top = 0
  AlphaBlend = True
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 491
  ClientWidth = 994
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
  object paneFormCad: TPanel
    Left = 0
    Top = 0
    Width = 994
    Height = 491
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 410
      Top = 1
      Height = 439
      ExplicitLeft = 416
      ExplicitTop = 296
      ExplicitHeight = 100
    end
    object GroupBoxBuscaUsr: TGroupBox
      Left = 1
      Top = 1
      Width = 409
      Height = 439
      Align = alLeft
      Caption = 'Busca de Usu'#225'rios'
      Color = clMenu
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      object DBGridUsuarios: TDBGrid
        Left = 2
        Top = 65
        Width = 405
        Height = 372
        Align = alClient
        DataSource = DataSourceUsuario
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
            FieldName = 'nome'
            Width = 186
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'login'
            Width = 123
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 2
        Top = 15
        Width = 405
        Height = 50
        Align = alTop
        TabOrder = 1
        object Label6: TLabel
          Left = 21
          Top = 16
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object EditBuscaUsuario: TEdit
          Left = 70
          Top = 12
          Width = 321
          Height = 21
          TabOrder = 0
          OnChange = EditBuscaUsuarioChange
        end
      end
    end
    object PanelBotoes: TPanel
      Left = 1
      Top = 440
      Width = 992
      Height = 50
      Align = alBottom
      Color = clMenu
      ParentBackground = False
      TabOrder = 1
      object btnCancelar: TButton
        Left = 481
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        Enabled = False
        ImageIndex = 1
        Images = FormPrincipal.ImageList1
        TabOrder = 0
        OnClick = btnCancelarClick
      end
      object btnEditar: TButton
        Left = 7
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Editar'
        ImageIndex = 4
        Images = FormPrincipal.ImageList1
        TabOrder = 1
        OnClick = btnEditarClick
      end
      object btnExcluir: TButton
        Left = 366
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Excluir'
        Enabled = False
        ImageIndex = 3
        Images = FormPrincipal.ImageList1
        TabOrder = 2
        OnClick = btnExcluirClick
      end
      object btnNovo: TButton
        Left = 125
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Novo'
        ImageIndex = 0
        Images = FormPrincipal.ImageList1
        TabOrder = 3
        OnClick = btnNovoClick
      end
      object btnSalvar: TButton
        Left = 239
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Salvar'
        Enabled = False
        ImageIndex = 2
        Images = FormPrincipal.ImageList1
        TabOrder = 4
        OnClick = btnSalvarClick
      end
      object DBNavigator1: TDBNavigator
        Left = 579
        Top = 14
        Width = 232
        Height = 25
        DataSource = DataSourceUsuario
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 5
      end
      object Button1: TButton
        AlignWithMargins = True
        Left = 906
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
    object PanelDados: TPanel
      Left = 413
      Top = 1
      Width = 580
      Height = 439
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object Label1: TLabel
        Left = 33
        Top = 15
        Width = 31
        Height = 13
        Caption = 'Nome:'
        Color = 16121076
        ParentColor = False
      end
      object Label2: TLabel
        Left = 35
        Top = 61
        Width = 29
        Height = 13
        Caption = 'Login:'
        Color = 16121076
        ParentColor = False
      end
      object Label3: TLabel
        Left = 35
        Top = 107
        Width = 34
        Height = 13
        Caption = 'Senha:'
        Color = 16121076
        ParentColor = False
      end
      object Label4: TLabel
        Left = 35
        Top = 153
        Width = 84
        Height = 13
        Caption = 'Redigite a senha:'
        Color = 16121076
        ParentColor = False
      end
      object Label5: TLabel
        Left = 35
        Top = 199
        Width = 78
        Height = 13
        Caption = 'N'#237'vel de acesso:'
        Color = 16121076
        ParentColor = False
      end
      object Label7: TLabel
        Left = 35
        Top = 247
        Width = 67
        Height = 13
        Caption = 'Tema padr'#227'o:'
        Color = 16121076
        ParentColor = False
      end
      object Label8: TLabel
        Left = 104
        Top = 224
        Width = 182
        Height = 13
        Caption = '1 - Usu'#225'rio Comum / 2 - Administrador'
      end
      object DBComboBoxAcesso: TDBComboBox
        Left = 35
        Top = 218
        Width = 54
        Height = 21
        DataField = 'acesso'
        DataSource = DataSourceUsuario
        Enabled = False
        Items.Strings = (
          '1'
          '2')
        TabOrder = 0
      end
      object DBEditLogin: TDBEdit
        Left = 35
        Top = 80
        Width = 121
        Height = 21
        DataField = 'login'
        DataSource = DataSourceUsuario
        Enabled = False
        TabOrder = 1
      end
      object DBEditNome: TDBEdit
        Left = 33
        Top = 34
        Width = 121
        Height = 21
        DataField = 'nome'
        DataSource = DataSourceUsuario
        Enabled = False
        TabOrder = 2
      end
      object DBEditSenha: TDBEdit
        Left = 35
        Top = 126
        Width = 121
        Height = 21
        DataField = 'senha'
        DataSource = DataSourceUsuario
        Enabled = False
        PasswordChar = '*'
        TabOrder = 3
      end
      object EditRedigite: TEdit
        Left = 35
        Top = 172
        Width = 121
        Height = 21
        Enabled = False
        PasswordChar = '*'
        TabOrder = 4
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 35
        Top = 266
        Width = 145
        Height = 21
        DataField = 'idTemas'
        DataSource = DataSourceUsuario
        Enabled = False
        KeyField = 'idTemas'
        ListField = 'nomeTema'
        ListSource = DataSourceTema
        TabOrder = 5
      end
      object DBCheckBox1: TDBCheckBox
        Left = 38
        Top = 304
        Width = 97
        Height = 17
        Caption = 'Usu'#225'rio Ativo?'
        DataField = 'idStatus'
        DataSource = DataSourceUsuario
        Enabled = False
        TabOrder = 6
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
  end
  object DataSourceUsuario: TDataSource
    DataSet = FDQueryUsuario
    Left = 112
    Top = 336
  end
  object FDQueryUsuario: TFDQuery
    BeforePost = FDQueryUsuarioBeforePost
    AfterPost = FDQueryUsuarioAfterPost
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from usuario')
    Left = 200
    Top = 344
    object FDQueryUsuarioid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQueryUsuarionome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 40
    end
    object FDQueryUsuariologin: TStringField
      FieldName = 'login'
      Origin = 'login'
      Required = True
      Size = 40
    end
    object FDQueryUsuariosenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 10
    end
    object FDQueryUsuarioacesso: TIntegerField
      FieldName = 'acesso'
      Origin = 'acesso'
      Required = True
    end
    object FDQueryUsuarioidTemas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idTemas'
      Origin = 'idTemas'
    end
    object FDQueryUsuarioidStatus: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idStatus'
      Origin = 'idStatus'
    end
  end
  object FDQueryTema: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select idTemas, nomeTema from temas')
    Left = 329
    Top = 273
  end
  object DataSourceTema: TDataSource
    DataSet = FDQueryTema
    Left = 329
    Top = 329
  end
end
