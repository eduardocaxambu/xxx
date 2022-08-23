inherited VISUALIZACAOF: TVISUALIZACAOF
  ClientHeight = 758
  ClientWidth = 1095
  ExplicitWidth = 1111
  ExplicitHeight = 797
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1095
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 17
      Top = 2
      Width = 64
      Height = 22
      Caption = '&+ Aumentar'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 83
      Top = 2
      Width = 62
      Height = 22
      Caption = '&- Diminuir'
    end
    object SpeedButton3: TSpeedButton
      Left = 150
      Top = 1
      Width = 104
      Height = 22
      Caption = 'Imprimir'
      Visible = False
    end
    object Label1: TLabel
      Left = 91
      Top = 38
      Width = 65
      Height = 13
      Caption = 'Epson LX-300'
    end
    object Label2: TLabel
      Left = 204
      Top = 38
      Width = 31
      Height = 13
      Caption = 'Label2'
    end
    object BitBtn1: TBitBtn
      Left = 700
      Top = 5
      Width = 47
      Height = 23
      Caption = '&Sair'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 3
    end
    object Button1: TButton
      Left = 260
      Top = 5
      Width = 107
      Height = 23
      Caption = 'Impress'#227'o Gr'#225'fica'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 487
      Top = 5
      Width = 39
      Height = 23
      Caption = 'S&alvar'
      TabOrder = 1
    end
    object Button4: TButton
      Left = 530
      Top = 4
      Width = 35
      Height = 23
      Caption = 'A&brir'
      TabOrder = 2
    end
    object Button7: TButton
      Left = 566
      Top = 5
      Width = 59
      Height = 23
      Caption = '&Imprimir-7'
      TabOrder = 4
      OnClick = Button7Click
    end
    object Button6: TButton
      Left = 653
      Top = 5
      Width = 46
      Height = 23
      Caption = 'I&mprimir'
      TabOrder = 5
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 626
      Top = 6
      Width = 25
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      DisplayFormat = '0'
      TabOrder = 6
    end
    object Button8: TButton
      Left = 23
      Top = 30
      Width = 36
      Height = 23
      Caption = 'Excel'
      TabOrder = 7
    end
    object Button10: TButton
      Left = 542
      Top = 30
      Width = 108
      Height = 23
      Caption = 'Escolher Impressora'
      TabOrder = 8
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 651
      Top = 29
      Width = 96
      Height = 23
      Caption = '&Imprimir Matricial'
      TabOrder = 9
      OnClick = Button11Click
    end
    object CheckBox1: TCheckBox
      Left = 495
      Top = 34
      Width = 41
      Height = 17
      Caption = 'USB'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object Button3: TButton
      Left = 260
      Top = 29
      Width = 107
      Height = 23
      Caption = 'Impress'#227'o Gr'#225'fica 2'
      TabOrder = 11
      OnClick = Button3Click
    end
    object Button5: TButton
      Left = 374
      Top = 5
      Width = 107
      Height = 23
      Caption = 'Impress'#227'o Gr'#225'fica 3 '
      TabOrder = 12
      OnClick = Button5Click
    end
    object Button9: TButton
      Left = 373
      Top = 30
      Width = 107
      Height = 23
      Caption = 'Impress'#227'o Gr'#225'fica 2'
      TabOrder = 13
      OnClick = Button9Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 57
    Width = 23
    Height = 678
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 1072
    Top = 57
    Width = 23
    Height = 678
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
  end
  object Panel6: TPanel
    Left = 0
    Top = 735
    Width = 1095
    Height = 23
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
  end
  object Panel7: TPanel
    Left = 23
    Top = 57
    Width = 1049
    Height = 678
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 4
    object TextListBox1: TTextListBox
      Left = 6
      Top = 18
      Width = 361
      Height = 239
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Terminal'
      Font.Style = []
      MultiSelect = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object RxRichEdit1: TRxRichEdit
      Left = 6
      Top = 398
      Width = 1500
      Height = 89
      DrawEndPage = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object cxRichEdit1: TcxRichEdit
      Left = 273
      Top = 300
      TabOrder = 2
      Visible = False
      Height = 92
      Width = 269
    end
    object RichEdit1: TcxDBRichEdit
      Left = 389
      Top = 58
      DataBinding.DataField = 'OBS'
      Style.TextStyle = [fsBold]
      TabOrder = 3
      Visible = False
      Height = 127
      Width = 308
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Arquivos Texto (*.txt)|*.txt|Todos os Arquivos (*.*)|*.*'
    Left = 648
    Top = 296
  end
  object PrintDialog1: TPrintDialog
    Left = 528
    Top = 296
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Arquivos Exemplo (*.xxx)|*.xxx|Arquivos Texto (*.txt)|*.txt|Todo' +
      's os Arquivos (*.*)|*.*'
    Left = 592
    Top = 296
  end
  object Curriculum: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 1270
    PrinterSetup.mmMarginLeft = 1270
    PrinterSetup.mmMarginRight = 1270
    PrinterSetup.mmMarginTop = 1270
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = True
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    ShowAutoSearchDialog = True
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 168
    Top = 344
    Version = '19.04'
    mmColumnWidth = 202380
    object ppHeaderBand14: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand14: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 260086
      mmPrintPosition = 0
      object ppDBRichText2: TppDBRichText
        DesignLayer = ppDesignLayer1
        UserName = 'DBRichText2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Border.mmPadding = 0
        ExportRTFAsBitmap = False
        DataField = 'OBS'
        DataPipeline = ppDBPipeline1
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 259028
        mmLeft = 0
        mmTop = 0
        mmWidth = 206375
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
    end
    object ppFooterBand14: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 265
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList15: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    UserName = 'DBPipeline1'
    Left = 238
    Top = 344
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'OBS'
      FieldName = 'OBS'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link2
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 72
    Top = 344
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TcxRichEditReportLink
      Active = True
      Component = cxRichEdit1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 1000
      PrinterPage.GrayShading = True
      PrinterPage.Header = 1000
      PrinterPage.Margins.Bottom = 2000
      PrinterPage.Margins.Left = 5000
      PrinterPage.Margins.Right = 2000
      PrinterPage.Margins.Top = 2000
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43759.636256736120000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TcxRichEditReportLink
      Active = True
      Component = cxRichEdit1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 16400
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 20400
      PrinterPage.Margins.Right = 11100
      PrinterPage.Margins.Top = 21400
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43759.636256967590000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
end
