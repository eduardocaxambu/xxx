inherited GERALF: TGERALF
  BorderStyle = bsNone
  Caption = 'GERALF'
  ClientHeight = 859
  ClientWidth = 1330
  Position = poDesktopCenter
  Visible = False
  WindowState = wsNormal
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 1330
  ExplicitHeight = 859
  PixelsPerInch = 96
  TextHeight = 13
  object NxNotebook61: TNxNotebook6
    Left = 14
    Top = 8
    Width = 1291
    Height = 843
    TabOrder = 0
    ActivePage = NxNotebookSheet61
    DesignButtons = False
    object NxNotebookSheet61: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1291
      Height = 808
      Align = alClient
      TabOrder = 0
      object Panel6: TPanel
        Left = 20
        Top = 11
        Width = 1261
        Height = 774
        ParentBackground = False
        TabOrder = 0
        object Panel18: TPanel
          Left = 15
          Top = 15
          Width = 1232
          Height = 740
          TabOrder = 0
          object Panel20: TPanel
            Left = 5
            Top = -20
            Width = 1222
            Height = 753
            TabOrder = 0
            object Panel2: TPanel
              Left = 1
              Top = 1
              Width = 1220
              Height = 328
              Align = alTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object cxGrid9: TcxGrid
                Left = 69
                Top = 38
                Width = 898
                Height = 112
                DragKind = dkDock
                DragMode = dmAutomatic
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView9: TcxGridDBTableView
                  OnKeyUp = cxGridDBTableView9KeyUp
                  OnMouseUp = cxGridDBTableView9MouseUp
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOSFRENTEf.UniDataSource2
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
                  object cxGridDBTableView9CUPOM: TcxGridDBColumn
                    Caption = 'Lan'#231'amento'
                    DataBinding.FieldName = 'CUPOM'
                    Width = 61
                  end
                  object cxGridDBTableView9DATA: TcxGridDBColumn
                    Caption = 'Data'
                    DataBinding.FieldName = 'DATA'
                    Width = 68
                  end
                  object cxGridDBTableView9HORA: TcxGridDBColumn
                    Caption = 'Hora'
                    DataBinding.FieldName = 'HORA'
                    Width = 68
                  end
                  object cxGridDBTableView9CLIENTE: TcxGridDBColumn
                    Caption = 'Cod.Clie.'
                    DataBinding.FieldName = 'CLIENTE'
                    Width = 38
                  end
                  object cxGridDBTableView9Column2: TcxGridDBColumn
                    DataBinding.FieldName = 'Descri'#231#227'o'
                    Width = 138
                  end
                  object cxGridDBTableView9TOT_VENDA: TcxGridDBColumn
                    Caption = 'Total da Venda'
                    DataBinding.FieldName = 'TOT_VENDA'
                    Width = 71
                  end
                  object cxGridDBTableView9FRETE: TcxGridDBColumn
                    Caption = 'Frete'
                    DataBinding.FieldName = 'FRETE'
                    Width = 72
                  end
                  object cxGridDBTableView9TAXAENTREGA: TcxGridDBColumn
                    Caption = 'Entrega'
                    DataBinding.FieldName = 'TAXAENTREGA'
                    Width = 70
                  end
                  object cxGridDBTableView9ACRESCIMO: TcxGridDBColumn
                    Caption = 'Acrescimo'
                    DataBinding.FieldName = 'ACRESCIMO'
                    Width = 70
                  end
                  object cxGridDBTableView9DESCONTO: TcxGridDBColumn
                    Caption = 'Desconto'
                    DataBinding.FieldName = 'DESCONTO'
                    Width = 72
                  end
                  object cxGridDBTableView9TOT_TOTALPAGO: TcxGridDBColumn
                    Caption = 'Total Pago'
                    DataBinding.FieldName = 'TOT_TOTALPAGO'
                    Width = 72
                  end
                  object cxGridDBTableView9TOT_TROCO: TcxGridDBColumn
                    Caption = 'Troco'
                    DataBinding.FieldName = 'TOT_TROCO'
                    Width = 71
                  end
                end
                object cxGridLevel9: TcxGridLevel
                  GridView = cxGridDBTableView9
                end
              end
              object Panel11: TPanel
                Left = 1
                Top = 315
                Width = 1218
                Height = 12
                Align = alBottom
                BevelOuter = bvNone
                Color = 10053171
                ParentBackground = False
                TabOrder = 2
              end
              object Panel16: TPanel
                Left = 1
                Top = 184
                Width = 1218
                Height = 131
                Align = alBottom
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object Label1: TLabel
                  Left = 11
                  Top = 8
                  Width = 94
                  Height = 19
                  Caption = 'Observa'#231#227'o'
                end
                object Button3: TButton
                  Left = 6
                  Top = 33
                  Width = 109
                  Height = 43
                  Caption = 'Editar'
                  TabOrder = 0
                  OnClick = Button3Click
                end
                object Button4: TButton
                  Left = 6
                  Top = 82
                  Width = 109
                  Height = 43
                  Caption = 'Confirmar'
                  TabOrder = 1
                  OnClick = Button4Click
                end
                object DBMemo1: TDBMemo
                  Left = 121
                  Top = 3
                  Width = 422
                  Height = 122
                  DataField = 'OBS'
                  DataSource = DADOSFRENTEf.UniDataSource2
                  Enabled = False
                  TabOrder = 2
                end
                object Panel4: TPanel
                  Left = 549
                  Top = -2
                  Width = 672
                  Height = 133
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 3
                  object cxGrid10: TcxGrid
                    Left = 36
                    Top = 19
                    Width = 526
                    Height = 101
                    DragKind = dkDock
                    DragMode = dmAutomatic
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
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
                      object cxGridDBTableView10FORMADEPAGAMENTO: TcxGridDBColumn
                        Caption = 'Forma de Pagamento'
                        DataBinding.FieldName = 'FORMADEPAGAMENTO'
                        Width = 180
                      end
                      object cxGridDBTableView10TOTALPAGO: TcxGridDBColumn
                        Caption = 'Valor Pago'
                        DataBinding.FieldName = 'TOTALPAGO'
                        Width = 66
                      end
                      object cxGridDBTableView10VALOR: TcxGridDBColumn
                        Caption = 'Valor da Venda'
                        DataBinding.FieldName = 'VALOR'
                        Width = 70
                      end
                      object cxGridDBTableView10TROCO: TcxGridDBColumn
                        Caption = 'Troco'
                        DataBinding.FieldName = 'TROCO'
                        Width = 65
                      end
                      object cxGridDBTableView10Column1: TcxGridDBColumn
                        Caption = 'QTD Parcelas'
                        DataBinding.FieldName = 'PARCELA'
                        Width = 80
                      end
                      object cxGridDBTableView10AVISTAPRAZO: TcxGridDBColumn
                        Caption = 'APC'
                        DataBinding.FieldName = 'AVISTAPRAZO'
                        Width = 35
                      end
                    end
                    object cxGridLevel10: TcxGridLevel
                      GridView = cxGridDBTableView10
                    end
                  end
                end
              end
              object Panel15: TPanel
                Left = 1
                Top = 172
                Width = 1218
                Height = 12
                Align = alBottom
                BevelOuter = bvNone
                Color = 10053171
                ParentBackground = False
                TabOrder = 3
              end
            end
            object Panel19: TPanel
              Left = 1
              Top = 674
              Width = 1220
              Height = 78
              Align = alBottom
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object Label20: TLabel
                Left = 661
                Top = 50
                Width = 199
                Height = 16
                Caption = '<F5>Digite o N'#186' do Or'#231'amento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 299
                Top = 53
                Width = 228
                Height = 16
                Caption = '<F6>Consulta por Data de Emiss'#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 161
                Top = 54
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
              object CheckBox9: TCheckBox
                Left = 247
                Top = 20
                Width = 195
                Height = 17
                Caption = '&Retorna Itens da Venda'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object MaskEdit1: TMaskEdit
                Left = 865
                Top = 47
                Width = 80
                Height = 24
                EditMask = '999999999;0;_'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                MaxLength = 9
                ParentFont = False
                TabOrder = 1
                Text = ''
                OnKeyDown = MaskEdit1KeyDown
              end
              object Button65: TButton
                Left = 7
                Top = 12
                Width = 234
                Height = 30
                Caption = '&Devolu'#231#227'o < Cancelar Venda >'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnClick = Button65Click
              end
              object Button1: TButton
                Left = 949
                Top = 44
                Width = 86
                Height = 30
                Caption = '&Or'#231'amento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                OnClick = Button1Click
              end
              object Button2: TButton
                Left = 1038
                Top = 44
                Width = 158
                Height = 30
                Caption = 'Imprime &Promiss'#243'rias'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
                OnClick = Button2Click
              end
              object Button5: TButton
                Left = 7
                Top = 44
                Width = 148
                Height = 30
                Caption = 'Consulta por &Clientes'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                OnClick = Button5Click
              end
              object DateEdit3: TDateEdit
                Left = 532
                Top = 46
                Width = 126
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
                TabOrder = 6
                OnKeyDown = DateEdit3KeyDown
              end
              object ComboEdit1: TComboEdit
                Left = 200
                Top = 45
                Width = 95
                Height = 29
                Ctl3D = False
                GlyphKind = gkEllipsis
                NumGlyphs = 1
                ParentCtl3D = False
                TabOrder = 7
                Text = ''
                OnButtonClick = ComboEdit1ButtonClick
                OnKeyDown = ComboEdit1KeyDown
              end
            end
            object Panel21: TPanel
              Left = 1
              Top = 329
              Width = 1220
              Height = 339
              Align = alTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object Panel14: TPanel
                Left = 1
                Top = 326
                Width = 1218
                Height = 12
                Align = alBottom
                BevelOuter = bvNone
                Color = 10053171
                ParentBackground = False
                TabOrder = 0
              end
              object Panel3: TPanel
                Left = 1
                Top = 1
                Width = 1218
                Height = 130
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object Panel12: TPanel
                  Left = 1
                  Top = 117
                  Width = 1216
                  Height = 12
                  Align = alBottom
                  BevelOuter = bvNone
                  Color = 10053171
                  ParentBackground = False
                  TabOrder = 0
                end
                object cxGrid1: TcxGrid
                  Left = 222
                  Top = 5
                  Width = 411
                  Height = 73
                  DragKind = dkDock
                  DragMode = dmAutomatic
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  LookAndFeel.Kind = lfUltraFlat
                  LookAndFeel.NativeStyle = True
                  object cxGridDBTableView7: TcxGridDBTableView
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
                    object cxGridDBTableView7NUMERO: TcxGridDBColumn
                      Caption = 'N'#250'mero'
                      DataBinding.FieldName = 'NUMERO'
                      Width = 40
                    end
                    object cxGridDBTableView7ORDEM: TcxGridDBColumn
                      Caption = 'Parcela'
                      DataBinding.FieldName = 'ORDEM'
                      Width = 20
                    end
                    object cxGridDBTableView7EMISSAO: TcxGridDBColumn
                      Caption = 'Emiss'#227'o'
                      DataBinding.FieldName = 'EMISSAO'
                      Width = 40
                    end
                    object cxGridDBTableView7VENCIMENTO: TcxGridDBColumn
                      Caption = 'Vencimento'
                      DataBinding.FieldName = 'VENCIMENTO'
                      Width = 40
                    end
                    object cxGridDBTableView7Column1: TcxGridDBColumn
                      DataBinding.FieldName = 'Dias'
                      Width = 25
                    end
                    object cxGridDBTableView7RECEBIMENTO: TcxGridDBColumn
                      Caption = 'Recebimento'
                      DataBinding.FieldName = 'RECEBIMENTO'
                      Width = 40
                    end
                    object cxGridDBTableView7VALOR: TcxGridDBColumn
                      Caption = 'Valor'
                      DataBinding.FieldName = 'VALOR'
                      Width = 50
                    end
                    object cxGridDBTableView7Column2: TcxGridDBColumn
                      DataBinding.FieldName = 'Valor Devido'
                      Width = 50
                    end
                    object cxGridDBTableView7Column4: TcxGridDBColumn
                      Caption = 'Formas de Recebimento'
                      DataBinding.FieldName = 'MEIOSPAGAMENTO'
                      Visible = False
                      Width = 50
                    end
                    object cxGridDBTableView7VALOR_RECEBIDO: TcxGridDBColumn
                      Caption = 'Valor Recebido'
                      DataBinding.FieldName = 'VALOR_RECEBIDO'
                      Width = 50
                    end
                    object cxGridDBTableView7Column3: TcxGridDBColumn
                      Caption = 'Formas de Recebimento '
                      DataBinding.FieldName = 'MEIOSPAGAMENTO'
                      Width = 170
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
              end
              object Panel1: TPanel
                Left = 1
                Top = 137
                Width = 1218
                Height = 189
                Align = alBottom
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                object cxGrid6: TcxGrid
                  Left = 121
                  Top = 6
                  Width = 879
                  Height = 98
                  DragKind = dkDock
                  DragMode = dmAutomatic
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  LookAndFeel.Kind = lfUltraFlat
                  LookAndFeel.NativeStyle = True
                  object cxGridDBTableView5: TcxGridDBTableView
                    Navigator.Buttons.CustomButtons = <>
                    DataController.DataSource = DADOSFRENTEf.UniDataSource1
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
                    object cxGridDBTableView9DESCRICAO: TcxGridDBColumn
                      Caption = 'Descri'#231#227'o'
                      DataBinding.FieldName = 'DESCRICAO'
                      Width = 214
                    end
                    object cxGridDBTableView9ITEM: TcxGridDBColumn
                      Caption = 'Item'
                      DataBinding.FieldName = 'ITEM'
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Width = 32
                    end
                    object cxGridDBTableView9Column1: TcxGridDBColumn
                      Caption = 'C'#243'digo'
                      DataBinding.FieldName = 'CODIGO'
                      Width = 32
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
                    object cxGridDBTableView5Column7: TcxGridDBColumn
                      Caption = 'Localiza'#231#227'o'
                      DataBinding.FieldName = 'localiza'
                      Width = 70
                    end
                  end
                  object cxGridLevel5: TcxGridLevel
                    GridView = cxGridDBTableView5
                  end
                end
              end
            end
          end
        end
        object Panel31: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 748
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 1
        end
        object Panel36: TPanel
          Left = 1
          Top = 1
          Width = 1259
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 2
        end
        object Panel40: TPanel
          Left = 1
          Top = 761
          Width = 1259
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel32: TPanel
          Left = 1248
          Top = 13
          Width = 12
          Height = 748
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
      end
    end
    object NxNotebookSheet63: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1291
      Height = 0
      TabOrder = 1
      Visible = False
      Index = 1
      object Panel5: TPanel
        Left = 297
        Top = 227
        Width = 609
        Height = 184
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 16
          Top = 16
          Width = 575
          Height = 115
          Caption = 'Avalistas'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Label2: TLabel
            Left = 250
            Top = 65
            Width = 30
            Height = 16
            Caption = 'CPF'
          end
          object Label15: TLabel
            Left = 7
            Top = 65
            Width = 42
            Height = 16
            Caption = 'Nome'
          end
          object Label16: TLabel
            Left = 354
            Top = 17
            Width = 32
            Height = 16
            Caption = 'CGC'
          end
          object Label17: TLabel
            Left = 482
            Top = 17
            Width = 36
            Height = 16
            Caption = 'Fone'
          end
          object Label18: TLabel
            Left = 250
            Top = 17
            Width = 30
            Height = 16
            Caption = 'CPF'
          end
          object Label5: TLabel
            Left = 7
            Top = 17
            Width = 42
            Height = 16
            Caption = 'Nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 354
            Top = 65
            Width = 32
            Height = 16
            Caption = 'CGC'
          end
          object Label9: TLabel
            Left = 482
            Top = 65
            Width = 36
            Height = 16
            Caption = 'Fone'
          end
          object Edit7: TEdit
            Left = 7
            Top = 34
            Width = 235
            Height = 19
            CharCase = ecUpperCase
            Color = clInfoBk
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 40
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object Edit8: TEdit
            Left = 7
            Top = 83
            Width = 235
            Height = 19
            CharCase = ecUpperCase
            Color = clInfoBk
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 40
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
          end
          object MaskEdit3: TMaskEdit
            Left = 250
            Top = 34
            Width = 96
            Height = 19
            Color = clInfoBk
            Ctl3D = False
            EditMask = '999.999.999-99;0;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 14
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            Text = ''
          end
          object MaskEdit4: TMaskEdit
            Left = 354
            Top = 34
            Width = 120
            Height = 19
            Color = clInfoBk
            Ctl3D = False
            EditMask = '99.999.999/9999-99;0;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 18
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            Text = ''
          end
          object MaskEdit5: TMaskEdit
            Left = 482
            Top = 34
            Width = 86
            Height = 19
            Color = clInfoBk
            Ctl3D = False
            EditMask = '99-9999-9999;0;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            Text = ''
          end
          object MaskEdit6: TMaskEdit
            Left = 250
            Top = 83
            Width = 96
            Height = 19
            Color = clInfoBk
            Ctl3D = False
            EditMask = '999.999.999-99;0;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 14
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
            Text = ''
          end
          object MaskEdit7: TMaskEdit
            Left = 354
            Top = 83
            Width = 120
            Height = 19
            Color = clInfoBk
            Ctl3D = False
            EditMask = '99.999.999/9999-99;0;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 18
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
            Text = ''
          end
          object MaskEdit8: TMaskEdit
            Left = 482
            Top = 83
            Width = 86
            Height = 19
            Color = clInfoBk
            Ctl3D = False
            EditMask = '99-9999-9999;0;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 12
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
            Text = ''
          end
        end
        object BitBtn25: TBitBtn
          Left = 200
          Top = 135
          Width = 106
          Height = 27
          Caption = '&Impressora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
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
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn25Click
        end
        object BitBtn1: TBitBtn
          Left = 319
          Top = 135
          Width = 106
          Height = 27
          Caption = 'Impressora &2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
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
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnClick = BitBtn1Click
        end
        object Panel7: TPanel
          Left = 1
          Top = 13
          Width = 12
          Height = 158
          Align = alLeft
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 3
        end
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 607
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 4
        end
        object Panel9: TPanel
          Left = 1
          Top = 171
          Width = 607
          Height = 12
          Align = alBottom
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 5
        end
        object Panel10: TPanel
          Left = 596
          Top = 13
          Width = 12
          Height = 158
          Align = alRight
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 6
        end
      end
    end
    object NxNotebookSheet64: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1291
      Height = 0
      TabOrder = 2
      Visible = False
      Index = 2
    end
    object NxNotebookSheet65: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1291
      Height = 0
      TabOrder = 3
      Visible = False
      Index = 3
    end
    object NxNotebookSheet66: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1291
      Height = 0
      TabOrder = 4
      Visible = False
      Index = 4
    end
    object NxNotebookSheet67: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1291
      Height = 0
      TabOrder = 5
      Visible = False
      Index = 5
    end
    object NxNotebookSheet68: TNxNotebookSheet6
      Left = 0
      Top = 0
      Width = 1291
      Height = 0
      TabOrder = 6
      Visible = False
      Index = 6
      object cxGrid2: TcxGrid
        Left = 85
        Top = 32
        Width = 500
        Height = 113
        DragKind = dkDock
        DragMode = dmAutomatic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DADOSFRENTEf.UniDataSource1
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
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            Width = 214
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Item'
            DataBinding.FieldName = 'ITEM'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 32
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Hora'
            DataBinding.FieldName = 'HORA'
            Width = 44
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
            Width = 32
          end
          object cxGridDBTableView9BARRAS: TcxGridDBColumn
            Caption = 'C'#243'digo de Barras'
            DataBinding.FieldName = 'BARRAS'
            Width = 64
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTD'
            Width = 73
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Pre'#231'o'
            DataBinding.FieldName = 'PRECO'
            Width = 74
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'TOTAL'
            Width = 70
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 32
    Top = 760
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
  object UniQuery1: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 160
    Top = 368
  end
end
