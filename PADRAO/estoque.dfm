object estoquef: Testoquef
  Left = 0
  Top = 0
  Caption = 'Acerta Estoque'
  ClientHeight = 601
  ClientWidth = 958
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
  object Label1: TLabel
    Left = 375
    Top = 85
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 361
    Height = 162
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 151
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Width = 120
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 203
    Width = 465
    Height = 110
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 375
    Top = 8
    Width = 108
    Height = 25
    Caption = 'Zera'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 342
    Width = 465
    Height = 110
    DataSource = DataSource3
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 375
    Top = 48
    Width = 108
    Height = 25
    Caption = 'Entradas e Sa'#237'das'
    TabOrder = 4
    OnClick = Button2Click
  end
  object DBGrid5: TDBGrid
    Left = 8
    Top = 482
    Width = 465
    Height = 110
    DataSource = DataSource5
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DateEdit1: TDateEdit
    Left = 377
    Top = 104
    Width = 106
    Height = 21
    NumGlyphs = 2
    TabOrder = 6
    Text = '31/03/2014'
  end
  object DBGrid4: TDBGrid
    Left = 489
    Top = 8
    Width = 361
    Height = 162
    DataSource = DataSource4
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 151
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Width = 120
        Visible = True
      end>
  end
  object Button3: TButton
    Left = 704
    Top = 256
    Width = 130
    Height = 25
    Caption = 'Cria Simulado'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 704
    Top = 287
    Width = 130
    Height = 25
    Caption = 'Apaga Simulado'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 704
    Top = 349
    Width = 130
    Height = 25
    Caption = 'Processa Simulado'
    TabOrder = 10
    OnClick = Button5Click
  end
  object Filtro: TButton
    Left = 704
    Top = 318
    Width = 75
    Height = 25
    Caption = 'Filtro'
    TabOrder = 11
    OnClick = FiltroClick
  end
  object Button6: TButton
    Left = 704
    Top = 380
    Width = 121
    Height = 33
    Caption = 'Invent'#225'rio'
    TabOrder = 12
    OnClick = Button6Click
  end
  object DBGrid6: TDBGrid
    Left = 489
    Top = 483
    Width = 465
    Height = 110
    DataSource = DADOSFRENTEf.UniDataSource13
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button7: TButton
    Left = 503
    Top = 427
    Width = 154
    Height = 25
    Caption = 'Limpa Entradas e Sa'#237'das'
    TabOrder = 14
    OnClick = Button7Click
  end
  object DataSource1: TDataSource
    DataSet = ESTOQUE
    Left = 456
    Top = 144
  end
  object DataSource2: TDataSource
    DataSet = ITECOMPRAS
    Left = 120
    Top = 176
  end
  object DataSource3: TDataSource
    DataSet = ITEVENDAS_ECF2
    Left = 120
    Top = 315
  end
  object DataSource5: TDataSource
    DataSet = ITEVENDAS
    Left = 128
    Top = 451
  end
  object ESTOQUE: TUniTable
    TableName = 'produtos'
    Connection = DADOS_CADASTROSf.UniConnection1
    IndexFieldNames = 'CODIGO'
    Left = 384
    Top = 144
  end
  object ITECOMPRAS: TUniTable
    TableName = 'ITECOMPRAS'
    Connection = DADOS_CADASTROSf.UniConnection1
    IndexFieldNames = 'CODIGO'
    Left = 200
    Top = 176
  end
  object ITEVENDAS_ECF2: TUniTable
    TableName = 'ITEVENDAS_ECF2'
    Connection = DADOS_CADASTROSf.UniConnection1
    IndexFieldNames = 'CODIGO'
    Left = 208
    Top = 312
  end
  object ITEVENDAS: TUniTable
    TableName = 'ITEVENDAS'
    Connection = DADOS_CADASTROSf.UniConnection1
    IndexFieldNames = 'CODIGO'
    Left = 220
    Top = 453
  end
  object ESTOQUE_SIMOLADO: TUniTable
    TableName = 'ESTOQUE_SIMOLADO'
    Connection = DADOS_CADASTROSf.UniConnection1
    IndexFieldNames = 'CODIGO'
    Left = 528
    Top = 216
  end
  object DataSource4: TDataSource
    DataSet = ESTOQUE_SIMOLADO
    Left = 632
    Top = 216
  end
  object UniScript1: TUniScript
    SQL.Strings = (
      'CREATE TABLE ESTOQUE_SIMOLADO ('
      '    CODIGO            INTEGER NOT NULL,'
      '    BARRAS            VARCHAR(14),'
      '    PADRAO_BARRAS     VARCHAR(15),'
      '    FONTE_BARRAS      VARCHAR(15),'
      '    NOME              VARCHAR(75) NOT NULL,'
      '    DESCRICAO         VARCHAR(75),'
      '    UND_V             CHAR(3),'
      '    UND_C             CHAR(3),'
      '    FATOR             VARCHAR(10),'
      '    GRUPO             INTEGER,'
      '    USA_GRADE         SMALLINT DEFAULT 0,'
      '    GRADE_X           BLOB SUB_TYPE 1 SEGMENT SIZE 80,'
      '    GRADE_Y           BLOB SUB_TYPE 1 SEGMENT SIZE 80,'
      '    GRADE_CON         BLOB SUB_TYPE 1 SEGMENT SIZE 80,'
      '    GRADE_QUA         BLOB SUB_TYPE 1 SEGMENT SIZE 80,'
      '    GRADE_PED         BLOB SUB_TYPE 1 SEGMENT SIZE 80,'
      '    GRADE_OS          BLOB SUB_TYPE 1 SEGMENT SIZE 80,'
      '    QTD               NUMERIC(15,4) DEFAULT 0,'
      '    QTD_CON           NUMERIC(15,4) DEFAULT 0,'
      '    QTD_PED           NUMERIC(15,4) DEFAULT 0,'
      '    QTD_OS            NUMERIC(15,4) DEFAULT 0,'
      '    PRECO_CUSTO       NUMERIC(15,4),'
      '    PRECO_CONS        NUMERIC(15,4),'
      '    PRECO_REV         NUMERIC(15,4),'
      '    PRECO_PZ_CONS     NUMERIC(15,4),'
      '    PRECO_PZ_REV      NUMERIC(15,4),'
      '    USA_INDICE        SMALLINT DEFAULT 0 NOT NULL,'
      '    ATIVO             SMALLINT DEFAULT 1 NOT NULL,'
      '    SELECIONA         SMALLINT DEFAULT 0,'
      '    IMAGEM            VARCHAR(100),'
      '    OBS               BLOB SUB_TYPE 1 SEGMENT SIZE 80,'
      '    QTD_PARCELAS      INTEGER DEFAULT 1,'
      '    QTD_MINIMO        NUMERIC(15,4) DEFAULT 0,'
      '    QTD_MAXIMO        NUMERIC(15,4) DEFAULT 0,'
      '    TIPO              INTEGER NOT NULL,'
      '    USA_UF            SMALLINT DEFAULT 0,'
      '    OPERADOR          INTEGER DEFAULT 0,'
      '    LOCALIZACAO       VARCHAR(50),'
      '    GRADE_CMD         BLOB SUB_TYPE 1 SEGMENT SIZE 80,'
      '    QTD_CMD           NUMERIC(15,4) DEFAULT 0.0,'
      '    TABELA_PRECO      INTEGER DEFAULT 0,'
      '    USA_SERIAL        SMALLINT DEFAULT 0,'
      '    DIAS_VALIDADE     INTEGER default 0,'
      '    GRADE_PED_COMPRA  BLOB SUB_TYPE 1 SEGMENT SIZE 80,'
      '    QTD_PED_COMPRA    NUMERIC(15,4) DEFAULT 0'
      ');')
    Connection = DataModule2.UniConnection1
    Left = 720
    Top = 184
  end
  object UniScript2: TUniScript
    SQL.Strings = (
      'DROP TABLE ESTOQUE_SIMOLADO;')
    Connection = DataModule2.UniConnection1
    Left = 808
    Top = 184
  end
  object UniQuery1: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 528
    Top = 328
  end
end
