object FormCadastroUsuario: TFormCadastroUsuario
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 398
  ClientWidth = 671
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object paneFormCad: TPanel
    Left = 0
    Top = 0
    Width = 671
    Height = 398
    Align = alClient
    Color = 16055795
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      671
      398)
    object GroupBoxBuscaUsr: TGroupBox
      Left = 248
      Top = 24
      Width = 409
      Height = 233
      Anchors = [akTop]
      Caption = 'Busca de Usu'#225'rios'
      Color = 16121076
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      object EditBuscaUsuario: TEdit
        Left = 40
        Top = 24
        Width = 321
        Height = 21
        TabOrder = 0
        OnChange = EditBuscaUsuarioChange
      end
      object DBGridUsuarios: TDBGrid
        Left = 16
        Top = 66
        Width = 377
        Height = 151
        DataSource = DataSourceUsuario
        TabOrder = 1
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
    end
    object PanelBotoes: TPanel
      Left = 73
      Top = 272
      Width = 584
      Height = 72
      Anchors = [akBottom]
      TabOrder = 1
      object btnCancelar: TButton
        Left = 497
        Top = 7
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 0
        OnClick = btnCancelarClick
      end
      object btnEditar: TButton
        Left = 23
        Top = 7
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 1
        OnClick = btnEditarClick
      end
      object btnExcluir: TButton
        Left = 382
        Top = 7
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 2
        OnClick = btnExcluirClick
      end
      object btnNovo: TButton
        Left = 141
        Top = 7
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 3
        OnClick = btnNovoClick
      end
      object btnSalvar: TButton
        Left = 255
        Top = 7
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 4
        OnClick = btnSalvarClick
      end
      object DBNavigator1: TDBNavigator
        Left = 175
        Top = 38
        Width = 232
        Height = 25
        DataSource = DataSourceUsuario
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 5
      end
    end
    object PanelDados: TPanel
      Left = 35
      Top = 24
      Width = 209
      Height = 233
      Anchors = [akTop]
      BevelOuter = bvNone
      TabOrder = 2
      object Label1: TLabel
        Left = 17
        Top = 5
        Width = 31
        Height = 13
        Caption = 'Nome:'
        Color = 16121076
        ParentColor = False
      end
      object Label2: TLabel
        Left = 19
        Top = 51
        Width = 29
        Height = 13
        Caption = 'Login:'
        Color = 16121076
        ParentColor = False
      end
      object Label3: TLabel
        Left = 19
        Top = 97
        Width = 34
        Height = 13
        Caption = 'Senha:'
        Color = 16121076
        ParentColor = False
      end
      object Label4: TLabel
        Left = 19
        Top = 143
        Width = 84
        Height = 13
        Caption = 'Redigite a senha:'
        Color = 16121076
        ParentColor = False
      end
      object Label5: TLabel
        Left = 19
        Top = 189
        Width = 78
        Height = 13
        Caption = 'N'#237'vel de acesso:'
        Color = 16121076
        ParentColor = False
      end
      object DBComboBoxAcesso: TDBComboBox
        Left = 19
        Top = 208
        Width = 145
        Height = 21
        DataField = 'acesso'
        DataSource = DataSourceUsuario
        Enabled = False
        Items.Strings = (
          '1 '
          '2')
        TabOrder = 0
      end
      object DBEditLogin: TDBEdit
        Left = 19
        Top = 70
        Width = 121
        Height = 21
        DataField = 'login'
        DataSource = DataSourceUsuario
        Enabled = False
        TabOrder = 1
      end
      object DBEditNome: TDBEdit
        Left = 17
        Top = 24
        Width = 121
        Height = 21
        DataField = 'nome'
        DataSource = DataSourceUsuario
        Enabled = False
        TabOrder = 2
      end
      object DBEditSenha: TDBEdit
        Left = 19
        Top = 116
        Width = 121
        Height = 21
        DataField = 'senha'
        DataSource = DataSourceUsuario
        Enabled = False
        PasswordChar = '*'
        TabOrder = 3
      end
      object EditRedigite: TEdit
        Left = 19
        Top = 162
        Width = 121
        Height = 21
        Enabled = False
        PasswordChar = '*'
        TabOrder = 4
      end
    end
  end
  object DataSourceUsuario: TDataSource
    DataSet = FDQueryUsuario
    Left = 112
    Top = 336
  end
  object FDQueryUsuario: TFDQuery
    Active = True
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
  end
end
