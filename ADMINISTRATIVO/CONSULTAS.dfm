inherited CONSULTASF: TCONSULTASF
  BorderStyle = bsNone
  ClientHeight = 749
  ClientWidth = 1280
  Position = poDesktopCenter
  Visible = False
  WindowState = wsNormal
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 1280
  ExplicitHeight = 749
  PixelsPerInch = 96
  TextHeight = 13
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1280
    Height = 749
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Panel8: TPanel
      Left = 19
      Top = 19
      Width = 1242
      Height = 713
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Panel4: TPanel
        Left = 12
        Top = 129
        Width = 1221
        Height = 560
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Panel3: TPanel
          Left = 28
          Top = 19
          Width = 1181
          Height = 510
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object NxNotebook61: TNxNotebook6
            Left = 24
            Top = 37
            Width = 1113
            Height = 452
            TabOrder = 0
            ActivePage = ProdutosNote
            ActivePageIndex = 2
            DesignButtons = False
            object ClientesNote: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1001
              Height = 0
              TabOrder = 0
              Visible = False
              object cxGrid2: TcxGrid
                Left = 11
                Top = 34
                Width = 425
                Height = 279
                DragKind = dkDock
                DragMode = dmAutomatic
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView7: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.DataSource1
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
                  object cxGridDBTableView7CODIGO: TcxGridDBColumn
                    Caption = 'C'#243'digo'
                    DataBinding.FieldName = 'CODIGO'
                    Width = 38
                  end
                  object cxGridDBTableView7NOME: TcxGridDBColumn
                    Caption = 'Descri'#231#227'o'
                    DataBinding.FieldName = 'NOME'
                    Width = 206
                  end
                  object cxGridDBTableView7CNPJ: TcxGridDBColumn
                    DataBinding.FieldName = 'CNPJ'
                    Width = 70
                  end
                  object cxGridDBTableView7IE: TcxGridDBColumn
                    DataBinding.FieldName = 'IE'
                    Width = 68
                  end
                  object cxGridDBTableView7ENDERECO: TcxGridDBColumn
                    Caption = 'Endere'#231'o'
                    DataBinding.FieldName = 'ENDERECO'
                    Width = 172
                  end
                  object cxGridDBTableView7BAIRRO: TcxGridDBColumn
                    Caption = 'Bairro'
                    DataBinding.FieldName = 'BAIRRO'
                    Width = 97
                  end
                  object cxGridDBTableView7CEP: TcxGridDBColumn
                    DataBinding.FieldName = 'CEP'
                    Width = 36
                  end
                  object cxGridDBTableView7CIDADE: TcxGridDBColumn
                    Caption = 'Cidade'
                    DataBinding.FieldName = 'CIDADE'
                    Width = 107
                  end
                  object cxGridDBTableView7UF: TcxGridDBColumn
                    DataBinding.FieldName = 'UF'
                  end
                  object cxGridDBTableView7CPF: TcxGridDBColumn
                    DataBinding.FieldName = 'CPF'
                    Width = 56
                  end
                end
                object cxGridLevel7: TcxGridLevel
                  GridView = cxGridDBTableView7
                end
              end
            end
            object FornecedorNote: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1113
              Height = 0
              TabOrder = 1
              Visible = False
              Index = 1
              object cxGrid17x: TcxGrid
                Left = 28
                Top = 29
                Width = 621
                Height = 279
                DragKind = dkDock
                DragMode = dmAutomatic
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView1: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.DataSource2
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
                  object cxGridDBColumn1: TcxGridDBColumn
                    Caption = 'C'#243'digo'
                    DataBinding.FieldName = 'CODIGO'
                    Width = 38
                  end
                  object cxGridDBColumn2: TcxGridDBColumn
                    Caption = 'Descri'#231#227'o'
                    DataBinding.FieldName = 'NOME'
                    Width = 206
                  end
                  object cxGridDBColumn3: TcxGridDBColumn
                    DataBinding.FieldName = 'CNPJ'
                    Width = 70
                  end
                  object cxGridDBColumn4: TcxGridDBColumn
                    DataBinding.FieldName = 'IE'
                    Width = 68
                  end
                  object cxGridDBColumn5: TcxGridDBColumn
                    Caption = 'Endere'#231'o'
                    DataBinding.FieldName = 'ENDERECO'
                    Width = 172
                  end
                  object cxGridDBColumn6: TcxGridDBColumn
                    Caption = 'Bairro'
                    DataBinding.FieldName = 'BAIRRO'
                    Width = 97
                  end
                  object cxGridDBColumn7: TcxGridDBColumn
                    DataBinding.FieldName = 'CEP'
                    Width = 36
                  end
                  object cxGridDBColumn8: TcxGridDBColumn
                    Caption = 'Cidade'
                    DataBinding.FieldName = 'CIDADE'
                    Width = 107
                  end
                  object cxGridDBColumn9: TcxGridDBColumn
                    DataBinding.FieldName = 'UF'
                  end
                  object cxGridDBColumn10: TcxGridDBColumn
                    DataBinding.FieldName = 'CPF'
                    Width = 56
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = cxGridDBTableView1
                end
              end
            end
            object ProdutosNote: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1113
              Height = 415
              Align = alClient
              TabOrder = 2
              Index = 2
              ExplicitHeight = 0
              object Panel7: TPanel
                Left = 0
                Top = 374
                Width = 1113
                Height = 41
                Align = alBottom
                Caption = 'Ver Custo'
                TabOrder = 0
                OnClick = Panel7Click
                ExplicitTop = -41
                object CheckBox1: TCheckBox
                  Left = 11
                  Top = 11
                  Width = 155
                  Height = 17
                  Caption = 'Consulta Est'#225'tica'
                  Color = 16776176
                  ParentColor = False
                  TabOrder = 0
                  Visible = False
                  WordWrap = True
                end
              end
              object cxGrid3: TcxGrid
                Left = 53
                Top = 50
                Width = 854
                Height = 230
                DragKind = dkDock
                DragMode = dmAutomatic
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial Black'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
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
                  OptionsSelection.CellSelect = False
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.GridLines = glVertical
                  OptionsView.GroupByBox = False
                  Styles.ContentEven = cxStyle1
                  object cxGridDBTableView2CODIGO: TcxGridDBColumn
                    Caption = 'C'#243'digo'
                    DataBinding.FieldName = 'CODIGO'
                    Width = 50
                  end
                  object cxGridDBTableView2BARRAS: TcxGridDBColumn
                    Caption = 'Barras'
                    DataBinding.FieldName = 'BARRAS'
                    Width = 90
                  end
                  object cxGridDBTableView2Column1: TcxGridDBColumn
                    Caption = 'Apelido'
                    DataBinding.FieldName = 'APELIDO'
                    Width = 90
                  end
                  object cxGridDBTableView2NOME: TcxGridDBColumn
                    Caption = 'Descri'#231#227'o'
                    DataBinding.FieldName = 'NOME'
                    Width = 300
                  end
                  object cxGridDBTableView2Column2: TcxGridDBColumn
                    Caption = 'Localiza'#231#227'o'
                    DataBinding.FieldName = 'LOCALIZACAO'
                    Width = 90
                  end
                  object cxGridDBTableView2QTD: TcxGridDBColumn
                    Caption = 'Quantidade'
                    DataBinding.FieldName = 'QTD'
                    Width = 95
                  end
                  object cxGridDBTableView2PRECO_CUSTO: TcxGridDBColumn
                    Caption = 'Pre'#231'o de Venda'
                    DataBinding.FieldName = 'PRECO_CONS'
                    Width = 95
                  end
                end
                object cxGridLevel2: TcxGridLevel
                  GridView = cxGridDBTableView2
                end
              end
            end
            object EstadosNote: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1001
              Height = 0
              TabOrder = 3
              Visible = False
              Index = 3
              object cxGrid1: TcxGrid
                Left = 56
                Top = 73
                Width = 854
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
                object cxGridDBTableView3: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.DataSource4
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
                  object cxGridDBTableView1CODIGO: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO'
                  end
                  object cxGridDBTableView1NOME: TcxGridDBColumn
                    DataBinding.FieldName = 'NOME'
                  end
                end
                object cxGridLevel3: TcxGridLevel
                  GridView = cxGridDBTableView3
                end
              end
            end
            object GrupoProduNote: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1001
              Height = 0
              TabOrder = 4
              Visible = False
              Index = 4
              object cxGrid4: TcxGrid
                Left = 83
                Top = 50
                Width = 854
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
                object cxGridDBTableView5: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.DataSource5
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
                  object cxGridDBTableView3CODIGO: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO'
                  end
                  object cxGridDBTableView3NOME: TcxGridDBColumn
                    DataBinding.FieldName = 'NOME'
                  end
                end
                object cxGridLevel5: TcxGridLevel
                  GridView = cxGridDBTableView5
                end
              end
            end
            object GruposClienNote: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1001
              Height = 0
              TabOrder = 5
              Visible = False
              Index = 5
              object cxGrid5: TcxGrid
                Left = 3
                Top = 50
                Width = 854
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
                object cxGridDBTableView4: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.DataSource6
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
                  object cxGridDBTableView4CODIGO: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO'
                  end
                  object cxGridDBTableView4NOME: TcxGridDBColumn
                    DataBinding.FieldName = 'NOME'
                  end
                end
                object cxGridLevel4: TcxGridLevel
                  GridView = cxGridDBTableView4
                end
              end
            end
            object GruposFornNote: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1001
              Height = 0
              TabOrder = 6
              Visible = False
              Index = 6
              object cxGrid6: TcxGrid
                Left = 11
                Top = 58
                Width = 854
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
                object cxGridDBTableView6: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.DataSource7
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
                  object cxGridDBColumn13: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO'
                  end
                  object cxGridDBColumn14: TcxGridDBColumn
                    DataBinding.FieldName = 'NOME'
                  end
                end
                object cxGridLevel6: TcxGridLevel
                  GridView = cxGridDBTableView6
                end
              end
            end
            object UnidadeNote: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 985
              Height = 0
              TabOrder = 7
              Visible = False
              Index = 7
              object cxGrid7: TcxGrid
                Left = 16
                Top = 58
                Width = 854
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
                object cxGridDBTableView8: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.Sou_UNIDADES
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
                  object cxGridDBTableView6UND: TcxGridDBColumn
                    DataBinding.FieldName = 'UND'
                  end
                  object cxGridDBTableView6NOME: TcxGridDBColumn
                    DataBinding.FieldName = 'NOME'
                  end
                end
                object cxGridLevel8: TcxGridLevel
                  GridView = cxGridDBTableView8
                end
              end
            end
            object VendedorNote: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1001
              Height = 0
              TabOrder = 8
              Visible = False
              Index = 8
              object cxGrid8: TcxGrid
                Left = 36
                Top = 37
                Width = 621
                Height = 279
                DragKind = dkDock
                DragMode = dmAutomatic
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView23: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.Sou_VENDEDORES
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
                  object cxGridDBColumn11: TcxGridDBColumn
                    Caption = 'C'#243'digo'
                    DataBinding.FieldName = 'CODIGO'
                    Width = 38
                  end
                  object cxGridDBColumn12: TcxGridDBColumn
                    Caption = 'Descri'#231#227'o'
                    DataBinding.FieldName = 'NOME'
                    Width = 206
                  end
                  object cxGridDBColumn76: TcxGridDBColumn
                    DataBinding.FieldName = 'CNPJ'
                    Width = 70
                  end
                  object cxGridDBColumn77: TcxGridDBColumn
                    DataBinding.FieldName = 'IE'
                    Width = 68
                  end
                  object cxGridDBColumn78: TcxGridDBColumn
                    Caption = 'Endere'#231'o'
                    DataBinding.FieldName = 'ENDERECO'
                    Width = 172
                  end
                  object cxGridDBColumn79: TcxGridDBColumn
                    Caption = 'Bairro'
                    DataBinding.FieldName = 'BAIRRO'
                    Width = 97
                  end
                  object cxGridDBColumn80: TcxGridDBColumn
                    DataBinding.FieldName = 'CEP'
                    Width = 36
                  end
                  object cxGridDBColumn81: TcxGridDBColumn
                    Caption = 'Cidade'
                    DataBinding.FieldName = 'CIDADE'
                    Width = 107
                  end
                  object cxGridDBColumn82: TcxGridDBColumn
                    DataBinding.FieldName = 'UF'
                  end
                  object cxGridDBColumn83: TcxGridDBColumn
                    DataBinding.FieldName = 'CPF'
                    Width = 56
                  end
                end
                object cxGridLevel20: TcxGridLevel
                  GridView = cxGridDBTableView23
                end
              end
            end
            object OperadorNote: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1113
              Height = 0
              TabOrder = 9
              Visible = False
              Index = 9
              object cxGrid9: TcxGrid
                Left = 44
                Top = 45
                Width = 621
                Height = 279
                DragKind = dkDock
                DragMode = dmAutomatic
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView9: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.Sou_operador
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
                  object cxGridDBColumn15: TcxGridDBColumn
                    Caption = 'C'#243'digo'
                    DataBinding.FieldName = 'CODIGO'
                    Width = 38
                  end
                  object cxGridDBColumn16: TcxGridDBColumn
                    Caption = 'Descri'#231#227'o'
                    DataBinding.FieldName = 'NOME'
                    Width = 206
                  end
                  object cxGridDBColumn17: TcxGridDBColumn
                    DataBinding.FieldName = 'CNPJ'
                    Width = 70
                  end
                  object cxGridDBColumn18: TcxGridDBColumn
                    DataBinding.FieldName = 'IE'
                    Width = 68
                  end
                  object cxGridDBColumn19: TcxGridDBColumn
                    Caption = 'Endere'#231'o'
                    DataBinding.FieldName = 'ENDERECO'
                    Width = 172
                  end
                  object cxGridDBColumn20: TcxGridDBColumn
                    Caption = 'Bairro'
                    DataBinding.FieldName = 'BAIRRO'
                    Width = 97
                  end
                  object cxGridDBColumn21: TcxGridDBColumn
                    DataBinding.FieldName = 'CEP'
                    Width = 36
                  end
                  object cxGridDBColumn22: TcxGridDBColumn
                    Caption = 'Cidade'
                    DataBinding.FieldName = 'CIDADE'
                    Width = 107
                  end
                  object cxGridDBColumn23: TcxGridDBColumn
                    DataBinding.FieldName = 'UF'
                  end
                  object cxGridDBColumn24: TcxGridDBColumn
                    DataBinding.FieldName = 'CPF'
                    Width = 56
                  end
                end
                object cxGridLevel9: TcxGridLevel
                  GridView = cxGridDBTableView9
                end
              end
            end
            object CENTROCUSTOS: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1001
              Height = 0
              TabOrder = 10
              Visible = False
              Index = 10
              object cxGrid10: TcxGrid
                Left = 3
                Top = 25
                Width = 556
                Height = 160
                DragKind = dkDock
                DragMode = dmAutomatic
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView11: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.Sou_CENCUSTO
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
                  OptionsView.GridLines = glVertical
                  OptionsView.GroupByBox = False
                  Styles.ContentEven = cxStyle1
                  object cxGridDBTableView8CODIGO: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO'
                  end
                  object cxGridDBTableView8CUSTO: TcxGridDBColumn
                    DataBinding.FieldName = 'CUSTO'
                  end
                  object cxGridDBTableView8DESCRICAO: TcxGridDBColumn
                    DataBinding.FieldName = 'DESCRICAO'
                  end
                  object cxGridDBTableView8VALOR: TcxGridDBColumn
                    DataBinding.FieldName = 'VALOR'
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
                object cxGridDBTableView14: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                end
                object cxGridLevel12: TcxGridLevel
                  GridView = cxGridDBTableView11
                end
              end
            end
            object CONTAS: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1001
              Height = 0
              TabOrder = 11
              Visible = False
              Index = 11
              object cxGrid11: TcxGrid
                Left = 37
                Top = 25
                Width = 522
                Height = 110
                DragKind = dkDock
                DragMode = dmAutomatic
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView12: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.Sou_CONTAS
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
                  OptionsView.GridLines = glVertical
                  OptionsView.GroupByBox = False
                  Styles.ContentEven = cxStyle1
                  object cxGridDBColumn75: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO'
                  end
                  object cxGridDBTableView1CONTA: TcxGridDBColumn
                    DataBinding.FieldName = 'CONTA'
                  end
                  object cxGridDBTableView1DESCRICAO: TcxGridDBColumn
                    DataBinding.FieldName = 'DESCRICAO'
                  end
                  object cxGridDBTableView1RESULTADO: TcxGridDBColumn
                    DataBinding.FieldName = 'RESULTADO'
                  end
                  object cxGridDBTableView1VALOR: TcxGridDBColumn
                    DataBinding.FieldName = 'VALOR'
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
                object cxGridDBTableView13: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                end
                object cxGridLevel11: TcxGridLevel
                  GridView = cxGridDBTableView12
                end
              end
            end
            object Bancosx: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1001
              Height = 0
              TabOrder = 12
              Visible = False
              Index = 12
              object cxGrid12: TcxGrid
                Left = 45
                Top = 33
                Width = 588
                Height = 200
                DragKind = dkDock
                DragMode = dmAutomatic
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView15: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.Sou_BANCOS
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
                  object cxGridDBTableView5BANCO: TcxGridDBColumn
                    DataBinding.FieldName = 'BANCO'
                    Width = 45
                  end
                  object cxGridDBTableView5NOME_BANCO: TcxGridDBColumn
                    DataBinding.FieldName = 'NOME_BANCO'
                    Width = 524
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
                object cxGridDBTableView16: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                end
                object cxGridLevel13: TcxGridLevel
                  GridView = cxGridDBTableView15
                end
              end
            end
            object Historico: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1001
              Height = 0
              TabOrder = 13
              Visible = False
              Index = 13
              object cxGrid13: TcxGrid
                Left = 91
                Top = 73
                Width = 438
                Height = 192
                DragKind = dkDock
                DragMode = dmAutomatic
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView17: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.Sou_HISTORIC
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
                  object cxGridDBTableView16CODIGO: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO'
                  end
                  object cxGridDBTableView16NOME: TcxGridDBColumn
                    DataBinding.FieldName = 'NOME'
                  end
                  object cxGridDBTableView16CONTA: TcxGridDBColumn
                    DataBinding.FieldName = 'CONTA'
                  end
                  object cxGridDBTableView16CUSTO: TcxGridDBColumn
                    DataBinding.FieldName = 'CUSTO'
                  end
                  object cxGridDBTableView16ATIVO: TcxGridDBColumn
                    DataBinding.FieldName = 'ATIVO'
                  end
                end
                object cxGridLevel14: TcxGridLevel
                  GridView = cxGridDBTableView17
                end
              end
            end
            object SubHistorico: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1001
              Height = 0
              TabOrder = 14
              Visible = False
              Index = 14
              object cxGrid14: TcxGrid
                Left = 208
                Top = 122
                Width = 417
                Height = 215
                DragKind = dkDock
                DragMode = dmAutomatic
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView18: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.Sou_SUB_HIST
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
                  object cxGridDBTableView17CODIGO: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO'
                  end
                  object cxGridDBTableView17NOME: TcxGridDBColumn
                    DataBinding.FieldName = 'NOME'
                  end
                  object cxGridDBTableView17HISTORIC: TcxGridDBColumn
                    DataBinding.FieldName = 'HISTORIC'
                  end
                end
                object cxGridLevel15: TcxGridLevel
                  GridView = cxGridDBTableView18
                end
              end
            end
            object Portador: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1001
              Height = 0
              TabOrder = 15
              Visible = False
              Index = 15
              object cxGrid15: TcxGrid
                Left = 208
                Top = 84
                Width = 497
                Height = 158
                DragKind = dkDock
                DragMode = dmAutomatic
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView19: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.Sou_PORTADOR
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
                  OptionsView.GridLines = glVertical
                  OptionsView.GroupByBox = False
                  Styles.ContentEven = cxStyle1
                  object cxGridDBTableView18CODIGO: TcxGridDBColumn
                    Caption = 'C'#243'digo'
                    DataBinding.FieldName = 'CODIGO'
                  end
                  object cxGridDBTableView18NOME: TcxGridDBColumn
                    Caption = 'Nome'
                    DataBinding.FieldName = 'NOME'
                  end
                  object cxGridDBTableView18CLIENTE: TcxGridDBColumn
                    Caption = 'C'#243'digo Cliente'
                    DataBinding.FieldName = 'CLIENTE'
                  end
                  object cxGridDBTableView18DadosClientes: TcxGridDBColumn
                    Caption = 'Descri'#231#227'o do Cliente'
                    DataBinding.FieldName = 'DadosClientes'
                  end
                end
                object cxGridLevel16: TcxGridLevel
                  GridView = cxGridDBTableView19
                end
              end
            end
            object VeiculosX: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1113
              Height = 0
              TabOrder = 16
              Visible = False
              Index = 16
              object cxGrid16: TcxGrid
                Left = 112
                Top = 49
                Width = 641
                Height = 119
                DragKind = dkDock
                DragMode = dmAutomatic
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView20: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.Sou_VEICULOS
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
                  object cxGridDBTableView20NOME: TcxGridDBColumn
                    Caption = 'Descri'#231#227'o do Carro'
                    DataBinding.FieldName = 'NOME'
                    Width = 200
                  end
                  object cxGridDBTableView20PLACA: TcxGridDBColumn
                    Caption = 'Placa'
                    DataBinding.FieldName = 'PLACA'
                    Width = 80
                  end
                  object cxGridDBTableView20MARCA_M: TcxGridDBColumn
                    Caption = 'Marca'
                    DataBinding.FieldName = 'MARCA_M'
                    Width = 200
                  end
                  object cxGridDBTableView20COR: TcxGridDBColumn
                    Caption = 'Cor'
                    DataBinding.FieldName = 'COR'
                    Width = 120
                  end
                  object cxGridDBTableView20ANO: TcxGridDBColumn
                    Caption = 'Ano'
                    DataBinding.FieldName = 'ANO'
                    Width = 60
                  end
                end
                object cxGridLevel17: TcxGridLevel
                  GridView = cxGridDBTableView20
                end
              end
            end
            object OBJETOS: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 1001
              Height = 0
              TabOrder = 17
              Visible = False
              Index = 17
              object cxGrid17: TcxGrid
                Left = 260
                Top = 50
                Width = 365
                Height = 167
                DragKind = dkDock
                DragMode = dmAutomatic
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView21: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.Source_OBJETOS
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
                  object cxGridDBTableView21CODIGO: TcxGridDBColumn
                    Caption = 'C'#243'digo'
                    DataBinding.FieldName = 'CODIGO'
                  end
                  object cxGridDBTableView21DESCRICAO: TcxGridDBColumn
                    Caption = 'Descri'#231#227'o'
                    DataBinding.FieldName = 'DESCRICAO'
                  end
                  object cxGridDBTableView21IDENTIFIC1: TcxGridDBColumn
                    DataBinding.FieldName = 'Identificador 1'
                  end
                  object cxGridDBTableView21IDENTIFIC2: TcxGridDBColumn
                    DataBinding.FieldName = 'Identificador 2'
                  end
                  object cxGridDBTableView21IDENTIFIC3: TcxGridDBColumn
                    DataBinding.FieldName = 'Identificador 3'
                  end
                end
                object cxGridLevel18: TcxGridLevel
                  GridView = cxGridDBTableView21
                end
              end
            end
            object Cartoes: TNxNotebookSheet6
              Left = 0
              Top = 0
              Width = 985
              Height = 0
              TabOrder = 18
              Visible = False
              Index = 18
              object cxGrid28: TcxGrid
                Left = 40
                Top = 49
                Width = 830
                Height = 193
                DragKind = dkDock
                DragMode = dmAutomatic
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView22: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = DADOS_CONSULTASF.Source_CARTOES
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
                  object cxGridDBTableView20ID: TcxGridDBColumn
                    DataBinding.FieldName = 'ID'
                  end
                  object cxGridDBTableView20DESCRICAO: TcxGridDBColumn
                    Caption = 'Descri'#231#227'o'
                    DataBinding.FieldName = 'DESCRICAO'
                  end
                  object cxGridDBTableView20DIAS: TcxGridDBColumn
                    Caption = 'Dias'
                    DataBinding.FieldName = 'DIAS'
                  end
                  object cxGridDBTableView20VALORTAXA: TcxGridDBColumn
                    Caption = '% Da Taxa'
                    DataBinding.FieldName = 'VALORTAXA'
                  end
                  object cxGridDBTableView20DEBITOCREDITO: TcxGridDBColumn
                    Caption = 'Debito ou Cr'#233'dito'
                    DataBinding.FieldName = 'DEBITOCREDITO'
                    Width = 120
                  end
                end
                object cxGridLevel19: TcxGridLevel
                  GridView = cxGridDBTableView22
                end
              end
            end
          end
        end
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 1219
          Height = 12
          Align = alTop
          BevelOuter = bvNone
          Color = 10053171
          ParentBackground = False
          TabOrder = 1
        end
      end
      object Panel1: TPanel
        Left = 1
        Top = 54
        Width = 1240
        Height = 41
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 963
          Top = 7
          Width = 229
          Height = 23
          Caption = '<F10> Limpa Descri'#231#227'o'
        end
        object Button23: TButton
          Left = 6
          Top = 3
          Width = 75
          Height = 34
          Caption = 'Meio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button23Click
        end
        object Button1: TButton
          Left = 1198
          Top = 7
          Width = 29
          Height = 25
          Caption = 'X'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 1240
        Height = 41
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel6: TPanel
        Left = 1
        Top = 42
        Width = 1240
        Height = 12
        Align = alTop
        BevelOuter = bvNone
        Color = 10053171
        ParentBackground = False
        TabOrder = 3
      end
    end
    object Panel103: TPanel
      Left = 1
      Top = 736
      Width = 1278
      Height = 12
      Align = alBottom
      BevelOuter = bvNone
      Color = 10053171
      ParentBackground = False
      TabOrder = 1
    end
    object Panel102: TPanel
      Left = 1
      Top = 13
      Width = 12
      Height = 723
      Align = alLeft
      BevelOuter = bvNone
      Color = 10053171
      ParentBackground = False
      TabOrder = 2
    end
    object Panel101: TPanel
      Left = 1
      Top = 1
      Width = 1278
      Height = 12
      Align = alTop
      BevelOuter = bvNone
      Color = 10053171
      ParentBackground = False
      TabOrder = 3
    end
    object Panel104: TPanel
      Left = 1267
      Top = 13
      Width = 12
      Height = 723
      Align = alRight
      BevelOuter = bvNone
      Color = 10053171
      ParentBackground = False
      TabOrder = 4
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 880
    Top = 448
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
end
