unit FUNCOESGERAIS;

interface

uses
  Windows, Dialogs, Forms, Controls, SysUtils, Mask, stdCtrls,
  Classes, extCtrls, Buttons, Grids, Messages, ComCtrls,
  Registry, WinSpool, Printers, db, RXDBCtrl, MASKUTILS, Variants,
  comobj, Shellapi, Winsock, DBCtrls, Math,
  MemDS, DBAccess, Uni, UniProvider, InterBaseUniProvider;

  procedure FiltroCompras( TipodePesquisa, CodigoDoFornecedor, Documento: String );
  procedure FiltroItensCompras;
  procedure FiltroOS;
  procedure FiltroOSServiçosPeças(Numero:String);
  procedure FiltroItensPedidoCliente(Numero:String);
  procedure FiltroItensPedidos;
  procedure FiltroContasaPagarGeralEstorno;
  procedure FiltroCartoesGeralEstorno;
  procedure FiltroContasaPagarGeral;
  procedure FiltroCartoesGeral;
  procedure FiltroCartoesGeralVencidos;
  procedure FiltroCartoesGeralTotalVencidos;
  procedure FiltroContasaPagarGeralEstornoTotal;
  procedure FiltroContasaPagarGeralEstornoTotalVencidos;
  procedure FiltroContasaPagarGeralTotal;
  procedure FiltroCartoesGeralTotal;
  procedure FiltroCartoesGeralEstornoTotal;
  procedure InformacoesCaixaFrente(dc,ap,parcela:string;Valor:double);
  // procedure InformacoesCaixaFrenteFormas(dc,ap,parcela,MeioPagaVenda:string;Valor:double);
  procedure InformacoesCaixaFrenteFormas(dc,ap,parcela,MeioPagaVenda,Observacao:string;Valor:double);
  procedure InformacoesCaixaFrenteFormasVendas(dc,ap,parcela,MeioPagaVenda,Observacao:string;Valor:double);
  // procedure InformacoesCaixaFrenteFormasDevolucao(dc,ap,parcela,MeioPagaVenda,Observacao:string;Valor:double);
  procedure InformacoesCaixaFrenteFormasDevolucao(dc,ap,parcela,MeioPagaVenda,Observacao,Historico:string;Valor:double);
  procedure InformacoesCaixa(HISTORICOC,Observacao,Portador,RECEBEMOS,ENDERECOR,
    EMITENTE,DOC_EMITE,ENDERECOE,DC,TIPO,AVIS_PRAZO,ENTREGADOR,
    Parcela:string;CLIENTE,FORNECEDOR,Operador,Vendedor,Historico,
    SubHistorico:integer;DATA,HORA:tdatetime;Valor:double;SP:string);

  procedure InformacoesCaixaVendas(HISTORICOC,Observacao,Portador,RECEBEMOS,ENDERECOR,
    EMITENTE,DOC_EMITE,ENDERECOE,DC,TIPO,AVIS_PRAZO,ENTREGADOR,
    Parcela:string;CLIENTE,FORNECEDOR,Operador,Vendedor,Historico,
    SubHistorico:integer;DATA,HORA:tdatetime;Valor:double;SP:String);

  procedure BaixaEntraEstoque( BaixaEntrada: String );
    var CustoEstoque, CustoEntrada:double;
    vendo:string;
  procedure FiltroQuery(Tabela,campo,FiltroTabela: String);
  procedure ConsultaGeral;
  procedure ImformacoesCliente;
  procedure FiltroDADOCLIE;
  procedure FiltroContasReceberDia( RecebeEstorna:String; DataEntradaPagamento: tdatetime );
  procedure FiltroContasReceberINADIMPLENTESDia( RecebeEstorna:String; DataEntradaPagamento: tdatetime );
  procedure FiltroContasReceberINADIMPLENTESCliente( CodigodoCliente:String);
  procedure FiltroContasReceber( CodigoDoCliente, RecebeEstorna: String );
  procedure FiltroDiversasFormas( CodigoDoCliente: String );
  // procedure FiltroDiversasFormas( DataEMISSAO: tdatetime);
  procedure FiltroCredito( CodigoDoCliente: String );
  procedure FiltroContasReceberMarcado( CodigoDoCliente, RecebeEstorna: String );
  procedure FiltroContasReceberSoma( CodigoDoCliente, RecebeEstorna: String );
  procedure FiltroContasReceberCaderneta( CodigoDoCliente, RecebeEstorna: String );
  procedure InformacoesRecebimentoContas(Historico,Observacao,dc,ap,parcela:string;Valor:double;Cliente:integer);
  procedure InformacoesPagamentoContas(Historico,dc,ap,
    parcela:string;Valor:double;Cliente:integer);
  procedure EscolheVendedor;
  procedure TotalDuplicatas;
  procedure EscolhePortador;
  procedure FiltroCaixa(DataDoCaixa:TDateTime;Turno:string);
  procedure SomatoriaCaixa;
  procedure InformacoesTransportedeSaldo(Historico,DC:string;valor:double);
  procedure InformacoesFechamentoDeCaixa(Historico:string;valor:double);
  procedure GravaMestreCAI(HISTORICOC,Observacao:string;HORA:tdatetime;Valor:double);
  procedure InformacoesCaixaSangriaSuprimento(Sang_supr,obs,dc,
    ap,RECEBEMOS,ENDERECOR,OBSERVACAO,EMITENTE,DOC_EMITE,
    ENDERECOE:string;Valor:double;Cliente,Fornecedor,Vendedor,Historico,
    SubHistorico:integer;SanSup:string);
  procedure GeraParcelamentoDuplicatas(Parcelas,
    Dias:integer;DataInicial:TDateTime;ValorVenda:double);
  procedure FiltroDuplicatas;
  procedure GeraContaAReceber;
  // procedure GeraContasAPagar(ClienteCompra:string);
  procedure GeraContasAPagar(ClienteCompraX:string);
  procedure InformacoesCaixaFrentePrazo(dc,ap,parcela:string;Valor:double);
  procedure FiltroContasAPagar( CodigoDoFornecedor: String );
  procedure ConsultaClientes;
  procedure ConsultaOBJETOS;
  procedure ConsultaFornecedores;
  procedure ConsultaVendedores;
  procedure ConsultaPortadores;
  procedure ConsultaUNIDADES;
  procedure ConsultaGRUPOFOR;
  procedure ConsultaGRUPO;
  procedure ConsultaGRUPOCLI;
  procedure ConsultaCartoes;
  procedure ConsultaSUB_HIST;
  procedure ConsultaHISTORIC;
  procedure ConsultaOperadores;
  procedure ConsultaProdutos;
  procedure Consultaveiculos;
  procedure ConsultaESTADOS;
  procedure FiltroVendas( TipodePesquisa, CodigoDoFornecedor, Documento: String );
  procedure FiltroItensSaidas;
  procedure FiltroItensPedidoClientes;
  procedure FiltroItensCompras2;
  procedure FiltroItensPedidos2;
  procedure ApagaEntrada;
  procedure ApagaPedido;
  procedure FiltroItensVendas2;
  procedure FiltroItensPedidoCliente2;
  procedure ApagaSaidas;
  procedure ApagaPedidoCliente;
  procedure FiltroItensVendas;
  procedure FiltroItensPedidoClentes;
  procedure GeraEstoqueSaida;
  procedure GeraEstoque;
  procedure GeraEstoqueSaidas;
  procedure CadastrodeFornecedores;
  procedure CadastroCartoes;
  procedure CadastrodeObjetos;
  procedure EditCadastroFornecedor;
  procedure EditCadastroCARTOES;
  procedure EditCadastroObjetos;
  procedure CadastrodeClientes;
  procedure EditCadastroClientes;
  procedure CadastrodeProdutos;
  procedure EditCadastroProdutos;
  procedure CadastrodeGRUPO;
  procedure CadastrodeUNIDADES;
  procedure CadastrodeGRUPOCLI;
  procedure CadastrodeGRUPOFOR;
  procedure CadastrodeVeiculos;
  procedure ConsultaBCA(CodigoConsulta: string);
  function ProdutoPorApelido( CodigodeBarras, Codigox: string): string;
  procedure NumedordoLancamento;
  procedure FiltroDiversasFormasx( DataEMISSAO: tdatetime);
  procedure FiltroDiversasFormasxy( DataEMISSAOI,DataEMISSAOF: tdatetime);
  procedure FiltroDiversasFormasx2( DataEMISSAO: tdatetime; VendasContasx:string);
  procedure FiltroDiversasFormasxy2( DataEMISSAOI,DataEMISSAOF: tdatetime; VendasContasx:string);
  // procedure FiltroDiversasFormas;

var
  TotalConta, TotalContaBaixa, ValorTotalDaBaixa :double;
  Baixax, NovoLancamento: string;

  CampoConsulta, Tabela, DESCRICAO: string;
  // Queere: TUniQuery;

implementation

uses DADOSMOVIMENTO, FUNCOES, dadosFinaceiro, DADOSFRENTE, FrentredeCaixa,
  PRINCIPAL, CONSULTAS, DADOS_CONSULTAS, FUNCOESUNIDAC, CAD_MANUTENCAO,
  DADOS_CADASTROS, GERAL2, dadosOBJETOS, Cadastros, Movimentacoes;

procedure FiltroCompras( TipodePesquisa, CodigoDoFornecedor, Documento: String );
begin
  DADOSMOVIMENTOF.COMPRAS.Close;
  DADOSMOVIMENTOF.COMPRAS.SQL.Clear;
  if TipodePesquisa='F' then
    DADOSMOVIMENTOF.COMPRAS.SQL.Add('SELECT * FROM COMPRAS WHERE FORNECEDOR='+
      CodigoDoFornecedor+' ORDER BY EMISSAO desc')
  else if TipodePesquisa='N' then begin
    Documento:=StrZero(StrTofloat(Documento),9,0);
    DADOSMOVIMENTOF.COMPRAS.SQL.Add('SELECT * FROM COMPRAS WHERE NOTA='+
      QuotedStr(Documento));
  end
  else
    DADOSMOVIMENTOF.COMPRAS.SQL.Add('SELECT * FROM COMPRAS ORDER BY EMISSAO desc');
  if CodigoDoFornecedor+Documento='' then
    DADOSMOVIMENTOF.COMPRAS.SQL.Add('SELECT * FROM COMPRAS ORDER BY EMISSAO desc');
  DADOSMOVIMENTOF.COMPRAS.Open;
  DADOSMOVIMENTOF.COMPRAS.First;
  TipodePesquisa:='';
end;

procedure FiltroOS;
begin
 DataOBJETOSx.ITEMOBJE.Close;
  DataOBJETOSx.ITEMOBJE.SQL.Clear;
  DataOBJETOSx.ITEMOBJE.SQL.Add('SELECT * FROM ITEMOBJE WHERE NUMERO='+
    DataOBJETOSx.ORDENS.FieldByName('NUMERO').AsString);
  DataOBJETOSx.ITEMOBJE.Open;
  DataOBJETOSx.ITEMOBJE.First;

  DataOBJETOSx.PRODSERV.Close;
  DataOBJETOSx.PRODSERV.SQL.Clear;
  DataOBJETOSx.PRODSERV.SQL.Add('SELECT * FROM PRODSERV WHERE NUMERO='+
    DataOBJETOSx.ORDENS.FieldByName('NUMERO').AsString);
  DataOBJETOSx.PRODSERV.Open;
  DataOBJETOSx.PRODSERV.First;
end;

procedure FiltroOSServiçosPeças(Numero:String);
begin
  DataOBJETOSx.PRODSERV.Close;
  DataOBJETOSx.PRODSERV.SQL.Clear;
  DataOBJETOSx.PRODSERV.SQL.Add('SELECT * FROM PRODSERV WHERE NUMERO='+Numero);
  DataOBJETOSx.PRODSERV.Open;
  DataOBJETOSx.PRODSERV.First;

  DataOBJETOSx.ORDENS.Close;
  DataOBJETOSx.ORDENS.SQL.Clear;
  DataOBJETOSx.ORDENS.SQL.Add('SELECT * FROM ORDENS WHERE NUMERO='+Numero);
  DataOBJETOSx.ORDENS.Open;
  DataOBJETOSx.ORDENS.First;
end;

procedure FiltroItensPedidoCliente(Numero:String);
begin
  DADOSMOVIMENTOF.PED_CLI.Close;
  DADOSMOVIMENTOF.PED_CLI.SQL.Clear;
  DADOSMOVIMENTOF.PED_CLI.SQL.Add('SELECT * FROM PED_CLI WHERE ID='+Numero);
  DADOSMOVIMENTOF.PED_CLI.Open;

  DADOSMOVIMENTOF.ITEPEDIDOSCLI.Close;
  if not DADOSMOVIMENTOF.PED_CLI.IsEmpty then begin
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.SQL.Clear;
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.SQL.Add('SELECT * FROM ITEPEDIDOSCLI WHERE NOTA='+
    DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString+
    ' AND EMISSAO= :_dataCOMPRA');
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.ParamByName('_dataCOMPRA').asdatetime := DADOSMOVIMENTOF.PED_CLI.FieldByName('EMISSAO').AsDateTime;
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.Open;
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.First;
  end;
