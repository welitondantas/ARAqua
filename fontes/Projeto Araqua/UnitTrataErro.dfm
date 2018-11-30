object FmSistema_Trata_Erros: TFmSistema_Trata_Erros
  Left = 251
  Top = 156
  Caption = 'M'#243'dulo Trata Erros'
  ClientHeight = 81
  ClientWidth = 149
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 64
    Top = 16
  end
end
