unit FUNCOES_DADOS;

interface

  uses
    System.SysUtils;

  procedure PRODUTOS(PRODUTOS_ANO_MES_DIA_HORA:string);

  procedure Criadados(banco:string);
  procedure PADRAO;
  // procedure CONF_PADRAOX;
  procedure CONF_PADRAOX(NomedaTabela:string);
  procedure Caixa;
  procedure VEICULOS;
  procedure Estoque;
  procedure RECEBER_tabela(NomedaTabela:string);
  procedure Loja;
  procedure LIVROS;
  procedure PEDIDO;
  procedure ORCAMENTO;
  procedure CriaObjetos;
  procedure UltimosRegistros;
  procedure EntradaSaida;
  procedure Credito;
  procedure TerminalPreferencias;
  function INVENTARIO(Tabela: string): string;
  function RECEBIMENTO(Tabela: string): string;
  function CriaTabelaDuplicata(Tabela: string): string;
  function DiversasFormasPagamento(Tabela: string): string;
  function CriaTabelaVendas(Tabela: string): string;
  function CriaTabela(Tabela: string): string;
  function Pessoa(Tabela: string): string;
  function GRUPO(Tabela: string): string;
  function ITEVENPED(Tabela: string): string;
  function VenPed(Tabela: string): string;
  function VENDAS_ECF(Tabela: string): string;
  function OBSERVACAO(Tabela: string): string;
  function ComPed(Tabela: string): string;
  function ITEComPED(Tabela: string): string;
  function Grade(Tabela: string): string;
  function CurvaAbc(Tabela: string): string;
  function PedEntSai(Tabela: string): string;
  function ApagaTabela(Tabela: string): string;
  function ApagaTabelaSo(Tabela: string): string;

implementation

uses DADOS_CRIA, FUNCOES;

