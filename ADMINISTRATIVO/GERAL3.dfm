inherited GERAL3F: TGERAL3F
  BorderStyle = bsNone
  Caption = 'GERAL3F'
  ClientHeight = 858
  ClientWidth = 1361
  Position = poDesktopCenter
  Visible = False
  WindowState = wsNormal
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 1361
  ExplicitHeight = 858
  PixelsPerInch = 96
  TextHeight = 13
  object NxNotebook61: TNxNotebook6
    Left = 24
    Top = 24
    Width = 1297
    Height = 785
    TabOrder = 0
    ActivePage = RetiradasSuprimentos
    ActivePageIndex = 7
    DesignButtons = False
    object ContasaRecebereRecebidas: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 0
      Visible = False
      object Panel1: TPanel
        Left = 30
        Top = 76
        Width = 1154
        Height = 613
        TabOrder = 0
        object Panel2: TPanel
          Left = 1
          Top = 74
          Width = 1152
          Height = 272
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Panel79: TPanel
            Left = 1
            Top = 60
            Width = 12
            Height = 211
            Align = alLeft
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 0
          end
          object Panel80: TPanel
            Left = 1139
            Top = 60
            Width = 12
            Height = 211
            Align = alRight
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 1
          end
          object cxGrid4: TcxGrid
            Left = 47
            Top = 80
            Width = 1066
            Height = 163
            DragKind = dkDock
            DragMode = dmAutomatic
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGridDBTableView100: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
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
              Styles.ContentEven = cxStyle1
              object cxGridDBTableView100NUMERO: TcxGridDBColumn
                Caption = 'N'#250'mero'
                DataBinding.FieldName = 'NUMERO'
                Width = 70
              end
              object cxGridDBTableView100ORDEM: TcxGridDBColumn
                Caption = 'Ordem'
                DataBinding.FieldName = 'ORDEM'
                Width = 62
              end
              object cxGridDBTableView100EMISSAO: TcxGridDBColumn
                Caption = 'Emiss'#227'o'
                DataBinding.FieldName = 'EMISSAO'
                Width = 75
              end
              object cxGridDBTableView100VENCIMENTO: TcxGridDBColumn
                Caption = 'Vencimento'
                DataBinding.FieldName = 'VENCIMENTO'
                Width = 75
              end
              object cxGridDBTableView100Column1: TcxGridDBColumn
                DataBinding.FieldName = 'Dias'
                Width = 54
              end
              object cxGridDBTableView100RECEBIMENTO: TcxGridDBColumn
                Caption = 'Recebimento'
                DataBinding.FieldName = 'RECEBIMENTO'
                Width = 90
              end
              object cxGridDBTableView100VALOR_RECEBIDO: TcxGridDBColumn
                Caption = 'Valor Recebido'
                DataBinding.FieldName = 'VALOR_RECEBIDO'
                Width = 151
              end
              object cxGridDBTableView100VALOR: TcxGridDBColumn
                Caption = 'Varlor'
                DataBinding.FieldName = 'VALOR'
                Width = 147
              end
              object cxGridDBTableView100Column2: TcxGridDBColumn
                DataBinding.FieldName = 'Valor Devido'
                Width = 150
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
              GridView = cxGridDBTableView100
            end
          end
          object Panel25: TPanel
            Left = 1
            Top = 1
            Width = 1150
            Height = 59
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Contas Recebidas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object Panel85: TPanel
              Left = 0
              Top = 47
              Width = 1150
              Height = 12
              Align = alBottom
              BevelOuter = bvNone
              Color = 10053171
              ParentBackground = False
              TabOrder = 0
            end
            object Panel86: TPanel
              Left = 0
              Top = 0
              Width = 12
              Height = 47
              Align = alLeft
              BevelOuter = bvNone
              Color = 10053171
              ParentBackground = False
              TabOrder = 1
            end
            object Panel87: TPanel
              Left = 1138
              Top = 0
              Width = 12
              Height = 47
              Align = alRight
              BevelOuter = bvNone
              Color = 10053171
              ParentBackground = False
              TabOrder = 2
            end
          end
        end
        object Panel102: TPanel
          Left = 1
          Top = 599
          Width = 12
          Height = 1
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 1
        end
        object Panel101: TPanel
          Left = 1
          Top = 62
          Width = 1152
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel104: TPanel
          Left = 1141
          Top = 599
          Width = 12
          Height = 1
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel103: TPanel
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
        object Panel81: TPanel
          Left = 1
          Top = 1
          Width = 1152
          Height = 61
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          object Panel82: TPanel
            Left = 0
            Top = 0
            Width = 1152
            Height = 12
            Align = alTop
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 0
          end
          object Panel83: TPanel
            Left = 0
            Top = 12
            Width = 12
            Height = 49
            Align = alLeft
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 1
          end
          object Panel84: TPanel
            Left = 1140
            Top = 12
            Width = 12
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 2
          end
        end
        object Panel88: TPanel
          Left = 1
          Top = 346
          Width = 1152
          Height = 253
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          object Panel89: TPanel
            Left = 1
            Top = 73
            Width = 12
            Height = 179
            Align = alLeft
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 0
          end
          object Panel90: TPanel
            Left = 1139
            Top = 73
            Width = 12
            Height = 179
            Align = alRight
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 1
          end
          object Panel91: TPanel
            Left = 1
            Top = 1
            Width = 1150
            Height = 72
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Valores'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object Panel92: TPanel
              Left = 0
              Top = 60
              Width = 1150
              Height = 12
              Align = alBottom
              BevelOuter = bvNone
              Color = 10053171
              ParentBackground = False
              TabOrder = 0
            end
            object Panel93: TPanel
              Left = 0
              Top = 12
              Width = 12
              Height = 48
              Align = alLeft
              BevelOuter = bvNone
              Color = 10053171
              ParentBackground = False
              TabOrder = 1
            end
            object Panel94: TPanel
              Left = 1138
              Top = 12
              Width = 12
              Height = 48
              Align = alRight
              BevelOuter = bvNone
              Color = 10053171
              ParentBackground = False
              TabOrder = 2
            end
            object Panel95: TPanel
              Left = 0
              Top = 0
              Width = 1150
              Height = 12
              Align = alTop
              BevelOuter = bvNone
              Color = 10053171
              ParentBackground = False
              TabOrder = 3
            end
          end
          object cxGrid6: TcxGrid
            Left = 19
            Top = 98
            Width = 1070
            Height = 129
            DragKind = dkDock
            DragMode = dmAutomatic
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGridDBTableView10: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = DADOSFRENTEf.Source_DiversasFormas
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
              Styles.ContentEven = cxStyle1
              object cxGridDBTableView10Column1: TcxGridDBColumn
                Caption = 'Documento'
                DataBinding.FieldName = 'CUPOM'
                Width = 120
              end
              object cxGridDBTableView10Column2: TcxGridDBColumn
                Caption = 'Data'
                DataBinding.FieldName = 'EMISSAO'
                Width = 91
              end
              object cxGridDBTableView10FORMADEPAGAMENTO: TcxGridDBColumn
                Caption = 'Forma de Pagamento'
                DataBinding.FieldName = 'FORMADEPAGAMENTO'
                Width = 329
              end
              object cxGridDBTableView10TOTALPAGO: TcxGridDBColumn
                Caption = 'Valor Pago'
                DataBinding.FieldName = 'TOTALPAGO'
                Width = 104
              end
              object cxGridDBTableView10VALOR: TcxGridDBColumn
                Caption = 'Valor da Venda'
                DataBinding.FieldName = 'VALOR'
                Width = 120
              end
              object cxGridDBTableView10TROCO: TcxGridDBColumn
                Caption = 'Troco'
                DataBinding.FieldName = 'TROCO'
                Width = 92
              end
              object cxGridDBTableView10Column3: TcxGridDBColumn
                Caption = 'QTD Parcelas'
                DataBinding.FieldName = 'PARCELA'
                Width = 117
              end
              object cxGridDBTableView10AVISTAPRAZO: TcxGridDBColumn
                Caption = 'Avista ou A Prazo'
                DataBinding.FieldName = 'AVISTAPRAZO'
                Width = 95
              end
            end
            object cxGridLevel10: TcxGridLevel
              GridView = cxGridDBTableView10
            end
          end
        end
      end
    end
    object ContasaRecebereRecebidasnoDia: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 1
      Visible = False
      Index = 1
      object Panel3: TPanel
        Left = 30
        Top = 18
        Width = 1154
        Height = 684
        TabOrder = 0
        object Panel4: TPanel
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
          object Panel26: TPanel
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
        object cxGrid5: TcxGrid
          Left = 11
          Top = 71
          Width = 1132
          Height = 533
          DragKind = dkDock
          DragMode = dmAutomatic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView6: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
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
            Styles.ContentEven = Cadastros_FRM.cxStyle1
            object cxGridDBColumn19: TcxGridDBColumn
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'NUMERO'
              Width = 86
            end
            object cxGridDBColumn20: TcxGridDBColumn
              Caption = 'Ordem'
              DataBinding.FieldName = 'ORDEM'
              Width = 52
            end
            object cxGridDBTableView6Column1: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              Width = 58
            end
            object cxGridDBTableView6Column2: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'Descri'#231#227'odoCliente'
              Width = 262
            end
            object cxGridDBColumn21: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'EMISSAO'
              Width = 85
            end
            object cxGridDBColumn22: TcxGridDBColumn
              Caption = 'Vencimento'
              DataBinding.FieldName = 'VENCIMENTO'
              Width = 96
            end
            object cxGridDBColumn23: TcxGridDBColumn
              DataBinding.FieldName = 'Dias'
              Width = 41
            end
            object cxGridDBColumn24: TcxGridDBColumn
              Caption = 'Recebimento'
              DataBinding.FieldName = 'RECEBIMENTO'
              Width = 104
            end
            object cxGridDBColumn25: TcxGridDBColumn
              Caption = 'Valor Recebido'
              DataBinding.FieldName = 'VALOR_RECEBIDO'
              Width = 128
            end
            object cxGridDBColumn26: TcxGridDBColumn
              Caption = 'Varlor'
              DataBinding.FieldName = 'VALOR'
              Width = 97
            end
            object cxGridDBColumn27: TcxGridDBColumn
              DataBinding.FieldName = 'Valor Devido'
              Width = 121
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
          object cxGridDBTableView8: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridDBTableView6
          end
        end
        object Panel31: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 597
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel32: TPanel
          Left = 1
          Top = 1
          Width = 1152
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel33: TPanel
          Left = 1141
          Top = 13
          Width = 12
          Height = 597
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
        object Panel34: TPanel
          Left = 1
          Top = 671
          Width = 1152
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 5
        end
        object Panel107: TPanel
          Left = 1
          Top = 610
          Width = 1152
          Height = 61
          Align = alBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          object Panel108: TPanel
            Left = 1
            Top = 1
            Width = 1150
            Height = 12
            Align = alTop
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 0
          end
          object Panel109: TPanel
            Left = 1
            Top = 13
            Width = 12
            Height = 47
            Align = alLeft
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 1
          end
          object Panel110: TPanel
            Left = 1139
            Top = 13
            Width = 12
            Height = 47
            Align = alRight
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 2
          end
        end
      end
    end
    object Compras: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 2
      Visible = False
      Index = 2
      object Panel5: TPanel
        Left = 49
        Top = 77
        Width = 1154
        Height = 613
        TabOrder = 0
        object Panel6: TPanel
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
          object Panel27: TPanel
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
            DataController.DataSource = DADOS_CONSULTASF.UniDataSource_ITEVENDAS_ECF2
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
            Styles.ContentEven = cxStyle1
            object cxGridDBTableView9Column4: TcxGridDBColumn
              Caption = 'Documento'
              DataBinding.FieldName = 'CUPOM'
            end
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
        object Panel35: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 587
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel36: TPanel
          Left = 1
          Top = 1
          Width = 1152
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel37: TPanel
          Left = 1141
          Top = 13
          Width = 12
          Height = 587
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
        object Panel38: TPanel
          Left = 1
          Top = 600
          Width = 1152
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 5
        end
      end
    end
    object ComprasFornecedores: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 3
      Visible = False
      Index = 3
      object Panel8: TPanel
        Left = 49
        Top = 95
        Width = 1154
        Height = 613
        TabOrder = 0
        object Panel9: TPanel
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
          object Panel28: TPanel
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
        object cxGrid2: TcxGrid
          Left = 10
          Top = 71
          Width = 1133
          Height = 530
          DragKind = dkDock
          DragMode = dmAutomatic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView3: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DADOS_CONSULTASF.UniDataSource_ITECOMPRAS
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
            Styles.ContentEven = cxStyle1
            object cxGridDBTableView3NOTA: TcxGridDBColumn
              Caption = 'Nota'
              DataBinding.FieldName = 'NOTA'
              Width = 97
            end
            object cxGridDBTableView3ITEM: TcxGridDBColumn
              Caption = 'Item'
              DataBinding.FieldName = 'ITEM'
              Width = 77
            end
            object cxGridDBTableView3Column2: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'EMISSAO'
              Width = 90
            end
            object cxGridDBTableView3CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              Width = 85
            end
            object cxGridDBTableView3Column1: TcxGridDBColumn
              Caption = 'Descri'#231#227'o do Produto'
              DataBinding.FieldName = 'Descri'#231#227'o'
              Width = 333
            end
            object cxGridDBTableView3BARRAS: TcxGridDBColumn
              Caption = 'Barras'
              DataBinding.FieldName = 'BARRAS'
              Width = 133
            end
            object cxGridDBTableView3QTD: TcxGridDBColumn
              DataBinding.FieldName = 'QTD'
              Width = 102
            end
            object cxGridDBTableView3PRECO: TcxGridDBColumn
              Caption = 'Pre'#231'o'
              DataBinding.FieldName = 'PRECO'
              Width = 111
            end
            object cxGridDBTableView3TOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'TOTAL'
              Width = 109
            end
          end
          object cxGridBandedTableView2: TcxGridBandedTableView
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
                    Column = cxGridBandedColumn3
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
            object cxGridBandedColumn3: TcxGridBandedColumn
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn4: TcxGridBandedColumn
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object cxGridCardView2: TcxGridCardView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.CardIndent = 7
          end
          object cxGridChartView2: TcxGridChartView
            DiagramColumn.Active = True
          end
          object cxGridTableView2: TcxGridTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGridDBBandedTableView2: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
              end>
          end
          object cxGridDBCardView2: TcxGridDBCardView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.CardIndent = 7
          end
          object cxGridDBChartView2: TcxGridDBChartView
            DiagramColumn.Active = True
          end
          object cxGridDBTableView4: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView3
          end
        end
        object Panel39: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 587
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel40: TPanel
          Left = 1
          Top = 1
          Width = 1152
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel41: TPanel
          Left = 1141
          Top = 13
          Width = 12
          Height = 587
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
        object Panel42: TPanel
          Left = 1
          Top = 600
          Width = 1152
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 5
        end
      end
    end
    object ComprasProduto: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 4
      Visible = False
      Index = 4
      object Panel11: TPanel
        Left = 59
        Top = 58
        Width = 1154
        Height = 613
        TabOrder = 0
        object Panel12: TPanel
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
          object Panel29: TPanel
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
        object cxGrid3: TcxGrid
          Left = 14
          Top = 70
          Width = 1133
          Height = 530
          DragKind = dkDock
          DragMode = dmAutomatic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DADOS_CONSULTASF.UniDataSource_ITECOMPRAS
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
            Styles.ContentEven = cxStyle1
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = 'Nota'
              DataBinding.FieldName = 'NOTA'
              Width = 97
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'EMISSAO'
              Width = 90
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = 'Item'
              DataBinding.FieldName = 'ITEM'
              Width = 77
            end
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'FORNECEDOR'
              Width = 85
            end
            object cxGridDBColumn14: TcxGridDBColumn
              Caption = 'Descri'#231#227'o do Fornecedor'
              DataBinding.FieldName = 'DescricaoFornecedor'
              Width = 333
            end
            object cxGridDBColumn15: TcxGridDBColumn
              Caption = 'Barras'
              DataBinding.FieldName = 'BARRAS'
              Width = 133
            end
            object cxGridDBColumn16: TcxGridDBColumn
              DataBinding.FieldName = 'QTD'
              Width = 102
            end
            object cxGridDBColumn17: TcxGridDBColumn
              Caption = 'Pre'#231'o'
              DataBinding.FieldName = 'PRECO'
              Width = 111
            end
            object cxGridDBColumn18: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'TOTAL'
              Width = 109
            end
          end
          object cxGridBandedTableView1: TcxGridBandedTableView
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
                    Column = cxGridBandedColumn1
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
            object cxGridBandedColumn1: TcxGridBandedColumn
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn2: TcxGridBandedColumn
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object cxGridCardView1: TcxGridCardView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.CardIndent = 7
          end
          object cxGridChartView1: TcxGridChartView
            DiagramColumn.Active = True
          end
          object cxGridTableView1: TcxGridTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGridDBBandedTableView1: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
              end>
          end
          object cxGridDBCardView1: TcxGridDBCardView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.CardIndent = 7
          end
          object cxGridDBChartView1: TcxGridDBChartView
            DiagramColumn.Active = True
          end
          object cxGridDBTableView5: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
        object Panel43: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 587
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel44: TPanel
          Left = 1
          Top = 1
          Width = 1152
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel45: TPanel
          Left = 1141
          Top = 13
          Width = 12
          Height = 587
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
        object Panel46: TPanel
          Left = 1
          Top = 600
          Width = 1152
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 5
        end
      end
    end
    object VendasProduto: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 5
      Visible = False
      Index = 5
      object Panel17: TPanel
        Left = 19
        Top = 39
        Width = 1154
        Height = 613
        TabOrder = 0
        object Panel19: TPanel
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
          object Panel30: TPanel
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
        object cxGrid1: TcxGrid
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
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DADOS_CONSULTASF.UniDataSource_ITEVENDAS_ECF2
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
            Styles.ContentEven = cxStyle1
            object cxGridDBTableView1Column1: TcxGridDBColumn
              Caption = 'Or'#231'amento'
              DataBinding.FieldName = 'CUPOM'
              Width = 81
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CLIENTE'
              Width = 59
            end
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'Descri'#231#227'o do Cliente'
              DataBinding.FieldName = 'DescricaoCliente'
              Width = 358
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Item'
              DataBinding.FieldName = 'ITEM'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 55
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'DATA'
              Width = 140
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Hora'
              DataBinding.FieldName = 'HORA'
              Width = 74
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTD'
              Width = 123
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'Pre'#231'o'
              DataBinding.FieldName = 'PRECO'
              Width = 124
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'TOTAL'
              Width = 117
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object Panel47: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 587
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel48: TPanel
          Left = 1
          Top = 1
          Width = 1152
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel49: TPanel
          Left = 1141
          Top = 13
          Width = 12
          Height = 587
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
        object Panel50: TPanel
          Left = 1
          Top = 600
          Width = 1152
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 5
        end
      end
    end
    object comissao: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 6
      Visible = False
      Index = 6
      object Panel21: TPanel
        Left = 196
        Top = 216
        Width = 413
        Height = 261
        TabOrder = 0
        object Panel22: TPanel
          Left = 99
          Top = 197
          Width = 201
          Height = 40
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object BitBtn3: TBitBtn
            Left = 9
            Top = 7
            Width = 92
            Height = 25
            Caption = '&Impress'#227'o'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
              8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
              8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
              8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
              03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
              03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
              33333337FFFF7733333333300000033333333337777773333333}
            NumGlyphs = 2
            TabOrder = 0
            OnClick = BitBtn3Click
          end
          object BitBtn4: TBitBtn
            Left = 112
            Top = 7
            Width = 75
            Height = 25
            Caption = '&Sair'
            Kind = bkClose
            NumGlyphs = 2
            TabOrder = 1
          end
        end
        object Panel23: TPanel
          Left = 51
          Top = 19
          Width = 325
          Height = 67
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 1
          object Label20: TLabel
            Left = 9
            Top = 15
            Width = 51
            Height = 13
            Caption = 'Data I&ncial'
          end
          object Label21: TLabel
            Left = 9
            Top = 45
            Width = 48
            Height = 13
            Caption = 'Data &Final'
          end
          object datini: TDateEdit
            Left = 74
            Top = 7
            Width = 114
            Height = 21
            AutoSelect = False
            Ctl3D = True
            NumGlyphs = 2
            ParentCtl3D = False
            YearDigits = dyFour
            TabOrder = 0
          end
          object DatFim: TDateEdit
            Left = 74
            Top = 39
            Width = 114
            Height = 21
            AutoSelect = False
            Ctl3D = True
            NumGlyphs = 2
            ParentCtl3D = False
            YearDigits = dyFour
            TabOrder = 1
          end
          object BitBtn5: TBitBtn
            Left = 194
            Top = 6
            Width = 125
            Height = 22
            Caption = 'Copia p/Data Final'
            TabOrder = 2
            OnClick = BitBtn5Click
          end
        end
        object Panel24: TPanel
          Left = 20
          Top = 107
          Width = 376
          Height = 50
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 2
          object Label39: TLabel
            Left = 5
            Top = 2
            Width = 33
            Height = 13
            Caption = 'C'#243'&digo'
          end
          object ComboEdit1: TComboEdit
            Left = 5
            Top = 17
            Width = 64
            Height = 21
            EditMask = '99999;0;_'
            GlyphKind = gkEllipsis
            MaxLength = 5
            NumGlyphs = 1
            TabOrder = 0
            Text = ''
            OnButtonClick = ComboEdit1ButtonClick
            OnChange = ComboEdit1Change
            OnExit = ComboEdit1Exit
            OnKeyDown = ComboEdit1KeyDown
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 71
            Top = 17
            Width = 290
            Height = 21
            KeyField = 'CODIGO'
            ListField = 'NOME'
            ListSource = DADOS_CADASTROSf.aSource_VENDEDORES_Drop
            TabOrder = 1
          end
        end
        object CheckBox4: TCheckBox
          Left = 96
          Top = 174
          Width = 209
          Height = 17
          Caption = 'T&odos os Vendedore com Total no  final'
          TabOrder = 3
        end
        object Panel55: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 235
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
        object Panel56: TPanel
          Left = 1
          Top = 1
          Width = 411
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 5
        end
        object Panel57: TPanel
          Left = 1
          Top = 248
          Width = 411
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 6
        end
        object Panel58: TPanel
          Left = 400
          Top = 13
          Width = 12
          Height = 235
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 7
        end
      end
    end
    object RetiradasSuprimentos: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 750
      Align = alClient
      TabOrder = 7
      Index = 7
      ExplicitHeight = 0
      object Panel51: TPanel
        Left = 144
        Top = 152
        Width = 401
        Height = 417
        TabOrder = 0
        object Panel52: TPanel
          Left = 20
          Top = 22
          Width = 361
          Height = 87
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object Label43: TLabel
            Left = 11
            Top = 17
            Width = 71
            Height = 13
            Caption = 'Hist'#243'rico Inicial'
          end
          object Datinix: TLabel
            Left = 11
            Top = 57
            Width = 66
            Height = 13
            Caption = 'Hist'#243'rico Final'
          end
          object BitBtn6: TBitBtn
            Left = 208
            Top = 12
            Width = 144
            Height = 22
            Caption = 'Copia p/Hist'#243'rico Final'
            TabOrder = 1
            OnClick = BitBtn6Click
          end
          object ComboEdit2: TComboEdit
            Left = 102
            Top = 12
            Width = 100
            Height = 21
            GlyphKind = gkEllipsis
            NumGlyphs = 1
            TabOrder = 0
            Text = '1'
            OnButtonClick = ComboEdit2ButtonClick
            OnKeyDown = ComboEdit2KeyDown
          end
          object ComboEdit3: TComboEdit
            Left = 102
            Top = 52
            Width = 100
            Height = 21
            GlyphKind = gkEllipsis
            NumGlyphs = 1
            TabOrder = 2
            Text = '9999999999'
            OnButtonClick = ComboEdit3ButtonClick
            OnKeyDown = ComboEdit3KeyDown
          end
        end
        object Panel53: TPanel
          Left = 103
          Top = 357
          Width = 194
          Height = 40
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 2
          object BitBtn8: TBitBtn
            Left = 11
            Top = 6
            Width = 92
            Height = 26
            Caption = '&Impress'#227'o'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
              8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
              8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
              8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
              03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
              03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
              33333337FFFF7733333333300000033333333337777773333333}
            NumGlyphs = 2
            TabOrder = 0
            OnClick = BitBtn8Click
          end
          object BitBtn9: TBitBtn
            Left = 110
            Top = 6
            Width = 75
            Height = 25
            Caption = '&Sair'
            Kind = bkClose
            NumGlyphs = 2
            TabOrder = 1
          end
        end
        object Panel54: TPanel
          Left = 20
          Top = 195
          Width = 361
          Height = 87
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 3
          object Label44: TLabel
            Left = 9
            Top = 23
            Width = 53
            Height = 13
            Caption = 'Data Inicial'
          end
          object Label45: TLabel
            Left = 9
            Top = 56
            Width = 48
            Height = 13
            Caption = 'Data Final'
          end
          object DateEdit2: TDateEdit
            Left = 78
            Top = 15
            Width = 134
            Height = 21
            AutoSelect = False
            Ctl3D = True
            NumGlyphs = 2
            ParentCtl3D = False
            YearDigits = dyFour
            TabOrder = 0
          end
          object DateEdit3: TDateEdit
            Left = 78
            Top = 50
            Width = 134
            Height = 21
            AutoSelect = False
            Ctl3D = True
            NumGlyphs = 2
            ParentCtl3D = False
            YearDigits = dyFour
            TabOrder = 1
          end
          object BitBtn10: TBitBtn
            Left = 223
            Top = 14
            Width = 131
            Height = 22
            Caption = 'Copia p/Data Final'
            TabOrder = 2
            OnClick = BitBtn10Click
          end
        end
        object GroupBox5: TGroupBox
          Left = 135
          Top = 290
          Width = 150
          Height = 58
          TabOrder = 4
          object RadioButton7: TRadioButton
            Left = 7
            Top = 13
            Width = 96
            Height = 17
            Caption = '&Retiradas'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RadioButton8: TRadioButton
            Left = 7
            Top = 36
            Width = 130
            Height = 17
            Caption = 'Su&primentos'
            TabOrder = 1
          end
        end
        object Panel59: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 391
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 5
          ExplicitHeight = 335
        end
        object Panel60: TPanel
          Left = 1
          Top = 1
          Width = 399
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 6
          ExplicitWidth = 396
        end
        object Panel61: TPanel
          Left = 1
          Top = 404
          Width = 399
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 7
          ExplicitTop = 348
          ExplicitWidth = 396
        end
        object Panel62: TPanel
          Left = 388
          Top = 13
          Width = 12
          Height = 391
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 8
          ExplicitLeft = 385
          ExplicitHeight = 335
        end
        object Panel115: TPanel
          Left = 20
          Top = 111
          Width = 361
          Height = 82
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 1
          object Label1: TLabel
            Left = 146
            Top = 15
            Width = 63
            Height = 13
            Caption = 'Sub-Historico'
          end
          object ComboEdit5: TComboEdit
            Left = 114
            Top = 56
            Width = 119
            Height = 21
            GlyphKind = gkEllipsis
            NumGlyphs = 1
            TabOrder = 0
            Text = ''
            OnButtonClick = ComboEdit2ButtonClick
            OnExit = ComboEdit5Exit
            OnKeyDown = ComboEdit5KeyDown
          end
        end
      end
    end
    object NxNotebookSheet69: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 8
      Visible = False
      Index = 8
      object Panel10: TPanel
        Left = 243
        Top = 72
        Width = 262
        Height = 121
        TabOrder = 0
        object Panel15: TPanel
          Left = 21
          Top = 64
          Width = 218
          Height = 40
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object BitBtn2: TBitBtn
            Left = 11
            Top = 7
            Width = 113
            Height = 25
            Caption = '&Impress'#227'o'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
              8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
              8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
              8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
              03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
              03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
              33333337FFFF7733333333300000033333333337777773333333}
            NumGlyphs = 2
            TabOrder = 0
            OnClick = BitBtn2Click
          end
          object BitBtn16: TBitBtn
            Left = 130
            Top = 7
            Width = 75
            Height = 25
            Caption = '&Sair'
            Kind = bkClose
            NumGlyphs = 2
            TabOrder = 1
          end
        end
        object MaskEdit4: TMaskEdit
          Left = 109
          Top = 26
          Width = 50
          Height = 21
          Ctl3D = True
          EditMask = '9999;0;_'
          MaxLength = 4
          ParentCtl3D = False
          TabOrder = 1
          Text = ''
        end
        object Panel63: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 95
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel64: TPanel
          Left = 1
          Top = 1
          Width = 260
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel65: TPanel
          Left = 1
          Top = 108
          Width = 260
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
        object Panel66: TPanel
          Left = 249
          Top = 13
          Width = 12
          Height = 95
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 5
        end
      end
    end
    object NxNotebookSheet610: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 9
      Visible = False
      Index = 9
      object Panel7: TPanel
        Left = 226
        Top = 232
        Width = 579
        Height = 79
        TabOrder = 0
        object Button37: TButton
          Left = 109
          Top = 19
          Width = 115
          Height = 41
          Caption = 'Endereco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Button40Click
        end
        object Button40: TButton
          Left = 23
          Top = 19
          Width = 85
          Height = 41
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button40Click
        end
        object Button41: TButton
          Left = 311
          Top = 19
          Width = 90
          Height = 41
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = Button40Click
        end
        object Button42: TButton
          Left = 225
          Top = 19
          Width = 85
          Height = 41
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button40Click
        end
        object Panel67: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 53
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 6
        end
        object Panel68: TPanel
          Left = 1
          Top = 1
          Width = 577
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 7
        end
        object Panel69: TPanel
          Left = 1
          Top = 66
          Width = 577
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 8
        end
        object Panel70: TPanel
          Left = 566
          Top = 13
          Width = 12
          Height = 53
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 9
        end
        object Button4: TButton
          Left = 473
          Top = 19
          Width = 86
          Height = 41
          Caption = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = Button40Click
        end
        object Button6: TButton
          Left = 401
          Top = 19
          Width = 72
          Height = 41
          Caption = 'CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = Button40Click
        end
      end
    end
    object Inadimplentes: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 10
      Visible = False
      Index = 10
      object Panel96: TPanel
        Left = 57
        Top = 66
        Width = 1154
        Height = 655
        TabOrder = 0
        object Panel97: TPanel
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
          object Panel98: TPanel
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
        object cxGrid7: TcxGrid
          Left = 11
          Top = 68
          Width = 1132
          Height = 507
          DragKind = dkDock
          DragMode = dmAutomatic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView7: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DataFinanceiro.Source_INADIMPLENTES
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
            Styles.ContentEven = Cadastros_FRM.cxStyle1
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'NUMERO'
              Width = 86
            end
            object cxGridDBColumn28: TcxGridDBColumn
              Caption = 'Ordem'
              DataBinding.FieldName = 'ORDEM'
              Width = 52
            end
            object cxGridDBColumn29: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              Width = 58
            end
            object cxGridDBColumn30: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'Descri'#231#227'odoCliente'
              Width = 262
            end
            object cxGridDBColumn31: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'EMISSAO'
              Width = 85
            end
            object cxGridDBColumn32: TcxGridDBColumn
              Caption = 'Vencimento'
              DataBinding.FieldName = 'VENCIMENTO'
              Width = 96
            end
            object cxGridDBColumn33: TcxGridDBColumn
              DataBinding.FieldName = 'Dias'
              Width = 41
            end
            object cxGridDBColumn34: TcxGridDBColumn
              Caption = 'Recebimento'
              DataBinding.FieldName = 'RECEBIMENTO'
              Width = 104
            end
            object cxGridDBColumn35: TcxGridDBColumn
              Caption = 'Valor Recebido'
              DataBinding.FieldName = 'VALOR_RECEBIDO'
              Width = 128
            end
            object cxGridDBColumn36: TcxGridDBColumn
              Caption = 'Varlor'
              DataBinding.FieldName = 'VALOR'
              Width = 97
            end
            object cxGridDBColumn37: TcxGridDBColumn
              DataBinding.FieldName = 'Valor Devido'
              Width = 121
            end
          end
          object cxGridBandedTableView4: TcxGridBandedTableView
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
                    Column = cxGridBandedColumn7
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
            object cxGridBandedColumn7: TcxGridBandedColumn
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridBandedColumn8: TcxGridBandedColumn
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object cxGridCardView4: TcxGridCardView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.CardIndent = 7
          end
          object cxGridChartView4: TcxGridChartView
            DiagramColumn.Active = True
          end
          object cxGridTableView4: TcxGridTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGridDBBandedTableView4: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
              end>
          end
          object cxGridDBCardView4: TcxGridDBCardView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.CardIndent = 7
          end
          object cxGridDBChartView4: TcxGridDBChartView
            DiagramColumn.Active = True
          end
          object cxGridDBTableView11: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGridLevel5: TcxGridLevel
            GridView = cxGridDBTableView7
          end
        end
        object Panel99: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 568
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel100: TPanel
          Left = 1
          Top = 1
          Width = 1152
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel105: TPanel
          Left = 1141
          Top = 13
          Width = 12
          Height = 568
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
        object Panel106: TPanel
          Left = 1
          Top = 642
          Width = 1152
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 5
        end
        object Panel111: TPanel
          Left = 1
          Top = 581
          Width = 1152
          Height = 61
          Align = alBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          object Label4: TLabel
            Left = 173
            Top = 35
            Width = 36
            Height = 16
            Caption = '<F7>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Panel112: TPanel
            Left = 1
            Top = 1
            Width = 1150
            Height = 12
            Align = alTop
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 3
          end
          object Panel113: TPanel
            Left = 1
            Top = 13
            Width = 12
            Height = 47
            Align = alLeft
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 4
          end
          object Panel114: TPanel
            Left = 1139
            Top = 13
            Width = 12
            Height = 47
            Align = alRight
            BevelOuter = bvNone
            Color = 10053171
            ParentBackground = False
            TabOrder = 5
          end
          object ComboEdit4: TComboEdit
            Left = 212
            Top = 26
            Width = 95
            Height = 29
            Ctl3D = False
            GlyphKind = gkEllipsis
            NumGlyphs = 1
            ParentCtl3D = False
            TabOrder = 1
            Text = ''
            OnKeyDown = ComboEdit4KeyDown
          end
          object Button5: TButton
            Left = 19
            Top = 25
            Width = 148
            Height = 30
            Caption = 'Consulta por &Clientes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = Button5Click
          end
          object Button2: TButton
            Left = 350
            Top = 25
            Width = 319
            Height = 30
            Caption = 'Volta Vencimentos para o Contas a Receber'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            OnClick = Button2Click
          end
          object Button3: TButton
            Left = 320
            Top = 32
            Width = 24
            Height = 10
            TabOrder = 2
          end
        end
      end
    end
    object NxNotebookSheet612: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 11
      Visible = False
      Index = 11
      object Panel13: TPanel
        Left = 125
        Top = 127
        Width = 273
        Height = 257
        TabOrder = 0
        object Panel14: TPanel
          Left = 29
          Top = 195
          Width = 219
          Height = 40
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object BitBtn17: TBitBtn
            Left = 11
            Top = 7
            Width = 113
            Height = 25
            Caption = '&Impress'#227'o'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
              8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
              8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
              8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
              03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
              03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
              33333337FFFF7733333333300000033333333337777773333333}
            NumGlyphs = 2
            TabOrder = 0
            OnClick = BitBtn17Click
          end
          object BitBtn18: TBitBtn
            Left = 130
            Top = 7
            Width = 75
            Height = 25
            Caption = '&Sair'
            Kind = bkClose
            NumGlyphs = 2
            TabOrder = 1
          end
        end
        object RadioGroup2: TRadioGroup
          Left = 24
          Top = 18
          Width = 229
          Height = 107
          Caption = 'Aniversariante de hoje at'#233
          TabOrder = 1
        end
        object RadioButton9: TRadioButton
          Left = 55
          Top = 69
          Width = 180
          Height = 17
          Caption = '<F6> 30 dias p/frente'
          TabOrder = 2
        end
        object RadioButton10: TRadioButton
          Left = 55
          Top = 45
          Width = 180
          Height = 17
          Caption = '<F5> 7 dias p/frente'
          Checked = True
          TabOrder = 3
          TabStop = True
        end
        object RadioButton11: TRadioButton
          Left = 55
          Top = 93
          Width = 180
          Height = 17
          Caption = '<F7> Ano inteiro'
          TabOrder = 4
        end
        object fd: TCheckBox
          Left = 52
          Top = 150
          Width = 180
          Height = 17
          Caption = 'Data de Anivers'#225'rio'
          TabOrder = 5
        end
        object Panel71: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 231
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 6
        end
        object Panel72: TPanel
          Left = 1
          Top = 1
          Width = 271
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 7
        end
        object Panel73: TPanel
          Left = 1
          Top = 244
          Width = 271
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 8
        end
        object Panel74: TPanel
          Left = 260
          Top = 13
          Width = 12
          Height = 231
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 9
        end
      end
    end
    object NxNotebookSheet61: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 12
      Visible = False
      Index = 12
    end
    object NxNotebookSheet62: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 13
      Visible = False
      Index = 13
    end
    object NxNotebookSheet63: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 14
      Visible = False
      Index = 14
    end
    object NxNotebookSheet613: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 15
      Visible = False
      Index = 15
    end
    object NxNotebookSheet614: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 16
      Visible = False
      Index = 16
    end
    object ConsultaVeiculosx: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 17
      Visible = False
      Index = 17
      object Panel16: TPanel
        Left = 144
        Top = 174
        Width = 264
        Height = 199
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label72: TLabel
          Left = 84
          Top = 18
          Width = 101
          Height = 38
          Caption = '&PLACA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -27
          Font.Name = 'Arial Black'
          Font.Style = []
          ParentFont = False
        end
        object ComboEdit9: TComboEdit
          Left = 29
          Top = 61
          Width = 206
          Height = 41
          CharCase = ecUpperCase
          EditMask = 'AAA-AAAA;0;_'
          GlyphKind = gkEllipsis
          MaxLength = 8
          NumGlyphs = 1
          TabOrder = 0
          Text = ''
          OnButtonClick = ComboEdit9ButtonClick
          OnKeyDown = ComboEdit9KeyDown
        end
        object Button1: TButton
          Left = 29
          Top = 114
          Width = 206
          Height = 55
          Caption = '&Imprimir'
          TabOrder = 1
          OnClick = Button1Click
        end
        object Panel75: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 173
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel76: TPanel
          Left = 251
          Top = 13
          Width = 12
          Height = 173
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel77: TPanel
          Left = 1
          Top = 186
          Width = 262
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
        object Panel78: TPanel
          Left = 1
          Top = 1
          Width = 262
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 5
        end
      end
    end
    object NxNotebookSheet616: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 18
      Visible = False
      Index = 18
      object Panel20: TPanel
        Left = 89
        Top = 128
        Width = 816
        Height = 417
        TabOrder = 0
      end
    end
    object NxNotebookSheet617: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1297
      Height = 0
      TabOrder = 19
      Visible = False
      Index = 19
      object Panel18: TPanel
        Left = 81
        Top = 120
        Width = 1154
        Height = 584
        TabOrder = 0
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 40
    Top = 816
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clMenuBar
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clMenu
      TextColor = clGradientActiveCaption
    end
  end
  object SUB_HIST: TUniTable
    TableName = 'SUB_HIST'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 964
    Top = 400
    object SUB_HISTCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SUB_HISTNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object SUB_HISTHISTORIC: TIntegerField
      FieldName = 'HISTORIC'
    end
  end
end
