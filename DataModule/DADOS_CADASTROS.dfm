object DADOS_CADASTROSf: TDADOS_CADASTROSf
  OldCreateOrder = False
  Height = 714
  Width = 1110
  object UniConnection1: TUniConnection
    ProviderName = 'InterBase'
    Database = 'c:\DADOSFDB\X\DADOS.FDB'
    Username = 'SYSDBA'
    Connected = True
    LoginPrompt = False
    Left = 33
    Top = 8
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 138
    Top = 8
  end
  object Clientes: TUniQuery
    UpdatingTable = 'Clientes'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select first 100 * from Clientes Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_clientes')
    IndexFieldNames = 'NOME'
    Left = 136
    Top = 73
    object ClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object ClientesNOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object ClientesFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object ClientesCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object ClientesCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object ClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object ClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object ClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object ClientesCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object ClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object ClientesCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object ClientesIE: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object ClientesRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object ClientesUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object ClientesPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object ClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object ClientesFAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object ClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object ClientesCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object ClientesCELULAR3: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object ClientesCELULAR4: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object ClientesFIS_JUR: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object ClientesTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object ClientesENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object ClientesCOMPLEMENTO_ENT: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object ClientesBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object ClientesCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object ClientesCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object ClientesUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object ClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object ClientesNUMERO_ENT: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object ClientesENDERECO_COB: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object ClientesNUMERO_COB: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object ClientesCOMPLEMENTO_COB: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object ClientesBAIRRO_COB: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object ClientesCEP_COB: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object ClientesCIDADE_COB: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object ClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object ClientesUF_COB: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object ClientesVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object ClientesGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object ClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object ClientesCOD_CONVENIO: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object ClientesCONVENIO: TSmallintField
      FieldName = 'CONVENIO'
    end
    object ClientesDIA_ACERTO: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object ClientesPER_CONVENIO: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object ClientesA_RECEBER: TFloatField
      FieldName = 'A_RECEBER'
    end
    object ClientesCONCEDER_CREDITO: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object ClientesATRASADO: TFloatField
      FieldName = 'ATRASADO'
    end
    object ClientesRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object ClientesOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object ClientesATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object ClientesOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object ClientesCOD_TABELA_PRECO: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object ClientesFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object ClientesSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object ClientesIDESTRANGEIRO: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object ClientesCLIENTEX: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object ClientesFORNECEDORX: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object ClientesVENDEDORX: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object ClientesEMITENTEX: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object ClientesUSUARIOX: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object ClientesOPERADORX: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object ClientesSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object ClientesCODIGO2: TIntegerField
      FieldName = 'CODIGO2'
    end
    object ClientesCODIGO3: TIntegerField
      FieldName = 'CODIGO3'
    end
    object ClientesUSA_DESCONTO_SUFRAMA: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
    object ClientesDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object ClientesDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object ClientesHTTP: TStringField
      FieldName = 'HTTP'
      Size = 50
    end
    object ClientesFACEBOOK: TStringField
      FieldName = 'FACEBOOK'
      Size = 50
    end
    object ClientesREFERENCIA1: TStringField
      FieldName = 'REFERENCIA1'
      Size = 50
    end
    object ClientesFREFERENCIA1: TStringField
      FieldName = 'FREFERENCIA1'
      Size = 14
    end
    object ClientesREFERENCIA2: TStringField
      FieldName = 'REFERENCIA2'
      Size = 50
    end
    object ClientesFREFERENCIA2: TStringField
      FieldName = 'FREFERENCIA2'
      Size = 14
    end
    object ClientesREFERENCIA3: TStringField
      FieldName = 'REFERENCIA3'
      Size = 50
    end
    object ClientesFREFERENCIA3: TStringField
      FieldName = 'FREFERENCIA3'
      Size = 14
    end
    object ClientesNOMEDORABALHO: TStringField
      FieldName = 'NOMEDORABALHO'
      Size = 50
    end
    object ClientesENDERECODETRABALHO: TStringField
      FieldName = 'ENDERECODETRABALHO'
      Size = 50
    end
    object ClientesFNOMEDORABALHO: TStringField
      FieldName = 'FNOMEDORABALHO'
      Size = 14
    end
    object ClientesCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 50
    end
    object ClientesCARTEIRATRABALHO: TStringField
      FieldName = 'CARTEIRATRABALHO'
      Size = 10
    end
    object ClientesSPC: TStringField
      FieldName = 'SPC'
      Size = 10
    end
    object ClientesLIMITEDEDEBITOS: TFloatField
      FieldName = 'LIMITEDEDEBITOS'
    end
    object ClientesVALORDASRENDAS: TFloatField
      FieldName = 'VALORDASRENDAS'
    end
    object ClientesVALORDASDESPESAS: TFloatField
      FieldName = 'VALORDASDESPESAS'
    end
    object ClientesPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
    end
    object ClientesDIADEBLOQUEIO: TIntegerField
      FieldName = 'DIADEBLOQUEIO'
    end
    object ClientesDIASPARAPRAZO: TIntegerField
      FieldName = 'DIASPARAPRAZO'
    end
    object ClientesBLOQUEIAAPRAZO: TStringField
      FieldName = 'BLOQUEIAAPRAZO'
      FixedChar = True
      Size = 5
    end
    object ClientesVENDASAPOSBLOQUEIO: TStringField
      FieldName = 'VENDASAPOSBLOQUEIO'
      FixedChar = True
      Size = 5
    end
    object ClientesMENSAGEMNOTA: TStringField
      FieldName = 'MENSAGEMNOTA'
      Size = 50
    end
    object ClientesUFCARTEIRATRABALHO: TStringField
      FieldName = 'UFCARTEIRATRABALHO'
      FixedChar = True
      Size = 2
    end
    object ClientesCONTRATOVALOR: TFloatField
      FieldName = 'CONTRATOVALOR'
    end
    object ClientesPERCONTRATO: TFloatField
      FieldName = 'PERCONTRATO'
    end
    object ClientesDIAVENCIMENTO: TIntegerField
      FieldName = 'DIAVENCIMENTO'
    end
  end
  object Sou_Clientes: TDataSource
    DataSet = Clientes
    Left = 32
    Top = 65
  end
  object FORNECEDORES: TUniQuery
    UpdatingTable = 'FORNECEDORES'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select first 100 * from FORNECEDORES Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_FORNECEDORES')
    Left = 144
    Top = 145
    object FORNECEDORESCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object FORNECEDORESNOME: TStringField
      FieldName = 'NOME'
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
    object FORNECEDORESENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object FORNECEDORESCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object FORNECEDORESBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object FORNECEDORESCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object FORNECEDORESCEP: TStringField
      FieldName = 'CEP'
      Size = 9
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
      FixedChar = True
      Size = 2
    end
    object FORNECEDORESPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
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
    object FORNECEDORESCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object FORNECEDORESCELULAR3: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object FORNECEDORESCELULAR4: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object FORNECEDORESFIS_JUR: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object FORNECEDORESTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object FORNECEDORESENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object FORNECEDORESCOMPLEMENTO_ENT: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object FORNECEDORESBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object FORNECEDORESCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object FORNECEDORESCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object FORNECEDORESUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object FORNECEDORESNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object FORNECEDORESNUMERO_ENT: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object FORNECEDORESENDERECO_COB: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object FORNECEDORESNUMERO_COB: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object FORNECEDORESCOMPLEMENTO_COB: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object FORNECEDORESBAIRRO_COB: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object FORNECEDORESCEP_COB: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object FORNECEDORESCIDADE_COB: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object FORNECEDORESUF_COB: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object FORNECEDORESVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object FORNECEDORESGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object FORNECEDORESLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object FORNECEDORESCOD_CONVENIO: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object FORNECEDORESCONVENIO: TSmallintField
      FieldName = 'CONVENIO'
    end
    object FORNECEDORESDIA_ACERTO: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object FORNECEDORESPER_CONVENIO: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object FORNECEDORESA_RECEBER: TFloatField
      FieldName = 'A_RECEBER'
    end
    object FORNECEDORESCONCEDER_CREDITO: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object FORNECEDORESATRASADO: TFloatField
      FieldName = 'ATRASADO'
    end
    object FORNECEDORESRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object FORNECEDORESOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object FORNECEDORESATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object FORNECEDORESOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object FORNECEDORESCOD_TABELA_PRECO: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object FORNECEDORESFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object FORNECEDORESSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object FORNECEDORESIDESTRANGEIRO: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object FORNECEDORESCLIENTEX: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object FORNECEDORESFORNECEDORX: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object FORNECEDORESVENDEDORX: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object FORNECEDORESEMITENTEX: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object FORNECEDORESUSUARIOX: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object FORNECEDORESOPERADORX: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object FORNECEDORESSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object FORNECEDORESCODIGO2: TIntegerField
      FieldName = 'CODIGO2'
    end
    object FORNECEDORESCODIGO3: TIntegerField
      FieldName = 'CODIGO3'
    end
    object FORNECEDORESUSA_DESCONTO_SUFRAMA: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
    object FORNECEDORESEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object FORNECEDORESDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object FORNECEDORESDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object FORNECEDORESREFERENCIA1: TStringField
      FieldName = 'REFERENCIA1'
      Size = 50
    end
    object FORNECEDORESFREFERENCIA1: TStringField
      FieldName = 'FREFERENCIA1'
      Size = 14
    end
    object FORNECEDORESREFERENCIA2: TStringField
      FieldName = 'REFERENCIA2'
      Size = 50
    end
    object FORNECEDORESFREFERENCIA2: TStringField
      FieldName = 'FREFERENCIA2'
      Size = 14
    end
    object FORNECEDORESREFERENCIA3: TStringField
      FieldName = 'REFERENCIA3'
      Size = 50
    end
    object FORNECEDORESFREFERENCIA3: TStringField
      FieldName = 'FREFERENCIA3'
      Size = 14
    end
    object FORNECEDORESNOMEDORABALHO: TStringField
      FieldName = 'NOMEDORABALHO'
      Size = 50
    end
    object FORNECEDORESENDERECODETRABALHO: TStringField
      FieldName = 'ENDERECODETRABALHO'
      Size = 50
    end
    object FORNECEDORESFNOMEDORABALHO: TStringField
      FieldName = 'FNOMEDORABALHO'
      Size = 14
    end
    object FORNECEDORESCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 50
    end
    object FORNECEDORESCARTEIRATRABALHO: TStringField
      FieldName = 'CARTEIRATRABALHO'
      Size = 10
    end
    object FORNECEDORESUFCARTEIRATRABALHO: TStringField
      FieldName = 'UFCARTEIRATRABALHO'
      FixedChar = True
      Size = 2
    end
    object FORNECEDORESSPC: TStringField
      FieldName = 'SPC'
      Size = 10
    end
    object FORNECEDORESLIMITEDEDEBITOS: TFloatField
      FieldName = 'LIMITEDEDEBITOS'
    end
    object FORNECEDORESVALORDASRENDAS: TFloatField
      FieldName = 'VALORDASRENDAS'
    end
    object FORNECEDORESVALORDASDESPESAS: TFloatField
      FieldName = 'VALORDASDESPESAS'
    end
    object FORNECEDORESPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
    end
    object FORNECEDORESCONTRATOVALOR: TFloatField
      FieldName = 'CONTRATOVALOR'
    end
    object FORNECEDORESPERCONTRATO: TFloatField
      FieldName = 'PERCONTRATO'
    end
    object FORNECEDORESDIADEBLOQUEIO: TIntegerField
      FieldName = 'DIADEBLOQUEIO'
    end
    object FORNECEDORESDIAVENCIMENTO: TIntegerField
      FieldName = 'DIAVENCIMENTO'
    end
    object FORNECEDORESDIASPARAPRAZO: TIntegerField
      FieldName = 'DIASPARAPRAZO'
    end
    object FORNECEDORESBLOQUEIAAPRAZO: TStringField
      FieldName = 'BLOQUEIAAPRAZO'
      FixedChar = True
      Size = 5
    end
    object FORNECEDORESVENDASAPOSBLOQUEIO: TStringField
      FieldName = 'VENDASAPOSBLOQUEIO'
      FixedChar = True
      Size = 5
    end
    object FORNECEDORESMENSAGEMNOTA: TStringField
      FieldName = 'MENSAGEMNOTA'
      Size = 50
    end
    object FORNECEDORESHTTP: TStringField
      FieldName = 'HTTP'
      Size = 50
    end
    object FORNECEDORESFACEBOOK: TStringField
      FieldName = 'FACEBOOK'
      Size = 50
    end
  end
  object Sou_FORNECEDORES: TDataSource
    DataSet = FORNECEDORES
    Left = 32
    Top = 137
  end
  object PRODUTOS: TUniQuery
    UpdatingTable = 'PRODUTOS'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select first 100 * from PRODUTOS Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_PRODUTOS')
    Left = 144
    Top = 209
    object PRODUTOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object PRODUTOSCODIGO2: TIntegerField
      FieldName = 'CODIGO2'
    end
    object PRODUTOSCODIGO3: TIntegerField
      FieldName = 'CODIGO3'
    end
    object PRODUTOSBARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object co: TStringField
      FieldName = 'APELIDO'
      Size = 14
    end
    object PRODUTOSPADRAO_BARRAS: TStringField
      FieldName = 'PADRAO_BARRAS'
      Size = 15
    end
    object PRODUTOSFONTE_BARRAS: TStringField
      FieldName = 'FONTE_BARRAS'
      Size = 15
    end
    object PRODUTOSNOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object PRODUTOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object PRODUTOSQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,##0.00'
    end
    object PRODUTOSPRECO_CONS: TFloatField
      FieldName = 'PRECO_CONS'
      DisplayFormat = '###,##0.00'
    end
    object PRODUTOSPRECO_REV: TFloatField
      FieldName = 'PRECO_REV'
      DisplayFormat = '###,##0.00'
    end
    object PRODUTOSPRECO_PZ_CONS: TFloatField
      FieldName = 'PRECO_PZ_CONS'
    end
    object PRODUTOSPRECO_PZ_REV: TFloatField
      FieldName = 'PRECO_PZ_REV'
    end
    object PRODUTOSUND_V: TStringField
      FieldName = 'UND_V'
      FixedChar = True
      Size = 3
    end
    object PRODUTOSUND_C: TStringField
      FieldName = 'UND_C'
      FixedChar = True
      Size = 3
    end
    object PRODUTOSFATOR: TStringField
      FieldName = 'FATOR'
      Size = 10
    end
    object PRODUTOSGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object PRODUTOSUSA_GRADE: TSmallintField
      FieldName = 'USA_GRADE'
    end
    object PRODUTOSGRADE_X: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object PRODUTOSGRADE_Y: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object PRODUTOSGRADE_CON: TMemoField
      FieldName = 'GRADE_CON'
      BlobType = ftMemo
    end
    object PRODUTOSGRADE_QUA: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object PRODUTOSGRADE_PED: TMemoField
      FieldName = 'GRADE_PED'
      BlobType = ftMemo
    end
    object PRODUTOSGRADE_OS: TMemoField
      FieldName = 'GRADE_OS'
      BlobType = ftMemo
    end
    object PRODUTOSQTD_CON: TFloatField
      FieldName = 'QTD_CON'
    end
    object PRODUTOSQTD_PED: TFloatField
      FieldName = 'QTD_PED'
    end
    object PRODUTOSQTD_OS: TFloatField
      FieldName = 'QTD_OS'
    end
    object custo: TFloatField
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '###,##0.00'
    end
    object PRODUTOSUSA_INDICE: TSmallintField
      FieldName = 'USA_INDICE'
    end
    object PRODUTOSATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object PRODUTOSSELECIONA: TSmallintField
      FieldName = 'SELECIONA'
    end
    object PRODUTOSIMAGEM: TStringField
      FieldName = 'IMAGEM'
      Size = 100
    end
    object PRODUTOSOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object PRODUTOSQTD_PARCELAS: TIntegerField
      FieldName = 'QTD_PARCELAS'
    end
    object PRODUTOSQTD_MINIMO: TFloatField
      FieldName = 'QTD_MINIMO'
    end
    object PRODUTOSQTD_MAXIMO: TFloatField
      FieldName = 'QTD_MAXIMO'
    end
    object PRODUTOSTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object PRODUTOSUSA_UF: TSmallintField
      FieldName = 'USA_UF'
    end
    object PRODUTOSOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object PRODUTOSLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object PRODUTOSGRADE_CMD: TMemoField
      FieldName = 'GRADE_CMD'
      BlobType = ftMemo
    end
    object PRODUTOSQTD_CMD: TFloatField
      FieldName = 'QTD_CMD'
    end
    object PRODUTOSTABELA_PRECO: TIntegerField
      FieldName = 'TABELA_PRECO'
    end
    object PRODUTOSUSA_SERIAL: TSmallintField
      FieldName = 'USA_SERIAL'
    end
    object PRODUTOSDIAS_VALIDADE: TIntegerField
      FieldName = 'DIAS_VALIDADE'
    end
    object PRODUTOSGRADE_PED_COMPRA: TMemoField
      FieldName = 'GRADE_PED_COMPRA'
      BlobType = ftMemo
    end
    object PRODUTOSQTD_PED_COMPRA: TFloatField
      FieldName = 'QTD_PED_COMPRA'
    end
    object PRODUTOSNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object PRODUTOSULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
    end
    object PRODUTOSULTIMA_VENDA: TDateField
      FieldName = 'ULTIMA_VENDA'
    end
    object PRODUTOSDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object PRODUTOSULTIMO_PRECO: TFloatField
      FieldName = 'ULTIMO_PRECO'
      DisplayFormat = '###,##0.00'
    end
    object PRODUTOSCUSTO_MEDIO: TFloatField
      FieldName = 'CUSTO_MEDIO'
      DisplayFormat = '###,##0.00'
    end
    object PRODUTOSTRIBUTACAO: TStringField
      FieldName = 'TRIBUTACAO'
      Size = 25
    end
    object PRODUTOSST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 3
    end
    object PRODUTOSCF: TStringField
      FieldName = 'CF'
      Size = 10
    end
    object PRODUTOSIPI: TFloatField
      FieldName = 'IPI'
    end
    object PRODUTOSICMS_RED: TFloatField
      FieldName = 'ICMS_RED'
    end
    object PRODUTOSICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object PRODUTOSICMS: TFloatField
      FieldName = 'ICMS'
    end
    object PRODUTOSTOTALIZADOR: TStringField
      FieldName = 'TOTALIZADOR'
      FixedChar = True
      Size = 2
    end
    object PRODUTOSCONTROLADO: TSmallintField
      FieldName = 'CONTROLADO'
    end
    object PRODUTOSREGISTRO_MS: TStringField
      FieldName = 'REGISTRO_MS'
    end
    object PRODUTOSCOD_ABC: TStringField
      FieldName = 'COD_ABC'
      Size = 15
    end
    object PRODUTOSPIS_ST: TStringField
      FieldName = 'PIS_ST'
      FixedChar = True
      Size = 2
    end
    object PRODUTOSPIS_BASE: TFloatField
      FieldName = 'PIS_BASE'
    end
    object PRODUTOSPIS_ALIQ: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object PRODUTOSPIS_SUB_BASE: TFloatField
      FieldName = 'PIS_SUB_BASE'
    end
    object PRODUTOSPIS_SUB_ALIQ: TFloatField
      FieldName = 'PIS_SUB_ALIQ'
    end
    object PRODUTOSCOFINS_ST: TStringField
      FieldName = 'COFINS_ST'
      FixedChar = True
      Size = 2
    end
    object PRODUTOSCOFINS_BASE: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object PRODUTOSCOFINS_ALIQ: TFloatField
      FieldName = 'COFINS_ALIQ'
    end
    object PRODUTOSCOFINS_SUB_BASE: TFloatField
      FieldName = 'COFINS_SUB_BASE'
    end
    object PRODUTOSCOFINS_SUB_ALIQ: TFloatField
      FieldName = 'COFINS_SUB_ALIQ'
    end
    object PRODUTOSIAT: TStringField
      FieldName = 'IAT'
      FixedChar = True
      Size = 1
    end
    object PRODUTOSIPPT: TStringField
      FieldName = 'IPPT'
      FixedChar = True
      Size = 1
    end
    object PRODUTOSCOD_ANP: TStringField
      FieldName = 'COD_ANP'
      Size = 15
    end
    object PRODUTOSCODIGO_CONTABIL: TStringField
      FieldName = 'CODIGO_CONTABIL'
      Size = 30
    end
    object PRODUTOSCSOSN: TStringField
      FieldName = 'CSOSN'
      FixedChar = True
      Size = 4
    end
    object PRODUTOSCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object PRODUTOSTECNICO: TIntegerField
      FieldName = 'TECNICO'
    end
    object PRODUTOSTIPOISSQN: TStringField
      FieldName = 'TIPOISSQN'
      FixedChar = True
      Size = 1
    end
    object PRODUTOSCODATIVIDADE: TIntegerField
      FieldName = 'CODATIVIDADE'
    end
    object PRODUTOSTIPO_UND: TStringField
      FieldName = 'TIPO_UND'
      Size = 7
    end
    object PRODUTOSISSQN_ALIQ: TFloatField
      FieldName = 'ISSQN_ALIQ'
    end
    object PRODUTOSISSQN_BASE: TFloatField
      FieldName = 'ISSQN_BASE'
    end
    object PRODUTOSULTIMA_ALTERACAO: TDateField
      FieldName = 'ULTIMA_ALTERACAO'
    end
    object PRODUTOSSETOR: TIntegerField
      FieldName = 'SETOR'
    end
    object PRODUTOSSTIPI: TStringField
      FieldName = 'STIPI'
      FixedChar = True
      Size = 2
    end
    object PRODUTOSTIPO_ITEM: TStringField
      FieldName = 'TIPO_ITEM'
      FixedChar = True
      Size = 2
    end
    object PRODUTOSCOD_GENERO: TIntegerField
      FieldName = 'COD_GENERO'
    end
    object PRODUTOSCLASSE_TERAPEUTICA: TSmallintField
      FieldName = 'CLASSE_TERAPEUTICA'
    end
    object PRODUTOSUSO_PROLONGADO: TStringField
      FieldName = 'USO_PROLONGADO'
      FixedChar = True
      Size = 1
    end
    object PRODUTOSUNIDADE_MEDIDA_MEDICAMENTO: TSmallintField
      FieldName = 'UNIDADE_MEDIDA_MEDICAMENTO'
    end
    object PRODUTOSPIS_ST_ENTRADA: TStringField
      FieldName = 'PIS_ST_ENTRADA'
      FixedChar = True
      Size = 2
    end
    object PRODUTOSPIS_BASE_ENTRADA: TFloatField
      FieldName = 'PIS_BASE_ENTRADA'
    end
    object PRODUTOSPIS_ALIQ_ENTRADA: TFloatField
      FieldName = 'PIS_ALIQ_ENTRADA'
    end
    object PRODUTOSPIS_SUB_BASE_ENTRADA: TFloatField
      FieldName = 'PIS_SUB_BASE_ENTRADA'
    end
    object PRODUTOSPIS_SUB_ALIQ_ENTRADA: TFloatField
      FieldName = 'PIS_SUB_ALIQ_ENTRADA'
    end
    object PRODUTOSCOFINS_ST_ENTRADA: TStringField
      FieldName = 'COFINS_ST_ENTRADA'
      FixedChar = True
      Size = 2
    end
    object PRODUTOSCOFINS_BASE_ENTRADA: TFloatField
      FieldName = 'COFINS_BASE_ENTRADA'
    end
    object PRODUTOSCOFINS_ALIQ_ENTRADA: TFloatField
      FieldName = 'COFINS_ALIQ_ENTRADA'
    end
    object PRODUTOSCOFINS_SUB_BASE_ENTRADA: TFloatField
      FieldName = 'COFINS_SUB_BASE_ENTRADA'
    end
    object PRODUTOSCOFINS_SUB_ALIQ_ENTRADA: TFloatField
      FieldName = 'COFINS_SUB_ALIQ_ENTRADA'
    end
    object PRODUTOSALIQI: TFloatField
      FieldName = 'ALIQI'
    end
    object PRODUTOSFCI: TStringField
      FieldName = 'FCI'
      Size = 36
    end
    object PRODUTOSPERCENTUAL_GAS_NATURAL: TFloatField
      FieldName = 'PERCENTUAL_GAS_NATURAL'
    end
    object PRODUTOSPERCENTUAL_DIFERIMENTO: TFloatField
      FieldName = 'PERCENTUAL_DIFERIMENTO'
    end
    object PRODUTOSCOD_NAT_REC: TIntegerField
      FieldName = 'COD_NAT_REC'
    end
    object PRODUTOSID_NCM: TSmallintField
      FieldName = 'ID_NCM'
    end
    object PRODUTOSGrupoProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'GrupoProduto'
      LookupDataSet = GRUPO_PRODUTO
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'GRUPO'
      Lookup = True
    end
  end
  object Sou_produtos: TDataSource
    DataSet = PRODUTOS
    Left = 40
    Top = 209
  end
  object UniTable1: TUniTable
    TableName = 'FORNECEDORES'
    Connection = UniConnection1
    Left = 600
    Top = 8
  end
  object GRUPOCLI: TUniQuery
    UpdatingTable = 'GRUPOCLI'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from GRUPOCLI Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_GRUPOCLI')
    Left = 336
    Top = 73
    object GRUPOCLICODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object GRUPOCLINOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
  end
  object Sou_GRUPOCLI: TDataSource
    DataSet = GRUPOCLI
    Left = 240
    Top = 73
  end
  object GRUPOFOR: TUniQuery
    UpdatingTable = 'GRUPOFOR'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from GRUPOFOR Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_GRUPOFOR')
    Left = 336
    Top = 145
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Size = 75
    end
  end
  object Sou_GRUPOFOR: TDataSource
    DataSet = GRUPOFOR
    Left = 240
    Top = 145
  end
  object GRUPO: TUniQuery
    UpdatingTable = 'GRUPO'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from GRUPO Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_GRUPO')
    Left = 336
    Top = 209
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField2: TStringField
      FieldName = 'NOME'
      Size = 75
    end
  end
  object sou_GRUPO: TDataSource
    DataSet = GRUPO
    Left = 240
    Top = 209
  end
  object UNIDADES: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from UNIDADES Order by Nome')
    Left = 531
    Top = 207
    object UNIDADESUND: TStringField
      FieldName = 'UND'
      FixedChar = True
      Size = 3
    end
    object UNIDADESNOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
  end
  object Sou_UNIDADES: TDataSource
    DataSet = UNIDADES
    Left = 451
    Top = 207
  end
  object ESTADOS: TUniTable
    TableName = 'ESTADOS'
    Connection = UniConnection1
    Left = 624
    Top = 88
  end
  object Sou_ESTADOS: TDataSource
    DataSet = ESTADOS
    Left = 552
    Top = 88
  end
  object UniMetaData1: TUniMetaData
    MetaDataKind = 'Tables'
    Connection = UniConnection1
    Left = 352
    Top = 8
  end
  object UniSQL1: TUniSQL
    Connection = UniConnection1
    Left = 480
    Top = 8
  end
  object UniTable2: TUniTable
    TableName = 'CLIENTES'
    Connection = UniConnection1
    Left = 416
    Top = 8
  end
  object emitente: TUniQuery
    UpdatingTable = 'emitente'
    KeyFields = 'codigo'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from emitente Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_emitente')
    Left = 144
    Top = 265
    object IntegerField3: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField3: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object StringField4: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object StringField5: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object StringField6: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object StringField7: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object StringField8: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object StringField9: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object StringField10: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object StringField11: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object StringField12: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object StringField13: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object StringField14: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object StringField15: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object StringField16: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object StringField17: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object StringField18: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object StringField19: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object StringField20: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object StringField21: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object StringField22: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object StringField23: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object StringField24: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object StringField25: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object StringField26: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object StringField27: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object StringField28: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object StringField29: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object StringField30: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object StringField31: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object StringField32: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object StringField33: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object StringField34: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object StringField35: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object StringField36: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object StringField37: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object StringField38: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object StringField39: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object IntegerField4: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object IntegerField5: TIntegerField
      FieldName = 'GRUPO'
    end
    object FloatField1: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object IntegerField6: TIntegerField
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
    object IntegerField7: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField8: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object BlobField1: TBlobField
      FieldName = 'FOTO'
    end
    object StringField40: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object StringField41: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object StringField42: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField43: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField44: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField45: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField46: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object StringField47: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object StringField48: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object IntegerField9: TIntegerField
      FieldName = 'CODIGO2'
    end
    object IntegerField10: TIntegerField
      FieldName = 'CODIGO3'
    end
    object SmallintField5: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
    object emitenteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object emitenteHTTP: TStringField
      FieldName = 'HTTP'
      Size = 50
    end
    object emitenteFACEBOOK: TStringField
      FieldName = 'FACEBOOK'
      Size = 50
    end
  end
  object Sou_emitente: TDataSource
    DataSet = emitente
    Left = 40
    Top = 265
  end
  object VENDEDORES: TUniQuery
    UpdatingTable = 'VENDEDORES'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from VENDEDORES Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_VENDEDORES')
    Left = 144
    Top = 324
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
    object VENDEDORESEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
  end
  object Sou_VENDEDORES: TDataSource
    DataSet = VENDEDORES
    Left = 40
    Top = 324
  end
  object Sou_operador: TDataSource
    DataSet = OPERADOR
    Left = 48
    Top = 383
  end
  object UniTable3: TUniTable
    TableName = 'GRUPOFOR'
    Connection = UniConnection1
    Left = 536
    Top = 8
    object UniTable3CODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object UniTable3NOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object UniTable3FANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object UniTable3CONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object UniTable3CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object UniTable3ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object UniTable3COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object UniTable3BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object UniTable3CEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object UniTable3CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object UniTable3CPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object UniTable3IE: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object UniTable3RG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object UniTable3UF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object UniTable3PAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object UniTable3TELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object UniTable3FAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object UniTable3CELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object UniTable3CELULAR2: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object UniTable3CELULAR3: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object UniTable3CELULAR4: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object UniTable3FIS_JUR: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object UniTable3TIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object UniTable3ENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object UniTable3COMPLEMENTO_ENT: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object UniTable3BAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object UniTable3CEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object UniTable3CIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object UniTable3UF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object UniTable3NUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object UniTable3NUMERO_ENT: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object UniTable3ENDERECO_COB: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object UniTable3NUMERO_COB: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object UniTable3COMPLEMENTO_COB: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object UniTable3BAIRRO_COB: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object UniTable3CEP_COB: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object UniTable3CIDADE_COB: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object UniTable3UF_COB: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object UniTable3VENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object UniTable3GRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object UniTable3LIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object UniTable3COD_CONVENIO: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object UniTable3CONVENIO: TSmallintField
      FieldName = 'CONVENIO'
    end
    object UniTable3DIA_ACERTO: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object UniTable3PER_CONVENIO: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object UniTable3A_RECEBER: TFloatField
      FieldName = 'A_RECEBER'
    end
    object UniTable3CONCEDER_CREDITO: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object UniTable3ATRASADO: TFloatField
      FieldName = 'ATRASADO'
    end
    object UniTable3RECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object UniTable3OBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object UniTable3ATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object UniTable3OPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object UniTable3COD_TABELA_PRECO: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object UniTable3FOTO: TBlobField
      FieldName = 'FOTO'
    end
    object UniTable3SUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object UniTable3IDESTRANGEIRO: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object UniTable3CLIENTEX: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object UniTable3FORNECEDORX: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object UniTable3VENDEDORX: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object UniTable3EMITENTEX: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object UniTable3USUARIOX: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object UniTable3OPERADORX: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object UniTable3SENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object UniTable3CODIGO2: TIntegerField
      FieldName = 'CODIGO2'
    end
    object UniTable3CODIGO3: TIntegerField
      FieldName = 'CODIGO3'
    end
    object UniTable3USA_DESCONTO_SUFRAMA: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
  end
  object OPERADOR: TUniQuery
    UpdatingTable = 'OPERADOR'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from OPERADOR Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_OPERADOR')
    Left = 152
    Top = 385
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
    object OPERADOREMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
  end
  object PRODUTOS_CONSULTAxx: TUniTable
    TableName = 'PRODUTOS'
    Connection = UniConnection1
    Left = 627
    Top = 207
  end
  object HISTORIC: TUniQuery
    UpdatingTable = 'HISTORIC'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from HISTORIC order by nome')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_HISTORIC'
      'InterBase.GeneratorMode=gmInsert')
    Left = 523
    Top = 319
    object HISTORICCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object HISTORICNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object HISTORICCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object HISTORICCUSTO: TIntegerField
      FieldName = 'CUSTO'
    end
    object HISTORICATIVO: TSmallintField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object Sou_HISTORIC: TUniDataSource
    DataSet = HISTORIC
    Left = 451
    Top = 321
  end
  object SUB_HIST: TUniQuery
    UpdatingTable = 'SUB_HIST'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from SUB_HIST order by nome')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_SUB_HIST'
      'InterBase.GeneratorMode=gmInsert')
    Left = 523
    Top = 381
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
    object SUB_HISTDescricaoHistorico: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoHistorico'
      LookupDataSet = HISTORICS
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'HISTORIC'
      Size = 50
      Lookup = True
    end
  end
  object Sou_SUB_HIST: TUniDataSource
    DataSet = SUB_HIST
    Left = 451
    Top = 383
  end
  object VEICULOS: TUniQuery
    UpdatingTable = 'VEICULOS'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from VEICULOS order by nome')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_VEICULOS'
      'InterBase.GeneratorMode=gmInsert')
    Left = 523
    Top = 446
    object VEICULOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object VEICULOSCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object VEICULOSNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object VEICULOSMODELO: TStringField
      FieldName = 'MODELO'
      Size = 40
    end
    object VEICULOSVEICULO: TStringField
      FieldName = 'VEICULO'
    end
    object VEICULOSTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object VEICULOSPLACA: TStringField
      FieldName = 'PLACA'
      EditMask = 'AAA-AAAA;0;_'
      Size = 7
    end
    object VEICULOSCHASSIS: TStringField
      FieldName = 'CHASSIS'
    end
    object VEICULOSRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Size = 9
    end
    object VEICULOSMARCA_M: TStringField
      FieldName = 'MARCA_M'
      Size = 40
    end
    object VEICULOSCOR: TStringField
      FieldName = 'COR'
    end
    object VEICULOSANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object VEICULOSANO_MOD: TStringField
      FieldName = 'ANO_MOD'
      Size = 4
    end
    object VEICULOSOBSERV: TStringField
      FieldName = 'OBSERV'
      Size = 100
    end
    object VEICULOSDescricaoCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoCliente'
      LookupDataSet = CLIENTESV
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CLIENTE'
      Size = 50
      Lookup = True
    end
  end
  object Sou_VEICULOS: TUniDataSource
    DataSet = VEICULOS
    Left = 451
    Top = 448
  end
  object PORTADOR: TUniQuery
    UpdatingTable = 'PORTADOR'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from PORTADOR order by nome')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_PORTADOR')
    Left = 523
    Top = 512
    object PORTADORCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object PORTADORCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object PORTADORNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object PORTADORENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object PORTADORNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object PORTADORBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object PORTADORCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object PORTADORCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object PORTADORUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object PORTADORCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object PORTADORRG: TStringField
      FieldName = 'RG'
      Size = 19
    end
    object PORTADORTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object PORTADORCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object PORTADOREMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object PORTADOROBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 50
    end
    object PORTADORDescricaoCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoCliente'
      LookupDataSet = CLIENTESP
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CLIENTE'
      Size = 50
      Lookup = True
    end
  end
  object Sou_PORTADOR: TUniDataSource
    DataSet = PORTADOR
    Left = 451
    Top = 514
  end
  object CONTAS: TUniQuery
    UpdatingTable = 'CONTAS'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from CONTAS order by conta')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_CONTAS')
    Left = 144
    Top = 575
    object CONTASCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CONTASCONTA: TStringField
      FieldName = 'CONTA'
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
  object Sou_CONTAS: TUniDataSource
    DataSet = CONTAS
    Left = 40
    Top = 569
  end
  object Sou_CENCUSTO: TDataSource
    DataSet = CENCUSTO
    Left = 48
    Top = 454
  end
  object CENCUSTO: TUniQuery
    UpdatingTable = 'CENCUSTO'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from CENCUSTO order by descricao')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_CENCUSTO')
    Left = 144
    Top = 456
    object CENCUSTOCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CENCUSTOCUSTO: TStringField
      FieldName = 'CUSTO'
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
  object Sou_BANCOS: TDataSource
    DataSet = BANCOS
    Left = 40
    Top = 510
  end
  object BANCOS: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from BANCOS order by nome_banco')
    Left = 144
    Top = 512
    object BANCOSBANCO: TStringField
      FieldName = 'BANCO'
      Size = 5
    end
    object BANCOSNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Size = 100
    end
  end
  object oleo: TUniQuery
    UpdatingTable = 'oleo'
    KeyFields = 'ID'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from oleo')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_oleo'
      'InterBase.GeneratorMode=gmInsert')
    Left = 523
    Top = 266
    object oleoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object oleoVEICULO: TIntegerField
      FieldName = 'VEICULO'
    end
    object oleoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object oleoPLACA: TStringField
      FieldName = 'PLACA'
      EditMask = 'AAA-9999;0;_'
      Size = 7
    end
    object oleoDATA: TDateField
      FieldName = 'DATA'
    end
    object oleoHORA: TTimeField
      FieldName = 'HORA'
    end
    object oleoKM_INICIO: TFloatField
      FieldName = 'KM_INICIO'
      DisplayFormat = '###,##0.00'
    end
    object oleoKM_FIM: TFloatField
      FieldName = 'KM_FIM'
      DisplayFormat = '###,##0.00'
    end
    object oleoDescricaoOleo: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoOleo'
      LookupDataSet = CLIENTESO
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CLIENTE'
      Size = 50
      Lookup = True
    end
    object oleoVeiculoOleo: TStringField
      FieldKind = fkLookup
      FieldName = 'VeiculoOleo'
      LookupDataSet = VEICULOSO
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'VEICULO'
      Size = 50
      Lookup = True
    end
    object oleoCUPOM: TStringField
      FieldName = 'CUPOM'
      Required = True
      Size = 9
    end
    object oleoHORAI: TTimeField
      FieldName = 'HORAI'
    end
    object oleoHORAF: TTimeField
      FieldName = 'HORAF'
    end
  end
  object Sou_oleo: TUniDataSource
    DataSet = oleo
    Left = 451
    Top = 268
  end
  object CLIENTESP: TUniTable
    TableName = 'CLIENTES'
    Connection = UniConnection1
    Left = 587
    Top = 512
  end
  object CLIENTESV: TUniTable
    TableName = 'CLIENTES'
    Connection = UniConnection1
    Left = 587
    Top = 446
  end
  object HISTORICS: TUniTable
    TableName = 'HISTORIC'
    Connection = UniConnection1
    IndexFieldNames = 'CODIGO'
    Left = 595
    Top = 382
  end
  object CLIENTESO: TUniTable
    TableName = 'CLIENTES'
    Connection = UniConnection1
    Left = 587
    Top = 262
  end
  object VEICULOSO: TUniTable
    TableName = 'VEICULOS'
    Connection = UniConnection1
    Left = 651
    Top = 262
    object VEICULOSOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object VEICULOSOCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object VEICULOSONOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object VEICULOSOMODELO: TStringField
      FieldName = 'MODELO'
      Size = 40
    end
    object VEICULOSOVEICULO: TStringField
      FieldName = 'VEICULO'
    end
    object VEICULOSOTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object VEICULOSOPLACA: TStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object VEICULOSOCHASSIS: TStringField
      FieldName = 'CHASSIS'
    end
    object VEICULOSORENAVAM: TStringField
      FieldName = 'RENAVAM'
      Size = 9
    end
    object VEICULOSOMARCA_M: TStringField
      FieldName = 'MARCA_M'
      Size = 40
    end
    object VEICULOSOCOR: TStringField
      FieldName = 'COR'
    end
    object VEICULOSOANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object VEICULOSOANO_MOD: TStringField
      FieldName = 'ANO_MOD'
      Size = 4
    end
    object VEICULOSOOBSERV: TStringField
      FieldName = 'OBSERV'
      Size = 100
    end
  end
  object VEICULOSrel: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from VEICULOS order by nome')
    Left = 659
    Top = 448
  end
  object ClientesRel: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from Clientes Order by Nome')
    Left = 739
    Top = 448
  end
  object Grade: TUniQuery
    UpdatingTable = 'Grade'
    KeyFields = 'ID'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from Grade')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_Grade')
    Left = 523
    Top = 576
    object GradeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object GradeCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object GradeBARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object GradeNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object GradeQTD: TFloatField
      FieldName = 'QTD'
    end
    object GradeQTD_MINIMO: TFloatField
      FieldName = 'QTD_MINIMO'
    end
    object GradeQTD_MAXIMO: TFloatField
      FieldName = 'QTD_MAXIMO'
    end
    object GradeCOR: TStringField
      FieldName = 'COR'
      Size = 25
    end
    object GradeTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 25
    end
    object GradeATIVO: TSmallintField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object Sou_Grade: TUniDataSource
    DataSet = Grade
    Left = 451
    Top = 576
  end
  object GRADE_CONSULTA: TUniTable
    TableName = 'GRADE'
    Connection = UniConnection1
    Left = 611
    Top = 576
  end
  object GRUPO_PRODUTO: TUniTable
    TableName = 'GRUPO'
    Connection = UniConnection1
    Left = 336
    Top = 264
  end
  object GRUPOCONSULTA: TUniTable
    TableName = 'GRUPO'
    Connection = UniConnection1
    Left = 891
    Top = 208
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection1
    Left = 731
    Top = 136
  end
  object UniQuery2: TUniQuery
    Connection = UniConnection1
    Left = 791
    Top = 136
  end
  object Oleo_rel: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from oleo')
    Left = 739
    Top = 266
    object IntegerField11: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IntegerField12: TIntegerField
      FieldName = 'VEICULO'
    end
    object IntegerField13: TIntegerField
      FieldName = 'CLIENTE'
    end
    object StringField49: TStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object DateField1: TDateField
      FieldName = 'DATA'
    end
    object TimeField1: TTimeField
      FieldName = 'HORA'
    end
    object FloatField6: TFloatField
      FieldName = 'KM_INICIO'
    end
    object FloatField7: TFloatField
      FieldName = 'KM_FIM'
    end
    object StringField50: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoOleo'
      LookupDataSet = CLIENTESO
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CLIENTE'
      Size = 50
      Lookup = True
    end
    object StringField51: TStringField
      FieldKind = fkLookup
      FieldName = 'VeiculoOleo'
      LookupDataSet = VEICULOSO
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'VEICULO'
      Size = 50
      Lookup = True
    end
    object StringField52: TStringField
      FieldName = 'CUPOM'
      Required = True
      Size = 9
    end
    object TimeField2: TTimeField
      FieldName = 'HORAI'
    end
    object TimeField3: TTimeField
      FieldName = 'HORAF'
    end
  end
  object VENDEDORES_REL2: TUniQuery
    UpdatingTable = 'VENDEDORES'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from VENDEDORES Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_VENDEDORES')
    Left = 240
    Top = 316
    object IntegerField14: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField53: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object StringField54: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object StringField55: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object StringField56: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object StringField57: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object StringField58: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object StringField59: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object StringField60: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object StringField61: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object StringField62: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object StringField63: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object StringField64: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object StringField65: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object StringField66: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object StringField67: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object StringField68: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object StringField69: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object StringField70: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object StringField71: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object StringField72: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object StringField73: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object StringField74: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object StringField75: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object StringField76: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object StringField77: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object StringField78: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object StringField79: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object StringField80: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object StringField81: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object StringField82: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object StringField83: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object StringField84: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object StringField85: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object StringField86: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object StringField87: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object StringField88: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object StringField89: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object IntegerField15: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object IntegerField16: TIntegerField
      FieldName = 'GRUPO'
    end
    object FloatField8: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object IntegerField17: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object SmallintField6: TSmallintField
      FieldName = 'CONVENIO'
    end
    object SmallintField7: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object FloatField9: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object FloatField10: TFloatField
      FieldName = 'A_RECEBER'
    end
    object SmallintField8: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object FloatField11: TFloatField
      FieldName = 'ATRASADO'
    end
    object FloatField12: TFloatField
      FieldName = 'RECEBIDO'
    end
    object MemoField2: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object SmallintField9: TSmallintField
      FieldName = 'ATIVO'
    end
    object IntegerField18: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField19: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object BlobField2: TBlobField
      FieldName = 'FOTO'
    end
    object StringField90: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object StringField91: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object StringField92: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField93: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField94: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField95: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField96: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object StringField97: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object StringField98: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object IntegerField20: TIntegerField
      FieldName = 'CODIGO2'
    end
    object IntegerField21: TIntegerField
      FieldName = 'CODIGO3'
    end
    object SmallintField10: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
    object StringField99: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
  end
  object VENDEDORES_REL: TUniQuery
    UpdatingTable = 'VENDEDORES'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from VENDEDORES Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_VENDEDORES')
    Left = 344
    Top = 316
    object IntegerField22: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField100: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object StringField101: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object StringField102: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object StringField103: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object StringField104: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object StringField105: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object StringField106: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object StringField107: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object StringField108: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object StringField109: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object StringField110: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object StringField111: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object StringField112: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object StringField113: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object StringField114: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object StringField115: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object StringField116: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object StringField117: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object StringField118: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object StringField119: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object StringField120: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object StringField121: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object StringField122: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object StringField123: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object StringField124: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object StringField125: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object StringField126: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object StringField127: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object StringField128: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object StringField129: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object StringField130: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object StringField131: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object StringField132: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object StringField133: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object StringField134: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object StringField135: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object StringField136: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object IntegerField23: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object IntegerField24: TIntegerField
      FieldName = 'GRUPO'
    end
    object FloatField13: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object IntegerField25: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object SmallintField11: TSmallintField
      FieldName = 'CONVENIO'
    end
    object SmallintField12: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object FloatField14: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object FloatField15: TFloatField
      FieldName = 'A_RECEBER'
    end
    object SmallintField13: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object FloatField16: TFloatField
      FieldName = 'ATRASADO'
    end
    object FloatField17: TFloatField
      FieldName = 'RECEBIDO'
    end
    object MemoField3: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object SmallintField14: TSmallintField
      FieldName = 'ATIVO'
    end
    object IntegerField26: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField27: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object BlobField3: TBlobField
      FieldName = 'FOTO'
    end
    object StringField137: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object StringField138: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object StringField139: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField140: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField141: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField142: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField143: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object StringField144: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object StringField145: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object IntegerField28: TIntegerField
      FieldName = 'CODIGO2'
    end
    object IntegerField29: TIntegerField
      FieldName = 'CODIGO3'
    end
    object SmallintField15: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
    object StringField146: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
  end
  object VENDEDORES_Drop: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from VENDEDORES Order by Nome')
    Left = 360
    Top = 440
  end
  object aSource_VENDEDORES_Drop: TUniDataSource
    DataSet = VENDEDORES_Drop
    Left = 232
    Top = 440
  end
  object VENDEDORES_Drop2: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from VENDEDORES Order by Nome')
    Left = 344
    Top = 512
  end
  object tabelaacerto: TUniTable
    TableName = 'CAIXA'
    Connection = UniConnection1
    Left = 896
    Top = 344
  end
  object Query_Acerto: TUniQuery
    Connection = UniConnection1
    Left = 896
    Top = 408
  end
  object EntradaSaida: TUniQuery
    UpdatingTable = 'EntradaSaida'
    KeyFields = 'ID'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from EntradaSaida')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_EntradaSaida')
    Left = 864
    Top = 16
    object EntradaSaidaID: TIntegerField
      FieldName = 'ID'
    end
    object EntradaSaidaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object EntradaSaidaQTD: TFloatField
      FieldName = 'QTD'
    end
    object EntradaSaidaDescrição: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = PRODUTOS_ES
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Size = 50
      Lookup = True
    end
    object EntradaSaidaCOMPRA_VENDA: TFloatField
      FieldName = 'COMPRA_VENDA'
    end
    object EntradaSaidaBARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
  end
  object DataSource_EntradaSaida: TDataSource
    DataSet = EntradaSaida
    Left = 752
    Top = 16
  end
  object PRODUTOS_ES: TUniTable
    TableName = 'PRODUTOS'
    Connection = UniConnection1
    Left = 952
    Top = 16
  end
  object PRODUTOS_CONSULTAQ: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Left = 768
    Top = 208
  end
  object PRODUTOS_CONSULTA: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Left = 624
    Top = 144
  end
  object OPERADOR_caixa: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT * FROM OPERADOR')
    Left = 248
    Top = 384
  end
  object HISTORICPESQUISA: TUniQuery
    UpdatingTable = 'HISTORIC'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from HISTORIC order by nome')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_HISTORIC'
      'InterBase.GeneratorMode=gmInsert')
    Left = 683
    Top = 383
    object IntegerField30: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField147: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object IntegerField31: TIntegerField
      FieldName = 'CONTA'
    end
    object IntegerField32: TIntegerField
      FieldName = 'CUSTO'
    end
    object SmallintField16: TSmallintField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object GRUPOXXX: TUniQuery
    UpdatingTable = 'GRUPO'
    KeyFields = 'CODIGO'
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from GRUPO Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_GRUPO')
    Left = 1000
    Top = 209
    object IntegerField33: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField148: TStringField
      FieldName = 'NOME'
      Size = 75
    end
  end
end
