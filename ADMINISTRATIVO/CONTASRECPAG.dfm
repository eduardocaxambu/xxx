inherited CONTASRECPAGf: TCONTASRECPAGf
  ClientHeight = 839
  ClientWidth = 1294
  Visible = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 1294
  ExplicitHeight = 839
  PixelsPerInch = 96
  TextHeight = 13
  object NxNotebook61: TNxNotebook6
    Left = 24
    Top = 8
    Width = 1189
    Height = 817
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ActivePage = ContasaReceber
    DesignButtons = False
    object ContasaReceber: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1189
      Height = 782
      Align = alClient
      TabOrder = 0
      object Panel2: TPanel
        Left = 20
        Top = 6
        Width = 1149
        Height = 763
        TabOrder = 0
        object Panel3: TPanel
          Left = 19
          Top = 15
          Width = 1111
          Height = 729
          TabOrder = 0
          object Panel1: TPanel
            Left = 1
            Top = 62
            Width = 1109
            Height = 49
            Align = alTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label15: TLabel
              Left = 11
              Top = 19
              Width = 133
              Height = 13
              Caption = '<F5> C'#243'digo do Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object ComboEdit1: TComboEdit
              Left = 152
              Top = 12
              Width = 91
              Height = 25
              Ctl3D = False
              GlyphKind = gkEllipsis
              NumGlyphs = 1
              ParentCtl3D = False
              TabOrder = 0
              Text = ''
              OnButtonClick = ComboEdit1ButtonClick
              OnKeyDown = ComboEdit1KeyDown
            end
          end
          object Panel4: TPanel
            Left = 36
            Top = 129
            Width = 861
            Height = 305
            TabOrder = 1
            object cxGrid1: TcxGrid
              Left = 22
              Top = 25
              Width = 411
              Height = 88
              DragKind = dkDock
              DragMode = dmAutomatic
              TabOrder = 1
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = True
              object cxGridDBTableView7: TcxGridDBTableView
                OnDblClick = cxGridDBTableView7DblClick
                OnKeyDown = cxGridDBTableView7KeyDown
                Navigator.Buttons.CustomButtons = <>
                OnCustomDrawCell = cxGridDBTableView7CustomDrawCell
                DataController.DataSource = DataFinanceiro.Source_Receber
                DataController.Options = []
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <
                  item
                    Links = <
                      item
                      end>
                    SummaryItems = <
                      item
                      end>
                  end>
                Filtering.ColumnFilteredItemsList = True
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
                object cxGridDBTableView7Column3: TcxGridDBColumn
                  Caption = 'Marca'
                  DataBinding.FieldName = 'MARCADO'
                  Width = 40
                end
                object cxGridDBTableView7NUMERO: TcxGridDBColumn
                  Caption = 'N'#250'mero'
                  DataBinding.FieldName = 'NUMERO'
                  Width = 42
                end
                object cxGridDBTableView7ORDEM: TcxGridDBColumn
                  Caption = 'Parcela'
                  DataBinding.FieldName = 'ORDEM'
                  Width = 37
                end
                object cxGridDBTableView7EMISSAO: TcxGridDBColumn
                  Caption = 'Emiss'#227'o'
                  DataBinding.FieldName = 'EMISSAO'
                  Width = 46
                end
                object cxGridDBTableView7VENCIMENTO: TcxGridDBColumn
                  Caption = 'Vencimento'
                  DataBinding.FieldName = 'VENCIMENTO'
                  Width = 44
                end
                object cxGridDBTableView7Column1: TcxGridDBColumn
                  DataBinding.FieldName = 'Dias'
                  Width = 33
                end
                object cxGridDBTableView7RECEBIMENTO: TcxGridDBColumn
                  Caption = 'Recebimento'
                  DataBinding.FieldName = 'RECEBIMENTO'
                  Width = 55
                end
                object cxGridDBTableView7VALOR_RECEBIDO: TcxGridDBColumn
                  Caption = 'Valor Recebido'
                  DataBinding.FieldName = 'VALOR_RECEBIDO'
                  Width = 90
                end
                object cxGridDBTableView7VALOR: TcxGridDBColumn
                  Caption = 'Valor'
                  DataBinding.FieldName = 'VALOR'
                  Width = 89
                end
                object cxGridDBTableView7Column2: TcxGridDBColumn
                  DataBinding.FieldName = 'Valor Devido'
                  Width = 109
                end
                object cxGridDBTableView7Column4: TcxGridDBColumn
                  Caption = 'Formas de Recebimento'
                  DataBinding.FieldName = 'MEIOSPAGAMENTO'
                  Visible = False
                  Width = 189
                end
              end
              object cxGrid1BandedTableView1: TcxGridBandedTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <
                  item
                  end>
                DataController.Summary.FooterSummaryItems = <
                  item
                  end>
                DataController.Summary.SummaryGroups = <
                  item
                    Links = <
                      item
                        Column = cxGrid1BandedTableView1Column1
                      end>
                    SummaryItems = <
                      item
                      end>
                  end>
                Bands = <
                  item
                  end
                  item
                  end>
                object cxGrid1BandedTableView1Column1: TcxGridBandedColumn
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGrid1BandedTableView1Column2: TcxGridBandedColumn
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
              end
              object cxGrid1CardView1: TcxGridCardView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.CardIndent = 7
              end
              object cxGrid1ChartView1: TcxGridChartView
                DiagramColumn.Active = True
              end
              object cxGrid1TableView1: TcxGridTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
              end
              object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Bands = <
                  item
                  end>
              end
              object cxGrid1DBCardView1: TcxGridDBCardView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.CardIndent = 7
              end
              object cxGrid1DBChartView1: TcxGridDBChartView
                DiagramColumn.Active = True
              end
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
              end
              object cxGridLevel7: TcxGridLevel
                GridView = cxGridDBTableView7
              end
            end
            object TextListBox1: TTextListBox
              Left = 112
              Top = 183
              Width = 226
              Height = 65
              BorderStyle = bsNone
              Color = clBtnHighlight
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'LettrGoth12 BT'
              Font.Style = []
              ItemHeight = 23
              MultiSelect = True
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              Visible = False
              OnDblClick = TextListBox1DblClick
            end
            object Panel62: TPanel
              Left = 1
              Top = 264
              Width = 859
              Height = 40
              Align = alBottom
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clDefault
              Font.Height = -21
              Font.Name = 'Arial Black'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Visible = False
              object Panel63: TPanel
                Left = 737
                Top = 1
                Width = 121
                Height = 38
                Align = alRight
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clDefault
                Font.Height = -21
                Font.Name = 'Arial Black'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object Button5: TButton
                  Left = 4
                  Top = 5
                  Width = 114
                  Height = 31
                  Caption = '&Imprimir'
                  TabOrder = 0
                  OnClick = Button5Click
                end
              end
            end
            object cxRichEdit1: TcxRichEdit
              Left = 399
              Top = 194
              ParentFont = False
              Style.Color = clBtnHighlight
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBtnText
              Style.Font.Height = -13
              Style.Font.Name = 'LettrGoth12 BT'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 3
              Visible = False
              Height = 54
              Width = 310
            end
          end
          object Panel6: TPanel
            Left = 1
            Top = 690
            Width = 1109
            Height = 38
            Align = alBottom
            TabOrder = 2
            object Label4: TLabel
              Left = 684
              Top = 6
              Width = 105
              Height = 23
              Caption = 'Vencimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'Arial Black'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Button80: TButton
              Left = 7
              Top = 6
              Width = 75
              Height = 25
              Caption = '&Novo'
              TabOrder = 0
              Visible = False
              OnClick = Button80Click
            end
            object Button81: TButton
              Left = 89
              Top = 6
              Width = 75
              Height = 25
              Caption = '&Editar'
              TabOrder = 1
              OnClick = Button81Click
            end
            object Button82: TButton
              Left = 172
              Top = 6
              Width = 75
              Height = 25
              Caption = '&Deletar'
              TabOrder = 2
              OnClick = Button82Click
            end
            object Button2: TButton
              Left = 335
              Top = 6
              Width = 160
              Height = 25
              Caption = 'Dar &Cr'#233'dito para o cliente'
              TabOrder = 3
              OnClick = Button2Click
            end
          end
          object Panel7: TPanel
            Left = 1
            Top = 1
            Width = 1109
            Height = 49
            Align = alTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -35
            Font.Name = 'Arial Black'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object Panel9: TPanel
            Left = 1
            Top = 626
            Width = 1109
            Height = 52
            Align = alBottom
            TabOrder = 4
            object cxButton36: TButton
              Left = 4
              Top = 1
              Width = 147
              Height = 25
              Caption = '<F2>Filtra contas vencidas'
              TabOrder = 0
              OnClick = cxButton36Click
            end
            object cxButton24: TButton
              Left = 4
              Top = 25
              Width = 147
              Height = 25
              Caption = '<F4> Vendas do Vencimento'
              TabOrder = 1
              OnClick = cxButton24Click
            end
            object Panel12: TPanel
              Left = 680
              Top = 1
              Width = 215
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              Caption = 'Total da Conta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -27
              Font.Name = 'Arial Black'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object Panel13: TPanel
              Left = 895
              Top = 1
              Width = 213
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -27
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object Panel53: TPanel
              Left = 329
              Top = 1
              Width = 119
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              Caption = 'Cr'#233'dito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -27
              Font.Name = 'Arial Black'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
            end
            object Panel54: TPanel
              Left = 448
              Top = 1
              Width = 232
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -27
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
            end
            object Button1: TButton
              Left = 152
              Top = 1
              Width = 118
              Height = 50
              Caption = '<F7> Abate Cr'#233'dito'
              TabOrder = 6
              OnClick = Button1Click
            end
          end
          object Panel10: TPanel
            Left = 1
            Top = 539
            Width = 1109
            Height = 31
            Align = alBottom
            TabOrder = 5
            object Label11: TLabel
              Left = 11
              Top = 11
              Width = 53
              Height = 13
              Caption = 'Data Inicial'
              Color = 16776176
              ParentColor = False
            end
            object Label12: TLabel
              Left = 215
              Top = 11
              Width = 48
              Height = 13
              Caption = 'Data Final'
              Color = 16776176
              ParentColor = False
            end
            object CheckBox6: TCheckBox
              Left = 575
              Top = 8
              Width = 151
              Height = 17
              Caption = 'Contas Resumidas'
              Color = 16776176
              ParentColor = False
              TabOrder = 0
            end
            object DateEdit4: TDateEdit
              Left = 74
              Top = 6
              Width = 121
              Height = 19
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 1
            end
            object DateEdit5: TDateEdit
              Left = 277
              Top = 6
              Width = 121
              Height = 19
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 2
            end
            object CheckBox8: TCheckBox
              Left = 420
              Top = 8
              Width = 140
              Height = 17
              Caption = 'Contas Vencidas'
              Color = 16776176
              ParentColor = False
              TabOrder = 3
            end
            object cxButton7: TButton
              Left = 892
              Top = 3
              Width = 214
              Height = 25
              Caption = 'Relat'#243'rio de &Todas as Contas a Receber'
              TabOrder = 4
              OnClick = cxButton7Click
            end
          end
          object Panel11: TPanel
            Left = 1
            Top = 582
            Width = 1109
            Height = 32
            Align = alBottom
            TabOrder = 6
            object Label1: TLabel
              Left = 968
              Top = 13
              Width = 29
              Height = 13
              Caption = '<F8>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object cxButton3: TButton
              Left = 5
              Top = 3
              Width = 95
              Height = 25
              Caption = '&Receber por Valor'
              TabOrder = 0
              OnClick = cxButton3Click
            end
            object CheckBox1: TCheckBox
              Left = 234
              Top = 9
              Width = 97
              Height = 17
              Caption = '&Imprime Recibo'
              Checked = True
              Color = 16776176
              ParentColor = False
              State = cbChecked
              TabOrder = 1
              OnExit = CheckBox1Exit
            end
            object cxButton4: TButton
              Left = 101
              Top = 3
              Width = 130
              Height = 25
              Caption = 'Receber um &Vencimento'
              TabOrder = 2
              OnClick = cxButton4Click
            end
            object cxButton27: TButton
              Left = 393
              Top = 3
              Width = 177
              Height = 25
              Caption = '<F6> Imprime Recibo de Cobran'#231'a'
              TabOrder = 4
              OnClick = cxButton27Click
            end
            object cxButton26: TButton
              Left = 571
              Top = 3
              Width = 112
              Height = 25
              Caption = 'Imprime &Promiss'#243'rias'
              TabOrder = 5
              OnClick = cxButton26Click
            end
            object cxButton5: TButton
              Left = 1003
              Top = 4
              Width = 103
              Height = 25
              Caption = 'Contas a Receber'
              TabOrder = 6
              OnClick = cxButton5Click
            end
            object cxButton127: TButton
              Left = 325
              Top = 3
              Width = 67
              Height = 25
              Caption = '&Or'#231'amento'
              TabOrder = 3
              OnClick = cxButton127Click
            end
            object Button4: TButton
              Left = 684
              Top = 3
              Width = 278
              Height = 25
              Caption = '<F9>Resumo da Contas dos Clientes'
              TabOrder = 7
              OnClick = Button4Click
            end
            object CheckBox2: TCheckBox
              Left = 688
              Top = 7
              Width = 14
              Height = 17
              Caption = 'CheckBox2'
              Checked = True
              State = cbChecked
              TabOrder = 8
            end
          end
          object Panel5: TPanel
            Left = 1
            Top = 111
            Width = 1109
            Height = 12
            Align = alTop
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 7
          end
          object Panel16: TPanel
            Left = 1
            Top = 50
            Width = 1109
            Height = 12
            Align = alTop
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 8
          end
          object Panel18: TPanel
            Left = 1
            Top = 678
            Width = 1109
            Height = 12
            Align = alBottom
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 9
          end
          object Panel20: TPanel
            Left = 1
            Top = 614
            Width = 1109
            Height = 12
            Align = alBottom
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 10
          end
          object Panel23: TPanel
            Left = 1
            Top = 527
            Width = 1109
            Height = 12
            Align = alBottom
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 11
          end
          object Panel28: TPanel
            Left = 1
            Top = 570
            Width = 1109
            Height = 12
            Align = alBottom
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 12
          end
          object Panel64: TPanel
            Left = 1
            Top = 489
            Width = 1109
            Height = 38
            Align = alBottom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -21
            Font.Name = 'Arial Black'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
            Visible = False
            object DBText1: TDBText
              Left = 249
              Top = 5
              Width = 848
              Height = 29
              DataField = 'MEIOSPAGAMENTO'
              DataSource = DataFinanceiro.Source_Receber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clDefault
              Font.Height = -17
              Font.Name = 'Arial Black'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 5
              Top = 5
              Width = 235
              Height = 24
              Caption = 'Formas de Recebimento.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clDefault
              Font.Height = -17
              Font.Name = 'Arial Black'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object Panel129: TPanel
          Left = 1
          Top = 1
          Width = 1147
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 1
        end
        object Panel128: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 737
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel127: TPanel
          Left = 1
          Top = 750
          Width = 1147
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel130: TPanel
          Left = 1136
          Top = 13
          Width = 12
          Height = 737
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
      end
    end
    object ContasaPagar: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1189
      Height = 0
      TabOrder = 1
      Visible = False
      Index = 1
      object Panel26: TPanel
        Left = 20
        Top = 6
        Width = 1080
        Height = 675
        TabOrder = 0
        object Panel27: TPanel
          Left = 19
          Top = 15
          Width = 1046
          Height = 645
          TabOrder = 0
          object Panel29: TPanel
            Left = 18
            Top = 102
            Width = 989
            Height = 270
            TabOrder = 0
            object cxGrid4: TcxGrid
              Left = 16
              Top = 53
              Width = 945
              Height = 161
              DragKind = dkDock
              DragMode = dmAutomatic
              TabOrder = 0
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = True
              object cxGridDBTableView5: TcxGridDBTableView
                OnDblClick = cxGridDBTableView5DblClick
                OnKeyDown = cxGridDBTableView5KeyDown
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = DataFinanceiro.UniDataSource6
                DataController.Options = []
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <
                  item
                    Links = <
                      item
                      end>
                    SummaryItems = <
                      item
                      end>
                  end>
                Filtering.ColumnFilteredItemsList = True
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
                object cxGridDBTableView5NUMERO: TcxGridDBColumn
                  Caption = 'N'#250'mero'
                  DataBinding.FieldName = 'NUMERO'
                  Width = 67
                end
                object cxGridDBTableView5ORDEM: TcxGridDBColumn
                  Caption = 'Parcela'
                  DataBinding.FieldName = 'ORDEM'
                  Width = 43
                end
                object cxGridDBTableView5CODIGO: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'CODIGO'
                  Width = 45
                end
                object cxGridDBTableView5Fornecedor: TcxGridDBColumn
                  DataBinding.FieldName = 'Fornecedor'
                  Width = 201
                end
                object cxGridDBTableView5HISTORICO: TcxGridDBColumn
                  Caption = 'Hist'#243'rio'
                  DataBinding.FieldName = 'HISTORICO'
                  Width = 157
                end
                object cxGridDBTableView5EMISSAO: TcxGridDBColumn
                  Caption = 'Emiss'#227'o'
                  DataBinding.FieldName = 'EMISSAO'
                  Width = 77
                end
                object cxGridDBTableView5VENCIMENTO: TcxGridDBColumn
                  Caption = 'Vencimento'
                  DataBinding.FieldName = 'VENCIMENTO'
                  Width = 96
                end
                object cxGridDBTableView5Column1: TcxGridDBColumn
                  DataBinding.FieldName = 'Dias'
                  Width = 46
                end
                object cxGridDBTableView5VALOR: TcxGridDBColumn
                  Caption = 'Valor'
                  DataBinding.FieldName = 'VALOR'
                  Width = 71
                end
                object cxGridDBTableView5PAGAMENTO: TcxGridDBColumn
                  Caption = 'Pagamento'
                  DataBinding.FieldName = 'PAGAMENTO'
                  Width = 69
                end
                object cxGridDBTableView5VALOR_PAGO: TcxGridDBColumn
                  Caption = 'Valor Pago'
                  DataBinding.FieldName = 'VALOR_PAGO'
                  Width = 71
                end
              end
              object cxGridBandedTableView3: TcxGridBandedTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <
                  item
                  end>
                DataController.Summary.FooterSummaryItems = <
                  item
                  end>
                DataController.Summary.SummaryGroups = <
                  item
                    Links = <
                      item
                        Column = cxGridBandedColumn5
                      end>
                    SummaryItems = <
                      item
                      end>
                  end>
                Bands = <
                  item
                  end
                  item
                  end>
                object cxGridBandedColumn5: TcxGridBandedColumn
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn6: TcxGridBandedColumn
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
              end
              object cxGridCardView3: TcxGridCardView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.CardIndent = 7
              end
              object cxGridChartView3: TcxGridChartView
                DiagramColumn.Active = True
              end
              object cxGridTableView3: TcxGridTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
              end
              object cxGridDBBandedTableView3: TcxGridDBBandedTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Bands = <
                  item
                  end>
              end
              object cxGridDBCardView3: TcxGridDBCardView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.CardIndent = 7
              end
              object cxGridDBChartView3: TcxGridDBChartView
                DiagramColumn.Active = True
              end
              object cxGridDBTableView6: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
              end
              object cxGridLevel3: TcxGridLevel
                GridView = cxGridDBTableView5
              end
            end
          end
          object Panel31: TPanel
            Left = 1
            Top = 606
            Width = 1044
            Height = 38
            Align = alBottom
            TabOrder = 1
            object Button22: TButton
              Left = 7
              Top = 6
              Width = 75
              Height = 25
              Caption = '&Novo'
              TabOrder = 0
              OnClick = Button22Click
            end
            object Button23: TButton
              Left = 88
              Top = 5
              Width = 75
              Height = 25
              Caption = '&Editar'
              TabOrder = 1
              OnClick = Button23Click
            end
            object Button24: TButton
              Left = 169
              Top = 5
              Width = 75
              Height = 25
              Caption = '&Deletar'
              TabOrder = 2
              OnClick = Button24Click
            end
          end
          object NxPanel19: TPanel
            Left = 1
            Top = 1
            Width = 1044
            Height = 49
            Align = alTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -35
            Font.Name = 'Arial Black'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object Panel33: TPanel
            Left = 1
            Top = 524
            Width = 1044
            Height = 70
            Align = alBottom
            TabOrder = 3
            object Panel34: TPanel
              Left = 576
              Top = 13
              Width = 240
              Height = 38
              BevelOuter = bvNone
              Caption = 'Total da Conta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -27
              Font.Name = 'Arial Black'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object NxPanel17: TPanel
              Left = 814
              Top = 13
              Width = 222
              Height = 37
              BevelOuter = bvNone
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -27
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object NxPanel26: TPanel
              Left = 0
              Top = 6
              Width = 315
              Height = 23
              BevelOuter = bvNone
              Caption = 'Total das Contas Vencidas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -21
              Font.Name = 'Arial Black'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object NxPanel27: TPanel
              Left = 3
              Top = 35
              Width = 315
              Height = 23
              BevelOuter = bvNone
              Caption = 'Total das Contas  a Vencer'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -21
              Font.Name = 'Arial Black'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object NxPanel24: TPanel
              Left = 321
              Top = 6
              Width = 189
              Height = 27
              BevelOuter = bvNone
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
            end
            object NxPanel22: TPanel
              Left = 320
              Top = 35
              Width = 189
              Height = 27
              BevelOuter = bvNone
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
            end
          end
          object Panel36: TPanel
            Left = 1
            Top = 426
            Width = 1044
            Height = 37
            Align = alBottom
            TabOrder = 4
            object Label9: TLabel
              Left = 13
              Top = 15
              Width = 53
              Height = 13
              Caption = 'Data Inicial'
              Color = 16776176
              ParentColor = False
            end
            object Label10: TLabel
              Left = 225
              Top = 15
              Width = 48
              Height = 13
              Caption = 'Data Final'
              Color = 16776176
              ParentColor = False
            end
            object cxButton11: TButton
              Left = 803
              Top = 6
              Width = 234
              Height = 25
              Caption = 'Relat'#243'rio de Todas as Contas a Pagar'
              TabOrder = 0
              OnClick = cxButton11Click
            end
            object CheckBox7: TCheckBox
              Left = 583
              Top = 12
              Width = 114
              Height = 17
              Caption = 'Contas Resumidas'
              Color = 16776176
              ParentColor = False
              TabOrder = 1
            end
            object DateEdit2: TDateEdit
              Left = 98
              Top = 7
              Width = 121
              Height = 19
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 2
            end
            object DateEdit3: TDateEdit
              Left = 303
              Top = 8
              Width = 121
              Height = 19
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 3
            end
            object CheckBox9: TCheckBox
              Left = 432
              Top = 12
              Width = 140
              Height = 17
              Caption = 'Contas Vencidas'
              Color = 16776176
              ParentColor = False
              TabOrder = 4
            end
          end
          object Panel37: TPanel
            Left = 1
            Top = 475
            Width = 1044
            Height = 37
            Align = alBottom
            TabOrder = 5
            object Label2: TLabel
              Left = 899
              Top = 14
              Width = 29
              Height = 13
              Caption = '<F8>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object cxButton9: TButton
              Left = 8
              Top = 6
              Width = 113
              Height = 25
              Caption = '&Baixar por Valor'
              TabOrder = 0
              OnClick = cxButton9Click
            end
            object cxButton10: TButton
              Left = 127
              Top = 6
              Width = 130
              Height = 25
              Caption = 'Baixar um &Vencimento'
              TabOrder = 1
              OnClick = cxButton10Click
            end
            object cxButton8: TButton
              Left = 934
              Top = 6
              Width = 103
              Height = 25
              Caption = 'Contas a Pagar'
              TabOrder = 2
              OnClick = cxButton8Click
            end
            object CheckBox13: TCheckBox
              Left = 584
              Top = 12
              Width = 174
              Height = 17
              Caption = 'Faz Sangria de Caixa'
              Color = 16776176
              ParentColor = False
              TabOrder = 3
            end
          end
          object Panel30: TPanel
            Left = 1
            Top = 594
            Width = 1044
            Height = 12
            Align = alBottom
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 6
          end
          object Panel32: TPanel
            Left = 1
            Top = 50
            Width = 1044
            Height = 12
            Align = alTop
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 7
          end
          object Panel35: TPanel
            Left = 1
            Top = 414
            Width = 1044
            Height = 12
            Align = alBottom
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 8
          end
          object Panel38: TPanel
            Left = 1
            Top = 512
            Width = 1044
            Height = 12
            Align = alBottom
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 9
          end
          object Panel39: TPanel
            Left = 1
            Top = 463
            Width = 1044
            Height = 12
            Align = alBottom
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 10
          end
        end
        object Panel41: TPanel
          Left = 1
          Top = 1
          Width = 1078
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 1
        end
        object Panel42: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 649
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel43: TPanel
          Left = 1
          Top = 662
          Width = 1078
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel44: TPanel
          Left = 1067
          Top = 13
          Width = 12
          Height = 649
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
      end
    end
    object ItensCartoes: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1189
      Height = 0
      TabOrder = 2
      Visible = False
      Index = 2
      object Panel14: TPanel
        Left = 36
        Top = 6
        Width = 1085
        Height = 679
        TabOrder = 0
        object Panel15: TPanel
          Left = 19
          Top = 15
          Width = 1046
          Height = 645
          TabOrder = 0
          object Panel17: TPanel
            Left = 42
            Top = 80
            Width = 917
            Height = 270
            TabOrder = 0
            object cxGrid9: TcxGrid
              Left = 28
              Top = 61
              Width = 823
              Height = 161
              DragKind = dkDock
              DragMode = dmAutomatic
              TabOrder = 0
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = True
              object cxGridDBTableView16: TcxGridDBTableView
                OnDblClick = cxGridDBTableView16DblClick
                OnKeyDown = cxGridDBTableView16KeyDown
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = DataFinanceiro.Source_CARTOESITENS
                DataController.Options = []
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <
                  item
                    Links = <
                      item
                      end>
                    SummaryItems = <
                      item
                      end>
                  end>
                Filtering.ColumnFilteredItemsList = True
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
                object cxGridDBTableView16Column3: TcxGridDBColumn
                  Caption = 'Lan'#231'amento'
                  DataBinding.FieldName = 'ID'
                  Width = 68
                end
                object cxGridDBTableView16CARTOES: TcxGridDBColumn
                  Caption = 'Cart'#227'o'
                  DataBinding.FieldName = 'CARTOES'
                  Width = 40
                end
                object cxGridDBTableView16Column5: TcxGridDBColumn
                  Caption = 'Documento'
                  DataBinding.FieldName = 'CUPOM'
                  Width = 65
                end
                object cxGridDBTableView16Column2: TcxGridDBColumn
                  DataBinding.FieldName = 'Descri'#231#227'o'
                  Width = 131
                end
                object cxGridDBTableView16Column1: TcxGridDBColumn
                  Caption = 'Parcela'
                  DataBinding.FieldName = 'ORDEM'
                  Width = 44
                end
                object cxGridDBTableView16HISTORICO: TcxGridDBColumn
                  Caption = 'Hist'#243'rico'
                  DataBinding.FieldName = 'HISTORICO'
                  Width = 133
                end
                object cxGridDBTableView16EMISSAO: TcxGridDBColumn
                  Caption = 'Emiss'#227'o'
                  DataBinding.FieldName = 'EMISSAO'
                  Width = 81
                end
                object cxGridDBTableView16VENCIMENTO: TcxGridDBColumn
                  Caption = 'Vencimento'
                  DataBinding.FieldName = 'VENCIMENTO'
                  Width = 73
                end
                object cxGridDBTableView16Column6: TcxGridDBColumn
                  Caption = 'Hora'
                  DataBinding.FieldName = 'HORA'
                  Width = 30
                end
                object cxGridDBTableView16Column4: TcxGridDBColumn
                  DataBinding.FieldName = 'Dias'
                  Width = 46
                end
                object cxGridDBTableView16VALOR: TcxGridDBColumn
                  Caption = 'Valor'
                  DataBinding.FieldName = 'VALOR'
                  Width = 79
                end
                object cxGridDBTableView16VALORDES: TcxGridDBColumn
                  Caption = 'Valor com desconto'
                  DataBinding.FieldName = 'VALORDES'
                  Width = 91
                end
                object cxGridDBTableView16VALOR_RECEBIDO: TcxGridDBColumn
                  Caption = 'Valor Recebido'
                  DataBinding.FieldName = 'VALOR_RECEBIDO'
                  Width = 81
                end
              end
              object cxGridBandedTableView8: TcxGridBandedTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <
                  item
                  end>
                DataController.Summary.FooterSummaryItems = <
                  item
                  end>
                DataController.Summary.SummaryGroups = <
                  item
                    Links = <
                      item
                        Column = cxGridBandedColumn15
                      end>
                    SummaryItems = <
                      item
                      end>
                  end>
                Bands = <
                  item
                  end
                  item
                  end>
                object cxGridBandedColumn15: TcxGridBandedColumn
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn16: TcxGridBandedColumn
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
              end
              object cxGridCardView8: TcxGridCardView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.CardIndent = 7
              end
              object cxGridChartView8: TcxGridChartView
                DiagramColumn.Active = True
              end
              object cxGridTableView8: TcxGridTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
              end
              object cxGridDBBandedTableView8: TcxGridDBBandedTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Bands = <
                  item
                  end>
              end
              object cxGridDBCardView8: TcxGridDBCardView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.CardIndent = 7
              end
              object cxGridDBChartView8: TcxGridDBChartView
                DiagramColumn.Active = True
              end
              object cxGridDBTableView17: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
              end
              object cxGridLevel9: TcxGridLevel
                GridView = cxGridDBTableView16
              end
            end
          end
          object Panel19: TPanel
            Left = 1
            Top = 606
            Width = 1044
            Height = 38
            Align = alBottom
            TabOrder = 1
            object Button10: TButton
              Left = 8
              Top = 6
              Width = 75
              Height = 25
              Caption = '&Novo'
              TabOrder = 0
              OnClick = Button10Click
            end
            object cxButton29: TButton
              Left = 89
              Top = 6
              Width = 75
              Height = 25
              Caption = '&Editar'
              TabOrder = 1
              OnClick = cxButton29Click
            end
            object Button12: TButton
              Left = 170
              Top = 6
              Width = 75
              Height = 25
              Caption = '&Deletar'
              TabOrder = 2
              OnClick = Button12Click
            end
            object Button15: TButton
              Left = 298
              Top = 6
              Width = 75
              Height = 25
              Caption = 'C&lonar Edita'
              TabOrder = 3
              OnClick = Button15Click
            end
            object Button16: TButton
              Left = 379
              Top = 6
              Width = 90
              Height = 25
              Caption = 'Clonar &Parcelas'
              TabOrder = 4
              OnClick = Button16Click
            end
          end
          object NxPanel62: TPanel
            Left = 1
            Top = 1
            Width = 1044
            Height = 49
            Align = alTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -35
            Font.Name = 'Arial Black'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object Panel21: TPanel
            Left = 1
            Top = 524
            Width = 1044
            Height = 70
            Align = alBottom
            TabOrder = 3
            object Panel22: TPanel
              Left = 524
              Top = 14
              Width = 275
              Height = 38
              BevelOuter = bvNone
              Caption = 'Total dos Cart'#245'es'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -27
              Font.Name = 'Arial Black'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object NxPanel56: TPanel
              Left = 806
              Top = 14
              Width = 222
              Height = 37
              BevelOuter = bvNone
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -27
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object NxPanel60: TPanel
              Left = 6
              Top = 9
              Width = 315
              Height = 23
              BevelOuter = bvNone
              Caption = 'Total dos Cart'#245'es Vencidas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -21
              Font.Name = 'Arial Black'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object NxPanel61: TPanel
              Left = 7
              Top = 38
              Width = 315
              Height = 23
              BevelOuter = bvNone
              Caption = 'Total dos Cart'#245'es a Vencer'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -21
              Font.Name = 'Arial Black'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object NxPanel58: TPanel
              Left = 329
              Top = 9
              Width = 189
              Height = 27
              BevelOuter = bvNone
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
            end
            object NxPanel59: TPanel
              Left = 328
              Top = 38
              Width = 189
              Height = 27
              BevelOuter = bvNone
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
            end
          end
          object Panel24: TPanel
            Left = 1
            Top = 426
            Width = 1044
            Height = 37
            Align = alBottom
            TabOrder = 4
            object Label18: TLabel
              Left = 21
              Top = 18
              Width = 53
              Height = 13
              Caption = 'Data Inicial'
              Color = 16776176
              ParentColor = False
              Visible = False
            end
            object Label19: TLabel
              Left = 233
              Top = 18
              Width = 48
              Height = 13
              Caption = 'Data Final'
              Color = 16776176
              ParentColor = False
              Visible = False
            end
            object cxButton34: TcxButton
              Left = 877
              Top = 6
              Width = 143
              Height = 25
              Caption = 'Relat'#243'rio'
              TabOrder = 0
              OnClick = cxButton34Click
            end
            object DateEdit8: TDateEdit
              Left = 105
              Top = 15
              Width = 121
              Height = 19
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 1
              Visible = False
            end
            object DateEdit9: TDateEdit
              Left = 311
              Top = 13
              Width = 121
              Height = 19
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 2
              Visible = False
            end
            object cxButton38: TcxButton
              Left = 712
              Top = 7
              Width = 155
              Height = 25
              Caption = '<F2> Cart'#245'es Vencidos'
              TabOrder = 3
              OnClick = cxButton38Click
            end
          end
          object Panel25: TPanel
            Left = 1
            Top = 475
            Width = 1044
            Height = 37
            Align = alBottom
            TabOrder = 5
            object Label3: TLabel
              Left = 842
              Top = 14
              Width = 29
              Height = 13
              Caption = '<F8>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object cxButton31: TcxButton
              Left = 5
              Top = 7
              Width = 141
              Height = 25
              Caption = '&Baixar por Valor'
              TabOrder = 0
              OnClick = cxButton31Click
            end
            object cxButton32: TcxButton
              Left = 152
              Top = 7
              Width = 190
              Height = 25
              Caption = 'Baixar um &Cart'#227'o'
              TabOrder = 1
              OnClick = cxButton32Click
            end
            object cxButton33: TcxButton
              Left = 877
              Top = 6
              Width = 143
              Height = 25
              Caption = 'Cart'#245'es a Vencer'
              TabOrder = 2
              OnClick = cxButton33Click
            end
          end
          object Panel40: TPanel
            Left = 1
            Top = 594
            Width = 1044
            Height = 12
            Align = alBottom
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 6
          end
          object Panel49: TPanel
            Left = 1
            Top = 50
            Width = 1044
            Height = 12
            Align = alTop
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 7
          end
          object Panel50: TPanel
            Left = 1
            Top = 414
            Width = 1044
            Height = 12
            Align = alBottom
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 8
          end
          object Panel51: TPanel
            Left = 1
            Top = 463
            Width = 1044
            Height = 12
            Align = alBottom
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 9
          end
          object Panel52: TPanel
            Left = 1
            Top = 512
            Width = 1044
            Height = 12
            Align = alBottom
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 10
          end
        end
        object Panel45: TPanel
          Left = 1
          Top = 1
          Width = 1083
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 1
        end
        object Panel46: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 653
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel47: TPanel
          Left = 1
          Top = 666
          Width = 1083
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel48: TPanel
          Left = 1072
          Top = 13
          Width = 12
          Height = 653
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
      end
    end
    object CadernetaPaga: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1189
      Height = 0
      TabOrder = 3
      Visible = False
      Index = 3
    end
    object CreditoClie: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1189
      Height = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
      Index = 4
      object Panel8: TPanel
        Left = 319
        Top = 285
        Width = 338
        Height = 238
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Panel55: TPanel
          Left = 0
          Top = 65
          Width = 12
          Height = 84
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 0
        end
        object Panel57: TPanel
          Left = 326
          Top = 65
          Width = 12
          Height = 84
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 1
        end
        object Panel58: TPanel
          Left = 0
          Top = 149
          Width = 338
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object CreditoCliente: TCurrencyEdit
          Left = 56
          Top = 82
          Width = 217
          Height = 52
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = clInfoBk
          Ctl3D = True
          DisplayFormat = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -40
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          OnEnter = CreditoClienteEnter
          OnKeyDown = CreditoClienteKeyDown
        end
        object Panel70: TPanel
          Left = 0
          Top = 161
          Width = 338
          Height = 77
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 4
          object Button14: TButton
            Left = 18
            Top = 8
            Width = 147
            Height = 50
            Caption = '&Confirma'
            TabOrder = 0
            OnClick = Button14Click
          end
          object Button3: TButton
            Left = 171
            Top = 8
            Width = 150
            Height = 50
            Caption = 'C&ancela'
            TabOrder = 1
            OnClick = Button3Click
          end
          object Panel71: TPanel
            Left = 0
            Top = 65
            Width = 338
            Height = 12
            Align = alBottom
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 2
          end
          object Panel72: TPanel
            Left = 0
            Top = 0
            Width = 12
            Height = 65
            Align = alLeft
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 3
          end
          object Panel73: TPanel
            Left = 326
            Top = 0
            Width = 12
            Height = 65
            Align = alRight
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 4
          end
        end
        object Panel56: TPanel
          Left = 0
          Top = 0
          Width = 338
          Height = 65
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Cr'#233'dito'
          TabOrder = 5
          object Panel60: TPanel
            Left = 0
            Top = 12
            Width = 12
            Height = 41
            Align = alLeft
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 0
          end
          object Panel61: TPanel
            Left = 326
            Top = 12
            Width = 12
            Height = 41
            Align = alRight
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 1
          end
          object Panel59: TPanel
            Left = 0
            Top = 0
            Width = 338
            Height = 12
            Align = alTop
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 2
          end
          object Panel68: TPanel
            Left = 0
            Top = 53
            Width = 338
            Height = 12
            Align = alBottom
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 3
          end
        end
      end
    end
  end
  object cxstylrpstry1: TcxStyleRepository
    Left = 1208
    Top = 528
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
  object UniQuery1: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 1208
    Top = 648
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1cxRichEditReportLink1
    PreviewOptions.SaveZoomPosition = False
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 1208
    Top = 448
    PixelsPerInch = 96
    object dxComponentPrinter1cxRichEditReportLink1: TcxRichEditReportLink
      Active = True
      Component = cxRichEdit1
      PrinterPage.DMPaper = 256
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 6400
      PrinterPage.Margins.Left = 4000
      PrinterPage.Margins.Right = 2000
      PrinterPage.Margins.Top = 6400
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleFactor = 150
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 44134.169162372690000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
end
