inherited GERALCONTASF: TGERALCONTASF
  ClientHeight = 805
  Visible = False
  OnClose = FormClose
  OnShow = FormShow
  ExplicitHeight = 805
  PixelsPerInch = 96
  TextHeight = 13
  object NxNotebook61: TNxNotebook6
    Left = 28
    Top = 8
    Width = 1221
    Height = 727
    TabOrder = 0
    ActivePage = ContasReceber
    DesignButtons = False
    object ContasReceber: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1221
      Height = 692
      Align = alClient
      TabOrder = 0
      object Panel8: TPanel
        Left = 43
        Top = 72
        Width = 507
        Height = 409
        TabOrder = 0
        object Label137: TLabel
          Left = 24
          Top = 157
          Width = 29
          Height = 13
          Caption = 'Conta'
          Color = 16776176
          ParentColor = False
          Visible = False
        end
        object Label138: TLabel
          Left = 24
          Top = 68
          Width = 33
          Height = 13
          Caption = 'Cliente'
          Color = 16776176
          ParentColor = False
        end
        object Label144: TLabel
          Left = 24
          Top = 113
          Width = 41
          Height = 13
          Caption = 'Hist'#243'rico'
          Color = 16776176
          FocusControl = DBEdit57
          ParentColor = False
        end
        object Label145: TLabel
          Left = 141
          Top = 25
          Width = 38
          Height = 13
          Caption = 'Emiss'#227'o'
          Color = 16776176
          ParentColor = False
        end
        object Label146: TLabel
          Left = 24
          Top = 247
          Width = 55
          Height = 13
          Caption = 'Vencimento'
          Color = 16776176
          ParentColor = False
        end
        object Label147: TLabel
          Left = 342
          Top = 291
          Width = 24
          Height = 13
          Caption = 'Valor'
          Color = 16776176
          FocusControl = DBEdit60
          ParentColor = False
        end
        object Label148: TLabel
          Left = 185
          Top = 344
          Width = 62
          Height = 13
          Caption = 'Recebimento'
          Color = 16776176
          ParentColor = False
        end
        object Label149: TLabel
          Left = 342
          Top = 345
          Width = 71
          Height = 13
          Caption = 'Valor Recebido'
          Color = 16776176
          FocusControl = DBEdit62
          ParentColor = False
        end
        object Label150: TLabel
          Left = 183
          Top = 292
          Width = 48
          Height = 13
          Caption = 'Acr'#233'scimo'
          Color = 16776176
          FocusControl = DBEdit63
          ParentColor = False
          Visible = False
        end
        object Label151: TLabel
          Left = 24
          Top = 292
          Width = 45
          Height = 13
          Caption = 'Desconto'
          Color = 16776176
          FocusControl = DBEdit64
          ParentColor = False
          Visible = False
        end
        object Label155: TLabel
          Left = 24
          Top = 200
          Width = 36
          Height = 13
          Caption = 'Esp'#233'cie'
          Color = 16776176
          FocusControl = DBEdit68
          ParentColor = False
          Visible = False
        end
        object Label190: TLabel
          Left = 24
          Top = 24
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          Color = 16776176
          FocusControl = DBEdit103
          ParentColor = False
        end
        object Label192: TLabel
          Left = 279
          Top = 157
          Width = 28
          Height = 13
          Caption = 'Custo'
          Color = 16776176
          ParentColor = False
          Visible = False
        end
        object Label193: TLabel
          Left = 183
          Top = 248
          Width = 45
          Height = 13
          Caption = 'No Banco'
          Color = 16776176
          FocusControl = DBEdit107
          ParentColor = False
          Visible = False
        end
        object DBText1: TDBText
          Left = 111
          Top = 87
          Width = 266
          Height = 17
          Color = 16776176
          DataField = 'Descri'#231#227'odoCliente'
          DataSource = DataFinanceiro.Source_Receber
          ParentColor = False
        end
        object DBText2: TDBText
          Left = 108
          Top = 176
          Width = 162
          Height = 17
          Color = 16776176
          ParentColor = False
          Visible = False
        end
        object DBText3: TDBText
          Left = 347
          Top = 176
          Width = 206
          Height = 17
          Color = 16776176
          ParentColor = False
          Visible = False
        end
        object DBEdit50: TDBEdit
          Left = 103
          Top = 43
          Width = 30
          Height = 19
          Ctl3D = False
          DataField = 'ORDEM'
          DataSource = DataFinanceiro.Source_Receber
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit57: TDBEdit
          Left = 24
          Top = 129
          Width = 229
          Height = 19
          Ctl3D = False
          DataField = 'HISTORICO'
          DataSource = DataFinanceiro.Source_Receber
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit60: TDBEdit
          Left = 342
          Top = 307
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'VALOR'
          DataSource = DataFinanceiro.Source_Receber
          ParentCtl3D = False
          TabOrder = 12
        end
        object DBEdit62: TDBEdit
          Left = 341
          Top = 361
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'VALOR_RECEBIDO'
          DataSource = DataFinanceiro.Source_Receber
          ParentCtl3D = False
          TabOrder = 14
          OnKeyDown = DBEdit62KeyDown
        end
        object DBEdit63: TDBEdit
          Left = 183
          Top = 309
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'ACRESCIMO'
          DataSource = DataFinanceiro.Source_Receber
          ParentCtl3D = False
          TabOrder = 11
          Visible = False
        end
        object DBEdit64: TDBEdit
          Left = 25
          Top = 309
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'DESCONTO'
          DataSource = DataFinanceiro.Source_Receber
          ParentCtl3D = False
          TabOrder = 10
          Visible = False
        end
        object DBEdit68: TDBEdit
          Left = 24
          Top = 223
          Width = 294
          Height = 19
          Ctl3D = False
          DataField = 'ESPECIE'
          DataSource = DataFinanceiro.Source_Receber
          ParentCtl3D = False
          TabOrder = 7
          Visible = False
        end
        object DBEdit103: TDBEdit
          Left = 24
          Top = 43
          Width = 73
          Height = 19
          Ctl3D = False
          DataField = 'NUMERO'
          DataSource = DataFinanceiro.Source_Receber
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit107: TDBEdit
          Left = 181
          Top = 262
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'BANCO'
          DataSource = DataFinanceiro.Source_Receber
          ParentCtl3D = False
          TabOrder = 9
          Visible = False
        end
        object DBDateEdit1: TDBDateEdit
          Left = 22
          Top = 264
          Width = 134
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          DataField = 'VENCIMENTO'
          DataSource = DataFinanceiro.Source_Receber
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 8
        end
        object RxDBComboEdit1: TRxDBComboEdit
          Left = 25
          Top = 84
          Width = 80
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          Ctl3D = False
          DataField = 'CODIGO'
          DataSource = DataFinanceiro.Source_Receber
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          ParentCtl3D = False
          TabOrder = 3
          OnButtonClick = RxDBComboEdit1ButtonClick
          OnKeyDown = RxDBComboEdit1KeyDown
        end
        object DBDateEdit2: TDBDateEdit
          Left = 183
          Top = 360
          Width = 133
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          DataField = 'RECEBIMENTO'
          DataSource = DataFinanceiro.Source_Receber
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 13
        end
        object DBDateEdit3: TDBDateEdit
          Left = 141
          Top = 43
          Width = 116
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          DataField = 'EMISSAO'
          DataSource = DataFinanceiro.Source_Receber
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 2
        end
        object RxDBComboEdit2: TRxDBComboEdit
          Left = 24
          Top = 172
          Width = 80
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          Ctl3D = False
          DataField = 'CONTA'
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          ParentCtl3D = False
          TabOrder = 5
          Visible = False
        end
        object RxDBComboEdit3: TRxDBComboEdit
          Left = 279
          Top = 172
          Width = 62
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DataField = 'CUSTO'
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          TabOrder = 6
          Visible = False
        end
        object Panel47: TPanel
          Left = 1
          Top = 396
          Width = 505
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 15
        end
        object Panel46: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 383
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 16
        end
        object Panel48: TPanel
          Left = 494
          Top = 13
          Width = 12
          Height = 383
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 17
        end
        object Panel45: TPanel
          Left = 1
          Top = 1
          Width = 505
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 18
        end
      end
      object Panel56: TPanel
        Left = 0
        Top = 637
        Width = 1221
        Height = 55
        Align = alBottom
        TabOrder = 1
        object Button24: TButton
          Left = 19
          Top = 5
          Width = 75
          Height = 33
          Caption = '&Confirma'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button24Click
        end
        object Button25: TButton
          Left = 100
          Top = 5
          Width = 75
          Height = 33
          Caption = 'C&ancela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Button25Click
        end
        object Panel21: TPanel
          Left = 1
          Top = 1
          Width = 12
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel22: TPanel
          Left = 1
          Top = 42
          Width = 1219
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel23: TPanel
          Left = 1208
          Top = 1
          Width = 12
          Height = 41
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
      end
    end
    object ContasPagar: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1221
      Height = 0
      TabOrder = 1
      Visible = False
      Index = 1
      object Panel2: TPanel
        Left = 0
        Top = -55
        Width = 1221
        Height = 55
        Align = alBottom
        TabOrder = 1
        object Button1: TButton
          Left = 20
          Top = 5
          Width = 75
          Height = 33
          Caption = '&Confirma'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 101
          Top = 5
          Width = 75
          Height = 33
          Caption = 'C&ancela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Button2Click
        end
        object Panel24: TPanel
          Left = 1
          Top = 1
          Width = 12
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel25: TPanel
          Left = 1
          Top = 42
          Width = 1219
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel26: TPanel
          Left = 1208
          Top = 1
          Width = 12
          Height = 41
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
      end
      object Panel4: TPanel
        Left = 44
        Top = 29
        Width = 500
        Height = 414
        TabOrder = 0
        object Label161: TLabel
          Left = 182
          Top = 343
          Width = 54
          Height = 13
          Caption = 'Pagamento'
          Color = 16776176
          ParentColor = False
        end
        object Label162: TLabel
          Left = 340
          Top = 344
          Width = 51
          Height = 13
          Caption = 'Valor Pago'
          Color = 16776176
          FocusControl = DBEdit38
          ParentColor = False
        end
        object DBText9: TDBText
          Left = 107
          Top = 87
          Width = 266
          Height = 17
          Color = 16776176
          DataField = 'Fornecedor'
          DataSource = DataFinanceiro.UniDataSource6
          ParentColor = False
        end
        object DBText10: TDBText
          Left = 106
          Top = 175
          Width = 162
          Height = 17
          Color = 16776176
          DataSource = DataFinanceiro.UniDataSource6
          ParentColor = False
          Visible = False
        end
        object DBText11: TDBText
          Left = 345
          Top = 176
          Width = 206
          Height = 17
          Color = 16776176
          DataSource = DataFinanceiro.UniDataSource6
          ParentColor = False
          Visible = False
        end
        object Label156: TLabel
          Left = 22
          Top = 22
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          Color = 16776176
          ParentColor = False
        end
        object Label157: TLabel
          Left = 139
          Top = 24
          Width = 38
          Height = 13
          Caption = 'Emiss'#227'o'
          Color = 16776176
          ParentColor = False
        end
        object Label158: TLabel
          Left = 22
          Top = 67
          Width = 55
          Height = 13
          Caption = 'Fornecedor'
          Color = 16776176
          ParentColor = False
        end
        object Label159: TLabel
          Left = 22
          Top = 112
          Width = 41
          Height = 13
          Caption = 'Hist'#243'rico'
          Color = 16776176
          ParentColor = False
        end
        object Label160: TLabel
          Left = 22
          Top = 156
          Width = 29
          Height = 13
          Caption = 'Conta'
          Color = 16776176
          ParentColor = False
          Visible = False
        end
        object Label163: TLabel
          Left = 277
          Top = 156
          Width = 28
          Height = 13
          Caption = 'Custo'
          Color = 16776176
          ParentColor = False
          Visible = False
        end
        object Label164: TLabel
          Left = 22
          Top = 199
          Width = 36
          Height = 13
          Caption = 'Esp'#233'cie'
          Color = 16776176
          ParentColor = False
          Visible = False
        end
        object Label165: TLabel
          Left = 22
          Top = 242
          Width = 55
          Height = 13
          Caption = 'Vencimento'
          Color = 16776176
          ParentColor = False
        end
        object Label166: TLabel
          Left = 181
          Top = 242
          Width = 45
          Height = 13
          Caption = 'No Banco'
          Color = 16776176
          ParentColor = False
          Visible = False
        end
        object Label167: TLabel
          Left = 22
          Top = 291
          Width = 45
          Height = 13
          Caption = 'Desconto'
          Color = 16776176
          ParentColor = False
          Visible = False
        end
        object Label168: TLabel
          Left = 181
          Top = 291
          Width = 48
          Height = 13
          Caption = 'Acr'#233'scimo'
          Color = 16776176
          ParentColor = False
          Visible = False
        end
        object Label169: TLabel
          Left = 337
          Top = 290
          Width = 24
          Height = 13
          Caption = 'Valor'
          Color = 16776176
          ParentColor = False
        end
        object DBEdit17: TDBEdit
          Left = 101
          Top = 40
          Width = 30
          Height = 19
          Ctl3D = False
          DataField = 'ORDEM'
          DataSource = DataFinanceiro.UniDataSource6
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit18: TDBEdit
          Left = 22
          Top = 128
          Width = 229
          Height = 19
          Ctl3D = False
          DataField = 'HISTORICO'
          DataSource = DataFinanceiro.UniDataSource6
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit35: TDBEdit
          Left = 340
          Top = 306
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'VALOR'
          DataSource = DataFinanceiro.UniDataSource6
          ParentCtl3D = False
          TabOrder = 12
        end
        object DBEdit38: TDBEdit
          Left = 340
          Top = 360
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'VALOR_PAGO'
          DataSource = DataFinanceiro.UniDataSource6
          ParentCtl3D = False
          TabOrder = 14
          OnKeyDown = DBEdit38KeyDown
        end
        object DBEdit39: TDBEdit
          Left = 181
          Top = 307
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'ACRESCIMO'
          DataSource = DataFinanceiro.UniDataSource6
          ParentCtl3D = False
          TabOrder = 11
          Visible = False
        end
        object DBEdit69: TDBEdit
          Left = 22
          Top = 307
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'DESCONTO'
          DataSource = DataFinanceiro.UniDataSource6
          ParentCtl3D = False
          TabOrder = 10
          Visible = False
        end
        object DBEdit70: TDBEdit
          Left = 22
          Top = 214
          Width = 293
          Height = 19
          Ctl3D = False
          DataField = 'ESPECIE'
          DataSource = DataFinanceiro.UniDataSource6
          ParentCtl3D = False
          TabOrder = 7
          Visible = False
        end
        object DBEdit71: TDBEdit
          Left = 22
          Top = 40
          Width = 73
          Height = 19
          Ctl3D = False
          DataField = 'NUMERO'
          DataSource = DataFinanceiro.UniDataSource6
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit72: TDBEdit
          Left = 181
          Top = 257
          Width = 134
          Height = 19
          Ctl3D = False
          DataSource = DataFinanceiro.UniDataSource6
          ParentCtl3D = False
          TabOrder = 9
          Visible = False
        end
        object DBDateEdit10: TDBDateEdit
          Left = 22
          Top = 257
          Width = 138
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          DataField = 'VENCIMENTO'
          DataSource = DataFinanceiro.UniDataSource6
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 8
        end
        object RxDBComboEdit9: TRxDBComboEdit
          Left = 22
          Top = 83
          Width = 80
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          Ctl3D = False
          DataField = 'CODIGO'
          DataSource = DataFinanceiro.UniDataSource6
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBDateEdit11: TDBDateEdit
          Left = 181
          Top = 359
          Width = 133
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          DataField = 'PAGAMENTO'
          DataSource = DataFinanceiro.UniDataSource6
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 13
        end
        object DBDateEdit12: TDBDateEdit
          Left = 137
          Top = 40
          Width = 116
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          DataField = 'EMISSAO'
          DataSource = DataFinanceiro.UniDataSource6
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 2
        end
        object RxDBComboEdit10: TRxDBComboEdit
          Left = 22
          Top = 170
          Width = 80
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          Ctl3D = False
          DataField = 'CONTA'
          DataSource = DataFinanceiro.UniDataSource6
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          ParentCtl3D = False
          TabOrder = 5
          Visible = False
        end
        object RxDBComboEdit11: TRxDBComboEdit
          Left = 277
          Top = 171
          Width = 62
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          Ctl3D = False
          DataField = 'CUSTO'
          DataSource = DataFinanceiro.UniDataSource6
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          ParentCtl3D = False
          TabOrder = 6
          Visible = False
        end
        object Panel9: TPanel
          Left = 1
          Top = 401
          Width = 498
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 15
        end
        object Panel10: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 388
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 16
        end
        object Panel11: TPanel
          Left = 487
          Top = 13
          Width = 12
          Height = 388
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 17
        end
        object Panel13: TPanel
          Left = 1
          Top = 1
          Width = 498
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 18
        end
      end
    end
    object Caderneta: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1221
      Height = 0
      TabOrder = 2
      Visible = False
      Index = 2
      object Panel3: TPanel
        Left = 0
        Top = -55
        Width = 1221
        Height = 55
        Align = alBottom
        TabOrder = 1
        object Button3: TButton
          Left = 20
          Top = 5
          Width = 75
          Height = 33
          Caption = '&Confirma'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Button4: TButton
          Left = 101
          Top = 5
          Width = 75
          Height = 33
          Caption = 'C&ancela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object Panel27: TPanel
          Left = 1
          Top = 1
          Width = 12
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel28: TPanel
          Left = 1
          Top = 42
          Width = 1219
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel29: TPanel
          Left = 1208
          Top = 1
          Width = 12
          Height = 41
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
      end
      object Panel5: TPanel
        Left = 93
        Top = 85
        Width = 494
        Height = 241
        TabOrder = 0
        object Label25: TLabel
          Left = 180
          Top = 170
          Width = 54
          Height = 13
          Caption = 'Pagamento'
          Color = 16776176
          ParentColor = False
          Visible = False
        end
        object Label28: TLabel
          Left = 338
          Top = 171
          Width = 51
          Height = 13
          Caption = 'Valor Pago'
          Color = 16776176
          FocusControl = DBEdit83
          ParentColor = False
          Visible = False
        end
        object DBText12: TDBText
          Left = 114
          Top = 90
          Width = 266
          Height = 17
          Color = 16776176
          DataField = 'DESCRICAO'
          DataSource = DataFinanceiro.Sou_caderneta
          ParentColor = False
        end
        object Label209: TLabel
          Left = 20
          Top = 25
          Width = 85
          Height = 13
          Caption = 'N'#250'mero da Venda'
          Color = 16776176
          ParentColor = False
        end
        object Label210: TLabel
          Left = 146
          Top = 27
          Width = 38
          Height = 13
          Caption = 'Emiss'#227'o'
          Color = 16776176
          ParentColor = False
        end
        object Label211: TLabel
          Left = 20
          Top = 70
          Width = 38
          Height = 13
          Caption = 'Produto'
          Color = 16776176
          ParentColor = False
        end
        object Label216: TLabel
          Left = 20
          Top = 172
          Width = 55
          Height = 13
          Caption = 'Vencimento'
          Color = 16776176
          ParentColor = False
        end
        object Label218: TLabel
          Left = 20
          Top = 115
          Width = 56
          Height = 13
          Caption = 'Quantidade'
          Color = 16776176
          ParentColor = False
        end
        object Label219: TLabel
          Left = 179
          Top = 118
          Width = 64
          Height = 13
          Caption = 'Valor Unit'#225'rio'
          Color = 16776176
          ParentColor = False
        end
        object Label220: TLabel
          Left = 335
          Top = 117
          Width = 51
          Height = 13
          Caption = 'Valor Total'
          Color = 16776176
          ParentColor = False
        end
        object DBEdit82: TDBEdit
          Left = 338
          Top = 135
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'TOTAL'
          DataSource = DataFinanceiro.Sou_caderneta
          Enabled = False
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBEdit83: TDBEdit
          Left = 338
          Top = 187
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'RECEBIDO'
          DataSource = DataFinanceiro.Sou_caderneta
          ParentCtl3D = False
          TabOrder = 8
          Visible = False
        end
        object DBEdit84: TDBEdit
          Left = 179
          Top = 134
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'PRECO'
          DataSource = DataFinanceiro.Sou_caderneta
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit85: TDBEdit
          Left = 20
          Top = 134
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'QTD'
          DataSource = DataFinanceiro.Sou_caderneta
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit87: TDBEdit
          Left = 20
          Top = 43
          Width = 73
          Height = 19
          Ctl3D = False
          DataField = 'CUPOM'
          DataSource = DataFinanceiro.Sou_caderneta
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBDateEdit13: TDBDateEdit
          Left = 20
          Top = 187
          Width = 138
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          DataField = 'VENCIMENTO'
          DataSource = DataFinanceiro.Sou_caderneta
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 6
        end
        object RxDBComboEdit12: TRxDBComboEdit
          Left = 20
          Top = 86
          Width = 80
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          Ctl3D = False
          DataField = 'CODIGO'
          DataSource = DataFinanceiro.Sou_caderneta
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBDateEdit14: TDBDateEdit
          Left = 179
          Top = 186
          Width = 133
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          DataField = 'PAGAMENTO'
          DataSource = DataFinanceiro.Sou_caderneta
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 7
          Visible = False
        end
        object DBDateEdit15: TDBDateEdit
          Left = 144
          Top = 43
          Width = 116
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          DataField = 'DATA'
          DataSource = DataFinanceiro.Sou_caderneta
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 1
        end
        object Panel14: TPanel
          Left = 1
          Top = 228
          Width = 492
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 9
        end
        object Panel15: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 215
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 10
        end
        object Panel16: TPanel
          Left = 481
          Top = 13
          Width = 12
          Height = 215
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 11
        end
        object Panel20: TPanel
          Left = 1
          Top = 1
          Width = 492
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 12
        end
      end
    end
    object RecebimentoCaixa: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1221
      Height = 0
      TabOrder = 3
      Visible = False
      Index = 3
      object Panel12: TPanel
        Left = 141
        Top = 270
        Width = 606
        Height = 211
        TabOrder = 0
        object Label36: TLabel
          Left = 33
          Top = 22
          Width = 160
          Height = 38
          Caption = 'Valor Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -27
          Font.Name = 'Arial Black'
          Font.Style = []
          ParentFont = False
        end
        object Panel17: TPanel
          Left = 1
          Top = 141
          Width = 604
          Height = 57
          Align = alBottom
          TabOrder = 0
          object Button6: TButton
            Left = 19
            Top = 19
            Width = 75
            Height = 33
            Caption = '&Confirma'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = Button6Click
          end
          object Button7: TButton
            Left = 100
            Top = 19
            Width = 75
            Height = 33
            Caption = 'C&ancela'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = Button7Click
          end
          object Panel30: TPanel
            Left = 1
            Top = 13
            Width = 12
            Height = 43
            Align = alLeft
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 2
          end
          object Panel31: TPanel
            Left = 1
            Top = 1
            Width = 602
            Height = 12
            Align = alTop
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 3
          end
          object Panel32: TPanel
            Left = 591
            Top = 13
            Width = 12
            Height = 43
            Align = alRight
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 4
          end
        end
        object CurrencyEdit2: TCurrencyEdit
          Left = 28
          Top = 64
          Width = 177
          Height = 34
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = clInfoBk
          Ctl3D = True
          DisplayFormat = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnKeyPress = CurrencyEdit2KeyPress
        end
        object Panel18: TPanel
          Left = 223
          Top = 16
          Width = 362
          Height = 121
          TabOrder = 2
          object Label37: TLabel
            Left = 46
            Top = 6
            Width = 265
            Height = 46
            Caption = 'Total da Conta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -33
            Font.Name = 'Arial Black'
            Font.Style = []
            ParentFont = False
          end
          object Panel19: TPanel
            Left = 36
            Top = 55
            Width = 290
            Height = 52
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel33: TPanel
          Left = 1
          Top = 198
          Width = 604
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel34: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 128
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
        object Panel35: TPanel
          Left = 593
          Top = 13
          Width = 12
          Height = 128
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 5
        end
        object Panel36: TPanel
          Left = 1
          Top = 1
          Width = 604
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 6
        end
      end
    end
    object CartoesItens: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1221
      Height = 0
      TabOrder = 4
      Visible = False
      Index = 4
      object Panel6: TPanel
        Left = 72
        Top = 188
        Width = 514
        Height = 274
        TabOrder = 0
        object Label212: TLabel
          Left = 24
          Top = 21
          Width = 11
          Height = 13
          Caption = 'ID'
          FocusControl = DBEdit80
        end
        object Label213: TLabel
          Left = 24
          Top = 65
          Width = 33
          Height = 13
          Caption = 'Cart'#227'o'
        end
        object Label214: TLabel
          Left = 24
          Top = 163
          Width = 38
          Height = 13
          Caption = 'Emiss'#227'o'
        end
        object Label215: TLabel
          Left = 189
          Top = 163
          Width = 55
          Height = 13
          Caption = 'Vencimento'
        end
        object Label217: TLabel
          Left = 24
          Top = 217
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object Label221: TLabel
          Left = 352
          Top = 215
          Width = 71
          Height = 13
          Caption = 'Valor Recebido'
          FocusControl = DBEdit95
        end
        object Label222: TLabel
          Left = 24
          Top = 113
          Width = 41
          Height = 13
          Caption = 'Hist'#243'rico'
          FocusControl = DBEdit100
        end
        object Label223: TLabel
          Left = 189
          Top = 214
          Width = 93
          Height = 13
          Caption = 'Valor com desconto'
          FocusControl = DBEdit104
        end
        object Label224: TLabel
          Left = 111
          Top = 19
          Width = 35
          Height = 13
          Caption = 'Parcela'
          FocusControl = DBEdit80
        end
        object Label225: TLabel
          Left = 165
          Top = 19
          Width = 54
          Height = 13
          Caption = 'Documento'
          FocusControl = DBEdit80
        end
        object Label226: TLabel
          Left = 352
          Top = 162
          Width = 23
          Height = 13
          Caption = 'Hora'
          FocusControl = DBEdit80
        end
        object DBEdit80: TDBEdit
          Left = 24
          Top = 35
          Width = 75
          Height = 19
          Ctl3D = False
          DataField = 'ID'
          DataSource = DataFinanceiro.Source_CARTOESITENS
          Enabled = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit95: TDBEdit
          Left = 352
          Top = 230
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'VALOR_RECEBIDO'
          DataSource = DataFinanceiro.Source_CARTOESITENS
          ParentCtl3D = False
          TabOrder = 10
        end
        object DBEdit100: TDBEdit
          Left = 24
          Top = 129
          Width = 397
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'HISTORICO'
          DataSource = DataFinanceiro.Source_CARTOESITENS
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit104: TDBEdit
          Left = 189
          Top = 230
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'VALORDES'
          DataSource = DataFinanceiro.Source_CARTOESITENS
          ParentCtl3D = False
          TabOrder = 9
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 111
          Top = 81
          Width = 310
          Height = 19
          Ctl3D = False
          DataField = 'CARTOES'
          DataSource = DataFinanceiro.Source_CARTOESITENS
          KeyField = 'ID'
          ListField = 'DESCRICAO'
          ListSource = DataFinanceiro.Source_CARTOES
          ParentCtl3D = False
          TabOrder = 11
        end
        object DBEdit109: TDBEdit
          Left = 110
          Top = 36
          Width = 30
          Height = 19
          Ctl3D = False
          DataField = 'ORDEM'
          DataSource = DataFinanceiro.Source_CARTOESITENS
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = DBEdit109Enter
        end
        object DBDateEdit16: TDBDateEdit
          Left = 24
          Top = 179
          Width = 134
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          DataField = 'EMISSAO'
          DataSource = DataFinanceiro.Source_CARTOESITENS
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 5
          OnEnter = DBDateEdit16Enter
          OnExit = DBDateEdit16Exit
        end
        object DBDateEdit17: TDBDateEdit
          Left = 189
          Top = 180
          Width = 134
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          DataField = 'VENCIMENTO'
          DataSource = DataFinanceiro.Source_CARTOESITENS
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 6
        end
        object RxDBComboEdit13: TRxDBComboEdit
          Left = 24
          Top = 81
          Width = 80
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          Ctl3D = False
          DataField = 'CARTOES'
          DataSource = DataFinanceiro.Source_CARTOESITENS
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          ParentCtl3D = False
          TabOrder = 3
          OnButtonClick = RxDBComboEdit13ButtonClick
          OnKeyDown = RxDBComboEdit13KeyDown
        end
        object RxDBCalcEdit1: TRxDBCalcEdit
          Left = 24
          Top = 230
          Width = 134
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DataField = 'VALOR'
          DataSource = DataFinanceiro.Source_CARTOESITENS
          Ctl3D = True
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 8
          OnExit = RxDBCalcEdit1Exit
        end
        object DBEdit81: TDBEdit
          Left = 164
          Top = 36
          Width = 97
          Height = 19
          Ctl3D = False
          DataField = 'CUPOM'
          DataSource = DataFinanceiro.Source_CARTOESITENS
          ParentCtl3D = False
          TabOrder = 2
          OnEnter = DBEdit81Enter
        end
        object DBEdit86: TDBEdit
          Left = 352
          Top = 179
          Width = 62
          Height = 19
          Ctl3D = False
          DataField = 'HORA'
          DataSource = DataFinanceiro.Source_CARTOESITENS
          ParentCtl3D = False
          TabOrder = 7
        end
        object Panel40: TPanel
          Left = 1
          Top = 261
          Width = 512
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 12
        end
        object Panel41: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 248
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 13
        end
        object Panel42: TPanel
          Left = 1
          Top = 1
          Width = 512
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 14
        end
        object Panel43: TPanel
          Left = 501
          Top = 13
          Width = 12
          Height = 248
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 15
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = -55
        Width = 1221
        Height = 55
        Align = alBottom
        TabOrder = 1
        object Button5: TButton
          Left = 19
          Top = 5
          Width = 75
          Height = 33
          Caption = '&Confirma'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button5Click
        end
        object Button8: TButton
          Left = 100
          Top = 5
          Width = 75
          Height = 33
          Caption = 'C&ancela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Button8Click
        end
        object Panel37: TPanel
          Left = 1
          Top = 1
          Width = 12
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel38: TPanel
          Left = 1
          Top = 42
          Width = 1219
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel39: TPanel
          Left = 1208
          Top = 1
          Width = 12
          Height = 41
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
      end
    end
    object ItensdaVenda: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1221
      Height = 0
      TabOrder = 5
      Visible = False
      Index = 5
      object Panel1: TPanel
        Left = 44
        Top = 48
        Width = 1154
        Height = 613
        TabOrder = 0
        object Panel49: TPanel
          Left = 9
          Top = 9
          Width = 1134
          Height = 61
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Panel50: TPanel
            Left = 1
            Top = 48
            Width = 1132
            Height = 12
            Align = alBottom
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 0
          end
        end
        object cxGrid9: TcxGrid
          Left = 13
          Top = 70
          Width = 1133
          Height = 530
          DragKind = dkDock
          DragMode = dmAutomatic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView9: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DataFinanceiro.Source_ITEVENDAS_ECF2
            DataController.Options = []
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GridLines = glVertical
            OptionsView.GroupByBox = False
            Styles.ContentEven = cxstyl1
            object cxGridDBTableView9DESCRICAO: TcxGridDBColumn
              Caption = 'Descri'#231#227'o do Produto'
              DataBinding.FieldName = 'DESCRICAO'
              Width = 214
            end
            object cxGridDBTableView9ITEM: TcxGridDBColumn
              Caption = 'Item'
              DataBinding.FieldName = 'ITEM'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 32
            end
            object cxGridDBTableView9Column3: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'DATA'
            end
            object cxGridDBTableView9Column2: TcxGridDBColumn
              Caption = 'Hora'
              DataBinding.FieldName = 'HORA'
              Width = 44
            end
            object cxGridDBTableView9Column1: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              Width = 32
            end
            object cxGridDBTableView9BARRAS: TcxGridDBColumn
              Caption = 'C'#243'digo de Barras'
              DataBinding.FieldName = 'BARRAS'
              Width = 64
            end
            object cxGridDBTableView9QTD: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTD'
              Width = 73
            end
            object cxGridDBTableView9PRECO: TcxGridDBColumn
              Caption = 'Pre'#231'o'
              DataBinding.FieldName = 'PRECO'
              Width = 74
            end
            object cxGridDBTableView9TOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'TOTAL'
              Width = 70
            end
          end
          object cxGridLevel9: TcxGridLevel
            GridView = cxGridDBTableView9
          end
        end
        object Panel52: TPanel
          Left = 1
          Top = 1
          Width = 1152
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel53: TPanel
          Left = 1141
          Top = 13
          Width = 12
          Height = 587
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel54: TPanel
          Left = 1
          Top = 600
          Width = 1152
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
        object Panel51: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 587
          Align = alLeft
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
      Width = 1221
      Height = 0
      TabOrder = 6
      Visible = False
      Index = 6
      object Panel44: TPanel
        Left = 443
        Top = 428
        Width = 436
        Height = 52
        TabOrder = 0
        Visible = False
      end
    end
  end
  object cxstylrpstry1: TcxStyleRepository
    Left = 72
    Top = 760
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnFace
    end
    object cxstyl2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 10930928
      TextColor = clGradientActiveCaption
    end
  end
end