procedure Criadados(banco:string);
var BancodeDados:string;
begin
  {
  if banco='' then
    BancodeDados:='\DADOSFDB\X\DADOS2.FDB'
  else
    BancodeDados:=banco;  // '\DADOSFDB\X\DADOS2.FDB';
    }

  BancodeDados:='\DADOSFDB\X\DADOS2.FDB';

  if fileexists('BASE.INI') then
    BancodeDados := percorreArquivoTextoValidaBancodeDados('BASE.INI');


  with DataModule2.UniScript1, SQL do
  begin
  Clear;
    Add('CREATE DATABASE "'+BancodeDados+'"');
    Add('USER "SYSDBA" PASSWORD "masterkey"');
    Add('PAGE_SIZE 4096');
    // Add('USER "sysdba" PASSWORD "masterkey"');


    Execute;
  end;

  Pessoa('CLIENTES');
  Pessoa('VENDEDORES');
  Pessoa('FORNECEDORES');
  Pessoa('EMITENTE');
  Pessoa('OPERADOR');

  GRUPO('GRUPO');
  GRUPO('GRUPOCLI');
  GRUPO('GRUPOFOR');

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE UNIDADES (');
    Add('UND   CHAR(3),');
    Add('NOME  VARCHAR(35)');
    Add(');');

    Execute;
  end;


  INVENTARIO('INVENTARIO');
  INVENTARIO('SIMULADO');

  PRODUTOS('PRODUTOS');
  PRODUTOS('PRODUTOS_DELETADOS');

  {
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE PRODUTOS (');
    Add('CODIGO                      INTEGER NOT NULL,');
    Add('CODIGO2                     INTEGER,');
    Add('CODIGO3                     INTEGER,');
    Add('BARRAS                      VARCHAR(14),');
    Add('APELIDO                     VARCHAR(14),');
    Add('PADRAO_BARRAS               VARCHAR(15),');
    Add('FONTE_BARRAS                VARCHAR(15),');
    Add('NOME                        VARCHAR(75),');
    Add('DESCRICAO                   VARCHAR(75),');
    Add('QTD                         NUMERIC(15,4) DEFAULT 0,');
    Add('PRECO_CONS                  NUMERIC(15,4),');
    Add('PRECO_CONS1                 NUMERIC(15,4),');
    Add('PRECO_CONS2                 NUMERIC(15,4),');
    Add('PRECO_CONS3                 NUMERIC(15,4),');
    Add('PRECO_CONS4                 NUMERIC(15,4),');
    Add('PRECO_CONS5                 NUMERIC(15,4),');
    Add('PRECO_CONS6                 NUMERIC(15,4),');
    Add('PRECO_REV                   NUMERIC(15,4),');
    Add('PRECO_PZ_CONS               NUMERIC(15,4),');
    Add('PRECO_PZ_REV                NUMERIC(15,4),');
    Add('UND_V                       CHAR(3),');
    Add('UND_C                       CHAR(3),');
    Add('FATOR                       VARCHAR(10),');
    Add('GRUPO                       INTEGER,');
    Add('FORNECEDOR                  INTEGER,');
    Add('USA_GRADE                   SMALLINT DEFAULT 0,');
    Add('GRADE_X                     BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_Y                     BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_CON                   BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_QUA                   BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_PED                   BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_OS                    BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('QTD_CON                     NUMERIC(15,4) DEFAULT 0,');
    Add('QTD_PED                     NUMERIC(15,4) DEFAULT 0,');
    Add('QTD_OS                      NUMERIC(15,4) DEFAULT 0,');
    Add('PRECO_CUSTO                 NUMERIC(15,4),');
    Add('USA_INDICE                  SMALLINT DEFAULT 0,');
    Add('ATIVO                       SMALLINT DEFAULT 1,');
    Add('SELECIONA                   SMALLINT DEFAULT 0,');
    Add('IMAGEM                      VARCHAR(100),');
    Add('OBS                         BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('QTD_PARCELAS                INTEGER DEFAULT 1,');
    Add('QTD_MINIMO                  NUMERIC(15,4) DEFAULT 0,');
    Add('QTD_MAXIMO                  NUMERIC(15,4) DEFAULT 0,');
    Add('TIPO                        INTEGER,');
    Add('USA_UF                      SMALLINT DEFAULT 0,');
    Add('OPERADOR                    INTEGER DEFAULT 0,');
    Add('LOCALIZACAO                 VARCHAR(50),');
    Add('GRADE_CMD                   BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('QTD_CMD                     NUMERIC(15,4) DEFAULT 0.0,');
    Add('TABELA_PRECO                INTEGER DEFAULT 0,');
    Add('USA_SERIAL                  SMALLINT DEFAULT 0,');
    Add('DIAS_VALIDADE               INTEGER default 0,');
    Add('GRADE_PED_COMPRA            BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('QTD_PED_COMPRA              NUMERIC(15,4) DEFAULT 0,');
    Add('NCM                         VARCHAR(10),');
    Add('ULTIMA_COMPRA               DATE,');
    Add('ULTIMA_VENDA                DATE,');
    Add('DATA_CADASTRO               DATE DEFAULT CURRENT_DATE,');
    Add('ULTIMO_PRECO                NUMERIC(15,4) DEFAULT 0.0,');
    Add('CUSTO_MEDIO                 NUMERIC(15,4),');
    Add('TRIBUTACAO                  VARCHAR(25),');
    Add('ST                          CHAR(3),');
    Add('CF                          VARCHAR(10),');
    Add('IPI                         NUMERIC(15,4) DEFAULT 0,');
    Add('ICMS_RED                    NUMERIC(15,4) DEFAULT 0,');
    Add('ICMS_SUB                    NUMERIC(15,4) DEFAULT 0,');
    Add('ICMS                        NUMERIC(15,4) DEFAULT 0,');
    Add('TOTALIZADOR                 CHAR(2),');
    Add('CONTROLADO                  SMALLINT DEFAULT 0,');
    Add('REGISTRO_MS                 VARCHAR(20),');
    Add('COD_ABC                     VARCHAR(15),');
    Add('PIS_ST                      CHAR(2),');
    Add('PIS_BASE                    NUMERIC(15,4),');
    Add('PIS_ALIQ                    NUMERIC(15,4),');
    Add('PIS_SUB_BASE                NUMERIC(15,4),');
    Add('PIS_SUB_ALIQ                NUMERIC(15,4),');
    Add('COFINS_ST                   CHAR(2),');
    Add('COFINS_BASE                 NUMERIC(15,4),');
    Add('COFINS_ALIQ                 NUMERIC(15,4),');
    Add('COFINS_SUB_BASE             NUMERIC(15,4),');
    Add('COFINS_SUB_ALIQ             NUMERIC(15,4),');
    Add('IAT                         CHAR(1),');
    Add('IPPT                        CHAR(1),');
    Add('COD_ANP                     VARCHAR(15),');
    Add('CODIGO_CONTABIL             VARCHAR(30),');
    Add('CSOSN                       CHAR(4),');
    Add('COMISSAO                    NUMERIC(15,4) DEFAULT 0,');
    Add('TECNICO                     INTEGER,');
    Add('TIPOISSQN                   CHAR(1),');
    Add('CODATIVIDADE                INTEGER,');
    Add('TIPO_UND                    VARCHAR(7),');
    Add('ISSQN_ALIQ                  NUMERIC(15,4) DEFAULT 0,');
    Add('ISSQN_BASE                  NUMERIC(15,4) DEFAULT 0,');
    Add('ULTIMA_ALTERACAO            DATE DEFAULT CURRENT_DATE,');
    Add('SETOR                       INTEGER,');
    Add('STIPI                       CHAR(2),');
    Add('TIPO_ITEM                   CHAR(2),');
    Add('COD_GENERO                  INTEGER,');
    Add('CLASSE_TERAPEUTICA          SMALLINT,');
    Add('USO_PROLONGADO              CHAR(1),');
    Add('UNIDADE_MEDIDA_MEDICAMENTO  SMALLINT,');
    Add('PIS_ST_ENTRADA              CHAR(2),');
    Add('PIS_BASE_ENTRADA            NUMERIC(15,4),');
    Add('PIS_ALIQ_ENTRADA            NUMERIC(15,4),');
    Add('PIS_SUB_BASE_ENTRADA        NUMERIC(15,4),');
    Add('PIS_SUB_ALIQ_ENTRADA        NUMERIC(15,4),');
    Add('COFINS_ST_ENTRADA           CHAR(2),');
    Add('COFINS_BASE_ENTRADA         NUMERIC(15,4),');
    Add('COFINS_ALIQ_ENTRADA         NUMERIC(15,4),');
    Add('COFINS_SUB_BASE_ENTRADA     NUMERIC(15,4),');
    Add('COFINS_SUB_ALIQ_ENTRADA     NUMERIC(15,4),');
    Add('ALIQI                       NUMERIC(15,4) DEFAULT 0,');
    Add('FCI                         VARCHAR(36),');
    Add('PERCENTUAL_GAS_NATURAL      NUMERIC(15,4) DEFAULT 0,');
    Add('PERCENTUAL_DIFERIMENTO      NUMERIC(15,4) DEFAULT 0,');
    Add('COD_NAT_REC                 INTEGER DEFAULT 0,');
    Add('ID_NCM                      SMALLINT');
    Add(');');

    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_PRODUTOS;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE PRODUTOS ADD CONSTRAINT PK_PRODUTOS PRIMARY KEY (CODIGO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_PRODUTOS2 on PRODUTOS (NOME);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_PRODUTOS3 on PRODUTOS (BARRAS);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_PRODUTOS4 on PRODUTOS (APELIDO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_PRODUTOS5 on PRODUTOS (DESCRICAO);');
    Execute;
  end;
  }

  Grade('Grade');

  PADRAO;

  Caixa;

  VEICULOS;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE PAGAR (');
    // Add('ID          INTEGER NOT NULL,');
    Add('CONTROLE    INTEGER NOT NULL,');
    Add('NUMERO      VARCHAR(9),');
    Add('ORDEM       CHAR(2),');
    Add('CODIGO      INTEGER,');
    Add('TIPO        CHAR(1),');
    Add('MODELO      CHAR(2),');
    Add('SERIE       CHAR(3),');
    Add('SUBSERIE    CHAR(2),');
    Add('HISTORICO   VARCHAR(30),');
    Add('EMISSAO     DATE DEFAULT CURRENT_DATE,');
    Add('VENCIMENTO  DATE DEFAULT CURRENT_DATE,');
    Add('VALOR       NUMERIC(15,4) DEFAULT 0,');
    Add('PAGAMENTO   DATE,');
    Add('VALOR_PAGO  NUMERIC(15,4) DEFAULT 0,');
    Add('ACRESCIMO   NUMERIC(15,4) DEFAULT 0,');
    Add('DESCONTO    NUMERIC(15,4) DEFAULT 0,');
    Add('FIXO        SMALLINT DEFAULT 1,');
    Add('JUROS       NUMERIC(15,4) DEFAULT 0,');
    Add('TAXA_JURO   NUMERIC(15,4) DEFAULT 0.0,');
    Add('TIPO_JURO   CHAR(1),');
    Add('OPERADOR    INTEGER,');
    Add('ESPECIE     VARCHAR(25),');
    Add('CONTA       INTEGER,');
    Add('CUSTO       INTEGER');
    Add(');');

    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_PAGAR;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE PAGAR ADD CONSTRAINT PK_PAGAR PRIMARY KEY (CONTROLE);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_PAGAR2 on PAGAR (NUMERO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE BANCOS (');
    Add('BANCO       VARCHAR(5),');
    Add('NOME_BANCO  VARCHAR(100)');
    Add(');');

    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE CONTAS(');
    Add('CODIGO INTEGER,');
    Add('CONTA VARCHAR(100),');
    Add('DESCRICAO VARCHAR(75),');
    Add('RESULTADO CHAR(1),');
    Add('VALOR NUMERIC(15,4)');
    Add(');');

    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE CENCUSTO(');
    Add('CODIGO INTEGER,');
    Add('CUSTO VARCHAR(100),');
    Add('DESCRICAO VARCHAR(75),');
    Add('VALOR NUMERIC(15,4)');
    Add(');');

    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE CIDADES (');
    Add('CODCIDADE  INTEGER,');
    Add('CIDADE     VARCHAR(50),');
    Add('UF         CHAR(2)');
    Add(')');

    Execute;
  end;

  ComPed('COMPRAS');

  ITEComPED('ITECOMPRAS');

  ComPed('NFE');

  ITEComPED('ITENFE');

  ComPed('PEDIDOS');

  ITEComPED('ITEPEDIDOS');

  VenPed('PED_CLI');

  ITEVENPED('ITEPEDIDOSCLI');

  VenPed('VENDAS');

  ITEVENPED('ITEVENDAS');

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE AGENCIA (');
    Add('CONTA                VARCHAR(10),');
    Add('DIGITOCTA            CHAR(1),');
    Add('BANCO                VARCHAR(5),');
    Add('NOME_BANCO           VARCHAR(30),');
    Add('AGENCIA              VARCHAR(10),');
    Add('DIGITOAG             CHAR(1),');
    Add('CARTEIRA             CHAR(3),');
    Add('CEDENTE              VARCHAR(15),');
    Add('DIGITOCED            CHAR(1),');
    Add('ENDERECO             VARCHAR(100),');
    Add('CIDADE               VARCHAR(50),');
    Add('UF                   CHAR(2),');
    Add('CEP                  VARCHAR(9),');
    Add('LIMITE               NUMERIC(15,4) DEFAULT 0,');
    Add('NOSSONUMERO          VARCHAR(20),');
    Add('NOSSONUMERO_INICIAL  VARCHAR(20),');
    Add('NOSSONUMERO_FINAL    VARCHAR(20),');
    Add('VARIACAO_CARTEIRA    VARCHAR(3),');
    Add('EMISSOR_BOLETO       INTEGER,');
    Add('CONF_NOSSONUMERO     INTEGER,');
    Add('CONVENIO             VARCHAR(20),');
    Add('COOPERATIVA          SMALLINT DEFAULT 0,');
    Add('NOME_COOP            VARCHAR(40),');
    Add('CNPJ_COOP            VARCHAR(19),');
    Add('AGENCIA_COOP         VARCHAR(10),');
    Add('DVAGENCIA_COOP       CHAR(1),');
    Add('TIPO_DISTRIBUICAO    INTEGER');
    Add(');');
    Execute;
  end;

  Pessoa('USUARIOS');

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE ESTADOS (');
    Add('CODIGO     VARCHAR(2),');
    Add('NOME      VARCHAR(30)');
    Add(');');
    Execute;
  end;

  CurvaAbc('CurvaABC');
  PedEntSai('EntrRela');
  PedEntSai('SaidRela');
  PedEntSai('PediRela');
  PedEntSai('EntrSaid');

  DiversasFormasPagamento('DiversasFormas');

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE MENSAGEM (');
    Add('MEN_TEXTO1     VARCHAR(50),');
    Add('MEN_TEXTO2     VARCHAR(50),');
    Add('MEN_TEXTO3     VARCHAR(50),');
    Add('MEN_TEXTO4     VARCHAR(50),');
    Add('MEN_TEXTO5     VARCHAR(50)');
    Add(');');
    Execute;
  end;

  CriaObjetos;
  UltimosRegistros;

  OBSERVACAO('OBSERVACAO');

  EntradaSaida;

  Credito;

  TerminalPreferencias;
end;

function INVENTARIO(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE  '+Tabela+' (');
    Add('ID            INTEGER NOT NULL,');
    Add('INFORMACOES   VARCHAR(100),');
    Add('DATA          DATE,');
    Add('HORA          TIME DEFAULT CURRENT_TIME,');
    Add('TABELA        VARCHAR(100)');
    Add(');');

    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+Tabela+';');
    Execute;
  end;

end;


function RECEBIMENTO(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE  '+Tabela+' (');
    Add('ID              INTEGER NOT NULL,');
    Add('IDCONTA         INTEGER NOT NULL,');
    Add('DATA            DATE,');
    Add('HORA            TIME DEFAULT CURRENT_TIME,');
    Add('VALOR_RECEBIDO  NUMERIC(15,4) DEFAULT 0,');
    Add('BAIXAESTORNO    VARCHAR(10),');
    Add('MEIOSPAGAMENTO  VARCHAR(150)');
    Add(');');

    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+Tabela+';');
    Execute;
  end;

end;


procedure PRODUTOS(PRODUTOS_ANO_MES_DIA_HORA:string);
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE '+PRODUTOS_ANO_MES_DIA_HORA+' (');
    Add('CODIGO                      INTEGER NOT NULL,');
    Add('CODIGO2                     INTEGER,');
    Add('CODIGO3                     INTEGER,');
    Add('BARRAS                      VARCHAR(14),');
    Add('APELIDO                     VARCHAR(14),');
    Add('PADRAO_BARRAS               VARCHAR(15),');
    Add('FONTE_BARRAS                VARCHAR(15),');
    Add('NOME                        VARCHAR(75),');
    Add('DESCRICAO                   VARCHAR(75),');
    Add('QTD                         NUMERIC(15,4) DEFAULT 0,');
    Add('PRECO_CONS                  NUMERIC(15,4),');
    Add('PRECO_CONS1                 NUMERIC(15,4),');
    Add('PRECO_CONS2                 NUMERIC(15,4),');
    Add('PRECO_CONS3                 NUMERIC(15,4),');
    Add('PRECO_CONS4                 NUMERIC(15,4),');
    Add('PRECO_CONS5                 NUMERIC(15,4),');
    Add('PRECO_CONS6                 NUMERIC(15,4),');
    Add('PRECO_REV                   NUMERIC(15,4),');
    Add('PRECO_PZ_CONS               NUMERIC(15,4),');
    Add('PRECO_PZ_REV                NUMERIC(15,4),');
    Add('UND_V                       CHAR(3),');
    Add('UND_C                       CHAR(3),');
    Add('FATOR                       VARCHAR(10),');
    Add('GRUPO                       INTEGER,');
    Add('FORNECEDOR                  INTEGER,');
    Add('USA_GRADE                   SMALLINT DEFAULT 0,');
    Add('GRADE_X                     BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_Y                     BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_CON                   BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_QUA                   BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_PED                   BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_OS                    BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('QTD_CON                     NUMERIC(15,4) DEFAULT 0,');
    Add('QTD_PED                     NUMERIC(15,4) DEFAULT 0,');
    Add('QTD_OS                      NUMERIC(15,4) DEFAULT 0,');
    Add('PRECO_CUSTO                 NUMERIC(15,4),');
    Add('USA_INDICE                  SMALLINT DEFAULT 0,');
    Add('ATIVO                       SMALLINT DEFAULT 1,');
    Add('SELECIONA                   SMALLINT DEFAULT 0,');
    Add('IMAGEM                      VARCHAR(100),');
    Add('OBS                         BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('QTD_PARCELAS                INTEGER DEFAULT 1,');
    Add('QTD_MINIMO                  NUMERIC(15,4) DEFAULT 0,');
    Add('QTD_MAXIMO                  NUMERIC(15,4) DEFAULT 0,');
    Add('TIPO                        INTEGER,');
    Add('USA_UF                      SMALLINT DEFAULT 0,');
    Add('OPERADOR                    INTEGER DEFAULT 0,');
    Add('LOCALIZACAO                 VARCHAR(50),');
    Add('GRADE_CMD                   BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('QTD_CMD                     NUMERIC(15,4) DEFAULT 0.0,');
    Add('TABELA_PRECO                INTEGER DEFAULT 0,');
    Add('USA_SERIAL                  SMALLINT DEFAULT 0,');
    Add('DIAS_VALIDADE               INTEGER default 0,');
    Add('GRADE_PED_COMPRA            BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('QTD_PED_COMPRA              NUMERIC(15,4) DEFAULT 0,');
    Add('NCM                         VARCHAR(10),');
    Add('ULTIMA_COMPRA               DATE,');
    Add('ULTIMA_VENDA                DATE,');
    Add('DATA_CADASTRO               DATE DEFAULT CURRENT_DATE,');
    Add('ULTIMO_PRECO                NUMERIC(15,4) DEFAULT 0.0,');
    Add('CUSTO_MEDIO                 NUMERIC(15,4),');
    Add('TRIBUTACAO                  VARCHAR(25),');
    Add('ST                          CHAR(3),');
    Add('CF                          VARCHAR(10),');
    Add('IPI                         NUMERIC(15,4) DEFAULT 0,');
    Add('ICMS_RED                    NUMERIC(15,4) DEFAULT 0,');
    Add('ICMS_SUB                    NUMERIC(15,4) DEFAULT 0,');
    Add('ICMS                        NUMERIC(15,4) DEFAULT 0,');
    Add('TOTALIZADOR                 CHAR(2),');
    Add('CONTROLADO                  SMALLINT DEFAULT 0,');
    Add('REGISTRO_MS                 VARCHAR(20),');
    Add('COD_ABC                     VARCHAR(15),');
    Add('PIS_ST                      CHAR(2),');
    Add('PIS_BASE                    NUMERIC(15,4),');
    Add('PIS_ALIQ                    NUMERIC(15,4),');
    Add('PIS_SUB_BASE                NUMERIC(15,4),');
    Add('PIS_SUB_ALIQ                NUMERIC(15,4),');
    Add('COFINS_ST                   CHAR(2),');
    Add('COFINS_BASE                 NUMERIC(15,4),');
    Add('COFINS_ALIQ                 NUMERIC(15,4),');
    Add('COFINS_SUB_BASE             NUMERIC(15,4),');
    Add('COFINS_SUB_ALIQ             NUMERIC(15,4),');
    Add('IAT                         CHAR(1),');
    Add('IPPT                        CHAR(1),');
    Add('COD_ANP                     VARCHAR(15),');
    Add('CODIGO_CONTABIL             VARCHAR(30),');
    Add('CSOSN                       CHAR(4),');
    Add('COMISSAO                    NUMERIC(15,4) DEFAULT 0,');
    Add('TECNICO                     INTEGER,');
    Add('TIPOISSQN                   CHAR(1),');
    Add('CODATIVIDADE                INTEGER,');
    Add('TIPO_UND                    VARCHAR(7),');
    Add('ISSQN_ALIQ                  NUMERIC(15,4) DEFAULT 0,');
    Add('ISSQN_BASE                  NUMERIC(15,4) DEFAULT 0,');
    Add('ULTIMA_ALTERACAO            DATE DEFAULT CURRENT_DATE,');
    Add('SETOR                       INTEGER,');
    Add('STIPI                       CHAR(2),');
    Add('TIPO_ITEM                   CHAR(2),');
    Add('COD_GENERO                  INTEGER,');
    Add('CLASSE_TERAPEUTICA          SMALLINT,');
    Add('USO_PROLONGADO              CHAR(1),');
    Add('UNIDADE_MEDIDA_MEDICAMENTO  SMALLINT,');
    Add('PIS_ST_ENTRADA              CHAR(2),');
    Add('PIS_BASE_ENTRADA            NUMERIC(15,4),');
    Add('PIS_ALIQ_ENTRADA            NUMERIC(15,4),');
    Add('PIS_SUB_BASE_ENTRADA        NUMERIC(15,4),');
    Add('PIS_SUB_ALIQ_ENTRADA        NUMERIC(15,4),');
    Add('COFINS_ST_ENTRADA           CHAR(2),');
    Add('COFINS_BASE_ENTRADA         NUMERIC(15,4),');
    Add('COFINS_ALIQ_ENTRADA         NUMERIC(15,4),');
    Add('COFINS_SUB_BASE_ENTRADA     NUMERIC(15,4),');
    Add('COFINS_SUB_ALIQ_ENTRADA     NUMERIC(15,4),');
    Add('ALIQI                       NUMERIC(15,4) DEFAULT 0,');
    Add('FCI                         VARCHAR(36),');
    Add('PERCENTUAL_GAS_NATURAL      NUMERIC(15,4) DEFAULT 0,');
    Add('PERCENTUAL_DIFERIMENTO      NUMERIC(15,4) DEFAULT 0,');
    Add('COD_NAT_REC                 INTEGER DEFAULT 0,');
    Add('ID_NCM                      SMALLINT');
    Add(');');

    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+PRODUTOS_ANO_MES_DIA_HORA+';');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE '+PRODUTOS_ANO_MES_DIA_HORA+' ADD CONSTRAINT PK_'+PRODUTOS_ANO_MES_DIA_HORA+' PRIMARY KEY (CODIGO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+PRODUTOS_ANO_MES_DIA_HORA+'2 on '+PRODUTOS_ANO_MES_DIA_HORA+' (NOME);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+PRODUTOS_ANO_MES_DIA_HORA+'3 on '+PRODUTOS_ANO_MES_DIA_HORA+' (BARRAS);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+PRODUTOS_ANO_MES_DIA_HORA+'4 on '+PRODUTOS_ANO_MES_DIA_HORA+' (APELIDO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+PRODUTOS_ANO_MES_DIA_HORA+'5 on '+PRODUTOS_ANO_MES_DIA_HORA+' (DESCRICAO);');
    Execute;
  end;
end;

procedure UltimosRegistros;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE UltimosRegistros(');
    Add('CLIENTES INTEGER,');
    Add('FORNECEDORES INTEGER,');
    Add('Produtos INTEGER,');
    Add('Grupos INTEGER,');
    Add('Veiculos INTEGER,');
    Add('Oleos INTEGER,');
    Add('Vendas INTEGER,');
    Add('VENDEDORES INTEGER,');
    Add('Historicos INTEGER,');
    Add('Substoricos INTEGER');
    Add(');');

    Execute;
  end;
end;

procedure CriaObjetos;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE OBJETOS(');
    Add('CODIGO       INTEGER NOT NULL,');
    Add('DESCRICAO    VARCHAR(45),');
    Add('IDENTIFIC1   VARCHAR(20),');
    Add('IDENTIFIC2   VARCHAR(20),');
    Add('IDENTIFIC3   VARCHAR(20),');
    Add('PROBLEMA     VARCHAR(60),');
    Add('PRISMA       VARCHAR(10),');
    Add('NUMERO       INTEGER,');
    Add('VALOR        NUMERIC(15,4) DEFAULT 0.0,');
    Add('REVGARAN     DATE DEFAULT CURRENT_DATE,');
    Add('ATIVO        CHAR(1)');
    Add(');');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_OBJETOS;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE IDENTIFI(');
    Add('IDENTIFIC   VARCHAR(20)');
    Add(');');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE Situacao(');
    Add('TIPO   VARCHAR(20)');
    Add(');');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE TIPOATEN(');
    Add('TIPO   VARCHAR(20)');
    Add(');');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE ORDENS(');
    Add('NUMERO            INTEGER NOT NULL,');
    Add('DATA              DATE DEFAULT CURRENT_DATE,');
    Add('HORA              VARCHAR(5),');
    Add('CodCli            INTEGER,');
    Add('CLIENTE           VARCHAR(35),');
    Add('CONTATO           VARCHAR(35),');
    Add('VLRTOTSERV        NUMERIC(15,4) DEFAULT 0.0,');
    Add('VLRTOTPECA        NUMERIC(15,4) DEFAULT 0.0,');
    Add('VLRFRETE          NUMERIC(15,4) DEFAULT 0.0,');
    Add('VLRTOTALOS        NUMERIC(15,4) DEFAULT 0.0,');
    Add('OBSERVACAO        VARCHAR(254),');
    Add('TIPO_ATEND        VARCHAR(10),');
    Add('PRISMA            VARCHAR(10),');
    Add('DATAPREENT        DATE DEFAULT CURRENT_DATE,');
    Add('HORAPREENT        VARCHAR(5),');
    Add('DATAENTREG        DATE DEFAULT CURRENT_DATE,');
    Add('HORAENTREG        VARCHAR(5),');
    Add('STATUS            VARCHAR(1),');
    Add('SITUACOES         VARCHAR(25),');
    Add('ATENDENTES        VARCHAR(40)');
    Add(');');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_ORDENS;');
    Execute;
  end;

  CriaTabela('PRODSERV');

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE Atendent(');
    Add('ID               INTEGER,');
    Add('SITUACOES   VARCHAR(20),');
    Add('ATIVO            VARCHAR(1)');
    Add(');');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE ITEMOBJE(');
    Add('ID                INTEGER NOT NULL,');
    Add('NUMERO            INTEGER,');
    Add('CODIGO            INTEGER,');
    Add('IDENTIFIC1        VARCHAR(20),');
    Add('IDENTIFIC2        VARCHAR(20),');
    Add('IDENTIFIC3        VARCHAR(20),');
    Add('DESCRICAO         VARCHAR(45),');
    Add('DEFEITO           VARCHAR(254),');
    Add('DEFEITOCO         VARCHAR(254),');
    Add('SOLUCAO           VARCHAR(254),');
    Add('PRISMA            VARCHAR(3),');
    Add('PROXREVGAR        DATE DEFAULT CURRENT_DATE,');
    Add('VALOR             NUMERIC(15,4) DEFAULT 0.0');
    Add(');');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_ITEMOBJE;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE SEITEMOB(');
    Add('ITEMOBJE             NUMERIC(15,4) DEFAULT 0.0');
    Add(');');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE SEPROSER(');
    Add('PRODSERV             NUMERIC(15,4) DEFAULT 0.0');
    Add(');');
    Execute;
  end;
end;

function CriaTabela(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE '+Tabela+' (');
    Add('CODIGOX           INTEGER NOT NULL,');
    Add('CUPOM             VARCHAR(9) NOT NULL,');
    Add('N_CAIXA           INTEGER DEFAULT 0,');
    Add('TURNO             INTEGER DEFAULT 0,');
    Add('DATA              DATE DEFAULT CURRENT_DATE,');
    Add('HORA              TIME DEFAULT CURRENT_TIME,');
    Add('OPERADOR          INTEGER DEFAULT 0 NOT NULL,');
    Add('ITEM              INTEGER NOT NULL,');
    Add('CODIGO            INTEGER NOT NULL,');
    Add('BARRAS            VARCHAR(14),');
    Add('DESCRICAO         VARCHAR(75),');
    Add('QTD               NUMERIC(15,4) DEFAULT 0,');
    Add('PRECO             NUMERIC(15,4) DEFAULT 0,');
    Add('PRECORAT          NUMERIC(15,4) DEFAULT 0,');
    Add('PRECOPRO          NUMERIC(15,4) DEFAULT 0,');
    Add('TOTAL             NUMERIC(15,4) DEFAULT 0,');
    Add('TOTALRAT          NUMERIC(15,4) DEFAULT 0,');
    Add('DESCONTO          NUMERIC(15,4) DEFAULT 0,');
    Add('ACRESCIMO         NUMERIC(15,4) DEFAULT 0,');
    Add('DESCONTORAT       NUMERIC(15,4) DEFAULT 0,');
    Add('ACRESCIMORAT      NUMERIC(15,4) DEFAULT 0,');
    Add('PRECO_CUSTO       NUMERIC(15,4) DEFAULT 0,');
    Add('VENDEDOR          INTEGER DEFAULT 0,');
    Add('CLIENTE           INTEGER NOT NULL,');
    Add('FORNECEDOR        INTEGER,');
    if Tabela='ITEVENDAS_ECF2' then begin
      Add('TRIBUTACAO        CHAR(3),');
      Add('ICMS              NUMERIC(15,4) DEFAULT 0,');
      Add('ISS               NUMERIC(15,4) DEFAULT 0,');
      Add('UND               CHAR(3),');
      Add('GRADE_X           BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
      Add('GRADE_Y           BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
      Add('GRADE_QUA         BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
      Add('GRADE_VENDIDA     BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
      Add('SERIAL            VARCHAR(40),');
      Add('OUTRAS_DESP_ACRE  NUMERIC(15,4) DEFAULT 0.0,');
      Add('CANCELADO         SMALLINT DEFAULT 0 NOT NULL,');
      Add('OPERADOR_SUP      INTEGER DEFAULT 0 NOT NULL,');
      Add('LOTE              VARCHAR(30),');
      Add('TIPO              SMALLINT,');
      Add('TABELA_PRECO      VARCHAR(30),');
      Add('PIS_ST            CHAR(2),');
      Add('PIS_VALOR_BC      NUMERIC(15,4),');
      Add('PIS_ALIQ          NUMERIC(15,4),');
      Add('TOT_PIS           NUMERIC(15,4),');
      Add('COFINS_ST         CHAR(2),');
      Add('COFINS_VALOR_BC   NUMERIC(15,4),');
      Add('COFINS_ALIQ       NUMERIC(15,4),');
      Add('TOT_COFINS        NUMERIC(15,4),');
      Add('CST_ICMS          CHAR(3),');
      Add('COMISSAO          NUMERIC(15,4),');
      Add('CSOSN             CHAR(4)');
    end;
    if Tabela<>'ITEVENDAS_ECF2' then begin
      Add('MARCADO         CHAR(1),');
      Add('RECEBIDO        NUMERIC(15,4) DEFAULT 0,');
      Add('VENCIMENTO      DATE DEFAULT CURRENT_DATE,');
      Add('PAGAMENTO       DATE DEFAULT CURRENT_DATE,');
      Add('PORTADOR        VARCHAR(50),');
      Add('PROSER          CHAR(1),');
      Add('CODOBJ          INTEGER,');
      Add('NUMERO          INTEGER,');
      Add('ULTIMO          INTEGER');
    end;
    Add(')');

    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+Tabela+';');

    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE '+Tabela+' ADD CONSTRAINT PK_'+Tabela+' PRIMARY KEY (CODIGOX);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+Tabela+'2 on '+Tabela+' (CUPOM);');
    Execute;
  end;
end;

function CriaTabelaDuplicata(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do begin
    clear;
    Add('CREATE TABLE '+Tabela+' (');
    Add('CUPOM         VARCHAR(9) NOT NULL,');
    Add('EMISSAO       DATE DEFAULT CURRENT_DATE,');
    Add('VENCIMENTO    DATE DEFAULT CURRENT_DATE,');
    Add('HORA          TIME DEFAULT CURRENT_TIME,');
    Add('PARCELA       VARCHAR(2),');
    Add('VALOR         NUMERIC(15,4) DEFAULT 0,');
    Add('TIPO          VARCHAR(5)');
    Add(')');
    Execute;
  end;
end;

function DiversasFormasPagamento(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do begin
    clear;
    Add('CREATE TABLE '+Tabela+' (');
    Add('ID                    INTEGER NOT NULL,');
    Add('CUPOM                 VARCHAR(9) NOT NULL,');
    Add('N_CAIXA               INTEGER DEFAULT 0,');
    Add('TURNO                 INTEGER DEFAULT 0,');
    Add('CANCELADO             SMALLINT DEFAULT 0,');
    Add('CODIGO                INTEGER,');
    Add('IDCONTA               INTEGER,');
    Add('FORMADEPAGAMENTO      VARCHAR(75),');
    Add('EMISSAO               DATE DEFAULT CURRENT_DATE,');
    Add('VENCIMENTO            DATE DEFAULT CURRENT_DATE,');
    Add('HORA                  TIME DEFAULT CURRENT_TIME,');
    Add('PARCELA               VARCHAR(2),');
    Add('TOTALPAGO             NUMERIC(15,4) DEFAULT 0,');
    Add('VALOR                 NUMERIC(15,4) DEFAULT 0,');
    Add('TROCO                 NUMERIC(15,4) DEFAULT 0,');
    Add('VENDASCONTAS          CHAR(1),');
    Add('AVISTAPRAZO           CHAR(1)');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+Tabela+';');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE '+Tabela+' ADD CONSTRAINT PK_'+Tabela+' PRIMARY KEY (ID);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+Tabela+'2 on '+Tabela+' (CUPOM);');
    Execute;
  end;
end;

function CriaTabelaVendas(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE '+Tabela+' (');
    Add('CUPOM             VARCHAR(9) NOT NULL,');
    Add('N_CAIXA           INTEGER DEFAULT 0,');
    Add('DATA              DATE DEFAULT CURRENT_DATE,');
    Add('HORA              TIME DEFAULT CURRENT_TIME,');
    Add('OPERADOR          INTEGER DEFAULT 0 NOT NULL,');
    Add('ITEM              INTEGER NOT NULL,');
    Add('CODIGO            INTEGER NOT NULL,');
    Add('BARRAS            VARCHAR(14),');
    Add('DESCRICAO         VARCHAR(75),');
    Add('QTD               NUMERIC(15,4) DEFAULT 0,');
    Add('PRECO             NUMERIC(15,4) DEFAULT 0,');
    Add('TRIBUTACAO        CHAR(3),');
    Add('ICMS              NUMERIC(15,4) DEFAULT 0,');
    Add('ISS               NUMERIC(15,4) DEFAULT 0,');
    Add('UND               CHAR(3),');
    Add('GRADE_X           BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_Y           BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_QUA         BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_VENDIDA     BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('SERIAL            VARCHAR(40),');
    Add('DESCONTO          NUMERIC(15,4) DEFAULT 0,');
    Add('ACRESCIMO         NUMERIC(15,4) DEFAULT 0,');
    Add('TOTAL             NUMERIC(15,4) DEFAULT 0,');
    Add('OUTRAS_DESP_ACRE  NUMERIC(15,4) DEFAULT 0.0,');
    Add('CANCELADO         SMALLINT DEFAULT 0 NOT NULL,');
    Add('OPERADOR_SUP      INTEGER DEFAULT 0 NOT NULL,');
    Add('LOTE              VARCHAR(30),');
    Add('TIPO              SMALLINT,');
    Add('TABELA_PRECO      VARCHAR(30),');
    Add('PIS_ST            CHAR(2),');
    Add('marca             CHAR(1),');
    Add('NomeMesa          VARCHAR(30),');
    Add('PIS_VALOR_BC      NUMERIC(15,4),');
    Add('PIS_ALIQ          NUMERIC(15,4),');
    Add('TOT_PIS           NUMERIC(15,4),');
    Add('COFINS_ST         CHAR(2),');
    Add('COFINS_VALOR_BC   NUMERIC(15,4),');
    Add('COFINS_ALIQ       NUMERIC(15,4),');
    Add('TOT_COFINS        NUMERIC(15,4),');
    Add('CST_ICMS          CHAR(3),');
    Add('PRECO_CUSTO       NUMERIC(15,4),');
    Add('COMISSAO          NUMERIC(15,4),');
    Add('VENDEDOR          INTEGER DEFAULT 0,');
    Add('CSOSN             CHAR(4)');
    Add(')');

    Execute;
  end;
end;

procedure Caixa;
var caixax:string;
begin
  VENDAS_ECF('VENDAS_ECF2');
  CriaTabela('ITEVENDAS_ECF2');
  CriaTabela('ITEOLEOS');
  CriaTabela('CADERNETA');
  CriaTabela('CADERNETAPAGA');
  CriaTabela('CADERNETADEVO');
  VENDAS_ECF('VENDAS_PEDIDO');
  CriaTabela('ITEVENDAS_PEDIDO');

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE DADOCLIE (');
    Add('ID           VARCHAR(9) NOT NULL,');
    Add('CUPOM        VARCHAR(9) NOT NULL,');
    Add('CODIGO       INTEGER NOT NULL,');
    Add('NOME         VARCHAR(75) NOT NULL,');
    Add('CANCELADO    SMALLINT DEFAULT 0,');
    Add('ENDERECO     VARCHAR(100),');
    Add('NUMERO       VARCHAR(10),');
    Add('BAIRRO       VARCHAR(50),');
    Add('CEP          VARCHAR(9),');
    Add('CIDADE       VARCHAR(50),');
    Add('UF           CHAR(2),');
    Add('CNPJ         VARCHAR(19),');
    Add('CPF          VARCHAR(14),');
    Add('IE           VARCHAR(19),');
    Add('IPR          VARCHAR(14),');
    Add('TELEFONE     VARCHAR(14),');
    Add('CELULAR      VARCHAR(14),');
    Add('EMAIL        VARCHAR(50),');
    Add('ENTREGADOR   VARCHAR(50),');
    Add('PORTADOR     VARCHAR(50),');
    Add('ADICIONAIS   VARCHAR(50),');
    Add('OBSERVACAO   VARCHAR(50)');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_DADOCLIE;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE DADOCLIE ADD CONSTRAINT PK_DADOCLIE PRIMARY KEY (ID);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_DADOCLIE2 on DADOCLIE (CUPOM);');
    Execute;
  end;

  RECEBER_tabela('RECEBER');

  RECEBER_tabela('INADIMPLENTES');

  {
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE RECEBER (');
    Add('ID              INTEGER NOT NULL,');
    Add('NUMERO          VARCHAR(9),');
    Add('CANCELADO       SMALLINT DEFAULT 0,');
    Add('N_CAIXA         INTEGER DEFAULT 0,');
    Add('TURNO           INTEGER DEFAULT 0,');
    Add('DATA            DATE DEFAULT CURRENT_DATE,');
    Add('HORA            TIME DEFAULT CURRENT_TIME,');
    Add('MARCADO         CHAR(1),');
    Add('ORDEM           CHAR(2),');
    Add('CODIGO          INTEGER,');
    Add('TIPO            CHAR(1),');
    Add('MODELO          CHAR(2) ,');
    Add('SERIE           CHAR(3) ,');
    Add('SUBSERIE        CHAR(2) ,');
    Add('ORIGEM          CHAR(2) ,');
    Add('HISTORICO       VARCHAR(30),');
    Add('EMISSAO         DATE DEFAULT CURRENT_DATE,');
    Add('VENCIMENTO      DATE DEFAULT CURRENT_DATE,');
    Add('VALOR           NUMERIC(15,4) DEFAULT 0,');
    Add('RECEBIMENTO     DATE,');
    Add('VALOR_RECEBIDO  NUMERIC(15,4) DEFAULT 0,');
    Add('ACRESCIMO       NUMERIC(15,4) DEFAULT 0,');
    Add('DESCONTO        NUMERIC(15,4) DEFAULT 0,');
    Add('FIXO            SMALLINT DEFAULT 1,');
    Add('JUROS           NUMERIC(15,4) DEFAULT 0,');
    Add('CONTROLE        INTEGER DEFAULT 0,');
    Add('OPERADOR        INTEGER DEFAULT 0,');
    Add('ESPECIE         VARCHAR(25),');
    Add('BANCO           SMALLINT DEFAULT 0,');
    Add('CONTA           INTEGER,');
    Add('CUSTO           INTEGER,');
    Add('AG_CONTA        VARCHAR(10),');
    Add('AG_BANCO        VARCHAR(5),');
    Add('PORTADOR        VARCHAR(50),');
    Add('QUITADONOECF    SMALLINT DEFAULT 0');
    Add(');');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_RECEBER;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE RECEBER ADD CONSTRAINT PK_RECEBER PRIMARY KEY (ID);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_RECEBER2 on RECEBER (NUMERO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_RECEBER3 on RECEBER (CODIGO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_RECEBER4 on RECEBER (VENCIMENTO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_RECEBER5 on RECEBER (EMISSAO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_RECEBER6 on RECEBER (VALOR,VALOR_RECEBIDO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_RECEBER7 on RECEBER (VALOR_RECEBIDO,VALOR);');
    Execute;
  end;
  }

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE DADOFORN (');
    Add('CUPOM        VARCHAR(9) NOT NULL,');
    Add('CODIGO       INTEGER NOT NULL,');
    Add('NOME         VARCHAR(75) NOT NULL,');
    Add('ENDERECO     VARCHAR(100),');
    Add('NUMERO       VARCHAR(10),');
    Add('BAIRRO       VARCHAR(50),');
    Add('CEP          VARCHAR(9),');
    Add('CIDADE       VARCHAR(50),');
    Add('UF           CHAR(2),');
    Add('CNPJ         VARCHAR(19),');
    Add('CPF          VARCHAR(14),');
    Add('IE           VARCHAR(19),');
    Add('TELEFONE     VARCHAR(14),');
    Add('CELULAR      VARCHAR(14),');
    Add('EMAIL        VARCHAR(50),');
    Add('OBSERVACAO   VARCHAR(50)');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE  CARTOES (');
    Add('ID            INTEGER NOT NULL PRIMARY KEY,');
    Add('DIAS          INTEGER NOT NULL,');
    Add('DESCRICAO     VARCHAR(50),');
    Add('VALORTAXA     NUMERIC(15,4) DEFAULT 0,');
    Add('DEBITOCREDITO CHAR(1)');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_CARTOES;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index CARTOES2 on CARTOES (DESCRICAO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE  CARTOESITENS (');
    Add('ID              INTEGER NOT NULL PRIMARY KEY,');
    Add('CARTOES         INTEGER NOT NULL,');
    Add('CUPOM           INTEGER DEFAULT 0,');
    Add('ORDEM           CHAR(2),');
    Add('HISTORICO       VARCHAR(50),');
    Add('EMISSAO         DATE DEFAULT CURRENT_DATE,');
    Add('VENCIMENTO      DATE DEFAULT CURRENT_DATE,');
    Add('HORA            VARCHAR(5),');
    Add('VALOR           NUMERIC(15,4) DEFAULT 0,');
    Add('VALORDES        NUMERIC(15,4) DEFAULT 0,');
    Add('VALOR_RECEBIDO  NUMERIC(15,4) DEFAULT 0');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_CARTOESITENS;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index CARTOESITENS2 on CARTOESITENS (EMISSAO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index CARTOESITENS3 on CARTOESITENS (VENCIMENTO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index CARTOESITENS4 on CARTOESITENS (CARTOES);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE RECEBIMENTO (');
    Add('CUPOM         VARCHAR(9) NOT NULL,');
    Add('CODIGO       INTEGER NOT NULL PRIMARY KEY,');
    Add('VALOR        NUMERIC(15,4) DEFAULT 0,');
    Add('TIPO         VARCHAR(5)');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE RECIBOS (');
    Add('CUPOM        VARCHAR(9) NOT NULL,');
    Add('CODIGO       INTEGER NOT NULL PRIMARY KEY,');
    Add('PRODUTO      INTEGER NOT NULL,');
    Add('QUANTIDADE   NUMERIC(15,4) DEFAULT 0,');
    Add('VALOR        NUMERIC(15,4) DEFAULT 0,');
    Add('TIPO         VARCHAR(5),');
    Add('KGL          VARCHAR(10)');
    Add(')');
    Execute;
  end;

  CriaTabelaDuplicata('PROMISSOR');
  CriaTabelaDuplicata('duplicatas');
  CriaTabelaDuplicata('DuplicatasPagar');
  CriaTabela('KITS');

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE CONFIG (');
    Add('DATA         DATE DEFAULT CURRENT_DATE,');
    Add('HORA         TIME DEFAULT CURRENT_TIME,');
    Add('CAIXA        VARCHAR(1),');
    Add('TURNO        VARCHAR(1),');
    Add('DADOSCLI     VARCHAR(1),');
    Add('DADOSFOR     VARCHAR(1),');
    Add('MODICLIE     VARCHAR(1),');
    Add('MODIFORN     VARCHAR(1),');
    Add('TURNOS       VARCHAR(1),');
    Add('GERACONTAS   VARCHAR(1),');
    Add('CONT_ESTOQUE VARCHAR(1),');
    Add('IMPRESSAO    VARCHAR(1),');
    Add('RECIBOS      VARCHAR(1),');
    Add('REPETEITEM   VARCHAR(1),');
    Add('FLUXO        VARCHAR(1),');
    Add('DESCONTO     VARCHAR(1),');
    Add('ACRESCIMO    VARCHAR(1),');
    Add('TIPO         VARCHAR(1)');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE ClieBarr (');
    Add('CODIGO       INTEGER NOT NULL PRIMARY KEY,');
    Add('BARRAS       VARCHAR(14)');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE FornBarr (');
    Add('CODIGO       INTEGER NOT NULL PRIMARY KEY,');
    Add('BARRAS       VARCHAR(14)');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE OperBarr (');
    Add('CODIGO       INTEGER NOT NULL PRIMARY KEY,');
    Add('BARRAS       VARCHAR(14)');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE VendBarr (');
    Add('CODIGO       INTEGER NOT NULL PRIMARY KEY,');
    Add('BARRAS       VARCHAR(14)');
    Add(')');
    Execute;
  end;
end;

procedure VEICULOS;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE VEICULOS (');
    Add('CODIGO       INTEGER NOT NULL,');
    Add('CLIENTE      INTEGER,');
    Add('NOME         VARCHAR(40),');
    Add('MODELO       VARCHAR(40),');
    Add('VEICULO      VARCHAR(20),');
    Add('TIPO         VARCHAR(30),');
    Add('PLACA        VARCHAR(7),');
    Add('CHASSIS      VARCHAR(20),');
    Add('RENAVAM      VARCHAR(9),');
    Add('MARCA_M      VARCHAR(40),');
    Add('COR          VARCHAR(20),');
    Add('ANO          VARCHAR(4),');
    Add('ANO_MOD      VARCHAR(4),');
    Add('OBSERV       VARCHAR(100)');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_VEICULOS;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE VEICULOS ADD CONSTRAINT PK_VEICULOS PRIMARY KEY (CODIGO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_VEICULOS2 on VEICULOS (NOME);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_VEICULOS3 on VEICULOS (CLIENTE);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_VEICULOS4 on VEICULOS (PLACA);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE OLEO (');
    Add('ID           INTEGER NOT NULL,');
    Add('CUPOM        VARCHAR(9) NOT NULL,');
    Add('VEICULO      INTEGER,');
    Add('CLIENTE      INTEGER,');
    Add('PLACA        VARCHAR(7),');
    Add('DATA         DATE DEFAULT CURRENT_DATE,');
    Add('HORA         TIME DEFAULT CURRENT_TIME,');
    Add('HORAI        TIME DEFAULT CURRENT_TIME,');
    Add('HORAf        TIME DEFAULT CURRENT_TIME,');
    Add('KM_INICIO    NUMERIC(15,4) DEFAULT 0,');
    Add('KM_FIM       NUMERIC(15,4) DEFAULT 0');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_OLEO;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE OLEO ADD CONSTRAINT PK_OLEO PRIMARY KEY (ID);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_OLEO2 on OLEO (CUPOM);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_OLEO3 on OLEO (CLIENTE);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_OLEO4 on OLEO (PLACA);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE ABASTECI(');
    Add('CODIGO       INTEGER NOT NULL PRIMARY KEY,');
    Add('VEICULO      INTEGER,');
    Add('CLIENTE      INTEGER,');
    Add('VENDEDOR     INTEGER,');
    Add('EMPRESA      INTEGER,');
    Add('PLACA        VARCHAR(7),');
    Add('DATA         DATE DEFAULT CURRENT_DATE,');
    Add('HORA         TIME DEFAULT CURRENT_TIME,');
    Add('KM_INICIO    NUMERIC(15,4) DEFAULT 0,');
    Add('KM_FIM       NUMERIC(15,4) DEFAULT 0,');
    Add('LITROS       NUMERIC(15,4) DEFAULT 0,');
    Add('VALOR        NUMERIC(15,4) DEFAULT 0');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_ABASTECI;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE MANUTEM(');
    Add('CODIGO       INTEGER NOT NULL PRIMARY KEY,');
    Add('VEICULO      INTEGER,');
    Add('VENDEDOR     INTEGER,');
    Add('EMPRESA      INTEGER,');
    Add('SERVICO      VARCHAR(40),');
    Add('PLACA        VARCHAR(7),');
    Add('DATA         DATE DEFAULT CURRENT_DATE,');
    Add('HORA         TIME DEFAULT CURRENT_TIME,');
    Add('VALOR        NUMERIC(15,4) DEFAULT 0');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_MANUTEM;');
    Execute;
  end;
end;


procedure ORCAMENTO;
var caixax:string;
begin

end;

procedure PEDIDO;
var caixax:string;
begin

end;

procedure LIVROS;
var caixax:string;
begin

end;

procedure Loja;
var caixax:string;
begin

end;

procedure Estoque;
var caixax:string;
begin

end;

procedure RECEBER_tabela(NomedaTabela:string);
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    // Add('CREATE TABLE RECEBER (');
    Add('CREATE TABLE     '+NomedaTabela+' (');
    Add('ID              INTEGER NOT NULL,');
    Add('NUMERO          VARCHAR(9),');
    Add('CANCELADO       SMALLINT DEFAULT 0,');
    Add('N_CAIXA         INTEGER DEFAULT 0,');
    Add('TURNO           INTEGER DEFAULT 0,');
    Add('DATA            DATE DEFAULT CURRENT_DATE,');
    Add('HORA            TIME DEFAULT CURRENT_TIME,');
    Add('MARCADO         CHAR(1),');
    Add('ORDEM           CHAR(2),');
    Add('CODIGO          INTEGER,');
    Add('TIPO            CHAR(1),');
    Add('MODELO          CHAR(2) ,');
    Add('SERIE           CHAR(3) ,');
    Add('SUBSERIE        CHAR(2) ,');
    Add('ORIGEM          CHAR(2) ,');
    Add('HISTORICO       VARCHAR(30),');
    Add('EMISSAO         DATE DEFAULT CURRENT_DATE,');
    Add('VENCIMENTO      DATE DEFAULT CURRENT_DATE,');
    Add('VALOR           NUMERIC(15,4) DEFAULT 0,');
    Add('RECEBIMENTO     DATE,');
    Add('VALOR_RECEBIDO  NUMERIC(15,4) DEFAULT 0,');
    Add('ACRESCIMO       NUMERIC(15,4) DEFAULT 0,');
    Add('DESCONTO        NUMERIC(15,4) DEFAULT 0,');
    Add('FIXO            SMALLINT DEFAULT 1,');
    Add('JUROS           NUMERIC(15,4) DEFAULT 0,');
    Add('CONTROLE        INTEGER DEFAULT 0,');
    Add('OPERADOR        INTEGER DEFAULT 0,');
    Add('ESPECIE         VARCHAR(25),');
    Add('BANCO           SMALLINT DEFAULT 0,');
    Add('CONTA           INTEGER,');
    Add('CUSTO           INTEGER,');
    Add('AG_CONTA        VARCHAR(10),');
    Add('AG_BANCO        VARCHAR(5),');
    Add('PORTADOR        VARCHAR(50),');
    Add('MEIOSPAGAMENTO  VARCHAR(150),');
    Add('QUITADONOECF    SMALLINT DEFAULT 0');
    Add(');');
    Execute;
  end;

with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+NomedaTabela);
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE '+NomedaTabela+' ADD CONSTRAINT PK_'+NomedaTabela+' PRIMARY KEY (ID);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+NomedaTabela+'2 on '+NomedaTabela+' (NUMERO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+NomedaTabela+'3 on '+NomedaTabela+' (CODIGO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+NomedaTabela+'4 on '+NomedaTabela+' (VENCIMENTO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+NomedaTabela+'5 on '+NomedaTabela+' (EMISSAO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+NomedaTabela+'6 on '+NomedaTabela+' (VALOR,VALOR_RECEBIDO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+NomedaTabela+'7 on '+NomedaTabela+' (VALOR_RECEBIDO,VALOR);');
    Execute;
  end;

end;

procedure CONF_PADRAOX(NomedaTabela:string);
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    // Add('CREATE TABLE     CONF_PADRAO (');
    Add('CREATE TABLE     '+NomedaTabela+' (');
    Add('DATA             DATE DEFAULT CURRENT_DATE,');
    Add('HORA             TIME DEFAULT CURRENT_TIME,');
    Add('CAIXA            VARCHAR(1),');
    Add('TURNO            VARCHAR(1),');
    Add('IMPRESSAO        VARCHAR(1),');  // tipo de impressão
    Add('IMPRESSORA1      VARCHAR(50),');  // IMPRESSORAS
    Add('IMPRESSORA2      VARCHAR(50),');  // IMPRESSORAS
    Add('IMPRESSORA3      VARCHAR(50),');  // IMPRESSORAS
    Add('IMPRESSORA4      VARCHAR(50),');  // IMPRESSORAS
    Add('IMPRESSORA5      VARCHAR(50),');  // IMPRESSORAS
    Add('OS               VARCHAR(1),');  // Ordem de Serviço
    Add('NF               VARCHAR(1),');  // Nota Fiscal
    Add('NFe              VARCHAR(1),');  // Nota Fiscal Eletronica
    Add('NFc              VARCHAR(1),');  // Nota Fiscal Consumidor
    Add('SAT              VARCHAR(1),');  // SAT
    Add('VENDA2           VARCHAR(1),');  // VENDA SEM ASTERISCO
    Add('DOISPRECOS       VARCHAR(1),');  // DOIS PREÇOS
    Add('VISTAPRAZO       VARCHAR(1),');  // A VISTA E A PRAZO
    Add('VISTAPRAZODIRE   VARCHAR(1),');  // A VISTA E A PRAZO DIRETO
    Add('ACRESDESCON      VARCHAR(1),');  // ACRESCIMO E DESCONTO NO FIM DA VENDA
    Add('DIVERSASPAG      VARCHAR(1),');  // DIVERSAS FORMAS DE PAGAMENTO
    Add('ORDEM            VARCHAR(1),');  // ORDEM DE SERVIÇO
    Add('OLEO             VARCHAR(1),');  // CONTROLA OLEO
    Add('COMISSAO         VARCHAR(1),');  // CONTROLA COMISSAO
    Add('CARTOES          VARCHAR(1),');  // CONTROLA CARTOES
    Add('CAIXAS           VARCHAR(1),');  // CONTROLA VARIOS CAIXAS OU TODOS OS CAIXAS EM UM CAIXA
    Add('SALDO            NUMERIC(15,4) DEFAULT 0,'); // SALDO DE CAIXA
    Add('DESCONTO         NUMERIC(15,4) DEFAULT 0,'); // DESCONTO MAXIMO
    Add('PORCPRO          NUMERIC(15,4) DEFAULT 0,'); // Porcentagem de Comissão produto
    Add('PORCSER          NUMERIC(15,4) DEFAULT 0,'); // Porcentagem de Comissão serviços
    Add('ReCoSo           VARCHAR(1),');  // LINHAS ORDEM DE SERVIÇO
    Add('CON_OrcRat       VARCHAR(1),');  // ORÇAMENTO RATIADO
    Add('LinObj           VARCHAR(1),');  // LINHAS OBJETO
    Add('ORCAPEDI         VARCHAR(1),');  // ORÇAMENTO OU PEDIDO

    Add('IMPREC           VARCHAR(1),');  // Imprime Recibo

    Add('BARPED           VARCHAR(1),');  // IMPRIME CODIGO DE BARRAS
    Add('OrcRat           VARCHAR(1),');  // ORÇAMENTO RATIADO
    Add('IMPRIME          VARCHAR(1),');  // ORÇAMENTO RATIADO
    Add('SENHA            VARCHAR(1),');  // SENHA
    Add('TIPODEMPRESSAO   VARCHAR(2),');  // ORÇAMENTO RATIADO
    Add('NUMCOP           INTEGER,'); // NUMEDRO DE COPIAS DE ORÇAMENTO
    Add('MENSAGEM         INTEGER,'); // NUMEDRO DE COPIAS DE ORÇAMENTO

    Add('NUMREC           INTEGER,'); // NUMEDRO DE COPIAS DE ORÇAMENTO

    Add('VENDEDOR         INTEGER,');
    Add('EMITENTE         INTEGER,');
    Add('ATENDENTE        INTEGER,');
    Add('OPERADOR         INTEGER,');
    Add('OPERADOR1        INTEGER,');
    Add('OPERADOR2        INTEGER,');
    Add('OPERADOR3        INTEGER,');
    Add('OPERADOR4        INTEGER,');
    Add('OPERADOR5        INTEGER,');
    Add('CONTAS           INTEGER,');
    Add('RAMO             VARCHAR(50),');
    Add('IMAGEM           VARCHAR(100),');
    Add('TIPO             VARCHAR(1)');
    Add(')');
    Execute;
  end;
end;

procedure PADRAO;
var i:integer;
begin
  // CONF_PADRAOX;
  CONF_PADRAOX('CONF_PADRAO');
  for i := 1 to 24 do begin
    CONF_PADRAOX('CONF_PADRAO'+StrZero(i,2,0));
  end;

  {
  CONF_PADRAOX('CONF_PADRAO02');
  CONF_PADRAOX('CONF_PADRAO03');
  CONF_PADRAOX('CONF_PADRAO04');
  CONF_PADRAOX('CONF_PADRAO05');
  CONF_PADRAOX('CONF_PADRAO06');
  CONF_PADRAOX('CONF_PADRAO07');
  CONF_PADRAOX('CONF_PADRAO08');
  CONF_PADRAOX('CONF_PADRAO09');
  CONF_PADRAOX('CONF_PADRAO10');
  }
  {
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE Vendedor (');
    Add('CODIGO       INTEGER NOT NULL,');
    Add('NOME         VARCHAR(75) NOT NULL,');
    Add('ENDERECO     VARCHAR(100),');
    Add('NUMERO       VARCHAR(10),');
    Add('BAIRRO       VARCHAR(50),');
    Add('CEP          VARCHAR(9),');
    Add('CIDADE       VARCHAR(50),');
    Add('UF           CHAR(2),');
    Add('CPF          VARCHAR(14),');
    Add('RG           VARCHAR(19),');
    Add('TELEFONE     VARCHAR(14),');
    Add('CELULAR      VARCHAR(14),');
    Add('EMAIL        VARCHAR(50),');
    Add('OBSERVACAO   VARCHAR(50)');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_Vendedor;');
    Execute;
  end;
  }

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE Portador (');
    Add('CLIENTE      INTEGER NOT NULL,');
    Add('CODIGO       INTEGER NOT NULL,');
    Add('NOME         VARCHAR(75) NOT NULL,');
    Add('ENDERECO     VARCHAR(100),');
    Add('NUMERO       VARCHAR(10),');
    Add('BAIRRO       VARCHAR(50),');
    Add('CEP          VARCHAR(9),');
    Add('CIDADE       VARCHAR(50),');
    Add('UF           CHAR(2),');
    Add('CPF          VARCHAR(14),');
    Add('RG           VARCHAR(19),');
    Add('TELEFONE     VARCHAR(14),');
    Add('CELULAR      VARCHAR(14),');
    Add('EMAIL        VARCHAR(50),');
    Add('OBSERVACAO   VARCHAR(50)');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_Portador;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE MestreCAI (');
    Add('CODIGO       INTEGER NOT NULL PRIMARY KEY,');
    Add('CAIXA        INTEGER DEFAULT 0,');
    Add('TURNO        INTEGER NOT NULL,');
    Add('OPERADOR     INTEGER DEFAULT 0,');
    Add('DATA         DATE DEFAULT CURRENT_DATE,');
    Add('HORA         TIME DEFAULT CURRENT_TIME,');
    Add('VALOR        NUMERIC(15,4) DEFAULT 0,');
    Add('HISTORICOC   VARCHAR(50),');
    Add('OBSERVACAO   VARCHAR(50)');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_MestreCAI;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE CAIXA (');
    Add('CODIGO       INTEGER NOT NULL PRIMARY KEY,');
    Add('CAIXA        INTEGER NOT NULL,');
    Add('TURNO        INTEGER NOT NULL,');
    Add('CLIENTE      INTEGER DEFAULT 0,');
    Add('FORNECEDOR   INTEGER DEFAULT 0,');
    Add('OPERADOR     INTEGER DEFAULT 0,');
    Add('VENDEDOR     INTEGER DEFAULT 0,');
    Add('HISTORICO    INTEGER DEFAULT 0,');
    Add('SUBHISTORICO INTEGER DEFAULT 0,');
    Add('DOCUMENTO    VARCHAR(9) NOT NULL,');
    Add('DOCU_COMP    VARCHAR(9),');
    Add('PARCELA      VARCHAR(2),');
    Add('DATA         DATE DEFAULT CURRENT_DATE,');
    Add('HORA         TIME DEFAULT CURRENT_TIME,');
    Add('VALOR        NUMERIC(15,4) DEFAULT 0,');
    Add('RECEBIDO     NUMERIC(15,4) DEFAULT 0,');
    Add('TROCO        NUMERIC(15,4) DEFAULT 0,');
    Add('SALDO        NUMERIC(15,4) DEFAULT 0,');
    Add('PORTADOR     VARCHAR(50),');
    Add('HISTORICOC   VARCHAR(50),');
    Add('OBSERVACAO   VARCHAR(50),');
    Add('RECEBEMOS    VARCHAR(50),');
    Add('ENDERECOR    VARCHAR(50),');
    Add('EMITENTE     VARCHAR(50),');
    Add('DOC_EMITE    VARCHAR(50),');
    Add('ENDERECOE    VARCHAR(50),');
    Add('DC           CHAR(1),');
    Add('AVIS_PRAZO   CHAR(1),');
    Add('TIPO         CHAR(1),');
    Add('SANGSUPR     CHAR(1),');
    Add('ENTREGADOR   VARCHAR(50),');
    Add('ESPECIE      VARCHAR(50),');
    Add('MEIOPAG      VARCHAR(50)');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_CAIXA;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE CHEQUES (');
    Add('ID          INTEGER NOT NULL,');
    Add('CUPOM       VARCHAR(9),');
    Add('CODIGO      INTEGER,');
    Add('BANCO       CHAR(3),');
    Add('AGENCIA     VARCHAR(4),');
    Add('CONTA       VARCHAR(10),');
    Add('CHEQUE      VARCHAR(6),');
    Add('DATA        DATE,');
    Add('PRE_DATADO  DATE,');
    Add('VALOR       NUMERIC(15,4),');
    Add('OBSERVACAO  VARCHAR(50),');
    Add('SITUACAO    VARCHAR(10)');
    Add(')');
    Execute;
  end;

    with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_CHEQUES;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE HISTORIC (');
    Add('CODIGO       INTEGER NOT NULL PRIMARY KEY,');
    Add('NOME         VARCHAR(75) NOT NULL,');
    Add('CONTA        INTEGER DEFAULT 0,');
    Add('CUSTO        INTEGER DEFAULT 0,');
    Add('ATIVO        SMALLINT DEFAULT 1 NOT NULL');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_HISTORIC;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE SUB_HIST (');
    Add('CODIGO       INTEGER NOT NULL PRIMARY KEY,');
    Add('NOME         VARCHAR(75) NOT NULL,');
    Add('HISTORIC     INTEGER DEFAULT 0');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_SUB_HIST;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE MestrePagar (');
    Add('CODIGO       INTEGER NOT NULL PRIMARY KEY,');
    Add('CLIENTE      INTEGER DEFAULT 0,');
    Add('FORNECEDOR   INTEGER DEFAULT 0,');
    Add('CONTA        INTEGER DEFAULT 0,');
    Add('CUSTO        INTEGER DEFAULT 0,');
    Add('VALOR        NUMERIC(15,4) DEFAULT 0,');
    Add('HISTORICO    VARCHAR(30),');
    Add('DIAVENCIM    VARCHAR(2),');
    Add('ATIVO        SMALLINT DEFAULT 1 NOT NULL,');
    Add('OBSERVACAO   VARCHAR(50)');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_MestrePagar;');
    Execute;
  end;
end;


procedure Credito;
begin
  with DataModule2.UniScript1, SQL do begin
    clear;
    Add('CREATE TABLE Credito (');
    Add('CODIGO       INTEGER NOT NULL,');
    Add('NOME         VARCHAR(75),');
    Add('VALOR        NUMERIC(15,4) DEFAULT 0');
    Add(')');
    Execute;
  end;
end;

procedure TerminalPreferencias;
begin
  with DataModule2.UniScript1, SQL do begin
    clear;
    Add('CREATE TABLE TerminalPreferencias (');
    // Add('CODIGO       INTEGER NOT NULL,');
    Add('CAIXA                  VARCHAR(7),');
    Add('CODIGOOPERADOR         INTEGER,');
    Add('CODIGOVENDODORVENDA    INTEGER,');
    Add('CODIGOVENDODORSANGRIA  INTEGER');
    Add(')');
    Execute;
  end;
end;

function Pessoa(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do begin
    clear;
    Add('CREATE TABLE '+Tabela+' (');
    Add('CODIGO                INTEGER NOT NULL,');
    Add('NOME                  VARCHAR(75),');
    Add('FANTASIA              VARCHAR(75),');
    Add('CONTATO               VARCHAR(75),');
    Add('CNPJ                  VARCHAR(19),');
    Add('ENDERECO              VARCHAR(100),');
    Add('COMPLEMENTO           VARCHAR(50),');
    Add('BAIRRO                VARCHAR(50),');
    Add('CEP                   VARCHAR(9),');
    Add('CIDADE                VARCHAR(50),');
    Add('CPF                   VARCHAR(14),');
    Add('IE                    VARCHAR(19),');
    Add('RG                    VARCHAR(14),');
    Add('UF                    CHAR(2),');
    Add('PAIS                  VARCHAR(50),');
    Add('TELEFONE              VARCHAR(14),');
    Add('FAX                   VARCHAR(14),');
    Add('CELULAR               VARCHAR(14),');
    Add('CELULAR2              VARCHAR(14),');
    Add('CELULAR3              VARCHAR(14),');
    Add('CELULAR4              VARCHAR(14),');
    Add('FIS_JUR               CHAR(1),');
    Add('TIPO                  CHAR(1),');
    Add('DATA_CADASTRO         DATE,');
    Add('DTNASC                DATE,');
    Add('ENDERECO_ENT          VARCHAR(100),');
    Add('COMPLEMENTO_ENT       VARCHAR(50),');
    Add('BAIRRO_ENT            VARCHAR(50),');
    Add('CEP_ENT               VARCHAR(9),');
    Add('CIDADE_ENT            VARCHAR(50),');
    Add('UF_ENT                CHAR(2),');
    Add('NUMERO                VARCHAR(10),');
    Add('NUMERO_ENT            VARCHAR(10),');
    Add('ENDERECO_COB          VARCHAR(100),');
    Add('NUMERO_COB            VARCHAR(10),');
    Add('COMPLEMENTO_COB       VARCHAR(50),');
    Add('REFERENCIA1           VARCHAR(50),');
    Add('FREFERENCIA1          VARCHAR(14),');
    Add('REFERENCIA2           VARCHAR(50),');
    Add('FREFERENCIA2          VARCHAR(14),');
    Add('REFERENCIA3           VARCHAR(50),');
    Add('FREFERENCIA3          VARCHAR(14),');
    Add('NOMEDORABALHO         VARCHAR(50),');
    Add('ENDERECODETRABALHO    VARCHAR(50),');
    Add('FNOMEDORABALHO        VARCHAR(14),');
    Add('CONJUGE               VARCHAR(50),');
    Add('CARTEIRATRABALHO      VARCHAR(10),');
    Add('UFCARTEIRATRABALHO    CHAR(2),');
    Add('SPC                   VARCHAR(10),');
    Add('LIMITEDEDEBITOS       NUMERIC(15,4),');
    Add('VALORDASRENDAS        NUMERIC(15,4),');
    Add('VALORDASDESPESAS      NUMERIC(15,4),');
    Add('PERCENTUALJUROS       NUMERIC(15,4),');
    Add('CONTRATOVALOR         NUMERIC(15,4),');
    Add('PERCONTRATO           NUMERIC(15,4),');
    Add('DIADEBLOQUEIO         INTEGER,');
    Add('DIAVENCIMENTO         INTEGER,');
    Add('DIASPARAPRAZO         INTEGER,');
    Add('BLOQUEIAAPRAZO        CHAR(5),');
    Add('VENDASAPOSBLOQUEIO    CHAR(5),');
    Add('MENSAGEMNOTA          VARCHAR(50),');
    Add('BAIRRO_COB            VARCHAR(50),');
    Add('CEP_COB               VARCHAR(9),');
    Add('CIDADE_COB            VARCHAR(50),');
    Add('EMAIL                 VARCHAR(50),');
    Add('HTTP                  VARCHAR(50),');
    Add('FACEBOOK              VARCHAR(50),');
    Add('UF_COB                CHAR(2),');
    Add('VENDEDOR              INTEGER,');
    Add('GRUPO                 INTEGER,');
    Add('LIMITE_CREDITO        NUMERIC(15,4),');
    Add('COD_CONVENIO          INTEGER,');
    Add('CONVENIO              SMALLINT DEFAULT 0,');
    Add('DIA_ACERTO            SMALLINT DEFAULT 1,');
    Add('PER_CONVENIO          NUMERIC(15,4),');
    Add('A_RECEBER             NUMERIC(15,4),');
    Add('CONCEDER_CREDITO      SMALLINT DEFAULT 1,');
    Add('ATRASADO              NUMERIC(15,4),');
    Add('RECEBIDO              NUMERIC(15,4),');
    Add('OBSERVACOES           BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('ATIVO                 SMALLINT DEFAULT 1,');
    Add('OPERADOR              INTEGER DEFAULT 0,');
    Add('COD_TABELA_PRECO      INTEGER,');
    Add('FOTO                  BLOB SUB_TYPE 0 SEGMENT SIZE 4096,');
    Add('SUFRAMA               VARCHAR(9),');
    Add('IDESTRANGEIRO         VARCHAR(20),');
    Add('clienteX              CHAR(1),');
    Add('fornecedorX           CHAR(1),');
    Add('vendedorX             CHAR(1),');
    Add('emitenteX             CHAR(1),');
    Add('usuarioX              CHAR(1),');
    Add('operadorX             CHAR(1),');
    Add('SENHA                 VARCHAR(10),');
    Add('CODIGO2               INTEGER,');
    Add('CODIGO3               INTEGER,');
    Add('USA_DESCONTO_SUFRAMA  SMALLINT DEFAULT 0');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+Tabela+';');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE '+Tabela+' ADD CONSTRAINT PK_'+Tabela+' PRIMARY KEY (CODIGO);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+Tabela+'2 on '+Tabela+' (NOME);');
    Execute;
  end;
end;

function GRUPO(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do begin
    clear;
    Add('CREATE TABLE '+Tabela+' (');
    Add('CODIGO                INTEGER,');
    Add('NOME                  VARCHAR(75)');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+Tabela+';');
    Execute;
  end;
end;

function FORMADEPAGAMENTO(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do begin
    clear;
    Add('CREATE TABLE '+Tabela+' (');
    Add('CODIGO                INTEGER,');
    Add('NOME                  VARCHAR(75)');
    Add('AVISTAPRAZO           CHAR(1),');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+Tabela+';');
    Execute;
  end;
end;

function VenPed(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE '+Tabela+' (');
    Add('ID                    INTEGER NOT NULL,');
    Add('NOTA                  VARCHAR(9),');
    Add('MODELO                CHAR(2),');
    Add('SERIE                 CHAR(3),');
    Add('SUBSERIE              CHAR(2),');
    Add('ORIGEM                CHAR(2),');
    Add('EMISSAO               DATE DEFAULT CURRENT_DATE,');
    Add('HORA                  TIME DEFAULT CURRENT_TIME,');
    Add('ENTRADA               CHAR(1),');
    Add('SAIDA                 CHAR(1),');
    Add('CFOPS                 VARCHAR(40),');
    Add('NATUREZA              VARCHAR(50),');
    Add('CLIENTE               INTEGER,');
    Add('IMPORTACOES           BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('DATA_SAIDA            DATE DEFAULT CURRENT_DATE,');
    Add('HORA_SAIDA            TIME DEFAULT CURRENT_TIME,');
    Add('OBS                   BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('ADICIONAIS            BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('TRANSP_1              INTEGER,');
    Add('TRANSP_2              INTEGER,');
    Add('LOJA                  VARCHAR(6),');
    Add('VENDEDOR              INTEGER,');
    Add('FORMAS_PGTO           VARCHAR(30),');
    Add('QUANTIDADE            VARCHAR(10),');
    Add('ESPECIE               VARCHAR(25),');
    Add('MARCA                 VARCHAR(25),');
    Add('PBRUTO                VARCHAR(15),');
    Add('PLIQUIDO              VARCHAR(15),');
    Add('FRETE_1               CHAR(1),');
    Add('FRETE_2               CHAR(2),');
    Add('ANEXA_ICMS_SUB        SMALLINT DEFAULT 0,');
    Add('COMISSAO              NUMERIC(15,4) DEFAULT 0,');
    Add('DESCONTO              NUMERIC(15,4) DEFAULT 0,');
    Add('ACRESCIMO             NUMERIC(15,4) DEFAULT 0,');
    Add('ICMS_FRETE            NUMERIC(15,4) DEFAULT 0,');
    Add('BASE_ICMS             NUMERIC(15,4) DEFAULT 0,');
    Add('BASE_ICMS_SUB         NUMERIC(15,4) DEFAULT 0,');
    Add('BASE_IPI              NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ICMS              NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ICMS_SUB          NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_IPI               NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_SERVICOS          NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ISS               NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_PRODUTOS          NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_IRRF              NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_PIS               NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_COFINS            NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_CS                NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_SER_BRUTO         NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_SEGURO            NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_OUTRAS            NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_FRETE             NUMERIC(15,4) DEFAULT 0,');
    Add('CANCELADO             SMALLINT DEFAULT 0,');
    Add('TOTAL                 NUMERIC(15,4) DEFAULT 0.0,');
    Add('OPERADOR              INTEGER DEFAULT 0,');
    Add('SEQUENCIA             INTEGER,');
    Add('CONVENIO              NUMERIC(15,4) DEFAULT 0.0,');
    Add('NSU                   INTEGER,');
    Add('DATA_IMPRESSAO        DATE,');
    Add('HORA_IMPRESSAO        TIME,');
    Add('AVISTA                SMALLINT DEFAULT 1,');
    Add('TOT_ICMS_FRETE        NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_CONVENIO          NUMERIC(15,4) DEFAULT 0,');
    Add('TAB_PRECO             INTEGER,');
    Add('ANEXA_ST              SMALLINT DEFAULT 0,');
    Add('TOTALIZA_CFOP         VARCHAR(150),');
    Add('CONTA                 INTEGER,');
    Add('CUSTO                 INTEGER,');
    Add('SERIAIS_PROD          BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('NFE_FLDE              CHAR(1),');
    Add('NFE_STATUS            CHAR(1),');
    Add('TOT_IMPORTACAO        NUMERIC(15,4) DEFAULT 0,');
    Add('NF_REFERENCIADA       INTEGER DEFAULT 0,');
    Add('TOT_PIS_SUB           NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_COFINS_SUB        NUMERIC(15,4) DEFAULT 0,');
    Add('ANEXA_ICMS_FRETE      SMALLINT DEFAULT 0,');
    Add('PLACA_TRANSP1         VARCHAR(8),');
    Add('IMPORTADOS            VARCHAR(255),');
    Add('PLACA_TRANSP2         VARCHAR(8),');
    Add('ANEXA_SEGURO          SMALLINT DEFAULT 0,');
    Add('ANEXA_OUTRAS          SMALLINT DEFAULT 0,');
    Add('ANTT_TRANSP1          VARCHAR(20),');
    Add('ANTT_TRANSP2          VARCHAR(20),');
    Add('UFEMBARQ              CHAR(2),');
    Add('XLOCEMBARQ            VARCHAR(60),');
    Add('TOT_ICMS_OUTRAS_DESP  NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ICMS_SEGURO       NUMERIC(15,4) DEFAULT 0,');
    Add('ANEXA_FRETE           SMALLINT DEFAULT 0,');
    Add('IE_SUBSTITUTO         VARCHAR(19),');
    Add('PIS_VALOR_BC          NUMERIC(15,4) DEFAULT 0,');
    Add('PIS_VALOR_BC_SUB      NUMERIC(15,4) DEFAULT 0,');
    Add('COFINS_VALOR_BC       NUMERIC(15,4) DEFAULT 0,');
    Add('COFINS_VALOR_BC_SUB   NUMERIC(15,4) DEFAULT 0,');
    Add('MOTIVO_D2_POSTO       SMALLINT DEFAULT 0,');
    Add('AAMMNFP               DATE,');
    Add('NNFNFP                VARCHAR(9),');
    Add('MODNFP                CHAR(2),');
    Add('SERIENFP              CHAR(3),');
    Add('NUMERO                VARCHAR(60),');
    Add('VTOT_TRIB             NUMERIC(15,4) DEFAULT 0,');
    Add('ESPECIE_PAGAMENTO     VARCHAR(20),');
    Add('IND_PRES              SMALLINT DEFAULT 1,');
    Add('PAF                   SMALLINT DEFAULT 0,');
    Add('REFNFE                CHAR(44)');
    Add(');');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+Tabela+';');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE '+Tabela+' ADD CONSTRAINT PK_'+Tabela+' PRIMARY KEY (ID);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+Tabela+'2 on '+Tabela+' (NOTA);');
    Execute;
  end;
end;

function ITEVENPED(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE '+Tabela+' (');
    Add('ID                      INTEGER NOT NULL,');
    Add('NOTA                    VARCHAR(9),');
    Add('MODELO                  CHAR(2),');
    Add('SERIE                   CHAR(3),');
    Add('SUBSERIE                CHAR(2),');
    Add('ORIGEM                  CHAR(2),');
    Add('EMISSAO                 DATE,');
    Add('ITEM                    INTEGER,');
    Add('CODIGO                  INTEGER,');
    Add('BARRAS                  VARCHAR(14),');
    Add('CFOP                    INTEGER,');
    Add('ST                      CHAR(4),');
    Add('CF                      VARCHAR(10),');
    Add('UND                     CHAR(3),');
    Add('QTD                     NUMERIC(15,4) DEFAULT 0,');
    Add('GRADE_X                 BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_Y                 BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_QUA               BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_VENDIDA           BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('PRECO                   NUMERIC(15,4) DEFAULT 0,');
    Add('DESCONTO                NUMERIC(15,4) DEFAULT 0,');
    Add('ACRESCIMO               NUMERIC(15,4) DEFAULT 0,');
    Add('TOTAL                   NUMERIC(15,4) DEFAULT 0,');
    Add('IPI                     NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_IPI                 NUMERIC(15,4) DEFAULT 0,');
    Add('BASE_ICMS_SUB           NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ICMS_SUB            NUMERIC(15,4) DEFAULT 0,');
    Add('BASE_ICMS               NUMERIC(15,4) DEFAULT 0,');
    Add('ICMS                    NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ICMS                NUMERIC(15,4) DEFAULT 0,');
    Add('SERIAL                  VARCHAR(40),');
    Add('OUTRAS_DESP_ACRE        NUMERIC(15,4) DEFAULT 0.0,');
    Add('CANCELADO               SMALLINT DEFAULT 0,');
    Add('SEQUENCIA               INTEGER,');
    Add('BASE_IPI                NUMERIC(15,4) DEFAULT 0,');
    Add('ICMS_RED                NUMERIC(15,4) DEFAULT 0,');
    Add('ICMS_SUB                NUMERIC(15,4) DEFAULT 0,');
    Add('PRECO_CUSTO             NUMERIC(15,4),');
    Add('LOTE                    VARCHAR(30),');
    Add('PIS_ST                  CHAR(2),');
    Add('PIS_BASE                NUMERIC(15,4) DEFAULT 0,');
    Add('PIS_ALIQ                NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_PIS                 NUMERIC(15,4) DEFAULT 0,');
    Add('PIS_SUB_BASE            NUMERIC(15,4) DEFAULT 0,');
    Add('PIS_SUB_ALIQ            NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_PIS_SUB             NUMERIC(15,4) DEFAULT 0,');
    Add('COFINS_ST               CHAR(2) DEFAULT 0,');
    Add('COFINS_BASE             NUMERIC(15,4) DEFAULT 0,');
    Add('COFINS_ALIQ             NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_COFINS              NUMERIC(15,4) DEFAULT 0,');
    Add('COFINS_SUB_BASE         NUMERIC(15,4) DEFAULT 0,');
    Add('COFINS_SUB_ALIQ         NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_COFINS_SUB          NUMERIC(15,4) DEFAULT 0,');
    Add('OBS                     VARCHAR(250),');
    Add('GRUPO                   INTEGER,');
    Add('TABELA_PRECO            VARCHAR(30),');
    Add('TOT_DESCONTO            NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ACRESCIMO           NUMERIC(15,4) DEFAULT 0,');
    Add('FIXOU_IPI               SMALLINT DEFAULT 0,');
    Add('FIXOU_ICMS              SMALLINT DEFAULT 0,');
    Add('PIS_VALOR_BC            NUMERIC(15,4) DEFAULT 0,');
    Add('PIS_VALOR_BC_SUB        NUMERIC(15,4) DEFAULT 0,');
    Add('COFINS_VALOR_BC         NUMERIC(15,4) DEFAULT 0,');
    Add('COFINS_VALOR_BC_SUB     NUMERIC(15,4) DEFAULT 0,');
    Add('CSOSN                   CHAR(4),');
    Add('TOT_ICMS_ABATIDO        NUMERIC(15,4) DEFAULT 0,');
    Add('IMPORTADO_POSTO         INTEGER DEFAULT 0,');
    Add('TOT_FRETE               NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_SEGURO              NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_OUTRAS              NUMERIC(15,4) DEFAULT 0,');
    Add('XPED                    VARCHAR(15),');
    Add('NITEMPED                INTEGER,');
    Add('ALIQI                   NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_TRIB                NUMERIC(15,4) DEFAULT 0,');
    Add('ALIQ_NCM                NUMERIC(15,4) DEFAULT 0,');
    Add('FCI                     VARCHAR(36),');
    Add('PERCENTUAL_GAS_NATURAL  NUMERIC(15,4) DEFAULT 0,');
    Add('PERCENTUAL_DIFERIMENTO  NUMERIC(15,4) DEFAULT 0,');
    Add('VALOR_DIFERIMENTO       NUMERIC(15,4) DEFAULT 0');
    Add(');');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+Tabela+';');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE '+Tabela+' ADD CONSTRAINT PK_'+Tabela+' PRIMARY KEY (ID);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+Tabela+'2 on '+Tabela+' (NOTA);');
    Execute;
  end;

end;

function VENDAS_ECF(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE '+Tabela+' (');
    Add('CUPOM         VARCHAR(9) NOT NULL,');
    Add('N_CAIXA       INTEGER DEFAULT 0,');
    Add('DATA          DATE DEFAULT CURRENT_DATE,');
    Add('HORA          TIME DEFAULT CURRENT_TIME,');
    Add('TURNO         INTEGER DEFAULT 0,');
    Add('OPERADOR      INTEGER DEFAULT 0,');
    Add('CLIENTE       INTEGER DEFAULT 0,');
    Add('FORNECEDOR    INTEGER DEFAULT 0,');
    Add('VENDEDOR      INTEGER DEFAULT 0,');
    Add('COMISSAO      NUMERIC(15,4),');
    Add('ACRESCIMO     NUMERIC(15,4) DEFAULT 0,');
    Add('DESCONTO      NUMERIC(15,4) DEFAULT 0,');
    Add('FRETE         NUMERIC(15,4) DEFAULT 0,');
    Add('TAXAENTREGA   NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ISS       NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ISS_D     NUMERIC(15,4),');
    Add('TOT_SERVICOS  NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ICMS      NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_PRODUTOS  NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_TOTALPAGO NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_VENDA     NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_TROCO     NUMERIC(15,4) DEFAULT 0,');
    Add('CANCELADO     SMALLINT DEFAULT 0 NOT NULL,');
    Add('SEQUENCIA     INTEGER,');
    Add('CONVENIO      NUMERIC(15,4) DEFAULT 0.0,');
    Add('ABERTO        CHAR(1),');
    Add('TERMINAL      CHAR(2),');
    Add('OBS           BLOB SUB_TYPE 1 SEGMENT SIZE 80');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+Tabela+';');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE '+Tabela+' ADD CONSTRAINT PK_'+Tabela+' PRIMARY KEY (CUPOM);');
    Execute;
  end;
end;

function OBSERVACAO(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE '+Tabela+' (');
    Add('ID            INTEGER ,');
    Add('OBS           BLOB SUB_TYPE 1 SEGMENT SIZE 80');
    Add(')');
    Execute;
  end;
end;

procedure EntradaSaida;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE EntradaSaida (');
    Add('ID               INTEGER NOT NULL,');
    Add('CODIGO           INTEGER NOT NULL,');
    Add('BARRAS           VARCHAR(14),');
    Add('QTD              NUMERIC(15,4) DEFAULT 0,');
    Add('COMPRA_VENDA     NUMERIC(15,4) DEFAULT 0');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do begin
    Clear;
    Add('CREATE SEQUENCE GEN_EntradaSaida;');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE EntradaSaida ADD CONSTRAINT PK_EntradaSaida PRIMARY KEY (ID);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_EntradaSaida2 on EntradaSaida (CODIGO);');
    Execute;
  end;
end;

function ComPed(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE '+Tabela+' (');
    Add('ID                   INTEGER NOT NULL,');
    Add('NOTA                 VARCHAR(9),');
    Add('MODELO               CHAR(2),');
    Add('SERIE                CHAR(3),');
    Add('SUBSERIE             CHAR(2),');
    Add('EMISSAO              DATE DEFAULT CURRENT_DATE,');
    Add('FORNECEDOR           INTEGER,');
    Add('CLIENTE              INTEGER,');
    Add('HORA                 TIME DEFAULT CURRENT_TIME,');
    Add('CFOPS                VARCHAR(40),');
    Add('OBS                  BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('NATUREZA             VARCHAR(50),');
    Add('COMERCIALIZACAO      SMALLINT DEFAULT 1,');
    Add('BASE_ICMS            NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ICMS             NUMERIC(15,4) DEFAULT 0,');
    Add('BASE_ICMS_SUB        NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ICMS_SUB         NUMERIC(15,4) DEFAULT 0,');
    Add('ICMS_FRETE           NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ICMS_FRETE       NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_PRODUTOS         NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_FRETE            NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_SEGURO           NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_OUTRAS           NUMERIC(15,4) DEFAULT 0,');
    Add('DESCONTO             NUMERIC(15,4) DEFAULT 0,');
    Add('ACRESCIMO            NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_IPI              NUMERIC(15,4) DEFAULT 0,');
    Add('TOTAL                NUMERIC(15,4) DEFAULT 0,');
    Add('TRANSP_1             INTEGER,');
    Add('TRANSP_2             INTEGER,');
    Add('FRETE_1              CHAR(1),');
    Add('FRETE_2              CHAR(2),');
    Add('OPERADOR             INTEGER DEFAULT 0,');
    Add('SEQUENCIA            INTEGER,');
    Add('TABELA_PRECO         INTEGER,');
    Add('ANEXA_ST             SMALLINT DEFAULT 0,');
    Add('CONTA                INTEGER,');
    Add('CUSTO                INTEGER,');
    Add('IMPORTADOS           VARCHAR(255),');
    Add('TOT_PIS              NUMERIC(15,4),');
    Add('TOT_COFINS           NUMERIC(15,4),');
    Add('TOT_PIS_SUB          NUMERIC(15,4),');
    Add('TOT_COFINS_SUB       NUMERIC(15,4),');
    Add('SAIDA                DATE DEFAULT CURRENT_DATE,');
    Add('PIS_VALOR_BC         NUMERIC(15,4) DEFAULT 0,');
    Add('PIS_VALOR_BC_SUB     NUMERIC(15,4) DEFAULT 0,');
    Add('COFINS_VALOR_BC      NUMERIC(15,4) DEFAULT 0,');
    Add('COFINS_VALOR_BC_SUB  NUMERIC(15,4) DEFAULT 0,');
    Add('SOMENTE_SERVICO      SMALLINT DEFAULT 0,');
    Add('TOT_ISS              NUMERIC(15,4) DEFAULT 0,');
    Add('IMPORTACAO           SMALLINT DEFAULT 0,');
    Add('CHAVE_NFE            VARCHAR(44)');
    Add(');');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+Tabela+';');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE '+Tabela+' ADD CONSTRAINT PK_'+Tabela+' PRIMARY KEY (ID);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+Tabela+'2 on '+Tabela+' (NOTA);');
    Execute;
  end;

end;

function Grade(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE '+Tabela+' (');
    Add('ID           INTEGER NOT NULL PRIMARY KEY,');
    Add('CODIGO       INTEGER,');
    Add('BARRAS       VARCHAR(14),');
    Add('NOME         VARCHAR(75) NOT NULL,');
    Add('QTD          NUMERIC(15,4) DEFAULT 0,');
    Add('QTD_MINIMO   NUMERIC(15,4) DEFAULT 0,');
    Add('QTD_MAXIMO   NUMERIC(15,4) DEFAULT 0,');
    Add('COR          VARCHAR(25),');
    Add('TAMANHO      VARCHAR(25),');
    Add('ATIVO        SMALLINT DEFAULT 1 NOT NULL');
    Add(')');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+Tabela+';');
    Execute;
  end;
end;

function ITEComPED(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE '+Tabela+' (');
    Add('ID                       INTEGER NOT NULL,');
    Add('NOTA                     VARCHAR(9),');
    Add('EMISSAO                  DATE,');
    Add('FORNECEDOR               INTEGER,');
    Add('CLIENTE                  INTEGER,');
    Add('ITEM                     INTEGER,');
    Add('CODIGO                   INTEGER,');
    Add('BARRAS                   VARCHAR(14),');
    Add('CFOP                     INTEGER,');
    Add('ST                       CHAR(4),');
    Add('CF                       VARCHAR(10),');
    Add('QTD                      NUMERIC(15,4) DEFAULT 0,');
    Add('GRADE_X                  BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_Y                  BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('GRADE_QUA                BLOB SUB_TYPE 1 SEGMENT SIZE 80,');
    Add('PRECO                    NUMERIC(15,4) DEFAULT 0,');
    Add('TOTAL                    NUMERIC(15,4) DEFAULT 0,');
    Add('ICMS                     NUMERIC(15,4) DEFAULT 0,');
    Add('IPI                      NUMERIC(15,4) DEFAULT 0,');
    Add('BASE_ICMS                NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_IPI                  NUMERIC(15,4) DEFAULT 0,');
    Add('ACRESCIMO                NUMERIC(15,4) DEFAULT 0,');
    Add('DESCONTO                 NUMERIC(15,4) DEFAULT 0,');
    Add('OUTRAS_DESP_ACRE         NUMERIC(15,4) DEFAULT 0.0,');
    Add('FIXOU                    SMALLINT DEFAULT 1,');
    Add('BASE_ICMS_SUB            NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ICMS_SUB             NUMERIC(15,4) DEFAULT 0,');
    Add('LOTE                     VARCHAR(30),');
    Add('DATA_FABRICACAO          DATE,');
    Add('DATA_VALIDADE            DATE,');
    Add('REDUCAO_ICMS             NUMERIC(15,4) DEFAULT 0,');
    Add('FIXOU_IPI                SMALLINT DEFAULT 0,');
    Add('FIXOU_ICMS               SMALLINT DEFAULT 0,');
    Add('TOT_ICMS                 NUMERIC(15,4) DEFAULT 0,');
    Add('SAIDA                    DATE DEFAULT CURRENT_DATE,');
    Add('PIS_ST                   CHAR(2),');
    Add('PIS_ALIQ                 NUMERIC(15,4) DEFAULT 0,');
    Add('PIS_BASE                 NUMERIC(15,4) DEFAULT 0,');
    Add('PIS_VALOR_BC             NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_PIS                  NUMERIC(15,4) DEFAULT 0,');
    Add('PIS_SUB_BASE             NUMERIC(15,4) DEFAULT 0,');
    Add('PIS_SUB_ALIQ             NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_PIS_SUB              NUMERIC(15,4) DEFAULT 0,');
    Add('PIS_VALOR_BC_SUB         NUMERIC(15,4) DEFAULT 0,');
    Add('COFINS_ST                CHAR(2),');
    Add('COFINS_ALIQ              NUMERIC(15,4) DEFAULT 0,');
    Add('COFINS_BASE              NUMERIC(15,4) DEFAULT 0,');
    Add('COFINS_VALOR_BC          NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_COFINS               NUMERIC(15,4) DEFAULT 0,');
    Add('COFINS_SUB_BASE          NUMERIC(15,4) DEFAULT 0,');
    Add('COFINS_SUB_ALIQ          NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_COFINS_SUB           NUMERIC(15,4) DEFAULT 0,');
    Add('COFINS_VALOR_BC_SUB      NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ISS                  NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_DESCONTO             NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ACRESCIMO            NUMERIC(15,4) DEFAULT 0,');
    Add('CST_IPI                  CHAR(2),');
    Add('PRECO_MAXIMO_CONSUMIDOR  NUMERIC(15,4) DEFAULT 0,');
    Add('CALC_PIS_COFINS          SMALLINT DEFAULT 0,');
    Add('BASE_ICMS_SUB_RET        NUMERIC(15,4) DEFAULT 0,');
    Add('TOT_ICMS_SUB_RET         NUMERIC(15,4) DEFAULT 0,');
    Add('CSOSN                    CHAR(4)');
    Add(');');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+Tabela+';');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('ALTER TABLE '+Tabela+' ADD CONSTRAINT PK_'+Tabela+' PRIMARY KEY (ID);');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('create index PK_'+Tabela+'2 on '+Tabela+' (NOTA);');
    Execute;
  end;

end;

function CurvaAbc(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE '+Tabela+' (');
    Add('ID                       INTEGER,');
    Add('CODIGO                   INTEGER,');
    Add('DESCRICAO                VARCHAR(75),');
    Add('QTD                      NUMERIC(15,4) DEFAULT 0,');
    Add('PRECO                    NUMERIC(15,4) DEFAULT 0,');
    Add('TOTAL                    NUMERIC(15,4) DEFAULT 0,');
    Add('PERCENTUAL               NUMERIC(15,4) DEFAULT 0');
    Add(');');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+Tabela+';');
    Execute;
  end;
end;

function ApagaTabelaSo(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('DROP TABLE '+Tabela);
    Execute;
  end;
end;

function ApagaTabela(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('DROP TABLE '+Tabela);
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('DROP SEQUENCE GEN_'+Tabela);
    Execute;
  end;
end;

function PedEntSai(Tabela: string): string;
begin
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE TABLE '+Tabela+' (');
    Add('ID                       INTEGER,');
    Add('DATA                     DATE DEFAULT CURRENT_DATE,');
    Add('CODIGO                   INTEGER,');
    Add('DESCRICAO                VARCHAR(75),');
    Add('QTD                      NUMERIC(15,4) DEFAULT 0,');
    Add('PRECO                    NUMERIC(15,4) DEFAULT 0,');
    Add('Custo                    NUMERIC(15,4) DEFAULT 0,');
    Add('TOTAL                    NUMERIC(15,4) DEFAULT 0,');
    Add('PERCENTUAL               NUMERIC(15,4) DEFAULT 0');
    Add(');');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do begin
    Clear;
    Add('CREATE SEQUENCE GEN_'+Tabela+';');
    Execute;
  end;
end;

end.


    with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');


    Execute;
  end;




{
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');
    Add('');


    Execute;
  end;
}



      Add('CAR_PROSER', ftString, 1, False);
      Add('CAR_CODOBJ', ftString, 5, False);
Add('CANCELADO    SMALLINT DEFAULT 0,');



