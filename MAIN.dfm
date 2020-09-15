object Form1: TForm1
  Left = 241
  Top = 143
  Width = 672
  Height = 540
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 56
    Width = 664
    Height = 341
    Align = alTop
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 660
      Height = 337
      ActivePage = TabSheet1
      Align = alClient
      TabIndex = 0
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Ceviri'
        object Label4: TLabel
          Left = 352
          Top = 8
          Width = 36
          Height = 13
          Caption = 'Kaynak'
        end
        object lvwMain: TListView
          Left = 0
          Top = 36
          Width = 652
          Height = 273
          Checkboxes = True
          Columns = <
            item
              Caption = 'Enabled'
            end
            item
              Caption = 'Durum'
            end
            item
              Caption = 'Orjinal metin'
              Width = 150
            end
            item
              Caption = 'Terc'#252'me metin'
              Width = 150
            end
            item
              Caption = 'Kaynak'
            end
            item
              Caption = 'Obje'
            end
            item
              Caption = 'T'#252'r'
            end>
          FlatScrollBars = True
          GridLines = True
          Items.Data = {
            A20000000200000000000000FFFFFFFFFFFFFFFF060000000000000001610459
            656E6905446F7379610446696C650766726D4D61696E086D656E7546696C6507
            43617074696F6E00000000FFFFFFFFFFFFFFFF06000000000000000162084465
            6769736D69730544FC7A656E04456469740666726D4D616E094D656E7544757A
            656E0743617074696F6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF}
          TabOrder = 0
          ViewStyle = vsReport
          OnColumnClick = lvwMainColumnClick
          OnCompare = lvwMainCompare
        end
        object ComboBox1: TComboBox
          Left = 400
          Top = 4
          Width = 145
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Text = 'ComboBox1'
        end
        object CheckBox1: TCheckBox
          Left = 4
          Top = 12
          Width = 97
          Height = 17
          Caption = 'Pasif satirlari gizle'
          TabOrder = 2
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Genel'
        ImageIndex = 1
        object Label1: TLabel
          Left = 316
          Top = 20
          Width = 379
          Height = 13
          Caption = 
            'ceviren program versiyon hangi dilden hangi dile, hangi tarihte,' +
            ' kac kezfalan filan'
        end
        object ValueListEditor1: TValueListEditor
          Left = 8
          Top = 4
          Width = 306
          Height = 300
          TabOrder = 0
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Istatistik'
        ImageIndex = 2
        object Label2: TLabel
          Left = 232
          Top = 20
          Width = 183
          Height = 13
          Caption = 'kac unite % kac cevirildi kac mesaj var'
        end
        object BitBtn3: TBitBtn
          Left = 12
          Top = 8
          Width = 209
          Height = 25
          Caption = 'Istatistikleri guncelle'
          TabOrder = 0
          OnClick = BitBtn3Click
        end
        object vleIstatistik: TValueListEditor
          Left = 8
          Top = 40
          Width = 457
          Height = 264
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect, goThumbTracking]
          TabOrder = 1
          TitleCaptions.Strings = (
            'Islem'
            'Degeri')
          ColWidths = (
            299
            152)
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Yardim'
        ImageIndex = 3
        object Label3: TLabel
          Left = 44
          Top = 16
          Width = 72
          Height = 13
          Caption = '3 Adimda ceviri'
        end
      end
    end
  end
  object ScrollBox2: TScrollBox
    Left = 0
    Top = 454
    Width = 664
    Height = 40
    Align = alBottom
    TabOrder = 1
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 664
    Height = 56
    AutoSize = True
    Bands = <
      item
        Control = PageScroller1
        ImageIndex = -1
        Width = 660
      end
      item
        Control = PageScroller2
        ImageIndex = -1
        Width = 660
      end>
    object PageScroller1: TPageScroller
      Left = 9
      Top = 0
      Width = 647
      Height = 25
      AutoScroll = False
      Control = ToolBar1
      TabOrder = 0
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 647
        Height = 25
        Caption = 'ToolBar1'
        EdgeInner = esNone
        EdgeOuter = esNone
        TabOrder = 0
        object ToolButton1: TToolButton
          Left = 0
          Top = 2
          Caption = 'ToolButton1'
          ImageIndex = 0
        end
      end
    end
    object PageScroller2: TPageScroller
      Left = 9
      Top = 27
      Width = 647
      Height = 25
      AutoScroll = False
      Control = ToolBar2
      TabOrder = 1
      object ToolBar2: TToolBar
        Left = 0
        Top = 0
        Width = 647
        Height = 25
        Caption = 'ToolBar2'
        EdgeInner = esNone
        EdgeOuter = esNone
        TabOrder = 0
      end
    end
  end
  object Button1: TButton
    Left = 172
    Top = 424
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 252
    Top = 424
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 332
    Top = 424
    Width = 75
    Height = 25
    Caption = 'xmlkaydet'
    TabOrder = 5
  end
  object ActionManager1: TActionManager
    ActionBars.SessionCount = 21
    ActionBars = <>
    LinkedActionLists = <>
    Left = 504
    Top = 464
    object dosyaYeni: TAction
      Caption = 'Yeni Proje'
    end
    object dosyaAc: TAction
      Caption = 'Projeyi A'#231
      OnExecute = dosyaAcExecute
    end
    object dosyaKaydet: TAction
      Caption = 'Projeyi Kaydet'
      OnExecute = dosyaKaydetExecute
    end
    object projeFiltre: TAction
      Category = 'proje'
      Caption = 'Filtre'
    end
    object projeKaynakYenile: TAction
      Category = 'proje'
      Caption = 'Kaynagi yenile'
      OnExecute = projeKaynakYenileExecute
    end
    object projeUzantilar: TAction
      Category = 'proje'
      Caption = 'Alinacak uzantilar'
      OnExecute = projeUzantilarExecute
    end
    object dosyaKapat: TAction
      Caption = 'Projeyi Kapat'
    end
    object dosyaIcerikAl: TAction
      Caption = 'Icerik al...'
    end
    object dosyaCikis: TAction
      Caption = 'Cikis'
    end
  end
  object MainMenu1: TMainMenu
    Left = 472
    Top = 464
    object Dosya1: TMenuItem
      Caption = 'Dosya'
      object YeniProje1: TMenuItem
        Action = dosyaYeni
      end
      object dosyaAc1: TMenuItem
        Action = dosyaAc
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object dosyaKaydet1: TMenuItem
        Action = dosyaKaydet
      end
      object Kapat1: TMenuItem
        Action = dosyaKapat
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object N3: TMenuItem
        Action = dosyaIcerikAl
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Cikis1: TMenuItem
        Action = dosyaCikis
      end
    end
    object Proje1: TMenuItem
      Caption = 'Proje'
      object Filtre1: TMenuItem
        Action = projeFiltre
      end
      object Kaynayenile1: TMenuItem
        Action = projeKaynakYenile
      end
      object Alinacakuzantilar1: TMenuItem
        Action = projeUzantilar
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 348
    Top = 460
  end
  object SaveDialog1: TSaveDialog
    Left = 380
    Top = 460
  end
end