end;

procedure FiltroItensCompras;
begin
  if not DADOSMOVIMENTOF.COMPRAS.IsEmpty then begin
    DADOSMOVIMENTOF.ITECOMPRAS.Close;
    DADOSMOVIMENTOF.ITECOMPRAS.SQL.Clear;
    DADOSMOVIMENTOF.ITECOMPRAS.SQL.Add('SELECT * FROM ITECOMPRAS WHERE NOTA='+
      QuotedStr(DADOSMOVIMENTOF.COMPRAS.FieldByName('NOTA').AsString)+' AND ' +
      'FORNECEDOR='+QuotedStr(DADOSMOVIMENTOF.COMPRAS.FieldByName(
        'FORNECEDOR').AsString)+' AND EMISSAO= :_dataCOMPRA'+
        ' order by item');
    DADOSMOVIMENTOF.ITECOMPRAS.ParamByName('_dataCOMPRA').asdatetime := DADOSMOVIMENTOF.COMPRAS.FieldByName('EMISSAO').AsDateTime;
    DADOSMOVIMENTOF.ITECOMPRAS.Open;

    DADOSMOVIMENTOF.ITECOMPRAS4.Close;
    DADOSMOVIMENTOF.ITECOMPRAS4.SQL.Clear;
    DADOSMOVIMENTOF.ITECOMPRAS4.SQL.Add('SELECT * FROM ITECOMPRAS WHERE NOTA='+
      QuotedStr(DADOSMOVIMENTOF.COMPRAS.FieldByName('NOTA').AsString)+' AND ' +
      'FORNECEDOR='+QuotedStr(DADOSMOVIMENTOF.COMPRAS.FieldByName(
        'FORNECEDOR').AsString)+' AND EMISSAO= :_dataCOMPRA'+
        ' order by item');
    DADOSMOVIMENTOF.ITECOMPRAS4.ParamByName('_dataCOMPRA').asdatetime := DADOSMOVIMENTOF.COMPRAS.FieldByName('EMISSAO').AsDateTime;
    DADOSMOVIMENTOF.ITECOMPRAS4.Open;
  end;
end;

procedure FiltroItensPedidos;
begin
  if not DADOSMOVIMENTOF.PEDIDOS.IsEmpty then begin
    DADOSMOVIMENTOF.ITEPEDIDOS.Close;
    DADOSMOVIMENTOF.ITEPEDIDOS.SQL.Clear;
    DADOSMOVIMENTOF.ITEPEDIDOS.SQL.Add('SELECT * FROM ITEPEDIDOS WHERE NOTA='+
      QuotedStr(DADOSMOVIMENTOF.PEDIDOS.FieldByName('NOTA').AsString)+' AND ' +
      'FORNECEDOR='+QuotedStr(DADOSMOVIMENTOF.PEDIDOS.FieldByName(
        'FORNECEDOR').AsString)+' AND EMISSAO= :_dataCOMPRA'+
        ' order by item');
    DADOSMOVIMENTOF.ITEPEDIDOS.ParamByName('_dataCOMPRA').asdatetime := DADOSMOVIMENTOF.PEDIDOS.FieldByName('EMISSAO').AsDateTime;
    DADOSMOVIMENTOF.ITEPEDIDOS.Open;
    DADOSMOVIMENTOF.ITEPEDIDOS4.Close;
    DADOSMOVIMENTOF.ITEPEDIDOS4.SQL.Clear;
    DADOSMOVIMENTOF.ITEPEDIDOS4.SQL.Add('SELECT * FROM ITEPEDIDOS WHERE NOTA='+
      QuotedStr(DADOSMOVIMENTOF.PEDIDOS.FieldByName('NOTA').AsString)+' AND ' +
      'FORNECEDOR='+QuotedStr(DADOSMOVIMENTOF.PEDIDOS.FieldByName(
        'FORNECEDOR').AsString)+' AND EMISSAO= :_dataCOMPRA'+
        ' order by item');
    DADOSMOVIMENTOF.ITEPEDIDOS4.ParamByName('_dataCOMPRA').asdatetime := DADOSMOVIMENTOF.PEDIDOS.FieldByName('EMISSAO').AsDateTime;
    DADOSMOVIMENTOF.ITEPEDIDOS4.Open;
  end;
end;

procedure FiltroContasaPagarGeralEstorno;
begin
  DataFinanceiro.Pagar.Close;
  DataFinanceiro.Pagar.SQL.Clear;
  DataFinanceiro.Pagar.SQL.Add('SELECT * FROM Pagar where VALOR_PAGO>0 order by VENCIMENTO desc');
  DataFinanceiro.Pagar.Open;
  DataFinanceiro.Pagar.First;
end;

procedure FiltroCartoesGeralEstorno;
begin
  DataFinanceiro.CARTOESITENS.Close;
  DataFinanceiro.CARTOESITENS.SQL.Clear;
  DataFinanceiro.CARTOESITENS.SQL.Add('SELECT * FROM CARTOESITENS where VALOR_RECEBIDO>0 order by VENCIMENTO desc');
  DataFinanceiro.CARTOESITENS.Open;
  DataFinanceiro.CARTOESITENS.First;
end;

procedure FiltroContasaPagarGeral;
begin
  DataFinanceiro.Pagar.Close;
  DataFinanceiro.Pagar.SQL.Clear;
  DataFinanceiro.Pagar.SQL.Add('SELECT * FROM Pagar where VALOR<>VALOR_PAGO order by VENCIMENTO,ORDEM');
  DataFinanceiro.Pagar.Open;
  DataFinanceiro.Pagar.First;
end;

procedure FiltroCartoesGeral;
begin
  DataFinanceiro.CARTOESITENS.Close;
  DataFinanceiro.CARTOESITENS.SQL.Clear;
  DataFinanceiro.CARTOESITENS.SQL.Add('SELECT * FROM CARTOESITENS where VALORDES<>VALOR_RECEBIDO order by VENCIMENTO,ORDEM');
  DataFinanceiro.CARTOESITENS.Open;
  DataFinanceiro.CARTOESITENS.First;
end;

procedure FiltroCartoesGeralVencidos;
begin
  DataFinanceiro.CARTOESITENS.Close;
  DataFinanceiro.CARTOESITENS.SQL.Clear;
  DataFinanceiro.CARTOESITENS.SQL.Add('SELECT * FROM CARTOESITENS where VALORDES<>VALOR_RECEBIDO and '+
  'VENCIMENTO<=:_dataCOMPRA order by VENCIMENTO,ORDEM');
  DataFinanceiro.CARTOESITENS.ParamByName('_dataCOMPRA').asdatetime := date;
  DataFinanceiro.CARTOESITENS.Open;
  DataFinanceiro.CARTOESITENS.First;
end;

procedure FiltroCartoesGeralTotalVencidos;
begin
  DataFinanceiro.CARTOESITENS_TOTAL.Close;
  DataFinanceiro.CARTOESITENS_TOTAL.SQL.Clear;
  DataFinanceiro.CARTOESITENS_TOTAL.SQL.Add('SELECT * FROM CARTOESITENS where VALORDES<>VALOR_RECEBIDO and '+
  'VENCIMENTO<=:_dataCOMPRA order by VENCIMENTO,ORDEM');
  DataFinanceiro.CARTOESITENS_TOTAL.ParamByName('_dataCOMPRA').asdatetime := date;
  DataFinanceiro.CARTOESITENS_TOTAL.Open;
  DataFinanceiro.CARTOESITENS_TOTAL.First;
end;

procedure FiltroContasaPagarGeralEstornoTotal;
begin
  DataFinanceiro.PAGAR_Total.Close;
  DataFinanceiro.PAGAR_Total.SQL.Clear;
  DataFinanceiro.PAGAR_Total.SQL.Add('SELECT * FROM Pagar where VALOR_PAGO>0 order by VENCIMENTO,ORDEM desc');
  DataFinanceiro.PAGAR_Total.Open;
  DataFinanceiro.PAGAR_Total.First;
end;

procedure FiltroContasaPagarGeralEstornoTotalVencidos;
begin
  DataFinanceiro.PAGAR_Total.Close;
  DataFinanceiro.PAGAR_Total.SQL.Clear;
  DataFinanceiro.PAGAR_Total.SQL.Add('SELECT * FROM Pagar where VALOR_PAGO>0 order by VENCIMENTO,ORDEM desc');
  DataFinanceiro.PAGAR_Total.Open;
  DataFinanceiro.PAGAR_Total.First;
end;

procedure FiltroCartoesGeralEstornoTotal;
begin
  DataFinanceiro.CARTOESITENS_TOTAL.Close;
  DataFinanceiro.CARTOESITENS_TOTAL.SQL.Clear;
  DataFinanceiro.CARTOESITENS_TOTAL.SQL.Add('SELECT * FROM CARTOESITENS where VALOR_RECEBIDO>0 order by VENCIMENTO,ORDEM desc');
  DataFinanceiro.CARTOESITENS_TOTAL.Open;
  DataFinanceiro.CARTOESITENS_TOTAL.First;
end;

procedure FiltroContasaPagarGeralTotal;
begin
  DataFinanceiro.PAGAR_Total.Close;
  DataFinanceiro.PAGAR_Total.SQL.Clear;
  DataFinanceiro.PAGAR_Total.SQL.Add('SELECT * FROM Pagar where VALOR<>VALOR_PAGO order by VENCIMENTO,ORDEM');
  DataFinanceiro.PAGAR_Total.Open;
  DataFinanceiro.PAGAR_Total.First;
end;

procedure FiltroCartoesGeralTotal;
begin
  DataFinanceiro.CARTOESITENS_TOTAL.Close;
  DataFinanceiro.CARTOESITENS_TOTAL.SQL.Clear;
  DataFinanceiro.CARTOESITENS_TOTAL.SQL.Add('SELECT * FROM CARTOESITENS where VALORDES<>VALOR_RECEBIDO order by VENCIMENTO,ORDEM');
  DataFinanceiro.CARTOESITENS_TOTAL.Open;
  DataFinanceiro.CARTOESITENS_TOTAL.First;
end;


procedure InformacoesCaixaFrente(dc,ap,parcela:string;Valor:double);
begin
  DADOSFRENTEf.CONF_PADRAO.Open;
  InformacoesCaixa('Venda Frente de Caixa - '+MeioPagamento,'',Portadorx,'','',
    '','','',dc,'V',ap,ENTREGADOR,parcela,DADOSFRENTEf.VENDAS_ECF2.FieldByName(
      'CLIENTE').AsInteger,0,StrToInt(DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString),StrToInt(Vendedorxyz),0,0,DATE,
      TIME,Valor,'');
end;

procedure InformacoesCaixaFrenteFormas(dc,ap,parcela,MeioPagaVenda,Observacao:string;Valor:double);
begin
  DADOSFRENTEf.CONF_PADRAO.Open;
  InformacoesCaixa('Venda Frente de Caixa - '+MeioPagaVenda,Observacao,Portadorx,'','',
    '','','',dc,'V',ap,ENTREGADOR,parcela,DADOSFRENTEf.VENDAS_ECF2.FieldByName(
      'CLIENTE').AsInteger,0,StrToInt(DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString),
      StrToInt(Vendedorxyz),0,0,DATE,TIME,Valor,'');
end;

procedure InformacoesCaixaFrenteFormasVendas(dc,ap,parcela,MeioPagaVenda,Observacao:string;Valor:double);
begin
  DADOSFRENTEf.CONF_PADRAO.Open;
  InformacoesCaixaVendas('Venda Frente de Caixa - '+MeioPagaVenda,Observacao,Portadorx,'','',
    '','','',dc,'V',ap,ENTREGADOR,parcela,DADOSFRENTEf.VENDAS_ECF2.FieldByName(
      'CLIENTE').AsInteger,0,StrToInt(DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString),
      StrToInt(Vendedorxyz),0,0,DATE,TIME,Valor,'');
end;

procedure InformacoesCaixaFrenteFormasDevolucao(dc,ap,parcela,MeioPagaVenda,Observacao,Historico:string;Valor:double);
begin
  DADOSFRENTEf.CONF_PADRAO.Open;
  InformacoesCaixa(Historico,Observacao,Portadorx,'','',
    '','','',dc,'V',ap,ENTREGADOR,parcela,DADOSFRENTEf.VENDAS_ECF2.FieldByName(
      'CLIENTE').AsInteger,0,StrToInt(DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString),
      StrToInt(Vendedorxyz),0,0,DATE,TIME,Valor,'');
end;

procedure InformacoesCaixa(HISTORICOC,Observacao,Portador,RECEBEMOS,ENDERECOR,
  EMITENTE,DOC_EMITE,ENDERECOE,DC,TIPO,AVIS_PRAZO,ENTREGADOR,
  Parcela:string;CLIENTE,FORNECEDOR,Operador,Vendedor,Historico,
  SubHistorico:integer;DATA,HORA:tdatetime;Valor:double;SP:String);
