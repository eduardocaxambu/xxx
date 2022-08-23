object DADOS_CONSULTASF: TDADOS_CONSULTASF
  OldCreateOrder = False
  Height = 738
  Width = 1175
  object Clientes: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from Clientes')
    IndexFieldNames = 'NOME'
    Left = 112
    Top = 16
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
    object ClientesVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
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
    object ClientesUSA_DESCONTO_SUFRAMA: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
    object ClientesIDESTRANGEIRO: TStringField
      FieldName = 'IDESTRANGEIRO'
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
    object ClientesPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
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
    object ClientesGRUPO: TIntegerField
      FieldName = 'GRUPO'
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
  end
  object DataSource1: TDataSource
    DataSet = Clientes
    Left = 24
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = fornecedores
    Left = 24
    Top = 88
  end
  object PRODUTOS: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from PRODUTOS')
    Left = 112
    Top = 152
    object PRODUTOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object PRODUTOSBARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object PRODUTOSAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 14
    end
    object PRODUTOSNOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object PRODUTOSQTD: TFloatField
      FieldName = 'QTD'
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
    object PRODUTOSPRECO_CONS: TFloatField
      FieldName = 'PRECO_CONS'
    end
    object PRODUTOSULTIMO_PRECO: TFloatField
      FieldName = 'ULTIMO_PRECO'
    end
    object PRODUTOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object PRODUTOSGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object PRODUTOSLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
  end
  object DataSource3: TDataSource
    DataSet = PRODUTOS
    Left = 24
    Top = 152
  end
  object fornecedores: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from fornecedores Order by Nome')
    Left = 112
    Top = 88
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
      FieldName = 'CPF'
      Size = 14
    end
    object StringField6: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object StringField7: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object StringField8: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object StringField9: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object StringField10: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object StringField11: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object StringField12: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object StringField13: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object IntegerField2: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object FloatField1: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object IntegerField3: TIntegerField
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
    object IntegerField4: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField5: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object BlobField1: TBlobField
      FieldName = 'FOTO'
    end
    object StringField14: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object SmallintField5: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
    object StringField15: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object fornecedoresENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object fornecedoresCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object fornecedoresBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object fornecedoresCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object fornecedoresCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object fornecedoresPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object fornecedoresCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object fornecedoresCELULAR3: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object fornecedoresCELULAR4: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object fornecedoresENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object fornecedoresCOMPLEMENTO_ENT: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object fornecedoresBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object fornecedoresCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object fornecedoresCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object fornecedoresUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object fornecedoresNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object fornecedoresNUMERO_ENT: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object fornecedoresENDERECO_COB: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object fornecedoresNUMERO_COB: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object fornecedoresCOMPLEMENTO_COB: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object fornecedoresBAIRRO_COB: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object fornecedoresCEP_COB: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object fornecedoresCIDADE_COB: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object fornecedoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object fornecedoresUF_COB: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object fornecedoresGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object fornecedoresCLIENTEX: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object fornecedoresFORNECEDORX: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object fornecedoresVENDEDORX: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object fornecedoresEMITENTEX: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object fornecedoresUSUARIOX: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object fornecedoresOPERADORX: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object fornecedoresSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object fornecedoresCODIGO2: TIntegerField
      FieldName = 'CODIGO2'
    end
    object fornecedoresCODIGO3: TIntegerField
      FieldName = 'CODIGO3'
    end
  end
  object estados: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from estados Order by Nome')
    Left = 112
    Top = 224
    object estadosCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object estadosNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object DataSource4: TDataSource
    DataSet = estados
    Left = 24
    Top = 224
  end
  object GRUPO: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from GRUPO order by Nome')
    Left = 264
    Top = 152
    object GRUPOCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object GRUPONOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
  end
  object DataSource5: TDataSource
    DataSet = GRUPO
    Left = 184
    Top = 152
  end
  object GRUPOCLI: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from GRUPOCLI order by Nome')
    Left = 264
    Top = 24
    object GRUPOCLICODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object GRUPOCLINOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
  end
  object DataSource6: TDataSource
    DataSet = GRUPOCLI
    Left = 184
    Top = 24
  end
  object GRUPOFOR: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from GRUPOFOR order by Nome')
    Left = 264
    Top = 88
    object GRUPOFORCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object GRUPOFORNOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
  end
  object DataSource7: TDataSource
    DataSet = GRUPOFOR
    Left = 184
    Top = 88
  end
  object UNIDADES: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from UNIDADES Order by Nome')
    Left = 264
    Top = 232
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
    Left = 184
    Top = 224
  end
  object VENDEDORES: TUniQuery
    UpdatingTable = 'VENDEDORES'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from VENDEDORES Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_VENDEDORES')
    Left = 136
    Top = 291
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
    Left = 32
    Top = 291
  end
  object Sou_operador: TDataSource
    DataSet = OPERADOR
    Left = 40
    Top = 350
  end
  object OPERADOR: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from OPERADOR Order by Nome')
    Left = 136
    Top = 352
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
  object Sou_CENCUSTO: TDataSource
    DataSet = CENCUSTO
    Left = 40
    Top = 405
  end
  object CENCUSTO: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from CENCUSTO order by descricao')
    Left = 136
    Top = 407
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
  object UniTable1: TUniTable
    TableName = 'CONTAS'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 32
    Top = 560
  end
  object Sou_BANCOS: TDataSource
    DataSet = BANCOS
    Left = 32
    Top = 485
  end
  object BANCOS: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from BANCOS order by nome_banco')
    Left = 128
    Top = 487
    object BANCOSBANCO: TStringField
      FieldName = 'BANCO'
      Size = 5
    end
    object BANCOSNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Size = 100
    end
  end
  object HISTORIC: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from HISTORIC order by nome')
    Left = 432
    Top = 15
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
    Left = 360
    Top = 17
  end
  object SUB_HIST: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from SUB_HIST order by nome')
    Left = 432
    Top = 87
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
    Left = 360
    Top = 89
  end
  object VEICULOS: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from VEICULOS order by nome')
    Left = 432
    Top = 159
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
      EditMask = 'AAA-9999;0;_'
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
    object VEICULOSClienteVeiculo: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteVeiculo'
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
    Left = 360
    Top = 161
  end
  object PORTADOR: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from PORTADOR order by nome')
    Left = 432
    Top = 231
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
    object PORTADORDadosClientes: TStringField
      FieldKind = fkLookup
      FieldName = 'DadosClientes'
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
    Left = 360
    Top = 233
  end
  object CONTAS: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from CONTAS order by conta')
    Left = 432
    Top = 295
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
    Left = 360
    Top = 297
  end
  object CLIENTESP: TUniTable
    TableName = 'CLIENTES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 504
    Top = 232
  end
  object HISTORICS: TUniTable
    TableName = 'HISTORIC'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 496
    Top = 86
  end
  object CLIENTESV: TUniTable
    TableName = 'CLIENTES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 496
    Top = 161
  end
  object OBJETOS: TUniQuery
    UpdatingTable = 'OBJETOS'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM OBJETOS')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_OBJETOS')
    Left = 456
    Top = 432
    object IntegerField9: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField48: TStringField
      FieldName = 'DESCRICAO'
      Size = 45
    end
    object StringField49: TStringField
      FieldName = 'IDENTIFIC1'
    end
    object StringField50: TStringField
      FieldName = 'IDENTIFIC2'
    end
    object StringField51: TStringField
      FieldName = 'IDENTIFIC3'
    end
    object StringField52: TStringField
      FieldName = 'PROBLEMA'
      Size = 60
    end
    object StringField53: TStringField
      FieldName = 'PRISMA'
      Size = 10
    end
    object IntegerField10: TIntegerField
      FieldName = 'NUMERO'
    end
    object FloatField7: TFloatField
      FieldName = 'VALOR'
    end
    object DateField1: TDateField
      FieldName = 'REVGARAN'
    end
    object StringField54: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object Source_OBJETOS: TUniDataSource
    DataSet = OBJETOS
    Left = 360
    Top = 432
  end
  object emitente: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from emitente Order by Nome')
    Left = 632
    Top = 16
    object IntegerField7: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField19: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object StringField20: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object StringField21: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object StringField22: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object StringField23: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object StringField24: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object StringField25: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object StringField26: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object StringField27: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object StringField28: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object StringField29: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object StringField30: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object StringField31: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object IntegerField8: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object FloatField8: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object IntegerField11: TIntegerField
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
    object IntegerField12: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField13: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object BlobField2: TBlobField
      FieldName = 'FOTO'
    end
    object StringField32: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object SmallintField10: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
    object StringField33: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object emitenteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object emitenteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object emitenteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object emitenteCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object emitenteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object emitentePAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object emitenteCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object emitenteCELULAR3: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object emitenteCELULAR4: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object emitenteENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object emitenteCOMPLEMENTO_ENT: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object emitenteBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object emitenteCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object emitenteCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object emitenteUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object emitenteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object emitenteNUMERO_ENT: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object emitenteENDERECO_COB: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object emitenteNUMERO_COB: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object emitenteCOMPLEMENTO_COB: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object emitenteBAIRRO_COB: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object emitenteCEP_COB: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object emitenteCIDADE_COB: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object emitenteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object emitenteUF_COB: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object emitenteGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object emitenteCLIENTEX: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object emitenteFORNECEDORX: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object emitenteVENDEDORX: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object emitenteEMITENTEX: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object emitenteUSUARIOX: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object emitenteOPERADORX: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object emitenteSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object emitenteCODIGO2: TIntegerField
      FieldName = 'CODIGO2'
    end
    object emitenteCODIGO3: TIntegerField
      FieldName = 'CODIGO3'
    end
  end
  object Clientes2: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from Clientes Order by Nome')
    Left = 704
    Top = 16
    object Clientes2CODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object Clientes2NOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object Clientes2FANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object Clientes2CONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object Clientes2CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object Clientes2ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object Clientes2COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object Clientes2BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object Clientes2CEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object Clientes2CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object Clientes2CPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object Clientes2IE: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object Clientes2RG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object Clientes2UF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object Clientes2PAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object Clientes2TELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object Clientes2FAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object Clientes2CELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object Clientes2CELULAR2: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object Clientes2CELULAR3: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object Clientes2CELULAR4: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object Clientes2FIS_JUR: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object Clientes2TIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object Clientes2ENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object Clientes2COMPLEMENTO_ENT: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object Clientes2BAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object Clientes2CEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object Clientes2CIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object Clientes2UF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object Clientes2NUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object Clientes2NUMERO_ENT: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object Clientes2ENDERECO_COB: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object Clientes2NUMERO_COB: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object Clientes2COMPLEMENTO_COB: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object Clientes2BAIRRO_COB: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object Clientes2CEP_COB: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object Clientes2CIDADE_COB: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object Clientes2EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object Clientes2UF_COB: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object Clientes2VENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object Clientes2GRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object Clientes2LIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object Clientes2COD_CONVENIO: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object Clientes2CONVENIO: TSmallintField
      FieldName = 'CONVENIO'
    end
    object Clientes2DIA_ACERTO: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object Clientes2PER_CONVENIO: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object Clientes2A_RECEBER: TFloatField
      FieldName = 'A_RECEBER'
    end
    object Clientes2CONCEDER_CREDITO: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object Clientes2ATRASADO: TFloatField
      FieldName = 'ATRASADO'
    end
    object Clientes2RECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object Clientes2OBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object Clientes2ATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object Clientes2OPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object Clientes2COD_TABELA_PRECO: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object Clientes2FOTO: TBlobField
      FieldName = 'FOTO'
    end
    object Clientes2SUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object Clientes2IDESTRANGEIRO: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object Clientes2CLIENTEX: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object Clientes2FORNECEDORX: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object Clientes2VENDEDORX: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object Clientes2EMITENTEX: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object Clientes2USUARIOX: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object Clientes2OPERADORX: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object Clientes2SENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object Clientes2CODIGO2: TIntegerField
      FieldName = 'CODIGO2'
    end
    object Clientes2CODIGO3: TIntegerField
      FieldName = 'CODIGO3'
    end
    object Clientes2USA_DESCONTO_SUFRAMA: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
  end
  object Source_CARTOES: TUniDataSource
    DataSet = CARTOES
    Left = 360
    Top = 360
  end
  object CARTOES: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CARTOES')
    Left = 440
    Top = 360
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
  object UniDataSource_ITEVENDAS_ECF2: TUniDataSource
    DataSet = ITEVENDAS_ECF2
    Left = 632
    Top = 85
  end
  object ITEVENDAS_ECF2: TUniQuery
    UpdatingTable = 'ITEVENDAS_ECF2'
    KeyFields = 'CODIGOX'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from ITEVENDAS_ECF2')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_ITEVENDAS_ECF2')
    Left = 792
    Top = 85
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
    object ITEVENDAS_ECF2DescricaoCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoCliente'
      LookupDataSet = ClienteDescricao
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CLIENTE'
      Size = 50
      Lookup = True
    end
  end
  object UniDataSource_ITECOMPRAS: TUniDataSource
    DataSet = ITECOMPRAS
    Left = 632
    Top = 153
  end
  object ITECOMPRAS: TUniQuery
    UpdatingTable = 'ITECOMPRAS'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITECOMPRAS')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_ITECOMPRAS')
    Left = 792
    Top = 150
    object ITECOMPRASNOTA: TStringField
      FieldName = 'NOTA'
      Required = True
      Size = 9
    end
    object ITECOMPRASEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object ITECOMPRASFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Required = True
    end
    object ITECOMPRASITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object d: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object ITECOMPRASDescrio: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = ESTOQUE
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Size = 45
      Lookup = True
    end
    object ITECOMPRASBARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object ITECOMPRASCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object ITECOMPRASST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 4
    end
    object ITECOMPRASCF: TStringField
      FieldName = 'CF'
      Size = 10
    end
    object ITECOMPRASQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASGRADE_X: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object ITECOMPRASGRADE_Y: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object ITECOMPRASGRADE_QUA: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object ITECOMPRASPRECO: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASICMS: TFloatField
      FieldName = 'ICMS'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASIPI: TFloatField
      FieldName = 'IPI'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASTOT_IPI: TFloatField
      FieldName = 'TOT_IPI'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASOUTRAS_DESP_ACRE: TFloatField
      FieldName = 'OUTRAS_DESP_ACRE'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASFIXOU: TSmallintField
      FieldName = 'FIXOU'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASBASE_ICMS_SUB: TFloatField
      FieldName = 'BASE_ICMS_SUB'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASTOT_ICMS_SUB: TFloatField
      FieldName = 'TOT_ICMS_SUB'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASLOTE: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object ITECOMPRASDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object ITECOMPRASDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object ITECOMPRASREDUCAO_ICMS: TFloatField
      FieldName = 'REDUCAO_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASFIXOU_IPI: TSmallintField
      FieldName = 'FIXOU_IPI'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASFIXOU_ICMS: TSmallintField
      FieldName = 'FIXOU_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASTOT_ICMS: TFloatField
      FieldName = 'TOT_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASSAIDA: TDateField
      FieldName = 'SAIDA'
    end
    object ITECOMPRASPIS_ST: TStringField
      FieldName = 'PIS_ST'
      FixedChar = True
      Size = 2
    end
    object ITECOMPRASPIS_ALIQ: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object ITECOMPRASPIS_BASE: TFloatField
      FieldName = 'PIS_BASE'
    end
    object ITECOMPRASPIS_VALOR_BC: TFloatField
      FieldName = 'PIS_VALOR_BC'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASTOT_PIS: TFloatField
      FieldName = 'TOT_PIS'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRASPIS_SUB_BASE: TFloatField
      FieldName = 'PIS_SUB_BASE'
    end
    object ITECOMPRASPIS_SUB_ALIQ: TFloatField
      FieldName = 'PIS_SUB_ALIQ'
    end
    object ITECOMPRASTOT_PIS_SUB: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object ITECOMPRASPIS_VALOR_BC_SUB: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object ITECOMPRASCOFINS_ST: TStringField
      FieldName = 'COFINS_ST'
      FixedChar = True
      Size = 2
    end
    object ITECOMPRASCOFINS_ALIQ: TFloatField
      FieldName = 'COFINS_ALIQ'
    end
    object ITECOMPRASCOFINS_BASE: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object ITECOMPRASCOFINS_VALOR_BC: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object ITECOMPRASTOT_COFINS: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object ITECOMPRASCOFINS_SUB_BASE: TFloatField
      FieldName = 'COFINS_SUB_BASE'
    end
    object ITECOMPRASCOFINS_SUB_ALIQ: TFloatField
      FieldName = 'COFINS_SUB_ALIQ'
    end
    object ITECOMPRASTOT_COFINS_SUB: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object ITECOMPRASCOFINS_VALOR_BC_SUB: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object ITECOMPRASTOT_ISS: TFloatField
      FieldName = 'TOT_ISS'
    end
    object ITECOMPRASTOT_DESCONTO: TFloatField
      FieldName = 'TOT_DESCONTO'
    end
    object ITECOMPRASTOT_ACRESCIMO: TFloatField
      FieldName = 'TOT_ACRESCIMO'
    end
    object ITECOMPRASCST_IPI: TStringField
      FieldName = 'CST_IPI'
      FixedChar = True
      Size = 2
    end
    object ITECOMPRASPRECO_MAXIMO_CONSUMIDOR: TFloatField
      FieldName = 'PRECO_MAXIMO_CONSUMIDOR'
    end
    object ITECOMPRASCALC_PIS_COFINS: TSmallintField
      FieldName = 'CALC_PIS_COFINS'
    end
    object ITECOMPRASBASE_ICMS_SUB_RET: TFloatField
      FieldName = 'BASE_ICMS_SUB_RET'
    end
    object ITECOMPRASTOT_ICMS_SUB_RET: TFloatField
      FieldName = 'TOT_ICMS_SUB_RET'
    end
    object ITECOMPRASCSOSN: TStringField
      FieldName = 'CSOSN'
      FixedChar = True
      Size = 4
    end
    object ITECOMPRASCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object ITECOMPRASID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ITECOMPRASDescricaoFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoFornecedor'
      LookupDataSet = fornecedores
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FORNECEDOR'
      Size = 50
      Lookup = True
    end
  end
  object ESTOQUE: TUniTable
    TableName = 'produtos'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 792
    Top = 212
  end
  object ClienteDescricao: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from Clientes')
    IndexFieldNames = 'CODIGO'
    Left = 792
    Top = 272
    object IntegerField6: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField16: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object StringField17: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object StringField18: TStringField
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
      FixedChar = True
      Size = 1
    end
    object StringField43: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object IntegerField14: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object FloatField6: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object IntegerField15: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object SmallintField11: TSmallintField
      FieldName = 'CONVENIO'
    end
    object SmallintField12: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object FloatField13: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object FloatField14: TFloatField
      FieldName = 'A_RECEBER'
    end
    object SmallintField13: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object FloatField15: TFloatField
      FieldName = 'ATRASADO'
    end
    object FloatField16: TFloatField
      FieldName = 'RECEBIDO'
    end
    object MemoField3: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object SmallintField14: TSmallintField
      FieldName = 'ATIVO'
    end
    object IntegerField16: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField17: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object BlobField3: TBlobField
      FieldName = 'FOTO'
    end
    object StringField44: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object SmallintField15: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
    object StringField45: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object StringField46: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object StringField47: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object StringField55: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object StringField56: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object StringField57: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object StringField58: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object StringField59: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object StringField60: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object StringField61: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object StringField62: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object StringField63: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object StringField64: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object StringField65: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object StringField66: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object StringField67: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object StringField68: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object StringField69: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object StringField70: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object StringField71: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object StringField72: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object StringField73: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object StringField74: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object StringField75: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object StringField76: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object StringField77: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object IntegerField18: TIntegerField
      FieldName = 'GRUPO'
    end
    object StringField78: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField79: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField80: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField81: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField82: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object StringField83: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object StringField84: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object IntegerField19: TIntegerField
      FieldName = 'CODIGO2'
    end
    object IntegerField20: TIntegerField
      FieldName = 'CODIGO3'
    end
  end
  object fornecedoresDescricao: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from fornecedores Order by Nome')
    IndexFieldNames = 'CODIGO'
    Left = 792
    Top = 336
    object IntegerField21: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField85: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object StringField86: TStringField
      FieldName = 'FANTASIA'
      Size = 75
    end
    object StringField87: TStringField
      FieldName = 'CONTATO'
      Size = 75
    end
    object StringField88: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object StringField89: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object StringField90: TStringField
      FieldName = 'IE'
      Size = 19
    end
    object StringField91: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object StringField92: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object StringField93: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object StringField94: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object StringField95: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object StringField96: TStringField
      FieldName = 'FIS_JUR'
      FixedChar = True
      Size = 1
    end
    object StringField97: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object IntegerField22: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object FloatField17: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object IntegerField23: TIntegerField
      FieldName = 'COD_CONVENIO'
    end
    object SmallintField16: TSmallintField
      FieldName = 'CONVENIO'
    end
    object SmallintField17: TSmallintField
      FieldName = 'DIA_ACERTO'
    end
    object FloatField18: TFloatField
      FieldName = 'PER_CONVENIO'
    end
    object FloatField19: TFloatField
      FieldName = 'A_RECEBER'
    end
    object SmallintField18: TSmallintField
      FieldName = 'CONCEDER_CREDITO'
    end
    object FloatField20: TFloatField
      FieldName = 'ATRASADO'
    end
    object FloatField21: TFloatField
      FieldName = 'RECEBIDO'
    end
    object MemoField4: TMemoField
      FieldName = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object SmallintField19: TSmallintField
      FieldName = 'ATIVO'
    end
    object IntegerField24: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField25: TIntegerField
      FieldName = 'COD_TABELA_PRECO'
    end
    object BlobField4: TBlobField
      FieldName = 'FOTO'
    end
    object StringField98: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object SmallintField20: TSmallintField
      FieldName = 'USA_DESCONTO_SUFRAMA'
    end
    object StringField99: TStringField
      FieldName = 'IDESTRANGEIRO'
    end
    object StringField100: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object StringField101: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object StringField102: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object StringField103: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object StringField104: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object StringField105: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object StringField106: TStringField
      FieldName = 'CELULAR2'
      Size = 14
    end
    object StringField107: TStringField
      FieldName = 'CELULAR3'
      Size = 14
    end
    object StringField108: TStringField
      FieldName = 'CELULAR4'
      Size = 14
    end
    object StringField109: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 100
    end
    object StringField110: TStringField
      FieldName = 'COMPLEMENTO_ENT'
      Size = 50
    end
    object StringField111: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 50
    end
    object StringField112: TStringField
      FieldName = 'CEP_ENT'
      Size = 9
    end
    object StringField113: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 50
    end
    object StringField114: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object StringField115: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object StringField116: TStringField
      FieldName = 'NUMERO_ENT'
      Size = 10
    end
    object StringField117: TStringField
      FieldName = 'ENDERECO_COB'
      Size = 100
    end
    object StringField118: TStringField
      FieldName = 'NUMERO_COB'
      Size = 10
    end
    object StringField119: TStringField
      FieldName = 'COMPLEMENTO_COB'
      Size = 50
    end
    object StringField120: TStringField
      FieldName = 'BAIRRO_COB'
      Size = 50
    end
    object StringField121: TStringField
      FieldName = 'CEP_COB'
      Size = 9
    end
    object StringField122: TStringField
      FieldName = 'CIDADE_COB'
      Size = 50
    end
    object StringField123: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object StringField124: TStringField
      FieldName = 'UF_COB'
      FixedChar = True
      Size = 2
    end
    object IntegerField26: TIntegerField
      FieldName = 'GRUPO'
    end
    object StringField125: TStringField
      FieldName = 'CLIENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField126: TStringField
      FieldName = 'FORNECEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField127: TStringField
      FieldName = 'VENDEDORX'
      FixedChar = True
      Size = 1
    end
    object StringField128: TStringField
      FieldName = 'EMITENTEX'
      FixedChar = True
      Size = 1
    end
    object StringField129: TStringField
      FieldName = 'USUARIOX'
      FixedChar = True
      Size = 1
    end
    object StringField130: TStringField
      FieldName = 'OPERADORX'
      FixedChar = True
      Size = 1
    end
    object StringField131: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object IntegerField27: TIntegerField
      FieldName = 'CODIGO2'
    end
    object IntegerField28: TIntegerField
      FieldName = 'CODIGO3'
    end
  end
  object INVENTARIO: TUniQuery
    UpdatingTable = 'INVENTARIO'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'select * from INVENTARIO order by ID desc')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_INVENTARIO'
      'InterBase.GeneratorMode=gmInsert')
    Left = 456
    Top = 504
  end
  object QOrigem: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 768
    Top = 488
  end
  object QDestino: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 864
    Top = 488
  end
  object generatorx: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 768
    Top = 560
  end
  object Source_INVENTARIO: TUniDataSource
    DataSet = INVENTARIO
    Left = 360
    Top = 504
  end
  object simulado: TUniQuery
    UpdatingTable = 'simulado'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'select * from simulado order by ID desc')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_simulado'
      'InterBase.GeneratorMode=gmInsert')
    Left = 456
    Top = 584
  end
  object Source_simulado: TUniDataSource
    DataSet = simulado
    Left = 360
    Top = 584
  end
end
