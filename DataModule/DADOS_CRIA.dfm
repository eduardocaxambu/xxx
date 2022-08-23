object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 513
  Width = 899
  object UniConnection1: TUniConnection
    ProviderName = 'InterBase'
    Database = '\DADOSFDB\X\DADOS.FDB'
    Username = 'SYSDBA'
    LoginPrompt = False
    Left = 32
    Top = 16
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 144
    Top = 16
  end
  object UniScript1: TUniScript
    SQL.Strings = (
      'CREATE TABLE CLIENTES ('
      '    CODIGO                INTEGER,'
      '    NOME                  VARCHAR(75),'
      '    FANTASIA              VARCHAR(75),'
      '    CONTATO               VARCHAR(75),'
      '    CNPJ                  VARCHAR(19),'
      '    CPF                   VARCHAR(14),'
      '    IE                    VARCHAR(19),'
      '    RG                    VARCHAR(14),'
      '    UF                    CHAR(2) DEFAULT '#39'ZZ'#39','
      '    TELEFONE              VARCHAR(14),'
      '    FAX                   VARCHAR(14),'
      '    CELULAR               VARCHAR(14),'
      '    FIS_JUR               CHAR(1) DEFAULT '#39'F'#39','
      '    TIPO                  CHAR(1) DEFAULT '#39'C'#39','
      '    VENDEDOR              INTEGER,'
      '    LIMITE_CREDITO        NUMERIC(15,4),'
      '    COD_CONVENIO          INTEGER,'
      '    CONVENIO              SMALLINT DEFAULT 0,'
      '    DIA_ACERTO            SMALLINT DEFAULT 1,'
      '    PER_CONVENIO          NUMERIC(15,4),'
      '    A_RECEBER             NUMERIC(15,4),'
      '    CONCEDER_CREDITO      SMALLINT DEFAULT 1,'
      '    ATRASADO              NUMERIC(15,4),'
      '    RECEBIDO              NUMERIC(15,4),'
      '    OBSERVACOES           BLOB SUB_TYPE 1 SEGMENT SIZE 80,'
      '    ATIVO                 SMALLINT DEFAULT 1,'
      '    OPERADOR              INTEGER DEFAULT 0,'
      '    COD_TABELA_PRECO      INTEGER,'
      '    FOTO                  BLOB SUB_TYPE 0 SEGMENT SIZE 4096,'
      '    SUFRAMA               VARCHAR(9),'
      '    USA_DESCONTO_SUFRAMA  SMALLINT DEFAULT 0,'
      '    IDESTRANGEIRO         VARCHAR(20)'
      ');')
    Connection = UniConnection1
    Left = 240
    Top = 16
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'Select * from Clientes')
    Left = 328
    Top = 16
  end
end
