object DADOSVEICULOSf: TDADOSVEICULOSf
  OldCreateOrder = False
  Height = 745
  Width = 1006
  object VEICULOS: TUniQuery
    UpdatingTable = 'VEICULOS'
    KeyFields = 'CODIGO'
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'Select * from VEICULOS')
    SpecificOptions.Strings = (
      'InterBase.KeyGenerator=GEN_VEICULOS')
    Left = 256
    Top = 24
    object VEICULOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object VEICULOSCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object VEICULOSEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
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
    object VEICULOSDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = XCLIENTES
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CLIENTE'
      Size = 40
      Lookup = True
    end
  end
  object ABASTECI: TUniQuery
    UpdatingTable = 'ABASTECI'
    KeyFields = 'CODIGO'
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'Select * from ABASTECI')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_ABASTECI')
    Left = 256
    Top = 88
    object ABASTECICODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object ABASTECIVEICULO: TIntegerField
      FieldName = 'VEICULO'
    end
    object ABASTECICLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object ABASTECIVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object ABASTECIEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object ABASTECIPLACA: TStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object ABASTECIDATA: TDateField
      FieldName = 'DATA'
    end
    object ABASTECIHORA: TTimeField
      FieldName = 'HORA'
    end
    object ABASTECIKM_INICIO: TFloatField
      FieldName = 'KM_INICIO'
    end
    object ABASTECIKM_FIM: TFloatField
      FieldName = 'KM_FIM'
    end
    object ABASTECILITROS: TFloatField
      FieldName = 'LITROS'
    end
    object ABASTECIVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object ABASTECIDescVend: TStringField
      FieldKind = fkLookup
      FieldName = 'DescVend'
      LookupDataSet = VENDEDORx
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'VENDEDOR'
      Size = 45
      Lookup = True
    end
    object ABASTECIDescVeic: TStringField
      FieldKind = fkLookup
      FieldName = 'DescVeic'
      LookupDataSet = VEICULOSx
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'VEICULO'
      Size = 45
      Lookup = True
    end
  end
  object MANUTEM: TUniQuery
    UpdatingTable = 'MANUTEM'
    KeyFields = 'CODIGO'
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'Select * from MANUTEM')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_MANUTEM')
    Left = 256
    Top = 208
    object MANUTEMCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object MANUTEMVEICULO: TIntegerField
      FieldName = 'VEICULO'
    end
    object MANUTEMVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object MANUTEMEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object MANUTEMSERVICO: TStringField
      FieldName = 'SERVICO'
      Size = 40
    end
    object MANUTEMPLACA: TStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object MANUTEMDATA: TDateField
      FieldName = 'DATA'
    end
    object MANUTEMHORA: TTimeField
      FieldName = 'HORA'
    end
    object MANUTEMVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object MANUTEMDescVend: TStringField
      FieldKind = fkLookup
      FieldName = 'DescVend'
      LookupDataSet = VENDEDORx
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'VENDEDOR'
      Lookup = True
    end
    object MANUTEMDescVeic: TStringField
      FieldKind = fkLookup
      FieldName = 'DescVeic'
      LookupDataSet = VEICULOSx
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'VEICULO'
      Lookup = True
    end
  end
  object OLEO: TUniQuery
    UpdatingTable = 'OLEO'
    KeyFields = 'CODIGO'
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'Select * from OLEO')
    SpecificOptions.Strings = (
      'InterBase.GeneratorMode=gmInsert'
      'InterBase.KeyGenerator=GEN_OLEO')
    Left = 256
    Top = 152
    object OLEOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object OLEOVEICULO: TIntegerField
      FieldName = 'VEICULO'
    end
    object OLEOCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object OLEOEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object OLEOPLACA: TStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object OLEODATA: TDateField
      FieldName = 'DATA'
    end
    object OLEOHORA: TTimeField
      FieldName = 'HORA'
    end
    object OLEOKM_INICIO: TFloatField
      FieldName = 'KM_INICIO'
    end
    object OLEOKM_FIM: TFloatField
      FieldName = 'KM_FIM'
    end
    object OLEODescVeic: TStringField
      FieldKind = fkLookup
      FieldName = 'DescVeic'
      LookupDataSet = VEICULOSx
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'VEICULO'
      Lookup = True
    end
  end
  object XCLIENTES: TUniTable
    TableName = 'CLIENTES'
    Left = 328
    Top = 16
  end
  object VENDEDORx: TUniTable
    TableName = 'VENDEDOR'
    Left = 328
    Top = 88
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
  object VEICULOSx: TUniTable
    TableName = 'VEICULOS'
    Left = 408
    Top = 88
    object VEICULOSxCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object VEICULOSxCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object VEICULOSxEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object VEICULOSxNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object VEICULOSxMODELO: TStringField
      FieldName = 'MODELO'
      Size = 40
    end
    object VEICULOSxVEICULO: TStringField
      FieldName = 'VEICULO'
    end
    object VEICULOSxTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object VEICULOSxPLACA: TStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object VEICULOSxCHASSIS: TStringField
      FieldName = 'CHASSIS'
    end
    object VEICULOSxRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Size = 9
    end
    object VEICULOSxMARCA_M: TStringField
      FieldName = 'MARCA_M'
      Size = 40
    end
    object VEICULOSxCOR: TStringField
      FieldName = 'COR'
    end
    object VEICULOSxANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object VEICULOSxANO_MOD: TStringField
      FieldName = 'ANO_MOD'
      Size = 4
    end
    object VEICULOSxOBSERV: TStringField
      FieldName = 'OBSERV'
      Size = 100
    end
  end
end