begin
  if APPLAUDATES='S' then begin
    DADOSFRENTEf.CAIXA.Close;
    DADOSFRENTEf.CAIXA.CachedUpdates:=true;
  end;
  DADOSFRENTEf.CONF_PADRAO.Open;
  DADOSFRENTEf.CAIXA.Open;
  DADOSFRENTEf.CAIXA.Append;
  if FechamentoCaixa<>'S' then
    DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString:=
     DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString
  else
    DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString:='000000000';

  if BaixaContasAReceberNumedor<>'' then
    DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString:=BaixaContasAReceberNumedor;

  DADOSFRENTEf.CAIXA.FieldByName('Portador').AsString:=Portador;
  DADOSFRENTEf.CAIXA.FieldByName('RECEBEMOS').AsString:=RECEBEMOS;
  DADOSFRENTEf.CAIXA.FieldByName('ENDERECOR').AsString:=ENDERECOR;
  DADOSFRENTEf.CAIXA.FieldByName('EMITENTE').AsString:=EMITENTE;
  DADOSFRENTEf.CAIXA.FieldByName('DOC_EMITE').AsString:=DOC_EMITE;
  DADOSFRENTEf.CAIXA.FieldByName('ENDERECOE').AsString:=ENDERECOE;
  DADOSFRENTEf.CAIXA.FieldByName('ENTREGADOR').AsString:=ENTREGADOR;
  DADOSFRENTEf.CAIXA.FieldByName('CLIENTE').AsInteger:=CLIENTE;
  DADOSFRENTEf.CAIXA.FieldByName('FORNECEDOR').AsInteger:=FORNECEDOR;
  DADOSFRENTEf.CAIXA.FieldByName('Operador').AsInteger:=Operador;
  DADOSFRENTEf.CAIXA.FieldByName('Vendedor').AsInteger:=Vendedor;
  DADOSFRENTEf.CAIXA.FieldByName('Historico').AsInteger:=Historico;
  DADOSFRENTEf.CAIXA.FieldByName('SubHistorico').AsInteger:=SubHistorico;
  DADOSFRENTEf.CAIXA.FieldByName('HISTORICOC').AsString:=HISTORICOC;
  DADOSFRENTEf.CAIXA.FieldByName('OBSERVACAO').AsString:=Observacao;
  DADOSFRENTEf.CAIXA.FieldByName('DC').AsString:=DC;
  DADOSFRENTEf.CAIXA.FieldByName('SANGSUPR').AsString:=SP;
  DADOSFRENTEf.CAIXA.FieldByName('AVIS_PRAZO').AsString:=AVIS_PRAZO;
  DADOSFRENTEf.CAIXA.FieldByName('PARCELA').AsString:=Parcela;
  DADOSFRENTEf.CAIXA.FieldByName('MEIOPAG').AsString:=MeioPagamento;
  DADOSFRENTEf.CAIXA.FieldByName('DATA').AsDateTime:=
    DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime;
  DADOSFRENTEf.CAIXA.FieldByName('CAIXA').AsString:=
    DADOSFRENTEf.CONF_PADRAO.FieldByName('CAIXA').AsString;
  DADOSFRENTEf.CAIXA.FieldByName('TURNO').AsString:=
    DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString;
  DADOSFRENTEf.CAIXA.FieldByName('HORA').AsDateTime:=HORA;
  DADOSFRENTEf.CAIXA.FieldByName('VALOR').AsFloat:=Valor;
  DADOSFRENTEf.CAIXA.Post;
end;

procedure InformacoesCaixaVendas(HISTORICOC,Observacao,Portador,RECEBEMOS,ENDERECOR,
  EMITENTE,DOC_EMITE,ENDERECOE,DC,TIPO,AVIS_PRAZO,ENTREGADOR,
  Parcela:string;CLIENTE,FORNECEDOR,Operador,Vendedor,Historico,
  SubHistorico:integer;DATA,HORA:tdatetime;Valor:double;SP:String);
begin
  if APPLAUDATES='S' then begin
    DADOSFRENTEf.CAIXA.Close;
    DADOSFRENTEf.CAIXA.CachedUpdates:=true;
  end;
  DADOSFRENTEf.CONF_PADRAO.Open;
  DADOSFRENTEf.CAIXA.Open;
  DADOSFRENTEf.CAIXA.Append;
  {
  if FechamentoCaixa<>'S' then
    DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString:=
     DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString
  else
    DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString:='000000000';

  if BaixaContasAReceberNumedor<>'' then
    DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString:=BaixaContasAReceberNumedor;
  }

  DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString:=DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString;

  DADOSFRENTEf.CAIXA.FieldByName('Portador').AsString:=Portador;
  DADOSFRENTEf.CAIXA.FieldByName('RECEBEMOS').AsString:=RECEBEMOS;
  DADOSFRENTEf.CAIXA.FieldByName('ENDERECOR').AsString:=ENDERECOR;
  DADOSFRENTEf.CAIXA.FieldByName('EMITENTE').AsString:=EMITENTE;
  DADOSFRENTEf.CAIXA.FieldByName('DOC_EMITE').AsString:=DOC_EMITE;
  DADOSFRENTEf.CAIXA.FieldByName('ENDERECOE').AsString:=ENDERECOE;
  DADOSFRENTEf.CAIXA.FieldByName('ENTREGADOR').AsString:=ENTREGADOR;
  DADOSFRENTEf.CAIXA.FieldByName('CLIENTE').AsInteger:=CLIENTE;
  DADOSFRENTEf.CAIXA.FieldByName('FORNECEDOR').AsInteger:=FORNECEDOR;
  DADOSFRENTEf.CAIXA.FieldByName('Operador').AsInteger:=Operador;
  DADOSFRENTEf.CAIXA.FieldByName('Vendedor').AsInteger:=Vendedor;
  DADOSFRENTEf.CAIXA.FieldByName('Historico').AsInteger:=Historico;
  DADOSFRENTEf.CAIXA.FieldByName('SubHistorico').AsInteger:=SubHistorico;
  DADOSFRENTEf.CAIXA.FieldByName('HISTORICOC').AsString:=HISTORICOC;
  DADOSFRENTEf.CAIXA.FieldByName('OBSERVACAO').AsString:=Observacao;
  DADOSFRENTEf.CAIXA.FieldByName('DC').AsString:=DC;
  DADOSFRENTEf.CAIXA.FieldByName('SANGSUPR').AsString:=SP;
  DADOSFRENTEf.CAIXA.FieldByName('AVIS_PRAZO').AsString:=AVIS_PRAZO;
  DADOSFRENTEf.CAIXA.FieldByName('PARCELA').AsString:=Parcela;
  DADOSFRENTEf.CAIXA.FieldByName('MEIOPAG').AsString:=MeioPagamento;
  DADOSFRENTEf.CAIXA.FieldByName('DATA').AsDateTime:=
    DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime;
  DADOSFRENTEf.CAIXA.FieldByName('CAIXA').AsString:=
    DADOSFRENTEf.CONF_PADRAO.FieldByName('CAIXA').AsString;
  DADOSFRENTEf.CAIXA.FieldByName('TURNO').AsString:=
    DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString;
  DADOSFRENTEf.CAIXA.FieldByName('HORA').AsDateTime:=HORA;
  DADOSFRENTEf.CAIXA.FieldByName('VALOR').AsFloat:=Valor;
  DADOSFRENTEf.CAIXA.Post;
end;

procedure BaixaEntraEstoque( BaixaEntrada: String );
var CustoEstoque, CustoEntrada:double;
    vendo:string;
begin
  DADOSMOVIMENTOF.ESTOQUEEntrada.SQL.Clear;
  DADOSMOVIMENTOF.ESTOQUEEntrada.SQL.Add('Select codigo,QTD,UND_V,PRECO_CUSTO from produtos Where codigo='+TabelaEstoque.FieldByName('CODIGO').AsString);
  DADOSMOVIMENTOF.ESTOQUEEntrada.Open;
  if not DADOSMOVIMENTOF.ESTOQUEEntrada.IsEmpty then begin
    if DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('UND_V').AsString<>'SER' then begin
      DADOSMOVIMENTOF.ESTOQUEEntrada.Edit;
      if BaixaEntrada='Entrada' then begin
        if DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat<=0 then begin
          DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('PRECO_CUSTO').AsFloat:=
            TabelaEstoque.FieldByName('PRECO').AsFloat;
        end
        else begin
          CustoEstoque:=DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName(
            'PRECO_CUSTO').AsFloat*DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName(
            'QTD').AsFloat;
          CustoEntrada:=TabelaEstoque.FieldByName('PRECO').AsFloat*
             TabelaEstoque.FieldByName('QTD').AsFloat;
          DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('PRECO_CUSTO').AsFloat:=
            (CustoEstoque+CustoEntrada)/(TabelaEstoque.FieldByName('QTD').AsFloat+
              DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat);
        end;
      end;
      if BaixaEntrada='Baixa' then begin
        DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat:=
         DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat-
         TabelaEstoque.FieldByName('QTD').AsFloat;
      end;
      if BaixaEntrada='Entrada' then begin
        DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat:=
         DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat+
         TabelaEstoque.FieldByName('QTD').AsFloat;
          DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('ULTIMO_PRECO').AsFloat:=
            TabelaEstoque.FieldByName('PRECO').AsFloat;
      end;
      DADOSMOVIMENTOF.ESTOQUEEntrada.Post;
    end;
  end;
  vendo:='ver';
  DADOSMOVIMENTOF.ESTOQUEEntrada.close;
end;

procedure FiltroQuery(Tabela,campo,FiltroTabela: String);
begin
  Queere2.Close;
  Queere2.SQL.Clear;
  Queere2.SQL.Add('SELECT * FROM '+Tabela+' where '+campo+'='+FiltroTabela );
  Queere2.Open;
  Queere2.First;
end;

procedure ConsultaGeral;
begin
  DADOSFRENTEf.VENDAS_ECF2.Edit;
  if Modalidade<>'Pedidos' then begin
    ConsultaClientes;
    if CodigoConsulta<>'' then begin
      DADOSFRENTEf.CADASTRO_CLIENTES.Close;
      DADOSFRENTEf.CADASTRO_CLIENTES.SQL.Clear;
      DADOSFRENTEf.CADASTRO_CLIENTES.SQL.Add('Select * from CLIENTES where CODIGO='+QuotedStr(CodigoConsulta));
      DADOSFRENTEf.CADASTRO_CLIENTES.open;
      ImformacoesCliente;
      DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString:=CodigoConsulta;
    end;
  end;
end;

procedure FiltroDADOCLIE;
begin
  DADOSFRENTEf.DADOCLIE.Close;
  DADOSFRENTEf.DADOCLIE.open;
  DADOSFRENTEf.DADOCLIE.SQL.Clear;
  DADOSFRENTEf.DADOCLIE.SQL.Add('Select * from DADOCLIE where CUPOM='+DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString);
  DADOSFRENTEf.DADOCLIE.Open;
  DADOSFRENTEf.DADOCLIE.Refresh;
end;

procedure ImformacoesCliente;
begin
  FiltroDADOCLIE;
  if DADOSFRENTEf.DADOCLIE.IsEmpty then
    DADOSFRENTEf.DADOCLIE.Append
  else
    DADOSFRENTEf.DADOCLIE.Edit;

    DADOSFRENTEf.DADOCLIE.FieldByName('CUPOM').AsString:=
      DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString;
    DADOSFRENTEf.DADOCLIE.FieldByName('CODIGO').AsString:=
      DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString;
    DADOSFRENTEf.DADOCLIE.FieldByName('NOME').AsString:=
      DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('NOME').AsString;
    DADOSFRENTEf.DADOCLIE.FieldByName('ENDERECO').AsString:=
      DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('ENDERECO').AsString;
    DADOSFRENTEf.DADOCLIE.FieldByName('NUMERO').AsString:=
      DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('NUMERO').AsString;
    DADOSFRENTEf.DADOCLIE.FieldByName('CIDADE').AsString:=
      DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CIDADE').AsString;
    DADOSFRENTEf.DADOCLIE.FieldByName('UF').AsString:=
      DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('UF').AsString;
    DADOSFRENTEf.DADOCLIE.FieldByName('BAIRRO').AsString:=
      DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('BAIRRO').AsString;
    DADOSFRENTEf.DADOCLIE.FieldByName('CEP').AsString:=
      DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CEP').AsString;
    DADOSFRENTEf.DADOCLIE.FieldByName('CNPJ').AsString:=
      DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CNPJ').AsString;
    DADOSFRENTEf.DADOCLIE.FieldByName('CPF').AsString:=
      DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CPF').AsString;
    DADOSFRENTEf.DADOCLIE.FieldByName('IE').AsString:=
      DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('IE').AsString;
    DADOSFRENTEf.DADOCLIE.FieldByName('TELEFONE').AsString:=
      DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('TELEFONE').AsString;
    DADOSFRENTEf.DADOCLIE.FieldByName('CELULAR').AsString:=
      DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CELULAR').AsString;
    DADOSFRENTEf.DADOCLIE.Post;
  // end;
