object ImportaDadosf: TImportaDadosf
  OldCreateOrder = False
  Height = 833
  Width = 1298
  object Origem: TUniConnection
    ProviderName = 'InterBase'
    Database = '\DADOSFDB\X\DADOS.FDB'
    Username = 'SYSDBA'
    LoginPrompt = False
    Left = 32
    Top = 8
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 136
    Top = 8
  end
  object Destino: TUniConnection
    ProviderName = 'InterBase'
    Database = '\DADOSFDB\X\DADOS2.FDB'
    Username = 'SYSDBA'
    LoginPrompt = False
    Left = 353
    Top = 8
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider2: TInterBaseUniProvider
    Left = 449
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = CLIENTESO
    Left = 32
    Top = 57
  end
  object DataSource2: TDataSource
    DataSet = FORNECEDORESO
    Left = 32
    Top = 110
  end
  object DataSource3: TDataSource
    DataSet = ESTOQUE
    Left = 32
    Top = 164
  end
  object CLIENTESO: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM CLIENTES ORDER BY CODIGO')
    Left = 136
    Top = 57
  end
  object FORNECEDORESO: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM FORNECEDORES ORDER BY CODIGO')
    Left = 136
    Top = 110
  end
  object ESTOQUE: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM ESTOQUE ORDER BY CODIGO')
    Left = 136
    Top = 172
  end
  object CLI_ENDERECOS: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM CLI_ENDERECOS ORDER BY CODIGO')
    Left = 243
    Top = 57
  end
  object CLI_FORNECEDORES: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM CLI_ENDERECOS ORDER BY CODIGO')
    Left = 240
    Top = 110
  end
  object EST_ADICIONAIS: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM EST_ADICIONAIS ORDER BY CODIGO')
    Left = 240
    Top = 172
  end
  object CLIENTESd: TUniQuery
    UpdatingTable = 'Clientes'
    KeyFields = 'CODIGO'
    Connection = Destino
    SQL.Strings = (
      'Select * from Clientes Order by codigo')
    Left = 449
    Top = 59
  end
  object Sou_Clientes: TDataSource
    DataSet = CLIENTESd
    Left = 352
    Top = 58
  end
  object FORNECEDORESd: TUniQuery
    UpdatingTable = 'FORNECEDORES'
    KeyFields = 'CODIGO'
    Connection = Destino
    SQL.Strings = (
      'Select * from FORNECEDORES Order by codigo')
    Left = 455
    Top = 119
  end
  object Sou_FORNECEDORES: TDataSource
    DataSet = FORNECEDORESd
    Left = 352
    Top = 119
  end
  object PRODUTOS: TUniQuery
    UpdatingTable = 'PRODUTOS'
    KeyFields = 'CODIGO'
    Connection = Destino
    SQL.Strings = (
      'Select * from PRODUTOS Order by codigo')
    Left = 455
    Top = 173
  end
  object Sou_produtos: TDataSource
    DataSet = PRODUTOS
    Left = 352
    Top = 181
  end
  object generatorx: TUniQuery
    Connection = Destino
    Left = 656
    Top = 8
  end
  object DataSource4: TDataSource
    DataSet = GRUPOSo
    Left = 32
    Top = 229
  end
  object GRUPOSo: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM GRUPOS oRDER BY CODIGO')
    Left = 136
    Top = 229
  end
  object UniTable1: TUniTable
    TableName = 'ITEVENDAS'
    Connection = Origem
    Left = 560
    Top = 8
  end
  object UniTable2: TUniTable
    TableName = 'SUB_HIST'
    Connection = Destino
    Left = 744
    Top = 18
  end
  object EMITENTEO: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM EMITENTE')
    Left = 136
    Top = 294
  end
  object EMITENTED: TUniQuery
    Connection = Destino
    SQL.Strings = (
      'SELECT * FROM EMITENTE')
    Left = 447
    Top = 237
  end
  object HISTORICO: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM HISTORIC')
    Left = 120
    Top = 407
  end
  object UniTable3: TUniTable
    TableName = 'CONF_PADRAO'
    Left = 240
    Top = 350
  end
  object HISTORICD: TUniQuery
    Connection = Destino
    SQL.Strings = (
      'SELECT * FROM HISTORIC')
    Left = 368
    Top = 404
  end
  object SUB_HISTO: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM SUB_HIST')
    Left = 120
    Top = 455
  end
  object SUB_HISTD: TUniQuery
    Connection = Destino
    SQL.Strings = (
      'SELECT * FROM SUB_HIST')
    Left = 368
    Top = 460
  end
  object UniTable4: TUniTable
    TableName = 'CONFIG'
    Left = 360
    Top = 238
  end
  object CAIXAO: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM CAIXA ORDER BY CODIGO')
    Left = 32
    Top = 398
  end
  object VENDAS_ECF2O: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM VENDAS_ECF2 ORDER BY CUPOM')
    Left = 32
    Top = 462
  end
  object ITEVENDAS_ECF2O: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM ITEVENDAS_ECF2 ORDER BY CODIGOX')
    Left = 40
    Top = 518
  end
  object CAIXAD: TUniQuery
    Connection = Destino
    SQL.Strings = (
      'SELECT * FROM CAIXA ORDER BY CODIGO')
    Left = 456
    Top = 406
  end
  object VENDAS_ECF2D: TUniQuery
    Connection = Destino
    SQL.Strings = (
      'SELECT * FROM VENDAS_ECF2 ORDER BY CUPOM')
    Left = 456
    Top = 454
  end
  object ITEVENDAS_ECF2D: TUniQuery
    Connection = Destino
    SQL.Strings = (
      'SELECT * FROM ITEVENDAS_ECF2 ORDER BY CODIGOX')
    Left = 456
    Top = 518
  end
  object COMPRASO: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM COMPRAS')
    Left = 568
    Top = 121
  end
  object VENDASO: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM VENDAS')
    Left = 568
    Top = 224
  end
  object ITECOMPRASO: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM ITECOMPRAS')
    Left = 568
    Top = 177
  end
  object ITEVENDASO: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM ITEVENDAS')
    Left = 568
    Top = 280
  end
  object COMPRAS: TUniQuery
    UpdatingTable = 'COMPRAS'
    KeyFields = 'ID'
    Connection = Destino
    SQL.Strings = (
      'SELECT * FROM COMPRAS')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_COMPRAS')
    Left = 672
    Top = 121
  end
  object VENDAS: TUniQuery
    UpdatingTable = 'VENDAS'
    KeyFields = 'ID'
    Connection = Destino
    SQL.Strings = (
      'SELECT * FROM VENDAS')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_VENDAS')
    Left = 672
    Top = 224
  end
  object ITECOMPRAS: TUniQuery
    UpdatingTable = 'ITECOMPRAS'
    KeyFields = 'ID'
    Connection = Destino
    SQL.Strings = (
      'SELECT * FROM ITECOMPRAS')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_ITECOMPRAS')
    Left = 672
    Top = 177
  end
  object ITEVENDAS: TUniQuery
    UpdatingTable = 'ITEVENDAS'
    KeyFields = 'ID'
    Connection = Destino
    SQL.Strings = (
      'SELECT * FROM ITEVENDAS')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_ITEVENDAS')
    Left = 672
    Top = 280
  end
  object CONFIGO: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM CONFIG')
    Left = 568
    Top = 336
  end
  object CONF_PADRAOO: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM CONF_PADRAO')
    Left = 568
    Top = 392
  end
  object CONFIG: TUniQuery
    Connection = Destino
    SQL.Strings = (
      'SELECT * FROM CONFIG')
    Left = 672
    Top = 336
  end
  object CONF_PADRAO: TUniQuery
    Connection = Destino
    SQL.Strings = (
      'SELECT * FROM CONF_PADRAO')
    Left = 672
    Top = 392
  end
  object UniQuery1: TUniQuery
    Connection = Destino
    SQL.Strings = (
      'DELETE FROM ITEVENDAS_ECF2')
    Left = 856
    Top = 350
  end
  object VENDEDORESo: TUniQuery
    UpdatingTable = 'VENDEDORES'
    KeyFields = 'CODIGO'
    Connection = Origem
    SQL.Strings = (
      'Select * from VENDEDORES Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_VENDEDORES')
    Left = 40
    Top = 572
    object VENDEDORESoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object VENDEDORESoNOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object VENDEDORESoFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object VENDEDORESoCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object VENDEDORESoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object VENDEDORESoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object VENDEDORESoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object VENDEDORESoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object VENDEDORESoCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object VENDEDORESoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object VENDEDORESoCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object VENDEDORESoIE: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object VENDEDORESoRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object VENDEDORESoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object VENDEDORESoPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object VENDEDORESoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object VENDEDORESoFAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object VENDEDORESoCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object VENDEDORESoCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object VENDEDORESoCELULAR3: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object VENDEDORESoCELULAR4: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object VENDEDORESoFIS_JUR: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESoENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object VENDEDORESoCOMPLEMENTO_ENT: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object VENDEDORESoBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object VENDEDORESoCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object VENDEDORESoCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object VENDEDORESoUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object VENDEDORESoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object VENDEDORESoNUMERO_ENT: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object VENDEDORESoENDERECO_COB: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object VENDEDORESoNUMERO_COB: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object VENDEDORESoCOMPLEMENTO_COB: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object VENDEDORESoBAIRRO_COB: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object VENDEDORESoCEP_COB: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object VENDEDORESoCIDADE_COB: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object VENDEDORESoUF_COB: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object VENDEDORESoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object VENDEDORESoGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object VENDEDORESoLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object VENDEDORESoCOD_CONVENIO: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object VENDEDORESoCONVENIO: TSmallintField
      FieldName = 'CONVENIO'
    end
    object VENDEDORESoDIA_ACERTO: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object VENDEDORESoPER_CONVENIO: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object VENDEDORESoA_RECEBER: TFloatField
      FieldName = 'A_RECEBER'
    end
    object VENDEDORESoCONCEDER_CREDITO: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object VENDEDORESoATRASADO: TFloatField
      FieldName = 'ATRASADO'
    end
    object VENDEDORESoRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object VENDEDORESoOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object VENDEDORESoATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object VENDEDORESoOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object VENDEDORESoCOD_TABELA_PRECO: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object VENDEDORESoFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object VENDEDORESoSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object VENDEDORESoIDESTRANGEIRO: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object VENDEDORESoCLIENTEX: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESoFORNECEDORX: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESoVENDEDORX: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESoEMITENTEX: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESoUSUARIOX: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESoOPERADORX: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESoSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object VENDEDORESoCODIGO2: TIntegerField
      FieldName = 'CODIGO2'
    end
    object VENDEDORESoCODIGO3: TIntegerField
      FieldName = 'CODIGO3'
    end
    object VENDEDORESoUSA_DESCONTO_SUFRAMA: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
  end
  object OPERADORo: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'Select * from OPERADOR Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert')
    Left = 40
    Top = 628
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object StringField2: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object StringField3: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object StringField4: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object StringField5: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object StringField6: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object StringField8: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object StringField9: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object StringField10: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object StringField11: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object StringField12: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object StringField13: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object StringField14: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object StringField15: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object StringField16: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object StringField17: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object StringField18: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object StringField19: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object StringField20: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object StringField21: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object StringField22: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object StringField23: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object StringField24: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object StringField25: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object StringField26: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object StringField27: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object StringField28: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object StringField29: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object StringField30: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object StringField31: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object StringField32: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object StringField33: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object StringField34: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object StringField35: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object StringField36: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object StringField37: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object IntegerField2: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object IntegerField3: TIntegerField
      FieldName = 'GRUPO'
    end
    object FloatField1: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object IntegerField4: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object SmallintField1: TSmallintField
      FieldName = 'CONVENIO'
    end
    object SmallintField2: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object FloatField2: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object FloatField3: TFloatField
      FieldName = 'A_RECEBER'
    end
    object SmallintField3: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object FloatField4: TFloatField
      FieldName = 'ATRASADO'
    end
    object FloatField5: TFloatField
      FieldName = 'RECEBIDO'
    end
    object MemoField1: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object SmallintField4: TSmallintField
      FieldName = 'ATIVO'
    end
    object IntegerField5: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField6: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object BlobField1: TBlobField
      FieldName = 'FOTO'
    end
    object StringField38: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object StringField39: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object StringField40: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField41: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField42: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField43: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField44: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object StringField45: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object StringField46: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object IntegerField7: TIntegerField
      FieldName = 'CODIGO2'
    end
    object IntegerField8: TIntegerField
      FieldName = 'CODIGO3'
    end
    object SmallintField5: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
  end
  object VENDEDORESd: TUniQuery
    UpdatingTable = 'VENDEDORES'
    KeyFields = 'CODIGO'
    Connection = Destino
    SQL.Strings = (
      'Select * from VENDEDORES Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_VENDEDORES')
    Left = 376
    Top = 572
    object VENDEDORESdCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object VENDEDORESdNOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object VENDEDORESdFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object VENDEDORESdCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object VENDEDORESdCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object VENDEDORESdENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object VENDEDORESdCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object VENDEDORESdBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object VENDEDORESdCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object VENDEDORESdCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object VENDEDORESdCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object VENDEDORESdIE: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object VENDEDORESdRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object VENDEDORESdUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object VENDEDORESdPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object VENDEDORESdTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object VENDEDORESdFAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object VENDEDORESdCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object VENDEDORESdCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object VENDEDORESdCELULAR3: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object VENDEDORESdCELULAR4: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object VENDEDORESdFIS_JUR: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESdTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESdENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object VENDEDORESdCOMPLEMENTO_ENT: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object VENDEDORESdBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object VENDEDORESdCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object VENDEDORESdCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object VENDEDORESdUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object VENDEDORESdNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object VENDEDORESdNUMERO_ENT: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object VENDEDORESdENDERECO_COB: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object VENDEDORESdNUMERO_COB: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object VENDEDORESdCOMPLEMENTO_COB: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object VENDEDORESdBAIRRO_COB: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object VENDEDORESdCEP_COB: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object VENDEDORESdCIDADE_COB: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object VENDEDORESdUF_COB: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object VENDEDORESdVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object VENDEDORESdGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object VENDEDORESdLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object VENDEDORESdCOD_CONVENIO: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object VENDEDORESdCONVENIO: TSmallintField
      FieldName = 'CONVENIO'
    end
    object VENDEDORESdDIA_ACERTO: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object VENDEDORESdPER_CONVENIO: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object VENDEDORESdA_RECEBER: TFloatField
      FieldName = 'A_RECEBER'
    end
    object VENDEDORESdCONCEDER_CREDITO: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object VENDEDORESdATRASADO: TFloatField
      FieldName = 'ATRASADO'
    end
    object VENDEDORESdRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object VENDEDORESdOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object VENDEDORESdATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object VENDEDORESdOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object VENDEDORESdCOD_TABELA_PRECO: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object VENDEDORESdFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object VENDEDORESdSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object VENDEDORESdIDESTRANGEIRO: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object VENDEDORESdCLIENTEX: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESdFORNECEDORX: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESdVENDEDORX: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESdEMITENTEX: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESdUSUARIOX: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESdOPERADORX: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESdSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object VENDEDORESdCODIGO2: TIntegerField
      FieldName = 'CODIGO2'
    end
    object VENDEDORESdCODIGO3: TIntegerField
      FieldName = 'CODIGO3'
    end
    object VENDEDORESdUSA_DESCONTO_SUFRAMA: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
  end
  object OPERADORd: TUniQuery
    UpdatingTable = 'OPERADOR'
    KeyFields = 'CODIGO'
    Connection = Destino
    SQL.Strings = (
      'Select * from OPERADOR Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_OPERADOR')
    Left = 376
    Top = 628
    object IntegerField9: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField47: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object StringField48: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object StringField49: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object StringField50: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object StringField51: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object StringField52: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object StringField53: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object StringField54: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object StringField55: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object StringField56: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object StringField57: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object StringField58: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object StringField59: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object StringField60: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object StringField61: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object StringField62: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object StringField63: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object StringField64: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object StringField65: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object StringField66: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object StringField67: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object StringField68: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object StringField69: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object StringField70: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object StringField71: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object StringField72: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object StringField73: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object StringField74: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object StringField75: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object StringField76: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object StringField77: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object StringField78: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object StringField79: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object StringField80: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object StringField81: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object StringField82: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object StringField83: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object IntegerField10: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object IntegerField11: TIntegerField
      FieldName = 'GRUPO'
    end
    object FloatField6: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object IntegerField12: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object SmallintField6: TSmallintField
      FieldName = 'CONVENIO'
    end
    object SmallintField7: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object FloatField7: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object FloatField8: TFloatField
      FieldName = 'A_RECEBER'
    end
    object SmallintField8: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object FloatField9: TFloatField
      FieldName = 'ATRASADO'
    end
    object FloatField10: TFloatField
      FieldName = 'RECEBIDO'
    end
    object MemoField2: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object SmallintField9: TSmallintField
      FieldName = 'ATIVO'
    end
    object IntegerField13: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField14: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object BlobField2: TBlobField
      FieldName = 'FOTO'
    end
    object StringField84: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object StringField85: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object StringField86: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField87: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField88: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField89: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField90: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object StringField91: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object StringField92: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object IntegerField15: TIntegerField
      FieldName = 'CODIGO2'
    end
    object IntegerField16: TIntegerField
      FieldName = 'CODIGO3'
    end
    object SmallintField10: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
  end
  object HISTORICO2: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM HISTORIC')
    Left = 280
    Top = 415
  end
  object SUB_HISTO2: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM SUB_HIST')
    Left = 280
    Top = 463
  end
  object CAIXAO2: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM CAIXA ORDER BY CODIGO')
    Left = 192
    Top = 406
  end
  object VENDAS_ECF2O2: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM VENDAS_ECF2 ORDER BY CUPOM')
    Left = 192
    Top = 470
  end
  object PRODUTOSo: TUniQuery
    UpdatingTable = 'PRODUTOS'
    KeyFields = 'CODIGO'
    Connection = Origem
    SQL.Strings = (
      'Select * from PRODUTOS Order by codigo')
    Left = 663
    Top = 61
  end
  object DataSource5: TDataSource
    DataSet = PRODUTOSo
    Left = 568
    Top = 61
  end
  object grupoo: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'Select * from grupo order by codigo')
    Left = 816
    Top = 8
  end
  object grupod: TUniQuery
    Connection = Destino
    SQL.Strings = (
      'Select * from grupo order by codigo')
    Left = 904
    Top = 8
  end
  object QOrigem: TUniQuery
    Connection = Origem
    Left = 776
    Top = 88
  end
  object QDestino: TUniQuery
    Connection = Destino
    Left = 856
    Top = 88
  end
  object teste: TUniTable
    TableName = 'OBJETOS'
    Connection = Destino
    Left = 856
    Top = 168
  end
  object qteste: TUniQuery
    UpdatingTable = 'OBJETOS'
    KeyFields = 'codigo'
    Connection = Destino
    SQL.Strings = (
      'Select * from OBJETOS')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=gen_OBJETOS')
    Left = 856
    Top = 224
  end
  object UniTable5: TUniTable
    TableName = 'ITEPEDIDOS'
    Connection = Origem
    Left = 856
    Top = 280
  end
  object OPEDIDOS: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM PEDIDOS')
    Left = 568
    Top = 457
  end
  object PEDIDOS: TUniQuery
    UpdatingTable = 'PEDIDOS'
    KeyFields = 'ID'
    Connection = Destino
    SQL.Strings = (
      'SELECT * FROM PEDIDOS')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_PEDIDOS')
    Left = 672
    Top = 457
  end
  object OITEPEDIDOS: TUniQuery
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM ITEPEDIDOS')
    Left = 568
    Top = 513
  end
  object ITEPEDIDOS: TUniQuery
    UpdatingTable = 'ITEPEDIDOS'
    KeyFields = 'ID'
    Connection = Destino
    SQL.Strings = (
      'SELECT * FROM ITEPEDIDOS')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_ITEPEDIDOS')
    Left = 672
    Top = 513
  end
  object PAGAR: TUniQuery
    UpdatingTable = 'PAGAR'
    KeyFields = 'CONTROLE'
    Connection = Destino
    SQL.Strings = (
      'SELECT * FROM PAGAR')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_PAGAR')
    Left = 680
    Top = 584
  end
  object RECEBER: TUniQuery
    UpdatingTable = 'RECEBER'
    KeyFields = 'ID'
    Connection = Destino
    SQL.Strings = (
      'SELECT * FROM RECEBER')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_RECEBER')
    Left = 680
    Top = 648
  end
  object OPAGAR: TUniQuery
    UpdatingTable = 'PAGAR'
    KeyFields = 'CONTROLE'
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM PAGAR')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_PAGAR')
    Left = 568
    Top = 584
  end
  object ORECEBER: TUniQuery
    UpdatingTable = 'RECEBER'
    KeyFields = 'ID'
    Connection = Origem
    SQL.Strings = (
      'SELECT * FROM RECEBER')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_RECEBER')
    Left = 568
    Top = 648
  end
end
