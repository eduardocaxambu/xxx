inherited TrocaPrecof: TTrocaPrecof
  Caption = 'TrocaPrecof'
  ClientHeight = 584
  ClientWidth = 953
  Visible = False
  OnShow = FormShow
  ExplicitWidth = 953
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 13
  object Panel48: TPanel
    Left = 80
    Top = 51
    Width = 761
    Height = 254
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label35: TLabel
      Left = 295
      Top = 163
      Width = 59
      Height = 30
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label30: TLabel
      Left = 222
      Top = 126
      Width = 132
      Height = 30
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 295
      Top = 202
      Width = 58
      Height = 30
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RealEdit2: TCurrencyEdit
      Left = 361
      Top = 154
      Width = 158
      Height = 35
      Margins.Left = 5
      Margins.Top = 1
      AutoSize = False
      Color = clInfoBk
      Ctl3D = True
      DecimalPlaces = 3
      DisplayFormat = '0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnExit = RealEdit2Exit
    end
    object CurrencyEdit18: TCurrencyEdit
      Left = 361
      Top = 115
      Width = 158
      Height = 35
      Margins.Left = 5
      Margins.Top = 1
      AutoSize = False
      Color = clInfoBk
      Ctl3D = True
      DecimalPlaces = 3
      DisplayFormat = '0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnExit = CurrencyEdit18Exit
    end
    object RealEdit6: TCurrencyEdit
      Left = 361
      Top = 192
      Width = 158
      Height = 35
      Margins.Left = 5
      Margins.Top = 1
      AutoSize = False
      Color = clInfoBk
      Ctl3D = True
      DisplayFormat = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnExit = RealEdit6Exit
    end
    object Panel27: TPanel
      Left = 33
      Top = 29
      Width = 700
      Height = 25
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object Panel2: TPanel
      Left = 33
      Top = 65
      Width = 700
      Height = 25
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
    end
    object Panel137: TPanel
      Left = 1
      Top = 241
      Width = 759
      Height = 12
      Align = alBottom
      BevelOuter = bvNone
      Color = 10053171
      ParentBackground = False
      TabOrder = 5
      ExplicitWidth = 608
    end
    object Panel138: TPanel
      Left = 1
      Top = 13
      Width = 12
      Height = 228
      Align = alLeft
      BevelOuter = bvNone
      Color = 10053171
      ParentBackground = False
      TabOrder = 6
    end
    object Panel139: TPanel
      Left = 1
      Top = 1
      Width = 759
      Height = 12
      Align = alTop
      BevelOuter = bvNone
      Color = 10053171
      ParentBackground = False
      TabOrder = 7
      ExplicitWidth = 608
    end
    object Panel140: TPanel
      Left = 748
      Top = 13
      Width = 12
      Height = 228
      Align = alRight
      BevelOuter = bvNone
      Color = 10053171
      ParentBackground = False
      TabOrder = 8
      ExplicitLeft = 597
    end
  end
  object Panel1: TPanel
    Left = 177
    Top = 347
    Width = 347
    Height = 134
    ParentBackground = False
    TabOrder = 1
    Visible = False
    object BitBtn1: TBitBtn
      Left = 178
      Top = 25
      Width = 146
      Height = 83
      Caption = 'a &Prazo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 24
      Top = 25
      Width = 146
      Height = 83
      Caption = 'a& Vista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 1
      Top = 121
      Width = 345
      Height = 12
      Align = alBottom
      BevelOuter = bvNone
      Color = 10053171
      ParentBackground = False
      TabOrder = 2
    end
    object Panel4: TPanel
      Left = 1
      Top = 13
      Width = 12
      Height = 108
      Align = alLeft
      BevelOuter = bvNone
      Color = 10053171
      ParentBackground = False
      TabOrder = 3
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 345
      Height = 12
      Align = alTop
      BevelOuter = bvNone
      Color = 10053171
      ParentBackground = False
      TabOrder = 4
    end
    object Panel6: TPanel
      Left = 334
      Top = 13
      Width = 12
      Height = 108
      Align = alRight
      BevelOuter = bvNone
      Color = 10053171
      ParentBackground = False
      TabOrder = 5
    end
  end
end
