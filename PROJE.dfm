object frmUzantilar: TfrmUzantilar
  Left = 369
  Top = 288
  Width = 211
  Height = 245
  Caption = 'frmUzantilar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 16
    Width = 185
    Height = 149
    Lines.Strings = (
      'Caption'
      'Text'
      'Hint')
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 36
    Top = 180
    Width = 75
    Height = 25
    Caption = 'Tamam'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 120
    Top = 180
    Width = 75
    Height = 25
    Caption = 'Iptal'
    TabOrder = 2
  end
end
