inherited Importacaof: TImportacaof
  BorderStyle = bsDialog
  ClientHeight = 667
  ClientWidth = 987
  ExplicitWidth = 993
  ExplicitHeight = 696
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 21
    Top = 502
    Width = 34
    Height = 13
    Caption = 'Origem'
  end
  object Label2: TLabel
    Left = 253
    Top = 502
    Width = 36
    Height = 13
    Caption = 'Destino'
  end
  object Label3: TLabel
    Left = 489
    Top = 502
    Width = 34
    Height = 13
    Caption = 'Origem'
  end
  object Label4: TLabel
    Left = 721
    Top = 502
    Width = 36
    Height = 13
    Caption = 'Destino'
  end
  object Button1: TButton
    Left = 17
    Top = 11
    Width = 161
    Height = 33
    Caption = 'Importa Clientes'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 17
    Top = 48
    Width = 161
    Height = 33
    Caption = 'Importa Fornecedores'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 17
    Top = 85
    Width = 161
    Height = 33
    Caption = 'Importa Produtos'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 17
    Top = 120
    Width = 161
    Height = 33
    Caption = 'Importa Grupos'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Edit1: TEdit
    Left = 19
    Top = 519
    Width = 217
    Height = 21
    TabOrder = 4
    Text = '\DADOSFDB\X\DADOS.FDB'
  end
  object Edit2: TEdit
    Left = 253
    Top = 519
    Width = 217
    Height = 21
    TabOrder = 5
    Text = '\DADOSFDB\X\DADOS2.FDB'
  end
  object Button5: TButton
    Left = 184
    Top = 11
    Width = 161
    Height = 33
    Caption = 'Generator Cliente'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 184
    Top = 48
    Width = 161
    Height = 33
    Caption = 'Generator Fornecedores'
    TabOrder = 7
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 184
    Top = 85
    Width = 161
    Height = 33
    Caption = 'Generator Produtos'
    TabOrder = 8
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 184
    Top = 122
    Width = 161
    Height = 33
    Caption = 'Generator Grupos'
    TabOrder = 9
    OnClick = Button8Click
  end
  object Button10: TButton
    Left = 17
    Top = 159
    Width = 161
    Height = 33
    Caption = 'Importa EMITENTE'
    TabOrder = 10
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 17
    Top = 196
    Width = 161
    Height = 33
    Caption = 'Importa Historicos'
    TabOrder = 11
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 184
    Top = 196
    Width = 161
    Height = 33
    Caption = 'Generator Historicos'
    TabOrder = 12
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 17
    Top = 231
    Width = 161
    Height = 33
    Caption = 'Importa SubHistoricos'
    TabOrder = 13
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 184
    Top = 232
    Width = 161
    Height = 33
    Caption = 'Generator SubHistoricos'
    TabOrder = 14
    OnClick = Button14Click
  end
  object Button15: TButton
    Left = 17
    Top = 270
    Width = 161
    Height = 33
    Caption = 'Importa Caixa'
    TabOrder = 15
    OnClick = Button15Click
  end
  object Button16: TButton
    Left = 184
    Top = 270
    Width = 161
    Height = 33
    Caption = 'Generator Caixa'
    TabOrder = 16
    OnClick = Button16Click
  end
  object Button17: TButton
    Left = 17
    Top = 307
    Width = 161
    Height = 33
    Caption = 'Importa VENDAS_ECF2'
    TabOrder = 17
    OnClick = Button17Click
  end
  object Button18: TButton
    Left = 184
    Top = 307
    Width = 161
    Height = 33
    Caption = 'Generator VENDAS_ECF2'
    TabOrder = 18
    OnClick = Button18Click
  end
  object Button19: TButton
    Left = 17
    Top = 346
    Width = 161
    Height = 33
    Caption = 'Importa ITEVENDAS_ECF2'
    TabOrder = 19
    OnClick = Button19Click
  end
  object Button20: TButton
    Left = 184
    Top = 346
    Width = 161
    Height = 33
    Caption = 'Generator ITEVENDAS_ECF2'
    TabOrder = 20
    OnClick = Button20Click
  end
  object Button21: TButton
    Left = 777
    Top = 207
    Width = 161
    Height = 33
    Caption = 'Importa COMPRASO'
    TabOrder = 21
    OnClick = Button21Click
  end
  object Button22: TButton
    Left = 777
    Top = 246
    Width = 161
    Height = 33
    Caption = 'Importa ITECOMPRASO'
    TabOrder = 22
    OnClick = Button22Click
  end
  object Button23: TButton
    Left = 777
    Top = 285
    Width = 161
    Height = 33
    Caption = 'Importa VENDASO'
    TabOrder = 23
    OnClick = Button23Click
  end
  object Button24: TButton
    Left = 777
    Top = 324
    Width = 161
    Height = 33
    Caption = 'Importa ITEVENDASO'
    TabOrder = 24
    OnClick = Button24Click
  end
  object Button30: TButton
    Left = 777
    Top = 460
    Width = 161
    Height = 33
    Caption = 'Geral'
    TabOrder = 25
    OnClick = Button30Click
  end
  object Button25: TButton
    Left = 777
    Top = 363
    Width = 161
    Height = 33
    Caption = 'Importa CONFIG'
    TabOrder = 26
    OnClick = Button25Click
  end
  object Button26: TButton
    Left = 777
    Top = 402
    Width = 161
    Height = 33
    Caption = 'Importa CONF_PADRAO'
    TabOrder = 27
    OnClick = Button26Click
  end
  object Button27: TButton
    Left = 21
    Top = 464
    Width = 111
    Height = 25
    Caption = 'Muda Bancos'
    TabOrder = 28
    OnClick = Button27Click
  end
  object Button28: TButton
    Left = 17
    Top = 386
    Width = 161
    Height = 33
    Caption = 'Importa Vendedores'
    TabOrder = 29
    OnClick = Button28Click
  end
  object Button29: TButton
    Left = 184
    Top = 386
    Width = 161
    Height = 33
    Caption = 'Generator Vendedores'
    TabOrder = 30
    OnClick = Button29Click
  end
  object Button31: TButton
    Left = 17
    Top = 425
    Width = 161
    Height = 33
    Caption = 'Importa Operadores'
    TabOrder = 31
    OnClick = Button31Click
  end
  object Button32: TButton
    Left = 184
    Top = 425
    Width = 161
    Height = 33
    Caption = 'Generator Operadores'
    TabOrder = 32
    OnClick = Button32Click
  end
  object Button9: TButton
    Left = 351
    Top = 11
    Width = 161
    Height = 33
    Caption = 'Importa Objetos'
    TabOrder = 33
    OnClick = Button9Click
  end
  object Button33: TButton
    Left = 351
    Top = 48
    Width = 161
    Height = 33
    Caption = 'Importa Movimenta'#231#227'o'
    TabOrder = 34
    OnClick = Button33Click
  end
  object Button34: TButton
    Left = 487
    Top = 463
    Width = 161
    Height = 33
    Caption = 'Importa CONF_PADRAO'
    TabOrder = 35
    OnClick = Button34Click
  end
  object Edit3: TEdit
    Left = 487
    Top = 519
    Width = 217
    Height = 21
    TabOrder = 36
    Text = ' CONF_PADRAO'
  end
  object Edit4: TEdit
    Left = 721
    Top = 519
    Width = 217
    Height = 21
    TabOrder = 37
    Text = ' CONF_PADRAO'
  end
  object Button35: TButton
    Left = 351
    Top = 87
    Width = 161
    Height = 33
    Caption = 'Importa VEICULOS'
    TabOrder = 38
    OnClick = Button35Click
  end
  object Button36: TButton
    Left = 777
    Top = 122
    Width = 161
    Height = 33
    Caption = 'Importa PEDIDOS'
    TabOrder = 39
    OnClick = Button36Click
  end
  object Button37: TButton
    Left = 777
    Top = 161
    Width = 161
    Height = 33
    Caption = 'Importa ITEPEDIDOS'
    TabOrder = 40
    OnClick = Button37Click
  end
  object Button38: TButton
    Left = 573
    Top = 31
    Width = 75
    Height = 25
    Caption = 'Button38'
    TabOrder = 41
    OnClick = Button38Click
  end
  object Button39: TButton
    Left = 495
    Top = 398
    Width = 161
    Height = 33
    Caption = 'Geral Estoque Novo'
    TabOrder = 42
    OnClick = Button39Click
  end
  object Button40: TButton
    Left = 351
    Top = 124
    Width = 161
    Height = 33
    Caption = 'Importa Cart'#245'es'
    TabOrder = 43
    OnClick = Button40Click
  end
  object Button41: TButton
    Left = 777
    Top = 15
    Width = 161
    Height = 33
    Caption = 'Geral'
    TabOrder = 44
    OnClick = Button41Click
  end
  object Button42: TButton
    Left = 529
    Top = 274
    Width = 143
    Height = 25
    Caption = 'Acerta Campous Cupom'
    TabOrder = 45
    OnClick = Button42Click
  end
  object Button43: TButton
    Left = 529
    Top = 305
    Width = 143
    Height = 25
    Caption = 'Acerta ITEVENDAS_ECF2'
    TabOrder = 46
    OnClick = Button43Click
  end
  object Button44: TButton
    Left = 461
    Top = 336
    Width = 211
    Height = 25
    Caption = 'Acerta ITEVENDAS_ECF2 Update'
    TabOrder = 47
    OnClick = Button44Click
  end
  object Button45: TButton
    Left = 437
    Top = 367
    Width = 235
    Height = 25
    Caption = 'Acerta ITEVENDAS_ECF2 precos Update'
    TabOrder = 48
    OnClick = Button45Click
  end
  object Button46: TButton
    Left = 351
    Top = 196
    Width = 161
    Height = 33
    Caption = 'Contas'
    TabOrder = 49
    OnClick = Button46Click
  end
  object Button47: TButton
    Left = 487
    Top = 591
    Width = 161
    Height = 33
    Caption = 'Cria CONF_PADRAO'
    TabOrder = 50
    OnClick = Button47Click
  end
  object Testa: TUniQuery
    Left = 685
    Top = 191
  end
end
