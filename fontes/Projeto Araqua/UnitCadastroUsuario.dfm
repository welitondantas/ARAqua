object FormCadastroUsuario: TFormCadastroUsuario
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 341
  ClientWidth = 274
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
    Width = 274
    Height = 341
    Align = alClient
    Color = 16055795
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 72
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Nome:'
      Color = 16121076
      ParentColor = False
    end
    object Label2: TLabel
      Left = 72
      Top = 72
      Width = 29
      Height = 13
      Caption = 'Login:'
      Color = 16121076
      ParentColor = False
    end
    object Label3: TLabel
      Left = 72
      Top = 117
      Width = 34
      Height = 13
      Caption = 'Senha:'
      Color = 16121076
      ParentColor = False
    end
    object Label4: TLabel
      Left = 72
      Top = 160
      Width = 84
      Height = 13
      Caption = 'Redigite a senha:'
      Color = 16121076
      ParentColor = False
    end
    object Label5: TLabel
      Left = 72
      Top = 203
      Width = 78
      Height = 13
      Caption = 'N'#237'vel de acesso:'
      Color = 16121076
      ParentColor = False
    end
    object dbEditNomeUsuario: TDBEdit
      Left = 72
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object dbEditSenha: TDBEdit
      Left = 72
      Top = 133
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object editRedigiteSenha: TEdit
      Left = 72
      Top = 176
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object dbComboAcesso: TDBComboBox
      Left = 72
      Top = 222
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object dbEditLogin: TDBEdit
      Left = 72
      Top = 90
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object btnSalvar: TButton
      Left = 144
      Top = 296
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 5
    end
    object btnCancelar: TButton
      Left = 48
      Top = 296
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 6
    end
  end
end
