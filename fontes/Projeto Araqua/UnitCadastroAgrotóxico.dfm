object FormAgrotoxico: TFormAgrotoxico
  Left = 0
  Top = 0
  Caption = 'Agrot'#243'xicos'
  ClientHeight = 420
  ClientWidth = 629
  Color = 15397866
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object panelAgro: TPanel
    Left = 0
    Top = 0
    Width = 629
    Height = 420
    Align = alClient
    TabOrder = 0
    DesignSize = (
      629
      420)
    object Panel1: TPanel
      Left = 24
      Top = 16
      Width = 585
      Height = 66
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      DesignSize = (
        585
        66)
      object Panel2: TPanel
        Left = 62
        Top = 8
        Width = 137
        Height = 49
        Anchors = [akTop]
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 5
          Width = 88
          Height = 13
          Caption = 'Ingrediente Ativo:'
        end
        object DBEditIngredienteAtivo: TDBEdit
          Left = 8
          Top = 24
          Width = 121
          Height = 21
          DataField = 'principioAtivo'
          DataSource = DataSourceAgro
          TabOrder = 0
        end
      end
      object Panel3: TPanel
        Left = 357
        Top = 7
        Width = 138
        Height = 51
        Anchors = [akTop]
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 4
          Width = 61
          Height = 13
          Caption = 'Dose (g/ha):'
        end
        object DBEditDose: TDBEdit
          Left = 8
          Top = 23
          Width = 121
          Height = 21
          DataField = 'dose'
          DataSource = DataSourceAgro
          TabOrder = 0
        end
      end
    end
    object Panel4: TPanel
      Left = 24
      Top = 88
      Width = 585
      Height = 153
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      DesignSize = (
        585
        153)
      object Panel5: TPanel
        Left = 8
        Top = 9
        Width = 319
        Height = 137
        Anchors = [akTop]
        TabOrder = 0
        object Label3: TLabel
          Left = 18
          Top = 6
          Width = 173
          Height = 13
          Caption = 'Coeficiente de Sor'#231#227'o - Koc - (mL/g)'
        end
        object Label4: TLabel
          Left = 25
          Top = 28
          Width = 52
          Height = 13
          Caption = 'Camada 1:'
        end
        object Label5: TLabel
          Left = 25
          Top = 55
          Width = 52
          Height = 13
          Caption = 'Camada 2:'
        end
        object Label6: TLabel
          Left = 25
          Top = 111
          Width = 52
          Height = 13
          Caption = 'Camada 4:'
        end
        object Label7: TLabel
          Left = 25
          Top = 82
          Width = 52
          Height = 13
          Caption = 'Camada 3:'
        end
        object Label9: TLabel
          Left = 228
          Top = 6
          Width = 71
          Height = 13
          Caption = 'Meia-vida (dia)'
        end
        object DBEditCamada1: TDBEdit
          Left = 115
          Top = 25
          Width = 76
          Height = 21
          DataField = 'coeficienteSorcaoCam1'
          DataSource = DataSourceAgro
          TabOrder = 0
        end
        object DBEditCamada2: TDBEdit
          Left = 115
          Top = 52
          Width = 76
          Height = 21
          DataField = 'coeficienteSorcaoCam2'
          DataSource = DataSourceAgro
          TabOrder = 1
        end
        object DBEditCamada3: TDBEdit
          Left = 115
          Top = 79
          Width = 76
          Height = 21
          DataField = 'coeficienteSorcaoCam3'
          DataSource = DataSourceAgro
          TabOrder = 2
        end
        object DBEditCamada4: TDBEdit
          Left = 115
          Top = 106
          Width = 76
          Height = 21
          DataField = 'coeficienteSorcaoCam4'
          DataSource = DataSourceAgro
          TabOrder = 3
        end
        object DBEditMeiaVidaCam1: TDBEdit
          Left = 228
          Top = 25
          Width = 60
          Height = 21
          DataField = 'meiaVidaCam1'
          DataSource = DataSourceAgro
          TabOrder = 4
        end
        object DBEditMeiaVidaCam2: TDBEdit
          Left = 228
          Top = 52
          Width = 60
          Height = 21
          DataField = 'meiaVidaCam2'
          DataSource = DataSourceAgro
          TabOrder = 5
        end
        object DBEditMeiaVidaCam3: TDBEdit
          Left = 228
          Top = 79
          Width = 60
          Height = 21
          DataField = 'meiaVidaCam3'
          DataSource = DataSourceAgro
          TabOrder = 6
        end
        object DBEditMeiaVidaCam4: TDBEdit
          Left = 228
          Top = 106
          Width = 60
          Height = 21
          DataField = 'meiaVidaCam4'
          DataSource = DataSourceAgro
          TabOrder = 7
        end
      end
      object Panel6: TPanel
        Left = 333
        Top = 9
        Width = 245
        Height = 137
        Anchors = [akTop]
        TabOrder = 1
        object Label8: TLabel
          Left = 8
          Top = 7
          Width = 146
          Height = 13
          Caption = 'Padr'#227'o de Portabilidade (ug/L)'
        end
        object Label10: TLabel
          Left = 7
          Top = 50
          Width = 216
          Height = 13
          Caption = 'Par'#226'metro para Organismos Aqu'#225'ticos (ug/L)'
        end
        object DBEditPadraoPort: TDBEdit
          Left = 12
          Top = 23
          Width = 129
          Height = 21
          TabOrder = 0
        end
        object DBEditParamOrganAqua: TDBEdit
          Left = 12
          Top = 71
          Width = 129
          Height = 21
          TabOrder = 1
        end
      end
    end
    object DBGridAgro: TDBGrid
      Left = 135
      Top = 263
      Width = 376
      Height = 89
      Anchors = [akTop]
      DataSource = DataSourceAgro
      TabOrder = 2
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
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'principioAtivo'
          Title.Caption = 'Princ'#237'pio Ativo'
          Width = 287
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dose'
          Title.Caption = 'Dose'
          Width = 44
          Visible = True
        end>
    end
    object Panel7: TPanel
      Left = 135
      Top = 368
      Width = 376
      Height = 41
      Anchors = [akBottom]
      TabOrder = 3
      object btnSalvarAgro: TButton
        Left = 288
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 0
        OnClick = btnSalvarAgroClick
      end
      object btnCancelarAgro: TButton
        Left = 5
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = btnCancelarAgroClick
      end
      object btnEditar: TButton
        Left = 207
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 2
        OnClick = btnEditarClick
      end
    end
  end
  object DataSourceAgro: TDataSource
    DataSet = DataModule1.FDQueryAgro
    Left = 552
    Top = 272
  end
end
