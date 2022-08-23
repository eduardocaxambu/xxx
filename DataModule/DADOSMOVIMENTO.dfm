object DADOSMOVIMENTOF: TDADOSMOVIMENTOF
  OldCreateOrder = False
  Height = 849
  Width = 1327
  object UniDataSource1: TUniDataSource
    DataSet = COMPRAS
    Left = 31
    Top = 6
  end
  object COMPRAS: TUniQuery
    UpdatingTable = 'COMPRAS'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM COMPRAS ORDER BY EMISSAO+HORA desc')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_COMPRAS'
      'InterBase.GeneratorMode=gmInsert')
    Left = 103
    Top = 6
    object COMPRASNOTA: TStringField
      FieldName = 'NOTA'
      Size = 9
    end
    object COMPRASMODELO: TStringField
      FieldName = 'MODELO'
      FixedChar = True
      Size = 2
    end
    object COMPRASSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 3
    end
    object COMPRASSUBSERIE: TStringField
      FieldName = 'SUBSERIE'
      FixedChar = True
      Size = 2
    end
    object COMPRASEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object COMPRASFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object COMPRASHORA: TTimeField
      FieldName = 'HORA'
    end
    object COMPRASCFOPS: TStringField
      FieldName = 'CFOPS'
      Size = 40
    end
    object COMPRASOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object COMPRASNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Size = 50
    end
    object COMPRASCOMERCIALIZACAO: TSmallintField
      FieldName = 'COMERCIALIZACAO'
    end
    object COMPRASBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object COMPRASTOT_ICMS: TFloatField
      FieldName = 'TOT_ICMS'
    end
    object COMPRASBASE_ICMS_SUB: TFloatField
      FieldName = 'BASE_ICMS_SUB'
    end
    object COMPRASTOT_ICMS_SUB: TFloatField
      FieldName = 'TOT_ICMS_SUB'
    end
    object COMPRASICMS_FRETE: TFloatField
      FieldName = 'ICMS_FRETE'
    end
    object COMPRASTOT_ICMS_FRETE: TFloatField
      FieldName = 'TOT_ICMS_FRETE'
    end
    object COMPRASTOT_PRODUTOS: TFloatField
      FieldName = 'TOT_PRODUTOS'
    end
    object COMPRASTOT_FRETE: TFloatField
      FieldName = 'TOT_FRETE'
    end
    object COMPRASTOT_SEGURO: TFloatField
      FieldName = 'TOT_SEGURO'
    end
    object COMPRASTOT_OUTRAS: TFloatField
      FieldName = 'TOT_OUTRAS'
    end
    object COMPRASDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object COMPRASACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object COMPRASTOT_IPI: TFloatField
      FieldName = 'TOT_IPI'
    end
    object COMPRASTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object COMPRASTRANSP_1: TIntegerField
      FieldName = 'TRANSP_1'
    end
    object COMPRASTRANSP_2: TIntegerField
      FieldName = 'TRANSP_2'
    end
    object COMPRASFRETE_1: TStringField
      FieldName = 'FRETE_1'
      FixedChar = True
      Size = 1
    end
    object COMPRASFRETE_2: TStringField
      FieldName = 'FRETE_2'
      FixedChar = True
      Size = 2
    end
    object COMPRASOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object COMPRASSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object COMPRASTABELA_PRECO: TIntegerField
      FieldName = 'TABELA_PRECO'
    end
    object COMPRASANEXA_ST: TSmallintField
      FieldName = 'ANEXA_ST'
    end
    object COMPRASCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object COMPRASCUSTO: TIntegerField
      FieldName = 'CUSTO'
    end
    object COMPRASIMPORTADOS: TStringField
      FieldName = 'IMPORTADOS'
      Size = 255
    end
    object COMPRASTOT_PIS: TFloatField
      FieldName = 'TOT_PIS'
    end
    object COMPRASTOT_COFINS: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object COMPRASTOT_PIS_SUB: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object COMPRASTOT_COFINS_SUB: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object COMPRASSAIDA: TDateField
      FieldName = 'SAIDA'
    end
    object COMPRASPIS_VALOR_BC: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object COMPRASPIS_VALOR_BC_SUB: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object COMPRASCOFINS_VALOR_BC: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object COMPRASCOFINS_VALOR_BC_SUB: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object COMPRASSOMENTE_SERVICO: TSmallintField
      FieldName = 'SOMENTE_SERVICO'
    end
    object COMPRASTOT_ISS: TFloatField
      FieldName = 'TOT_ISS'
    end
    object COMPRASIMPORTACAO: TSmallintField
      FieldName = 'IMPORTACAO'
    end
    object COMPRASCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 44
    end
    object COMPRASDescrio: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = FORNECEDORESy
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FORNECEDOR'
      Size = 50
      Lookup = True
    end
    object COMPRASCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object COMPRASID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object FORNECEDORES: TUniTable
    TableName = 'FORNECEDORES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 183
    Top = 6
  end
  object UniDataSource2: TUniDataSource
    DataSet = ITECOMPRAS
    Left = 24
    Top = 145
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
    Left = 112
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
    object ITECOMPRASCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object ITECOMPRASDescrio: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = ESTOQUExxx
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
    object ITECOMPRASDesGrade: TStringField
      FieldKind = fkLookup
      FieldName = 'DesGrade'
      LookupDataSet = GRADE
      LookupKeyFields = 'BARRAS'
      LookupResultField = 'NOME'
      KeyFields = 'BARRAS'
      Lookup = True
    end
    object ITECOMPRASCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object ITECOMPRASID: TIntegerField
      FieldName = 'ID'
    end
  end
  object ESTOQUExxx: TUniTable
    TableName = 'produtos'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 256
    Top = 324
  end
  object ITECOMPRAS2: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      
        'SELECT * FROM ITECOMPRAS WHERE NOTA='#39'000011526'#39' order by emissao' +
        ' desc')
    Left = 280
    Top = 148
    object StringField2: TStringField
      FieldName = 'NOTA'
      Required = True
      Size = 9
    end
    object DateField2: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'FORNECEDOR'
      Required = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField3: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = ESTOQUExxx
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Size = 45
      Lookup = True
    end
    object StringField4: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object IntegerField7: TIntegerField
      FieldName = 'CFOP'
    end
    object StringField5: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 4
    end
    object StringField6: TStringField
      FieldName = 'CF'
      Size = 10
    end
    object FloatField10: TFloatField
      FieldName = 'QTD'
    end
    object MemoField2: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object MemoField3: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object MemoField4: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object FloatField11: TFloatField
      FieldName = 'PRECO'
    end
    object FloatField12: TFloatField
      FieldName = 'TOTAL'
    end
    object FloatField13: TFloatField
      FieldName = 'ICMS'
    end
    object FloatField14: TFloatField
      FieldName = 'IPI'
    end
    object FloatField15: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object FloatField16: TFloatField
      FieldName = 'TOT_IPI'
    end
    object FloatField17: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object FloatField18: TFloatField
      FieldName = 'DESCONTO'
    end
    object FloatField19: TFloatField
      FieldName = 'OUTRAS_DESP_ACRE'
    end
    object SmallintField1: TSmallintField
      FieldName = 'FIXOU'
    end
    object FloatField20: TFloatField
      FieldName = 'BASE_ICMS_SUB'
    end
    object FloatField21: TFloatField
      FieldName = 'TOT_ICMS_SUB'
    end
    object StringField7: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object DateField3: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object DateField4: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object FloatField22: TFloatField
      FieldName = 'REDUCAO_ICMS'
    end
    object SmallintField2: TSmallintField
      FieldName = 'FIXOU_IPI'
    end
    object SmallintField3: TSmallintField
      FieldName = 'FIXOU_ICMS'
    end
    object FloatField23: TFloatField
      FieldName = 'TOT_ICMS'
    end
    object DateField5: TDateField
      FieldName = 'SAIDA'
    end
    object StringField8: TStringField
      FieldName = 'PIS_ST'
      FixedChar = True
      Size = 2
    end
    object FloatField24: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object FloatField25: TFloatField
      FieldName = 'PIS_BASE'
    end
    object FloatField26: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object FloatField27: TFloatField
      FieldName = 'TOT_PIS'
    end
    object FloatField28: TFloatField
      FieldName = 'PIS_SUB_BASE'
    end
    object FloatField29: TFloatField
      FieldName = 'PIS_SUB_ALIQ'
    end
    object FloatField30: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object FloatField31: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object StringField9: TStringField
      FieldName = 'COFINS_ST'
      FixedChar = True
      Size = 2
    end
    object FloatField32: TFloatField
      FieldName = 'COFINS_ALIQ'
    end
    object FloatField33: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object FloatField34: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object FloatField35: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object FloatField36: TFloatField
      FieldName = 'COFINS_SUB_BASE'
    end
    object FloatField37: TFloatField
      FieldName = 'COFINS_SUB_ALIQ'
    end
    object FloatField38: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object FloatField39: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object FloatField40: TFloatField
      FieldName = 'TOT_ISS'
    end
    object FloatField41: TFloatField
      FieldName = 'TOT_DESCONTO'
    end
    object FloatField42: TFloatField
      FieldName = 'TOT_ACRESCIMO'
    end
    object StringField10: TStringField
      FieldName = 'CST_IPI'
      FixedChar = True
      Size = 2
    end
    object FloatField43: TFloatField
      FieldName = 'PRECO_MAXIMO_CONSUMIDOR'
    end
    object SmallintField4: TSmallintField
      FieldName = 'CALC_PIS_COFINS'
    end
    object FloatField44: TFloatField
      FieldName = 'BASE_ICMS_SUB_RET'
    end
    object FloatField45: TFloatField
      FieldName = 'TOT_ICMS_SUB_RET'
    end
    object StringField11: TStringField
      FieldName = 'CSOSN'
      FixedChar = True
      Size = 4
    end
    object ITECOMPRAS2ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ITECOMPRAS2CLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
  end
  object COMPRAS2: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM COMPRAS ORDER BY EMISSAO desc')
    Left = 351
    Top = 149
    object StringField12: TStringField
      FieldName = 'NOTA'
      Required = True
      Size = 9
    end
    object StringField13: TStringField
      FieldName = 'MODELO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField14: TStringField
      FieldName = 'SERIE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object StringField15: TStringField
      FieldName = 'SUBSERIE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object DateField6: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object IntegerField8: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'FORNECEDOR'
      Required = True
    end
    object StringField16: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231'ao'
      LookupDataSet = FORNECEDORES
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FORNECEDOR'
      Size = 40
      Lookup = True
    end
    object TimeField1: TTimeField
      FieldName = 'HORA'
    end
    object StringField17: TStringField
      FieldName = 'CFOPS'
      Required = True
      Size = 40
    end
    object MemoField5: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object StringField18: TStringField
      FieldName = 'NATUREZA'
      Size = 50
    end
    object SmallintField5: TSmallintField
      FieldName = 'COMERCIALIZACAO'
    end
    object FloatField46: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object FloatField47: TFloatField
      FieldName = 'TOT_ICMS'
    end
    object FloatField48: TFloatField
      FieldName = 'BASE_ICMS_SUB'
    end
    object FloatField49: TFloatField
      FieldName = 'TOT_ICMS_SUB'
    end
    object FloatField50: TFloatField
      FieldName = 'ICMS_FRETE'
    end
    object FloatField51: TFloatField
      FieldName = 'TOT_ICMS_FRETE'
    end
    object FloatField52: TFloatField
      FieldName = 'TOT_PRODUTOS'
    end
    object FloatField53: TFloatField
      FieldName = 'TOT_FRETE'
    end
    object FloatField54: TFloatField
      FieldName = 'TOT_SEGURO'
    end
    object FloatField55: TFloatField
      FieldName = 'TOT_OUTRAS'
    end
    object FloatField56: TFloatField
      FieldName = 'DESCONTO'
    end
    object FloatField57: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object FloatField58: TFloatField
      FieldName = 'TOT_IPI'
    end
    object FloatField59: TFloatField
      FieldName = 'TOTAL'
    end
    object IntegerField9: TIntegerField
      FieldName = 'TRANSP_1'
    end
    object IntegerField10: TIntegerField
      FieldName = 'TRANSP_2'
    end
    object StringField19: TStringField
      FieldName = 'FRETE_1'
      FixedChar = True
      Size = 1
    end
    object StringField20: TStringField
      FieldName = 'FRETE_2'
      FixedChar = True
      Size = 2
    end
    object IntegerField11: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField12: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object IntegerField13: TIntegerField
      FieldName = 'TABELA_PRECO'
    end
    object SmallintField6: TSmallintField
      FieldName = 'ANEXA_ST'
    end
    object IntegerField14: TIntegerField
      FieldName = 'CONTA'
    end
    object IntegerField15: TIntegerField
      FieldName = 'CUSTO'
    end
    object StringField21: TStringField
      FieldName = 'IMPORTADOS'
      Size = 255
    end
    object FloatField60: TFloatField
      FieldName = 'TOT_PIS'
    end
    object FloatField61: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object FloatField62: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object FloatField63: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object DateField7: TDateField
      FieldName = 'SAIDA'
    end
    object FloatField64: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object FloatField65: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object FloatField66: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object FloatField67: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object SmallintField7: TSmallintField
      FieldName = 'SOMENTE_SERVICO'
    end
    object FloatField68: TFloatField
      FieldName = 'TOT_ISS'
    end
    object SmallintField8: TSmallintField
      FieldName = 'IMPORTACAO'
    end
    object StringField22: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 44
    end
    object StringField23: TStringField
      FieldKind = fkLookup
      FieldName = 'Endere'#231'o'
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ENDERECO'
      KeyFields = 'FORNECEDOR'
      Size = 35
      Lookup = True
    end
  end
  object ESTOQUEEntrada: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM produtos ORDER BY CODIGO')
    IndexFieldNames = 'CODIGO'
    Left = 216
    Top = 256
  end
  object UniDataSource7: TUniDataSource
    DataSet = UniQuery2
    Left = 24
    Top = 72
  end
  object UniQuery2: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CONTAS')
    Left = 112
    Top = 72
  end
  object UniDataSource3: TUniDataSource
    DataSet = PEDCOMPRA
    Left = 32
    Top = 225
  end
  object PEDCOMPRA: TUniQuery
    UpdatingTable = 'PEDCOMPRA'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PEDCOMPRA')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_PEDCOMPRA')
    Left = 120
    Top = 217
  end
  object UniDataSource5: TUniDataSource
    DataSet = PEDC_PROD
    Left = 32
    Top = 281
  end
  object PEDC_PROD: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PEDC_PROD')
    Left = 120
    Top = 273
  end
  object UniDataSource4: TUniDataSource
    DataSet = PEDVENDA
    Left = 32
    Top = 337
  end
  object PEDVENDA: TUniQuery
    UpdatingTable = 'PEDVENDA'
    KeyFields = 'PEDVENDA'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PEDVENDA')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_PEDVENDA')
    Left = 120
    Top = 329
  end
  object UniDataSource6: TUniDataSource
    DataSet = PEDV_PROD
    Left = 32
    Top = 393
  end
  object PEDV_PROD: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PEDV_PROD')
    Left = 120
    Top = 393
  end
  object UniDataSource8: TUniDataSource
    DataSet = VENDAS_ECF
    Left = 480
    Top = 16
  end
  object VENDAS_ECF: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM VENDAS_ECF order by data desc')
    Left = 568
    Top = 16
    object VENDAS_ECFCUPOM: TStringField
      FieldName = 'CUPOM'
      Required = True
      Size = 6
    end
    object VENDAS_ECFN_CAIXA: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object VENDAS_ECFDATA: TDateField
      FieldName = 'DATA'
    end
    object VENDAS_ECFHORA: TTimeField
      FieldName = 'HORA'
    end
    object VENDAS_ECFOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object VENDAS_ECFCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object VENDAS_ECFVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object VENDAS_ECFCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object VENDAS_ECFACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object VENDAS_ECFDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object VENDAS_ECFTOT_ISS: TFloatField
      FieldName = 'TOT_ISS'
    end
    object VENDAS_ECFTOT_ISS_D: TFloatField
      FieldName = 'TOT_ISS_D'
    end
    object VENDAS_ECFTOT_SERVICOS: TFloatField
      FieldName = 'TOT_SERVICOS'
    end
    object VENDAS_ECFTOT_ICMS: TFloatField
      FieldName = 'TOT_ICMS'
    end
    object VENDAS_ECFTOT_PRODUTOS: TFloatField
      FieldName = 'TOT_PRODUTOS'
    end
    object VENDAS_ECFTOT_VENDA: TFloatField
      FieldName = 'TOT_VENDA'
    end
    object VENDAS_ECFCANCELADO: TSmallintField
      FieldName = 'CANCELADO'
      Required = True
    end
    object VENDAS_ECFSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object VENDAS_ECFCONVENIO: TFloatField
      FieldName = 'CONVENIO'
    end
    object VENDAS_ECFOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object VENDAS_ECFDescrio: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = CLIENTES
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CLIENTE'
      Size = 35
      Lookup = True
    end
    object VENDAS_ECFNomeOperador: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome Operador'
      LookupDataSet = USUARIOS
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'OPERADOR'
      Size = 35
      Lookup = True
    end
  end
  object UniDataSource9: TUniDataSource
    DataSet = ITEVENDAS_ECF
    Left = 480
    Top = 72
  end
  object ITEVENDAS_ECF: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITEVENDAS_ECF order by data desc')
    Left = 568
    Top = 72
    object ITEVENDAS_ECFCUPOM: TStringField
      FieldName = 'CUPOM'
      Required = True
      Size = 6
    end
    object ITEVENDAS_ECFN_CAIXA: TIntegerField
      FieldName = 'N_CAIXA'
    end
    object ITEVENDAS_ECFDATA: TDateField
      FieldName = 'DATA'
    end
    object ITEVENDAS_ECFHORA: TTimeField
      FieldName = 'HORA'
    end
    object ITEVENDAS_ECFOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
      Required = True
    end
    object ITEVENDAS_ECFITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object ITEVENDAS_ECFCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object ITEVENDAS_ECFBARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object ITEVENDAS_ECFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object ITEVENDAS_ECFQTD: TFloatField
      FieldName = 'QTD'
    end
    object ITEVENDAS_ECFPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object ITEVENDAS_ECFTRIBUTACAO: TStringField
      FieldName = 'TRIBUTACAO'
      FixedChar = True
      Size = 3
    end
    object ITEVENDAS_ECFICMS: TFloatField
      FieldName = 'ICMS'
    end
    object ITEVENDAS_ECFISS: TFloatField
      FieldName = 'ISS'
    end
    object ITEVENDAS_ECFUND: TStringField
      FieldName = 'UND'
      FixedChar = True
      Size = 3
    end
    object ITEVENDAS_ECFGRADE_X: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object ITEVENDAS_ECFGRADE_Y: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object ITEVENDAS_ECFGRADE_QUA: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object ITEVENDAS_ECFGRADE_VENDIDA: TMemoField
      FieldName = 'GRADE_VENDIDA'
      BlobType = ftMemo
    end
    object ITEVENDAS_ECFSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 40
    end
    object ITEVENDAS_ECFDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object ITEVENDAS_ECFACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object ITEVENDAS_ECFTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object ITEVENDAS_ECFOUTRAS_DESP_ACRE: TFloatField
      FieldName = 'OUTRAS_DESP_ACRE'
    end
    object ITEVENDAS_ECFCANCELADO: TSmallintField
      FieldName = 'CANCELADO'
      Required = True
    end
    object ITEVENDAS_ECFOPERADOR_SUP: TIntegerField
      FieldName = 'OPERADOR_SUP'
      Required = True
    end
    object ITEVENDAS_ECFLOTE: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object ITEVENDAS_ECFTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object ITEVENDAS_ECFTABELA_PRECO: TStringField
      FieldName = 'TABELA_PRECO'
      Size = 30
    end
    object ITEVENDAS_ECFPIS_ST: TStringField
      FieldName = 'PIS_ST'
      FixedChar = True
      Size = 2
    end
    object ITEVENDAS_ECFPIS_VALOR_BC: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object ITEVENDAS_ECFPIS_ALIQ: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object ITEVENDAS_ECFTOT_PIS: TFloatField
      FieldName = 'TOT_PIS'
    end
    object ITEVENDAS_ECFCOFINS_ST: TStringField
      FieldName = 'COFINS_ST'
      FixedChar = True
      Size = 2
    end
    object ITEVENDAS_ECFCOFINS_VALOR_BC: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object ITEVENDAS_ECFCOFINS_ALIQ: TFloatField
      FieldName = 'COFINS_ALIQ'
    end
    object ITEVENDAS_ECFTOT_COFINS: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object ITEVENDAS_ECFCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      FixedChar = True
      Size = 3
    end
    object ITEVENDAS_ECFPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object ITEVENDAS_ECFCSOSN: TStringField
      FieldName = 'CSOSN'
      FixedChar = True
      Size = 4
    end
  end
  object CLIENTES: TUniTable
    TableName = 'CLIENTES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 656
    Top = 16
  end
  object USUARIOS: TUniTable
    TableName = 'USUARIOS'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 744
    Top = 16
  end
  object UniDataSource10: TUniDataSource
    DataSet = LMC_TURNOS
    Left = 448
    Top = 152
  end
  object LMC_TURNOS: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM LMC_TURNOS order by DATA_HORA_INI')
    Left = 544
    Top = 152
    object LMC_TURNOSCODIGO_TURNO: TIntegerField
      FieldName = 'CODIGO_TURNO'
    end
    object LMC_TURNOSNRTANQUE: TStringField
      FieldName = 'NRTANQUE'
      FixedChar = True
      Size = 3
    end
    object LMC_TURNOSNRBICO: TStringField
      FieldName = 'NRBICO'
      FixedChar = True
      Size = 3
    end
    object LMC_TURNOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object LMC_TURNOSLEITURA_ANT: TFloatField
      FieldName = 'LEITURA_ANT'
    end
    object LMC_TURNOSLEITURA_FIM: TFloatField
      FieldName = 'LEITURA_FIM'
    end
    object LMC_TURNOSDATA_HORA_INI: TDateTimeField
      FieldName = 'DATA_HORA_INI'
    end
    object LMC_TURNOSDATA_HORA_FIM: TDateTimeField
      FieldName = 'DATA_HORA_FIM'
    end
    object LMC_TURNOSOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
  end
  object UniDataSource11: TUniDataSource
    DataSet = LMC_GRADEC
    Left = 664
    Top = 320
  end
  object LMC_GRADEC: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM LMC_GRADEC order by DATA')
    Left = 760
    Top = 320
  end
  object UniDataSource12: TUniDataSource
    DataSet = LMC_GRADEV
    Left = 664
    Top = 272
  end
  object LMC_GRADEV: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM LMC_GRADEV order by EMISSAO')
    Left = 760
    Top = 272
  end
  object UniDataSource13: TUniDataSource
    DataSet = LMC_VENDA
    Left = 448
    Top = 216
  end
  object LMC_VENDA: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM LMC_VENDA order by CODIGO_LMC')
    Left = 544
    Top = 216
    object LMC_VENDACODIGO_LMC: TIntegerField
      FieldName = 'CODIGO_LMC'
      Required = True
    end
    object LMC_VENDANRTANQUE: TStringField
      FieldName = 'NRTANQUE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object LMC_VENDANRBICO: TStringField
      FieldName = 'NRBICO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object LMC_VENDACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object LMC_VENDAFECHAMENTO: TFloatField
      FieldName = 'FECHAMENTO'
    end
    object LMC_VENDAABERTURA: TFloatField
      FieldName = 'ABERTURA'
    end
    object LMC_VENDAAFERICOES: TFloatField
      FieldName = 'AFERICOES'
    end
    object LMC_VENDAVENDABICO: TFloatField
      FieldName = 'VENDABICO'
    end
  end
  object UniDataSource15: TUniDataSource
    DataSet = LMC_ABERTURA
    Left = 448
    Top = 320
  end
  object LMC_ABERTURA: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM LMC_ABERTURA')
    Left = 544
    Top = 320
    object LMC_ABERTURACODIGO_LMC: TIntegerField
      FieldName = 'CODIGO_LMC'
      Required = True
    end
    object LMC_ABERTURANRTANQUE: TStringField
      FieldName = 'NRTANQUE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object LMC_ABERTURANOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
    object LMC_ABERTURAQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object LMC: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM LMC order by folha desc')
    Left = 544
    Top = 272
    object LMCCODIGO_LMC: TIntegerField
      FieldName = 'CODIGO_LMC'
      Required = True
    end
    object LMCPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
    end
    object LMCDATA: TDateField
      FieldName = 'DATA'
    end
    object LMCPRODUTOTUDO: TStringField
      FieldName = 'PRODUTOTUDO'
      Size = 75
    end
    object LMCESTOQUEABERTURA: TFloatField
      FieldName = 'ESTOQUEABERTURA'
    end
    object LMCESTOQUEFECHAMENTO: TFloatField
      FieldName = 'ESTOQUEFECHAMENTO'
    end
    object LMCTOTALRECEBIDO: TFloatField
      FieldName = 'TOTALRECEBIDO'
    end
    object LMCVOLUMEDISPONIVEL: TFloatField
      FieldName = 'VOLUMEDISPONIVEL'
    end
    object LMCVENDASNODIA: TFloatField
      FieldName = 'VENDASNODIA'
    end
    object LMCESTOQUEESCRITURAL: TFloatField
      FieldName = 'ESTOQUEESCRITURAL'
    end
    object LMCPERDASGANHOS: TFloatField
      FieldName = 'PERDASGANHOS'
    end
    object LMCVALORACUMULADO: TFloatField
      FieldName = 'VALORACUMULADO'
    end
    object LMCVENDASVALOR: TFloatField
      FieldName = 'VENDASVALOR'
    end
    object LMCOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object LMCFOLHA: TIntegerField
      FieldName = 'FOLHA'
    end
  end
  object UniDataSource18: TUniDataSource
    DataSet = LMC
    Left = 456
    Top = 272
  end
  object UniDataSource14: TUniDataSource
    DataSet = LMC_COMPRA
    Left = 664
    Top = 168
  end
  object LMC_COMPRA: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM LMC_COMPRA')
    Left = 760
    Top = 168
    object LMC_COMPRACODIGO_LMC: TIntegerField
      FieldName = 'CODIGO_LMC'
      Required = True
    end
    object LMC_COMPRANOTA: TStringField
      FieldName = 'NOTA'
      Required = True
      Size = 9
    end
    object LMC_COMPRANRTANQUE: TStringField
      FieldName = 'NRTANQUE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object LMC_COMPRADATA: TDateField
      FieldName = 'DATA'
    end
    object LMC_COMPRAVOLUME: TFloatField
      FieldName = 'VOLUME'
    end
  end
  object UniDataSource16: TUniDataSource
    DataSet = LMC_FECHAMENTO
    Left = 664
    Top = 224
  end
  object LMC_FECHAMENTO: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM LMC_FECHAMENTO')
    Left = 760
    Top = 224
    object LMC_FECHAMENTOCODIGO_LMC: TIntegerField
      FieldName = 'CODIGO_LMC'
      Required = True
    end
    object LMC_FECHAMENTONRTANQUE: TStringField
      FieldName = 'NRTANQUE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object LMC_FECHAMENTONOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
    object LMC_FECHAMENTOQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object UniDataSource17: TUniDataSource
    DataSet = LMC_TERMOS
    Left = 664
    Top = 376
  end
  object LMC_TERMOS: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM LMC_TERMOS')
    Left = 760
    Top = 376
  end
  object UniDataSource19: TUniDataSource
    DataSet = LMC_ACUMULADO
    Left = 448
    Top = 384
  end
  object LMC_ACUMULADO: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM LMC_ACUMULADO')
    Left = 544
    Top = 384
  end
  object UniDataSource20: TUniDataSource
    DataSet = LMC_AFERICOES
    Left = 448
    Top = 448
  end
  object LMC_AFERICOES: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM LMC_AFERICOES')
    Left = 544
    Top = 448
  end
  object BICOS_TANQUES: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT DISTINCT NRTANQUE,CODIGO FROM BICOS')
    Left = 760
    Top = 432
  end
  object BICOS: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM BICOS order by codigo')
    Left = 664
    Top = 432
  end
  object xESTOQUE: TUniTable
    TableName = 'ESTOQUE'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 760
    Top = 496
  end
  object LMC2: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM LMC order by folha desc')
    Left = 760
    Top = 120
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO_LMC'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'PRODUTO'
    end
    object DateField1: TDateField
      FieldName = 'DATA'
    end
    object StringField1: TStringField
      FieldName = 'PRODUTOTUDO'
      Size = 75
    end
    object FloatField1: TFloatField
      FieldName = 'ESTOQUEABERTURA'
    end
    object FloatField2: TFloatField
      FieldName = 'ESTOQUEFECHAMENTO'
    end
    object FloatField3: TFloatField
      FieldName = 'TOTALRECEBIDO'
    end
    object FloatField4: TFloatField
      FieldName = 'VOLUMEDISPONIVEL'
    end
    object FloatField5: TFloatField
      FieldName = 'VENDASNODIA'
    end
    object FloatField6: TFloatField
      FieldName = 'ESTOQUEESCRITURAL'
    end
    object FloatField7: TFloatField
      FieldName = 'PERDASGANHOS'
    end
    object FloatField8: TFloatField
      FieldName = 'VALORACUMULADO'
    end
    object FloatField9: TFloatField
      FieldName = 'VENDASVALOR'
    end
    object MemoField1: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object IntegerField3: TIntegerField
      FieldName = 'FOLHA'
    end
  end
  object UniDataSource21: TUniDataSource
    DataSet = LMC2
    Left = 664
    Top = 120
  end
  object ESTOQUEEntradax: TUniTable
    TableName = 'produtos'
    Connection = DADOS_CADASTROSf.UniConnection1
    IndexFieldNames = 'CODIGO'
    Left = 216
    Top = 385
  end
  object UniDataSource22: TUniDataSource
    DataSet = VENDAS
    Left = 16
    Top = 464
  end
  object VENDAS: TUniQuery
    UpdatingTable = 'VENDAS'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM VENDAS ORDER BY EMISSAO+HORA desc')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_VENDAS')
    Left = 112
    Top = 464
    object VENDASNOTA: TStringField
      FieldName = 'NOTA'
      Size = 6
    end
    object VENDASMODELO: TStringField
      FieldName = 'MODELO'
      FixedChar = True
      Size = 2
    end
    object VENDASSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 3
    end
    object VENDASSUBSERIE: TStringField
      FieldName = 'SUBSERIE'
      FixedChar = True
      Size = 2
    end
    object VENDASORIGEM: TStringField
      FieldName = 'ORIGEM'
      FixedChar = True
      Size = 2
    end
    object t: TDateField
      FieldName = 'EMISSAO'
    end
    object VENDASHORA: TTimeField
      FieldName = 'HORA'
    end
    object VENDASENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
    object VENDASSAIDA: TStringField
      FieldName = 'SAIDA'
      FixedChar = True
      Size = 1
    end
    object VENDASCFOPS: TStringField
      FieldName = 'CFOPS'
      Size = 40
    end
    object VENDASNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Size = 50
    end
    object VENDASCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object VENDASIMPORTACOES: TMemoField
      FieldName = 'IMPORTACOES'
      BlobType = ftMemo
    end
    object VENDASDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
    end
    object VENDASHORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
    end
    object VENDASOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object VENDASADICIONAIS: TMemoField
      FieldName = 'ADICIONAIS'
      BlobType = ftMemo
    end
    object VENDASTRANSP_1: TIntegerField
      FieldName = 'TRANSP_1'
    end
    object VENDASTRANSP_2: TIntegerField
      FieldName = 'TRANSP_2'
    end
    object VENDASLOJA: TStringField
      FieldName = 'LOJA'
      Size = 6
    end
    object VENDASVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object VENDASFORMAS_PGTO: TStringField
      FieldName = 'FORMAS_PGTO'
      Size = 30
    end
    object VENDASQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Size = 10
    end
    object VENDASESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 25
    end
    object VENDASMARCA: TStringField
      FieldName = 'MARCA'
      Size = 25
    end
    object VENDASPBRUTO: TStringField
      FieldName = 'PBRUTO'
      Size = 15
    end
    object VENDASPLIQUIDO: TStringField
      FieldName = 'PLIQUIDO'
      Size = 15
    end
    object VENDASFRETE_1: TStringField
      FieldName = 'FRETE_1'
      FixedChar = True
      Size = 1
    end
    object VENDASFRETE_2: TStringField
      FieldName = 'FRETE_2'
      FixedChar = True
      Size = 2
    end
    object VENDASANEXA_ICMS_SUB: TSmallintField
      FieldName = 'ANEXA_ICMS_SUB'
    end
    object VENDASCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object VENDASDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object VENDASACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object VENDASICMS_FRETE: TFloatField
      FieldName = 'ICMS_FRETE'
    end
    object VENDASBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object VENDASBASE_ICMS_SUB: TFloatField
      FieldName = 'BASE_ICMS_SUB'
    end
    object VENDASBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object VENDASTOT_ICMS: TFloatField
      FieldName = 'TOT_ICMS'
    end
    object VENDASTOT_ICMS_SUB: TFloatField
      FieldName = 'TOT_ICMS_SUB'
    end
    object VENDASTOT_IPI: TFloatField
      FieldName = 'TOT_IPI'
    end
    object VENDASTOT_SERVICOS: TFloatField
      FieldName = 'TOT_SERVICOS'
    end
    object VENDASTOT_ISS: TFloatField
      FieldName = 'TOT_ISS'
    end
    object VENDASTOT_PRODUTOS: TFloatField
      FieldName = 'TOT_PRODUTOS'
    end
    object VENDASTOT_IRRF: TFloatField
      FieldName = 'TOT_IRRF'
    end
    object VENDASTOT_PIS: TFloatField
      FieldName = 'TOT_PIS'
    end
    object VENDASTOT_COFINS: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object VENDASTOT_CS: TFloatField
      FieldName = 'TOT_CS'
    end
    object VENDASTOT_SER_BRUTO: TFloatField
      FieldName = 'TOT_SER_BRUTO'
    end
    object VENDASTOT_SEGURO: TFloatField
      FieldName = 'TOT_SEGURO'
    end
    object VENDASTOT_OUTRAS: TFloatField
      FieldName = 'TOT_OUTRAS'
    end
    object VENDASTOT_FRETE: TFloatField
      FieldName = 'TOT_FRETE'
    end
    object VENDASCANCELADO: TSmallintField
      FieldName = 'CANCELADO'
    end
    object VENDASTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object VENDASOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object VENDASSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object VENDASCONVENIO: TFloatField
      FieldName = 'CONVENIO'
    end
    object VENDASNSU: TIntegerField
      FieldName = 'NSU'
    end
    object VENDASDATA_IMPRESSAO: TDateField
      FieldName = 'DATA_IMPRESSAO'
    end
    object VENDASHORA_IMPRESSAO: TTimeField
      FieldName = 'HORA_IMPRESSAO'
    end
    object VENDASAVISTA: TSmallintField
      FieldName = 'AVISTA'
    end
    object VENDASTOT_ICMS_FRETE: TFloatField
      FieldName = 'TOT_ICMS_FRETE'
    end
    object VENDASTOT_CONVENIO: TFloatField
      FieldName = 'TOT_CONVENIO'
    end
    object VENDASTAB_PRECO: TIntegerField
      FieldName = 'TAB_PRECO'
    end
    object VENDASANEXA_ST: TSmallintField
      FieldName = 'ANEXA_ST'
    end
    object VENDASTOTALIZA_CFOP: TStringField
      FieldName = 'TOTALIZA_CFOP'
      Size = 150
    end
    object VENDASCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object VENDASCUSTO: TIntegerField
      FieldName = 'CUSTO'
    end
    object VENDASSERIAIS_PROD: TMemoField
      FieldName = 'SERIAIS_PROD'
      BlobType = ftMemo
    end
    object VENDASNFE_FLDE: TStringField
      FieldName = 'NFE_FLDE'
      FixedChar = True
      Size = 1
    end
    object VENDASNFE_STATUS: TStringField
      FieldName = 'NFE_STATUS'
      FixedChar = True
      Size = 1
    end
    object VENDASTOT_IMPORTACAO: TFloatField
      FieldName = 'TOT_IMPORTACAO'
    end
    object VENDASNF_REFERENCIADA: TIntegerField
      FieldName = 'NF_REFERENCIADA'
    end
    object VENDASTOT_PIS_SUB: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object VENDASTOT_COFINS_SUB: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object VENDASANEXA_ICMS_FRETE: TSmallintField
      FieldName = 'ANEXA_ICMS_FRETE'
    end
    object VENDASPLACA_TRANSP1: TStringField
      FieldName = 'PLACA_TRANSP1'
      Size = 8
    end
    object VENDASIMPORTADOS: TStringField
      FieldName = 'IMPORTADOS'
      Size = 255
    end
    object VENDASPLACA_TRANSP2: TStringField
      FieldName = 'PLACA_TRANSP2'
      Size = 8
    end
    object VENDASANEXA_SEGURO: TSmallintField
      FieldName = 'ANEXA_SEGURO'
    end
    object VENDASANEXA_OUTRAS: TSmallintField
      FieldName = 'ANEXA_OUTRAS'
    end
    object VENDASANTT_TRANSP1: TStringField
      FieldName = 'ANTT_TRANSP1'
    end
    object VENDASANTT_TRANSP2: TStringField
      FieldName = 'ANTT_TRANSP2'
    end
    object VENDASUFEMBARQ: TStringField
      FieldName = 'UFEMBARQ'
      FixedChar = True
      Size = 2
    end
    object VENDASXLOCEMBARQ: TStringField
      FieldName = 'XLOCEMBARQ'
      Size = 60
    end
    object VENDASTOT_ICMS_OUTRAS_DESP: TFloatField
      FieldName = 'TOT_ICMS_OUTRAS_DESP'
    end
    object VENDASTOT_ICMS_SEGURO: TFloatField
      FieldName = 'TOT_ICMS_SEGURO'
    end
    object VENDASANEXA_FRETE: TSmallintField
      FieldName = 'ANEXA_FRETE'
    end
    object VENDASIE_SUBSTITUTO: TStringField
      FieldName = 'IE_SUBSTITUTO'
      Size = 19
    end
    object VENDASPIS_VALOR_BC: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object VENDASPIS_VALOR_BC_SUB: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object VENDASCOFINS_VALOR_BC: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object VENDASCOFINS_VALOR_BC_SUB: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object VENDASMOTIVO_D2_POSTO: TSmallintField
      FieldName = 'MOTIVO_D2_POSTO'
    end
    object VENDASAAMMNFP: TDateField
      FieldName = 'AAMMNFP'
    end
    object VENDASNNFNFP: TStringField
      FieldName = 'NNFNFP'
      Size = 9
    end
    object VENDASMODNFP: TStringField
      FieldName = 'MODNFP'
      FixedChar = True
      Size = 2
    end
    object VENDASSERIENFP: TStringField
      FieldName = 'SERIENFP'
      FixedChar = True
      Size = 3
    end
    object VENDASNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 60
    end
    object VENDASVTOT_TRIB: TFloatField
      FieldName = 'VTOT_TRIB'
    end
    object VENDASESPECIE_PAGAMENTO: TStringField
      FieldName = 'ESPECIE_PAGAMENTO'
    end
    object VENDASIND_PRES: TSmallintField
      FieldName = 'IND_PRES'
    end
    object VENDASPAF: TSmallintField
      FieldName = 'PAF'
    end
    object VENDASREFNFE: TStringField
      FieldName = 'REFNFE'
      FixedChar = True
      Size = 44
    end
    object VENDASDescrio: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = CLIENTESVENDAS
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CLIENTE'
      Size = 50
      Lookup = True
    end
    object VENDASID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object CLIENTESVENDAS: TUniTable
    TableName = 'CLIENTES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 192
    Top = 464
  end
  object UniDataSource23: TUniDataSource
    DataSet = ITEVENDAS
    Left = 16
    Top = 536
  end
  object ITEVENDAS: TUniQuery
    UpdatingTable = 'ITEVENDAS'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITEVENDAS')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_ITEVENDAS')
    Left = 120
    Top = 536
    object ITEVENDASNOTA: TStringField
      FieldName = 'NOTA'
      Size = 6
    end
    object ITEVENDASMODELO: TStringField
      FieldName = 'MODELO'
      FixedChar = True
      Size = 2
    end
    object ITEVENDASSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 3
    end
    object ITEVENDASSUBSERIE: TStringField
      FieldName = 'SUBSERIE'
      FixedChar = True
      Size = 2
    end
    object ITEVENDASORIGEM: TStringField
      FieldName = 'ORIGEM'
      FixedChar = True
      Size = 2
    end
    object ITEVENDASEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object ITEVENDASITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object ITEVENDASCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object ITEVENDASBARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object ITEVENDASCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object ITEVENDASST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 4
    end
    object ITEVENDASCF: TStringField
      FieldName = 'CF'
      Size = 10
    end
    object ITEVENDASUND: TStringField
      FieldName = 'UND'
      FixedChar = True
      Size = 3
    end
    object ITEVENDASQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,##0.00'
    end
    object ITEVENDASGRADE_X: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object ITEVENDASGRADE_Y: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object ITEVENDASGRADE_QUA: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object ITEVENDASGRADE_VENDIDA: TMemoField
      FieldName = 'GRADE_VENDIDA'
      BlobType = ftMemo
    end
    object ITEVENDASPRECO: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = '###,##0.00'
    end
    object ITEVENDASDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object ITEVENDASACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object ITEVENDASTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object ITEVENDASIPI: TFloatField
      FieldName = 'IPI'
    end
    object ITEVENDASTOT_IPI: TFloatField
      FieldName = 'TOT_IPI'
    end
    object ITEVENDASBASE_ICMS_SUB: TFloatField
      FieldName = 'BASE_ICMS_SUB'
    end
    object ITEVENDASTOT_ICMS_SUB: TFloatField
      FieldName = 'TOT_ICMS_SUB'
    end
    object ITEVENDASBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object ITEVENDASICMS: TFloatField
      FieldName = 'ICMS'
    end
    object ITEVENDASTOT_ICMS: TFloatField
      FieldName = 'TOT_ICMS'
    end
    object ITEVENDASSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 40
    end
    object ITEVENDASOUTRAS_DESP_ACRE: TFloatField
      FieldName = 'OUTRAS_DESP_ACRE'
    end
    object ITEVENDASCANCELADO: TSmallintField
      FieldName = 'CANCELADO'
    end
    object ITEVENDASSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object ITEVENDASBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object ITEVENDASICMS_RED: TFloatField
      FieldName = 'ICMS_RED'
    end
    object ITEVENDASICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object ITEVENDASPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object ITEVENDASLOTE: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object ITEVENDASPIS_ST: TStringField
      FieldName = 'PIS_ST'
      FixedChar = True
      Size = 2
    end
    object ITEVENDASPIS_BASE: TFloatField
      FieldName = 'PIS_BASE'
    end
    object ITEVENDASPIS_ALIQ: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object ITEVENDASTOT_PIS: TFloatField
      FieldName = 'TOT_PIS'
    end
    object ITEVENDASPIS_SUB_BASE: TFloatField
      FieldName = 'PIS_SUB_BASE'
    end
    object ITEVENDASPIS_SUB_ALIQ: TFloatField
      FieldName = 'PIS_SUB_ALIQ'
    end
    object ITEVENDASTOT_PIS_SUB: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object ITEVENDASCOFINS_ST: TStringField
      FieldName = 'COFINS_ST'
      FixedChar = True
      Size = 2
    end
    object ITEVENDASCOFINS_BASE: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object ITEVENDASCOFINS_ALIQ: TFloatField
      FieldName = 'COFINS_ALIQ'
    end
    object ITEVENDASTOT_COFINS: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object ITEVENDASCOFINS_SUB_BASE: TFloatField
      FieldName = 'COFINS_SUB_BASE'
    end
    object ITEVENDASCOFINS_SUB_ALIQ: TFloatField
      FieldName = 'COFINS_SUB_ALIQ'
    end
    object ITEVENDASTOT_COFINS_SUB: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object ITEVENDASOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object ITEVENDASGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object ITEVENDASTABELA_PRECO: TStringField
      FieldName = 'TABELA_PRECO'
      Size = 30
    end
    object ITEVENDASTOT_DESCONTO: TFloatField
      FieldName = 'TOT_DESCONTO'
    end
    object ITEVENDASTOT_ACRESCIMO: TFloatField
      FieldName = 'TOT_ACRESCIMO'
    end
    object ITEVENDASFIXOU_IPI: TSmallintField
      FieldName = 'FIXOU_IPI'
    end
    object ITEVENDASFIXOU_ICMS: TSmallintField
      FieldName = 'FIXOU_ICMS'
    end
    object ITEVENDASPIS_VALOR_BC: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object ITEVENDASPIS_VALOR_BC_SUB: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object ITEVENDASCOFINS_VALOR_BC: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object ITEVENDASCOFINS_VALOR_BC_SUB: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object ITEVENDASCSOSN: TStringField
      FieldName = 'CSOSN'
      FixedChar = True
      Size = 4
    end
    object ITEVENDASTOT_ICMS_ABATIDO: TFloatField
      FieldName = 'TOT_ICMS_ABATIDO'
    end
    object ITEVENDASIMPORTADO_POSTO: TIntegerField
      FieldName = 'IMPORTADO_POSTO'
    end
    object ITEVENDASTOT_FRETE: TFloatField
      FieldName = 'TOT_FRETE'
    end
    object ITEVENDASTOT_SEGURO: TFloatField
      FieldName = 'TOT_SEGURO'
    end
    object ITEVENDASTOT_OUTRAS: TFloatField
      FieldName = 'TOT_OUTRAS'
    end
    object ITEVENDASXPED: TStringField
      FieldName = 'XPED'
      Size = 15
    end
    object ITEVENDASNITEMPED: TIntegerField
      FieldName = 'NITEMPED'
    end
    object ITEVENDASALIQI: TFloatField
      FieldName = 'ALIQI'
    end
    object ITEVENDASTOT_TRIB: TFloatField
      FieldName = 'TOT_TRIB'
    end
    object ITEVENDASALIQ_NCM: TFloatField
      FieldName = 'ALIQ_NCM'
    end
    object ITEVENDASFCI: TStringField
      FieldName = 'FCI'
      Size = 36
    end
    object ITEVENDASPERCENTUAL_GAS_NATURAL: TFloatField
      FieldName = 'PERCENTUAL_GAS_NATURAL'
    end
    object ITEVENDASPERCENTUAL_DIFERIMENTO: TFloatField
      FieldName = 'PERCENTUAL_DIFERIMENTO'
    end
    object ITEVENDASVALOR_DIFERIMENTO: TFloatField
      FieldName = 'VALOR_DIFERIMENTO'
    end
    object ITEVENDASDescrio: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = ESTOQUE_vendas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODIGO'
      Size = 35
      Lookup = True
    end
    object ITEVENDASID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object ITEVENDAS2: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITEVENDAS')
    Left = 208
    Top = 536
  end
  object VENDAS2: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM VENDAS ORDER BY EMISSAO desc')
    Left = 376
    Top = 536
    object VENDAS2NOTA: TStringField
      FieldName = 'NOTA'
      Size = 6
    end
    object VENDAS2MODELO: TStringField
      FieldName = 'MODELO'
      FixedChar = True
      Size = 2
    end
    object VENDAS2SERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 3
    end
    object VENDAS2SUBSERIE: TStringField
      FieldName = 'SUBSERIE'
      FixedChar = True
      Size = 2
    end
    object VENDAS2ORIGEM: TStringField
      FieldName = 'ORIGEM'
      FixedChar = True
      Size = 2
    end
    object VENDAS2EMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object VENDAS2HORA: TTimeField
      FieldName = 'HORA'
    end
    object VENDAS2ENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
    object VENDAS2SAIDA: TStringField
      FieldName = 'SAIDA'
      FixedChar = True
      Size = 1
    end
    object VENDAS2CFOPS: TStringField
      FieldName = 'CFOPS'
      Size = 40
    end
    object VENDAS2NATUREZA: TStringField
      FieldName = 'NATUREZA'
      Size = 50
    end
    object VENDAS2CLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object VENDAS2IMPORTACOES: TMemoField
      FieldName = 'IMPORTACOES'
      BlobType = ftMemo
    end
    object VENDAS2DATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
    end
    object VENDAS2HORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
    end
    object VENDAS2OBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object VENDAS2ADICIONAIS: TMemoField
      FieldName = 'ADICIONAIS'
      BlobType = ftMemo
    end
    object VENDAS2TRANSP_1: TIntegerField
      FieldName = 'TRANSP_1'
    end
    object VENDAS2TRANSP_2: TIntegerField
      FieldName = 'TRANSP_2'
    end
    object VENDAS2LOJA: TStringField
      FieldName = 'LOJA'
      Size = 6
    end
    object VENDAS2VENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object VENDAS2FORMAS_PGTO: TStringField
      FieldName = 'FORMAS_PGTO'
      Size = 30
    end
    object VENDAS2QUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Size = 10
    end
    object VENDAS2ESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 25
    end
    object VENDAS2MARCA: TStringField
      FieldName = 'MARCA'
      Size = 25
    end
    object VENDAS2PBRUTO: TStringField
      FieldName = 'PBRUTO'
      Size = 15
    end
    object VENDAS2PLIQUIDO: TStringField
      FieldName = 'PLIQUIDO'
      Size = 15
    end
    object VENDAS2FRETE_1: TStringField
      FieldName = 'FRETE_1'
      FixedChar = True
      Size = 1
    end
    object VENDAS2FRETE_2: TStringField
      FieldName = 'FRETE_2'
      FixedChar = True
      Size = 2
    end
    object VENDAS2ANEXA_ICMS_SUB: TSmallintField
      FieldName = 'ANEXA_ICMS_SUB'
    end
    object VENDAS2COMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object VENDAS2DESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object VENDAS2ACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object VENDAS2ICMS_FRETE: TFloatField
      FieldName = 'ICMS_FRETE'
    end
    object VENDAS2BASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object VENDAS2BASE_ICMS_SUB: TFloatField
      FieldName = 'BASE_ICMS_SUB'
    end
    object VENDAS2BASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object VENDAS2TOT_ICMS: TFloatField
      FieldName = 'TOT_ICMS'
    end
    object VENDAS2TOT_ICMS_SUB: TFloatField
      FieldName = 'TOT_ICMS_SUB'
    end
    object VENDAS2TOT_IPI: TFloatField
      FieldName = 'TOT_IPI'
    end
    object VENDAS2TOT_SERVICOS: TFloatField
      FieldName = 'TOT_SERVICOS'
    end
    object VENDAS2TOT_ISS: TFloatField
      FieldName = 'TOT_ISS'
    end
    object VENDAS2TOT_PRODUTOS: TFloatField
      FieldName = 'TOT_PRODUTOS'
    end
    object VENDAS2TOT_IRRF: TFloatField
      FieldName = 'TOT_IRRF'
    end
    object VENDAS2TOT_PIS: TFloatField
      FieldName = 'TOT_PIS'
    end
    object VENDAS2TOT_COFINS: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object VENDAS2TOT_CS: TFloatField
      FieldName = 'TOT_CS'
    end
    object VENDAS2TOT_SER_BRUTO: TFloatField
      FieldName = 'TOT_SER_BRUTO'
    end
    object VENDAS2TOT_SEGURO: TFloatField
      FieldName = 'TOT_SEGURO'
    end
    object VENDAS2TOT_OUTRAS: TFloatField
      FieldName = 'TOT_OUTRAS'
    end
    object VENDAS2TOT_FRETE: TFloatField
      FieldName = 'TOT_FRETE'
    end
    object VENDAS2CANCELADO: TSmallintField
      FieldName = 'CANCELADO'
    end
    object VENDAS2TOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object VENDAS2OPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object VENDAS2SEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object VENDAS2CONVENIO: TFloatField
      FieldName = 'CONVENIO'
    end
    object VENDAS2NSU: TIntegerField
      FieldName = 'NSU'
    end
    object VENDAS2DATA_IMPRESSAO: TDateField
      FieldName = 'DATA_IMPRESSAO'
    end
    object VENDAS2HORA_IMPRESSAO: TTimeField
      FieldName = 'HORA_IMPRESSAO'
    end
    object VENDAS2AVISTA: TSmallintField
      FieldName = 'AVISTA'
    end
    object VENDAS2TOT_ICMS_FRETE: TFloatField
      FieldName = 'TOT_ICMS_FRETE'
    end
    object VENDAS2TOT_CONVENIO: TFloatField
      FieldName = 'TOT_CONVENIO'
    end
    object VENDAS2TAB_PRECO: TIntegerField
      FieldName = 'TAB_PRECO'
    end
    object VENDAS2ANEXA_ST: TSmallintField
      FieldName = 'ANEXA_ST'
    end
    object VENDAS2TOTALIZA_CFOP: TStringField
      FieldName = 'TOTALIZA_CFOP'
      Size = 150
    end
    object VENDAS2CONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object VENDAS2CUSTO: TIntegerField
      FieldName = 'CUSTO'
    end
    object VENDAS2SERIAIS_PROD: TMemoField
      FieldName = 'SERIAIS_PROD'
      BlobType = ftMemo
    end
    object VENDAS2NFE_FLDE: TStringField
      FieldName = 'NFE_FLDE'
      FixedChar = True
      Size = 1
    end
    object VENDAS2NFE_STATUS: TStringField
      FieldName = 'NFE_STATUS'
      FixedChar = True
      Size = 1
    end
    object VENDAS2TOT_IMPORTACAO: TFloatField
      FieldName = 'TOT_IMPORTACAO'
    end
    object VENDAS2NF_REFERENCIADA: TIntegerField
      FieldName = 'NF_REFERENCIADA'
    end
    object VENDAS2TOT_PIS_SUB: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object VENDAS2TOT_COFINS_SUB: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object VENDAS2ANEXA_ICMS_FRETE: TSmallintField
      FieldName = 'ANEXA_ICMS_FRETE'
    end
    object VENDAS2PLACA_TRANSP1: TStringField
      FieldName = 'PLACA_TRANSP1'
      Size = 8
    end
    object VENDAS2IMPORTADOS: TStringField
      FieldName = 'IMPORTADOS'
      Size = 255
    end
    object VENDAS2PLACA_TRANSP2: TStringField
      FieldName = 'PLACA_TRANSP2'
      Size = 8
    end
    object VENDAS2ANEXA_SEGURO: TSmallintField
      FieldName = 'ANEXA_SEGURO'
    end
    object VENDAS2ANEXA_OUTRAS: TSmallintField
      FieldName = 'ANEXA_OUTRAS'
    end
    object VENDAS2ANTT_TRANSP1: TStringField
      FieldName = 'ANTT_TRANSP1'
    end
    object VENDAS2ANTT_TRANSP2: TStringField
      FieldName = 'ANTT_TRANSP2'
    end
    object VENDAS2UFEMBARQ: TStringField
      FieldName = 'UFEMBARQ'
      FixedChar = True
      Size = 2
    end
    object VENDAS2XLOCEMBARQ: TStringField
      FieldName = 'XLOCEMBARQ'
      Size = 60
    end
    object VENDAS2TOT_ICMS_OUTRAS_DESP: TFloatField
      FieldName = 'TOT_ICMS_OUTRAS_DESP'
    end
    object VENDAS2TOT_ICMS_SEGURO: TFloatField
      FieldName = 'TOT_ICMS_SEGURO'
    end
    object VENDAS2ANEXA_FRETE: TSmallintField
      FieldName = 'ANEXA_FRETE'
    end
    object VENDAS2IE_SUBSTITUTO: TStringField
      FieldName = 'IE_SUBSTITUTO'
      Size = 19
    end
    object VENDAS2PIS_VALOR_BC: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object VENDAS2PIS_VALOR_BC_SUB: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object VENDAS2COFINS_VALOR_BC: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object VENDAS2COFINS_VALOR_BC_SUB: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object VENDAS2MOTIVO_D2_POSTO: TSmallintField
      FieldName = 'MOTIVO_D2_POSTO'
    end
    object VENDAS2AAMMNFP: TDateField
      FieldName = 'AAMMNFP'
    end
    object VENDAS2NNFNFP: TStringField
      FieldName = 'NNFNFP'
      Size = 9
    end
    object VENDAS2MODNFP: TStringField
      FieldName = 'MODNFP'
      FixedChar = True
      Size = 2
    end
    object VENDAS2SERIENFP: TStringField
      FieldName = 'SERIENFP'
      FixedChar = True
      Size = 3
    end
    object VENDAS2NUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 60
    end
    object VENDAS2VTOT_TRIB: TFloatField
      FieldName = 'VTOT_TRIB'
    end
    object VENDAS2ESPECIE_PAGAMENTO: TStringField
      FieldName = 'ESPECIE_PAGAMENTO'
    end
    object VENDAS2IND_PRES: TSmallintField
      FieldName = 'IND_PRES'
    end
  end
  object ESTOQUE_vendas: TUniTable
    TableName = 'produtos'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 464
    Top = 537
    object IntegerField16: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField24: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object StringField25: TStringField
      FieldName = 'PADRAO_BARRAS'
      Size = 15
    end
    object StringField26: TStringField
      FieldName = 'FONTE_BARRAS'
      Size = 15
    end
    object StringField27: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object StringField28: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object StringField29: TStringField
      FieldName = 'UND_V'
      FixedChar = True
      Size = 3
    end
    object StringField30: TStringField
      FieldName = 'UND_C'
      FixedChar = True
      Size = 3
    end
    object StringField31: TStringField
      FieldName = 'FATOR'
      Size = 10
    end
    object IntegerField17: TIntegerField
      FieldName = 'GRUPO'
    end
    object SmallintField9: TSmallintField
      FieldName = 'USA_GRADE'
    end
    object MemoField6: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object MemoField7: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object MemoField8: TMemoField
      FieldName = 'GRADE_CON'
      BlobType = ftMemo
    end
    object MemoField9: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object MemoField10: TMemoField
      FieldName = 'GRADE_PED'
      BlobType = ftMemo
    end
    object MemoField11: TMemoField
      FieldName = 'GRADE_OS'
      BlobType = ftMemo
    end
    object FloatField69: TFloatField
      FieldName = 'QTD'
    end
    object FloatField70: TFloatField
      FieldName = 'QTD_CON'
    end
    object FloatField71: TFloatField
      FieldName = 'QTD_PED'
    end
    object FloatField72: TFloatField
      FieldName = 'QTD_OS'
    end
    object FloatField73: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object FloatField74: TFloatField
      FieldName = 'PRECO_CONS'
    end
    object FloatField75: TFloatField
      FieldName = 'PRECO_REV'
    end
    object FloatField76: TFloatField
      FieldName = 'PRECO_PZ_CONS'
    end
    object FloatField77: TFloatField
      FieldName = 'PRECO_PZ_REV'
    end
    object SmallintField10: TSmallintField
      FieldName = 'USA_INDICE'
      Required = True
    end
    object SmallintField11: TSmallintField
      FieldName = 'ATIVO'
      Required = True
    end
    object SmallintField12: TSmallintField
      FieldName = 'SELECIONA'
    end
    object StringField32: TStringField
      FieldName = 'IMAGEM'
      Size = 100
    end
    object MemoField12: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object IntegerField18: TIntegerField
      FieldName = 'QTD_PARCELAS'
    end
    object FloatField78: TFloatField
      FieldName = 'QTD_MINIMO'
    end
    object FloatField79: TFloatField
      FieldName = 'QTD_MAXIMO'
    end
    object IntegerField19: TIntegerField
      FieldName = 'TIPO'
      Required = True
    end
    object SmallintField13: TSmallintField
      FieldName = 'USA_UF'
    end
    object IntegerField20: TIntegerField
      FieldName = 'OPERADOR'
    end
    object StringField33: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object MemoField13: TMemoField
      FieldName = 'GRADE_CMD'
      BlobType = ftMemo
    end
    object FloatField80: TFloatField
      FieldName = 'QTD_CMD'
    end
    object IntegerField21: TIntegerField
      FieldName = 'TABELA_PRECO'
    end
    object SmallintField14: TSmallintField
      FieldName = 'USA_SERIAL'
    end
    object IntegerField22: TIntegerField
      FieldName = 'DIAS_VALIDADE'
    end
    object MemoField14: TMemoField
      FieldName = 'GRADE_PED_COMPRA'
      BlobType = ftMemo
    end
    object FloatField81: TFloatField
      FieldName = 'QTD_PED_COMPRA'
    end
  end
  object ITEVENDAS3: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITEVENDAS')
    Left = 344
    Top = 72
  end
  object UniDataSource24: TUniDataSource
    DataSet = FORNECEDORESx
    Left = 375
    Top = 6
  end
  object FORNECEDORESx: TUniTable
    TableName = 'FORNECEDORES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 279
    Top = 6
  end
  object CLIENTESxy: TUniTable
    TableName = 'CLIENTES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 1176
    Top = 656
  end
  object Source_CLIENTESx: TUniDataSource
    DataSet = CLIENTESx
    Left = 359
    Top = 462
  end
  object ITECOMPRAS4: TUniQuery
    UpdatingTable = 'ITECOMPRAS'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      
        'SELECT * FROM ITECOMPRAS WHERE NOTA='#39'000011526'#39' order by emissao' +
        ' desc')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_ITECOMPRAS')
    Left = 192
    Top = 148
    object ITECOMPRAS4FORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Required = True
    end
    object ITECOMPRAS4ITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object ITECOMPRAS4CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object ITECOMPRAS4Descrição: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = ESTOQUExxx
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Size = 45
      Lookup = True
    end
    object ITECOMPRAS4BARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object ITECOMPRAS4CFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object ITECOMPRAS4ST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 4
    end
    object ITECOMPRAS4CF: TStringField
      FieldName = 'CF'
      Size = 10
    end
    object ITECOMPRAS4QTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4GRADE_X: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object ITECOMPRAS4GRADE_Y: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object ITECOMPRAS4GRADE_QUA: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object ITECOMPRAS4PRECO: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4ICMS: TFloatField
      FieldName = 'ICMS'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4IPI: TFloatField
      FieldName = 'IPI'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4BASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4TOT_IPI: TFloatField
      FieldName = 'TOT_IPI'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4ACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4DESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4OUTRAS_DESP_ACRE: TFloatField
      FieldName = 'OUTRAS_DESP_ACRE'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4FIXOU: TSmallintField
      FieldName = 'FIXOU'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4BASE_ICMS_SUB: TFloatField
      FieldName = 'BASE_ICMS_SUB'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4TOT_ICMS_SUB: TFloatField
      FieldName = 'TOT_ICMS_SUB'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4LOTE: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object ITECOMPRAS4DATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object ITECOMPRAS4DATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object ITECOMPRAS4REDUCAO_ICMS: TFloatField
      FieldName = 'REDUCAO_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4FIXOU_IPI: TSmallintField
      FieldName = 'FIXOU_IPI'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4FIXOU_ICMS: TSmallintField
      FieldName = 'FIXOU_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4TOT_ICMS: TFloatField
      FieldName = 'TOT_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4SAIDA: TDateField
      FieldName = 'SAIDA'
    end
    object ITECOMPRAS4PIS_ST: TStringField
      FieldName = 'PIS_ST'
      FixedChar = True
      Size = 2
    end
    object ITECOMPRAS4PIS_ALIQ: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object ITECOMPRAS4PIS_BASE: TFloatField
      FieldName = 'PIS_BASE'
    end
    object ITECOMPRAS4PIS_VALOR_BC: TFloatField
      FieldName = 'PIS_VALOR_BC'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4TOT_PIS: TFloatField
      FieldName = 'TOT_PIS'
      DisplayFormat = '###,##0.00'
    end
    object ITECOMPRAS4PIS_SUB_BASE: TFloatField
      FieldName = 'PIS_SUB_BASE'
    end
    object ITECOMPRAS4PIS_SUB_ALIQ: TFloatField
      FieldName = 'PIS_SUB_ALIQ'
    end
    object ITECOMPRAS4TOT_PIS_SUB: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object ITECOMPRAS4PIS_VALOR_BC_SUB: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object ITECOMPRAS4COFINS_ST: TStringField
      FieldName = 'COFINS_ST'
      FixedChar = True
      Size = 2
    end
    object ITECOMPRAS4COFINS_ALIQ: TFloatField
      FieldName = 'COFINS_ALIQ'
    end
    object ITECOMPRAS4COFINS_BASE: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object ITECOMPRAS4COFINS_VALOR_BC: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object ITECOMPRAS4TOT_COFINS: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object ITECOMPRAS4COFINS_SUB_BASE: TFloatField
      FieldName = 'COFINS_SUB_BASE'
    end
    object ITECOMPRAS4COFINS_SUB_ALIQ: TFloatField
      FieldName = 'COFINS_SUB_ALIQ'
    end
    object ITECOMPRAS4TOT_COFINS_SUB: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object ITECOMPRAS4COFINS_VALOR_BC_SUB: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object ITECOMPRAS4TOT_ISS: TFloatField
      FieldName = 'TOT_ISS'
    end
    object ITECOMPRAS4TOT_DESCONTO: TFloatField
      FieldName = 'TOT_DESCONTO'
    end
    object ITECOMPRAS4TOT_ACRESCIMO: TFloatField
      FieldName = 'TOT_ACRESCIMO'
    end
    object ITECOMPRAS4CST_IPI: TStringField
      FieldName = 'CST_IPI'
      FixedChar = True
      Size = 2
    end
    object ITECOMPRAS4PRECO_MAXIMO_CONSUMIDOR: TFloatField
      FieldName = 'PRECO_MAXIMO_CONSUMIDOR'
    end
    object ITECOMPRAS4CALC_PIS_COFINS: TSmallintField
      FieldName = 'CALC_PIS_COFINS'
    end
    object ITECOMPRAS4BASE_ICMS_SUB_RET: TFloatField
      FieldName = 'BASE_ICMS_SUB_RET'
    end
    object ITECOMPRAS4TOT_ICMS_SUB_RET: TFloatField
      FieldName = 'TOT_ICMS_SUB_RET'
    end
    object ITECOMPRAS4CSOSN: TStringField
      FieldName = 'CSOSN'
      FixedChar = True
      Size = 4
    end
    object ITECOMPRAS4DesGrade: TStringField
      FieldKind = fkLookup
      FieldName = 'DesGrade'
      LookupDataSet = GRADE
      LookupKeyFields = 'BARRAS'
      LookupResultField = 'NOME'
      KeyFields = 'BARRAS'
      Lookup = True
    end
    object ITECOMPRAS4CLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object ITECOMPRAS4NOTA: TStringField
      FieldName = 'NOTA'
      Size = 9
    end
    object ITECOMPRAS4EMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object ITECOMPRAS4ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object ITEVENDAS4: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITEVENDAS')
    CachedUpdates = True
    Left = 288
    Top = 536
  end
  object UniDataSource26: TUniDataSource
    DataSet = PEDIDOS
    Left = 23
    Top = 606
  end
  object PEDIDOS: TUniQuery
    UpdatingTable = 'PEDIDOS'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PEDIDOS ORDER BY EMISSAO desc')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_PEDIDOS')
    Left = 103
    Top = 606
    object StringField34: TStringField
      FieldName = 'NOTA'
      Size = 9
    end
    object StringField35: TStringField
      FieldName = 'MODELO'
      FixedChar = True
      Size = 2
    end
    object StringField36: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 3
    end
    object StringField37: TStringField
      FieldName = 'SUBSERIE'
      FixedChar = True
      Size = 2
    end
    object DateField8: TDateField
      FieldName = 'EMISSAO'
    end
    object IntegerField23: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object TimeField2: TTimeField
      FieldName = 'HORA'
    end
    object StringField38: TStringField
      FieldName = 'CFOPS'
      Size = 40
    end
    object MemoField15: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object StringField39: TStringField
      FieldName = 'NATUREZA'
      Size = 50
    end
    object SmallintField15: TSmallintField
      FieldName = 'COMERCIALIZACAO'
    end
    object FloatField82: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object FloatField83: TFloatField
      FieldName = 'TOT_ICMS'
    end
    object FloatField84: TFloatField
      FieldName = 'BASE_ICMS_SUB'
    end
    object FloatField85: TFloatField
      FieldName = 'TOT_ICMS_SUB'
    end
    object FloatField86: TFloatField
      FieldName = 'ICMS_FRETE'
    end
    object FloatField87: TFloatField
      FieldName = 'TOT_ICMS_FRETE'
    end
    object FloatField88: TFloatField
      FieldName = 'TOT_PRODUTOS'
    end
    object FloatField89: TFloatField
      FieldName = 'TOT_FRETE'
    end
    object FloatField90: TFloatField
      FieldName = 'TOT_SEGURO'
    end
    object FloatField91: TFloatField
      FieldName = 'TOT_OUTRAS'
    end
    object FloatField92: TFloatField
      FieldName = 'DESCONTO'
    end
    object FloatField93: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object FloatField94: TFloatField
      FieldName = 'TOT_IPI'
    end
    object FloatField95: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object IntegerField24: TIntegerField
      FieldName = 'TRANSP_1'
    end
    object IntegerField25: TIntegerField
      FieldName = 'TRANSP_2'
    end
    object StringField40: TStringField
      FieldName = 'FRETE_1'
      FixedChar = True
      Size = 1
    end
    object StringField41: TStringField
      FieldName = 'FRETE_2'
      FixedChar = True
      Size = 2
    end
    object IntegerField26: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField31: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object IntegerField32: TIntegerField
      FieldName = 'TABELA_PRECO'
    end
    object SmallintField16: TSmallintField
      FieldName = 'ANEXA_ST'
    end
    object IntegerField33: TIntegerField
      FieldName = 'CONTA'
    end
    object IntegerField34: TIntegerField
      FieldName = 'CUSTO'
    end
    object StringField42: TStringField
      FieldName = 'IMPORTADOS'
      Size = 255
    end
    object FloatField96: TFloatField
      FieldName = 'TOT_PIS'
    end
    object FloatField97: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object FloatField98: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object FloatField99: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object DateField9: TDateField
      FieldName = 'SAIDA'
    end
    object FloatField100: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object FloatField101: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object FloatField102: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object FloatField103: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object SmallintField17: TSmallintField
      FieldName = 'SOMENTE_SERVICO'
    end
    object FloatField104: TFloatField
      FieldName = 'TOT_ISS'
    end
    object SmallintField18: TSmallintField
      FieldName = 'IMPORTACAO'
    end
    object StringField43: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 44
    end
    object StringField54: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = FORNECEDORESP
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FORNECEDOR'
      Size = 50
      Lookup = True
    end
    object PEDIDOSCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object PEDIDOSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object FORNECEDORESP: TUniTable
    TableName = 'FORNECEDORES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 175
    Top = 606
  end
  object UniDataSource27: TUniDataSource
    DataSet = ITEPEDIDOS
    Left = 16
    Top = 717
  end
  object ITEPEDIDOS: TUniQuery
    UpdatingTable = 'ITEPEDIDOS'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITEPEDIDOS')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_ITEPEDIDOS')
    Left = 104
    Top = 717
    object StringField55: TStringField
      FieldName = 'NOTA'
      Required = True
      Size = 9
    end
    object DateField10: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object IntegerField35: TIntegerField
      FieldName = 'FORNECEDOR'
      Required = True
    end
    object IntegerField36: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object IntegerField37: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField56: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = ESTOQUExxx
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Size = 45
      Lookup = True
    end
    object StringField57: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object IntegerField38: TIntegerField
      FieldName = 'CFOP'
    end
    object StringField58: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 4
    end
    object StringField59: TStringField
      FieldName = 'CF'
      Size = 10
    end
    object FloatField105: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,##0.00'
    end
    object MemoField16: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object MemoField17: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object MemoField21: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object FloatField106: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField107: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object FloatField108: TFloatField
      FieldName = 'ICMS'
      DisplayFormat = '###,##0.00'
    end
    object FloatField109: TFloatField
      FieldName = 'IPI'
      DisplayFormat = '###,##0.00'
    end
    object FloatField110: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object FloatField111: TFloatField
      FieldName = 'TOT_IPI'
      DisplayFormat = '###,##0.00'
    end
    object FloatField112: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField113: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField114: TFloatField
      FieldName = 'OUTRAS_DESP_ACRE'
      DisplayFormat = '###,##0.00'
    end
    object SmallintField23: TSmallintField
      FieldName = 'FIXOU'
      DisplayFormat = '###,##0.00'
    end
    object FloatField115: TFloatField
      FieldName = 'BASE_ICMS_SUB'
      DisplayFormat = '###,##0.00'
    end
    object FloatField116: TFloatField
      FieldName = 'TOT_ICMS_SUB'
      DisplayFormat = '###,##0.00'
    end
    object StringField60: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object DateField11: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object DateField16: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object FloatField117: TFloatField
      FieldName = 'REDUCAO_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object SmallintField24: TSmallintField
      FieldName = 'FIXOU_IPI'
      DisplayFormat = '###,##0.00'
    end
    object SmallintField25: TSmallintField
      FieldName = 'FIXOU_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object FloatField154: TFloatField
      FieldName = 'TOT_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object DateField17: TDateField
      FieldName = 'SAIDA'
    end
    object StringField61: TStringField
      FieldName = 'PIS_ST'
      FixedChar = True
      Size = 2
    end
    object FloatField155: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object FloatField156: TFloatField
      FieldName = 'PIS_BASE'
    end
    object FloatField157: TFloatField
      FieldName = 'PIS_VALOR_BC'
      DisplayFormat = '###,##0.00'
    end
    object FloatField158: TFloatField
      FieldName = 'TOT_PIS'
      DisplayFormat = '###,##0.00'
    end
    object FloatField159: TFloatField
      FieldName = 'PIS_SUB_BASE'
    end
    object FloatField160: TFloatField
      FieldName = 'PIS_SUB_ALIQ'
    end
    object FloatField161: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object FloatField162: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object StringField62: TStringField
      FieldName = 'COFINS_ST'
      FixedChar = True
      Size = 2
    end
    object FloatField163: TFloatField
      FieldName = 'COFINS_ALIQ'
    end
    object FloatField164: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object FloatField165: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object FloatField166: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object FloatField167: TFloatField
      FieldName = 'COFINS_SUB_BASE'
    end
    object FloatField168: TFloatField
      FieldName = 'COFINS_SUB_ALIQ'
    end
    object FloatField169: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object FloatField170: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object FloatField171: TFloatField
      FieldName = 'TOT_ISS'
    end
    object FloatField172: TFloatField
      FieldName = 'TOT_DESCONTO'
    end
    object FloatField173: TFloatField
      FieldName = 'TOT_ACRESCIMO'
    end
    object StringField63: TStringField
      FieldName = 'CST_IPI'
      FixedChar = True
      Size = 2
    end
    object FloatField174: TFloatField
      FieldName = 'PRECO_MAXIMO_CONSUMIDOR'
    end
    object SmallintField26: TSmallintField
      FieldName = 'CALC_PIS_COFINS'
    end
    object FloatField175: TFloatField
      FieldName = 'BASE_ICMS_SUB_RET'
    end
    object FloatField176: TFloatField
      FieldName = 'TOT_ICMS_SUB_RET'
    end
    object ITEPEDIDOSDesGrade: TStringField
      FieldKind = fkLookup
      FieldName = 'DesGrade'
      LookupDataSet = GRADE
      LookupKeyFields = 'BARRAS'
      LookupResultField = 'NOME'
      KeyFields = 'BARRAS'
      Lookup = True
    end
    object ITEPEDIDOSCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object ITEPEDIDOSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ITEPEDIDOSCSOSN: TStringField
      FieldName = 'CSOSN'
      FixedChar = True
      Size = 4
    end
  end
  object ITEPEDIDOS2: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      
        'SELECT * FROM ITEPEDIDOS WHERE NOTA='#39'000011526'#39' order by emissao' +
        ' desc')
    Left = 272
    Top = 717
    object StringField65: TStringField
      FieldName = 'NOTA'
      Required = True
      Size = 9
    end
    object DateField18: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object IntegerField39: TIntegerField
      FieldName = 'FORNECEDOR'
      Required = True
    end
    object IntegerField40: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object IntegerField41: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField66: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = ESTOQUExxx
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Size = 45
      Lookup = True
    end
    object StringField67: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object IntegerField42: TIntegerField
      FieldName = 'CFOP'
    end
    object StringField68: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 4
    end
    object StringField69: TStringField
      FieldName = 'CF'
      Size = 10
    end
    object FloatField177: TFloatField
      FieldName = 'QTD'
    end
    object MemoField22: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object MemoField23: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object MemoField24: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object FloatField178: TFloatField
      FieldName = 'PRECO'
    end
    object FloatField179: TFloatField
      FieldName = 'TOTAL'
    end
    object FloatField180: TFloatField
      FieldName = 'ICMS'
    end
    object FloatField181: TFloatField
      FieldName = 'IPI'
    end
    object FloatField182: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object FloatField183: TFloatField
      FieldName = 'TOT_IPI'
    end
    object FloatField184: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object FloatField185: TFloatField
      FieldName = 'DESCONTO'
    end
    object FloatField186: TFloatField
      FieldName = 'OUTRAS_DESP_ACRE'
    end
    object SmallintField27: TSmallintField
      FieldName = 'FIXOU'
    end
    object FloatField187: TFloatField
      FieldName = 'BASE_ICMS_SUB'
    end
    object FloatField188: TFloatField
      FieldName = 'TOT_ICMS_SUB'
    end
    object StringField70: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object DateField19: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object DateField20: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object FloatField189: TFloatField
      FieldName = 'REDUCAO_ICMS'
    end
    object SmallintField28: TSmallintField
      FieldName = 'FIXOU_IPI'
    end
    object SmallintField29: TSmallintField
      FieldName = 'FIXOU_ICMS'
    end
    object FloatField190: TFloatField
      FieldName = 'TOT_ICMS'
    end
    object DateField21: TDateField
      FieldName = 'SAIDA'
    end
    object StringField71: TStringField
      FieldName = 'PIS_ST'
      FixedChar = True
      Size = 2
    end
    object FloatField191: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object FloatField192: TFloatField
      FieldName = 'PIS_BASE'
    end
    object FloatField193: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object FloatField194: TFloatField
      FieldName = 'TOT_PIS'
    end
    object FloatField195: TFloatField
      FieldName = 'PIS_SUB_BASE'
    end
    object FloatField196: TFloatField
      FieldName = 'PIS_SUB_ALIQ'
    end
    object FloatField197: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object FloatField198: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object StringField72: TStringField
      FieldName = 'COFINS_ST'
      FixedChar = True
      Size = 2
    end
    object FloatField199: TFloatField
      FieldName = 'COFINS_ALIQ'
    end
    object FloatField200: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object FloatField201: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object FloatField202: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object FloatField203: TFloatField
      FieldName = 'COFINS_SUB_BASE'
    end
    object FloatField204: TFloatField
      FieldName = 'COFINS_SUB_ALIQ'
    end
    object FloatField205: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object FloatField206: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object FloatField207: TFloatField
      FieldName = 'TOT_ISS'
    end
    object FloatField208: TFloatField
      FieldName = 'TOT_DESCONTO'
    end
    object FloatField209: TFloatField
      FieldName = 'TOT_ACRESCIMO'
    end
    object StringField73: TStringField
      FieldName = 'CST_IPI'
      FixedChar = True
      Size = 2
    end
    object FloatField210: TFloatField
      FieldName = 'PRECO_MAXIMO_CONSUMIDOR'
    end
    object SmallintField30: TSmallintField
      FieldName = 'CALC_PIS_COFINS'
    end
    object FloatField211: TFloatField
      FieldName = 'BASE_ICMS_SUB_RET'
    end
    object FloatField212: TFloatField
      FieldName = 'TOT_ICMS_SUB_RET'
    end
    object StringField74: TStringField
      FieldName = 'CSOSN'
      FixedChar = True
      Size = 4
    end
    object ITEPEDIDOS2ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ITEPEDIDOS2CLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
  end
  object PEDIDOS2: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PEDIDOS ORDER BY EMISSAO desc')
    Left = 343
    Top = 717
    object StringField75: TStringField
      FieldName = 'NOTA'
      Required = True
      Size = 9
    end
    object StringField76: TStringField
      FieldName = 'MODELO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField77: TStringField
      FieldName = 'SERIE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object StringField78: TStringField
      FieldName = 'SUBSERIE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object DateField22: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object IntegerField43: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'FORNECEDOR'
      Required = True
    end
    object StringField79: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231'ao'
      LookupDataSet = FORNECEDORESP
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FORNECEDOR'
      Size = 40
      Lookup = True
    end
    object TimeField3: TTimeField
      FieldName = 'HORA'
    end
    object StringField80: TStringField
      FieldName = 'CFOPS'
      Required = True
      Size = 40
    end
    object MemoField25: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object StringField81: TStringField
      FieldName = 'NATUREZA'
      Size = 50
    end
    object SmallintField31: TSmallintField
      FieldName = 'COMERCIALIZACAO'
    end
    object FloatField213: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object FloatField214: TFloatField
      FieldName = 'TOT_ICMS'
    end
    object FloatField215: TFloatField
      FieldName = 'BASE_ICMS_SUB'
    end
    object FloatField216: TFloatField
      FieldName = 'TOT_ICMS_SUB'
    end
    object FloatField217: TFloatField
      FieldName = 'ICMS_FRETE'
    end
    object FloatField218: TFloatField
      FieldName = 'TOT_ICMS_FRETE'
    end
    object FloatField219: TFloatField
      FieldName = 'TOT_PRODUTOS'
    end
    object FloatField220: TFloatField
      FieldName = 'TOT_FRETE'
    end
    object FloatField221: TFloatField
      FieldName = 'TOT_SEGURO'
    end
    object FloatField222: TFloatField
      FieldName = 'TOT_OUTRAS'
    end
    object FloatField223: TFloatField
      FieldName = 'DESCONTO'
    end
    object FloatField224: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object FloatField225: TFloatField
      FieldName = 'TOT_IPI'
    end
    object FloatField226: TFloatField
      FieldName = 'TOTAL'
    end
    object IntegerField44: TIntegerField
      FieldName = 'TRANSP_1'
    end
    object IntegerField45: TIntegerField
      FieldName = 'TRANSP_2'
    end
    object StringField82: TStringField
      FieldName = 'FRETE_1'
      FixedChar = True
      Size = 1
    end
    object StringField83: TStringField
      FieldName = 'FRETE_2'
      FixedChar = True
      Size = 2
    end
    object IntegerField46: TIntegerField
      FieldName = 'OPERADOR'
    end
    object IntegerField47: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object IntegerField48: TIntegerField
      FieldName = 'TABELA_PRECO'
    end
    object SmallintField32: TSmallintField
      FieldName = 'ANEXA_ST'
    end
    object IntegerField49: TIntegerField
      FieldName = 'CONTA'
    end
    object IntegerField50: TIntegerField
      FieldName = 'CUSTO'
    end
    object StringField84: TStringField
      FieldName = 'IMPORTADOS'
      Size = 255
    end
    object FloatField227: TFloatField
      FieldName = 'TOT_PIS'
    end
    object FloatField228: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object FloatField229: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object FloatField230: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object DateField23: TDateField
      FieldName = 'SAIDA'
    end
    object FloatField231: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object FloatField232: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object FloatField233: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object FloatField234: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object SmallintField33: TSmallintField
      FieldName = 'SOMENTE_SERVICO'
    end
    object FloatField235: TFloatField
      FieldName = 'TOT_ISS'
    end
    object SmallintField34: TSmallintField
      FieldName = 'IMPORTACAO'
    end
    object StringField85: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 44
    end
    object StringField86: TStringField
      FieldKind = fkLookup
      FieldName = 'Endere'#231'o'
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ENDERECO'
      KeyFields = 'FORNECEDOR'
      Size = 35
      Lookup = True
    end
    object PEDIDOS2ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object PEDIDOS2CLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
  end
  object UniDataSource28: TUniDataSource
    DataSet = UniQuery6
    Left = 16
    Top = 672
  end
  object UniQuery6: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CONTAS')
    Left = 104
    Top = 672
  end
  object UniQuery7: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITEVENDAS')
    Left = 344
    Top = 672
  end
  object ITEPEDIDOS4: TUniQuery
    UpdatingTable = 'ITEPEDIDOS'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      
        'SELECT * FROM ITECOMPRAS WHERE NOTA='#39'000011526'#39' order by emissao' +
        ' desc')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_ITEPEDIDOS')
    Left = 184
    Top = 717
    object StringField87: TStringField
      FieldName = 'NOTA'
      Required = True
      Size = 9
    end
    object DateField24: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object IntegerField51: TIntegerField
      FieldName = 'FORNECEDOR'
      Required = True
    end
    object IntegerField52: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object IntegerField53: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField88: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = ESTOQUExxx
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Size = 45
      Lookup = True
    end
    object StringField89: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object IntegerField54: TIntegerField
      FieldName = 'CFOP'
    end
    object StringField90: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 4
    end
    object StringField91: TStringField
      FieldName = 'CF'
      Size = 10
    end
    object FloatField236: TFloatField
      FieldName = 'QTD'
    end
    object MemoField26: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object MemoField27: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object MemoField28: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object FloatField237: TFloatField
      FieldName = 'PRECO'
    end
    object FloatField238: TFloatField
      FieldName = 'TOTAL'
    end
    object FloatField239: TFloatField
      FieldName = 'ICMS'
    end
    object FloatField240: TFloatField
      FieldName = 'IPI'
    end
    object FloatField241: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object FloatField242: TFloatField
      FieldName = 'TOT_IPI'
    end
    object FloatField243: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object FloatField244: TFloatField
      FieldName = 'DESCONTO'
    end
    object FloatField245: TFloatField
      FieldName = 'OUTRAS_DESP_ACRE'
    end
    object SmallintField35: TSmallintField
      FieldName = 'FIXOU'
    end
    object FloatField246: TFloatField
      FieldName = 'BASE_ICMS_SUB'
    end
    object FloatField247: TFloatField
      FieldName = 'TOT_ICMS_SUB'
    end
    object StringField92: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object DateField25: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object DateField26: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object FloatField248: TFloatField
      FieldName = 'REDUCAO_ICMS'
    end
    object SmallintField36: TSmallintField
      FieldName = 'FIXOU_IPI'
    end
    object SmallintField37: TSmallintField
      FieldName = 'FIXOU_ICMS'
    end
    object FloatField249: TFloatField
      FieldName = 'TOT_ICMS'
    end
    object DateField27: TDateField
      FieldName = 'SAIDA'
    end
    object StringField93: TStringField
      FieldName = 'PIS_ST'
      FixedChar = True
      Size = 2
    end
    object FloatField250: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object FloatField251: TFloatField
      FieldName = 'PIS_BASE'
    end
    object FloatField252: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object FloatField253: TFloatField
      FieldName = 'TOT_PIS'
    end
    object FloatField254: TFloatField
      FieldName = 'PIS_SUB_BASE'
    end
    object FloatField255: TFloatField
      FieldName = 'PIS_SUB_ALIQ'
    end
    object FloatField256: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object FloatField257: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object StringField94: TStringField
      FieldName = 'COFINS_ST'
      FixedChar = True
      Size = 2
    end
    object FloatField258: TFloatField
      FieldName = 'COFINS_ALIQ'
    end
    object FloatField259: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object FloatField260: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object FloatField261: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object FloatField262: TFloatField
      FieldName = 'COFINS_SUB_BASE'
    end
    object FloatField263: TFloatField
      FieldName = 'COFINS_SUB_ALIQ'
    end
    object FloatField264: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object FloatField265: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object FloatField266: TFloatField
      FieldName = 'TOT_ISS'
    end
    object FloatField267: TFloatField
      FieldName = 'TOT_DESCONTO'
    end
    object FloatField268: TFloatField
      FieldName = 'TOT_ACRESCIMO'
    end
    object StringField95: TStringField
      FieldName = 'CST_IPI'
      FixedChar = True
      Size = 2
    end
    object FloatField269: TFloatField
      FieldName = 'PRECO_MAXIMO_CONSUMIDOR'
    end
    object SmallintField38: TSmallintField
      FieldName = 'CALC_PIS_COFINS'
    end
    object FloatField270: TFloatField
      FieldName = 'BASE_ICMS_SUB_RET'
    end
    object FloatField271: TFloatField
      FieldName = 'TOT_ICMS_SUB_RET'
    end
    object StringField96: TStringField
      FieldName = 'CSOSN'
      FixedChar = True
      Size = 4
    end
    object ITEPEDIDOS4ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ITEPEDIDOS4CLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
  end
  object UniTable1: TUniTable
    TableName = 'FORNECEDORES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 279
    Top = 598
  end
  object CurvaABC: TUniQuery
    UpdatingTable = 'CurvaABC'
    KeyFields = 'id'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from CurvaABC order by percentual desc')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_CurvaABC')
    Left = 824
    Top = 608
    object CurvaABCID: TIntegerField
      FieldName = 'ID'
    end
    object CurvaABCCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CurvaABCDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object CurvaABCQTD: TFloatField
      FieldName = 'QTD'
    end
    object CurvaABCPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object CurvaABCTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object CurvaABCPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
  end
  object ITEVENDAS_ECF2: TUniQuery
    UpdatingTable = 'ITEVENDAS_ECF2'
    KeyFields = 'CODIGOX'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from ITEVENDAS_ECF2')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_ITEVENDAS_ECF2')
    Left = 672
    Top = 600
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
    end
    object ITEVENDAS_ECF2ACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
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
  end
  object PRODUTOS: TUniQuery
    UpdatingTable = 'PRODUTOS'
    KeyFields = 'CODIGO'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'Select * from PRODUTOS Order by Nome')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_PRODUTOS')
    Left = 472
    Top = 601
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
    object PRODUTOSAPELIDO: TStringField
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
    object PRODUTOSCOD_FORNECEDOR: TStringField
      FieldName = 'COD_FORNECEDOR'
      Size = 10
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
  end
  object Sou_CurvaABC: TUniDataSource
    DataSet = CurvaABC
    Left = 760
    Top = 608
  end
  object UniDataSource29: TUniDataSource
    DataSet = ITEVENDAS_ECF2
    Left = 568
    Top = 600
  end
  object UniTable2: TUniTable
    TableName = 'ENTRRELA'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 839
    Top = 550
  end
  object ENTRRELA: TUniQuery
    UpdatingTable = 'ENTRRELA'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ENTRRELA')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_ENTRRELA')
    Left = 536
    Top = 653
    object ENTRRELAID: TIntegerField
      FieldName = 'ID'
    end
    object ENTRRELACODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object ENTRRELADESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object ENTRRELAQTD: TFloatField
      FieldName = 'QTD'
    end
    object ENTRRELAPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object ENTRRELACUSTO: TFloatField
      FieldName = 'CUSTO'
    end
    object ENTRRELATOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object ENTRRELAPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
  end
  object ITECOMPRASR: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITECOMPRAS')
    CachedUpdates = True
    Left = 464
    Top = 654
    object StringField109: TStringField
      FieldName = 'NOTA'
      Required = True
      Size = 9
    end
    object DateField29: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object IntegerField62: TIntegerField
      FieldName = 'FORNECEDOR'
      Required = True
    end
    object IntegerField63: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object IntegerField64: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField110: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = ESTOQUExxx
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Size = 45
      Lookup = True
    end
    object StringField111: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object IntegerField65: TIntegerField
      FieldName = 'CFOP'
    end
    object StringField112: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 4
    end
    object StringField113: TStringField
      FieldName = 'CF'
      Size = 10
    end
    object FloatField288: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,##0.00'
    end
    object MemoField33: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object MemoField34: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object MemoField35: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object FloatField289: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField290: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object FloatField291: TFloatField
      FieldName = 'ICMS'
      DisplayFormat = '###,##0.00'
    end
    object FloatField292: TFloatField
      FieldName = 'IPI'
      DisplayFormat = '###,##0.00'
    end
    object FloatField293: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object FloatField294: TFloatField
      FieldName = 'TOT_IPI'
      DisplayFormat = '###,##0.00'
    end
    object FloatField295: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField296: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.00'
    end
    object FloatField297: TFloatField
      FieldName = 'OUTRAS_DESP_ACRE'
      DisplayFormat = '###,##0.00'
    end
    object SmallintField41: TSmallintField
      FieldName = 'FIXOU'
      DisplayFormat = '###,##0.00'
    end
    object FloatField298: TFloatField
      FieldName = 'BASE_ICMS_SUB'
      DisplayFormat = '###,##0.00'
    end
    object FloatField299: TFloatField
      FieldName = 'TOT_ICMS_SUB'
      DisplayFormat = '###,##0.00'
    end
    object StringField114: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object DateField30: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object DateField31: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object FloatField300: TFloatField
      FieldName = 'REDUCAO_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object SmallintField42: TSmallintField
      FieldName = 'FIXOU_IPI'
      DisplayFormat = '###,##0.00'
    end
    object SmallintField43: TSmallintField
      FieldName = 'FIXOU_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object FloatField301: TFloatField
      FieldName = 'TOT_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object DateField32: TDateField
      FieldName = 'SAIDA'
    end
    object StringField115: TStringField
      FieldName = 'PIS_ST'
      FixedChar = True
      Size = 2
    end
    object FloatField302: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object FloatField303: TFloatField
      FieldName = 'PIS_BASE'
    end
    object FloatField304: TFloatField
      FieldName = 'PIS_VALOR_BC'
      DisplayFormat = '###,##0.00'
    end
    object FloatField305: TFloatField
      FieldName = 'TOT_PIS'
      DisplayFormat = '###,##0.00'
    end
    object FloatField306: TFloatField
      FieldName = 'PIS_SUB_BASE'
    end
    object FloatField307: TFloatField
      FieldName = 'PIS_SUB_ALIQ'
    end
    object FloatField308: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object FloatField309: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object StringField116: TStringField
      FieldName = 'COFINS_ST'
      FixedChar = True
      Size = 2
    end
    object FloatField310: TFloatField
      FieldName = 'COFINS_ALIQ'
    end
    object FloatField311: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object FloatField312: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object FloatField313: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object FloatField314: TFloatField
      FieldName = 'COFINS_SUB_BASE'
    end
    object FloatField315: TFloatField
      FieldName = 'COFINS_SUB_ALIQ'
    end
    object FloatField316: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object FloatField317: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object FloatField318: TFloatField
      FieldName = 'TOT_ISS'
    end
    object FloatField319: TFloatField
      FieldName = 'TOT_DESCONTO'
    end
    object FloatField320: TFloatField
      FieldName = 'TOT_ACRESCIMO'
    end
    object StringField117: TStringField
      FieldName = 'CST_IPI'
      FixedChar = True
      Size = 2
    end
    object FloatField321: TFloatField
      FieldName = 'PRECO_MAXIMO_CONSUMIDOR'
    end
    object SmallintField44: TSmallintField
      FieldName = 'CALC_PIS_COFINS'
    end
    object FloatField322: TFloatField
      FieldName = 'BASE_ICMS_SUB_RET'
    end
    object FloatField323: TFloatField
      FieldName = 'TOT_ICMS_SUB_RET'
    end
    object StringField118: TStringField
      FieldName = 'CSOSN'
      FixedChar = True
      Size = 4
    end
  end
  object ITEVENDASR: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITEVENDAS')
    CachedUpdates = True
    Left = 616
    Top = 656
  end
  object ITEPEDIDOSR: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITEPEDIDOS')
    CachedUpdates = True
    Left = 760
    Top = 659
    object ITEPEDIDOSRCODIGOX: TIntegerField
      FieldName = 'CODIGOX'
    end
    object ITEPEDIDOSRNOTA: TStringField
      FieldName = 'NOTA'
      Size = 9
    end
    object ITEPEDIDOSREMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object ITEPEDIDOSRFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object ITEPEDIDOSRITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object ITEPEDIDOSRCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object ITEPEDIDOSRBARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object ITEPEDIDOSRCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object ITEPEDIDOSRST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 4
    end
    object ITEPEDIDOSRCF: TStringField
      FieldName = 'CF'
      Size = 10
    end
    object ITEPEDIDOSRQTD: TFloatField
      FieldName = 'QTD'
    end
    object ITEPEDIDOSRGRADE_X: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object ITEPEDIDOSRGRADE_Y: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object ITEPEDIDOSRGRADE_QUA: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object ITEPEDIDOSRPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object ITEPEDIDOSRTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object ITEPEDIDOSRICMS: TFloatField
      FieldName = 'ICMS'
    end
    object ITEPEDIDOSRIPI: TFloatField
      FieldName = 'IPI'
    end
    object ITEPEDIDOSRBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object ITEPEDIDOSRTOT_IPI: TFloatField
      FieldName = 'TOT_IPI'
    end
    object ITEPEDIDOSRACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object ITEPEDIDOSRDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object ITEPEDIDOSROUTRAS_DESP_ACRE: TFloatField
      FieldName = 'OUTRAS_DESP_ACRE'
    end
    object ITEPEDIDOSRFIXOU: TSmallintField
      FieldName = 'FIXOU'
    end
    object ITEPEDIDOSRBASE_ICMS_SUB: TFloatField
      FieldName = 'BASE_ICMS_SUB'
    end
    object ITEPEDIDOSRTOT_ICMS_SUB: TFloatField
      FieldName = 'TOT_ICMS_SUB'
    end
    object ITEPEDIDOSRLOTE: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object ITEPEDIDOSRDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object ITEPEDIDOSRDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object ITEPEDIDOSRREDUCAO_ICMS: TFloatField
      FieldName = 'REDUCAO_ICMS'
    end
    object ITEPEDIDOSRFIXOU_IPI: TSmallintField
      FieldName = 'FIXOU_IPI'
    end
    object ITEPEDIDOSRFIXOU_ICMS: TSmallintField
      FieldName = 'FIXOU_ICMS'
    end
    object ITEPEDIDOSRTOT_ICMS: TFloatField
      FieldName = 'TOT_ICMS'
    end
    object ITEPEDIDOSRSAIDA: TDateField
      FieldName = 'SAIDA'
    end
    object ITEPEDIDOSRPIS_ST: TStringField
      FieldName = 'PIS_ST'
      FixedChar = True
      Size = 2
    end
    object ITEPEDIDOSRPIS_ALIQ: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object ITEPEDIDOSRPIS_BASE: TFloatField
      FieldName = 'PIS_BASE'
    end
    object ITEPEDIDOSRPIS_VALOR_BC: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object ITEPEDIDOSRTOT_PIS: TFloatField
      FieldName = 'TOT_PIS'
    end
    object ITEPEDIDOSRPIS_SUB_BASE: TFloatField
      FieldName = 'PIS_SUB_BASE'
    end
    object ITEPEDIDOSRPIS_SUB_ALIQ: TFloatField
      FieldName = 'PIS_SUB_ALIQ'
    end
    object ITEPEDIDOSRTOT_PIS_SUB: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object ITEPEDIDOSRPIS_VALOR_BC_SUB: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object ITEPEDIDOSRCOFINS_ST: TStringField
      FieldName = 'COFINS_ST'
      FixedChar = True
      Size = 2
    end
    object ITEPEDIDOSRCOFINS_ALIQ: TFloatField
      FieldName = 'COFINS_ALIQ'
    end
    object ITEPEDIDOSRCOFINS_BASE: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object ITEPEDIDOSRCOFINS_VALOR_BC: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object ITEPEDIDOSRTOT_COFINS: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object ITEPEDIDOSRCOFINS_SUB_BASE: TFloatField
      FieldName = 'COFINS_SUB_BASE'
    end
    object ITEPEDIDOSRCOFINS_SUB_ALIQ: TFloatField
      FieldName = 'COFINS_SUB_ALIQ'
    end
    object ITEPEDIDOSRTOT_COFINS_SUB: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object ITEPEDIDOSRCOFINS_VALOR_BC_SUB: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object ITEPEDIDOSRTOT_ISS: TFloatField
      FieldName = 'TOT_ISS'
    end
    object ITEPEDIDOSRTOT_DESCONTO: TFloatField
      FieldName = 'TOT_DESCONTO'
    end
    object ITEPEDIDOSRTOT_ACRESCIMO: TFloatField
      FieldName = 'TOT_ACRESCIMO'
    end
    object ITEPEDIDOSRCST_IPI: TStringField
      FieldName = 'CST_IPI'
      FixedChar = True
      Size = 2
    end
    object ITEPEDIDOSRPRECO_MAXIMO_CONSUMIDOR: TFloatField
      FieldName = 'PRECO_MAXIMO_CONSUMIDOR'
    end
    object ITEPEDIDOSRCALC_PIS_COFINS: TSmallintField
      FieldName = 'CALC_PIS_COFINS'
    end
    object ITEPEDIDOSRBASE_ICMS_SUB_RET: TFloatField
      FieldName = 'BASE_ICMS_SUB_RET'
    end
    object ITEPEDIDOSRTOT_ICMS_SUB_RET: TFloatField
      FieldName = 'TOT_ICMS_SUB_RET'
    end
    object ITEPEDIDOSRCSOSN: TStringField
      FieldName = 'CSOSN'
      FixedChar = True
      Size = 4
    end
  end
  object SaidRela: TUniQuery
    UpdatingTable = 'SaidRela'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM SaidRela')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_SaidRela')
    Left = 688
    Top = 658
    object IntegerField70: TIntegerField
      FieldName = 'ID'
    end
    object IntegerField71: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField136: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object FloatField389: TFloatField
      FieldName = 'QTD'
    end
    object FloatField390: TFloatField
      FieldName = 'PRECO'
    end
    object FloatField391: TFloatField
      FieldName = 'CUSTO'
    end
    object FloatField392: TFloatField
      FieldName = 'TOTAL'
    end
    object FloatField393: TFloatField
      FieldName = 'PERCENTUAL'
    end
  end
  object PediRela: TUniQuery
    UpdatingTable = 'PediRela'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PediRela')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_PediRela')
    Left = 832
    Top = 662
    object IntegerField72: TIntegerField
      FieldName = 'ID'
    end
    object IntegerField73: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField137: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object FloatField394: TFloatField
      FieldName = 'QTD'
    end
    object FloatField395: TFloatField
      FieldName = 'PRECO'
    end
    object FloatField396: TFloatField
      FieldName = 'CUSTO'
    end
    object FloatField397: TFloatField
      FieldName = 'TOTAL'
    end
    object FloatField398: TFloatField
      FieldName = 'PERCENTUAL'
    end
  end
  object EntrSaid: TUniQuery
    UpdatingTable = 'EntrSaid'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM EntrSaid')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_EntrSaid')
    Left = 904
    Top = 662
    object IntegerField74: TIntegerField
      FieldName = 'ID'
    end
    object EntrSaidDATA: TDateField
      FieldName = 'DATA'
    end
    object IntegerField75: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField138: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object FloatField399: TFloatField
      FieldName = 'QTD'
    end
    object FloatField400: TFloatField
      FieldName = 'PRECO'
    end
    object FloatField401: TFloatField
      FieldName = 'CUSTO'
    end
    object FloatField402: TFloatField
      FieldName = 'TOTAL'
    end
    object FloatField403: TFloatField
      FieldName = 'PERCENTUAL'
    end
  end
  object UniDataSource30: TUniDataSource
    DataSet = ITECOMPRASR
    Left = 464
    Top = 704
  end
  object UniDataSource31: TUniDataSource
    DataSet = ITEVENDASR
    Left = 616
    Top = 712
  end
  object UniDataSource32: TUniDataSource
    DataSet = EntrSaid
    Left = 904
    Top = 717
  end
  object ITEPEDIDOSCLI: TUniQuery
    UpdatingTable = 'ITEPEDIDOSCLI'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITEPEDIDOSCLI')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_ITEPEDIDOSCLI')
    Left = 960
    Top = 96
    object ITEPEDIDOSCLINOTA: TStringField
      FieldName = 'NOTA'
      Size = 6
    end
    object ITEPEDIDOSCLIMODELO: TStringField
      FieldName = 'MODELO'
      FixedChar = True
      Size = 2
    end
    object ITEPEDIDOSCLISERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 3
    end
    object ITEPEDIDOSCLISUBSERIE: TStringField
      FieldName = 'SUBSERIE'
      FixedChar = True
      Size = 2
    end
    object ITEPEDIDOSCLIORIGEM: TStringField
      FieldName = 'ORIGEM'
      FixedChar = True
      Size = 2
    end
    object ITEPEDIDOSCLIEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object ITEPEDIDOSCLIITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object ITEPEDIDOSCLICODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object ITEPEDIDOSCLIBARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object ITEPEDIDOSCLICFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object ITEPEDIDOSCLIST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 4
    end
    object ITEPEDIDOSCLICF: TStringField
      FieldName = 'CF'
      Size = 10
    end
    object ITEPEDIDOSCLIUND: TStringField
      FieldName = 'UND'
      FixedChar = True
      Size = 3
    end
    object ITEPEDIDOSCLIQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,##0.00'
    end
    object ITEPEDIDOSCLIGRADE_X: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object ITEPEDIDOSCLIGRADE_Y: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object ITEPEDIDOSCLIGRADE_QUA: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object ITEPEDIDOSCLIGRADE_VENDIDA: TMemoField
      FieldName = 'GRADE_VENDIDA'
      BlobType = ftMemo
    end
    object ITEPEDIDOSCLIPRECO: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = '###,##0.00'
    end
    object ITEPEDIDOSCLIDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object ITEPEDIDOSCLIACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object ITEPEDIDOSCLITOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object ITEPEDIDOSCLIIPI: TFloatField
      FieldName = 'IPI'
    end
    object ITEPEDIDOSCLITOT_IPI: TFloatField
      FieldName = 'TOT_IPI'
    end
    object ITEPEDIDOSCLIBASE_ICMS_SUB: TFloatField
      FieldName = 'BASE_ICMS_SUB'
    end
    object ITEPEDIDOSCLITOT_ICMS_SUB: TFloatField
      FieldName = 'TOT_ICMS_SUB'
    end
    object ITEPEDIDOSCLIBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object ITEPEDIDOSCLIICMS: TFloatField
      FieldName = 'ICMS'
    end
    object ITEPEDIDOSCLITOT_ICMS: TFloatField
      FieldName = 'TOT_ICMS'
    end
    object ITEPEDIDOSCLISERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 40
    end
    object ITEPEDIDOSCLIOUTRAS_DESP_ACRE: TFloatField
      FieldName = 'OUTRAS_DESP_ACRE'
    end
    object ITEPEDIDOSCLICANCELADO: TSmallintField
      FieldName = 'CANCELADO'
    end
    object ITEPEDIDOSCLISEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object ITEPEDIDOSCLIBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object ITEPEDIDOSCLIICMS_RED: TFloatField
      FieldName = 'ICMS_RED'
    end
    object ITEPEDIDOSCLIICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object ITEPEDIDOSCLIPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object ITEPEDIDOSCLILOTE: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object ITEPEDIDOSCLIPIS_ST: TStringField
      FieldName = 'PIS_ST'
      FixedChar = True
      Size = 2
    end
    object ITEPEDIDOSCLIPIS_BASE: TFloatField
      FieldName = 'PIS_BASE'
    end
    object ITEPEDIDOSCLIPIS_ALIQ: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object ITEPEDIDOSCLITOT_PIS: TFloatField
      FieldName = 'TOT_PIS'
    end
    object ITEPEDIDOSCLIPIS_SUB_BASE: TFloatField
      FieldName = 'PIS_SUB_BASE'
    end
    object ITEPEDIDOSCLIPIS_SUB_ALIQ: TFloatField
      FieldName = 'PIS_SUB_ALIQ'
    end
    object ITEPEDIDOSCLITOT_PIS_SUB: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object ITEPEDIDOSCLICOFINS_ST: TStringField
      FieldName = 'COFINS_ST'
      FixedChar = True
      Size = 2
    end
    object ITEPEDIDOSCLICOFINS_BASE: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object ITEPEDIDOSCLICOFINS_ALIQ: TFloatField
      FieldName = 'COFINS_ALIQ'
    end
    object ITEPEDIDOSCLITOT_COFINS: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object ITEPEDIDOSCLICOFINS_SUB_BASE: TFloatField
      FieldName = 'COFINS_SUB_BASE'
    end
    object ITEPEDIDOSCLICOFINS_SUB_ALIQ: TFloatField
      FieldName = 'COFINS_SUB_ALIQ'
    end
    object ITEPEDIDOSCLITOT_COFINS_SUB: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object ITEPEDIDOSCLIOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object ITEPEDIDOSCLIGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object ITEPEDIDOSCLITABELA_PRECO: TStringField
      FieldName = 'TABELA_PRECO'
      Size = 30
    end
    object ITEPEDIDOSCLITOT_DESCONTO: TFloatField
      FieldName = 'TOT_DESCONTO'
    end
    object ITEPEDIDOSCLITOT_ACRESCIMO: TFloatField
      FieldName = 'TOT_ACRESCIMO'
    end
    object ITEPEDIDOSCLIFIXOU_IPI: TSmallintField
      FieldName = 'FIXOU_IPI'
    end
    object ITEPEDIDOSCLIFIXOU_ICMS: TSmallintField
      FieldName = 'FIXOU_ICMS'
    end
    object ITEPEDIDOSCLIPIS_VALOR_BC: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object ITEPEDIDOSCLIPIS_VALOR_BC_SUB: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object ITEPEDIDOSCLICOFINS_VALOR_BC: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object ITEPEDIDOSCLICOFINS_VALOR_BC_SUB: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object ITEPEDIDOSCLICSOSN: TStringField
      FieldName = 'CSOSN'
      FixedChar = True
      Size = 4
    end
    object ITEPEDIDOSCLITOT_ICMS_ABATIDO: TFloatField
      FieldName = 'TOT_ICMS_ABATIDO'
    end
    object ITEPEDIDOSCLIIMPORTADO_POSTO: TIntegerField
      FieldName = 'IMPORTADO_POSTO'
    end
    object ITEPEDIDOSCLITOT_FRETE: TFloatField
      FieldName = 'TOT_FRETE'
    end
    object ITEPEDIDOSCLITOT_SEGURO: TFloatField
      FieldName = 'TOT_SEGURO'
    end
    object ITEPEDIDOSCLITOT_OUTRAS: TFloatField
      FieldName = 'TOT_OUTRAS'
    end
    object ITEPEDIDOSCLIXPED: TStringField
      FieldName = 'XPED'
      Size = 15
    end
    object ITEPEDIDOSCLINITEMPED: TIntegerField
      FieldName = 'NITEMPED'
    end
    object ITEPEDIDOSCLIALIQI: TFloatField
      FieldName = 'ALIQI'
    end
    object ITEPEDIDOSCLITOT_TRIB: TFloatField
      FieldName = 'TOT_TRIB'
    end
    object ITEPEDIDOSCLIALIQ_NCM: TFloatField
      FieldName = 'ALIQ_NCM'
    end
    object ITEPEDIDOSCLIFCI: TStringField
      FieldName = 'FCI'
      Size = 36
    end
    object ITEPEDIDOSCLIPERCENTUAL_GAS_NATURAL: TFloatField
      FieldName = 'PERCENTUAL_GAS_NATURAL'
    end
    object ITEPEDIDOSCLIPERCENTUAL_DIFERIMENTO: TFloatField
      FieldName = 'PERCENTUAL_DIFERIMENTO'
    end
    object ITEPEDIDOSCLIVALOR_DIFERIMENTO: TFloatField
      FieldName = 'VALOR_DIFERIMENTO'
    end
    object ITEPEDIDOSCLIDescrição: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = produtospedido
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Lookup = True
    end
    object ITEPEDIDOSCLIID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object UniDataSource34: TUniDataSource
    DataSet = ITEPEDIDOSCLI
    Left = 856
    Top = 96
  end
  object ITEPEDIDOSCLI2: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITEPEDIDOSCLI')
    Left = 1048
    Top = 96
  end
  object ITEPEDIDOSCLI4: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITEPEDIDOSCLI')
    CachedUpdates = True
    Left = 1144
    Top = 96
  end
  object PED_CLI: TUniQuery
    UpdatingTable = 'PED_CLI'
    KeyFields = 'ID'
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PED_CLI ORDER BY EMISSAO+HORA desc')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_PED_CLI')
    Left = 952
    Top = 24
    object PED_CLINOTA: TStringField
      FieldName = 'NOTA'
      Size = 6
    end
    object PED_CLIMODELO: TStringField
      FieldName = 'MODELO'
      FixedChar = True
      Size = 2
    end
    object PED_CLISERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 3
    end
    object PED_CLISUBSERIE: TStringField
      FieldName = 'SUBSERIE'
      FixedChar = True
      Size = 2
    end
    object PED_CLIORIGEM: TStringField
      FieldName = 'ORIGEM'
      FixedChar = True
      Size = 2
    end
    object PED_CLIEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object PED_CLIHORA: TTimeField
      FieldName = 'HORA'
    end
    object PED_CLIENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
    object PED_CLISAIDA: TStringField
      FieldName = 'SAIDA'
      FixedChar = True
      Size = 1
    end
    object PED_CLICFOPS: TStringField
      FieldName = 'CFOPS'
      Size = 40
    end
    object PED_CLINATUREZA: TStringField
      FieldName = 'NATUREZA'
      Size = 50
    end
    object PED_CLICLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object PED_CLIIMPORTACOES: TMemoField
      FieldName = 'IMPORTACOES'
      BlobType = ftMemo
    end
    object PED_CLIDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
    end
    object PED_CLIHORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
    end
    object PED_CLIOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object PED_CLIADICIONAIS: TMemoField
      FieldName = 'ADICIONAIS'
      BlobType = ftMemo
    end
    object PED_CLITRANSP_1: TIntegerField
      FieldName = 'TRANSP_1'
    end
    object PED_CLITRANSP_2: TIntegerField
      FieldName = 'TRANSP_2'
    end
    object PED_CLILOJA: TStringField
      FieldName = 'LOJA'
      Size = 6
    end
    object PED_CLIVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object PED_CLIFORMAS_PGTO: TStringField
      FieldName = 'FORMAS_PGTO'
      Size = 30
    end
    object PED_CLIQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Size = 10
    end
    object PED_CLIESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 25
    end
    object PED_CLIMARCA: TStringField
      FieldName = 'MARCA'
      Size = 25
    end
    object PED_CLIPBRUTO: TStringField
      FieldName = 'PBRUTO'
      Size = 15
    end
    object PED_CLIPLIQUIDO: TStringField
      FieldName = 'PLIQUIDO'
      Size = 15
    end
    object PED_CLIFRETE_1: TStringField
      FieldName = 'FRETE_1'
      FixedChar = True
      Size = 1
    end
    object PED_CLIFRETE_2: TStringField
      FieldName = 'FRETE_2'
      FixedChar = True
      Size = 2
    end
    object PED_CLIANEXA_ICMS_SUB: TSmallintField
      FieldName = 'ANEXA_ICMS_SUB'
    end
    object PED_CLICOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object PED_CLIDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object PED_CLIACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object PED_CLIICMS_FRETE: TFloatField
      FieldName = 'ICMS_FRETE'
    end
    object PED_CLIBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object PED_CLIBASE_ICMS_SUB: TFloatField
      FieldName = 'BASE_ICMS_SUB'
    end
    object PED_CLIBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object PED_CLITOT_ICMS: TFloatField
      FieldName = 'TOT_ICMS'
    end
    object PED_CLITOT_ICMS_SUB: TFloatField
      FieldName = 'TOT_ICMS_SUB'
    end
    object PED_CLITOT_IPI: TFloatField
      FieldName = 'TOT_IPI'
    end
    object PED_CLITOT_SERVICOS: TFloatField
      FieldName = 'TOT_SERVICOS'
    end
    object PED_CLITOT_ISS: TFloatField
      FieldName = 'TOT_ISS'
    end
    object PED_CLITOT_PRODUTOS: TFloatField
      FieldName = 'TOT_PRODUTOS'
    end
    object PED_CLITOT_IRRF: TFloatField
      FieldName = 'TOT_IRRF'
    end
    object PED_CLITOT_PIS: TFloatField
      FieldName = 'TOT_PIS'
    end
    object PED_CLITOT_COFINS: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object PED_CLITOT_CS: TFloatField
      FieldName = 'TOT_CS'
    end
    object PED_CLITOT_SER_BRUTO: TFloatField
      FieldName = 'TOT_SER_BRUTO'
    end
    object PED_CLITOT_SEGURO: TFloatField
      FieldName = 'TOT_SEGURO'
    end
    object PED_CLITOT_OUTRAS: TFloatField
      FieldName = 'TOT_OUTRAS'
    end
    object PED_CLITOT_FRETE: TFloatField
      FieldName = 'TOT_FRETE'
    end
    object PED_CLICANCELADO: TSmallintField
      FieldName = 'CANCELADO'
    end
    object PED_CLITOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object PED_CLIOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object PED_CLISEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object PED_CLICONVENIO: TFloatField
      FieldName = 'CONVENIO'
    end
    object PED_CLINSU: TIntegerField
      FieldName = 'NSU'
    end
    object PED_CLIDATA_IMPRESSAO: TDateField
      FieldName = 'DATA_IMPRESSAO'
    end
    object PED_CLIHORA_IMPRESSAO: TTimeField
      FieldName = 'HORA_IMPRESSAO'
    end
    object PED_CLIAVISTA: TSmallintField
      FieldName = 'AVISTA'
    end
    object PED_CLITOT_ICMS_FRETE: TFloatField
      FieldName = 'TOT_ICMS_FRETE'
    end
    object PED_CLITOT_CONVENIO: TFloatField
      FieldName = 'TOT_CONVENIO'
    end
    object PED_CLITAB_PRECO: TIntegerField
      FieldName = 'TAB_PRECO'
    end
    object PED_CLIANEXA_ST: TSmallintField
      FieldName = 'ANEXA_ST'
    end
    object PED_CLITOTALIZA_CFOP: TStringField
      FieldName = 'TOTALIZA_CFOP'
      Size = 150
    end
    object PED_CLICONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object PED_CLICUSTO: TIntegerField
      FieldName = 'CUSTO'
    end
    object PED_CLISERIAIS_PROD: TMemoField
      FieldName = 'SERIAIS_PROD'
      BlobType = ftMemo
    end
    object PED_CLINFE_FLDE: TStringField
      FieldName = 'NFE_FLDE'
      FixedChar = True
      Size = 1
    end
    object PED_CLINFE_STATUS: TStringField
      FieldName = 'NFE_STATUS'
      FixedChar = True
      Size = 1
    end
    object PED_CLITOT_IMPORTACAO: TFloatField
      FieldName = 'TOT_IMPORTACAO'
    end
    object PED_CLINF_REFERENCIADA: TIntegerField
      FieldName = 'NF_REFERENCIADA'
    end
    object PED_CLITOT_PIS_SUB: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object PED_CLITOT_COFINS_SUB: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object PED_CLIANEXA_ICMS_FRETE: TSmallintField
      FieldName = 'ANEXA_ICMS_FRETE'
    end
    object PED_CLIPLACA_TRANSP1: TStringField
      FieldName = 'PLACA_TRANSP1'
      Size = 8
    end
    object PED_CLIIMPORTADOS: TStringField
      FieldName = 'IMPORTADOS'
      Size = 255
    end
    object PED_CLIPLACA_TRANSP2: TStringField
      FieldName = 'PLACA_TRANSP2'
      Size = 8
    end
    object PED_CLIANEXA_SEGURO: TSmallintField
      FieldName = 'ANEXA_SEGURO'
    end
    object PED_CLIANEXA_OUTRAS: TSmallintField
      FieldName = 'ANEXA_OUTRAS'
    end
    object PED_CLIANTT_TRANSP1: TStringField
      FieldName = 'ANTT_TRANSP1'
    end
    object PED_CLIANTT_TRANSP2: TStringField
      FieldName = 'ANTT_TRANSP2'
    end
    object PED_CLIUFEMBARQ: TStringField
      FieldName = 'UFEMBARQ'
      FixedChar = True
      Size = 2
    end
    object PED_CLIXLOCEMBARQ: TStringField
      FieldName = 'XLOCEMBARQ'
      Size = 60
    end
    object PED_CLITOT_ICMS_OUTRAS_DESP: TFloatField
      FieldName = 'TOT_ICMS_OUTRAS_DESP'
    end
    object PED_CLITOT_ICMS_SEGURO: TFloatField
      FieldName = 'TOT_ICMS_SEGURO'
    end
    object PED_CLIANEXA_FRETE: TSmallintField
      FieldName = 'ANEXA_FRETE'
    end
    object PED_CLIIE_SUBSTITUTO: TStringField
      FieldName = 'IE_SUBSTITUTO'
      Size = 19
    end
    object PED_CLIPIS_VALOR_BC: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object PED_CLIPIS_VALOR_BC_SUB: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object PED_CLICOFINS_VALOR_BC: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object PED_CLICOFINS_VALOR_BC_SUB: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object PED_CLIMOTIVO_D2_POSTO: TSmallintField
      FieldName = 'MOTIVO_D2_POSTO'
    end
    object PED_CLIAAMMNFP: TDateField
      FieldName = 'AAMMNFP'
    end
    object PED_CLINNFNFP: TStringField
      FieldName = 'NNFNFP'
      Size = 9
    end
    object PED_CLIMODNFP: TStringField
      FieldName = 'MODNFP'
      FixedChar = True
      Size = 2
    end
    object PED_CLISERIENFP: TStringField
      FieldName = 'SERIENFP'
      FixedChar = True
      Size = 3
    end
    object PED_CLINUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 60
    end
    object PED_CLIVTOT_TRIB: TFloatField
      FieldName = 'VTOT_TRIB'
    end
    object PED_CLIESPECIE_PAGAMENTO: TStringField
      FieldName = 'ESPECIE_PAGAMENTO'
    end
    object PED_CLIIND_PRES: TSmallintField
      FieldName = 'IND_PRES'
    end
    object PED_CLIPAF: TSmallintField
      FieldName = 'PAF'
    end
    object PED_CLIREFNFE: TStringField
      FieldName = 'REFNFE'
      FixedChar = True
      Size = 44
    end
    object PED_CLIDescrição: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = CLIENTESPEDIDO
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CLIENTE'
      Size = 50
      Lookup = True
    end
    object PED_CLIID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object Source_PED_CLI: TUniDataSource
    DataSet = PED_CLI
    Left = 856
    Top = 24
  end
  object CLIENTESPEDIDO: TUniTable
    TableName = 'CLIENTES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 1056
    Top = 24
  end
  object produtospedido: TUniTable
    TableName = 'produtos'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 1242
    Top = 97
    object IntegerField55: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField97: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object StringField98: TStringField
      FieldName = 'PADRAO_BARRAS'
      Size = 15
    end
    object StringField99: TStringField
      FieldName = 'FONTE_BARRAS'
      Size = 15
    end
    object StringField100: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object StringField101: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object StringField102: TStringField
      FieldName = 'UND_V'
      FixedChar = True
      Size = 3
    end
    object StringField103: TStringField
      FieldName = 'UND_C'
      FixedChar = True
      Size = 3
    end
    object StringField104: TStringField
      FieldName = 'FATOR'
      Size = 10
    end
    object IntegerField56: TIntegerField
      FieldName = 'GRUPO'
    end
    object SmallintField39: TSmallintField
      FieldName = 'USA_GRADE'
    end
    object MemoField29: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object MemoField30: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object MemoField31: TMemoField
      FieldName = 'GRADE_CON'
      BlobType = ftMemo
    end
    object MemoField32: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object MemoField36: TMemoField
      FieldName = 'GRADE_PED'
      BlobType = ftMemo
    end
    object MemoField37: TMemoField
      FieldName = 'GRADE_OS'
      BlobType = ftMemo
    end
    object FloatField272: TFloatField
      FieldName = 'QTD'
    end
    object FloatField273: TFloatField
      FieldName = 'QTD_CON'
    end
    object FloatField274: TFloatField
      FieldName = 'QTD_PED'
    end
    object FloatField275: TFloatField
      FieldName = 'QTD_OS'
    end
    object FloatField276: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object FloatField277: TFloatField
      FieldName = 'PRECO_CONS'
    end
    object FloatField278: TFloatField
      FieldName = 'PRECO_REV'
    end
    object FloatField279: TFloatField
      FieldName = 'PRECO_PZ_CONS'
    end
    object FloatField280: TFloatField
      FieldName = 'PRECO_PZ_REV'
    end
    object SmallintField40: TSmallintField
      FieldName = 'USA_INDICE'
      Required = True
    end
    object SmallintField45: TSmallintField
      FieldName = 'ATIVO'
      Required = True
    end
    object SmallintField46: TSmallintField
      FieldName = 'SELECIONA'
    end
    object StringField105: TStringField
      FieldName = 'IMAGEM'
      Size = 100
    end
    object MemoField38: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object IntegerField57: TIntegerField
      FieldName = 'QTD_PARCELAS'
    end
    object FloatField281: TFloatField
      FieldName = 'QTD_MINIMO'
    end
    object FloatField282: TFloatField
      FieldName = 'QTD_MAXIMO'
    end
    object IntegerField58: TIntegerField
      FieldName = 'TIPO'
      Required = True
    end
    object SmallintField47: TSmallintField
      FieldName = 'USA_UF'
    end
    object IntegerField59: TIntegerField
      FieldName = 'OPERADOR'
    end
    object StringField106: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object MemoField39: TMemoField
      FieldName = 'GRADE_CMD'
      BlobType = ftMemo
    end
    object FloatField283: TFloatField
      FieldName = 'QTD_CMD'
    end
    object IntegerField60: TIntegerField
      FieldName = 'TABELA_PRECO'
    end
    object SmallintField48: TSmallintField
      FieldName = 'USA_SERIAL'
    end
    object IntegerField61: TIntegerField
      FieldName = 'DIAS_VALIDADE'
    end
    object MemoField40: TMemoField
      FieldName = 'GRADE_PED_COMPRA'
      BlobType = ftMemo
    end
    object FloatField284: TFloatField
      FieldName = 'QTD_PED_COMPRA'
    end
  end
  object Source_CLIENTESPEDIDO: TUniDataSource
    DataSet = CLIENTESPEDIDO
    Left = 1186
    Top = 22
  end
  object GRADE: TUniTable
    TableName = 'GRADE'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 312
    Top = 324
    object GRADEID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object GRADECODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object GRADEBARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object GRADENOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 75
    end
    object GRADEQTD: TFloatField
      FieldName = 'QTD'
    end
    object GRADEQTD_MINIMO: TFloatField
      FieldName = 'QTD_MINIMO'
    end
    object GRADEQTD_MAXIMO: TFloatField
      FieldName = 'QTD_MAXIMO'
    end
    object GRADECOR: TStringField
      FieldName = 'COR'
      Size = 25
    end
    object GRADETAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 25
    end
    object GRADEATIVO: TSmallintField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object GRADEM: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM GRADE')
    Left = 368
    Top = 320
  end
  object S_GRADEM: TUniDataSource
    DataSet = GRADEM
    Left = 336
    Top = 272
  end
  object UniTable3: TUniTable
    TableName = 'NFE'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 904
    Top = 288
  end
  object UniTable4: TUniTable
    TableName = 'ITENFE'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 904
    Top = 344
  end
  object ITECOMPRAS_REL: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM ITECOMPRAS')
    Left = 280
    Top = 204
    object StringField44: TStringField
      FieldName = 'NOTA'
      Required = True
      Size = 9
    end
    object DateField12: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object IntegerField27: TIntegerField
      FieldName = 'FORNECEDOR'
      Required = True
    end
    object IntegerField28: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object IntegerField29: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField45: TStringField
      FieldKind = fkLookup
      FieldName = 'Descri'#231#227'o'
      LookupDataSet = ESTOQUExxx
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO'
      Size = 45
      Lookup = True
    end
    object StringField46: TStringField
      FieldName = 'BARRAS'
      Size = 14
    end
    object IntegerField30: TIntegerField
      FieldName = 'CFOP'
    end
    object StringField47: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 4
    end
    object StringField48: TStringField
      FieldName = 'CF'
      Size = 10
    end
    object FloatField118: TFloatField
      FieldName = 'QTD'
    end
    object MemoField18: TMemoField
      FieldName = 'GRADE_X'
      BlobType = ftMemo
    end
    object MemoField19: TMemoField
      FieldName = 'GRADE_Y'
      BlobType = ftMemo
    end
    object MemoField20: TMemoField
      FieldName = 'GRADE_QUA'
      BlobType = ftMemo
    end
    object FloatField119: TFloatField
      FieldName = 'PRECO'
    end
    object FloatField120: TFloatField
      FieldName = 'TOTAL'
    end
    object FloatField121: TFloatField
      FieldName = 'ICMS'
    end
    object FloatField122: TFloatField
      FieldName = 'IPI'
    end
    object FloatField123: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object FloatField124: TFloatField
      FieldName = 'TOT_IPI'
    end
    object FloatField125: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object FloatField126: TFloatField
      FieldName = 'DESCONTO'
    end
    object FloatField127: TFloatField
      FieldName = 'OUTRAS_DESP_ACRE'
    end
    object SmallintField19: TSmallintField
      FieldName = 'FIXOU'
    end
    object FloatField128: TFloatField
      FieldName = 'BASE_ICMS_SUB'
    end
    object FloatField129: TFloatField
      FieldName = 'TOT_ICMS_SUB'
    end
    object StringField49: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object DateField13: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object DateField14: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object FloatField130: TFloatField
      FieldName = 'REDUCAO_ICMS'
    end
    object SmallintField20: TSmallintField
      FieldName = 'FIXOU_IPI'
    end
    object SmallintField21: TSmallintField
      FieldName = 'FIXOU_ICMS'
    end
    object FloatField131: TFloatField
      FieldName = 'TOT_ICMS'
    end
    object DateField15: TDateField
      FieldName = 'SAIDA'
    end
    object StringField50: TStringField
      FieldName = 'PIS_ST'
      FixedChar = True
      Size = 2
    end
    object FloatField132: TFloatField
      FieldName = 'PIS_ALIQ'
    end
    object FloatField133: TFloatField
      FieldName = 'PIS_BASE'
    end
    object FloatField134: TFloatField
      FieldName = 'PIS_VALOR_BC'
    end
    object FloatField135: TFloatField
      FieldName = 'TOT_PIS'
    end
    object FloatField136: TFloatField
      FieldName = 'PIS_SUB_BASE'
    end
    object FloatField137: TFloatField
      FieldName = 'PIS_SUB_ALIQ'
    end
    object FloatField138: TFloatField
      FieldName = 'TOT_PIS_SUB'
    end
    object FloatField139: TFloatField
      FieldName = 'PIS_VALOR_BC_SUB'
    end
    object StringField51: TStringField
      FieldName = 'COFINS_ST'
      FixedChar = True
      Size = 2
    end
    object FloatField140: TFloatField
      FieldName = 'COFINS_ALIQ'
    end
    object FloatField141: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object FloatField142: TFloatField
      FieldName = 'COFINS_VALOR_BC'
    end
    object FloatField143: TFloatField
      FieldName = 'TOT_COFINS'
    end
    object FloatField144: TFloatField
      FieldName = 'COFINS_SUB_BASE'
    end
    object FloatField145: TFloatField
      FieldName = 'COFINS_SUB_ALIQ'
    end
    object FloatField146: TFloatField
      FieldName = 'TOT_COFINS_SUB'
    end
    object FloatField147: TFloatField
      FieldName = 'COFINS_VALOR_BC_SUB'
    end
    object FloatField148: TFloatField
      FieldName = 'TOT_ISS'
    end
    object FloatField149: TFloatField
      FieldName = 'TOT_DESCONTO'
    end
    object FloatField150: TFloatField
      FieldName = 'TOT_ACRESCIMO'
    end
    object StringField52: TStringField
      FieldName = 'CST_IPI'
      FixedChar = True
      Size = 2
    end
    object FloatField151: TFloatField
      FieldName = 'PRECO_MAXIMO_CONSUMIDOR'
    end
    object SmallintField22: TSmallintField
      FieldName = 'CALC_PIS_COFINS'
    end
    object FloatField152: TFloatField
      FieldName = 'BASE_ICMS_SUB_RET'
    end
    object FloatField153: TFloatField
      FieldName = 'TOT_ICMS_SUB_RET'
    end
    object StringField53: TStringField
      FieldName = 'CSOSN'
      FixedChar = True
      Size = 4
    end
    object IntegerField66: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IntegerField67: TIntegerField
      FieldName = 'CLIENTE'
    end
  end
  object CLIENTES_REL: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Left = 1162
    Top = 176
  end
  object FORNECEDORES_REL: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM FORNECEDORES')
    Left = 1096
    Top = 176
  end
  object PRODUTOS_REL: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'select first 1 codigo from PRODUTOS order by codigo')
    Left = 1096
    Top = 241
  end
  object Query_estoque: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Left = 320
    Top = 384
  end
  object ESTOQUE: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Left = 192
    Top = 320
  end
  object CLIENTESx: TUniQuery
    Connection = DADOS_CADASTROSf.UniConnection1
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Left = 280
    Top = 456
  end
  object FORNECEDORESy: TUniTable
    TableName = 'FORNECEDORES'
    Connection = DADOS_CADASTROSf.UniConnection1
    Left = 247
    Top = 62
  end
end
