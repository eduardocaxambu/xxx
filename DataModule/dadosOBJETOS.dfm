object DataOBJETOSx: TDataOBJETOSx
  OldCreateOrder = False
  Height = 735
  Width = 1147
  object UniTable1: TUniTable
    TableName = 'OBJETOS'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 128
    Top = 8
  end
  object OBJETOS: TUniQuery
    UpdatingTable = 'OBJETOS'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM OBJETOS ORDER BY DESCRICAO')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_OBJETOS')
    Left = 144
    Top = 120
    object OBJETOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object OBJETOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 45
    end
    object OBJETOSIDENTIFIC1: TStringField
      FieldName = 'IDENTIFIC1'
    end
    object OBJETOSIDENTIFIC2: TStringField
      FieldName = 'IDENTIFIC2'
    end
    object OBJETOSIDENTIFIC3: TStringField
      FieldName = 'IDENTIFIC3'
    end
    object OBJETOSPROBLEMA: TStringField
      FieldName = 'PROBLEMA'
      Size = 60
    end
    object OBJETOSPRISMA: TStringField
      FieldName = 'PRISMA'
      Size = 10
    end
    object OBJETOSNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object OBJETOSVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object OBJETOSREVGARAN: TDateField
      FieldName = 'REVGARAN'
    end
    object OBJETOSATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object produtos: TUniTable
    TableName = 'produtos'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 320
    Top = 8
  end
  object CLIENTES: TUniTable
    TableName = 'CLIENTES'
    OrderFields = 'NOME'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 480
    Top = 328
    object CLIENTESCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CLIENTESNOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object CLIENTESFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object CLIENTESCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object CLIENTESCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object CLIENTESENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object CLIENTESCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object CLIENTESBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object CLIENTESCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object CLIENTESCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object CLIENTESCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object CLIENTESIE: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object CLIENTESRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object CLIENTESUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object CLIENTESPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object CLIENTESTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object CLIENTESFAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object CLIENTESCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object CLIENTESCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object CLIENTESCELULAR3: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object CLIENTESCELULAR4: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object CLIENTESFIS_JUR: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object CLIENTESTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object CLIENTESENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object CLIENTESCOMPLEMENTO_ENT: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object CLIENTESBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object CLIENTESCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object CLIENTESCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object CLIENTESUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object CLIENTESNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object CLIENTESNUMERO_ENT: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object CLIENTESENDERECO_COB: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object CLIENTESNUMERO_COB: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object CLIENTESCOMPLEMENTO_COB: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object CLIENTESBAIRRO_COB: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object CLIENTESCEP_COB: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object CLIENTESCIDADE_COB: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object CLIENTESEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CLIENTESUF_COB: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object CLIENTESVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object CLIENTESGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object CLIENTESLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object CLIENTESCOD_CONVENIO: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object CLIENTESCONVENIO: TSmallintField
      FieldName = 'CONVENIO'
    end
    object CLIENTESDIA_ACERTO: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object CLIENTESPER_CONVENIO: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object CLIENTESA_RECEBER: TFloatField
      FieldName = 'A_RECEBER'
    end
    object CLIENTESCONCEDER_CREDITO: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object CLIENTESATRASADO: TFloatField
      FieldName = 'ATRASADO'
    end
    object CLIENTESRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object CLIENTESOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object CLIENTESATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object CLIENTESOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object CLIENTESCOD_TABELA_PRECO: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object CLIENTESFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object CLIENTESSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object CLIENTESIDESTRANGEIRO: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object CLIENTESCLIENTEX: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object CLIENTESFORNECEDORX: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object CLIENTESVENDEDORX: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object CLIENTESEMITENTEX: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object CLIENTESUSUARIOX: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object CLIENTESOPERADORX: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object CLIENTESSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object CLIENTESCODIGO2: TIntegerField
      FieldName = 'CODIGO2'
    end
    object CLIENTESCODIGO3: TIntegerField
      FieldName = 'CODIGO3'
    end
    object CLIENTESUSA_DESCONTO_SUFRAMA: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
  end
  object IDENTIFI: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM IDENTIFI')
    Left = 208
    Top = 8
  end
  object ORDENS: TUniQuery
    UpdatingTable = 'ORDENS'
    KeyFields = 'NUMERO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ORDENS order by NUMERO desc')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=gen_ORDENS ')
    Left = 144
    Top = 192
    object ORDENSNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object ORDENSDATA: TDateField
      FieldName = 'DATA'
    end
    object ORDENSHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
    object ORDENSCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object ORDENSCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 35
    end
    object ORDENSCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 35
    end
    object ORDENSVLRTOTSERV: TFloatField
      FieldName = 'VLRTOTSERV'
      DisplayFormat = '###,##0.00'
    end
    object ORDENSVLRTOTPECA: TFloatField
      FieldName = 'VLRTOTPECA'
      DisplayFormat = '###,##0.00'
    end
    object ORDENSVLRFRETE: TFloatField
      FieldName = 'VLRFRETE'
      DisplayFormat = '###,##0.00'
    end
    object ORDENSVLRTOTALOS: TFloatField
      FieldName = 'VLRTOTALOS'
      DisplayFormat = '###,##0.00'
    end
    object ORDENSOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 254
    end
    object ORDENSTIPO_ATEND: TStringField
      FieldName = 'TIPO_ATEND'
      Size = 10
    end
    object ORDENSPRISMA: TStringField
      FieldName = 'PRISMA'
      Size = 10
    end
    object ORDENSDATAPREENT: TDateField
      FieldName = 'DATAPREENT'
    end
    object ORDENSHORAPREENT: TStringField
      FieldName = 'HORAPREENT'
      Size = 5
    end
    object ORDENSDATAENTREG: TDateField
      FieldName = 'DATAENTREG'
    end
    object ORDENSHORAENTREG: TStringField
      FieldName = 'HORAENTREG'
      Size = 5
    end
    object ORDENSSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object ORDENSSITUACOES: TStringField
      FieldName = 'SITUACOES'
      Size = 25
    end
    object ORDENSATENDENTES: TStringField
      FieldName = 'ATENDENTES'
      Size = 40
    end
    object ORDENSDescrição: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = CLIENTES2
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLI'
      Size = 50
      Lookup = True
    end
  end
  object ITEMOBJE: TUniQuery
    UpdatingTable = 'ITEMOBJE'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITEMOBJE')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_ITEMOBJE')
    Left = 136
    Top = 392
    object ITEMOBJEID: TIntegerField
      FieldName = 'ID'
    end
    object ITEMOBJENUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object ITEMOBJECODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object ITEMOBJEIDENTIFIC1: TStringField
      FieldName = 'IDENTIFIC1'
    end
    object ITEMOBJEIDENTIFIC2: TStringField
      FieldName = 'IDENTIFIC2'
    end
    object ITEMOBJEIDENTIFIC3: TStringField
      FieldName = 'IDENTIFIC3'
    end
    object ITEMOBJEDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 45
    end
    object ITEMOBJEDEFEITO: TStringField
      FieldName = 'DEFEITO'
      Size = 254
    end
    object ITEMOBJEDEFEITOCO: TStringField
      FieldName = 'DEFEITOCO'
      Size = 254
    end
    object ITEMOBJESOLUCAO: TStringField
      FieldName = 'SOLUCAO'
      Size = 254
    end
    object ITEMOBJEPRISMA: TStringField
      FieldName = 'PRISMA'
      Size = 3
    end
    object ITEMOBJEPROXREVGAR: TDateField
      FieldName = 'PROXREVGAR'
    end
    object ITEMOBJEVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object SEITEMOB: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM SEITEMOB')
    Left = 576
    Top = 16
  end
  object SEPROSER: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM SEPROSER')
    Left = 680
    Top = 16
  end
  object Source_OBJETOS: TUniDataSource
    DataSet = OBJETOS
    Left = 32
    Top = 120
  end
  object aSource_ORDENS: TUniDataSource
    DataSet = ORDENS
    Left = 32
    Top = 184
  end
  object TIPOATEN: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM TIPOATEN')
    Left = 144
    Top = 256
  end
  object Situacao: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM Situacao')
    Left = 144
    Top = 328
  end
  object Source_TIPOATEN: TUniDataSource
    DataSet = TIPOATEN
    Left = 40
    Top = 256
  end
  object Source_Situacao: TUniDataSource
    DataSet = Situacao
    Left = 40
    Top = 320
  end
  object Source_ITEMOBJE: TUniDataSource
    DataSet = ITEMOBJE
    Left = 32
    Top = 392
  end
  object PRODSERV: TUniQuery
    UpdatingTable = 'PRODSERV'
    KeyFields = 'CODIGOX'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PRODSERV')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=gen_PRODSERV')
    Left = 480
    Top = 264
    object PRODSERVCODIGOX: TIntegerField
      FieldName = 'CODIGOX'
      Required = True
    end
    object PRODSERVCUPOM: TStringField
      FieldName = 'CUPOM'
      Required = True
      Size = 6
    end
    object PRODSERVN_CAIXA: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object PRODSERVDATA: TDateField
      FieldName = 'DATA'
    end
    object PRODSERVHORA: TTimeField
      FieldName = 'HORA'
    end
    object PRODSERVOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
      Required = True
    end
    object PRODSERVITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object PRODSERVCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object PRODSERVBARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object PRODSERVDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object PRODSERVQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,##0.00'
    end
    object PRODSERVPRECO: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = '###,##0.00'
    end
    object PRODSERVTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object PRODSERVDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object PRODSERVACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,##0.00'
    end
    object PRODSERVRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
      DisplayFormat = '###,##0.00'
    end
    object PRODSERVVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      DisplayFormat = '###,##0.00'
    end
    object PRODSERVPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      DisplayFormat = '###,##0.00'
    end
    object PRODSERVPROSER: TStringField
      FieldName = 'PROSER'
      FixedChar = True
      Size = 1
    end
    object PRODSERVCODOBJ: TIntegerField
      FieldName = 'CODOBJ'
    end
    object PRODSERVNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object PRODSERVCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object PRODSERVDescrição: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = produtos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Lookup = True
    end
    object PRODSERVTURNO: TIntegerField
      FieldName = 'TURNO'
    end
    object PRODSERVPRECORAT: TFloatField
      FieldName = 'PRECORAT'
    end
    object PRODSERVPRECOPRO: TFloatField
      FieldName = 'PRECOPRO'
    end
    object PRODSERVTOTALRAT: TFloatField
      FieldName = 'TOTALRAT'
    end
    object PRODSERVDESCONTORAT: TFloatField
      FieldName = 'DESCONTORAT'
    end
    object PRODSERVACRESCIMORAT: TFloatField
      FieldName = 'ACRESCIMORAT'
    end
    object PRODSERVPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object PRODSERVVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object PRODSERVFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object PRODSERVMARCADO: TStringField
      FieldName = 'MARCADO'
      FixedChar = True
      Size = 1
    end
    object PRODSERVPORTADOR: TStringField
      FieldName = 'PORTADOR'
      Size = 50
    end
    object PRODSERVULTIMO: TIntegerField
      FieldName = 'ULTIMO'
    end
  end
  object Source_PRODSERV: TUniDataSource
    DataSet = PRODSERV
    Left = 368
    Top = 264
  end
  object ProdServSoma: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PRODSERV')
    CachedUpdates = True
    Left = 480
    Top = 200
  end
  object Source_ProdServSoma: TUniDataSource
    DataSet = ProdServSoma
    Left = 376
    Top = 200
  end
  object Source_CLIENTES: TUniDataSource
    DataSet = CLIENTES
    Left = 368
    Top = 328
  end
  object VENDEDORES: TUniTable
    TableName = 'VENDEDORES'
    OrderFields = 'NOME'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 480
    Top = 392
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
      FieldName = 'EMAIL'
      Size = 50
    end
    object StringField38: TStringField
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
    object StringField39: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object StringField40: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object StringField41: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField42: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField43: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField44: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField45: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object StringField46: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object StringField47: TStringField
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
  object Source_VENDEDORES: TUniDataSource
    DataSet = VENDEDORES
    Left = 368
    Top = 392
  end
  object ORDENSProdServ: TUniQuery
    UpdatingTable = 'PRODSERV'
    KeyFields = 'CODIGOX'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PRODSERV')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=gen_PRODSERV')
    Left = 600
    Top = 264
    object IntegerField9: TIntegerField
      FieldName = 'CODIGOX'
      Required = True
    end
    object StringField48: TStringField
      FieldName = 'CUPOM'
      Required = True
      Size = 6
    end
    object IntegerField10: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object DateField1: TDateField
      FieldName = 'DATA'
    end
    object TimeField1: TTimeField
      FieldName = 'HORA'
    end
    object IntegerField11: TIntegerField
      FieldName = 'OPERADOR'
      Required = True
    end
    object IntegerField12: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object IntegerField13: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField49: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object StringField50: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object FloatField6: TFloatField
      FieldName = 'QTD'
    end
    object FloatField7: TFloatField
      FieldName = 'PRECO'
    end
    object FloatField8: TFloatField
      FieldName = 'TOTAL'
    end
    object FloatField9: TFloatField
      FieldName = 'DESCONTO'
    end
    object FloatField10: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object FloatField11: TFloatField
      FieldName = 'RECEBIDO'
    end
    object DateField2: TDateField
      FieldName = 'VENCIMENTO'
    end
    object DateField3: TDateField
      FieldName = 'PAGAMENTO'
    end
    object StringField51: TStringField
      FieldName = 'PROSER'
      FixedChar = True
      Size = 1
    end
    object IntegerField14: TIntegerField
      FieldName = 'CODOBJ'
    end
    object IntegerField15: TIntegerField
      FieldName = 'NUMERO'
    end
    object IntegerField16: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object StringField52: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = produtos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Lookup = True
    end
  end
  object ORDENSITEMOBJE: TUniQuery
    UpdatingTable = 'ITEMOBJE'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITEMOBJE')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_ITEMOBJE')
    Left = 224
    Top = 392
    object IntegerField17: TIntegerField
      FieldName = 'ID'
    end
    object IntegerField18: TIntegerField
      FieldName = 'NUMERO'
    end
    object IntegerField19: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField53: TStringField
      FieldName = 'IDENTIFIC1'
    end
    object StringField54: TStringField
      FieldName = 'IDENTIFIC2'
    end
    object StringField55: TStringField
      FieldName = 'IDENTIFIC3'
    end
    object StringField56: TStringField
      FieldName = 'DESCRICAO'
      Size = 45
    end
    object StringField57: TStringField
      FieldName = 'DEFEITO'
      Size = 254
    end
    object StringField58: TStringField
      FieldName = 'DEFEITOCO'
      Size = 254
    end
    object StringField59: TStringField
      FieldName = 'SOLUCAO'
      Size = 254
    end
    object StringField60: TStringField
      FieldName = 'PRISMA'
      Size = 3
    end
    object DateField4: TDateField
      FieldName = 'PROXREVGAR'
    end
    object FloatField12: TFloatField
      FieldName = 'VALOR'
    end
  end
  object PRODSERV2: TUniQuery
    UpdatingTable = 'PRODSERV'
    KeyFields = 'CODIGOX'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PRODSERV')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=gen_PRODSERV')
    Left = 472
    Top = 120
    object IntegerField20: TIntegerField
      FieldName = 'CODIGOX'
      Required = True
    end
    object StringField61: TStringField
      FieldName = 'CUPOM'
      Required = True
      Size = 6
    end
    object IntegerField21: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object DateField5: TDateField
      FieldName = 'DATA'
    end
    object TimeField2: TTimeField
      FieldName = 'HORA'
    end
    object IntegerField22: TIntegerField
      FieldName = 'OPERADOR'
      Required = True
    end
    object IntegerField23: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object IntegerField24: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField62: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object StringField63: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object FloatField13: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,##0.00'
    end
    object FloatField14: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField15: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object FloatField16: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField17: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField18: TFloatField
      FieldName = 'RECEBIDO'
      DisplayFormat = '###,##0.00'
    end
    object DateField6: TDateField
      FieldName = 'VENCIMENTO'
      DisplayFormat = '###,##0.00'
    end
    object DateField7: TDateField
      FieldName = 'PAGAMENTO'
      DisplayFormat = '###,##0.00'
    end
    object StringField64: TStringField
      FieldName = 'PROSER'
      FixedChar = True
      Size = 1
    end
    object IntegerField25: TIntegerField
      FieldName = 'CODOBJ'
    end
    object IntegerField26: TIntegerField
      FieldName = 'NUMERO'
    end
    object IntegerField27: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object StringField65: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = produtos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Lookup = True
    end
  end
  object Source_PRODSERV2: TUniDataSource
    DataSet = PRODSERV2
    Left = 368
    Top = 120
  end
  object ITEMOBJE2: TUniQuery
    UpdatingTable = 'ITEMOBJE'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITEMOBJE')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_ITEMOBJE')
    Left = 136
    Top = 456
    object IntegerField28: TIntegerField
      FieldName = 'ID'
    end
    object IntegerField29: TIntegerField
      FieldName = 'NUMERO'
    end
    object IntegerField30: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField66: TStringField
      FieldName = 'IDENTIFIC1'
    end
    object StringField67: TStringField
      FieldName = 'IDENTIFIC2'
    end
    object StringField68: TStringField
      FieldName = 'IDENTIFIC3'
    end
    object StringField69: TStringField
      FieldName = 'DESCRICAO'
      Size = 45
    end
    object StringField70: TStringField
      FieldName = 'DEFEITO'
      Size = 254
    end
    object StringField71: TStringField
      FieldName = 'DEFEITOCO'
      Size = 254
    end
    object StringField72: TStringField
      FieldName = 'SOLUCAO'
      Size = 254
    end
    object StringField73: TStringField
      FieldName = 'PRISMA'
      Size = 3
    end
    object DateField8: TDateField
      FieldName = 'PROXREVGAR'
    end
    object FloatField19: TFloatField
      FieldName = 'VALOR'
    end
  end
  object Source_ITEMOBJE2: TUniDataSource
    DataSet = ITEMOBJE2
    Left = 32
    Top = 456
  end
  object CLIENTES2: TUniTable
    TableName = 'CLIENTES'
    OrderFields = 'NOME'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 232
    Top = 192
    object IntegerField31: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField74: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object StringField75: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object StringField76: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object StringField77: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object StringField78: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object StringField79: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object StringField80: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object StringField81: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object StringField82: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object StringField83: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object StringField84: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object StringField85: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object StringField86: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object StringField87: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object StringField88: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object StringField89: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object StringField90: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object StringField91: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object StringField92: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object StringField93: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object StringField94: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object StringField95: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object StringField96: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object StringField97: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object StringField98: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object StringField99: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object StringField100: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object StringField101: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object StringField102: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object StringField103: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object StringField104: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object StringField105: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object StringField106: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object StringField107: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object StringField108: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object StringField109: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object StringField110: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object StringField111: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object IntegerField32: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object IntegerField33: TIntegerField
      FieldName = 'GRUPO'
    end
    object FloatField20: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object IntegerField34: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object SmallintField6: TSmallintField
      FieldName = 'CONVENIO'
    end
    object SmallintField7: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object FloatField21: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object FloatField22: TFloatField
      FieldName = 'A_RECEBER'
    end
    object SmallintField8: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object FloatField23: TFloatField
      FieldName = 'ATRASADO'
    end
    object FloatField24: TFloatField
      FieldName = 'RECEBIDO'
    end
    object MemoField2: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object SmallintField9: TSmallintField
      FieldName = 'ATIVO'
    end
    object IntegerField35: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField36: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object BlobField2: TBlobField
      FieldName = 'FOTO'
    end
    object StringField112: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object StringField113: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object StringField114: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField115: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField116: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField117: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField118: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object StringField119: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object StringField120: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object IntegerField37: TIntegerField
      FieldName = 'CODIGO2'
    end
    object IntegerField38: TIntegerField
      FieldName = 'CODIGO3'
    end
    object SmallintField10: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
  end
end
