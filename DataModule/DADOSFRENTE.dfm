object DADOSFRENTEf: TDADOSFRENTEf
  OldCreateOrder = False
  Height = 808
  Width = 1193
  object PRODUTOS: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from PRODUTOS order by barras')
    Left = 144
    Top = 360
  end
  object VENDAS_ECF2x: TUniQuery
    UpdatingTable = 'VENDAS_ECF2'
    KeyFields = 'CUPOM'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from VENDAS_ECF2 order by cupom')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_VENDAS_ECF2')
    Left = 24
    Top = 90
  end
  object UniDataSource2: TUniDataSource
    DataSet = VENDAS_ECF2
    Left = 32
    Top = 282
  end
  object UniDataSource1: TUniDataSource
    DataSet = ITEVENDAS_ECF2
    Left = 32
    Top = 221
  end
  object ITEVENDAS_ECF2x: TUniQuery
    UpdatingTable = 'ITEVENDAS_ECF2'
    KeyFields = 'CODIGOX'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from ITEVENDAS_ECF2')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_ITEVENDAS_ECF2')
    Left = 40
    Top = 157
  end
  object CLIENTES: TUniTable
    TableName = 'CLIENTES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 240
    Top = 290
    object CLIENTESCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CLIENTESNOME: TStringField
      FieldName = 'NOME'
      Required = True
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
      Required = True
      FixedChar = True
      Size = 2
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
    object CLIENTESFIS_JUR: TStringField
      FieldName = 'FIS_JUR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CLIENTESTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CLIENTESVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
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
      Required = True
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
      Required = True
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
    object CLIENTESUSA_DESCONTO_SUFRAMA: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
  end
  object USUARIOS: TUniTable
    TableName = 'USUARIOS'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 96
    Top = 88
  end
  object USUARIOS2: TUniTable
    TableName = 'USUARIOS'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 91
    Top = 16
  end
  object EMITENTE: TUniTable
    TableName = 'EMITENTE'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 24
    Top = 18
    object EMITENTECODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object EMITENTENOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object EMITENTEFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object EMITENTECONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object EMITENTECNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object EMITENTEENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object EMITENTECOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object EMITENTEBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object EMITENTECEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object EMITENTECIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object EMITENTECPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object EMITENTEIE: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object EMITENTERG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object EMITENTEUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object EMITENTEPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object EMITENTETELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object EMITENTEFAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object EMITENTECELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object EMITENTECELULAR2: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object EMITENTECELULAR3: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object EMITENTECELULAR4: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object EMITENTEFIS_JUR: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object EMITENTETIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object EMITENTEENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object EMITENTECOMPLEMENTO_ENT: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object EMITENTEBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object EMITENTECEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object EMITENTECIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object EMITENTEUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object EMITENTENUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object EMITENTENUMERO_ENT: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object EMITENTEENDERECO_COB: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object EMITENTENUMERO_COB: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object EMITENTECOMPLEMENTO_COB: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object EMITENTEBAIRRO_COB: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object EMITENTECEP_COB: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object EMITENTECIDADE_COB: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object EMITENTEEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object EMITENTEUF_COB: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object EMITENTEVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object EMITENTEGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object EMITENTELIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object EMITENTECOD_CONVENIO: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object EMITENTECONVENIO: TSmallintField
      FieldName = 'CONVENIO'
    end
    object EMITENTEDIA_ACERTO: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object EMITENTEPER_CONVENIO: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object EMITENTEA_RECEBER: TFloatField
      FieldName = 'A_RECEBER'
    end
    object EMITENTECONCEDER_CREDITO: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object EMITENTEATRASADO: TFloatField
      FieldName = 'ATRASADO'
    end
    object EMITENTERECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object EMITENTEOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object EMITENTEATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object EMITENTEOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object EMITENTECOD_TABELA_PRECO: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object EMITENTEFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object EMITENTESUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object EMITENTEIDESTRANGEIRO: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object EMITENTECLIENTEX: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object EMITENTEFORNECEDORX: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object EMITENTEVENDEDORX: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object EMITENTEEMITENTEX: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object EMITENTEUSUARIOX: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object EMITENTEOPERADORX: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object EMITENTESENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object EMITENTECODIGO2: TIntegerField
      FieldName = 'CODIGO2'
    end
    object EMITENTECODIGO3: TIntegerField
      FieldName = 'CODIGO3'
    end
    object EMITENTEUSA_DESCONTO_SUFRAMA: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
  end
  object FORNECEDORES: TUniTable
    TableName = 'FORNECEDORES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 312
    Top = 298
    object FORNECEDORESCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object FORNECEDORESNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object FORNECEDORESFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object FORNECEDORESCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object FORNECEDORESCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object FORNECEDORESCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object FORNECEDORESIE: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object FORNECEDORESRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object FORNECEDORESUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object FORNECEDORESTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object FORNECEDORESFAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object FORNECEDORESCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object FORNECEDORESDIA_ACERTO: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object FORNECEDORESA_PAGAR: TFloatField
      FieldName = 'A_PAGAR'
    end
    object FORNECEDORESATRASADO: TFloatField
      FieldName = 'ATRASADO'
    end
    object FORNECEDORESPAGO: TFloatField
      FieldName = 'PAGO'
    end
    object FORNECEDORESJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object FORNECEDORESOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object FORNECEDORESATIVO: TSmallintField
      FieldName = 'ATIVO'
      Required = True
    end
    object FORNECEDORESOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object FORNECEDORESSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
  end
  object CONFIG: TUniTable
    TableName = 'CONFIG'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 616
    Top = 28
    object CONFIGDADOSCLI: TStringField
      FieldName = 'DADOSCLI'
      Size = 1
    end
    object CONFIGDADOSFOR: TStringField
      FieldName = 'DADOSFOR'
      Size = 1
    end
    object CONFIGMODICLIE: TStringField
      FieldName = 'MODICLIE'
      Size = 1
    end
    object CONFIGMODIFORN: TStringField
      FieldName = 'MODIFORN'
      Size = 1
    end
    object CONFIGTURNOS: TStringField
      FieldName = 'TURNOS'
      Size = 1
    end
    object CONFIGGERACONTAS: TStringField
      FieldName = 'GERACONTAS'
      Size = 1
    end
    object CONFIGCONT_ESTOQUE: TStringField
      FieldName = 'CONT_ESTOQUE'
      Size = 1
    end
    object CONFIGIMPRESSAO: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
    end
    object CONFIGRECIBOS: TStringField
      FieldName = 'RECIBOS'
      Size = 1
    end
    object CONFIGREPETEITEM: TStringField
      FieldName = 'REPETEITEM'
      Size = 1
    end
    object CONFIGFLUXO: TStringField
      FieldName = 'FLUXO'
      Size = 1
    end
    object CONFIGTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object CONFIGDATA: TDateField
      FieldName = 'DATA'
    end
    object CONFIGHORA: TTimeField
      FieldName = 'HORA'
    end
    object CONFIGCAIXA: TStringField
      FieldName = 'CAIXA'
      Size = 1
    end
    object CONFIGTURNO: TStringField
      FieldName = 'TURNO'
      Size = 1
    end
    object CONFIGDESCONTO: TStringField
      FieldName = 'DESCONTO'
      Size = 1
    end
    object CONFIGACRESCIMO: TStringField
      FieldName = 'ACRESCIMO'
      Size = 1
    end
  end
  object UniDataSource3: TUniDataSource
    DataSet = CONFIG
    Left = 528
    Top = 29
  end
  object UniTable1: TUniTable
    TableName = 'DADOCLIE'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 632
    Top = 92
    object StringField1: TStringField
      FieldName = 'DADOSCLI'
      Size = 1
    end
    object StringField2: TStringField
      FieldName = 'DADOSFOR'
      Size = 1
    end
    object StringField3: TStringField
      FieldName = 'MODICLIE'
      Size = 1
    end
    object StringField4: TStringField
      FieldName = 'MODIFORN'
      Size = 1
    end
    object StringField5: TStringField
      FieldName = 'TURNOS'
      Size = 1
    end
    object StringField6: TStringField
      FieldName = 'GERACONTAS'
      Size = 1
    end
    object StringField7: TStringField
      FieldName = 'CONT_ESTOQUE'
      Size = 1
    end
    object StringField8: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
    end
    object StringField9: TStringField
      FieldName = 'RECIBOS'
      Size = 1
    end
    object StringField10: TStringField
      FieldName = 'REPETEITEM'
      Size = 1
    end
    object StringField11: TStringField
      FieldName = 'FLUXO'
      Size = 1
    end
    object StringField12: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object UniDataSource4: TUniDataSource
    DataSet = CAIXA
    Left = 416
    Top = 242
  end
  object CAIXA: TUniQuery
    UpdatingTable = 'CAIXA'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from CAIXA')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_CAIXA')
    Left = 496
    Top = 240
    object CAIXACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CAIXATURNO: TIntegerField
      FieldName = 'TURNO'
      Required = True
    end
    object CAIXACLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object CAIXAFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object CAIXAOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object CAIXAVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object CAIXAHISTORICO: TIntegerField
      FieldName = 'HISTORICO'
    end
    object CAIXASUBHISTORICO: TIntegerField
      FieldName = 'SUBHISTORICO'
    end
    object CAIXADOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Required = True
      Size = 6
    end
    object CAIXADOCU_COMP: TStringField
      FieldName = 'DOCU_COMP'
      Size = 9
    end
    object CAIXAPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 2
    end
    object CAIXADATA: TDateField
      FieldName = 'DATA'
    end
    object CAIXAHORA: TTimeField
      FieldName = 'HORA'
    end
    object CAIXAVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object CAIXARECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object CAIXATROCO: TFloatField
      FieldName = 'TROCO'
    end
    object CAIXASALDO: TFloatField
      FieldName = 'SALDO'
    end
    object CAIXAPORTADOR: TStringField
      FieldName = 'PORTADOR'
      Size = 50
    end
    object CAIXAHISTORICOC: TStringField
      FieldName = 'HISTORICOC'
      Size = 50
    end
    object CAIXAOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 50
    end
    object CAIXARECEBEMOS: TStringField
      FieldName = 'RECEBEMOS'
      Size = 50
    end
    object CAIXAENDERECOR: TStringField
      FieldName = 'ENDERECOR'
      Size = 50
    end
    object CAIXAEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 50
    end
    object CAIXADOC_EMITE: TStringField
      FieldName = 'DOC_EMITE'
      Size = 50
    end
    object CAIXAENDERECOE: TStringField
      FieldName = 'ENDERECOE'
      Size = 50
    end
    object CAIXADC: TStringField
      FieldName = 'DC'
      FixedChar = True
      Size = 1
    end
    object CAIXAAVIS_PRAZO: TStringField
      FieldName = 'AVIS_PRAZO'
      FixedChar = True
      Size = 1
    end
    object CAIXATIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object CAIXAENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Size = 50
    end
    object CAIXAESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 50
    end
    object CAIXAMEIOPAG: TStringField
      FieldName = 'MEIOPAG'
      Size = 50
    end
    object CAIXASANGSUPR: TStringField
      FieldName = 'SANGSUPR'
      FixedChar = True
      Size = 1
    end
    object CAIXACAIXA: TIntegerField
      FieldName = 'CAIXA'
      Required = True
    end
  end
  object UniDataSource5: TUniDataSource
    Left = 400
    Top = 298
  end
  object UniDataSource6: TUniDataSource
    DataSet = SUB_HIST
    Left = 400
    Top = 370
  end
  object SUB_HIST: TUniQuery
    UpdatingTable = 'SUB_HIST'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from SUB_HIST')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_SUB_HIST')
    Left = 480
    Top = 368
    object SUB_HISTCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SUB_HISTNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object SUB_HISTHISTORIC: TIntegerField
      FieldName = 'HISTORIC'
    end
    object SUB_HISTHistorico: TStringField
      FieldKind = fkLookup
      FieldName = 'Historico'
      LookupDataSet = HISTORICx
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'HISTORIC'
      Size = 40
      Lookup = True
    end
  end
  object estoquey: TUniTable
    TableName = 'estoque'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 144
    Top = 428
    object estoqueyCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object estoqueyBARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object estoqueyPADRAO_BARRAS: TStringField
      FieldName = 'PADRAO_BARRAS'
      Size = 15
    end
    object estoqueyFONTE_BARRAS: TStringField
      FieldName = 'FONTE_BARRAS'
      Size = 15
    end
    object estoqueyNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object estoqueyDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object estoqueyUND_V: TStringField
      FieldName = 'UND_V'
      FixedChar = True
      Size = 3
    end
    object estoqueyUND_C: TStringField
      FieldName = 'UND_C'
      FixedChar = True
      Size = 3
    end
    object estoqueyFATOR: TStringField
      FieldName = 'FATOR'
      Size = 10
    end
    object estoqueyGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object estoqueyUSA_GRADE: TSmallintField
      FieldName = 'USA_GRADE'
    end
    object estoqueyGRADE_X: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object estoqueyGRADE_Y: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object estoqueyGRADE_CON: TMemoField
      FieldName = 'GRADE_CON'
      BlobType = ftMemo
    end
    object estoqueyGRADE_QUA: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object estoqueyGRADE_PED: TMemoField
      FieldName = 'GRADE_PED'
      BlobType = ftMemo
    end
    object estoqueyGRADE_OS: TMemoField
      FieldName = 'GRADE_OS'
      BlobType = ftMemo
    end
    object estoqueyQTD: TFloatField
      FieldName = 'QTD'
    end
    object estoqueyQTD_CON: TFloatField
      FieldName = 'QTD_CON'
    end
    object estoqueyQTD_PED: TFloatField
      FieldName = 'QTD_PED'
    end
    object estoqueyQTD_OS: TFloatField
      FieldName = 'QTD_OS'
    end
    object estoqueyPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object estoqueyPRECO_CONS: TFloatField
      FieldName = 'PRECO_CONS'
    end
    object estoqueyPRECO_REV: TFloatField
      FieldName = 'PRECO_REV'
    end
    object estoqueyPRECO_PZ_CONS: TFloatField
      FieldName = 'PRECO_PZ_CONS'
    end
    object estoqueyPRECO_PZ_REV: TFloatField
      FieldName = 'PRECO_PZ_REV'
    end
    object estoqueyUSA_INDICE: TSmallintField
      FieldName = 'USA_INDICE'
      Required = True
    end
    object estoqueyATIVO: TSmallintField
      FieldName = 'ATIVO'
      Required = True
    end
    object estoqueySELECIONA: TSmallintField
      FieldName = 'SELECIONA'
    end
    object estoqueyIMAGEM: TStringField
      FieldName = 'IMAGEM'
      Size = 100
    end
    object estoqueyOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object estoqueyQTD_PARCELAS: TIntegerField
      FieldName = 'QTD_PARCELAS'
    end
    object estoqueyQTD_MINIMO: TFloatField
      FieldName = 'QTD_MINIMO'
    end
    object estoqueyQTD_MAXIMO: TFloatField
      FieldName = 'QTD_MAXIMO'
    end
    object estoqueyTIPO: TIntegerField
      FieldName = 'TIPO'
      Required = True
    end
    object estoqueyUSA_UF: TSmallintField
      FieldName = 'USA_UF'
    end
    object estoqueyOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object estoqueyLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object estoqueyGRADE_CMD: TMemoField
      FieldName = 'GRADE_CMD'
      BlobType = ftMemo
    end
    object estoqueyQTD_CMD: TFloatField
      FieldName = 'QTD_CMD'
    end
    object estoqueyTABELA_PRECO: TIntegerField
      FieldName = 'TABELA_PRECO'
    end
    object estoqueyUSA_SERIAL: TSmallintField
      FieldName = 'USA_SERIAL'
    end
    object estoqueyDIAS_VALIDADE: TIntegerField
      FieldName = 'DIAS_VALIDADE'
    end
    object estoqueyGRADE_PED_COMPRA: TMemoField
      FieldName = 'GRADE_PED_COMPRA'
      BlobType = ftMemo
    end
    object estoqueyQTD_PED_COMPRA: TFloatField
      FieldName = 'QTD_PED_COMPRA'
    end
  end
  object EST_ADICIONAIS: TUniTable
    TableName = 'EST_ADICIONAIS'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 240
    Top = 428
  end
  object Sou_DADOCLIE: TUniDataSource
    DataSet = DADOCLIE
    Left = 192
    Top = 136
  end
  object CADASTRO_CLIENTES: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Left = 288
    Top = 24
    object CADASTRO_CLIENTESCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CADASTRO_CLIENTESNOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object CADASTRO_CLIENTESFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object CADASTRO_CLIENTESCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object CADASTRO_CLIENTESCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object CADASTRO_CLIENTESENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object CADASTRO_CLIENTESCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object CADASTRO_CLIENTESBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object CADASTRO_CLIENTESCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object CADASTRO_CLIENTESCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object CADASTRO_CLIENTESCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object CADASTRO_CLIENTESIE: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object CADASTRO_CLIENTESRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object CADASTRO_CLIENTESUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object CADASTRO_CLIENTESPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object CADASTRO_CLIENTESTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object CADASTRO_CLIENTESFAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object CADASTRO_CLIENTESCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object CADASTRO_CLIENTESCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object CADASTRO_CLIENTESCELULAR3: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object CADASTRO_CLIENTESCELULAR4: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object CADASTRO_CLIENTESFIS_JUR: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object CADASTRO_CLIENTESTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object CADASTRO_CLIENTESENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object CADASTRO_CLIENTESCOMPLEMENTO_ENT: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object CADASTRO_CLIENTESBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object CADASTRO_CLIENTESCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object CADASTRO_CLIENTESCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object CADASTRO_CLIENTESUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object CADASTRO_CLIENTESNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object CADASTRO_CLIENTESNUMERO_ENT: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object CADASTRO_CLIENTESENDERECO_COB: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object CADASTRO_CLIENTESNUMERO_COB: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object CADASTRO_CLIENTESCOMPLEMENTO_COB: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object CADASTRO_CLIENTESBAIRRO_COB: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object CADASTRO_CLIENTESCEP_COB: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object CADASTRO_CLIENTESCIDADE_COB: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object CADASTRO_CLIENTESUF_COB: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object CADASTRO_CLIENTESVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object CADASTRO_CLIENTESGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object CADASTRO_CLIENTESLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object CADASTRO_CLIENTESCOD_CONVENIO: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object CADASTRO_CLIENTESCONVENIO: TSmallintField
      FieldName = 'CONVENIO'
    end
    object CADASTRO_CLIENTESDIA_ACERTO: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object CADASTRO_CLIENTESPER_CONVENIO: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object CADASTRO_CLIENTESA_RECEBER: TFloatField
      FieldName = 'A_RECEBER'
    end
    object CADASTRO_CLIENTESCONCEDER_CREDITO: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object CADASTRO_CLIENTESATRASADO: TFloatField
      FieldName = 'ATRASADO'
    end
    object CADASTRO_CLIENTESRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object CADASTRO_CLIENTESOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object CADASTRO_CLIENTESATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object CADASTRO_CLIENTESOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object CADASTRO_CLIENTESCOD_TABELA_PRECO: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object CADASTRO_CLIENTESFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object CADASTRO_CLIENTESSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object CADASTRO_CLIENTESIDESTRANGEIRO: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object CADASTRO_CLIENTESCLIENTEX: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object CADASTRO_CLIENTESFORNECEDORX: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object CADASTRO_CLIENTESVENDEDORX: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object CADASTRO_CLIENTESEMITENTEX: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object CADASTRO_CLIENTESUSUARIOX: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object CADASTRO_CLIENTESOPERADORX: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object CADASTRO_CLIENTESSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object CADASTRO_CLIENTESCODIGO2: TIntegerField
      FieldName = 'CODIGO2'
    end
    object CADASTRO_CLIENTESCODIGO3: TIntegerField
      FieldName = 'CODIGO3'
    end
    object CADASTRO_CLIENTESUSA_DESCONTO_SUFRAMA: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
    object CADASTRO_CLIENTESDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object CADASTRO_CLIENTESDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object CADASTRO_CLIENTESREFERENCIA1: TStringField
      FieldName = 'REFERENCIA1'
      Size = 50
    end
    object CADASTRO_CLIENTESFREFERENCIA1: TStringField
      FieldName = 'FREFERENCIA1'
      Size = 14
    end
    object CADASTRO_CLIENTESREFERENCIA2: TStringField
      FieldName = 'REFERENCIA2'
      Size = 50
    end
    object CADASTRO_CLIENTESFREFERENCIA2: TStringField
      FieldName = 'FREFERENCIA2'
      Size = 14
    end
    object CADASTRO_CLIENTESREFERENCIA3: TStringField
      FieldName = 'REFERENCIA3'
      Size = 50
    end
    object CADASTRO_CLIENTESFREFERENCIA3: TStringField
      FieldName = 'FREFERENCIA3'
      Size = 14
    end
    object CADASTRO_CLIENTESNOMEDORABALHO: TStringField
      FieldName = 'NOMEDORABALHO'
      Size = 50
    end
    object CADASTRO_CLIENTESENDERECODETRABALHO: TStringField
      FieldName = 'ENDERECODETRABALHO'
      Size = 50
    end
    object CADASTRO_CLIENTESFNOMEDORABALHO: TStringField
      FieldName = 'FNOMEDORABALHO'
      Size = 14
    end
    object CADASTRO_CLIENTESCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 50
    end
    object CADASTRO_CLIENTESCARTEIRATRABALHO: TStringField
      FieldName = 'CARTEIRATRABALHO'
      Size = 10
    end
    object CADASTRO_CLIENTESUFCARTEIRATRABALHO: TStringField
      FieldName = 'UFCARTEIRATRABALHO'
      FixedChar = True
      Size = 2
    end
    object CADASTRO_CLIENTESSPC: TStringField
      FieldName = 'SPC'
      Size = 10
    end
    object CADASTRO_CLIENTESLIMITEDEDEBITOS: TFloatField
      FieldName = 'LIMITEDEDEBITOS'
    end
    object CADASTRO_CLIENTESVALORDASRENDAS: TFloatField
      FieldName = 'VALORDASRENDAS'
    end
    object CADASTRO_CLIENTESVALORDASDESPESAS: TFloatField
      FieldName = 'VALORDASDESPESAS'
    end
    object CADASTRO_CLIENTESPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
    end
    object CADASTRO_CLIENTESCONTRATOVALOR: TFloatField
      FieldName = 'CONTRATOVALOR'
    end
    object CADASTRO_CLIENTESPERCONTRATO: TFloatField
      FieldName = 'PERCONTRATO'
    end
    object CADASTRO_CLIENTESDIADEBLOQUEIO: TIntegerField
      FieldName = 'DIADEBLOQUEIO'
    end
    object CADASTRO_CLIENTESDIAVENCIMENTO: TIntegerField
      FieldName = 'DIAVENCIMENTO'
    end
    object CADASTRO_CLIENTESDIASPARAPRAZO: TIntegerField
      FieldName = 'DIASPARAPRAZO'
    end
    object CADASTRO_CLIENTESBLOQUEIAAPRAZO: TStringField
      FieldName = 'BLOQUEIAAPRAZO'
      FixedChar = True
      Size = 5
    end
    object CADASTRO_CLIENTESVENDASAPOSBLOQUEIO: TStringField
      FieldName = 'VENDASAPOSBLOQUEIO'
      FixedChar = True
      Size = 5
    end
    object CADASTRO_CLIENTESMENSAGEMNOTA: TStringField
      FieldName = 'MENSAGEMNOTA'
      Size = 50
    end
    object CADASTRO_CLIENTESEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CADASTRO_CLIENTESHTTP: TStringField
      FieldName = 'HTTP'
      Size = 50
    end
    object CADASTRO_CLIENTESFACEBOOK: TStringField
      FieldName = 'FACEBOOK'
      Size = 50
    end
  end
  object UniDataSource8: TUniDataSource
    DataSet = VENDEDORES
    Left = 576
    Top = 210
  end
  object VENDEDORES: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from VENDEDORES')
    Left = 664
    Top = 208
    object VENDEDORESCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object VENDEDORESNOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object VENDEDORESFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object VENDEDORESCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object VENDEDORESCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object VENDEDORESENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object VENDEDORESCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object VENDEDORESBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object VENDEDORESCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object VENDEDORESCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object VENDEDORESCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object VENDEDORESIE: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object VENDEDORESRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object VENDEDORESUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object VENDEDORESPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object VENDEDORESTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object VENDEDORESFAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object VENDEDORESCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object VENDEDORESCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object VENDEDORESCELULAR3: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object VENDEDORESCELULAR4: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object VENDEDORESFIS_JUR: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object VENDEDORESCOMPLEMENTO_ENT: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object VENDEDORESBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object VENDEDORESCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object VENDEDORESCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object VENDEDORESUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object VENDEDORESNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object VENDEDORESNUMERO_ENT: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object VENDEDORESENDERECO_COB: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object VENDEDORESNUMERO_COB: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object VENDEDORESCOMPLEMENTO_COB: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object VENDEDORESBAIRRO_COB: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object VENDEDORESCEP_COB: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object VENDEDORESCIDADE_COB: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object VENDEDORESEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object VENDEDORESUF_COB: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object VENDEDORESVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object VENDEDORESGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object VENDEDORESLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object VENDEDORESCOD_CONVENIO: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object VENDEDORESCONVENIO: TSmallintField
      FieldName = 'CONVENIO'
    end
    object VENDEDORESDIA_ACERTO: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object VENDEDORESPER_CONVENIO: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object VENDEDORESA_RECEBER: TFloatField
      FieldName = 'A_RECEBER'
    end
    object VENDEDORESCONCEDER_CREDITO: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object VENDEDORESATRASADO: TFloatField
      FieldName = 'ATRASADO'
    end
    object VENDEDORESRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object VENDEDORESOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object VENDEDORESATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object VENDEDORESOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object VENDEDORESCOD_TABELA_PRECO: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object VENDEDORESFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object VENDEDORESSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object VENDEDORESIDESTRANGEIRO: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object VENDEDORESCLIENTEX: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESFORNECEDORX: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESVENDEDORX: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESEMITENTEX: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESUSUARIOX: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESOPERADORX: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object VENDEDORESSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object VENDEDORESCODIGO2: TIntegerField
      FieldName = 'CODIGO2'
    end
    object VENDEDORESCODIGO3: TIntegerField
      FieldName = 'CODIGO3'
    end
    object VENDEDORESUSA_DESCONTO_SUFRAMA: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
  end
  object UniDataSource9: TUniDataSource
    DataSet = Portador
    Left = 600
    Top = 298
  end
  object Portador: TUniQuery
    UpdatingTable = 'Portador'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from Portador')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_PORTADOR')
    Left = 680
    Top = 296
    object PortadorCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object PortadorNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object PortadorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object PortadorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object PortadorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object PortadorCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object PortadorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object PortadorUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object PortadorCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object PortadorRG: TStringField
      FieldName = 'RG'
      Size = 19
    end
    object PortadorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object PortadorCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object PortadorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object PortadorOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 50
    end
    object PortadorDescrio: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = CLIENTESxyz
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CLIENTE'
      Size = 35
      Lookup = True
    end
  end
  object CLIENTESxyz: TUniTable
    TableName = 'CLIENTES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 752
    Top = 297
    object CLIENTESxyzCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CLIENTESxyzNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object CLIENTESxyzFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object CLIENTESxyzCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object CLIENTESxyzCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object CLIENTESxyzCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object CLIENTESxyzIE: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object CLIENTESxyzRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object CLIENTESxyzUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CLIENTESxyzTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object CLIENTESxyzFAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object CLIENTESxyzCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object CLIENTESxyzFIS_JUR: TStringField
      FieldName = 'FIS_JUR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CLIENTESxyzTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CLIENTESxyzVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object CLIENTESxyzLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object CLIENTESxyzCOD_CONVENIO: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object CLIENTESxyzCONVENIO: TSmallintField
      FieldName = 'CONVENIO'
    end
    object CLIENTESxyzDIA_ACERTO: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object CLIENTESxyzPER_CONVENIO: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object CLIENTESxyzA_RECEBER: TFloatField
      FieldName = 'A_RECEBER'
    end
    object CLIENTESxyzCONCEDER_CREDITO: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
      Required = True
    end
    object CLIENTESxyzATRASADO: TFloatField
      FieldName = 'ATRASADO'
    end
    object CLIENTESxyzRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object CLIENTESxyzOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object CLIENTESxyzATIVO: TSmallintField
      FieldName = 'ATIVO'
      Required = True
    end
    object CLIENTESxyzOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object CLIENTESxyzCOD_TABELA_PRECO: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object CLIENTESxyzFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object CLIENTESxyzSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object CLIENTESxyzUSA_DESCONTO_SUFRAMA: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
    object CLIENTESxyzIDESTRANGEIRO: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
  end
  object UniDataSource10: TUniDataSource
    DataSet = duplicatas
    Left = 640
    Top = 370
  end
  object duplicatas: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from duplicatas')
    Left = 720
    Top = 368
    object duplicatasCUPOM: TStringField
      FieldName = 'CUPOM'
      Required = True
      Size = 6
    end
    object duplicatasEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object duplicatasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object duplicatasHORA: TTimeField
      FieldName = 'HORA'
    end
    object duplicatasPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 2
    end
    object duplicatasVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###0.00'
    end
    object duplicatasTIPO: TStringField
      FieldName = 'TIPO'
      Size = 5
    end
  end
  object CONF_PADRAO: TUniTable
    TableName = 'CONF_PADRAO'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 504
    Top = 448
    object CONF_PADRAODATA: TDateField
      FieldName = 'DATA'
    end
    object CONF_PADRAOHORA: TTimeField
      FieldName = 'HORA'
    end
    object CONF_PADRAOCAIXA: TStringField
      FieldName = 'CAIXA'
      Size = 1
    end
    object CONF_PADRAOTURNO: TStringField
      FieldName = 'TURNO'
      Size = 1
    end
    object CONF_PADRAOIMPRESSAO: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
    end
    object CONF_PADRAOIMPRESSORA1: TStringField
      FieldName = 'IMPRESSORA1'
      Size = 50
    end
    object CONF_PADRAOIMPRESSORA2: TStringField
      FieldName = 'IMPRESSORA2'
      Size = 50
    end
    object CONF_PADRAOIMPRESSORA3: TStringField
      FieldName = 'IMPRESSORA3'
      Size = 50
    end
    object CONF_PADRAOIMPRESSORA4: TStringField
      FieldName = 'IMPRESSORA4'
      Size = 50
    end
    object CONF_PADRAOIMPRESSORA5: TStringField
      FieldName = 'IMPRESSORA5'
      Size = 50
    end
    object CONF_PADRAOOS: TStringField
      FieldName = 'OS'
      Size = 1
    end
    object CONF_PADRAONF: TStringField
      FieldName = 'NF'
      Size = 1
    end
    object CONF_PADRAONFE: TStringField
      FieldName = 'NFE'
      Size = 1
    end
    object CONF_PADRAONFC: TStringField
      FieldName = 'NFC'
      Size = 1
    end
    object CONF_PADRAOSAT: TStringField
      FieldName = 'SAT'
      Size = 1
    end
    object CONF_PADRAOVENDA2: TStringField
      FieldName = 'VENDA2'
      Size = 1
    end
    object CONF_PADRAODOISPRECOS: TStringField
      FieldName = 'DOISPRECOS'
      Size = 1
    end
    object CONF_PADRAOVISTAPRAZO: TStringField
      FieldName = 'VISTAPRAZO'
      Size = 1
    end
    object CONF_PADRAOVISTAPRAZODIRE: TStringField
      FieldName = 'VISTAPRAZODIRE'
      Size = 1
    end
    object CONF_PADRAOACRESDESCON: TStringField
      FieldName = 'ACRESDESCON'
      Size = 1
    end
    object CONF_PADRAODIVERSASPAG: TStringField
      FieldName = 'DIVERSASPAG'
      Size = 1
    end
    object CONF_PADRAOORDEM: TStringField
      FieldName = 'ORDEM'
      Size = 1
    end
    object CONF_PADRAOOLEO: TStringField
      FieldName = 'OLEO'
      Size = 1
    end
    object CONF_PADRAOCOMISSAO: TStringField
      FieldName = 'COMISSAO'
      Size = 1
    end
    object CONF_PADRAOCARTOES: TStringField
      FieldName = 'CARTOES'
      Size = 1
    end
    object CONF_PADRAOCAIXAS: TStringField
      FieldName = 'CAIXAS'
      Size = 1
    end
    object CONF_PADRAOSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object CONF_PADRAODESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object CONF_PADRAORECOSO: TStringField
      FieldName = 'RECOSO'
      Size = 1
    end
    object CONF_PADRAOLINOBJ: TStringField
      FieldName = 'LINOBJ'
      Size = 1
    end
    object CONF_PADRAOORCAPEDI: TStringField
      FieldName = 'ORCAPEDI'
      Size = 1
    end
    object CONF_PADRAOBARPED: TStringField
      FieldName = 'BARPED'
      Size = 1
    end
    object CONF_PADRAOORCRAT: TStringField
      FieldName = 'ORCRAT'
      Size = 1
    end
    object CONF_PADRAOIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Size = 1
    end
    object CONF_PADRAOSENHA: TStringField
      FieldName = 'SENHA'
      Size = 1
    end
    object CONF_PADRAOTIPODEMPRESSAO: TStringField
      FieldName = 'TIPODEMPRESSAO'
      Size = 2
    end
    object CONF_PADRAONUMCOP: TIntegerField
      FieldName = 'NUMCOP'
    end
    object CONF_PADRAOMENSAGEM: TIntegerField
      FieldName = 'MENSAGEM'
    end
    object CONF_PADRAOVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object CONF_PADRAOEMITENTE: TIntegerField
      FieldName = 'EMITENTE'
    end
    object CONF_PADRAOATENDENTE: TIntegerField
      FieldName = 'ATENDENTE'
    end
    object CONF_PADRAOOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object CONF_PADRAOCONTAS: TIntegerField
      FieldName = 'CONTAS'
    end
    object CONF_PADRAORAMO: TStringField
      FieldName = 'RAMO'
      Size = 50
    end
    object CONF_PADRAOIMAGEM: TStringField
      FieldName = 'IMAGEM'
      Size = 100
    end
    object CONF_PADRAOTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object CONF_PADRAOPORCPRO: TFloatField
      FieldName = 'PORCPRO'
    end
    object CONF_PADRAOCON_ORCRAT: TStringField
      FieldName = 'CON_ORCRAT'
      Size = 1
    end
    object CONF_PADRAOOPERADOR1: TIntegerField
      FieldName = 'OPERADOR1'
    end
    object CONF_PADRAOOPERADOR2: TIntegerField
      FieldName = 'OPERADOR2'
    end
    object CONF_PADRAOOPERADOR3: TIntegerField
      FieldName = 'OPERADOR3'
    end
    object CONF_PADRAOOPERADOR4: TIntegerField
      FieldName = 'OPERADOR4'
    end
    object CONF_PADRAOOPERADOR5: TIntegerField
      FieldName = 'OPERADOR5'
    end
    object CONF_PADRAOPORCSER: TFloatField
      FieldName = 'PORCSER'
    end
    object CONF_PADRAOIMPREC: TStringField
      FieldName = 'IMPREC'
      Size = 1
    end
    object CONF_PADRAONUMREC: TIntegerField
      FieldName = 'NUMREC'
    end
  end
  object UniDataSource11: TUniDataSource
    DataSet = CONF_PADRAO
    Left = 416
    Top = 448
  end
  object VENDEDORx: TUniTable
    TableName = 'VENDEDOR'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 584
    Top = 448
    object VENDEDORxCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object VENDEDORxNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object VENDEDORxENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object VENDEDORxNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object VENDEDORxBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object VENDEDORxCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object VENDEDORxCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object VENDEDORxUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object VENDEDORxCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object VENDEDORxRG: TStringField
      FieldName = 'RG'
      Size = 19
    end
    object VENDEDORxTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object VENDEDORxCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object VENDEDORxEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object VENDEDORxOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 50
    end
  end
  object HISTORICx: TUniTable
    TableName = 'HISTORIC'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 560
    Top = 372
    object HISTORICxCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object HISTORICxNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object HISTORICxCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object HISTORICxCUSTO: TIntegerField
      FieldName = 'CUSTO'
    end
    object HISTORICxATIVO: TSmallintField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object FOR_ENDERECOS: TUniTable
    TableName = 'FOR_ENDERECOS'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 496
    Top = 88
  end
  object UniDataSource12: TUniDataSource
    DataSet = MestreCAI
    Left = 752
    Top = 450
  end
  object MestreCAI: TUniQuery
    UpdatingTable = 'MestreCAI'
    KeyFields = 'codigo'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from MestreCAI')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_MestreCAI')
    Left = 840
    Top = 448
    object MestreCAICODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object MestreCAICAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object MestreCAITURNO: TIntegerField
      FieldName = 'TURNO'
      Required = True
    end
    object MestreCAIDATA: TDateField
      FieldName = 'DATA'
    end
    object MestreCAIHORA: TTimeField
      FieldName = 'HORA'
    end
    object MestreCAIVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object MestreCAIHISTORICOC: TStringField
      FieldName = 'HISTORICOC'
      Size = 50
    end
    object MestreCAIOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 50
    end
  end
  object ITEVENDAS_ECF2_Rel: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from ITEVENDAS_ECF2')
    Left = 288
    Top = 181
    object ITEVENDAS_ECF2_RelCODIGOX: TIntegerField
      FieldName = 'CODIGOX'
      Required = True
    end
    object ITEVENDAS_ECF2_RelCUPOM: TStringField
      FieldName = 'CUPOM'
      Required = True
      Size = 9
    end
    object ITEVENDAS_ECF2_RelN_CAIXA: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object ITEVENDAS_ECF2_RelTURNO: TIntegerField
      FieldName = 'TURNO'
    end
    object ITEVENDAS_ECF2_RelDATA: TDateField
      FieldName = 'DATA'
    end
    object ITEVENDAS_ECF2_RelHORA: TTimeField
      FieldName = 'HORA'
    end
    object ITEVENDAS_ECF2_RelOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
      Required = True
    end
    object ITEVENDAS_ECF2_RelITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object ITEVENDAS_ECF2_RelCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object ITEVENDAS_ECF2_RelBARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object ITEVENDAS_ECF2_RelDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object ITEVENDAS_ECF2_RelQTD: TFloatField
      FieldName = 'QTD'
    end
    object ITEVENDAS_ECF2_RelPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object ITEVENDAS_ECF2_RelPRECORAT: TFloatField
      FieldName = 'PRECORAT'
    end
    object ITEVENDAS_ECF2_RelPRECOPRO: TFloatField
      FieldName = 'PRECOPRO'
    end
    object ITEVENDAS_ECF2_RelTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object ITEVENDAS_ECF2_RelTOTALRAT: TFloatField
      FieldName = 'TOTALRAT'
    end
    object ITEVENDAS_ECF2_RelDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object ITEVENDAS_ECF2_RelACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object ITEVENDAS_ECF2_RelDESCONTORAT: TFloatField
      FieldName = 'DESCONTORAT'
    end
    object ITEVENDAS_ECF2_RelACRESCIMORAT: TFloatField
      FieldName = 'ACRESCIMORAT'
    end
    object ITEVENDAS_ECF2_RelPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object ITEVENDAS_ECF2_RelVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object ITEVENDAS_ECF2_RelCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object ITEVENDAS_ECF2_RelFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object ITEVENDAS_ECF2_RelTRIBUTACAO: TStringField
      FieldName = 'TRIBUTACAO'
      FixedChar = True
      Size = 3
    end
    object ITEVENDAS_ECF2_RelICMS: TFloatField
      FieldName = 'ICMS'
    end
    object ITEVENDAS_ECF2_RelISS: TFloatField
      FieldName = 'ISS'
    end
    object ITEVENDAS_ECF2_RelUND: TStringField
      FieldName = 'UND'
      FixedChar = True
      Size = 3
    end
    object ITEVENDAS_ECF2_RelGRADE_X: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object ITEVENDAS_ECF2_RelGRADE_Y: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object ITEVENDAS_ECF2_RelGRADE_QUA: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object ITEVENDAS_ECF2_RelGRADE_VENDIDA: TMemoField
      FieldName = 'GRADE_VENDIDA'
      BlobType = ftMemo
    end
    object ITEVENDAS_ECF2_RelSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 40
    end
    object ITEVENDAS_ECF2_RelOUTRAS_DESP_ACRE: TFloatField
      FieldName = 'OUTRAS_DESP_ACRE'
    end
    object ITEVENDAS_ECF2_RelCANCELADO: TSmallintField
      FieldName = 'CANCELADO'
      Required = True
    end
    object ITEVENDAS_ECF2_RelOPERADOR_SUP: TIntegerField
      FieldName = 'OPERADOR_SUP'
      Required = True
    end
    object ITEVENDAS_ECF2_RelLOTE: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object ITEVENDAS_ECF2_RelTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object ITEVENDAS_ECF2_RelTABELA_PRECO: TStringField
      FieldName = 'TABELA_PRECO'
      Size = 30
    end
    object ITEVENDAS_ECF2_RelPIS_ST: TStringField
      FieldName = 'PIS_ST'
      FixedChar = True
      Size = 2
    end
    object ITEVENDAS_ECF2_RelPIS_VALOR_BC: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object ITEVENDAS_ECF2_RelPIS_ALIQ: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object ITEVENDAS_ECF2_RelTOT_PIS: TFloatField
      FieldName = 'TOT_PIS'
    end
    object ITEVENDAS_ECF2_RelCOFINS_ST: TStringField
      FieldName = 'COFINS_ST'
      FixedChar = True
      Size = 2
    end
    object ITEVENDAS_ECF2_RelCOFINS_VALOR_BC: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object ITEVENDAS_ECF2_RelCOFINS_ALIQ: TFloatField
      FieldName = 'COFINS_ALIQ'
    end
    object ITEVENDAS_ECF2_RelTOT_COFINS: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object ITEVENDAS_ECF2_RelCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      FixedChar = True
      Size = 3
    end
    object ITEVENDAS_ECF2_RelCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object ITEVENDAS_ECF2_RelCSOSN: TStringField
      FieldName = 'CSOSN'
      FixedChar = True
      Size = 4
    end
  end
  object estoque_Rel: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from produtos order by nome')
    Left = 144
    Top = 504
  end
  object ITEVENDAS_ECF2_ACERTO: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from ITEVENDAS_ECF2')
    Left = 432
    Top = 525
    object StringField25: TStringField
      FieldName = 'CUPOM'
      Required = True
      Size = 6
    end
    object IntegerField7: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object DateField2: TDateField
      FieldName = 'DATA'
    end
    object TimeField2: TTimeField
      FieldName = 'HORA'
    end
    object IntegerField8: TIntegerField
      FieldName = 'OPERADOR'
      Required = True
    end
    object IntegerField9: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object IntegerField10: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField26: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object StringField27: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object FloatField17: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,##0.000'
    end
    object FloatField18: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = '###,###0.000'
    end
    object StringField28: TStringField
      FieldName = 'TRIBUTACAO'
      FixedChar = True
      Size = 3
    end
    object FloatField19: TFloatField
      FieldName = 'ICMS'
    end
    object FloatField20: TFloatField
      FieldName = 'ISS'
    end
    object StringField29: TStringField
      FieldName = 'UND'
      FixedChar = True
      Size = 3
    end
    object MemoField5: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object MemoField6: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object MemoField7: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object MemoField8: TMemoField
      FieldName = 'GRADE_VENDIDA'
      BlobType = ftMemo
    end
    object StringField30: TStringField
      FieldName = 'SERIAL'
      Size = 40
    end
    object FloatField21: TFloatField
      FieldName = 'DESCONTO'
    end
    object FloatField22: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object FloatField23: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###0.000'
    end
    object FloatField24: TFloatField
      FieldName = 'OUTRAS_DESP_ACRE'
    end
    object SmallintField3: TSmallintField
      FieldName = 'CANCELADO'
      Required = True
    end
    object IntegerField11: TIntegerField
      FieldName = 'OPERADOR_SUP'
      Required = True
    end
    object StringField31: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object SmallintField4: TSmallintField
      FieldName = 'TIPO'
    end
    object StringField32: TStringField
      FieldName = 'TABELA_PRECO'
      Size = 30
    end
    object StringField33: TStringField
      FieldName = 'PIS_ST'
      FixedChar = True
      Size = 2
    end
    object FloatField25: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object FloatField26: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object FloatField27: TFloatField
      FieldName = 'TOT_PIS'
    end
    object StringField34: TStringField
      FieldName = 'COFINS_ST'
      FixedChar = True
      Size = 2
    end
    object FloatField28: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object FloatField29: TFloatField
      FieldName = 'COFINS_ALIQ'
    end
    object FloatField30: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object StringField35: TStringField
      FieldName = 'CST_ICMS'
      FixedChar = True
      Size = 3
    end
    object FloatField31: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object StringField36: TStringField
      FieldName = 'CSOSN'
      FixedChar = True
      Size = 4
    end
    object FloatField32: TFloatField
      FieldName = 'COMISSAO'
    end
    object IntegerField12: TIntegerField
      FieldName = 'VENDEDOR'
    end
  end
  object UniDataSource13: TUniDataSource
    DataSet = ITEVENDAS_ECF2_ACERTO
    Left = 288
    Top = 517
  end
  object USUARIOSx: TUniTable
    TableName = 'USUARIOS'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 664
    Top = 448
  end
  object AUXICPAGAR: TUniQuery
    UpdatingTable = 'AUXICPAGAR'
    KeyFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM AUXICPAGAR')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_AUXICPAGAR')
    Left = 624
    Top = 600
    object AUXICPAGARCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object AUXICPAGARFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Required = True
    end
    object AUXICPAGARHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 30
    end
    object AUXICPAGARDIA: TStringField
      FieldName = 'DIA'
      Size = 2
    end
    object AUXICPAGARMESGERADO: TStringField
      FieldName = 'MESGERADO'
      Size = 2
    end
    object AUXICPAGARVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###0.00'
    end
    object AUXICPAGARATIVO: TSmallintField
      FieldName = 'ATIVO'
      Required = True
    end
    object AUXICPAGAROBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 50
    end
    object AUXICPAGARDescrFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'DescrFornecedor'
      LookupDataSet = TFORNECEDORES
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FORNECEDOR'
      Size = 35
      Lookup = True
    end
  end
  object UniDataSource14: TUniDataSource
    DataSet = AUXICPAGAR
    Left = 528
    Top = 600
  end
  object TFORNECEDORES: TUniTable
    TableName = 'FORNECEDORES'
    Left = 728
    Top = 600
  end
  object ITEVENDAS_ECF3: TUniQuery
    UpdatingTable = 'ITEVENDAS_ECF2'
    KeyFields = 'CODIGOX'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from ITEVENDAS_ECF2')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_ITEVENDAS_ECF2')
    Left = 312
    Top = 234
  end
  object ITEVENDAS_ECF_DIGI: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from ITEVENDAS_ECF')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert')
    Left = 136
    Top = 578
  end
  object CAIXA_x: TUniQuery
    UpdatingTable = 'CAIXA'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from CAIXA')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_CAIXA')
    Left = 752
    Top = 208
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'TURNO'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'CLIENTE'
    end
    object IntegerField4: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object IntegerField5: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField6: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object IntegerField13: TIntegerField
      FieldName = 'HISTORICO'
    end
    object IntegerField14: TIntegerField
      FieldName = 'SUBHISTORICO'
    end
    object StringField13: TStringField
      FieldName = 'DOCUMENTO'
      Required = True
      Size = 6
    end
    object StringField14: TStringField
      FieldName = 'DOCU_COMP'
      Size = 9
    end
    object StringField15: TStringField
      FieldName = 'PARCELA'
      Size = 2
    end
    object DateField1: TDateField
      FieldName = 'DATA'
    end
    object TimeField1: TTimeField
      FieldName = 'HORA'
    end
    object FloatField1: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object FloatField2: TFloatField
      FieldName = 'RECEBIDO'
    end
    object FloatField3: TFloatField
      FieldName = 'TROCO'
    end
    object FloatField4: TFloatField
      FieldName = 'SALDO'
    end
    object StringField16: TStringField
      FieldName = 'PORTADOR'
      Size = 50
    end
    object StringField17: TStringField
      FieldName = 'HISTORICOC'
      Size = 50
    end
    object StringField18: TStringField
      FieldName = 'OBSERVACAO'
      Size = 50
    end
    object StringField19: TStringField
      FieldName = 'RECEBEMOS'
      Size = 50
    end
    object StringField20: TStringField
      FieldName = 'ENDERECOR'
      Size = 50
    end
    object StringField21: TStringField
      FieldName = 'EMITENTE'
      Size = 50
    end
    object StringField22: TStringField
      FieldName = 'DOC_EMITE'
      Size = 50
    end
    object StringField23: TStringField
      FieldName = 'ENDERECOE'
      Size = 50
    end
    object StringField24: TStringField
      FieldName = 'DC'
      FixedChar = True
      Size = 1
    end
    object StringField37: TStringField
      FieldName = 'AVIS_PRAZO'
      FixedChar = True
      Size = 1
    end
    object StringField38: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object StringField39: TStringField
      FieldName = 'ENTREGADOR'
      Size = 50
    end
    object StringField40: TStringField
      FieldName = 'ESPECIE'
      Size = 50
    end
    object StringField41: TStringField
      FieldName = 'MEIOPAG'
      Size = 50
    end
    object CAIXA_xCAIXA: TIntegerField
      FieldName = 'CAIXA'
      Required = True
    end
    object CAIXA_xSANGSUPR: TStringField
      FieldName = 'SANGSUPR'
      FixedChar = True
      Size = 1
    end
  end
  object UniDataSource15: TUniDataSource
    DataSet = COMUNS
    Left = 40
    Top = 672
  end
  object COMITE: TUniQuery
    UpdatingTable = 'COMITE'
    KeyFields = 'SEQUENCIA'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'select * from COMITE')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_COMITE')
    Left = 368
    Top = 672
    object COMITESEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object COMITECODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object COMITECOMUNS: TIntegerField
      FieldName = 'COMUNS'
      Required = True
    end
    object COMITEDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 50
    end
    object COMITEBARRAS: TStringField
      FieldName = 'BARRAS'
      Required = True
      FixedChar = True
      Size = 14
    end
  end
  object UniDataSource16: TUniDataSource
    DataSet = COMITE
    Left = 280
    Top = 672
  end
  object COMUNS: TUniQuery
    UpdatingTable = 'COMUNS'
    KeyFields = 'codigo'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'select * from COMUNS')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_COMUNS')
    Left = 128
    Top = 672
  end
  object COMITE2: TUniQuery
    UpdatingTable = 'COMITE'
    KeyFields = 'SEQUENCIA'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'select * from COMITE')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_COMITE')
    Left = 432
    Top = 672
    object IntegerField15: TIntegerField
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object IntegerField16: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IntegerField17: TIntegerField
      FieldName = 'COMUNS'
      Required = True
    end
    object StringField42: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 50
    end
    object StringField43: TStringField
      FieldName = 'BARRAS'
      Required = True
      FixedChar = True
      Size = 14
    end
  end
  object UniTable2: TUniTable
    TableName = 'PRODUTOS'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 56
    Top = 360
  end
  object ITEVENDAS_ECF2: TUniQuery
    UpdatingTable = 'ITEVENDAS_ECF2'
    KeyFields = 'CODIGOX'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from ITEVENDAS_ECF2')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_ITEVENDAS_ECF2')
    IndexFieldNames = 'CODIGOX'
    Left = 120
    Top = 216
    object ITEVENDAS_ECF2CODIGOX: TIntegerField
      FieldName = 'CODIGOX'
    end
    object ITEVENDAS_ECF2CUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 9
    end
    object ITEVENDAS_ECF2N_CAIXA: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object ITEVENDAS_ECF2DATA: TDateField
      FieldName = 'DATA'
    end
    object ITEVENDAS_ECF2HORA: TTimeField
      Alignment = taCenter
      FieldName = 'HORA'
    end
    object ITEVENDAS_ECF2OPERADOR: TIntegerField
      FieldName = 'OPERADOR'
      Required = True
    end
    object ITEVENDAS_ECF2ITEM: TIntegerField
      Alignment = taCenter
      FieldName = 'ITEM'
      Required = True
    end
    object ITEVENDAS_ECF2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object ITEVENDAS_ECF2BARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object ITEVENDAS_ECF2DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object ITEVENDAS_ECF2QTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,##0.000'
    end
    object ITEVENDAS_ECF2PRECO: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = '###,###0.00'
    end
    object ITEVENDAS_ECF2TRIBUTACAO: TStringField
      FieldName = 'TRIBUTACAO'
      FixedChar = True
      Size = 3
    end
    object ITEVENDAS_ECF2ICMS: TFloatField
      FieldName = 'ICMS'
    end
    object ITEVENDAS_ECF2ISS: TFloatField
      FieldName = 'ISS'
    end
    object ITEVENDAS_ECF2UND: TStringField
      FieldName = 'UND'
      FixedChar = True
      Size = 3
    end
    object ITEVENDAS_ECF2GRADE_X: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object ITEVENDAS_ECF2GRADE_Y: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object ITEVENDAS_ECF2GRADE_QUA: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object ITEVENDAS_ECF2GRADE_VENDIDA: TMemoField
      FieldName = 'GRADE_VENDIDA'
      BlobType = ftMemo
    end
    object ITEVENDAS_ECF2SERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 40
    end
    object ITEVENDAS_ECF2DESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.000'
    end
    object ITEVENDAS_ECF2ACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,##0.000'
    end
    object ITEVENDAS_ECF2TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###0.00'
    end
    object ITEVENDAS_ECF2OUTRAS_DESP_ACRE: TFloatField
      FieldName = 'OUTRAS_DESP_ACRE'
    end
    object ITEVENDAS_ECF2CANCELADO: TSmallintField
      FieldName = 'CANCELADO'
      Required = True
    end
    object ITEVENDAS_ECF2OPERADOR_SUP: TIntegerField
      FieldName = 'OPERADOR_SUP'
      Required = True
    end
    object ITEVENDAS_ECF2LOTE: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object ITEVENDAS_ECF2TIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object ITEVENDAS_ECF2TABELA_PRECO: TStringField
      FieldName = 'TABELA_PRECO'
      Size = 30
    end
    object ITEVENDAS_ECF2PIS_ST: TStringField
      FieldName = 'PIS_ST'
      FixedChar = True
      Size = 2
    end
    object ITEVENDAS_ECF2PIS_VALOR_BC: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object ITEVENDAS_ECF2PIS_ALIQ: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object ITEVENDAS_ECF2TOT_PIS: TFloatField
      FieldName = 'TOT_PIS'
    end
    object ITEVENDAS_ECF2COFINS_ST: TStringField
      FieldName = 'COFINS_ST'
      FixedChar = True
      Size = 2
    end
    object ITEVENDAS_ECF2COFINS_VALOR_BC: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object ITEVENDAS_ECF2COFINS_ALIQ: TFloatField
      FieldName = 'COFINS_ALIQ'
    end
    object ITEVENDAS_ECF2TOT_COFINS: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object ITEVENDAS_ECF2CST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      FixedChar = True
      Size = 3
    end
    object ITEVENDAS_ECF2PRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '###,##0.000'
    end
    object ITEVENDAS_ECF2COMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object ITEVENDAS_ECF2VENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object ITEVENDAS_ECF2CSOSN: TStringField
      FieldName = 'CSOSN'
      FixedChar = True
      Size = 4
    end
    object ITEVENDAS_ECF2TURNO: TIntegerField
      FieldName = 'TURNO'
    end
    object ITEVENDAS_ECF2DESCONTORAT: TFloatField
      FieldName = 'DESCONTORAT'
      DisplayFormat = '###,##0.000'
    end
    object ITEVENDAS_ECF2ACRESCIMORAT: TFloatField
      FieldName = 'ACRESCIMORAT'
      DisplayFormat = '###,##0.000'
    end
    object ITEVENDAS_ECF2PRECORAT: TFloatField
      FieldName = 'PRECORAT'
      DisplayFormat = '###,##0.000'
    end
    object ITEVENDAS_ECF2PRECOPRO: TFloatField
      FieldName = 'PRECOPRO'
      DisplayFormat = '###,##0.000'
    end
    object ITEVENDAS_ECF2TOTALRAT: TFloatField
      FieldName = 'TOTALRAT'
    end
    object ITEVENDAS_ECF2CLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object ITEVENDAS_ECF2FORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object ITEVENDAS_ECF2localiza: TStringField
      FieldKind = fkLookup
      FieldName = 'localiza'
      LookupDataSet = PRODUTOS_xxxx
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'LOCALIZACAO'
      KeyFields = 'CODIGO'
      Size = 30
      Lookup = True
    end
  end
  object VENDAS_ECF2: TUniQuery
    UpdatingTable = 'VENDAS_ECF2'
    KeyFields = 'CUPOM'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from VENDAS_ECF2 Order by CUPOM')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_VENDAS_ECF2')
    Left = 112
    Top = 280
    object VENDAS_ECF2CUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 6
    end
    object VENDAS_ECF2N_CAIXA: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object VENDAS_ECF2DATA: TDateField
      FieldName = 'DATA'
    end
    object VENDAS_ECF2HORA: TTimeField
      FieldName = 'HORA'
    end
    object VENDAS_ECF2OPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object VENDAS_ECF2CLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object VENDAS_ECF2FORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object VENDAS_ECF2VENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object VENDAS_ECF2COMISSAO: TFloatField
      FieldName = 'COMISSAO'
      DisplayFormat = '###,###0.00'
    end
    object VENDAS_ECF2ACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###0.00'
    end
    object VENDAS_ECF2DESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###0.00'
    end
    object VENDAS_ECF2TOT_ISS: TFloatField
      FieldName = 'TOT_ISS'
      DisplayFormat = '###,###0.00'
    end
    object VENDAS_ECF2TOT_ISS_D: TFloatField
      FieldName = 'TOT_ISS_D'
      DisplayFormat = '###,###0.00'
    end
    object VENDAS_ECF2TOT_SERVICOS: TFloatField
      FieldName = 'TOT_SERVICOS'
      DisplayFormat = '###,###0.00'
    end
    object VENDAS_ECF2TOT_ICMS: TFloatField
      FieldName = 'TOT_ICMS'
      DisplayFormat = '###,###0.00'
    end
    object VENDAS_ECF2TOT_PRODUTOS: TFloatField
      FieldName = 'TOT_PRODUTOS'
      DisplayFormat = '###,###0.00'
    end
    object VENDAS_ECF2TOT_VENDA: TFloatField
      FieldName = 'TOT_VENDA'
      DisplayFormat = '###,###0.00'
    end
    object VENDAS_ECF2CANCELADO: TSmallintField
      FieldName = 'CANCELADO'
      Required = True
    end
    object VENDAS_ECF2SEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object VENDAS_ECF2CONVENIO: TFloatField
      FieldName = 'CONVENIO'
    end
    object VENDAS_ECF2OBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object VENDAS_ECF2TURNO: TIntegerField
      FieldName = 'TURNO'
    end
    object VENDAS_ECF2FRETE: TFloatField
      FieldName = 'FRETE'
      DisplayFormat = '###,###0.00'
    end
    object VENDAS_ECF2TAXAENTREGA: TFloatField
      FieldName = 'TAXAENTREGA'
      DisplayFormat = '###,###0.00'
    end
    object VENDAS_ECF2TOT_TOTALPAGO: TFloatField
      FieldName = 'TOT_TOTALPAGO'
      DisplayFormat = '###,###0.00'
    end
    object VENDAS_ECF2TOT_TROCO: TFloatField
      FieldName = 'TOT_TROCO'
      DisplayFormat = '###,###0.00'
    end
    object VENDAS_ECF2Descrição: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = DADOCLIEx
      LookupKeyFields = 'CUPOM'
      LookupResultField = 'NOME'
      KeyFields = 'CUPOM'
      Lookup = True
    end
    object VENDAS_ECF2ABERTO: TStringField
      FieldName = 'ABERTO'
      FixedChar = True
      Size = 1
    end
    object VENDAS_ECF2TERMINAL: TStringField
      FieldName = 'TERMINAL'
      FixedChar = True
      Size = 2
    end
  end
  object CADASTRO_FORNECEDORES: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM FORNECEDORES')
    Left = 288
    Top = 80
  end
  object Source_CAIXAANTERIOR: TUniDataSource
    DataSet = CAIXAANTERIOR
    Left = 392
    Top = 130
  end
  object CAIXAANTERIOR: TUniQuery
    UpdatingTable = 'CAIXA'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      
        'Select * from CAIXA where HISTORICOC like '#39'Transporte de Saldo d' +
        'o Caixa do dia%'#39' order by codigo desc')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_CAIXA')
    Left = 520
    Top = 144
    object IntegerField18: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField19: TIntegerField
      FieldName = 'TURNO'
      Required = True
    end
    object IntegerField20: TIntegerField
      FieldName = 'CLIENTE'
    end
    object IntegerField21: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object IntegerField22: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField23: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object IntegerField24: TIntegerField
      FieldName = 'HISTORICO'
    end
    object IntegerField25: TIntegerField
      FieldName = 'SUBHISTORICO'
    end
    object StringField44: TStringField
      FieldName = 'DOCUMENTO'
      Required = True
      Size = 6
    end
    object StringField45: TStringField
      FieldName = 'DOCU_COMP'
      Size = 9
    end
    object StringField46: TStringField
      FieldName = 'PARCELA'
      Size = 2
    end
    object DateField3: TDateField
      FieldName = 'DATA'
    end
    object TimeField3: TTimeField
      FieldName = 'HORA'
    end
    object FloatField5: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object FloatField6: TFloatField
      FieldName = 'RECEBIDO'
    end
    object FloatField7: TFloatField
      FieldName = 'TROCO'
    end
    object FloatField8: TFloatField
      FieldName = 'SALDO'
    end
    object StringField47: TStringField
      FieldName = 'PORTADOR'
      Size = 50
    end
    object StringField48: TStringField
      FieldName = 'HISTORICOC'
      Size = 50
    end
    object StringField49: TStringField
      FieldName = 'OBSERVACAO'
      Size = 50
    end
    object StringField50: TStringField
      FieldName = 'RECEBEMOS'
      Size = 50
    end
    object StringField51: TStringField
      FieldName = 'ENDERECOR'
      Size = 50
    end
    object StringField52: TStringField
      FieldName = 'EMITENTE'
      Size = 50
    end
    object StringField53: TStringField
      FieldName = 'DOC_EMITE'
      Size = 50
    end
    object StringField54: TStringField
      FieldName = 'ENDERECOE'
      Size = 50
    end
    object StringField55: TStringField
      FieldName = 'DC'
      FixedChar = True
      Size = 1
    end
    object StringField56: TStringField
      FieldName = 'AVIS_PRAZO'
      FixedChar = True
      Size = 1
    end
    object StringField57: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object StringField58: TStringField
      FieldName = 'ENTREGADOR'
      Size = 50
    end
    object StringField59: TStringField
      FieldName = 'ESPECIE'
      Size = 50
    end
    object StringField60: TStringField
      FieldName = 'MEIOPAG'
      Size = 50
    end
    object CAIXAANTERIORNomeOperador: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeOperador'
      LookupDataSet = OPERADOR
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'OPERADOR'
      Lookup = True
    end
  end
  object OPERADOR: TUniTable
    TableName = 'OPERADOR'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 632
    Top = 152
    object OPERADORCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object OPERADORNOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object OPERADORFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object OPERADORCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object OPERADORCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object OPERADORENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object OPERADORCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object OPERADORBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object OPERADORCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object OPERADORCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object OPERADORCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object OPERADORIE: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object OPERADORRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object OPERADORUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object OPERADORPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object OPERADORTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object OPERADORFAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object OPERADORCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object OPERADORCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object OPERADORCELULAR3: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object OPERADORCELULAR4: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object OPERADORFIS_JUR: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object OPERADORTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object OPERADORENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object OPERADORCOMPLEMENTO_ENT: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object OPERADORBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object OPERADORCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object OPERADORCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object OPERADORUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object OPERADORNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object OPERADORNUMERO_ENT: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object OPERADORENDERECO_COB: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object OPERADORNUMERO_COB: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object OPERADORCOMPLEMENTO_COB: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object OPERADORBAIRRO_COB: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object OPERADORCEP_COB: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object OPERADORCIDADE_COB: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object OPERADOREMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object OPERADORUF_COB: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object OPERADORVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object OPERADORGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object OPERADORLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object OPERADORCOD_CONVENIO: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object OPERADORCONVENIO: TSmallintField
      FieldName = 'CONVENIO'
    end
    object OPERADORDIA_ACERTO: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object OPERADORPER_CONVENIO: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object OPERADORA_RECEBER: TFloatField
      FieldName = 'A_RECEBER'
    end
    object OPERADORCONCEDER_CREDITO: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object OPERADORATRASADO: TFloatField
      FieldName = 'ATRASADO'
    end
    object OPERADORRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object OPERADOROBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object OPERADORATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object OPERADOROPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object OPERADORCOD_TABELA_PRECO: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object OPERADORFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object OPERADORSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object OPERADORIDESTRANGEIRO: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object OPERADORCLIENTEX: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object OPERADORFORNECEDORX: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object OPERADORVENDEDORX: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object OPERADOREMITENTEX: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object OPERADORUSUARIOX: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object OPERADOROPERADORX: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object OPERADORSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object OPERADORCODIGO2: TIntegerField
      FieldName = 'CODIGO2'
    end
    object OPERADORCODIGO3: TIntegerField
      FieldName = 'CODIGO3'
    end
    object OPERADORUSA_DESCONTO_SUFRAMA: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
  end
  object DiversasFormas: TUniQuery
    UpdatingTable = 'DiversasFormas'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from DiversasFormas')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_DiversasFormas')
    Left = 816
    Top = 8
    object DiversasFormasID: TIntegerField
      FieldName = 'ID'
    end
    object DiversasFormasCUPOM: TStringField
      FieldName = 'CUPOM'
      Required = True
      Size = 9
    end
    object DiversasFormasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object DiversasFormasFORMADEPAGAMENTO: TStringField
      FieldName = 'FORMADEPAGAMENTO'
      Size = 75
    end
    object DiversasFormasEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object DiversasFormasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object DiversasFormasHORA: TTimeField
      FieldName = 'HORA'
    end
    object DiversasFormasPARCELA: TStringField
      Alignment = taCenter
      FieldName = 'PARCELA'
      Size = 2
    end
    object DiversasFormasTOTALPAGO: TFloatField
      FieldName = 'TOTALPAGO'
      DisplayFormat = '###,##0.00'
    end
    object DiversasFormasVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object DiversasFormasTROCO: TFloatField
      FieldName = 'TROCO'
      DisplayFormat = '###,##0.00'
    end
    object DiversasFormasAVISTAPRAZO: TStringField
      FieldName = 'AVISTAPRAZO'
      FixedChar = True
      Size = 1
    end
    object DiversasFormasN_CAIXA: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object DiversasFormasTURNO: TIntegerField
      FieldName = 'TURNO'
    end
    object DiversasFormasCANCELADO: TSmallintField
      FieldName = 'CANCELADO'
    end
    object DiversasFormasVENDASCONTAS: TStringField
      FieldName = 'VENDASCONTAS'
      FixedChar = True
      Size = 1
    end
  end
  object MENSAGEM: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 816
    Top = 72
  end
  object DADOCLIE: TUniQuery
    UpdatingTable = 'DADOCLIE'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from DADOCLIE')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_DADOCLIE')
    Left = 288
    Top = 136
    object DADOCLIEID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 9
    end
    object DADOCLIECUPOM: TStringField
      FieldName = 'CUPOM'
      Required = True
      Size = 9
    end
    object DADOCLIECODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object DADOCLIENOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object DADOCLIEENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object DADOCLIENUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object DADOCLIEBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object DADOCLIECEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object DADOCLIECIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object DADOCLIEUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object DADOCLIECNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object DADOCLIECPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object DADOCLIEIE: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object DADOCLIEIPR: TStringField
      FieldName = 'IPR'
      Size = 14
    end
    object DADOCLIETELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object DADOCLIECELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object DADOCLIEEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object DADOCLIEENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Size = 50
    end
    object DADOCLIEPORTADOR: TStringField
      FieldName = 'PORTADOR'
      Size = 50
    end
    object DADOCLIEADICIONAIS: TStringField
      FieldName = 'ADICIONAIS'
      Size = 50
    end
    object DADOCLIEOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 50
    end
  end
  object Source_CAIXA_x: TUniDataSource
    DataSet = CAIXA_x
    Left = 840
    Top = 224
  end
  object Source_DiversasFormas: TUniDataSource
    DataSet = DiversasFormas
    Left = 704
    Top = 8
  end
  object DADOCLIEx: TUniTable
    TableName = 'DADOCLIE'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 184
    Top = 280
  end
  object ITEOLEOS: TUniQuery
    UpdatingTable = 'ITEOLEOS'
    KeyFields = 'CODIGOX'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from ITEOLEOS')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_ITEOLEOS')
    Left = 840
    Top = 528
  end
  object VENDAS_ECF2_CONSULTA: TUniQuery
    UpdatingTable = 'VENDAS_ECF2'
    KeyFields = 'CUPOM'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from VENDAS_ECF2 Order by CUPOM')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_VENDAS_ECF2')
    Left = 272
    Top = 360
    object StringField61: TStringField
      FieldName = 'CUPOM'
      Size = 9
    end
    object IntegerField26: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object DateField4: TDateField
      FieldName = 'DATA'
    end
    object TimeField4: TTimeField
      FieldName = 'HORA'
    end
    object IntegerField27: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField28: TIntegerField
      FieldName = 'CLIENTE'
    end
    object IntegerField29: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object IntegerField30: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object FloatField9: TFloatField
      FieldName = 'COMISSAO'
      DisplayFormat = '###,###0.00'
    end
    object FloatField10: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###0.00'
    end
    object FloatField11: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###0.00'
    end
    object FloatField12: TFloatField
      FieldName = 'TOT_ISS'
      DisplayFormat = '###,###0.00'
    end
    object FloatField13: TFloatField
      FieldName = 'TOT_ISS_D'
      DisplayFormat = '###,###0.00'
    end
    object FloatField14: TFloatField
      FieldName = 'TOT_SERVICOS'
      DisplayFormat = '###,###0.00'
    end
    object FloatField15: TFloatField
      FieldName = 'TOT_ICMS'
      DisplayFormat = '###,###0.00'
    end
    object FloatField16: TFloatField
      FieldName = 'TOT_PRODUTOS'
      DisplayFormat = '###,###0.00'
    end
    object FloatField33: TFloatField
      FieldName = 'TOT_VENDA'
      DisplayFormat = '###,###0.00'
    end
    object SmallintField1: TSmallintField
      FieldName = 'CANCELADO'
      Required = True
    end
    object IntegerField31: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object FloatField34: TFloatField
      FieldName = 'CONVENIO'
    end
    object MemoField1: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object IntegerField32: TIntegerField
      FieldName = 'TURNO'
    end
    object FloatField35: TFloatField
      FieldName = 'FRETE'
      DisplayFormat = '###,###0.00'
    end
    object FloatField36: TFloatField
      FieldName = 'TAXAENTREGA'
      DisplayFormat = '###,###0.00'
    end
    object FloatField37: TFloatField
      FieldName = 'TOT_TOTALPAGO'
      DisplayFormat = '###,###0.00'
    end
    object FloatField38: TFloatField
      FieldName = 'TOT_TROCO'
      DisplayFormat = '###,###0.00'
    end
    object StringField62: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = DADOCLIEx
      LookupKeyFields = 'CUPOM'
      LookupResultField = 'NOME'
      KeyFields = 'CUPOM'
      Lookup = True
    end
    object StringField63: TStringField
      FieldName = 'ABERTO'
      FixedChar = True
      Size = 1
    end
    object StringField64: TStringField
      FieldName = 'TERMINAL'
      FixedChar = True
      Size = 2
    end
  end
  object CLIENTES_REL: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Left = 408
    Top = 24
    object IntegerField33: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField65: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object StringField66: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object StringField67: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object StringField68: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object StringField69: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object StringField70: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object StringField71: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object StringField72: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object StringField73: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object StringField74: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object StringField75: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object StringField76: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object StringField77: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object StringField78: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object StringField79: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object StringField80: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object StringField81: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object StringField82: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object StringField83: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object StringField84: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object StringField85: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object StringField86: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object StringField87: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object StringField88: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object StringField89: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object StringField90: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object StringField91: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object StringField92: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object StringField93: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object StringField94: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object StringField95: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object StringField96: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object StringField97: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object StringField98: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object StringField99: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object StringField100: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object StringField101: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object IntegerField34: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object IntegerField35: TIntegerField
      FieldName = 'GRUPO'
    end
    object FloatField39: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object IntegerField36: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object SmallintField2: TSmallintField
      FieldName = 'CONVENIO'
    end
    object SmallintField5: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object FloatField40: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object FloatField41: TFloatField
      FieldName = 'A_RECEBER'
    end
    object SmallintField6: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object FloatField42: TFloatField
      FieldName = 'ATRASADO'
    end
    object FloatField43: TFloatField
      FieldName = 'RECEBIDO'
    end
    object MemoField2: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object SmallintField7: TSmallintField
      FieldName = 'ATIVO'
    end
    object IntegerField37: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField38: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object BlobField1: TBlobField
      FieldName = 'FOTO'
    end
    object StringField102: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object StringField103: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object StringField104: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField105: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField106: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField107: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField108: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object StringField109: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object StringField110: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object IntegerField39: TIntegerField
      FieldName = 'CODIGO2'
    end
    object IntegerField40: TIntegerField
      FieldName = 'CODIGO3'
    end
    object SmallintField8: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
  end
  object VENDAS_ECF2_REL: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from VENDAS_ECF2 Order by CUPOM')
    Left = 408
    Top = 184
    object StringField111: TStringField
      FieldName = 'CUPOM'
      Size = 9
    end
    object IntegerField41: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object DateField5: TDateField
      FieldName = 'DATA'
    end
    object TimeField5: TTimeField
      FieldName = 'HORA'
    end
    object IntegerField42: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField43: TIntegerField
      FieldName = 'CLIENTE'
    end
    object IntegerField44: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object IntegerField45: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object FloatField44: TFloatField
      FieldName = 'COMISSAO'
      DisplayFormat = '###,###0.00'
    end
    object FloatField45: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###0.00'
    end
    object FloatField46: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###0.00'
    end
    object FloatField47: TFloatField
      FieldName = 'TOT_ISS'
      DisplayFormat = '###,###0.00'
    end
    object FloatField48: TFloatField
      FieldName = 'TOT_ISS_D'
      DisplayFormat = '###,###0.00'
    end
    object FloatField49: TFloatField
      FieldName = 'TOT_SERVICOS'
      DisplayFormat = '###,###0.00'
    end
    object FloatField50: TFloatField
      FieldName = 'TOT_ICMS'
      DisplayFormat = '###,###0.00'
    end
    object FloatField51: TFloatField
      FieldName = 'TOT_PRODUTOS'
      DisplayFormat = '###,###0.00'
    end
    object FloatField52: TFloatField
      FieldName = 'TOT_VENDA'
      DisplayFormat = '###,###0.00'
    end
    object SmallintField9: TSmallintField
      FieldName = 'CANCELADO'
      Required = True
    end
    object IntegerField46: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object FloatField53: TFloatField
      FieldName = 'CONVENIO'
    end
    object MemoField3: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object IntegerField47: TIntegerField
      FieldName = 'TURNO'
    end
    object FloatField54: TFloatField
      FieldName = 'FRETE'
      DisplayFormat = '###,###0.00'
    end
    object FloatField55: TFloatField
      FieldName = 'TAXAENTREGA'
      DisplayFormat = '###,###0.00'
    end
    object FloatField56: TFloatField
      FieldName = 'TOT_TOTALPAGO'
      DisplayFormat = '###,###0.00'
    end
    object FloatField57: TFloatField
      FieldName = 'TOT_TROCO'
      DisplayFormat = '###,###0.00'
    end
    object StringField112: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = DADOCLIEx
      LookupKeyFields = 'CUPOM'
      LookupResultField = 'NOME'
      KeyFields = 'CUPOM'
      Lookup = True
    end
    object StringField113: TStringField
      FieldName = 'ABERTO'
      FixedChar = True
      Size = 1
    end
    object StringField114: TStringField
      FieldName = 'TERMINAL'
      FixedChar = True
      Size = 2
    end
  end
  object HISTORIC_REL: TUniQuery
    UpdatingTable = 'HISTORIC'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from HISTORIC order by nome')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_HISTORIC'
      'InterBase.GeneratorMode=gmInsert')
    Left = 912
    Top = 79
    object IntegerField56: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField132: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object IntegerField57: TIntegerField
      FieldName = 'CONTA'
    end
    object IntegerField58: TIntegerField
      FieldName = 'CUSTO'
    end
    object SmallintField10: TSmallintField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object SUB_HIST_REL: TUniQuery
    UpdatingTable = 'SUB_HIST'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from SUB_HIST order by nome')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_SUB_HIST'
      'InterBase.GeneratorMode=gmInsert')
    Left = 904
    Top = 149
    object SUB_HIST_RELCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SUB_HIST_RELNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object SUB_HIST_RELHISTORIC: TIntegerField
      FieldName = 'HISTORIC'
    end
  end
  object HISTORIC: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from HISTORIC order by codigo')
    Left = 496
    Top = 296
  end
  object CAIXA_REL: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CAIXA')
    Left = 912
    Top = 16
    object CAIXA_RELCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CAIXA_RELCAIXA: TIntegerField
      FieldName = 'CAIXA'
      Required = True
    end
    object CAIXA_RELTURNO: TIntegerField
      FieldName = 'TURNO'
      Required = True
    end
    object CAIXA_RELCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object CAIXA_RELFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object CAIXA_RELOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object CAIXA_RELVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object CAIXA_RELHISTORICO: TIntegerField
      FieldName = 'HISTORICO'
    end
    object CAIXA_RELSUBHISTORICO: TIntegerField
      FieldName = 'SUBHISTORICO'
    end
    object CAIXA_RELDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Required = True
      Size = 9
    end
    object CAIXA_RELDOCU_COMP: TStringField
      FieldName = 'DOCU_COMP'
      Size = 9
    end
    object CAIXA_RELPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 2
    end
    object CAIXA_RELDATA: TDateField
      FieldName = 'DATA'
    end
    object CAIXA_RELHORA: TTimeField
      FieldName = 'HORA'
    end
    object CAIXA_RELVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object CAIXA_RELRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object CAIXA_RELTROCO: TFloatField
      FieldName = 'TROCO'
    end
    object CAIXA_RELSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object CAIXA_RELPORTADOR: TStringField
      FieldName = 'PORTADOR'
      Size = 50
    end
    object CAIXA_RELHISTORICOC: TStringField
      FieldName = 'HISTORICOC'
      Size = 50
    end
    object CAIXA_RELOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 50
    end
    object CAIXA_RELRECEBEMOS: TStringField
      FieldName = 'RECEBEMOS'
      Size = 50
    end
    object CAIXA_RELENDERECOR: TStringField
      FieldName = 'ENDERECOR'
      Size = 50
    end
    object CAIXA_RELEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 50
    end
    object CAIXA_RELDOC_EMITE: TStringField
      FieldName = 'DOC_EMITE'
      Size = 50
    end
    object CAIXA_RELENDERECOE: TStringField
      FieldName = 'ENDERECOE'
      Size = 50
    end
    object CAIXA_RELDC: TStringField
      FieldName = 'DC'
      FixedChar = True
      Size = 1
    end
    object CAIXA_RELAVIS_PRAZO: TStringField
      FieldName = 'AVIS_PRAZO'
      FixedChar = True
      Size = 1
    end
    object CAIXA_RELTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object CAIXA_RELSANGSUPR: TStringField
      FieldName = 'SANGSUPR'
      FixedChar = True
      Size = 1
    end
    object CAIXA_RELENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Size = 50
    end
    object CAIXA_RELESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 50
    end
    object CAIXA_RELMEIOPAG: TStringField
      FieldName = 'MEIOPAG'
      Size = 50
    end
  end
  object UniQuery1: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM HISTORIC')
    Left = 728
    Top = 664
  end
  object OBSERVACAO: TUniTable
    TableName = 'OBSERVACAO'
    Connection = DADOS_CADASTROSf.UniConnection1
    CachedUpdates = True
    Left = 904
    Top = 672
  end
  object UniDataSource7: TUniDataSource
    DataSet = OBSERVACAO
    Left = 816
    Top = 672
  end
  object ITEVENDAS_ECF2SOMA: TUniQuery
    UpdatingTable = 'ITEVENDAS_ECF2'
    KeyFields = 'CODIGOX'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from ITEVENDAS_ECF2')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_ITEVENDAS_ECF2')
    Left = 1024
    Top = 277
  end
  object DiversasFormasX: TUniQuery
    UpdatingTable = 'DiversasFormas'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from DiversasFormas')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_DiversasFormas')
    Left = 1104
    Top = 536
    object IntegerField48: TIntegerField
      FieldName = 'ID'
    end
    object StringField115: TStringField
      FieldName = 'CUPOM'
      Required = True
      Size = 9
    end
    object IntegerField49: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField116: TStringField
      FieldName = 'FORMADEPAGAMENTO'
      Size = 75
    end
    object DateField6: TDateField
      FieldName = 'EMISSAO'
    end
    object DateField7: TDateField
      FieldName = 'VENCIMENTO'
    end
    object TimeField6: TTimeField
      FieldName = 'HORA'
    end
    object StringField117: TStringField
      Alignment = taCenter
      FieldName = 'PARCELA'
      Size = 2
    end
    object FloatField58: TFloatField
      FieldName = 'TOTALPAGO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField59: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object FloatField60: TFloatField
      FieldName = 'TROCO'
      DisplayFormat = '###,##0.00'
    end
    object StringField118: TStringField
      FieldName = 'AVISTAPRAZO'
      FixedChar = True
      Size = 1
    end
    object IntegerField50: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object IntegerField51: TIntegerField
      FieldName = 'TURNO'
    end
    object SmallintField11: TSmallintField
      FieldName = 'CANCELADO'
    end
    object StringField119: TStringField
      FieldName = 'VENDASCONTAS'
      FixedChar = True
      Size = 1
    end
  end
  object Source_DiversasFormasX: TUniDataSource
    DataSet = DiversasFormasX
    Left = 992
    Top = 536
  end
  object PRODUTOS_xxxx: TUniTable
    TableName = 'PRODUTOS'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 224
    Top = 224
  end
end
