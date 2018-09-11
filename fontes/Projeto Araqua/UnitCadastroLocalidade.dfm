object FormCadastroLocalidade: TFormCadastroLocalidade
  Left = 0
  Top = 0
  Caption = 'Cadastro de Local'
  ClientHeight = 393
  ClientWidth = 618
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
  object panelFundoLocal: TPanel
    Left = 0
    Top = 0
    Width = 618
    Height = 393
    Align = alClient
    Color = 15070437
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      618
      393)
    object PanelDescricao: TPanel
      Left = 13
      Top = 16
      Width = 593
      Height = 89
      Anchors = [akTop]
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 178
        Top = 8
        Width = 50
        Height = 13
        Caption = 'Descri'#231#227'o:'
      end
      object DBMemo1: TDBMemo
        Left = 178
        Top = 27
        Width = 265
        Height = 62
        DataField = 'descricao'
        DataSource = DataSourceLocalidade
        TabOrder = 0
      end
    end
    object GroupBox1: TGroupBox
      Left = 15
      Top = 111
      Width = 305
      Height = 122
      Anchors = [akTop]
      Caption = 'Clima'
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
      object DBEdit1: TDBEdit
        Left = 193
        Top = 24
        Width = 65
        Height = 21
        DataField = 'precipitacao'
        DataSource = DataSourceLocalidade
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 193
        Top = 56
        Width = 65
        Height = 21
        DataField = 'irrigacao'
        DataSource = DataSourceLocalidade
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 193
        Top = 87
        Width = 65
        Height = 21
        DataField = 'evapotranspiracao'
        DataSource = DataSourceLocalidade
        TabOrder = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = 332
      Top = 111
      Width = 273
      Height = 122
      Anchors = [akTop]
      Caption = 'Aqu'#237'fero'
      Color = 15201511
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
      object DBEdit4: TDBEdit
        Left = 152
        Top = 21
        Width = 62
        Height = 21
        DataField = 'porosidadeAquifero'
        DataSource = DataSourceLocalidade
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 152
        Top = 56
        Width = 65
        Height = 21
        DataField = 'profundidadeAquifero'
        DataSource = DataSourceLocalidade
        TabOrder = 1
      end
    end
    object DBGridLocalidade: TDBGrid
      Left = 64
      Top = 239
      Width = 482
      Height = 74
      Anchors = [akTop]
      DataSource = DataSourceLocalidade
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'precipitacao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'evapotranspiracao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'irrigacao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'porosidadeAquifero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'profundidadeAquifero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Visible = True
        end>
    end
    object PanelBotoes: TPanel
      Left = 117
      Top = 328
      Width = 393
      Height = 49
      Anchors = [akBottom]
      BevelInner = bvRaised
      BevelOuter = bvNone
      TabOrder = 4
      object btnSalvar: TButton
        Left = 304
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 0
        OnClick = btnSalvarClick
      end
      object btnEditar: TButton
        Left = 208
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 1
        OnClick = btnEditarClick
      end
      object btnCancelar: TButton
        Left = 40
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 2
        OnClick = btnCancelarClick
      end
    end
  end
  object DataSourceLocalidade: TDataSource
    DataSet = DataModule1.FDQueryLocalidade
    Left = 536
    Top = 328
  end
end