end;

procedure FiltroContasReceberDia( RecebeEstorna:String; DataEntradaPagamento: tdatetime );
begin
  DataFinanceiro.RECEBER.Close;
  DataFinanceiro.RECEBER.SQL.Clear;
  if RecebeEstorna='R' then begin
    DataFinanceiro.RECEBER.SQL.Add('SELECT * FROM RECEBER where EMISSAO=:_dataCOMPRA '+
       'and VALOR<>VALOR_RECEBIDO order by Vencimento');
    DataFinanceiro.RECEBER.ParamByName('_dataCOMPRA').asdatetime := DataEntradaPagamento;
  end;
  if RecebeEstorna='RV' then begin
    DataFinanceiro.RECEBER.SQL.Add('SELECT * FROM RECEBER where Vencimento<=:_dataCOMPRA '+
      'and VALOR<>VALOR_RECEBIDO order by Vencimento');
    DataFinanceiro.RECEBER.ParamByName('_dataCOMPRA').asdatetime := DataEntradaPagamento;
  end;
  if RecebeEstorna='E' then begin
    DataFinanceiro.RECEBER.SQL.Add('SELECT * FROM RECEBER where RECEBIMENTO=:_dataCOMPRA '+
      ' and VALOR_RECEBIDO<>0 order by Vencimento DESC');
    DataFinanceiro.RECEBER.ParamByName('_dataCOMPRA').asdatetime := DataEntradaPagamento;
  end;
  DataFinanceiro.RECEBER.Open;
  DataFinanceiro.RECEBER.First;
end;

procedure FiltroContasReceberINADIMPLENTESDia( RecebeEstorna:String; DataEntradaPagamento: tdatetime );
begin
  DataFinanceiro.INADIMPLENTES.Close;
  DataFinanceiro.INADIMPLENTES.SQL.Clear;
  if RecebeEstorna='R' then begin
    DataFinanceiro.INADIMPLENTES.SQL.Add('SELECT * FROM INADIMPLENTES where EMISSAO=:_dataCOMPRA '+
       'and VALOR<>VALOR_RECEBIDO order by Vencimento DESC');
    DataFinanceiro.RECEBER.ParamByName('_dataCOMPRA').asdatetime := DataEntradaPagamento;
  end;
  if RecebeEstorna='RV' then begin
    DataFinanceiro.INADIMPLENTES.SQL.Add('SELECT * FROM INADIMPLENTES where Vencimento<=:_dataCOMPRA '+
      'and VALOR<>VALOR_RECEBIDO order by Vencimento DESC');
    DataFinanceiro.INADIMPLENTES.ParamByName('_dataCOMPRA').asdatetime := DataEntradaPagamento;
  end;
  if RecebeEstorna='E' then begin
    DataFinanceiro.INADIMPLENTES.SQL.Add('SELECT * FROM INADIMPLENTES where RECEBIMENTO=:_dataCOMPRA '+
      ' and VALOR_RECEBIDO<>0 order by Vencimento');
    DataFinanceiro.INADIMPLENTES.ParamByName('_dataCOMPRA').asdatetime := DataEntradaPagamento;
  end;
  DataFinanceiro.INADIMPLENTES.Open;
  DataFinanceiro.INADIMPLENTES.First;
end;

procedure FiltroContasReceberINADIMPLENTESCliente( CodigodoCliente:String);
begin
  if CodigodoCliente<>'' then begin
    DataFinanceiro.INADIMPLENTES.Close;
    DataFinanceiro.INADIMPLENTES.SQL.Clear;
    DataFinanceiro.INADIMPLENTES.SQL.Add('SELECT * FROM INADIMPLENTES where CODIGO='+Quotedstr(CodigodoCliente));
    DataFinanceiro.INADIMPLENTES.Open;
    DataFinanceiro.INADIMPLENTES.First;
  end;
end;

procedure FiltroContasReceber( CodigoDoCliente, RecebeEstorna: String );
begin
  DataFinanceiro.RECEBER.Close;
  DataFinanceiro.RECEBER.SQL.Clear;
  if RecebeEstorna='R' then begin
    DataFinanceiro.RECEBER.SQL.Add('SELECT * FROM RECEBER where CODIGO='+
      CodigoDoCliente+' and VALOR<>VALOR_RECEBIDO order by Vencimento');
  end;
  if RecebeEstorna='RX' then
    DataFinanceiro.RECEBER.SQL.Add('SELECT * FROM RECEBER where CODIGO='+
      CodigoDoCliente+' and VALOR<>VALOR_RECEBIDO and MARCADO='+QuotedStr('X')+' order by Vencimento');
  if RecebeEstorna='RV' then begin
    DataFinanceiro.RECEBER.SQL.Add('SELECT * FROM RECEBER where CODIGO='+
      CodigoDoCliente+' and VENCIMENTO<=:_dataCOMPRA'+
      ' and VALOR<>VALOR_RECEBIDO order by Vencimento');
    DataFinanceiro.RECEBER.ParamByName('_dataCOMPRA').asdatetime := Date;
  end;
  if RecebeEstorna='E' then
    DataFinanceiro.RECEBER.SQL.Add('SELECT * FROM RECEBER where CODIGO='+
      CodigoDoCliente+' and VALOR_RECEBIDO<>0 order by Vencimento DESC');
  DataFinanceiro.RECEBER.Open;
  DataFinanceiro.RECEBER.First;
end;

procedure FiltroDiversasFormas( CodigoDoCliente: String );
begin
  DADOSFRENTEf.DiversasFormas.Close;
  DADOSFRENTEf.DiversasFormas.SQL.Clear;
  DADOSFRENTEf.DiversasFormas.SQL.Add('SELECT * FROM DiversasFormas where CODIGO='+QuotedStr(CodigoDoCliente)+' order by CUPOM DESC');
  // DADOSFRENTEf.DiversasFormas.SQL.Add('SELECT * FROM DiversasFormas where CODIGO='+QuotedStr(CodigoDoCliente));
  DADOSFRENTEf.DiversasFormas.Open;
end;

procedure FiltroCredito( CodigoDoCliente: String );
begin
  DataFinanceiro.CREDITO.Close;
  DataFinanceiro.CREDITO.SQL.Clear;
  DataFinanceiro.CREDITO.SQL.Add('SELECT * FROM CREDITO where CODIGO='+QuotedStr(CodigoDoCliente));
  DataFinanceiro.CREDITO.Open;
end;

procedure FiltroContasReceberMarcado( CodigoDoCliente, RecebeEstorna: String );
begin
  DataFinanceiro.RECEBER_marca.Close;
  DataFinanceiro.RECEBER_marca.SQL.Clear;
  DataFinanceiro.RECEBER_marca.SQL.Add('SELECT * FROM RECEBER where CODIGO='+
    CodigoDoCliente+' and VALOR<>VALOR_RECEBIDO and MARCADO='+QuotedStr('X')+' order by Vencimento');
  DataFinanceiro.RECEBER_marca.Open;
  DataFinanceiro.RECEBER_marca.First;
end;

procedure FiltroContasReceberSoma( CodigoDoCliente, RecebeEstorna: String );
begin
  DataFinanceiro.RECEBER_SOMA.Close;
  DataFinanceiro.RECEBER_SOMA.SQL.Clear;
    DataFinanceiro.RECEBER_SOMA.SQL.Add('SELECT * FROM RECEBER where CODIGO='+
      CodigoDoCliente+' and VALOR<>VALOR_RECEBIDO order by Vencimento');
  DataFinanceiro.RECEBER_SOMA.Open;
  DataFinanceiro.RECEBER_SOMA.First;
end;

procedure FiltroContasReceberCaderneta( CodigoDoCliente, RecebeEstorna: String );
begin
  DataFinanceiro.CADERNETA.Close;
  DataFinanceiro.CADERNETA.SQL.Clear;
  if RecebeEstorna='R' then
    DataFinanceiro.CADERNETA.SQL.Add('SELECT * FROM CADERNETA where CLIENTE='+
      CodigoDoCliente+' and TOTAL<>RECEBIDO order by CODIGOX');
      // CodigoDoCliente+' and TOTAL<>RECEBIDO order by Vencimento,CUPOM,ITEM');
  if RecebeEstorna='E' then
    DataFinanceiro.CADERNETA.SQL.Add('SELECT * FROM CADERNETA where CLIENTE='+
      CodigoDoCliente+' and RECEBIDO<>0 order by CODIGOX desc');
      // CodigoDoCliente+' and RECEBIDO<>0 order by Vencimento DESC');
  DataFinanceiro.CADERNETA.Open;
  DataFinanceiro.CADERNETA.First;
end;

procedure InformacoesRecebimentoContas(Historico,Observacao,dc,ap,parcela:string;Valor:double;Cliente:integer);
begin
  DADOSFRENTEf.CONF_PADRAO.Open;
  // InformacoesCaixa(Historico+MeioPagamento+' - '+parcela,Observacao,
  // InformacoesCaixa(Historico+MeioPagamento,Observacao,
  InformacoesCaixa(Historico,Observacao,
    Portadorx,'','','','','',dc,'V',ap,'',parcela,Cliente,0,
    StrToInt(DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString),0,0,0,DATE,TIME,Valor,'');
end;

procedure InformacoesPagamentoContas(Historico,dc,ap,
  parcela:string;Valor:double;Cliente:integer);
begin
  DADOSFRENTEf.CONF_PADRAO.Open;
  InformacoesCaixa(Historico+''+' - '+'','',
    Portadorx,'','','','','',dc,'V',ap,'',parcela,
    0,0,StrToInt(DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString),0,0,0,DATE,TIME,Valor,'');
end;

procedure EscolheVendedor;
begin
  ConsultaVendedores;
  if CodigoConsulta<>'' then begin
    {
    DADOSFRENTEf.VENDEDORES.Open;
    DADOSFRENTEf.VENDEDORES.Locate('codigo',CodigoConsulta,[]);
    }
    DADOSFRENTEf.VENDEDORES.Close;
    DADOSFRENTEf.VENDEDORES.SQL.Clear;
    DADOSFRENTEf.VENDEDORES.SQL.Add('Select * from VENDEDORES where CODIGO='+QuotedStr(CodigoConsulta));
    DADOSFRENTEf.VENDEDORES.Open;
  end;
end;

procedure EscolhePortador;
begin
  FiltraCampo:='CLIENTE='+QuotedStr(DADOSFRENTEf.VENDAS_ECF2.FieldByName(
    'CLIENTE').AsString);
  ConsultaPortadores;
  if CodigoConsulta<>'' then begin
    DADOSFRENTEf.Portador.Open;
    DADOSFRENTEf.Portador.Locate('codigo',CodigoConsulta,[]);
  end;
  FiltraCampo:='';
end;

procedure TotalDuplicatas;
begin
  DADOSFRENTEf.duplicatas.First;
  TotalParcelas:=0;
  while not DADOSFRENTEf.duplicatas.Eof do
  begin
    TotalParcelas:=TotalParcelas+DADOSFRENTEf.duplicatas.FieldByName(
      'VALOR').AsFloat;
    DADOSFRENTEf.duplicatas.Next;
  end;
  DADOSFRENTEf.duplicatas.First;
end;

procedure FiltroCaixa(DataDoCaixa:TDateTime;Turno:string);
begin
  DADOSFRENTEf.CAIXA.SQL.Clear;
  DADOSFRENTEf.CAIXA.SQL.Add('Select * from CAIXA WHERE DATA= :_DATACAIXA AND ' +
    'TURNO='+QuotedStr(Turno)+' ORDER BY CODIGO');
  DADOSFRENTEf.CAIXA.ParamByName('_DATACAIXA').AsDateTime:=DataDoCaixa;
  DADOSFRENTEf.CAIXA.Open;
end;

procedure SomatoriaCaixa;
begin
  EntradasCaixa:=0; SaidasCAixa:=0; PrazoCaixa:=0;
  DADOSFRENTEf.CAIXA.First;
  while not DADOSFRENTEf.CAIXA.Eof do
  begin
    if (DADOSFRENTEf.CAIXA.FieldByName('DC').AsString='C') and (
      DADOSFRENTEf.CAIXA.FieldByName('AVIS_PRAZO').AsString='A') then begin
      EntradasCaixa:=EntradasCaixa+DADOSFRENTEf.CAIXA.FieldByName(
        'VALOR').AsFloat;
    end;
    if (DADOSFRENTEf.CAIXA.FieldByName('DC').AsString='D') and (
      DADOSFRENTEf.CAIXA.FieldByName('AVIS_PRAZO').AsString='A') then begin
      SaidasCAixa:=SaidasCAixa+DADOSFRENTEf.CAIXA.FieldByName(
        'VALOR').AsFloat;
    end;
    if (DADOSFRENTEf.CAIXA.FieldByName('DC').AsString='C') and (
      DADOSFRENTEf.CAIXA.FieldByName('AVIS_PRAZO').AsString='P') then begin
      PrazoCaixa:=PrazoCaixa+DADOSFRENTEf.CAIXA.FieldByName(
        'VALOR').AsFloat;
    end;
    DADOSFRENTEf.CAIXA.Next;
  end;
