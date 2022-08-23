object acessoadadosf: Tacessoadadosf
  Left = 0
  Top = 0
  ClientHeight = 834
  ClientWidth = 1075
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 2
    Width = 848
    Height = 365
    TabOrder = 0
    object Panel3: TPanel
      Left = 16
      Top = 169
      Width = 735
      Height = 190
      TabOrder = 0
      object CRDBGrid1: TCRDBGrid
        Left = 1
        Top = -56
        Width = 675
        Height = 128
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigator1: TDBNavigator
        Left = 1
        Top = 164
        Width = 733
        Height = 25
        DataSource = DataSource1
        Align = alBottom
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 846
      Height = 162
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 14
        Top = 40
        Width = 41
        Height = 13
        Caption = 'Diret'#243'rio'
      end
      object Label2: TLabel
        Left = 14
        Top = 65
        Width = 19
        Height = 13
        Caption = 'SQL'
      end
      object Button1: TButton
        Left = 200
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Ok'
        TabOrder = 0
        OnClick = Button1Click
      end
      object ComboBox1: TComboBox
        Left = 281
        Top = 10
        Width = 401
        Height = 21
        Sorted = True
        TabOrder = 1
        Text = 'ComboBox1'
        OnChange = ComboBox1Change
      end
      object Edit1: TEdit
        Left = 61
        Top = 37
        Width = 444
        Height = 21
        TabOrder = 2
        Text = '\DADOSFDB\X\DADOS.FDB'
      end
      object Button2: TButton
        Left = 511
        Top = 35
        Width = 90
        Height = 25
        Caption = 'Muda Banco'
        TabOrder = 3
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 511
        Top = 66
        Width = 90
        Height = 25
        Caption = 'Executa'
        TabOrder = 4
        OnClick = Button3Click
      end
      object ComboBox3: TComboBox
        Left = 607
        Top = 66
        Width = 401
        Height = 21
        Sorted = True
        TabOrder = 5
        Items.Strings = (
          'DELETE FROM '
          'UPDATE SET')
      end
      object Memo1: TMemo
        Left = 39
        Top = 64
        Width = 466
        Height = 89
        Lines.Strings = (
          'DELETE FROM ')
        TabOrder = 6
      end
    end
  end
  object Panel4: TPanel
    Left = 8
    Top = 374
    Width = 841
    Height = 387
    TabOrder = 1
    object Panel5: TPanel
      Left = 15
      Top = 171
      Width = 735
      Height = 200
      TabOrder = 0
      object CRDBGrid2: TCRDBGrid
        Left = 28
        Top = 24
        Width = 675
        Height = 128
        DataSource = DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigator2: TDBNavigator
        Left = 1
        Top = 174
        Width = 733
        Height = 25
        DataSource = DataSource2
        Align = alBottom
        TabOrder = 1
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 839
      Height = 162
      Align = alTop
      TabOrder = 1
      object Label3: TLabel
        Left = 14
        Top = 45
        Width = 41
        Height = 13
        Caption = 'Diret'#243'rio'
      end
      object Label4: TLabel
        Left = 14
        Top = 77
        Width = 19
        Height = 13
        Caption = 'SQL'
      end
      object Button4: TButton
        Left = 200
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Ok'
        TabOrder = 0
        OnClick = Button4Click
      end
      object ComboBox2: TComboBox
        Left = 318
        Top = 8
        Width = 401
        Height = 21
        Sorted = True
        TabOrder = 1
        Text = 'ComboBox1'
        OnChange = ComboBox2Change
      end
      object Edit3: TEdit
        Left = 61
        Top = 42
        Width = 444
        Height = 21
        TabOrder = 2
        Text = '\DADOSFDB\X\DADOS.FDB'
      end
      object Button5: TButton
        Left = 511
        Top = 40
        Width = 90
        Height = 25
        Caption = 'Muda Banco'
        TabOrder = 3
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 511
        Top = 71
        Width = 90
        Height = 25
        Caption = 'Executa'
        TabOrder = 4
        OnClick = Button6Click
      end
      object Memo2: TMemo
        Left = 39
        Top = 68
        Width = 466
        Height = 89
        Lines.Strings = (
          'DELETE FROM ')
        TabOrder = 5
      end
      object Button7: TButton
        Left = 551
        Top = 119
        Width = 114
        Height = 25
        Caption = 'Origem/Destino'
        TabOrder = 6
        OnClick = Button7Click
      end
      object Button8: TButton
        Left = 744
        Top = 8
        Width = 83
        Height = 25
        Caption = 'Limpa tabelas'
        TabOrder = 7
        OnClick = Button8Click
      end
    end
  end
  object UniConnection1: TUniConnection
    ProviderName = 'InterBase'
    Database = '\DADOSFDB\X\DADOS.FDB'
    Username = 'SYSDBA'
    LoginPrompt = False
    Left = 16
    Top = 8
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 56
    Top = 8
  end
  object UniTable1: TUniTable
    TableName = 'ABASTECIMENTO'
    Connection = UniConnection1
    Left = 152
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 104
    Top = 8
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT RDB$RELATION_NAME FROM RDB$RELATIONS;')
    Left = 632
    Top = 40
    object UniQuery1RDBRELATION_NAME: TStringField
      FieldName = 'RDB$RELATION_NAME'
      FixedChar = True
      Size = 93
    end
  end
  object SQLEXECUTA: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT RDB$RELATION_NAME FROM RDB$RELATIONS;')
    Left = 632
    Top = 72
    object StringField1: TStringField
      FieldName = 'RDB$RELATION_NAME'
      FixedChar = True
      Size = 93
    end
  end
  object UniConnection2: TUniConnection
    ProviderName = 'InterBase'
    Database = '\DADOSFDB\X\DADOS.FDB'
    Username = 'SYSDBA'
    LoginPrompt = False
    Left = 16
    Top = 392
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider2: TInterBaseUniProvider
    Left = 56
    Top = 392
  end
  object DataSource2: TDataSource
    DataSet = UniQuery2
    Left = 104
    Top = 392
  end
  object UniTable2: TUniTable
    TableName = 'ABASTECIMENTO'
    Connection = UniConnection2
    Left = 152
    Top = 392
  end
  object UniQuery2: TUniQuery
    Connection = UniConnection2
    SQL.Strings = (
      'SELECT RDB$RELATION_NAME FROM RDB$RELATIONS;')
    Left = 624
    Top = 424
    object StringField2: TStringField
      FieldName = 'RDB$RELATION_NAME'
      FixedChar = True
      Size = 93
    end
  end
  object SQLEXECUTA2: TUniQuery
    Connection = UniConnection2
    SQL.Strings = (
      'SELECT RDB$RELATION_NAME FROM RDB$RELATIONS;')
    Left = 624
    Top = 456
    object StringField3: TStringField
      FieldName = 'RDB$RELATION_NAME'
      FixedChar = True
      Size = 93
    end
  end
end
