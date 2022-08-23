inherited Relatoriosf: TRelatoriosf
  Caption = 'Relatoriosf'
  Visible = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NxNotebook61: TNxNotebook6
    Left = 52
    Top = 58
    Width = 1093
    Height = 655
    TabOrder = 0
    ActivePage = Produtosx
    ActivePageIndex = 2
    DesignButtons = False
    object NxNotebookSheet61: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1093
      Height = 0
      TabOrder = 0
      Visible = False
    end
    object NxNotebookSheet62: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1093
      Height = 0
      TabOrder = 1
      Visible = False
      Index = 1
    end
    object Produtosx: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1093
      Height = 620
      Align = alClient
      TabOrder = 2
      Index = 2
      object Panel1: TPanel
        Left = 64
        Top = 72
        Width = 842
        Height = 490
        TabOrder = 0
        object Label6: TLabel
          Left = 39
          Top = 242
          Width = 43
          Height = 13
          Caption = 'Produtos'
        end
        object Label10: TLabel
          Left = 39
          Top = 266
          Width = 60
          Height = 13
          Caption = 'Informa'#231#245'es'
        end
        object Button13: TButton
          Left = 28
          Top = 32
          Width = 168
          Height = 33
          Caption = 'Invent'#225'rio'
          TabOrder = 0
          OnClick = Button13Click
        end
        object RadioButton1: TRadioButton
          Left = 36
          Top = 114
          Width = 113
          Height = 17
          Caption = 'Ordem de C'#243'digo'
          TabOrder = 1
        end
        object RadioButton2: TRadioButton
          Left = 36
          Top = 140
          Width = 132
          Height = 17
          Caption = 'Ordem de Descri'#231#227'o'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
        object Button14: TButton
          Left = 30
          Top = 303
          Width = 234
          Height = 39
          Caption = 'Entradas e Sa'#237'das de um produto'
          TabOrder = 3
          Visible = False
        end
        object Button15: TButton
          Left = 30
          Top = 348
          Width = 234
          Height = 39
          Caption = 'Relat'#243'rio de Produtos sem C'#243'digo de Barras'
          TabOrder = 4
          Visible = False
        end
        object Button16: TButton
          Left = 30
          Top = 393
          Width = 234
          Height = 39
          Caption = 'Relat'#243'rio de Produtos com C'#243'digo de Barras'
          TabOrder = 5
          Visible = False
        end
        object Button17: TButton
          Left = 565
          Top = 186
          Width = 234
          Height = 39
          Caption = 'Relat'#243'rio de Produtos com C'#243'digo de Barras'
          TabOrder = 6
          Visible = False
        end
        object Button18: TButton
          Left = 30
          Top = 438
          Width = 155
          Height = 33
          Caption = 'Estoque M'#237'nimo'
          TabOrder = 7
          Visible = False
        end
        object ChecEntradasSaidas: TCheckBox
          Left = 202
          Top = 31
          Width = 130
          Height = 17
          Caption = 'Entradas e Sa'#237'das'
          TabOrder = 8
        end
        object ZeradasNegativas: TCheckBox
          Left = 202
          Top = 54
          Width = 130
          Height = 17
          Caption = 'Zeradas e Negativas'
          TabOrder = 9
        end
        object Button4: TButton
          Left = 373
          Top = 248
          Width = 121
          Height = 33
          Caption = 'Relat'#243'rio de Custos'
          TabOrder = 10
          Visible = False
          OnClick = Button4Click
        end
        object CheckBox2: TCheckBox
          Left = 528
          Top = 40
          Width = 130
          Height = 17
          Caption = 'Linha Separadora'
          TabOrder = 11
        end
        object Button5: TButton
          Left = 373
          Top = 280
          Width = 121
          Height = 33
          Caption = 'Relat'#243'rio de Balan'#231'o'
          TabOrder = 12
          Visible = False
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 373
          Top = 312
          Width = 121
          Height = 33
          Caption = 'Curva ABC'
          TabOrder = 13
          Visible = False
          OnClick = Button6Click
        end
        object Button12: TButton
          Left = 373
          Top = 344
          Width = 121
          Height = 33
          Caption = 'Entradas'
          TabOrder = 14
          Visible = False
          OnClick = Button12Click
        end
        object Button19: TButton
          Left = 373
          Top = 376
          Width = 121
          Height = 33
          Caption = 'Sa'#237'das'
          TabOrder = 15
          Visible = False
          OnClick = Button19Click
        end
        object Button20: TButton
          Left = 373
          Top = 408
          Width = 121
          Height = 33
          Caption = 'Pedidos'
          TabOrder = 16
          Visible = False
          OnClick = Button20Click
        end
        object Button21: TButton
          Left = 373
          Top = 440
          Width = 121
          Height = 33
          Caption = 'Entradas e Sa'#237'das'
          TabOrder = 17
          Visible = False
          OnClick = Button21Click
        end
        object CheckBox5: TCheckBox
          Left = 528
          Top = 60
          Width = 105
          Height = 17
          Caption = 'Filtra Cadastro'
          TabOrder = 18
        end
        object Button23: TButton
          Left = 601
          Top = 408
          Width = 177
          Height = 33
          Caption = 'Entradas ,Sa'#237'das e Pedidos'
          TabOrder = 19
          Visible = False
        end
        object CheckBox6: TCheckBox
          Left = 528
          Top = 81
          Width = 153
          Height = 17
          Caption = 'Filtra Cadastro por Grupo'
          TabOrder = 20
        end
        object Button24: TButton
          Left = 28
          Top = 71
          Width = 168
          Height = 33
          Caption = 'Invent'#225'rio separado por Grupos'
          TabOrder = 21
          OnClick = Button24Click
        end
        object Panel153: TPanel
          Left = 1
          Top = 1
          Width = 840
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 22
        end
        object Panel152: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 464
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 23
        end
        object Panel154: TPanel
          Left = 829
          Top = 13
          Width = 12
          Height = 464
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 24
        end
        object Panel151: TPanel
          Left = 1
          Top = 477
          Width = 840
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 25
        end
        object Button25: TButton
          Left = 28
          Top = 161
          Width = 152
          Height = 33
          Caption = 'Guarda tabela de Invent'#225'rio'
          TabOrder = 26
          OnClick = Button25Click
        end
        object Button26: TButton
          Left = 182
          Top = 161
          Width = 151
          Height = 33
          Caption = 'Escolhe tabela de Invent'#225'rio'
          TabOrder = 27
          OnClick = Button26Click
        end
        object BitBtn9: TBitBtn
          Left = 746
          Top = 21
          Width = 75
          Height = 25
          Caption = '&Sair'
          Kind = bkClose
          NumGlyphs = 2
          TabOrder = 28
        end
        object Button27: TButton
          Left = 28
          Top = 196
          Width = 152
          Height = 33
          Caption = 'Guarda tabela de Simulado'
          TabOrder = 29
          OnClick = Button27Click
        end
        object Button28: TButton
          Left = 182
          Top = 196
          Width = 151
          Height = 33
          Caption = 'Escolhe tabela de Simulado'
          TabOrder = 30
          OnClick = Button28Click
        end
        object cxGrid1: TcxGrid
          Left = 576
          Top = 241
          Width = 206
          Height = 147
          DragKind = dkDock
          DragMode = dmAutomatic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 31
          Visible = False
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView12: TcxGridDBTableView
            OnDblClick = cxGridDBTableView12DblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DADOS_CONSULTASF.Source_INVENTARIO
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
            OptionsSelection.ShowCheckBoxesDynamically = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GridLines = glVertical
            OptionsView.GroupByBox = False
            Styles.ContentEven = cxStyle1
            object cxGridDBTableView12Column1: TcxGridDBColumn
              Caption = 'Tabela de Invet'#225'rio'
              DataBinding.FieldName = 'TABELA'
              Width = 200
            end
            object cxGridDBTableView12Column2: TcxGridDBColumn
              Caption = 'Informa'#231#245'es'
              DataBinding.FieldName = 'INFORMACOES'
              Width = 200
            end
            object cxGridDBTableView12Column3: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'DATA'
              Width = 60
            end
            object cxGridDBTableView12Column4: TcxGridDBColumn
              Caption = 'Hora'
              DataBinding.FieldName = 'HORA'
              Width = 60
            end
          end
          object cxGridLevel12: TcxGridLevel
            GridView = cxGridDBTableView12
          end
        end
      end
    end
    object Veiculos: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1093
      Height = 0
      TabOrder = 3
      Visible = False
      Index = 3
      object NxNotebook62: TNxNotebook6
        Left = 76
        Top = 58
        Width = 618
        Height = 367
        TabOrder = 0
        ActivePage = NxNotebookSheet65
        DesignButtons = False
        object NxNotebookSheet65: TNxNotebookSheet6
          Left = 0
          Top = 0
          Width = 618
          Height = 332
          Align = alClient
          TabOrder = 0
          object Panel2: TPanel
            Left = 29
            Top = 61
            Width = 180
            Height = 87
            TabOrder = 0
            object Button1: TButton
              Left = 29
              Top = 27
              Width = 121
              Height = 33
              Caption = 'Ve'#237'culos'
              TabOrder = 0
            end
            object Panel20: TPanel
              Left = 1
              Top = 1
              Width = 178
              Height = 12
              Align = alTop
              BevelOuter = bvNone
              Color = 10053171
              ParentBackground = False
              TabOrder = 1
            end
            object Panel21: TPanel
              Left = 1
              Top = 13
              Width = 12
              Height = 61
              Align = alLeft
              BevelOuter = bvNone
              Color = 10053171
              ParentBackground = False
              TabOrder = 2
            end
            object Panel22: TPanel
              Left = 167
              Top = 13
              Width = 12
              Height = 61
              Align = alRight
              BevelOuter = bvNone
              Color = 10053171
              ParentBackground = False
              TabOrder = 3
            end
            object Panel23: TPanel
              Left = 1
              Top = 74
              Width = 178
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
          Width = 618
          Height = 0
          TabOrder = 1
          Visible = False
          Index = 1
          object Panel3: TPanel
            Left = 36
            Top = 47
            Width = 513
            Height = 237
            TabOrder = 0
            object Panel4: TPanel
              Left = 28
              Top = 31
              Width = 102
              Height = 63
              BevelInner = bvRaised
              BevelOuter = bvLowered
              TabOrder = 0
              object Label9: TLabel
                Left = 24
                Top = 7
                Width = 49
                Height = 16
                Caption = '&PLACA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Edit11: TComboEdit
                Left = 5
                Top = 30
                Width = 92
                Height = 21
                EditMask = 'AAA-9999;0;_'
                GlyphKind = gkEllipsis
                MaxLength = 8
                NumGlyphs = 1
                TabOrder = 0
                Text = ''
              end
            end
          end
        end
      end
    end
    object EntradasSaidasxy: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1093
      Height = 0
      TabOrder = 4
      Visible = False
      Index = 4
      object Panel11: TPanel
        Left = 64
        Top = 30
        Width = 202
        Height = 157
        TabOrder = 0
        object Button2: TButton
          Left = 41
          Top = 34
          Width = 121
          Height = 33
          Caption = 'Entradas e Sa'#237'das'
          TabOrder = 0
        end
        object RadioButton3: TRadioButton
          Left = 49
          Top = 87
          Width = 113
          Height = 17
          Caption = 'Ordem de C'#243'digo'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object RadioButton4: TRadioButton
          Left = 49
          Top = 119
          Width = 132
          Height = 17
          Caption = 'Ordem de Descri'#231#227'o'
          TabOrder = 2
        end
        object Panel24: TPanel
          Left = 1
          Top = 1
          Width = 200
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel25: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 131
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
        object Panel26: TPanel
          Left = 189
          Top = 13
          Width = 12
          Height = 131
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 5
        end
        object Panel27: TPanel
          Left = 1
          Top = 144
          Width = 200
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 6
        end
      end
    end
    object Entradas: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1093
      Height = 0
      TabOrder = 5
      Visible = False
      Index = 5
      object Panel5: TPanel
        Left = 157
        Top = 151
        Width = 191
        Height = 169
        TabOrder = 0
        object Button3: TButton
          Left = 27
          Top = 27
          Width = 121
          Height = 33
          Caption = 'Entradas e Sa'#237'das'
          TabOrder = 0
        end
        object RadioButton5: TRadioButton
          Left = 35
          Top = 80
          Width = 113
          Height = 17
          Caption = 'Ordem de C'#243'digo'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object RadioButton6: TRadioButton
          Left = 35
          Top = 112
          Width = 132
          Height = 17
          Caption = 'Ordem de Descri'#231#227'o'
          TabOrder = 2
        end
        object Panel28: TPanel
          Left = 1
          Top = 1
          Width = 189
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel29: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 143
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
        object Panel30: TPanel
          Left = 178
          Top = 13
          Width = 12
          Height = 143
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 5
        end
        object Panel31: TPanel
          Left = 1
          Top = 156
          Width = 189
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 6
        end
      end
    end
    object Balanço: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1093
      Height = 0
      TabOrder = 6
      Visible = False
      Index = 6
      object cxGrid3: TcxGrid
        Left = 41
        Top = 45
        Width = 744
        Height = 230
        DragKind = dkDock
        DragMode = dmAutomatic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DADOS_CONSULTASF.DataSource3
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
          OptionsView.ColumnAutoWidth = True
          OptionsView.GridLines = glVertical
          OptionsView.GroupByBox = False
          Styles.ContentEven = cxStyle1
          object cxGridDBTableView2CODIGO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
            Width = 62
          end
          object cxGridDBTableView2BARRAS: TcxGridDBColumn
            Caption = 'Barras'
            DataBinding.FieldName = 'BARRAS'
            Width = 124
          end
          object cxGridDBTableView2NOME: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'NOME'
            Width = 343
          end
          object cxGridDBTableView2QTD: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTD'
            Width = 142
          end
          object cxGridDBTableView2PRECO_CUSTO: TcxGridDBColumn
            Caption = 'Pre'#231'o de Venda'
            DataBinding.FieldName = 'PRECO_CONS'
            Width = 108
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object CurvaABCX: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1093
      Height = 0
      TabOrder = 7
      Visible = False
      Index = 7
      object Panel8: TPanel
        Left = 105
        Top = 174
        Width = 651
        Height = 184
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label3: TLabel
          Left = 24
          Top = 119
          Width = 24
          Height = 13
          Caption = 'Total'
          Visible = False
        end
        object Label4: TLabel
          Left = 113
          Top = 119
          Width = 87
          Height = 13
          Caption = 'Total de Registros'
          Visible = False
        end
        object Button7: TButton
          Left = 689
          Top = 11
          Width = 113
          Height = 25
          Caption = '&Gera Curva ABC'
          TabOrder = 0
          Visible = False
        end
        object Panel9: TPanel
          Left = 27
          Top = 26
          Width = 235
          Height = 69
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 1
          object Label1: TLabel
            Left = 7
            Top = 13
            Width = 51
            Height = 13
            Caption = 'Data I&ncial'
          end
          object Label2: TLabel
            Left = 7
            Top = 46
            Width = 48
            Height = 13
            Caption = 'Data &Final'
          end
          object datini: TDateEdit
            Left = 77
            Top = 12
            Width = 134
            Height = 22
            AutoSelect = False
            Color = clInfoBk
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            NumGlyphs = 2
            ParentCtl3D = False
            ParentFont = False
            YearDigits = dyFour
            TabOrder = 0
          end
          object DatFim: TDateEdit
            Left = 79
            Top = 40
            Width = 134
            Height = 22
            AutoSelect = False
            Color = clInfoBk
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            NumGlyphs = 2
            ParentCtl3D = False
            ParentFont = False
            YearDigits = dyFour
            TabOrder = 1
          end
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 25
          Top = 137
          Width = 83
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Ctl3D = True
          DisplayFormat = '###,##0.00'
          ParentCtl3D = False
          TabOrder = 2
          Visible = False
        end
        object Button8: TButton
          Left = 250
          Top = 101
          Width = 75
          Height = 25
          Caption = 'Classe &A'
          TabOrder = 3
          Visible = False
        end
        object Button9: TButton
          Left = 338
          Top = 101
          Width = 75
          Height = 25
          Caption = 'Classe &B'
          TabOrder = 4
          Visible = False
        end
        object Button10: TButton
          Left = 419
          Top = 101
          Width = 75
          Height = 25
          Caption = 'Classe &C'
          TabOrder = 5
          Visible = False
        end
        object CurrencyEdit2: TCurrencyEdit
          Left = 115
          Top = 136
          Width = 83
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Ctl3D = True
          DisplayFormat = '###,##0.00'
          ParentCtl3D = False
          TabOrder = 6
          Visible = False
        end
        object CurrencyEdit3: TCurrencyEdit
          Left = 250
          Top = 133
          Width = 73
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Ctl3D = True
          DisplayFormat = '###,##0.00'
          ParentCtl3D = False
          TabOrder = 7
          Visible = False
        end
        object CurrencyEdit4: TCurrencyEdit
          Left = 338
          Top = 133
          Width = 73
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Ctl3D = True
          DisplayFormat = '###,##0.00'
          ParentCtl3D = False
          TabOrder = 8
          Visible = False
        end
        object CurrencyEdit5: TCurrencyEdit
          Left = 426
          Top = 133
          Width = 73
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Ctl3D = True
          DisplayFormat = '###,##0.00'
          ParentCtl3D = False
          TabOrder = 9
          Visible = False
        end
        object Button11: TButton
          Left = 274
          Top = 26
          Width = 75
          Height = 25
          Caption = '&Relat'#243'rio'
          TabOrder = 10
        end
        object BitBtn1: TBitBtn
          Left = 355
          Top = 26
          Width = 75
          Height = 25
          Caption = '&Sair'
          Kind = bkClose
          NumGlyphs = 2
          TabOrder = 11
        end
        object GroupBox1: TGroupBox
          Left = 534
          Top = 23
          Width = 89
          Height = 73
          Caption = 'Classe'
          TabOrder = 12
          Visible = False
          object CheckBox1: TCheckBox
            Left = 8
            Top = 16
            Width = 70
            Height = 17
            Caption = 'Classe &A'
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
          object CheckBox3: TCheckBox
            Left = 8
            Top = 34
            Width = 70
            Height = 17
            Caption = 'Classe &B'
            Checked = True
            State = cbChecked
            TabOrder = 1
          end
          object CheckBox4: TCheckBox
            Left = 8
            Top = 52
            Width = 70
            Height = 17
            Caption = 'Classe &C'
            Checked = True
            State = cbChecked
            TabOrder = 2
          end
        end
        object Panel16: TPanel
          Left = 2
          Top = 2
          Width = 647
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 13
        end
        object Panel17: TPanel
          Left = 2
          Top = 14
          Width = 12
          Height = 156
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 14
        end
        object Panel18: TPanel
          Left = 637
          Top = 14
          Width = 12
          Height = 156
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 15
        end
        object Panel19: TPanel
          Left = 2
          Top = 170
          Width = 647
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 16
        end
      end
    end
    object RelatorioEntradas: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1093
      Height = 0
      TabOrder = 8
      Visible = False
      Index = 8
      object Panel7: TPanel
        Left = 114
        Top = 77
        Width = 511
        Height = 195
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Panel10: TPanel
          Left = 52
          Top = 42
          Width = 260
          Height = 107
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object Label7: TLabel
            Left = 7
            Top = 13
            Width = 51
            Height = 13
            Caption = 'Data I&ncial'
          end
          object Label8: TLabel
            Left = 7
            Top = 46
            Width = 48
            Height = 13
            Caption = 'Data &Final'
          end
          object Label5: TLabel
            Left = 7
            Top = 78
            Width = 78
            Height = 13
            Caption = 'N'#250'mero da Nota'
          end
          object datiniE: TDateEdit
            Left = 111
            Top = 14
            Width = 134
            Height = 22
            AutoSelect = False
            Color = clInfoBk
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            NumGlyphs = 2
            ParentCtl3D = False
            ParentFont = False
            YearDigits = dyFour
            TabOrder = 0
          end
          object DatFime: TDateEdit
            Left = 111
            Top = 41
            Width = 134
            Height = 22
            AutoSelect = False
            Color = clInfoBk
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            NumGlyphs = 2
            ParentCtl3D = False
            ParentFont = False
            YearDigits = dyFour
            TabOrder = 1
          end
          object MaskEdit1: TMaskEdit
            Left = 109
            Top = 70
            Width = 131
            Height = 24
            Color = clInfoBk
            EditMask = '999999999;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 9
            ParentFont = False
            TabOrder = 2
            Text = '         '
          end
        end
        object Button22: TButton
          Left = 318
          Top = 43
          Width = 75
          Height = 25
          Caption = '&Relat'#243'rio'
          TabOrder = 1
        end
        object BitBtn2: TBitBtn
          Left = 399
          Top = 41
          Width = 75
          Height = 25
          Caption = '&Sair'
          Kind = bkClose
          NumGlyphs = 2
          TabOrder = 2
        end
        object Panel12: TPanel
          Left = 2
          Top = 2
          Width = 507
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel13: TPanel
          Left = 2
          Top = 14
          Width = 12
          Height = 167
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
        object Panel14: TPanel
          Left = 497
          Top = 14
          Width = 12
          Height = 167
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 5
        end
        object Panel15: TPanel
          Left = 2
          Top = 181
          Width = 507
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 6
        end
      end
    end
    object DataSimuladox: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1093
      Height = 0
      TabOrder = 9
      Visible = False
      Index = 9
      object Panel6: TPanel
        Left = 379
        Top = 396
        Width = 125
        Height = 55
        TabOrder = 0
        object Label11: TLabel
          Left = 8
          Top = 5
          Width = 48
          Height = 13
          Caption = 'Data Final'
        end
        object DateEdit1: TDateEdit
          Left = 8
          Top = 24
          Width = 105
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
          OnKeyDown = DateEdit1KeyDown
        end
      end
    end
    object NxNotebookSheet64: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1093
      Height = 0
      TabOrder = 10
      Visible = False
      Index = 10
      object Panel32: TPanel
        Left = 301
        Top = 422
        Width = 436
        Height = 52
        TabOrder = 0
      end
    end
  end
  object UniQuery1: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 1072
    Top = 368
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 1096
    Top = 152
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxGridReportLink
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 2600
      PrinterPage.Margins.Right = 4000
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43762.421020266210000000
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 1088
    Top = 280
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 10930928
      TextColor = clGradientActiveCaption
    end
  end
  object RxCalculator1: TRxCalculator
    Ctl3D = False
    Title = 'Calculadora'
    Left = 1000
    Top = 75
  end
end