end;

procedure InformacoesFechamentoDeCaixa(Historico:string;valor:double);
begin
  DADOSFRENTEf.CONF_PADRAO.Open;
  InformacoesCaixa(Historico,'','','','','','',
    '','C','V','A','','',0,0,StrToInt(DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString),
    0,0,0,DATE,TIME,Valor,'');
  // GravaMestreCAI(Historico,'',TIME,Valor);
end;

procedure InformacoesTransportedeSaldo(Historico,DC:string;valor:double);
begin
  DADOSFRENTEf.CONF_PADRAO.Open;
  InformacoesCaixa(Historico,'','','','','','',
    '',DC,'V','A','','',0,0,StrToInt(DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString),
    0,0,0,DATE,TIME,Valor,'');
  GravaMestreCAI(Historico,'',TIME,Valor);
end;

procedure GravaMestreCAI(HISTORICOC,Observacao:string;HORA:tdatetime;Valor:double);
begin
  DADOSFRENTEf.MestreCAI.Open;
  DADOSFRENTEf.MestreCAI.Append;
  DADOSFRENTEf.MestreCAI.FieldByName('CAIXA').AsString:=
    DADOSFRENTEf.CAIXA.FieldByName('CODIGO').AsString;
  DADOSFRENTEf.MestreCAI.FieldByName('HISTORICOC').AsString:=HISTORICOC;
  DADOSFRENTEf.MestreCAI.FieldByName('OBSERVACAO').AsString:=Observacao;
  DADOSFRENTEf.MestreCAI.FieldByName('TURNO').AsString:=
    DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString;
  DADOSFRENTEf.MestreCAI.FieldByName('DATA').AsDateTime:=
    DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime;
  DADOSFRENTEf.MestreCAI.FieldByName('HORA').AsDateTime:=HORA;
  DADOSFRENTEf.MestreCAI.FieldByName('VALOR').AsFloat:=Valor;
  DADOSFRENTEf.MestreCAI.Post;
end;

procedure InformacoesCaixaSangriaSuprimento(Sang_supr,obs,dc,
  ap,RECEBEMOS,ENDERECOR,OBSERVACAO,EMITENTE,DOC_EMITE,
  ENDERECOE:string;Valor:double;Cliente,Fornecedor,Vendedor,Historico,
  SubHistorico:integer;SanSup:string);
begin
  {
  InformacoesCaixa(Sang_supr,OBSERVACAO,'',RECEBEMOS,ENDERECOR,EMITENTE,
    DOC_EMITE,ENDERECOE,dc,'V','A',ENTREGADOR,'',Cliente,Fornecedor,StrToInt(
      Operador),Vendedor,Historico,SubHistorico,DATE,TIME,Valor,SanSup);
      }

  InformacoesCaixa(Sang_supr,OBSERVACAO,'',RECEBEMOS,ENDERECOR,EMITENTE,
    DOC_EMITE,ENDERECOE,dc,'V','A',ENTREGADOR,'',Cliente,Fornecedor,StrToInt(
      DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString),
      Vendedor,Historico,SubHistorico,DATE,TIME,Valor,SanSup);

end;

procedure GeraParcelamentoDuplicatas(Parcelas,
  Dias:integer;DataInicial:TDateTime;ValorVenda:double);
var ValorParcela, TotalParcelasTrunc:double;
    Quantidax:integer;
    DataDupli:TDateTime;
begin
  ValorParcela:=ValorVenda/Parcelas;
  DataDupli:=DataInicial;
  FiltroDuplicatas;

  // while not DADOSFRENTEf.duplicatas.Eof do
  //   DADOSFRENTEf.duplicatas.Delete;

  TotalParcelas:=0;
  for Quantidax := 1 to Parcelas do begin
    DataDupli:=DataDupli+Dias;
    DADOSFRENTEf.duplicatas.Append;
    DADOSFRENTEf.duplicatas.FieldByName('CUPOM').AsString:=
      DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString;
    DADOSFRENTEf.duplicatas.FieldByName('EMISSAO').AsDateTime:=DataInicial;
    DADOSFRENTEf.duplicatas.FieldByName('VENCIMENTO').AsDateTime:=
      DataDupli;
    DADOSFRENTEf.duplicatas.FieldByName('HORA').AsDateTime:= time;
    DADOSFRENTEf.duplicatas.FieldByName('PARCELA').AsString:=StrZero(Quantidax,2,0);
    DADOSFRENTEf.duplicatas.FieldByName('VALOR').AsFloat:=TRUNC((ValorParcela)*
      100)/100;
    TotalParcelasTrunc:=TotalParcelasTrunc+DADOSFRENTEf.duplicatas.FieldByName(
      'VALOR').AsFloat;
    DADOSFRENTEf.duplicatas.FieldByName('TIPO').AsString:='Dupli';
    TotalParcelas:=TotalParcelas+ValorParcela;
    DADOSFRENTEf.duplicatas.Post;
  end;
  DADOSFRENTEf.duplicatas.Edit;
  DADOSFRENTEf.duplicatas.FieldByName('VALOR').AsFloat:=
    DADOSFRENTEf.duplicatas.FieldByName('VALOR').AsFloat+(TotalParcelas-
      TotalParcelasTrunc);
  DADOSFRENTEf.duplicatas.Post;
  DADOSFRENTEf.duplicatas.First;
end;

procedure FiltroDuplicatas;
begin
  DADOSFRENTEf.duplicatas.Close;
  DADOSFRENTEf.duplicatas.CachedUpdates:=true;
  DADOSFRENTEf.duplicatas.SQL.Clear;
  DADOSFRENTEf.duplicatas.SQL.Add('SELECT * FROM '+DuplicatasRecberPagar+' WHERE CUPOM='
      +QuotedStr(DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString));
  DADOSFRENTEf.duplicatas.Open;
end;

procedure GeraContaAReceber;
begin
  DADOSFRENTEf.CONF_PADRAO.Open;
  DADOSFRENTEf.duplicatas.First;
  DataFinanceiro.RECEBER.SQL.Clear;
  DataFinanceiro.RECEBER.SQL.Add('Select * from RECEBER where NUMERO='+DADOSFRENTEf.duplicatas.FieldByName('PARCELA').AsString);
  // DataFinanceiro.RECEBER.SQL.Add('Select * from RECEBER');
  // DataFinanceiro.RECEBER.SQL.Add('Select * from RECEBER where NUMERO='+DADOSFRENTEf.duplicatas.FieldByName('CUPOM').AsString);
  DataFinanceiro.RECEBER.Open;
  TotalParcelas:=0;
  while not DADOSFRENTEf.duplicatas.Eof do begin
    DataFinanceiro.RECEBER.Append;
    DataFinanceiro.RECEBER.FieldByName('N_CAIXA').AsString:=DADOSFRENTEf.CONF_PADRAO.FieldByName('CAIXA').AsString;
    DataFinanceiro.RECEBER.FieldByName('TURNO').AsString:=DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString;
    DataFinanceiro.RECEBER.FieldByName('DATA').AsDateTime:=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime;
    DataFinanceiro.RECEBER.FieldByName('HORA').AsDateTime:=time;
    DataFinanceiro.RECEBER.FieldByName('TIPO').AsString:='C';
    DataFinanceiro.RECEBER.FieldByName('MODELO').AsString:='2D';
    DataFinanceiro.RECEBER.FieldByName('SERIE').AsString:='000';
    DataFinanceiro.RECEBER.FieldByName('SUBSERIE').AsString:='00';
    DataFinanceiro.RECEBER.FieldByName('ORIGEM').AsString:='01';
    DataFinanceiro.RECEBER.FieldByName('OPERADOR').AsString:=Operador;
    DataFinanceiro.RECEBER.FieldByName('NUMERO').AsString:=DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString;
    DataFinanceiro.RECEBER.FieldByName('CODIGO').AsString:=DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString;
    DataFinanceiro.RECEBER.FieldByName('ORDEM').AsString:=DADOSFRENTEf.duplicatas.FieldByName('PARCELA').AsString;
    DataFinanceiro.RECEBER.FieldByName('EMISSAO').AsDateTime:=
    DADOSFRENTEf.duplicatas.FieldByName('EMISSAO').AsDateTime;
    DataFinanceiro.RECEBER.FieldByName('HISTORICO').AsString:='PRAZO NA FRENTE DE CAIXA';
    DataFinanceiro.RECEBER.FieldByName('ESPECIE').AsString:='DUPLICATAS';
    DataFinanceiro.RECEBER.FieldByName('MARCADO').AsString:='';
    DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsDateTime:=DADOSFRENTEf.duplicatas.FieldByName('VENCIMENTO').AsDateTime;
    DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat:=DADOSFRENTEf.duplicatas.FieldByName('VALOR').AsFloat;
    TotalParcelas:=TotalParcelas+DADOSFRENTEf.duplicatas.FieldByName('VALOR').AsFloat;
    // InformacoesCaixaFrentePrazo('C','P',DataFinanceiro.RECEBER.FieldByName('ORDEM').AsString,DADOSFRENTEf.duplicatas.FieldByName('VALOR').AsFloat);
    DataFinanceiro.RECEBER.Post;
    DADOSFRENTEf.duplicatas.Next;
  end;
  DADOSFRENTEf.duplicatas.First;
  DataFinanceiro.RECEBER.Close;
  DADOSFRENTEf.duplicatas.Close;
end;

procedure GeraContasAPagar(ClienteCompraX:string);
begin
  DADOSFRENTEf.duplicatas.First;
  DataFinanceiro.PAGAR.Open;
  TotalParcelas:=0;
  while not DADOSFRENTEf.duplicatas.Eof do begin
    DataFinanceiro.PAGAR.Append;
    DataFinanceiro.PAGAR.FieldByName('TIPO').AsString:='N';
    DataFinanceiro.PAGAR.FieldByName('MODELO').AsString:='NF';
    DataFinanceiro.PAGAR.FieldByName('SERIE').AsString:='000';
    DataFinanceiro.PAGAR.FieldByName('SUBSERIE').AsString:='00';
    if ClienteComprax='Compra' then begin
      DataFinanceiro.PAGAR.FieldByName('NUMERO').AsString:=DADOSMOVIMENTOF.COMPRAS.FieldByName('NOTA').AsString;
      DataFinanceiro.PAGAR.FieldByName('CODIGO').AsString:=DADOSMOVIMENTOF.COMPRAS.FieldByName('FORNECEDOR').AsString;
      DataFinanceiro.PAGAR.FieldByName('Fornecedor').AsString:=DADOSMOVIMENTOF.COMPRAS.FieldByName('FORNECEDOR').AsString;
      DataFinanceiro.PAGAR.FieldByName('HISTORICO').AsString:='CONTAS A PAGAR MOVIMENTACAO';
    end;
    if ClienteComprax='Fornecedor' then begin
      DataFinanceiro.PAGAR.FieldByName('NUMERO').AsString:='0'+
      COPY(DADOSFRENTEf.duplicatas.FieldByName('EMISSAO').AsString,1,2)+
      COPY(DADOSFRENTEf.duplicatas.FieldByName('EMISSAO').AsString,4,2)+
      COPY(DADOSFRENTEf.duplicatas.FieldByName('EMISSAO').AsString,7,4);
      DataFinanceiro.PAGAR.FieldByName('CODIGO').AsString:=DADOS_CADASTROSf.FORNECEDORES.FieldByName('CODIGO').AsString;
      DataFinanceiro.PAGAR.FieldByName('Fornecedor').AsString:=DADOS_CADASTROSf.FORNECEDORES.FieldByName('CODIGO').AsString;
      DataFinanceiro.PAGAR.FieldByName('HISTORICO').AsString:='CONTAS A PAGAR CADASTRO';
    end;
    DataFinanceiro.PAGAR.FieldByName('ORDEM').AsString:=DADOSFRENTEf.duplicatas.FieldByName('PARCELA').AsString;
    DataFinanceiro.PAGAR.FieldByName('EMISSAO').AsDateTime:=DADOSFRENTEf.duplicatas.FieldByName('EMISSAO').AsDateTime;
    DataFinanceiro.PAGAR.FieldByName('ESPECIE').AsString:='DUPLICATAS';
    DataFinanceiro.PAGAR.FieldByName('VENCIMENTO').AsDateTime:=DADOSFRENTEf.duplicatas.FieldByName('VENCIMENTO').AsDateTime;
    DataFinanceiro.PAGAR.FieldByName('VALOR').AsFloat:=DADOSFRENTEf.duplicatas.FieldByName('VALOR').AsFloat;
    DataFinanceiro.PAGAR.Post;
    DADOSFRENTEf.duplicatas.Next;
  end;
  DADOSFRENTEf.duplicatas.First;
  DataFinanceiro.PAGAR.Close;
  DADOSFRENTEf.duplicatas.Close;
