inherited GERAL2F: TGERAL2F
  BorderStyle = bsNone
  ClientHeight = 755
  ClientWidth = 1199
  Position = poDesktopCenter
  Visible = False
  WindowState = wsNormal
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 1199
  ExplicitHeight = 755
  PixelsPerInch = 96
  TextHeight = 13
  object NxNotebook61: TNxNotebook6
    Left = 56
    Top = 8
    Width = 961
    Height = 705
    TabOrder = 0
    ActivePage = CONFIG
    ActivePageIndex = 4
    DesignButtons = False
    object Senhax: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 961
      Height = 0
      TabOrder = 0
      Visible = False
      object Panel4: TPanel
        Left = 82
        Top = 140
        Width = 324
        Height = 105
        TabOrder = 0
        object Panel10: TPanel
          Left = 24
          Top = 21
          Width = 276
          Height = 32
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Caption = 'Digite a Senha e Tecle Enter'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Black'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object Edit1: TEdit
          Left = 24
          Top = 59
          Width = 277
          Height = 26
          CharCase = ecUpperCase
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 1
          OnKeyDown = Edit1KeyDown
        end
        object Panel137: TPanel
          Left = 1
          Top = 92
          Width = 322
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel138: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 79
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel139: TPanel
          Left = 1
          Top = 1
          Width = 322
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
        object Panel140: TPanel
          Left = 311
          Top = 13
          Width = 12
          Height = 79
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 5
        end
      end
    end
    object NxNotebookSheet62: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 961
      Height = 0
      TabOrder = 1
      Visible = False
      Index = 1
      object Panel3: TPanel
        Left = 69
        Top = 88
        Width = 708
        Height = 449
        TabOrder = 0
      end
    end
    object NxNotebookSheet63: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 961
      Height = 0
      TabOrder = 2
      Visible = False
      Index = 2
      object Panel2: TPanel
        Left = 67
        Top = 79
        Width = 708
        Height = 449
        TabOrder = 0
      end
    end
    object NxNotebookSheet64: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 961
      Height = 0
      TabOrder = 3
      Visible = False
      Index = 3
      object Panel1: TPanel
        Left = 53
        Top = 72
        Width = 708
        Height = 449
        TabOrder = 0
      end
    end
    object CONFIG: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 961
      Height = 670
      Align = alClient
      TabOrder = 4
      Index = 4
      object Panel6: TPanel
        Left = 30
        Top = 15
        Width = 804
        Height = 562
        BevelOuter = bvNone
        TabOrder = 0
        object DBText2: TDBText
          Left = 117
          Top = 87
          Width = 244
          Height = 17
          Color = 16776176
          DataSource = DADOSFRENTEf.UniDataSource11
          ParentColor = False
        end
        object DBText10: TDBText
          Left = 127
          Top = 146
          Width = 244
          Height = 17
          Color = 16776176
          DataSource = DADOSFRENTEf.UniDataSource11
          ParentColor = False
        end
        object Label58: TLabel
          Left = 411
          Top = 168
          Width = 27
          Height = 13
          Caption = 'OLEO'
          FocusControl = DBEdit12
        end
        object Label59: TLabel
          Left = 284
          Top = 168
          Width = 100
          Height = 13
          Caption = 'Formul'#225'rio ou Bobina'
          FocusControl = DBEdit14
        end
        object Label60: TLabel
          Left = 501
          Top = 168
          Width = 69
          Height = 13
          Caption = 'DIVERSASPAG'
          FocusControl = DBEdit15
        end
        object Label61: TLabel
          Left = 629
          Top = 168
          Width = 63
          Height = 13
          Caption = 'VISTAPRAZO'
          FocusControl = DBEdit16
        end
        object Label62: TLabel
          Left = 41
          Top = 210
          Width = 65
          Height = 13
          Caption = 'DOISPRECOS'
        end
        object Label63: TLabel
          Left = 189
          Top = 210
          Width = 39
          Height = 13
          Caption = 'VENDA2'
          FocusControl = DBEdit18
        end
        object Label64: TLabel
          Left = 285
          Top = 210
          Width = 54
          Height = 13
          Caption = 'COMISSAO'
          FocusControl = DBEdit19
        end
        object Label65: TLabel
          Left = 405
          Top = 210
          Width = 47
          Height = 13
          Caption = 'CARTOES'
          FocusControl = DBEdit35
        end
        object Label66: TLabel
          Left = 493
          Top = 210
          Width = 37
          Height = 13
          Caption = 'CAIXAS'
          FocusControl = DBEdit36
        end
        object Label67: TLabel
          Left = 605
          Top = 210
          Width = 55
          Height = 13
          Caption = 'DESCONTO'
          FocusControl = DBEdit37
        end
        object Label68: TLabel
          Left = 401
          Top = 253
          Width = 30
          Height = 13
          Caption = 'RAMO'
          FocusControl = DBEdit38
        end
        object Label57: TLabel
          Left = 41
          Top = 317
          Width = 60
          Height = 13
          Caption = 'Impressora1'
          FocusControl = DBEdit11
        end
        object SpeedButton2: TSpeedButton
          Left = 494
          Top = 310
          Width = 23
          Height = 20
          Caption = '...'
          OnClick = SpeedButton2Click
        end
        object Label69: TLabel
          Left = 399
          Top = 75
          Width = 286
          Height = 13
          Caption = 'Pergunta se Imprime Or'#231'amento no Caixa no final da Venda'
          FocusControl = DBEdit39
        end
        object Label70: TLabel
          Left = 397
          Top = 115
          Width = 88
          Height = 13
          Caption = 'Tipo de Impress'#227'o'
          FocusControl = DBEdit41
        end
        object Label79: TLabel
          Left = 41
          Top = 341
          Width = 60
          Height = 13
          Caption = 'Impressora2'
          FocusControl = DBEdit47
        end
        object Label80: TLabel
          Left = 41
          Top = 362
          Width = 60
          Height = 13
          Caption = 'Impressora3'
          FocusControl = DBEdit48
        end
        object Label81: TLabel
          Left = 41
          Top = 386
          Width = 60
          Height = 13
          Caption = 'Impressora4'
          FocusControl = DBEdit49
        end
        object Label84: TLabel
          Left = 41
          Top = 410
          Width = 60
          Height = 13
          Caption = 'Impressora5'
          FocusControl = DBEdit50
        end
        object SpeedButton3: TSpeedButton
          Left = 494
          Top = 335
          Width = 23
          Height = 20
          Caption = '...'
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 494
          Top = 359
          Width = 23
          Height = 20
          Caption = '...'
          OnClick = SpeedButton4Click
        end
        object SpeedButton5: TSpeedButton
          Left = 494
          Top = 383
          Width = 23
          Height = 20
          Caption = '...'
          OnClick = SpeedButton5Click
        end
        object SpeedButton6: TSpeedButton
          Left = 494
          Top = 407
          Width = 23
          Height = 20
          Caption = '...'
          OnClick = SpeedButton6Click
        end
        object Label85: TLabel
          Left = 80
          Top = 169
          Width = 160
          Height = 13
          Caption = 'Acrescimo ou desconto ma venda'
          FocusControl = DBEdit53
        end
        object Label86: TLabel
          Left = 41
          Top = 254
          Width = 30
          Height = 13
          Caption = 'RAMO'
          FocusControl = DBEdit38
        end
        object Label88: TLabel
          Left = 514
          Top = 94
          Width = 104
          Height = 13
          Caption = 'Porcentagem produto'
          FocusControl = DBEdit54
        end
        object Label89: TLabel
          Left = 637
          Top = 94
          Width = 105
          Height = 13
          Caption = 'Porcentagem servi'#231'os'
          FocusControl = DBEdit55
        end
        object Label140: TLabel
          Left = 181
          Top = 78
          Width = 210
          Height = 13
          Caption = 'Pergunta a Quantidade de impress'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label92: TLabel
          Left = 232
          Top = 97
          Width = 88
          Height = 13
          Caption = 'Imprime Recibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Data: TLabel
          Left = 41
          Top = 20
          Width = 23
          Height = 13
          Caption = 'Data'
          FocusControl = DBEdit15
        end
        object Label1: TLabel
          Left = 166
          Top = 20
          Width = 31
          Height = 13
          Caption = 'CAIXA'
          FocusControl = DBEdit15
        end
        object TURNO: TLabel
          Left = 241
          Top = 20
          Width = 35
          Height = 13
          Caption = 'TURNO'
          FocusControl = DBEdit15
        end
        object Label3: TLabel
          Left = 316
          Top = 20
          Width = 24
          Height = 13
          Caption = 'TIPO'
          FocusControl = DBEdit15
        end
        object Label4: TLabel
          Left = 373
          Top = 20
          Width = 29
          Height = 13
          Caption = 'Conta'
          FocusControl = DBEdit15
        end
        object Label5: TLabel
          Left = 427
          Top = 20
          Width = 38
          Height = 13
          Caption = 'Imagem'
          FocusControl = DBEdit15
        end
        object Label6: TLabel
          Left = 41
          Top = 65
          Width = 46
          Height = 13
          Caption = 'Vendedor'
          FocusControl = DBEdit15
        end
        object Label7: TLabel
          Left = 41
          Top = 124
          Width = 46
          Height = 13
          Caption = 'Operador'
          FocusControl = DBEdit15
        end
        object Label56: TLabel
          Left = 41
          Top = 170
          Width = 14
          Height = 13
          Caption = 'OS'
          FocusControl = DBEdit10
        end
        object Label2: TLabel
          Left = 468
          Top = 135
          Width = 64
          Height = 13
          Caption = 'N'#186' de recibos'
          FocusControl = DBEdit1
        end
        object Panel7: TPanel
          Left = 0
          Top = 505
          Width = 804
          Height = 57
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object Button2: TButton
            Left = 381
            Top = 9
            Width = 75
            Height = 25
            Caption = 'Mercado'
            TabOrder = 0
          end
          object Button3: TButton
            Left = 462
            Top = 9
            Width = 75
            Height = 25
            Caption = 'Inform'#225'tica'
            TabOrder = 1
          end
          object Button4: TButton
            Left = 544
            Top = 9
            Width = 75
            Height = 25
            Caption = 'Con&veniencia'
            TabOrder = 2
          end
          object Button5: TButton
            Left = 625
            Top = 9
            Width = 75
            Height = 25
            Caption = '&Lanchonete'
            TabOrder = 3
          end
          object Button6: TButton
            Left = 706
            Top = 9
            Width = 75
            Height = 25
            Caption = '&Oficina'
            TabOrder = 4
            OnClick = Button6Click
          end
          object Panel16: TPanel
            Left = 0
            Top = 45
            Width = 804
            Height = 12
            Align = alBottom
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 5
          end
          object Panel17: TPanel
            Left = 792
            Top = 0
            Width = 12
            Height = 45
            Align = alRight
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 6
          end
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 12
            Height = 45
            Align = alLeft
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 7
          end
        end
        object DBEdit3: TDBEdit
          Left = 171
          Top = 37
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CAIXA'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 241
          Top = 37
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TURNO'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 2
        end
        object DBEdit6: TDBEdit
          Left = 316
          Top = 37
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TIPO'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 3
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 44
          Top = 37
          DataBinding.DataField = 'DATA'
          DataBinding.DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 4
          Width = 121
        end
        object RxDBComboEdit2: TRxDBComboEdit
          Left = 41
          Top = 83
          Width = 80
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          Ctl3D = False
          DataField = 'VENDEDOR'
          DataSource = DADOSFRENTEf.UniDataSource11
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          ParentCtl3D = False
          TabOrder = 5
          OnButtonClick = RxDBComboEdit2ButtonClick
          OnKeyDown = RxDBComboEdit2KeyDown
        end
        object RxDBComboEdit4: TRxDBComboEdit
          Left = 427
          Top = 37
          Width = 323
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          Ctl3D = False
          DataField = 'IMAGEM'
          DataSource = DADOSFRENTEf.UniDataSource11
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          ParentCtl3D = False
          TabOrder = 6
          OnButtonClick = RxDBComboEdit4ButtonClick
        end
        object RxDBComboEdit11: TRxDBComboEdit
          Left = 41
          Top = 142
          Width = 80
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          Ctl3D = False
          DataField = 'OPERADOR'
          DataSource = DADOSFRENTEf.UniDataSource11
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          ParentCtl3D = False
          TabOrder = 7
          OnButtonClick = RxDBComboEdit11ButtonClick
          OnKeyDown = RxDBComboEdit11KeyDown
        end
        object DBEdit2: TDBEdit
          Left = 373
          Top = 37
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONTAS'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 8
        end
        object DBEdit12: TDBEdit
          Left = 411
          Top = 184
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'OLEO'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 9
        end
        object DBEdit14: TDBEdit
          Left = 284
          Top = 184
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IMPRESSAO'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 10
        end
        object DBEdit15: TDBEdit
          Left = 501
          Top = 184
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DIVERSASPAG'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 11
        end
        object DBEdit16: TDBEdit
          Left = 629
          Top = 184
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VISTAPRAZO'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 12
        end
        object DBEdit18: TDBEdit
          Left = 189
          Top = 226
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VENDA2'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 13
        end
        object DBEdit19: TDBEdit
          Left = 285
          Top = 224
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMISSAO'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 14
        end
        object DBEdit35: TDBEdit
          Left = 405
          Top = 224
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CARTOES'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 15
        end
        object DBEdit36: TDBEdit
          Left = 493
          Top = 224
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CAIXAS'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 16
        end
        object DBEdit37: TDBEdit
          Left = 605
          Top = 224
          Width = 134
          Height = 21
          DataField = 'DESCONTO'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 17
        end
        object DBEdit38: TDBEdit
          Left = 400
          Top = 269
          Width = 342
          Height = 21
          DataField = 'RAMO'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 18
        end
        object DBEdit11: TDBEdit
          Left = 117
          Top = 312
          Width = 371
          Height = 21
          DataField = 'IMPRESSORA1'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 19
        end
        object ListBox1: TListBox
          Left = 554
          Top = 310
          Width = 189
          Height = 113
          ItemHeight = 13
          TabOrder = 20
        end
        object DBEdit39: TDBEdit
          Left = 399
          Top = 91
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IMPRIME'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 21
        end
        object DBEdit41: TDBEdit
          Left = 397
          Top = 131
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TIPODEMPRESSAO'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 22
        end
        object DBEdit47: TDBEdit
          Left = 117
          Top = 334
          Width = 371
          Height = 21
          DataField = 'IMPRESSORA2'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 23
        end
        object DBEdit48: TDBEdit
          Left = 117
          Top = 357
          Width = 371
          Height = 21
          DataField = 'IMPRESSORA3'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 24
        end
        object DBEdit49: TDBEdit
          Left = 117
          Top = 381
          Width = 371
          Height = 21
          DataField = 'IMPRESSORA4'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 25
        end
        object DBEdit50: TDBEdit
          Left = 117
          Top = 405
          Width = 371
          Height = 21
          DataField = 'IMPRESSORA5'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 26
        end
        object DBEdit53: TDBEdit
          Left = 80
          Top = 185
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ACRESDESCON'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 27
        end
        object DBComboBox1: TDBComboBox
          Left = 338
          Top = 130
          Width = 53
          Height = 21
          DataField = 'TIPODEMPRESSAO'
          DataSource = DADOSFRENTEf.UniDataSource11
          Items.Strings = (
            'MI'
            'GB'
            'RB')
          TabOrder = 28
        end
        object DBComboBox2: TDBComboBox
          Left = 41
          Top = 269
          Width = 338
          Height = 21
          DataField = 'RAMO'
          DataSource = DADOSFRENTEf.UniDataSource11
          Items.Strings = (
            'Mercado'
            'Inform'#225'tica'
            'Conveniencia'
            'Lanchonete'
            'Oficina')
          TabOrder = 29
        end
        object DBEdit54: TDBEdit
          Left = 514
          Top = 110
          Width = 117
          Height = 21
          DataField = 'PORCPRO'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 30
        end
        object DBEdit55: TDBEdit
          Left = 637
          Top = 110
          Width = 117
          Height = 21
          DataField = 'PORCSER'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 31
        end
        object DBEdit57: TDBEdit
          Left = 181
          Top = 97
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IMPRIME'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 32
        end
        object DBEdit58: TDBEdit
          Left = 302
          Top = 110
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IMPRIME'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 33
        end
        object Button1: TButton
          Left = 554
          Top = 432
          Width = 185
          Height = 25
          Caption = 'Impressoras Instaladas'
          TabOrder = 34
          OnClick = Button1Click
        end
        object DBEdit17: TDBEdit
          Left = 41
          Top = 224
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DOISPRECOS'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 35
        end
        object DBEdit10: TDBEdit
          Left = 41
          Top = 186
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'OS'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 36
        end
        object DBEdit1: TDBEdit
          Left = 468
          Top = 151
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMREC'
          DataSource = DADOSFRENTEf.UniDataSource11
          TabOrder = 37
        end
        object Panel12: TPanel
          Left = 0
          Top = 493
          Width = 804
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 38
        end
        object Panel13: TPanel
          Left = 0
          Top = 12
          Width = 12
          Height = 481
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 39
        end
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 804
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 40
        end
        object Panel15: TPanel
          Left = 792
          Top = 12
          Width = 12
          Height = 481
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 41
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 616
        Width = 961
        Height = 54
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Button14: TButton
          Left = 18
          Top = 9
          Width = 75
          Height = 25
          Caption = '&Confirma'
          TabOrder = 0
          OnClick = Button14Click
        end
        object Button15: TButton
          Left = 99
          Top = 9
          Width = 75
          Height = 25
          Caption = 'C&ancela'
          TabOrder = 1
          OnClick = Button15Click
        end
        object Panel19: TPanel
          Left = 0
          Top = 0
          Width = 12
          Height = 42
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel20: TPanel
          Left = 949
          Top = 0
          Width = 12
          Height = 42
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel21: TPanel
          Left = 0
          Top = 42
          Width = 961
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
      end
    end
    object NxNotebookSheet66: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 961
      Height = 0
      TabOrder = 5
      Visible = False
      Index = 5
      object Panel5: TPanel
        Left = 85
        Top = 104
        Width = 708
        Height = 89
        TabOrder = 0
      end
      object Panel8: TPanel
        Left = 110
        Top = 264
        Width = 163
        Height = 32
        TabOrder = 1
      end
      object Panel11: TPanel
        Left = 301
        Top = 431
        Width = 276
        Height = 32
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Caption = 'Digite a Senha e Tecle Enter'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Imagem Jpeg|*.jpg|Imagem BitMap|*.bmp'
    InitialDir = 'C:\Users\EDUARDO\Pictures\EJOC'
    Left = 1084
    Top = 184
  end
end
