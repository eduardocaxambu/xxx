object FrmPreview: TFrmPreview
  Left = 0
  Top = 0
  Caption = 'FrmPreview'
  ClientHeight = 648
  ClientWidth = 1250
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1250
    Height = 41
    Align = alTop
    TabOrder = 0
    object Button4: TButton
      Left = 272
      Top = 10
      Width = 121
      Height = 25
      Caption = 'Impress'#227'o Grafica'
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 399
      Top = 10
      Width = 121
      Height = 25
      Caption = 'Impress'#227'o Grafica'
      TabOrder = 1
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 526
      Top = 10
      Width = 121
      Height = 25
      Caption = 'Impress'#227'o Graficax'
      TabOrder = 2
      OnClick = Button6Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 82
    Width = 49
    Height = 525
    Align = alLeft
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 607
    Width = 1250
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
  object Panel4: TPanel
    Left = 55
    Top = 117
    Width = 1066
    Height = 377
    TabOrder = 3
    object cxRichEdit1: TcxRichEdit
      Left = 9
      Top = 45
      ParentFont = False
      Style.Color = clBtnHighlight
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBtnText
      Style.Font.Height = -13
      Style.Font.Name = 'LettrGoth12 BT'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Visible = False
      Height = 124
      Width = 1000
    end
    object TextListBox1: TTextListBox
      Left = 9
      Top = 192
      Width = 1000
      Height = 121
      BorderStyle = bsNone
      Color = clTeal
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'LettrGoth12 BT'
      Font.Style = []
      ItemHeight = 19
      MultiSelect = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel5: TPanel
    Left = 1201
    Top = 82
    Width = 49
    Height = 525
    Align = alRight
    TabOrder = 4
  end
  object Panel6: TPanel
    Left = 0
    Top = 41
    Width = 1250
    Height = 41
    Align = alTop
    TabOrder = 5
    object Button1: TButton
      Left = 16
      Top = 6
      Width = 105
      Height = 25
      Caption = 'Impress'#227'o Teste'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 272
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 488
      Top = 11
      Width = 233
      Height = 21
      TabOrder = 2
    end
    object Impressora: TCheckBox
      Left = 384
      Top = 16
      Width = 73
      Height = 17
      Caption = 'Impressora'
      TabOrder = 3
    end
    object Button3: TButton
      Left = 175
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Button3'
      TabOrder = 4
      OnClick = Button3Click
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link2
    PreviewOptions.SaveZoomPosition = False
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 104
    Top = 440
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TcxRichEditReportLink
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
      ReportDocument.CreationDate = 43884.187485613420000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TcxRichEditReportLink
      Active = True
      Component = cxRichEdit1
      PrinterPage.DMPaper = 256
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 6350
      PrinterPage.Margins.Left = 2000
      PrinterPage.Margins.Right = 2000
      PrinterPage.Margins.Top = 6350
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleFactor = 150
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43884.187485613420000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object Curriculum: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
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
    Left = 208
    Top = 448
    Version = '19.04'
    mmColumnWidth = 0
    object ppHeaderBand14: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 529
      mmPrintPosition = 0
    end
    object ppDetailBand14: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 256646
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
        mmHeight = 255588
        mmLeft = 0
        mmTop = 529
        mmWidth = 199496
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
    DataSource = DADOSFRENTEf.UniDataSource7
    UserName = 'DBPipeline1'
    Left = 278
    Top = 448
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
end