end;

procedure InformacoesCaixaFrentePrazo(dc,ap,parcela:string;Valor:double);
begin
  InformacoesCaixa('Venda Frente de Caixa - '+MeioPagamento+' - '+parcela,'',
    Portadorx,'','','','','',dc,'V',ap,ENTREGADOR,parcela,
    DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsInteger,0,StrToInt(
    Operador),StrToInt(Vendedorxyz),0,0,DATE,TIME,Valor,'');
end;

procedure FiltroContasAPagar( CodigoDoFornecedor: String );
begin
  DataFinanceiro.Pagar.Close;
  DataFinanceiro.Pagar.SQL.Clear;
  DataFinanceiro.Pagar.SQL.Add('SELECT * FROM Pagar where CODIGO='+
    CodigoDoFornecedor+' and VALOR<>VALOR_PAGO');

  DataFinanceiro.Pagar.Open;
  DataFinanceiro.Pagar.First;
end;

procedure ConsultaClientes;
begin
  with TCONSULTASF.Create(nil) do begin

    DADOS_CONSULTASF.Clientes.FieldByName('CNPJ').EditMask:=Mascara('CNPJ');
    DADOS_CONSULTASF.Clientes.FieldByName('CPF').EditMask:=Mascara('CPF');
    DADOS_CONSULTASF.Clientes.FieldByName('CEP').EditMask:=Mascara('CEP');

    Tabela:='CLIENTES';
    CampoConsulta:='NOME';
    QueereConsulta:=DADOS_CONSULTASF.Clientes;
    NxNotebook61.ActivePageIndex:=0;
    ShowModal;
  end;
end;

procedure ConsultaVeiculos;
begin
  with TCONSULTASF.Create(nil) do begin
    Tabela:='VEICULOS';
    CampoConsulta:='NOME';
    QueereConsulta:=DADOS_CONSULTASF.VEICULOS;
    NxNotebook61.ActivePageIndex:=16;
    ShowModal;
  end;
end;

procedure ConsultaOBJETOS;
begin
  with TCONSULTASF.Create(nil) do begin
    Tabela:='OBJETOS';
    CampoConsulta:='DESCRICAO';
    QueereConsulta:=DADOS_CONSULTASF.OBJETOS;
    NxNotebook61.ActivePageIndex:=17;
    ShowModal;
  end;
end;

procedure ConsultaFornecedores;
begin
  with TCONSULTASF.Create(nil) do begin
    Tabela:='fornecedores';
    CampoConsulta:='NOME';
    QueereConsulta:=DADOS_CONSULTASF.fornecedores;
    NxNotebook61.ActivePageIndex:=1;
    ShowModal;
  end;
end;

procedure ConsultaPortadores;
begin
  with TCONSULTASF.Create(nil) do begin
    Tabela:='PORTADOR';
    CampoConsulta:='NOME';
    QueereConsulta:=DADOS_CONSULTASF.PORTADOR;
    NxNotebook61.ActivePageIndex:=15;
    ShowModal;
  end;
end;

procedure ConsultaVendedores;
begin
  with TCONSULTASF.Create(nil) do begin
    Tabela:='VENDEDORES';
    CampoConsulta:='NOME';
    QueereConsulta:=DADOS_CONSULTASF.VENDEDORES;
    NxNotebook61.ActivePageIndex:=8;
    ShowModal;
  end;
end;

procedure ConsultaProdutos;
begin
  with TCONSULTASF.Create(nil) do begin
    Tabela:='PRODUTOS';
    CampoConsulta:='NOME';
    QueereConsulta:=DADOS_CONSULTASF.PRODUTOS;
    NxNotebook61.ActivePageIndex:=2;
    ShowModal;
  end;
end;

procedure ConsultaOperadores;
begin
  with TCONSULTASF.Create(nil) do begin
    Tabela:='OPERADOR';
    CampoConsulta:='NOME';
    QueereConsulta:=DADOS_CONSULTASF.OPERADOR;
    NxNotebook61.ActivePageIndex:=9;
    ShowModal;
  end;
end;

procedure ConsultaHISTORIC;
begin
  with TCONSULTASF.Create(nil) do begin
    Tabela:='HISTORIC';
    CampoConsulta:='NOME';
    QueereConsulta:=DADOS_CONSULTASF.HISTORIC;
    NxNotebook61.ActivePageIndex:=13;
    ShowModal;
  end;
end;

procedure ConsultaSUB_HIST;
begin
  with TCONSULTASF.Create(nil) do begin
    Tabela:='SUB_HIST';
    CampoConsulta:='NOME';
    QueereConsulta:=DADOS_CONSULTASF.SUB_HIST;
    NxNotebook61.ActivePageIndex:=14;
    ShowModal;
  end;
end;

procedure ConsultaGRUPOCLI;
begin
  with TCONSULTASF.Create(nil) do begin
    Tabela:='GRUPOCLI';
    CampoConsulta:='NOME';
    QueereConsulta:=DADOS_CONSULTASF.GRUPOCLI;
    NxNotebook61.ActivePageIndex:=5;
    ShowModal;
  end;
end;

procedure ConsultaCartoes;
begin
  with TCONSULTASF.Create(nil) do begin
    Tabela:='CARTOES';
    CampoConsulta:='DESCRICAO';
    QueereConsulta:=DADOS_CONSULTASF.CARTOES;
    NxNotebook61.ActivePageIndex:=18;
    ShowModal;
  end;
end;

procedure ConsultaGRUPO;
begin
  with TCONSULTASF.Create(nil) do begin
    Tabela:='GRUPO';
    CampoConsulta:='NOME';
    QueereConsulta:=DADOS_CONSULTASF.GRUPO;
    NxNotebook61.ActivePageIndex:=4;
    ShowModal;
  end;
end;

procedure ConsultaGRUPOFOR;
begin
  with TCONSULTASF.Create(nil) do begin
    Tabela:='GRUPOFOR';
    CampoConsulta:='NOME';
    QueereConsulta:=DADOS_CONSULTASF.GRUPOFOR;
    NxNotebook61.ActivePageIndex:=6;
    ShowModal;
  end;
end;

procedure ConsultaUNIDADES;
begin
  with TCONSULTASF.Create(nil) do begin
    Tabela:='UNIDADES';
    CampoConsulta:='NOME';
    QueereConsulta:=DADOS_CONSULTASF.UNIDADES;
    NxNotebook61.ActivePageIndex:=7;
    ShowModal;
  end;
end;

procedure ConsultaESTADOS;
begin
  with TCONSULTASF.Create(nil) do begin
    Tabela:='ESTADOS';
    CampoConsulta:='NOME';
    QueereConsulta:=DADOS_CONSULTASF.estados;
    NxNotebook61.ActivePageIndex:=3;
    ShowModal;
  end;
end;

procedure FiltroVendas( TipodePesquisa, CodigoDoFornecedor, Documento: String );
begin
  DADOSMOVIMENTOF.VENDAS.Close;
  DADOSMOVIMENTOF.VENDAS.SQL.Clear;
  if TipodePesquisa='F' then
    DADOSMOVIMENTOF.VENDAS.SQL.Add('SELECT * FROM VENDAS WHERE FORNECEDOR='+
      CodigoDoFornecedor+' ORDER BY EMISSAO desc')
  else if TipodePesquisa='N' then begin
    Documento:=StrZero(StrTofloat(Documento),9,0);
    DADOSMOVIMENTOF.VENDAS.SQL.Add('SELECT * FROM VENDAS WHERE NOTA='+
      QuotedStr(Documento));
  end
  else
    DADOSMOVIMENTOF.VENDAS.SQL.Add('SELECT * FROM VENDAS ORDER BY EMISSAO desc');
  if CodigoDoFornecedor+Documento='' then
    DADOSMOVIMENTOF.VENDAS.SQL.Add('SELECT * FROM VENDAS ORDER BY EMISSAO desc');
  DADOSMOVIMENTOF.VENDAS.Open;
  DADOSMOVIMENTOF.VENDAS.First;
  TipodePesquisa:='';
end;

procedure FiltroItensSaidas;
begin
  DADOSMOVIMENTOF.ITEVENDAS.Close;
  DADOSMOVIMENTOF.ITEVENDAS.SQL.Clear;
  DADOSMOVIMENTOF.ITEVENDAS.SQL.Add('SELECT * FROM ITEVENDAS WHERE NOTA='+
    QuotedStr(DADOSMOVIMENTOF.VENDAS.FieldByName('NOTA').AsString)+
    ' AND EMISSAO= :_dataCOMPRA'+
      ' order by item');
  DADOSMOVIMENTOF.ITEVENDAS.ParamByName('_dataCOMPRA').asdatetime := DADOSMOVIMENTOF.VENDAS.FieldByName('EMISSAO').AsDateTime;
  DADOSMOVIMENTOF.ITEVENDAS.Open;
  DADOSMOVIMENTOF.ITEVENDAS4.Close;
  DADOSMOVIMENTOF.ITEVENDAS4.SQL.Clear;
  DADOSMOVIMENTOF.ITEVENDAS4.SQL.Add('SELECT * FROM ITEVENDAS WHERE NOTA='+
    QuotedStr(DADOSMOVIMENTOF.VENDAS.FieldByName('NOTA').AsString)+
    ' AND EMISSAO= :_dataCOMPRA'+
      ' order by item');
  DADOSMOVIMENTOF.ITEVENDAS4.ParamByName('_dataCOMPRA').asdatetime := DADOSMOVIMENTOF.VENDAS.FieldByName('EMISSAO').AsDateTime;
  DADOSMOVIMENTOF.ITEVENDAS4.Open;
end;

procedure FiltroItensPedidoClientes;
begin
  DADOSMOVIMENTOF.ITEPEDIDOSCLI.Close;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI.SQL.Clear;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI.SQL.Add('SELECT * FROM ITEPEDIDOSCLI WHERE NOTA='+
    QuotedStr(DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString)+
    ' AND EMISSAO= :_dataCOMPRA'+
      ' order by item');
  DADOSMOVIMENTOF.ITEPEDIDOSCLI.ParamByName('_dataCOMPRA').asdatetime := DADOSMOVIMENTOF.PED_CLI.FieldByName('EMISSAO').AsDateTime;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI.Open;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI4.Close;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI4.SQL.Clear;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI4.SQL.Add('SELECT * FROM ITEPEDIDOSCLI WHERE NOTA='+
    QuotedStr(DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString)+
    ' AND EMISSAO= :_dataCOMPRA'+
      ' order by item');
  DADOSMOVIMENTOF.ITEPEDIDOSCLI4.ParamByName('_dataCOMPRA').asdatetime := DADOSMOVIMENTOF.PED_CLI.FieldByName('EMISSAO').AsDateTime;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI4.Open;
end;

procedure FiltroItensCompras2;
begin
  DADOSMOVIMENTOF.ITECOMPRAS2.Close;
  DADOSMOVIMENTOF.ITECOMPRAS2.SQL.Clear;
  DADOSMOVIMENTOF.ITECOMPRAS2.SQL.Add('SELECT * FROM ITECOMPRAS WHERE NOTA='+
    QuotedStr(DADOSMOVIMENTOF.COMPRAS.FieldByName('NOTA').AsString)+' AND ' +
    'FORNECEDOR='+QuotedStr(DADOSMOVIMENTOF.COMPRAS.FieldByName(
      'FORNECEDOR').AsString)+' AND EMISSAO= :_dataCOMPRA'+
      ' order by item');
  DADOSMOVIMENTOF.ITECOMPRAS2.ParamByName('_dataCOMPRA').asdatetime := DADOSMOVIMENTOF.COMPRAS.FieldByName('EMISSAO').AsDateTime;
  DADOSMOVIMENTOF.ITECOMPRAS2.Open;
end;

procedure FiltroItensPedidos2;
begin
  DADOSMOVIMENTOF.ITEPEDIDOS2.Close;
  DADOSMOVIMENTOF.ITEPEDIDOS2.SQL.Clear;
  DADOSMOVIMENTOF.ITEPEDIDOS2.SQL.Add('SELECT * FROM ITEPEDIDOS WHERE NOTA='+
    QuotedStr(DADOSMOVIMENTOF.PEDIDOS.FieldByName('NOTA').AsString)+' AND ' +
    'FORNECEDOR='+QuotedStr(DADOSMOVIMENTOF.PEDIDOS.FieldByName(
      'FORNECEDOR').AsString)+' AND EMISSAO= :_dataCOMPRA'+
      ' order by item');
  DADOSMOVIMENTOF.ITEPEDIDOS2.ParamByName('_dataCOMPRA').asdatetime := DADOSMOVIMENTOF.PEDIDOS.FieldByName('EMISSAO').AsDateTime;
  DADOSMOVIMENTOF.ITEPEDIDOS2.Open;
