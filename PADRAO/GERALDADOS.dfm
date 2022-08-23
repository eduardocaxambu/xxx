inherited GERALDADOS_FRM: TGERALDADOS_FRM
  ClientHeight = 681
  ClientWidth = 1337
  Visible = False
  OnShow = FormShow
  ExplicitWidth = 1353
  ExplicitHeight = 720
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1337
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 24
    Top = 79
    Width = 1265
    Height = 362
    TabOrder = 1
    object cxButton2: TcxButton
      Left = 6
      Top = 7
      Width = 140
      Height = 25
      Caption = '&Criar Bancos de Dados'
      TabOrder = 0
      OnClick = cxButton2Click
    end
    object cxButton6: TcxButton
      Left = 152
      Top = 7
      Width = 146
      Height = 25
      Caption = 'Acesso a bancos de dados'
      TabOrder = 1
      OnClick = cxButton6Click
    end
    object cxButton7: TcxButton
      Left = 304
      Top = 7
      Width = 146
      Height = 25
      Caption = 'Importa'#231#227'o de Dados'
      TabOrder = 2
      OnClick = cxButton7Click
    end
    object cxButton9: TcxButton
      Left = 612
      Top = 7
      Width = 100
      Height = 25
      Caption = 'Acerta Estoque'
      TabOrder = 3
      OnClick = cxButton9Click
    end
    object CheckBox1: TCheckBox
      Left = 587
      Top = 46
      Width = 134
      Height = 17
      Caption = 'Apaga arquivo Anterior'
      TabOrder = 4
    end
    object Button1: TButton
      Left = 144
      Top = 39
      Width = 99
      Height = 25
      Caption = 'cria generetor'
      TabOrder = 5
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 8
      Top = 39
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'GEN_DADOCLIE'
    end
    object cxButton19: TcxButton
      Left = 323
      Top = 38
      Width = 84
      Height = 25
      Caption = 'NFE'
      TabOrder = 7
      OnClick = cxButton19Click
    end
    object Button3: TButton
      Left = 19
      Top = 98
      Width = 75
      Height = 25
      Caption = 'backup'
      TabOrder = 8
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 332
      Top = 98
      Width = 75
      Height = 25
      Caption = 'Restore'
      TabOrder = 9
    end
    object Edit2: TEdit
      Left = 100
      Top = 129
      Width = 213
      Height = 21
      TabOrder = 10
      Text = 'C:\DADOSFDB\backup\PRODUTOS.SQL'
    end
    object Edit3: TEdit
      Left = 100
      Top = 102
      Width = 213
      Height = 21
      TabOrder = 11
      Text = 'PRODUTOS'
    end
    object Button5: TButton
      Left = 413
      Top = 98
      Width = 136
      Height = 25
      Caption = 'backup integral'
      TabOrder = 12
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 413
      Top = 129
      Width = 136
      Height = 25
      Caption = 'Restore integral'
      TabOrder = 13
      OnClick = Button6Click
    end
    object cxButton1: TcxButton
      Left = 413
      Top = 160
      Width = 212
      Height = 25
      Caption = 'Cria - Credito TerminalPreferencias'
      TabOrder = 14
      OnClick = cxButton1Click
    end
    object BitBtn1: TBitBtn
      Left = 612
      Top = 88
      Width = 100
      Height = 25
      Caption = 'INADIMPLENTES'
      TabOrder = 15
      OnClick = BitBtn1Click
    end
    object cxButton3: TcxButton
      Left = 413
      Top = 216
      Width = 212
      Height = 25
      Caption = 'INVENTARIO'
      TabOrder = 16
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 413
      Top = 247
      Width = 212
      Height = 25
      Caption = 'Cria PRODUTOS_DELETADOS'
      TabOrder = 17
      OnClick = cxButton4Click
    end
    object cxButton5: TcxButton
      Left = 645
      Top = 216
      Width = 212
      Height = 25
      Caption = 'SIMULADO'
      TabOrder = 18
      OnClick = cxButton5Click
    end
    object cxButton8: TcxButton
      Left = 645
      Top = 247
      Width = 212
      Height = 25
      Caption = 'RECEBIMENTOCONTA'
      TabOrder = 19
      OnClick = cxButton8Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 640
    Width = 1337
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
  object UniQuery1: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 176
    Top = 456
  end
  object Testa: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 176
    Top = 536
  end
  object UniDump1: TUniDump
    TableNames = 'PRODUTOS'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 56
    Top = 456
  end
  object UniDump2: TUniDump
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 56
    Top = 528
  end
end
