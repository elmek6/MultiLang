object Form1: TForm1
  Left = 196
  Top = 107
  Width = 512
  Height = 337
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 20
    Top = 16
    Width = 201
    Height = 165
    Caption = 'GroupBox1'
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 28
      Width = 32
      Height = 13
      Caption = 'Label1'
    end
    object SpeedButton1: TSpeedButton
      Left = 12
      Top = 132
      Width = 23
      Height = 22
    end
    object Button1: TButton
      Left = 12
      Top = 76
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 64
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
    end
    object BitBtn1: TBitBtn
      Left = 12
      Top = 104
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 2
    end
  end
  object Button2: TButton
    Left = 420
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Cevir'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 420
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Orijinal'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 420
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Memo1: TMemo
    Left = 20
    Top = 192
    Width = 201
    Height = 89
    TabOrder = 4
  end
  object MainMenu1: TMainMenu
    Left = 272
    Top = 20
    object Dosya1: TMenuItem
      Caption = 'Dosya'
      object Yeni2: TMenuItem
        Action = Action1
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 304
    Top = 20
    object Yeni1: TMenuItem
      Action = Action2
    end
  end
  object ActionManager1: TActionManager
    ActionBars.SessionCount = 4
    ActionBars = <>
    LinkedActionLists = <>
    Left = 240
    Top = 20
    object Action1: TAction
      Caption = 'Yeni'
    end
    object Action2: TAction
      Caption = 'YanMenu'
    end
  end
end