end;

procedure ApagaEntrada;
begin
  DADOSMOVIMENTOF.ITECOMPRAS.First;
  while not DADOSMOVIMENTOF.ITECOMPRAS.Eof do
  begin
    GeraEstoque;
    DADOSMOVIMENTOF.ITECOMPRAS.Delete;
  end;
  DADOSMOVIMENTOF.COMPRAS.Delete;
  DADOSMOVIMENTOF.ITECOMPRAS.ApplyUpdates;
  DADOSMOVIMENTOF.ITECOMPRAS.Refresh;
  DADOSMOVIMENTOF.COMPRAS.ApplyUpdates;
  DADOSMOVIMENTOF.COMPRAS.Refresh;
end;

procedure ApagaPedido;
begin
  DADOSMOVIMENTOF.ITEPEDIDOS.First;
  while not DADOSMOVIMENTOF.ITEPEDIDOS.Eof do
  begin
    DADOSMOVIMENTOF.ITEPEDIDOS.Delete;
  end;
  DADOSMOVIMENTOF.PEDIDOS.Delete;
  DADOSMOVIMENTOF.ITEPEDIDOS.ApplyUpdates;
  DADOSMOVIMENTOF.ITEPEDIDOS.Refresh;
  DADOSMOVIMENTOF.PEDIDOS.ApplyUpdates;
  DADOSMOVIMENTOF.PEDIDOS.Refresh;
end;

procedure FiltroItensVendas2;
begin
  DADOSMOVIMENTOF.ITEVENDAS2.Close;
  DADOSMOVIMENTOF.ITEVENDAS2.SQL.Clear;
  DADOSMOVIMENTOF.ITEVENDAS2.SQL.Add('SELECT * FROM ITEVENDAS WHERE NOTA='+
    QuotedStr(DADOSMOVIMENTOF.VENDAS.FieldByName('NOTA').AsString)+
    ' AND EMISSAO= :_dataVenda'+
      ' order by item');
  DADOSMOVIMENTOF.ITEVENDAS2.ParamByName('_dataVenda').asdatetime := DADOSMOVIMENTOF.VENDAS.FieldByName('EMISSAO').AsDateTime;
  DADOSMOVIMENTOF.ITEVENDAS2.Open;
end;

procedure FiltroItensPedidoCliente2;
begin
  DADOSMOVIMENTOF.ITEPEDIDOSCLI2.Close;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI2.SQL.Clear;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI2.SQL.Add('SELECT * FROM ITEPEDIDOSCLI WHERE NOTA='+
    QuotedStr(DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString)+
    ' AND EMISSAO= :_dataVenda'+
      ' order by item');
  DADOSMOVIMENTOF.ITEPEDIDOSCLI2.ParamByName('_dataVenda').asdatetime := DADOSMOVIMENTOF.PED_CLI.FieldByName('EMISSAO').AsDateTime;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI2.Open;
end;

procedure ApagaSaidas;
begin
  DADOSMOVIMENTOF.ITEVENDAS.First;
  while not DADOSMOVIMENTOF.ITEVENDAS.Eof do
  begin
    GeraEstoqueSaida;
    DADOSMOVIMENTOF.ITEVENDAS.Delete;
  end;
  DADOSMOVIMENTOF.VENDAS.Delete;
  DADOSMOVIMENTOF.ITEVENDAS.ApplyUpdates;
  DADOSMOVIMENTOF.ITEVENDAS.Refresh;
  DADOSMOVIMENTOF.VENDAS.ApplyUpdates;
  DADOSMOVIMENTOF.VENDAS.Refresh;
end;

procedure ApagaPedidoCliente;
begin
  DADOSMOVIMENTOF.ITEPEDIDOSCLI.First;
  while not DADOSMOVIMENTOF.ITEPEDIDOSCLI.Eof do
  begin
    // GeraEstoqueSaida;
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.Delete;
  end;
  DADOSMOVIMENTOF.PED_CLI.Delete;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI.ApplyUpdates;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI.Refresh;
  DADOSMOVIMENTOF.PED_CLI.ApplyUpdates;
  DADOSMOVIMENTOF.PED_CLI.Refresh;
end;

procedure FiltroItensVendas;
begin
  DADOSMOVIMENTOF.ITEVENDAS.Close;
  DADOSMOVIMENTOF.ITEVENDAS.SQL.Clear;
  DADOSMOVIMENTOF.ITEVENDAS.SQL.Add('SELECT * FROM ITEVENDAS WHERE NOTA='+
    QuotedStr(DADOSMOVIMENTOF.VENDAS.FieldByName('NOTA').AsString)+
    ' AND EMISSAO= :_dataVENDAS'+
      ' order by item');
  DADOSMOVIMENTOF.ITEVENDAS.ParamByName('_dataVENDAS').asdatetime := DADOSMOVIMENTOF.VENDAS.FieldByName('EMISSAO').AsDateTime;
  DADOSMOVIMENTOF.ITEVENDAS.Open;
end;

procedure FiltroItensPedidoClentes;
begin
  DADOSMOVIMENTOF.ITEPEDIDOSCLI.Close;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI.SQL.Clear;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI.SQL.Add('SELECT * FROM ITEPEDIDOSCLI WHERE NOTA='+
    QuotedStr(DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString)+
    ' AND EMISSAO= :_dataVENDAS'+
      ' order by item');
  DADOSMOVIMENTOF.ITEPEDIDOSCLI.ParamByName('_dataVENDAS').asdatetime := DADOSMOVIMENTOF.PED_CLI.FieldByName('EMISSAO').AsDateTime;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI.Open;
end;

procedure GeraEstoqueSaida;
var CustoEstoque, CustoEntrada:double;
begin
  DADOSMOVIMENTOF.ESTOQUEEntrada.SQL.Clear;
  DADOSMOVIMENTOF.ESTOQUEEntrada.SQL.Add('Select codigo,QTD,UND_V,PRECO_CUSTO,ULTIMO_PRECO from produtos Where codigo='+TabelaEstoque.FieldByName('CODIGO').AsString);
  DADOSMOVIMENTOF.ESTOQUEEntrada.Open;
  if not DADOSMOVIMENTOF.ESTOQUEEntrada.IsEmpty then begin
  // if DADOSMOVIMENTOF.ESTOQUEEntrada.locate('CODIGO',
  //   TabelaEstoque.FieldByName('CODIGO').AsInteger,[]) then begin
    DADOSMOVIMENTOF.ESTOQUEEntrada.Edit;
    if NovoEdita='DeletaSaidas' then begin
      if TabelaEstoque=DADOSMOVIMENTOF.ITEVENDAS then begin
        DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat:=
          DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat+
          TabelaEstoque.FieldByName('QTD').AsFloat;
      end;
    end
    else begin
      if TabelaEstoque=DADOSMOVIMENTOF.ITEVENDAS then begin
        DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat:=
          DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat-
          TabelaEstoque.FieldByName('QTD').AsFloat;
      end;
      if TabelaEstoque=DADOSMOVIMENTOF.ITEVENDAS2 then begin
        DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat:=
          DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat+
          TabelaEstoque.FieldByName('QTD').AsFloat;
      end;
    end;
    DADOSMOVIMENTOF.ESTOQUEEntrada.Post;
  end;
end;

procedure GeraEstoque;
var CustoEstoque, CustoEntrada:double;
begin
  DADOSMOVIMENTOF.ESTOQUEEntrada.SQL.Clear;
  // DADOSMOVIMENTOF.ESTOQUEEntrada.SQL.Add('Select codigo,QTD,UND_V,PRECO_CUSTO,ULTIMO_PRECO from produtos Where codigo='+TabelaEstoque.FieldByName('CODIGO').AsString);
  DADOSMOVIMENTOF.ESTOQUEEntrada.SQL.Add('Select codigo,QTD,UND_V,PRECO_CUSTO,ULTIMO_PRECO from produtos Where codigo='+TabelaEstoque.FieldByName('CODIGO').AsString);
  DADOSMOVIMENTOF.ESTOQUEEntrada.Open;
  if not DADOSMOVIMENTOF.ESTOQUEEntrada.IsEmpty then begin
    DADOSMOVIMENTOF.ESTOQUEEntrada.Edit;
    if NovoEdita='DeletaEntrada' then begin
      if TabelaEstoque=DADOSMOVIMENTOF.ITECOMPRAS then begin
        DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat:=
          DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat-
          TabelaEstoque.FieldByName('QTD').AsFloat;
      end;
    end
    else begin
      if TabelaEstoque=DADOSMOVIMENTOF.ITECOMPRAS then begin
       if DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat<=0 then begin
         DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('PRECO_CUSTO').AsFloat:=
           TabelaEstoque.FieldByName('PRECO').AsFloat;
       end
       else begin
         CustoEstoque:=DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName(
           'PRECO_CUSTO').AsFloat*DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName(
           'QTD').AsFloat;
         CustoEntrada:=TabelaEstoque.FieldByName('PRECO').AsFloat*
            TabelaEstoque.FieldByName('QTD').AsFloat;

         DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('PRECO_CUSTO').AsFloat:=
           (CustoEstoque+CustoEntrada)/(TabelaEstoque.FieldByName('QTD').AsFloat+
             DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat);
       end;
        DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat:=
          DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat+
          TabelaEstoque.FieldByName('QTD').AsFloat;
        DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('ULTIMO_PRECO').AsFloat:=
          TabelaEstoque.FieldByName('PRECO').AsFloat;
      end;
      if TabelaEstoque=DADOSMOVIMENTOF.ITECOMPRAS2 then begin
        DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat:=
          DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat-
          TabelaEstoque.FieldByName('QTD').AsFloat;
      end;
    end;
    DADOSMOVIMENTOF.ESTOQUEEntrada.Post;
  end;
end;

procedure GeraEstoqueSaidas;
var CustoEstoque, CustoEntrada:double;
begin
  DADOSMOVIMENTOF.ESTOQUEEntrada.Close;
  DADOSMOVIMENTOF.ESTOQUEEntrada.SQL.Clear;
  DADOSMOVIMENTOF.ESTOQUEEntrada.SQL.Add('Select codigo,QTD,UND_V,PRECO_CUSTO,ULTIMO_PRECO from produtos Where codigo='+TabelaEstoque.FieldByName('CODIGO').AsString);
  DADOSMOVIMENTOF.ESTOQUEEntrada.Open;
  if not DADOSMOVIMENTOF.ESTOQUEEntrada.IsEmpty then begin
    DADOSMOVIMENTOF.ESTOQUEEntrada.Edit;
    if NovoEdita='Deleta' then begin
      if TabelaEstoque=DADOSMOVIMENTOF.ITEVENDAS then begin
        DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat:=
          DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat+
          TabelaEstoque.FieldByName('QTD').AsFloat;
      end;
    end
    else begin
      if TabelaEstoque=DADOSMOVIMENTOF.ITEVENDAS then begin
       if DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat<=0 then begin
       end
       else begin
       end;
        DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat:=
          DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat-
          TabelaEstoque.FieldByName('QTD').AsFloat;
      end;
      if TabelaEstoque=DADOSMOVIMENTOF.ITEVENDAS2 then begin
        DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat:=
          DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat+
          TabelaEstoque.FieldByName('QTD').AsFloat;
      end;
    end;
    DADOSMOVIMENTOF.ESTOQUEEntrada.Post;
  end;
end;

procedure CadastrodeObjetos;
begin
  with TCAD_MANUTENCAOf.Create(nil) do begin
    Width:=Panel35.Width;
    Height:=Panel35.Height+50;
    NxNotebook62.ActivePageIndex:=15;
    DataOBJETOSx.OBJETOS.Open;
    DataOBJETOSx.OBJETOS.Append;
    ShowModal;
  end;
end;

procedure CadastrodeFornecedores;
begin
  with TCAD_MANUTENCAOf.Create(nil) do begin
    Width:=Panel4.Width;
    // Height:=Panel4.Height+80;
    Height:=Panel4.Height+100;
    NxNotebook62.ActivePageIndex:=1;
    NxNotebook61.ActivePageIndex:=0;
    DADOS_CADASTROSf.FORNECEDORES.Open;
    DADOS_CADASTROSf.FORNECEDORES.Append;
    ShowModal;
  end;
end;

procedure CadastroCartoes;
begin
  with TCAD_MANUTENCAOf.Create(nil) do begin
    Width:=Panel36.Width;
    Height:=Panel36.Height+50;
    NxNotebook62.ActivePageIndex:=16;
    DataFinanceiro.CARTOES.Open;
    DataFinanceiro.CARTOES.Append;
    ShowModal;
  end;
end;

procedure EditCadastroObjetos;
begin
  if not DataOBJETOSx.OBJETOS.IsEmpty then begin
    with TCAD_MANUTENCAOf.Create(nil) do begin
      Width:=Panel35.Width;
      Height:=Panel35.Height+50;
      NxNotebook62.ActivePageIndex:=15;
      DataOBJETOSx.OBJETOS.Edit;
      ShowModal;
    end;
  end;
