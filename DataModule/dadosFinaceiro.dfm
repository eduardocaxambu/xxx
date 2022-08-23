object DataFinanceiro: TDataFinanceiro
  OldCreateOrder = False
  Height = 799
  Width = 1209
  object Source_Receber: TUniDataSource
    DataSet = RECEBER
    Left = 194
    Top = 16
  end
  object UniDataSource3: TUniDataSource
    DataSet = CONTAS
    Left = 32
    Top = 88
  end
  object CONTAS: TUniQuery
    UpdatingTable = 'CONTAS'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CONTAS')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_CONTAS')
    Left = 120
    Top = 96
    object CONTASCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CONTASCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 100
    end
    object CONTASDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object CONTASRESULTADO: TStringField
      FieldName = 'RESULTADO'
      FixedChar = True
      Size = 1
    end
    object CONTASVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object UniDataSource4: TUniDataSource
    DataSet = CENCUSTO
    Left = 32
    Top = 144
  end
  object CENCUSTO: TUniQuery
    UpdatingTable = 'CENCUSTO'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CENCUSTO')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_CENCUSTO')
    Left = 120
    Top = 144
    object CENCUSTOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CENCUSTOCUSTO: TStringField
      FieldName = 'CUSTO'
      Required = True
      Size = 100
    end
    object CENCUSTODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object CENCUSTOVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object UniDataSource5: TUniDataSource
    DataSet = CAIXA
    Left = 32
    Top = 208
  end
  object CAIXA: TUniQuery
    UpdatingTable = 'CAIXA'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CAIXA')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_CAIXA')
    Left = 120
    Top = 208
    object CAIXACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CAIXADATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object CAIXAHORA: TTimeField
      FieldName = 'HORA'
      Required = True
    end
    object CAIXADOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 13
    end
    object CAIXACUSTO: TIntegerField
      FieldName = 'CUSTO'
    end
    object CAIXACONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object CAIXAENTRADA: TFloatField
      FieldName = 'ENTRADA'
      DisplayFormat = '###,###0.00'
    end
    object CAIXASAIDA: TFloatField
      FieldName = 'SAIDA'
      DisplayFormat = '###,###0.00'
    end
    object CAIXASALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '###,###0.00'
    end
    object CAIXAORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 15
    end
    object CAIXAOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object CAIXAHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object CAIXAGRAVACAO: TDateTimeField
      FieldName = 'GRAVACAO'
    end
    object CAIXAContas: TStringField
      FieldKind = fkLookup
      FieldName = 'Contas'
      LookupDataSet = CONTAS2
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 40
      Lookup = True
    end
    object CAIXACentroCusto: TStringField
      FieldKind = fkLookup
      FieldName = 'CentroCusto'
      LookupDataSet = CENCUSTO2
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CUSTO'
      Size = 30
      Lookup = True
    end
  end
  object UniDataSource6: TUniDataSource
    DataSet = PAGAR
    Left = 32
    Top = 464
  end
  object PAGAR: TUniQuery
    UpdatingTable = 'PAGAR'
    KeyFields = 'CONTROLE'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PAGAR')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_PAGAR')
    Left = 120
    Top = 464
    object PAGARNUMERO: TStringField
      FieldName = 'NUMERO'
      Required = True
      Size = 9
    end
    object PAGARORDEM: TStringField
      FieldName = 'ORDEM'
      Required = True
      FixedChar = True
      Size = 2
    end
    object PAGARCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object PAGARTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object PAGARMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object PAGARSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object PAGARSUBSERIE: TStringField
      FieldName = 'SUBSERIE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object PAGARHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 30
    end
    object PAGAREMISSAO: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object PAGARVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      LookupDataSet = AGENCIA
      Required = True
    end
    object PAGARVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###0.00'
    end
    object PAGARPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
    end
    object PAGARVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,###0.00'
    end
    object PAGARACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###0.00'
    end
    object PAGARDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###0.00'
    end
    object PAGARFIXO: TSmallintField
      FieldName = 'FIXO'
      DisplayFormat = '###,###0.00'
    end
    object PAGARJUROS: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = '###,###0.00'
    end
    object PAGARTAXA_JURO: TFloatField
      FieldName = 'TAXA_JURO'
      DisplayFormat = '###,###0.00'
    end
    object PAGARTIPO_JURO: TStringField
      FieldName = 'TIPO_JURO'
      FixedChar = True
      Size = 1
    end
    object PAGARCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object PAGAROPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object PAGARESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 25
    end
    object PAGARCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object PAGARCUSTO: TIntegerField
      FieldName = 'CUSTO'
    end
    object PAGARFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'Fornecedor'
      LookupDataSet = FORNECEDORES
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Size = 40
      Lookup = True
    end
    object PAGARCentroCustos: TStringField
      FieldKind = fkLookup
      FieldName = 'CentroCustos'
      LookupDataSet = CENCUSTO2
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CUSTO'
      Size = 40
      Lookup = True
    end
    object PAGARContas: TStringField
      FieldKind = fkLookup
      FieldName = 'Contas'
      LookupDataSet = CONTAS2
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 40
      Lookup = True
    end
    object PAGARDias: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dias'
      OnGetText = PAGARDiasGetText
      Calculated = True
    end
  end
  object UniDataSource8: TUniDataSource
    DataSet = BANCOS
    Left = 32
    Top = 272
  end
  object BANCOS: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM BANCOS')
    Left = 120
    Top = 272
    object BANCOSBANCO: TStringField
      FieldName = 'BANCO'
      Required = True
      Size = 5
    end
    object BANCOSNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Size = 100
    end
  end
  object UniDataSource9: TUniDataSource
    DataSet = MOVIBCO
    Left = 40
    Top = 328
  end
  object MOVIBCO: TUniQuery
    UpdatingTable = 'MOVIBCO'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM MOVIBCO')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_MOVIBCO')
    Left = 120
    Top = 328
    object MOVIBCOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object MOVIBCOCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 10
    end
    object MOVIBCOBANCO: TStringField
      FieldName = 'BANCO'
      Required = True
      Size = 5
    end
    object MOVIBCOEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object MOVIBCOIDEBCO: TStringField
      FieldName = 'IDEBCO'
      Required = True
      Size = 16
    end
    object MOVIBCOIDETRA: TStringField
      FieldName = 'IDETRA'
      Required = True
      Size = 15
    end
    object MOVIBCOVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object MOVIBCOHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 30
    end
    object MOVIBCOPREDATADO: TDateField
      FieldName = 'PREDATADO'
    end
    object MOVIBCOCOMPENSADO: TDateField
      FieldName = 'COMPENSADO'
    end
    object MOVIBCONOMINAL: TStringField
      FieldName = 'NOMINAL'
      Size = 35
    end
    object MOVIBCOSTALAO: TFloatField
      FieldName = 'STALAO'
    end
    object MOVIBCOSBANCO: TFloatField
      FieldName = 'SBANCO'
    end
    object MOVIBCOSREAL: TFloatField
      FieldName = 'SREAL'
    end
    object MOVIBCOOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object MOVIBCOCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object MOVIBCOPCONTA: TIntegerField
      FieldName = 'PCONTA'
    end
    object MOVIBCORECEBER: TIntegerField
      FieldName = 'RECEBER'
    end
    object MOVIBCOStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'Contas'
      LookupDataSet = CONTAS2
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 40
      Lookup = True
    end
    object MOVIBCOStringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'CentroCusto'
      LookupDataSet = CENCUSTO2
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CCUSTO'
      Size = 30
      Lookup = True
    end
  end
  object UniDataSource2: TUniDataSource
    DataSet = AGENCIA
    Left = 32
    Top = 400
  end
  object AGENCIA: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM AGENCIA')
    Left = 120
    Top = 400
    object AGENCIACONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 10
    end
    object AGENCIADIGITOCTA: TStringField
      FieldName = 'DIGITOCTA'
      FixedChar = True
      Size = 1
    end
    object AGENCIABANCO: TStringField
      FieldName = 'BANCO'
      Size = 5
    end
    object AGENCIANOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Size = 30
    end
    object AGENCIAAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object AGENCIADIGITOAG: TStringField
      FieldName = 'DIGITOAG'
      FixedChar = True
      Size = 1
    end
    object AGENCIACARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
    object AGENCIACEDENTE: TStringField
      FieldName = 'CEDENTE'
      Size = 15
    end
    object AGENCIADIGITOCED: TStringField
      FieldName = 'DIGITOCED'
      FixedChar = True
      Size = 1
    end
    object AGENCIAENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object AGENCIACIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object AGENCIAUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object AGENCIACEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object AGENCIALIMITE: TFloatField
      FieldName = 'LIMITE'
      Required = True
    end
    object AGENCIANOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
    end
    object AGENCIANOSSONUMERO_INICIAL: TStringField
      FieldName = 'NOSSONUMERO_INICIAL'
    end
    object AGENCIANOSSONUMERO_FINAL: TStringField
      FieldName = 'NOSSONUMERO_FINAL'
    end
    object AGENCIAVARIACAO_CARTEIRA: TStringField
      FieldName = 'VARIACAO_CARTEIRA'
      Size = 3
    end
    object AGENCIAEMISSOR_BOLETO: TIntegerField
      FieldName = 'EMISSOR_BOLETO'
    end
    object AGENCIACONF_NOSSONUMERO: TIntegerField
      FieldName = 'CONF_NOSSONUMERO'
    end
    object AGENCIACONVENIO: TStringField
      FieldName = 'CONVENIO'
    end
    object AGENCIACOOPERATIVA: TSmallintField
      FieldName = 'COOPERATIVA'
    end
    object AGENCIANOME_COOP: TStringField
      FieldName = 'NOME_COOP'
      Size = 40
    end
    object AGENCIACNPJ_COOP: TStringField
      FieldName = 'CNPJ_COOP'
      Size = 19
    end
    object AGENCIAAGENCIA_COOP: TStringField
      FieldName = 'AGENCIA_COOP'
      Size = 10
    end
    object AGENCIADVAGENCIA_COOP: TStringField
      FieldName = 'DVAGENCIA_COOP'
      FixedChar = True
      Size = 1
    end
  end
  object UniDataSource7: TUniDataSource
    DataSet = UniQuery2
    Left = 32
    Top = 24
  end
  object UniQuery2: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CONTAS')
    Left = 120
    Top = 24
  end
  object CLIENTES: TUniTable
    TableName = 'CLIENTES'
    Connection = DADOS_CADASTROSf.UniConnection1
    IndexFieldNames = 'CODIGO'
    Left = 422
    Top = 16
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
    object CLIENTESIDESTRANGEIRO: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
  end
  object FORNECEDORES: TUniTable
    TableName = 'FORNECEDORES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 200
    Top = 464
  end
  object CONTAS2: TUniTable
    TableName = 'CONTAS'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 288
    Top = 464
  end
  object CENCUSTO2: TUniTable
    TableName = 'CENCUSTO'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 376
    Top = 464
  end
  object UniDataSource10: TUniDataSource
    DataSet = CHEQUES
    Left = 202
    Top = 80
  end
  object CHEQUES: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CHEQUES')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert')
    Left = 282
    Top = 80
    object CHEQUESCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CHEQUESBANCO: TStringField
      FieldName = 'BANCO'
      FixedChar = True
      Size = 3
    end
    object CHEQUESAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 4
    end
    object CHEQUESCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object CHEQUESCHEQUE: TStringField
      FieldName = 'CHEQUE'
      Size = 6
    end
    object CHEQUESDATA: TDateField
      FieldName = 'DATA'
    end
    object CHEQUESPRE_DATADO: TDateField
      FieldName = 'PRE_DATADO'
    end
    object CHEQUESVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object CHEQUESSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object CHEQUESOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 50
    end
  end
  object BANCOSx: TUniTable
    TableName = 'BANCOS'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 200
    Top = 400
    object BANCOSxBANCO: TStringField
      FieldName = 'BANCO'
      Required = True
      Size = 5
    end
    object BANCOSxNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Size = 100
    end
  end
  object PAGAR_Duplica: TUniQuery
    UpdatingTable = 'PAGAR'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PAGAR')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_PAGAR')
    Left = 472
    Top = 464
  end
  object PAGAR_Total: TUniQuery
    UpdatingTable = 'PAGAR'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PAGAR')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_PAGAR')
    Left = 568
    Top = 464
  end
  object CAIXA_SALDO: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CAIXA')
    Left = 200
    Top = 208
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object DateField1: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object TimeField1: TTimeField
      FieldName = 'HORA'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DOCUMENTO'
      Size = 13
    end
    object IntegerField2: TIntegerField
      FieldName = 'CUSTO'
    end
    object IntegerField3: TIntegerField
      FieldName = 'CONTA'
    end
    object FloatField1: TFloatField
      FieldName = 'ENTRADA'
    end
    object FloatField2: TFloatField
      FieldName = 'SAIDA'
    end
    object FloatField3: TFloatField
      FieldName = 'SALDO'
    end
    object StringField2: TStringField
      FieldName = 'ORIGEM'
      Size = 15
    end
    object IntegerField4: TIntegerField
      FieldName = 'OPERADOR'
    end
    object StringField3: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'GRAVACAO'
    end
    object StringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'Contas'
      LookupDataSet = CONTAS2
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 40
      Lookup = True
    end
    object StringField5: TStringField
      FieldKind = fkLookup
      FieldName = 'CentroCusto'
      LookupDataSet = CENCUSTO2
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CUSTO'
      Size = 30
      Lookup = True
    end
  end
  object RECEBER_REL: TUniQuery
    UpdatingTable = 'RECEBER'
    KeyFields = 'CONTROLE'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM RECEBER')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_RECEBER')
    IndexFieldNames = 'CODIGO'
    Left = 776
    Top = 16
  end
  object PAGAR_REL: TUniQuery
    UpdatingTable = 'PAGAR'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PAGAR')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_PAGAR')
    Left = 576
    Top = 532
  end
  object FORNECEDORES_REL: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM FORNECEDORES Order by Nome')
    Left = 378
    Top = 529
  end
  object CADASTRO_CLIENTES: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Left = 936
    Top = 88
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
  object RECEBERXY: TUniQuery
    UpdatingTable = 'RECEBER'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM RECEBER')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_RECEBER')
    Left = 597
    Top = 120
    object RECEBERXYNUMERO: TStringField
      FieldName = 'NUMERO'
      Required = True
      Size = 9
    end
    object RECEBERXYORDEM: TStringField
      Alignment = taCenter
      FieldName = 'ORDEM'
      Required = True
      FixedChar = True
      Size = 2
    end
    object RECEBERXYCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object RECEBERXYTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object RECEBERXYMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object RECEBERXYSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object RECEBERXYSUBSERIE: TStringField
      FieldName = 'SUBSERIE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object RECEBERXYORIGEM: TStringField
      FieldName = 'ORIGEM'
      Required = True
      FixedChar = True
      Size = 2
    end
    object RECEBERXYHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 30
    end
    object RECEBERXYEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object RECEBERXYVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Required = True
    end
    object RECEBERXYVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object RECEBERXYRECEBIMENTO: TDateField
      FieldName = 'RECEBIMENTO'
    end
    object RECEBERXYVALOR_RECEBIDO: TFloatField
      FieldName = 'VALOR_RECEBIDO'
      DisplayFormat = '###,##0.00'
    end
    object RECEBERXYACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,##0.00'
    end
    object RECEBERXYDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object RECEBERXYFIXO: TSmallintField
      FieldName = 'FIXO'
    end
    object RECEBERXYJUROS: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = '###,##0.00'
    end
    object RECEBERXYCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object RECEBERXYOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object RECEBERXYESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 25
    end
    object RECEBERXYBANCO: TSmallintField
      FieldName = 'BANCO'
    end
    object RECEBERXYCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object RECEBERXYCUSTO: TIntegerField
      FieldName = 'CUSTO'
    end
    object RECEBERXYAG_CONTA: TStringField
      FieldName = 'AG_CONTA'
      Size = 10
    end
    object RECEBERXYAG_BANCO: TStringField
      FieldName = 'AG_BANCO'
      Size = 5
    end
    object RECEBERXYQUITADONOECF: TSmallintField
      FieldName = 'QUITADONOECF'
    end
    object RECEBERXYDescricaoCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoCliente'
      LookupDataSet = CLIENTES
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Size = 50
      Lookup = True
    end
    object RECEBERXYMARCADO: TStringField
      Alignment = taCenter
      FieldName = 'MARCADO'
      FixedChar = True
      Size = 1
    end
    object RECEBERXYID: TIntegerField
      FieldName = 'ID'
    end
    object RECEBERXYCANCELADO: TSmallintField
      FieldName = 'CANCELADO'
    end
    object RECEBERXYPORTADOR: TStringField
      FieldName = 'PORTADOR'
      Size = 50
    end
    object RECEBERXYDias: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'Dias'
      OnGetText = RECEBERXYDiasGetText
      Calculated = True
    end
    object RECEBERXYValorDevido: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'Valor Devido'
      OnGetText = RECEBERXYValorDevidoGetText
      Calculated = True
    end
    object RECEBERXYN_CAIXA: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object RECEBERXYTURNO: TIntegerField
      FieldName = 'TURNO'
    end
    object RECEBERXYDATA: TDateField
      FieldName = 'DATA'
    end
    object RECEBERXYHORA: TTimeField
      FieldName = 'HORA'
    end
  end
  object CADERNETAPAGA: TUniQuery
    UpdatingTable = 'CADERNETAPAGA'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CADERNETAPAGA')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_CADERNETAPAGA')
    Left = 632
    Top = 208
  end
  object Sou_CADERNETAPAGA: TUniDataSource
    DataSet = CADERNETAPAGA
    Left = 520
    Top = 208
  end
  object CADERNETADEVO: TUniQuery
    UpdatingTable = 'CADERNETADEVO'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CADERNETADEVO')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_CADERNETADEVO')
    Left = 880
    Top = 208
  end
  object Sou_CADERNETADEVO: TUniDataSource
    DataSet = CADERNETADEVO
    Left = 768
    Top = 208
  end
  object CLIENTES_Rel: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CLIENTES Order by Nome')
    IndexFieldNames = 'NOME'
    Left = 880
    Top = 16
  end
  object CADERNETA: TUniQuery
    UpdatingTable = 'CADERNETA'
    KeyFields = 'CODIGOX'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CADERNETA')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_CADERNETA')
    Left = 400
    Top = 208
    object CADERNETACODIGOX: TIntegerField
      FieldName = 'CODIGOX'
      Required = True
    end
    object CADERNETACUPOM: TStringField
      FieldName = 'CUPOM'
      Required = True
      Size = 6
    end
    object CADERNETAN_CAIXA: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object CADERNETADATA: TDateField
      FieldName = 'DATA'
    end
    object CADERNETAHORA: TTimeField
      FieldName = 'HORA'
    end
    object CADERNETAOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
      Required = True
    end
    object CADERNETAITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object CADERNETACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CADERNETABARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object CADERNETADESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object CADERNETAMARCADO: TStringField
      Alignment = taCenter
      FieldName = 'MARCADO'
      FixedChar = True
      Size = 1
    end
    object CADERNETAQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,##0.00'
    end
    object CADERNETAPRECO: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = '###,##0.00'
    end
    object CADERNETATOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object CADERNETADESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object CADERNETAACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,##0.00'
    end
    object CADERNETARECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
      DisplayFormat = '###,##0.00'
    end
    object CADERNETAVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object CADERNETAPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
    end
    object CADERNETACLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object CADERNETAPORTADOR: TStringField
      FieldName = 'PORTADOR'
      Size = 50
    end
    object CADERNETAPROSER: TStringField
      FieldName = 'PROSER'
      FixedChar = True
      Size = 1
    end
    object CADERNETACODOBJ: TIntegerField
      FieldName = 'CODOBJ'
    end
    object CADERNETANUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
  end
  object Sou_caderneta: TUniDataSource
    DataSet = CADERNETA
    Left = 304
    Top = 208
  end
  object produto: TUniTable
    TableName = 'produtos'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 400
    Top = 272
  end
  object CADERNETA_REL: TUniQuery
    UpdatingTable = 'CADERNETA'
    KeyFields = 'CODIGOX'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CADERNETA')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_CADERNETA')
    Left = 528
    Top = 272
    object IntegerField5: TIntegerField
      FieldName = 'CODIGOX'
      Required = True
    end
    object StringField6: TStringField
      FieldName = 'CUPOM'
      Required = True
      Size = 6
    end
    object IntegerField6: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object DateField2: TDateField
      FieldName = 'DATA'
    end
    object TimeField2: TTimeField
      FieldName = 'HORA'
    end
    object IntegerField7: TIntegerField
      FieldName = 'OPERADOR'
      Required = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object IntegerField9: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField7: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object StringField8: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object FloatField4: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,##0.00'
    end
    object FloatField5: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField6: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object FloatField7: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField8: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField9: TFloatField
      FieldName = 'RECEBIDO'
      DisplayFormat = '###,##0.00'
    end
    object DateField3: TDateField
      FieldName = 'VENCIMENTO'
    end
    object DateField4: TDateField
      FieldName = 'PAGAMENTO'
    end
    object IntegerField10: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
  end
  object ITEVENDAS_ECF2: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from ITEVENDAS_ECF2')
    Left = 640
    Top = 16
    object ITEVENDAS_ECF2CODIGOX: TIntegerField
      FieldName = 'CODIGOX'
      Required = True
    end
    object ITEVENDAS_ECF2CUPOM: TStringField
      FieldName = 'CUPOM'
      Required = True
      Size = 6
    end
    object ITEVENDAS_ECF2N_CAIXA: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object ITEVENDAS_ECF2DATA: TDateField
      FieldName = 'DATA'
    end
    object ITEVENDAS_ECF2HORA: TTimeField
      FieldName = 'HORA'
    end
    object ITEVENDAS_ECF2OPERADOR: TIntegerField
      FieldName = 'OPERADOR'
      Required = True
    end
    object ITEVENDAS_ECF2ITEM: TIntegerField
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
      DisplayFormat = '###,##0.00'
    end
    object ITEVENDAS_ECF2PRECO: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = '###,##0.00'
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
    end
    object ITEVENDAS_ECF2ACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object ITEVENDAS_ECF2TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
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
    object ITEVENDAS_ECF2PRECORAT: TFloatField
      FieldName = 'PRECORAT'
    end
    object ITEVENDAS_ECF2PRECOPRO: TFloatField
      FieldName = 'PRECOPRO'
    end
    object ITEVENDAS_ECF2TOTALRAT: TFloatField
      FieldName = 'TOTALRAT'
    end
    object ITEVENDAS_ECF2DESCONTORAT: TFloatField
      FieldName = 'DESCONTORAT'
    end
    object ITEVENDAS_ECF2ACRESCIMORAT: TFloatField
      FieldName = 'ACRESCIMORAT'
    end
  end
  object Source_ITEVENDAS_ECF2: TDataSource
    DataSet = ITEVENDAS_ECF2
    Left = 520
    Top = 16
  end
  object RECEBER_MARCA: TUniQuery
    UpdatingTable = 'RECEBER'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM RECEBER')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_RECEBER')
    Left = 440
    Top = 80
    object StringField9: TStringField
      FieldName = 'NUMERO'
      Required = True
      Size = 9
    end
    object StringField10: TStringField
      Alignment = taCenter
      FieldName = 'ORDEM'
      Required = True
      FixedChar = True
      Size = 2
    end
    object IntegerField11: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField11: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField12: TStringField
      FieldName = 'MODELO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField13: TStringField
      FieldName = 'SERIE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object StringField14: TStringField
      FieldName = 'SUBSERIE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField15: TStringField
      FieldName = 'ORIGEM'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField16: TStringField
      FieldName = 'HISTORICO'
      Size = 30
    end
    object DateField5: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object DateField6: TDateField
      FieldName = 'VENCIMENTO'
      Required = True
    end
    object FloatField10: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object DateField7: TDateField
      FieldName = 'RECEBIMENTO'
    end
    object FloatField11: TFloatField
      FieldName = 'VALOR_RECEBIDO'
    end
    object FloatField12: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object FloatField13: TFloatField
      FieldName = 'DESCONTO'
    end
    object SmallintField1: TSmallintField
      FieldName = 'FIXO'
    end
    object FloatField14: TFloatField
      FieldName = 'JUROS'
    end
    object IntegerField12: TIntegerField
      FieldName = 'CONTROLE'
    end
    object IntegerField13: TIntegerField
      FieldName = 'OPERADOR'
    end
    object StringField17: TStringField
      FieldName = 'ESPECIE'
      Size = 25
    end
    object SmallintField2: TSmallintField
      FieldName = 'BANCO'
    end
    object IntegerField14: TIntegerField
      FieldName = 'CONTA'
    end
    object IntegerField15: TIntegerField
      FieldName = 'CUSTO'
    end
    object StringField18: TStringField
      FieldName = 'AG_CONTA'
      Size = 10
    end
    object StringField19: TStringField
      FieldName = 'AG_BANCO'
      Size = 5
    end
    object SmallintField3: TSmallintField
      FieldName = 'QUITADONOECF'
    end
    object StringField20: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoCliente'
      LookupDataSet = CLIENTES
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Size = 50
      Lookup = True
    end
    object StringField21: TStringField
      FieldName = 'MARCADO'
      FixedChar = True
      Size = 1
    end
    object IntegerField16: TIntegerField
      FieldName = 'ID'
    end
    object SmallintField4: TSmallintField
      FieldName = 'CANCELADO'
    end
    object StringField22: TStringField
      FieldName = 'PORTADOR'
      Size = 50
    end
    object StringField23: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'Dias'
      Calculated = True
    end
    object StringField24: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'Valor Devido'
      Calculated = True
    end
  end
  object CARTOES: TUniQuery
    UpdatingTable = 'CARTOES'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CARTOES')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_CARTOES')
    Left = 752
    Top = 280
    object CARTOESID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CARTOESDIAS: TIntegerField
      FieldName = 'DIAS'
      Required = True
    end
    object CARTOESDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object CARTOESVALORTAXA: TFloatField
      FieldName = 'VALORTAXA'
      DisplayFormat = '###,##0.00'
    end
    object CARTOESDEBITOCREDITO: TStringField
      FieldName = 'DEBITOCREDITO'
      FixedChar = True
      Size = 1
    end
  end
  object CARTOESx: TUniTable
    TableName = 'CARTOES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 960
    Top = 264
  end
  object Source_CARTOES: TUniDataSource
    DataSet = CARTOES
    Left = 656
    Top = 280
  end
  object CARTOESITENS_TOTAL: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CARTOESITENS')
    Left = 872
    Top = 336
    object IntegerField17: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IntegerField18: TIntegerField
      FieldName = 'CARTOES'
      Required = True
    end
    object DateField8: TDateField
      FieldName = 'EMISSAO'
    end
    object DateField9: TDateField
      FieldName = 'VENCIMENTO'
    end
    object FloatField15: TFloatField
      FieldName = 'VALOR'
      EditFormat = '###,##0.00'
    end
    object FloatField16: TFloatField
      FieldName = 'VALOR_RECEBIDO'
      EditFormat = '###,##0.00'
    end
    object StringField25: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object FloatField17: TFloatField
      FieldName = 'VALORDES'
      EditFormat = '###,##0.00'
    end
    object StringField26: TStringField
      FieldName = 'ORDEM'
      Size = 2
    end
    object StringField27: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = CARTOESx
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CARTOES'
      Lookup = True
    end
    object CARTOESITENS_TOTALCUPOM: TIntegerField
      FieldName = 'CUPOM'
    end
    object CARTOESITENS_TOTALHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
  end
  object CARTOESITENS_COPIA: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CARTOESITENS')
    Left = 992
    Top = 336
    object IntegerField19: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IntegerField20: TIntegerField
      FieldName = 'CARTOES'
      Required = True
    end
    object DateField10: TDateField
      FieldName = 'EMISSAO'
    end
    object DateField11: TDateField
      FieldName = 'VENCIMENTO'
    end
    object FloatField18: TFloatField
      FieldName = 'VALOR'
      EditFormat = '###,##0.00'
    end
    object FloatField19: TFloatField
      FieldName = 'VALOR_RECEBIDO'
      EditFormat = '###,##0.00'
    end
    object StringField28: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object FloatField20: TFloatField
      FieldName = 'VALORDES'
      EditFormat = '###,##0.00'
    end
    object StringField29: TStringField
      FieldName = 'ORDEM'
      Size = 2
    end
    object StringField30: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = CARTOESx
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CARTOES'
      Lookup = True
    end
    object CARTOESITENS_COPIACUPOM: TIntegerField
      FieldName = 'CUPOM'
    end
    object CARTOESITENS_COPIAHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
  end
  object CLIENTES_CONTAS: TUniTable
    TableName = 'CLIENTES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 339
    Top = 16
    object IntegerField21: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField31: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object StringField32: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object StringField33: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object StringField34: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object StringField35: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object StringField36: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object StringField37: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object StringField38: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField39: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object StringField40: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object StringField41: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object StringField42: TStringField
      FieldName = 'FIS_JUR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField43: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object IntegerField22: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object FloatField21: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object IntegerField23: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object SmallintField5: TSmallintField
      FieldName = 'CONVENIO'
    end
    object SmallintField6: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object FloatField22: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object FloatField23: TFloatField
      FieldName = 'A_RECEBER'
    end
    object SmallintField7: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
      Required = True
    end
    object FloatField24: TFloatField
      FieldName = 'ATRASADO'
    end
    object FloatField25: TFloatField
      FieldName = 'RECEBIDO'
    end
    object MemoField1: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object SmallintField8: TSmallintField
      FieldName = 'ATIVO'
      Required = True
    end
    object IntegerField24: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField25: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object BlobField1: TBlobField
      FieldName = 'FOTO'
    end
    object StringField44: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object SmallintField9: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
    object StringField45: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
  end
  object CARTOESITENSXXXX: TUniQuery
    UpdatingTable = 'CARTOESITENS'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CARTOESITENS')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=Gen_CARTOESITENS')
    Left = 896
    Top = 408
    object CARTOESITENSXXXXID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CARTOESITENSXXXXCARTOES: TIntegerField
      FieldName = 'CARTOES'
      Required = True
    end
    object CARTOESITENSXXXXEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object CARTOESITENSXXXXVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object CARTOESITENSXXXXVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object CARTOESITENSXXXXVALOR_RECEBIDO: TFloatField
      FieldName = 'VALOR_RECEBIDO'
      DisplayFormat = '###,##0.00'
    end
    object CARTOESITENSXXXXHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object CARTOESITENSXXXXVALORDES: TFloatField
      FieldName = 'VALORDES'
      DisplayFormat = '###,##0.00'
    end
    object CARTOESITENSXXXXORDEM: TStringField
      FieldName = 'ORDEM'
      Size = 2
    end
    object CARTOESITENSXXXXDescrição: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = CARTOESx
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CARTOES'
      Lookup = True
    end
    object CARTOESITENSXXXXDias: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dias'
      Calculated = True
    end
    object CARTOESITENSXXXXCUPOM: TIntegerField
      FieldName = 'CUPOM'
    end
    object CARTOESITENSXXXXHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
  end
  object CARTOESITENS: TUniQuery
    UpdatingTable = 'CARTOESITENS'
    KeyFields = 'ID'
    SQLInsert.Strings = (
      'INSERT INTO CARTOESITENS'
      
        '  (ID, CARTOES, CUPOM, ORDEM, HISTORICO, EMISSAO, VENCIMENTO, HO' +
        'RA, VALOR, VALORDES, VALOR_RECEBIDO)'
      'VALUES'
      
        '  (:ID, :CARTOES, :CUPOM, :ORDEM, :HISTORICO, :EMISSAO, :VENCIME' +
        'NTO, :HORA, :VALOR, :VALORDES, :VALOR_RECEBIDO)')
    SQLDelete.Strings = (
      'DELETE FROM CARTOESITENS'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE CARTOESITENS'
      'SET'
      
        '  ID = :ID, CARTOES = :CARTOES, CUPOM = :CUPOM, ORDEM = :ORDEM, ' +
        'HISTORICO = :HISTORICO, EMISSAO = :EMISSAO, VENCIMENTO = :VENCIM' +
        'ENTO, HORA = :HORA, VALOR = :VALOR, VALORDES = :VALORDES, VALOR_' +
        'RECEBIDO = :VALOR_RECEBIDO'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM CARTOESITENS'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, CARTOES, CUPOM, ORDEM, HISTORICO, EMISSAO, VENCIMENTO' +
        ', HORA, VALOR, VALORDES, VALOR_RECEBIDO FROM CARTOESITENS'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CARTOESITENS'
      ''
      ') q')
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CARTOESITENS')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=Gen_CARTOESITENS')
    Left = 760
    Top = 336
    object CARTOESITENSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CARTOESITENSCARTOES: TIntegerField
      FieldName = 'CARTOES'
      Required = True
    end
    object CARTOESITENSCUPOM: TIntegerField
      FieldName = 'CUPOM'
    end
    object CARTOESITENSORDEM: TStringField
      FieldName = 'ORDEM'
      FixedChar = True
      Size = 2
    end
    object CARTOESITENSHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object CARTOESITENSEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object CARTOESITENSVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object CARTOESITENSHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
    object CARTOESITENSVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object CARTOESITENSVALORDES: TFloatField
      FieldName = 'VALORDES'
    end
    object CARTOESITENSVALOR_RECEBIDO: TFloatField
      FieldName = 'VALOR_RECEBIDO'
    end
    object CARTOESITENSDescrição: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = CARTOESx
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CARTOES'
      Lookup = True
    end
    object CARTOESITENSDIAS: TStringField
      FieldKind = fkCalculated
      FieldName = 'DIAS'
      OnGetText = CARTOESITENSDIASGetText
      Calculated = True
    end
  end
  object Source_CARTOESITENS: TUniDataSource
    DataSet = CARTOESITENS
    Left = 648
    Top = 336
  end
  object RECEBER_SOMA: TUniQuery
    UpdatingTable = 'RECEBER'
    KeyFields = 'CONTROLE'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM RECEBER')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_RECEBER')
    Left = 1112
    Top = 16
  end
  object UniTable1: TUniTable
    TableName = 'CREDITO'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 1120
    Top = 120
  end
  object CREDITO: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CREDITO')
    Left = 360
    Top = 80
    object CREDITOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CREDITONOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object CREDITOVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object Soma_Receber: TUniQuery
    UpdatingTable = 'RECEBER'
    KeyFields = 'CONTROLE'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM RECEBER')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_RECEBER')
    Left = 992
    Top = 16
  end
  object RECEBER: TUniQuery
    UpdatingTable = 'RECEBER'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM RECEBER')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_RECEBER')
    Left = 264
    Top = 16
    object RECEBERValorDevido: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'Valor Devido'
      OnGetText = RECEBERXYValorDevidoGetText
      Calculated = True
    end
    object RECEBERID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object RECEBERNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 9
    end
    object RECEBERCANCELADO: TSmallintField
      FieldName = 'CANCELADO'
    end
    object RECEBERN_CAIXA: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object RECEBERTURNO: TIntegerField
      FieldName = 'TURNO'
    end
    object RECEBERDATA: TDateField
      FieldName = 'DATA'
    end
    object RECEBERHORA: TTimeField
      FieldName = 'HORA'
    end
    object RECEBERMARCADO: TStringField
      Alignment = taCenter
      FieldName = 'MARCADO'
      FixedChar = True
      Size = 1
    end
    object RECEBERORDEM: TStringField
      FieldName = 'ORDEM'
      FixedChar = True
      Size = 2
    end
    object RECEBERCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object RECEBERTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object RECEBERMODELO: TStringField
      FieldName = 'MODELO'
      FixedChar = True
      Size = 2
    end
    object RECEBERSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 3
    end
    object RECEBERSUBSERIE: TStringField
      FieldName = 'SUBSERIE'
      FixedChar = True
      Size = 2
    end
    object RECEBERORIGEM: TStringField
      FieldName = 'ORIGEM'
      FixedChar = True
      Size = 2
    end
    object RECEBERHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 30
    end
    object RECEBEREMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object RECEBERVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object RECEBERVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object RECEBERRECEBIMENTO: TDateField
      FieldName = 'RECEBIMENTO'
    end
    object RECEBERVALOR_RECEBIDO: TFloatField
      FieldName = 'VALOR_RECEBIDO'
      DisplayFormat = '###,##0.00'
    end
    object vv: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,##0.00'
    end
    object RECEBERDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object RECEBERFIXO: TSmallintField
      FieldName = 'FIXO'
      DisplayFormat = '###,##0.00'
    end
    object RECEBERJUROS: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = '###,##0.00'
    end
    object RECEBERCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object RECEBEROPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object RECEBERESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 25
    end
    object RECEBERBANCO: TSmallintField
      FieldName = 'BANCO'
    end
    object RECEBERCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object RECEBERCUSTO: TIntegerField
      FieldName = 'CUSTO'
    end
    object RECEBERAG_CONTA: TStringField
      FieldName = 'AG_CONTA'
      Size = 10
    end
    object RECEBERAG_BANCO: TStringField
      FieldName = 'AG_BANCO'
      Size = 5
    end
    object RECEBERPORTADOR: TStringField
      FieldName = 'PORTADOR'
      Size = 50
    end
    object RECEBERDias: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'Dias'
      OnGetText = RECEBERDiasGetText
      Calculated = True
    end
    object RECEBERQUITADONOECF: TSmallintField
      FieldName = 'QUITADONOECF'
    end
    object RECEBERDescriçãodoCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'odoCliente'
      LookupDataSet = CLIENTES
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Lookup = True
    end
    object RECEBERMEIOSPAGAMENTO: TStringField
      FieldName = 'MEIOSPAGAMENTO'
      Size = 150
    end
  end
  object UniQuery1: TUniQuery
    UpdatingTable = 'RECEBER'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM RECEBER')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_RECEBER')
    Left = 693
    Top = 120
    object StringField46: TStringField
      FieldName = 'NUMERO'
      Required = True
      Size = 9
    end
    object StringField47: TStringField
      Alignment = taCenter
      FieldName = 'ORDEM'
      Required = True
      FixedChar = True
      Size = 2
    end
    object IntegerField26: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField48: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField49: TStringField
      FieldName = 'MODELO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField50: TStringField
      FieldName = 'SERIE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object StringField51: TStringField
      FieldName = 'SUBSERIE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField52: TStringField
      FieldName = 'ORIGEM'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField53: TStringField
      FieldName = 'HISTORICO'
      Size = 30
    end
    object DateField12: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object DateField13: TDateField
      FieldName = 'VENCIMENTO'
      Required = True
    end
    object FloatField26: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object DateField14: TDateField
      FieldName = 'RECEBIMENTO'
    end
    object FloatField27: TFloatField
      FieldName = 'VALOR_RECEBIDO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField28: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField29: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object SmallintField10: TSmallintField
      FieldName = 'FIXO'
    end
    object FloatField30: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = '###,##0.00'
    end
    object IntegerField27: TIntegerField
      FieldName = 'CONTROLE'
    end
    object IntegerField28: TIntegerField
      FieldName = 'OPERADOR'
    end
    object StringField54: TStringField
      FieldName = 'ESPECIE'
      Size = 25
    end
    object SmallintField11: TSmallintField
      FieldName = 'BANCO'
    end
    object IntegerField29: TIntegerField
      FieldName = 'CONTA'
    end
    object IntegerField30: TIntegerField
      FieldName = 'CUSTO'
    end
    object StringField55: TStringField
      FieldName = 'AG_CONTA'
      Size = 10
    end
    object StringField56: TStringField
      FieldName = 'AG_BANCO'
      Size = 5
    end
    object SmallintField12: TSmallintField
      FieldName = 'QUITADONOECF'
    end
    object StringField57: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoCliente'
      LookupDataSet = CLIENTES
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Size = 50
      Lookup = True
    end
    object StringField58: TStringField
      Alignment = taCenter
      FieldName = 'MARCADO'
      FixedChar = True
      Size = 1
    end
    object IntegerField31: TIntegerField
      FieldName = 'ID'
    end
    object SmallintField13: TSmallintField
      FieldName = 'CANCELADO'
    end
    object StringField59: TStringField
      FieldName = 'PORTADOR'
      Size = 50
    end
    object StringField60: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'Dias'
      OnGetText = RECEBERXYDiasGetText
      Calculated = True
    end
    object StringField61: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'Valor Devido'
      OnGetText = RECEBERXYValorDevidoGetText
      Calculated = True
    end
    object IntegerField32: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object IntegerField33: TIntegerField
      FieldName = 'TURNO'
    end
    object DateField15: TDateField
      FieldName = 'DATA'
    end
    object TimeField3: TTimeField
      FieldName = 'HORA'
    end
    object StringField62: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricaox'
      LookupDataSet = CLIENTES_CONTAS
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Size = 50
      Lookup = True
    end
  end
  object Source_INADIMPLENTES: TUniDataSource
    DataSet = INADIMPLENTES
    Left = 152
    Top = 640
  end
  object CLIENTES_I: TUniTable
    TableName = 'CLIENTES'
    Connection = DADOS_CADASTROSf.UniConnection1
    IndexFieldNames = 'CODIGO'
    Left = 534
    Top = 648
    object IntegerField34: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField63: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object StringField64: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object StringField65: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object StringField66: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object StringField67: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object StringField68: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object StringField69: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object StringField70: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField71: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object StringField72: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object StringField73: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object StringField74: TStringField
      FieldName = 'FIS_JUR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField75: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object IntegerField35: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object FloatField31: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object IntegerField36: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object SmallintField14: TSmallintField
      FieldName = 'CONVENIO'
    end
    object SmallintField15: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object FloatField32: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object FloatField33: TFloatField
      FieldName = 'A_RECEBER'
    end
    object SmallintField16: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
      Required = True
    end
    object FloatField34: TFloatField
      FieldName = 'ATRASADO'
    end
    object FloatField35: TFloatField
      FieldName = 'RECEBIDO'
    end
    object MemoField2: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object SmallintField17: TSmallintField
      FieldName = 'ATIVO'
      Required = True
    end
    object IntegerField37: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField38: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object BlobField2: TBlobField
      FieldName = 'FOTO'
    end
    object StringField76: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object SmallintField18: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
    object StringField77: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
  end
  object CLIENTES_INADIMPLENTES: TUniTable
    TableName = 'CLIENTES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 411
    Top = 648
    object IntegerField39: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField78: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object StringField79: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object StringField80: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object StringField81: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object StringField82: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object StringField83: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object StringField84: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object StringField85: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField86: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object StringField87: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object StringField88: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object StringField89: TStringField
      FieldName = 'FIS_JUR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField90: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object IntegerField40: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object FloatField36: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object IntegerField41: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object SmallintField19: TSmallintField
      FieldName = 'CONVENIO'
    end
    object SmallintField20: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object FloatField37: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object FloatField38: TFloatField
      FieldName = 'A_RECEBER'
    end
    object SmallintField21: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
      Required = True
    end
    object FloatField39: TFloatField
      FieldName = 'ATRASADO'
    end
    object FloatField40: TFloatField
      FieldName = 'RECEBIDO'
    end
    object MemoField3: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object SmallintField22: TSmallintField
      FieldName = 'ATIVO'
      Required = True
    end
    object IntegerField42: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField43: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object BlobField3: TBlobField
      FieldName = 'FOTO'
    end
    object StringField91: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object SmallintField23: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
    object StringField92: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
  end
  object INADIMPLENTES: TUniQuery
    UpdatingTable = 'INADIMPLENTES'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM INADIMPLENTES')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_INADIMPLENTES')
    Left = 280
    Top = 648
    object StringField93: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'Valor Devido'
      OnGetText = RECEBERXYValorDevidoGetText
      Calculated = True
    end
    object IntegerField44: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField94: TStringField
      FieldName = 'NUMERO'
      Size = 9
    end
    object SmallintField24: TSmallintField
      FieldName = 'CANCELADO'
    end
    object IntegerField45: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object IntegerField46: TIntegerField
      FieldName = 'TURNO'
    end
    object DateField16: TDateField
      FieldName = 'DATA'
    end
    object TimeField4: TTimeField
      FieldName = 'HORA'
    end
    object StringField95: TStringField
      Alignment = taCenter
      FieldName = 'MARCADO'
      FixedChar = True
      Size = 1
    end
    object StringField96: TStringField
      FieldName = 'ORDEM'
      FixedChar = True
      Size = 2
    end
    object IntegerField47: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField97: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object StringField98: TStringField
      FieldName = 'MODELO'
      FixedChar = True
      Size = 2
    end
    object StringField99: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 3
    end
    object StringField100: TStringField
      FieldName = 'SUBSERIE'
      FixedChar = True
      Size = 2
    end
    object StringField101: TStringField
      FieldName = 'ORIGEM'
      FixedChar = True
      Size = 2
    end
    object StringField102: TStringField
      FieldName = 'HISTORICO'
      Size = 30
    end
    object DateField17: TDateField
      FieldName = 'EMISSAO'
    end
    object DateField18: TDateField
      FieldName = 'VENCIMENTO'
    end
    object FloatField41: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object DateField19: TDateField
      FieldName = 'RECEBIMENTO'
    end
    object FloatField42: TFloatField
      FieldName = 'VALOR_RECEBIDO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField43: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField44: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object SmallintField25: TSmallintField
      FieldName = 'FIXO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField45: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = '###,##0.00'
    end
    object IntegerField48: TIntegerField
      FieldName = 'CONTROLE'
    end
    object IntegerField49: TIntegerField
      FieldName = 'OPERADOR'
    end
    object StringField103: TStringField
      FieldName = 'ESPECIE'
      Size = 25
    end
    object SmallintField26: TSmallintField
      FieldName = 'BANCO'
    end
    object IntegerField50: TIntegerField
      FieldName = 'CONTA'
    end
    object IntegerField51: TIntegerField
      FieldName = 'CUSTO'
    end
    object StringField104: TStringField
      FieldName = 'AG_CONTA'
      Size = 10
    end
    object StringField105: TStringField
      FieldName = 'AG_BANCO'
      Size = 5
    end
    object StringField106: TStringField
      FieldName = 'PORTADOR'
      Size = 50
    end
    object StringField107: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'Dias'
      OnGetText = StringField107GetText
      Calculated = True
    end
    object SmallintField27: TSmallintField
      FieldName = 'QUITADONOECF'
    end
    object StringField108: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'odoCliente'
      LookupDataSet = CLIENTES_I
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Lookup = True
    end
    object INADIMPLENTESMEIOSPAGAMENTO: TStringField
      FieldName = 'MEIOSPAGAMENTO'
      Size = 150
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
    Left = 1016
    Top = 664
  end
end