end;

procedure EditCadastroFornecedor;
begin
  if not DADOS_CADASTROSf.FORNECEDORES.IsEmpty then begin
    with TCAD_MANUTENCAOf.Create(nil) do begin
      Width:=Panel4.Width;
      Height:=Panel4.Height+100;
      NxNotebook62.ActivePageIndex:=1;
      NxNotebook61.ActivePageIndex:=0;
      DADOS_CADASTROSf.FORNECEDORES.Edit;
      ShowModal;
    end;
  end;
end;

procedure EditCadastroCARTOES;
begin
  if not DataFinanceiro.CARTOES.IsEmpty then begin
    with TCAD_MANUTENCAOf.Create(nil) do begin
      Width:=Panel36.Width;
      Height:=Panel36.Height+50;
      NxNotebook62.ActivePageIndex:=16;
      DataFinanceiro.CARTOES.Edit;
      ShowModal;
    end;
  end;
end;

procedure CadastrodeClientes;
begin
  with TCAD_MANUTENCAOf.Create(nil) do begin
    Width:=Panel6.Width;
    Height:=Panel6.Height+110;
    NxNotebook61.ActivePageIndex:=0;
    NxNotebook62.ActivePageIndex:=0;
    NxNotebook63.ActivePageIndex:=0;
    DADOS_CADASTROSf.Clientes.Open;
    DADOS_CADASTROSf.Clientes.Append;
    ShowModal;
  end;
end;

procedure EditCadastroClientes;
begin
  if not DADOS_CADASTROSf.Clientes.IsEmpty then begin
    with TCAD_MANUTENCAOf.Create(nil) do begin
      Width:=Panel6.Width;
      Height:=Panel6.Height+110;
      NxNotebook61.ActivePageIndex:=0;
      NxNotebook62.ActivePageIndex:=0;
      NxNotebook63.ActivePageIndex:=0;
      DADOS_CADASTROSf.Clientes.Edit;
      // show;
      ShowModal;
    end;
  end;
end;

procedure CadastrodeProdutos;
begin
  DADOS_CADASTROSf.UNIDADES.Open;
  DADOS_CADASTROSf.GRUPO.Open;
  DADOS_CADASTROSf.PRODUTOS.Open;
  with TCAD_MANUTENCAOf.Create(nil) do begin
    Width:=Panel5.Width;
    Height:=Panel5.Height+50;
    NxNotebook62.ActivePageIndex:=2;
    // NxPanel33.Visible:=false;
    NovoEdita:='Novo';
    DADOS_CADASTROSf.PRODUTOS.Append;
    ShowModal;
  end;
end;

procedure EditCadastroProdutos;
begin
  if not DADOS_CADASTROSf.PRODUTOS.IsEmpty then begin
    with TCAD_MANUTENCAOf.Create(nil) do begin
      DADOS_CADASTROSf.UNIDADES.Open;
      DADOS_CADASTROSf.GRUPO.Open;
      Width:=Panel5.Width;
      Height:=Panel5.Height+50;
      NxNotebook62.ActivePageIndex:=2;
      NovoEdita:='Edita';
      DADOS_CADASTROSf.PRODUTOS.Edit;
      ShowModal;
    end;
  end;
end;

procedure CadastrodeGRUPO;
begin
  with TCAD_MANUTENCAOf.Create(nil) do begin
    Width:=Panel11.Width;
    Height:=Panel11.Height+50;
    NxNotebook62.ActivePageIndex:=5;
    DADOS_CADASTROSf.GRUPO.Append;
    ShowModal;
  end;
end;

procedure CadastrodeUNIDADES;
begin
  with TCAD_MANUTENCAOf.Create(nil) do begin
    Width:=Panel12.Width;
    Height:=Panel12.Height+50;
    NxNotebook62.ActivePageIndex:=6;
    DADOS_CADASTROSf.UNIDADES.Append;
    ShowModal;
  end;
end;

procedure CadastrodeGRUPOCLI;
begin
  with TCAD_MANUTENCAOf.Create(nil) do begin
    Width:=Panel7.Width;
    Height:=Panel7.Height+50;
    NxNotebook61.ActivePageIndex:=3;
    Queere.Append;
    ShowModal;
  end;
end;

procedure CadastrodeGRUPOFOR;
begin
  with TCAD_MANUTENCAOf.Create(nil) do begin
    Width:=Panel8.Width;
    Height:=Panel8.Height+50;
    NxNotebook62.ActivePageIndex:=4;
    DADOS_CADASTROSf.GRUPOFOR.Append;
    ShowModal;
  end;
end;

procedure CadastrodeVeiculos;
begin
  with TCAD_MANUTENCAOf.Create(nil) do begin
    Width:=Panel53.Width;
    Height:=Panel53.Height+50;
    NxNotebook62.ActivePageIndex:=23;
    DADOS_CADASTROSf.VEICULOS.Open;
    DADOS_CADASTROSf.VEICULOS.Append;
    ShowModal;
  end;
end;

function ProdutoPorApelido( CodigodeBarras, Codigox: string): string;
begin
  DADOSFRENTEf.PRODUTOS.Close;
  DADOSFRENTEf.PRODUTOS.SQL.Clear;
  DADOSFRENTEf.PRODUTOS.SQL.Add('Select * from PRODUTOS where APELIDO like '+QuotedStr(CodigodeBarras));
  DADOSFRENTEf.PRODUTOS.Open;
  if not DADOSFRENTEf.PRODUTOS.IsEmpty then begin
    QRegistros:=0;
    DADOSFRENTEf.PRODUTOS.First;
    while not DADOSFRENTEf.PRODUTOS.Eof do begin
      QRegistros:=QRegistros+1;
      DADOSFRENTEf.PRODUTOS.Next;
    end;
    if QRegistros=1 then begin
      CodigodeBarras:=DADOSFRENTEf.PRODUTOS.FieldByName('APELIDO').AsString;
    end
    else begin
      if not DADOSFRENTEf.PRODUTOS.IsEmpty then begin
        FiltraCampo:='APELIDO='+QuotedStr(CodigodeBarras);
        ConsultaProdutos;
        CodigodeBarras:=CodigoConsulta;
        FiltraCampo:='';
      end;
    end;
  end;
  if Codigox='1' then
    result:=CodigodeBarras
  else
    result:=DADOSFRENTEf.PRODUTOS.FieldByName('codigo').AsString;
end;

procedure ConsultaBCA(CodigoConsulta: string);
begin
  DADOSFRENTEf.PRODUTOS.Close;
  DADOSFRENTEf.PRODUTOS.SQL.Clear;
  DADOSFRENTEf.PRODUTOS.SQL.Add('Select * from PRODUTOS where barras='+QuotedStr(CodigoConsulta));
  DADOSFRENTEf.PRODUTOS.Open;
  if DADOSFRENTEf.PRODUTOS.IsEmpty then begin
    DADOSFRENTEf.PRODUTOS.Close;
    DADOSFRENTEf.PRODUTOS.SQL.Clear;
    DADOSFRENTEf.PRODUTOS.SQL.Add('Select * from PRODUTOS where codigo like '+QuotedStr(CodigoConsulta));
    DADOSFRENTEf.PRODUTOS.Open;
  end;
  if DADOSFRENTEf.PRODUTOS.IsEmpty then begin
    DADOS_CADASTROSf.Grade.Close;
    DADOS_CADASTROSf.Grade.SQL.Clear;
    DADOS_CADASTROSf.Grade.SQL.Add('Select * from Grade where BARRAS like '+QuotedStr(CodigoConsulta));
    DADOS_CADASTROSf.Grade.Open;
    if not DADOS_CADASTROSf.Grade.IsEmpty then begin
      DADOSFRENTEf.PRODUTOS.Close;
      DADOSFRENTEf.PRODUTOS.SQL.Clear;
      DADOSFRENTEf.PRODUTOS.SQL.Add('Select * from PRODUTOS where codigo like '+QuotedStr(DADOS_CADASTROSf.Grade.FieldByName('codigo').AsString));
      DADOSFRENTEf.PRODUTOS.Open;
      CodigoGrade:=CodigoConsulta;
    end;
  end;
  if DADOSFRENTEf.PRODUTOS.IsEmpty then begin
    DADOSFRENTEf.PRODUTOS.Close;
    DADOSFRENTEf.PRODUTOS.SQL.Clear;
    DADOSFRENTEf.PRODUTOS.SQL.Add('Select * from PRODUTOS where APELIDO like '+QuotedStr(CodigoConsulta));
    DADOSFRENTEf.PRODUTOS.Open;
    if not DADOSFRENTEf.PRODUTOS.IsEmpty then begin
      QRegistros:=0;
      DADOSFRENTEf.PRODUTOS.First;
      while not DADOSFRENTEf.PRODUTOS.Eof do begin
        QRegistros:=QRegistros+1;
        DADOSFRENTEf.PRODUTOS.Next;
      end;
      if QRegistros=1 then begin
        CodigoConsulta:=DADOSFRENTEf.PRODUTOS.FieldByName('APELIDO').AsString;
      end
      else begin
        if not DADOSFRENTEf.PRODUTOS.IsEmpty then begin
          FiltraCampo:='APELIDO='+QuotedStr(CodigoConsulta);
          ConsultaProdutos;
          CodigodeBarras:=CodigoConsulta;
          FiltraCampo:='';
        end;
      end;
    end;
  end;
end;

procedure FiltroDiversasFormasx( DataEMISSAO: tdatetime);
begin
  DADOSFRENTEf.DiversasFormasX.Close;
  DADOSFRENTEf.DiversasFormasX.SQL.Clear;
  DADOSFRENTEf.DiversasFormasX.SQL.Add('SELECT * FROM DiversasFormas WHERE '+
    ' EMISSAO= :_dataVenda'+
      ' order by ID');
  DADOSFRENTEf.DiversasFormasX.ParamByName('_dataVenda').asdatetime := DataEMISSAO;
  DADOSFRENTEf.DiversasFormasX.Open;
end;

procedure FiltroDiversasFormasxy( DataEMISSAOI,DataEMISSAOF: tdatetime);
begin
  DADOSFRENTEf.DiversasFormasX.Close;
  DADOSFRENTEf.DiversasFormasX.SQL.Clear;
  DADOSFRENTEf.DiversasFormasX.SQL.Add('SELECT * FROM DiversasFormas WHERE '+
    ' EMISSAO>= :_dataVendaI and EMISSAO<= :_dataVendaF'+
      ' order by ID');
  DADOSFRENTEf.DiversasFormasX.ParamByName('_dataVendaI').asdatetime := DataEMISSAOI;
  DADOSFRENTEf.DiversasFormasX.ParamByName('_dataVendaF').asdatetime := DataEMISSAOF;
  DADOSFRENTEf.DiversasFormasX.Open;
end;

procedure FiltroDiversasFormasx2( DataEMISSAO: tdatetime; VendasContasx:string);
begin
  DADOSFRENTEf.DiversasFormasX.Close;
  DADOSFRENTEf.DiversasFormasX.SQL.Clear;
  DADOSFRENTEf.DiversasFormasX.SQL.Add('SELECT * FROM DiversasFormas WHERE '+
    'VENDASCONTAS='+QuotedStr(VendasContasx)+
    ' and  EMISSAO= :_dataVenda'+
      ' order by ID');
  DADOSFRENTEf.DiversasFormasX.ParamByName('_dataVenda').asdatetime := DataEMISSAO;
  DADOSFRENTEf.DiversasFormasX.Open;
end;

procedure FiltroDiversasFormasxy2( DataEMISSAOI,DataEMISSAOF: tdatetime; VendasContasx:string);
begin
  DADOSFRENTEf.DiversasFormasX.Close;
  DADOSFRENTEf.DiversasFormasX.SQL.Clear;
  DADOSFRENTEf.DiversasFormasX.SQL.Add('SELECT * FROM DiversasFormas WHERE '+
    'VENDASCONTAS='+QuotedStr(VendasContasx)+
    ' and  EMISSAO>= :_dataVendaI and EMISSAO<= :_dataVendaF'+
      ' order by ID');
  DADOSFRENTEf.DiversasFormasX.ParamByName('_dataVendaI').asdatetime := DataEMISSAOI;
  DADOSFRENTEf.DiversasFormasX.ParamByName('_dataVendaF').asdatetime := DataEMISSAOF;
  DADOSFRENTEf.DiversasFormasX.Open;
end;

procedure NumedordoLancamento;
begin
  Principal_FRM.UniQuery1.SQL.Clear;
  Principal_FRM.UniQuery1.SQL.Add('select gen_id(GEN_VENDAS_ECF2,1) from rdb$database');
  Principal_FRM.UniQuery1.ExecSQL;

  BaixaContasAReceberNumedor:=StrZero(Principal_FRM.UniQuery1.Fields[0].AsInteger,9,0);
end;

end.


