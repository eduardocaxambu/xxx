unit FrentredeCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Mestre, cxStyles, cxClasses,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, MemDS, DBAccess,
  Uni, MaskUtils, RxCurrEdit, dxGDIPlusClasses;

type
  TFrentredeCaixaF = class(TMestre_FRM)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel12: TPanel;
    cxGrid9: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBTableView9DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView9ITEM: TcxGridDBColumn;
    cxGridDBTableView9Column2: TcxGridDBColumn;
    cxGridDBTableView9Column1: TcxGridDBColumn;
    cxGridDBTableView9BARRAS: TcxGridDBColumn;
    cxGridDBTableView9QTD: TcxGridDBColumn;
    cxGridDBTableView9PRECO: TcxGridDBColumn;
    cxGridDBTableView9TOTAL: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    Panel13: TPanel;
    Panel34: TPanel;
    Panel5: TPanel;
    Panel51: TPanel;
    Panel52: TPanel;
    Panel54: TPanel;
    Panel53: TPanel;
    Panel29: TPanel;
    Panel48: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel49: TPanel;
    Panel39: TPanel;
    NxPanel79: TPanel;
    NxPanel80: TPanel;
    CurrencyEdit3: TCurrencyEdit;
    Panel33: TPanel;
    Panel46: TPanel;
    Panel40: TPanel;
    Panel31: TPanel;
    Panel36: TPanel;
    Panel32: TPanel;
    Panel4: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel14: TPanel;
    Panel28: TPanel;
    Panel30: TPanel;
    Panel3: TPanel;
    Cod: TComboEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel6: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    NxCheckBox5: TCheckBox;
    Panel17: TPanel;
    NxCheckBox1: TCheckBox;
    NxCheckBox6: TCheckBox;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel35: TPanel;
    Image1: TImage;
    Panel9: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    cxGridDBTableView9Column3: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Panel19Click(Sender: TObject);
    procedure CodButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Panel24Click(Sender: TObject);
    procedure CodEnter(Sender: TObject);
    procedure CodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CodKeyPress(Sender: TObject; var Key: Char);
    procedure Panel15Click(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
    procedure Panel49Click(Sender: TObject);
    procedure Panel18Click(Sender: TObject);
    procedure Panel16Click(Sender: TObject);
    procedure Panel17Click(Sender: TObject);
    procedure Panel20Click(Sender: TObject);
    procedure Panel21Click(Sender: TObject);
    procedure Panel22Click(Sender: TObject);
    procedure Panel23Click(Sender: TObject);
    procedure Panel25Click(Sender: TObject);
    procedure Panel26Click(Sender: TObject);
    procedure Panel27Click(Sender: TObject);
    procedure Panel51Click(Sender: TObject);
    procedure cxGridDBTableView9CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid9Enter(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel42Click(Sender: TObject);
    procedure Panel43Click(Sender: TObject);
    procedure Panel41Click(Sender: TObject);
    procedure CodChange(Sender: TObject);
    procedure Panel45Click(Sender: TObject);
    // procedure FiltroVendasSql;
  private
    procedure VendaAnterior;
    procedure VendasAnteriores;
    procedure VendasAnterioresf8;
    procedure FiltroItensCupom;
    procedure FechaCaixa;
    procedure InformacoesFrenteCaixa;
    procedure OperadorCaixa;
    procedure Consulta2;
    procedure LeiterQuant;
    procedure VendeItemOrcamento;
    procedure CondicaoVendaInicio;
    procedure AbreGeral;
    procedure Fechamento;
    procedure VendeItemLeitor;
    procedure Quantidades;
    procedure Pesquisa;
    procedure VendeItem;
    procedure FechaVendaItem;
    procedure FocaVendas;
    procedure SomaCupom;
    procedure FechaCupom;
    procedure UltimoCupom;
    procedure AbreCupom;
    procedure FechamentoVenda(AvistaPrazo, DebitoCredito: string);
    procedure ZeraSoma;
    procedure Leitor;
    procedure TrocoTotalDaCompra;
    procedure PerguntaImpressao;
    procedure ImprimeVendas(Grafico: string);
    procedure TiposCaixa;
    procedure DescricaoItem;
    procedure FinalizaCaixa;
    procedure ApagaItem;
    procedure ContasReceber;
    procedure VendaConsumidor;
    procedure FiltroDiversasFormas;
    procedure ImprimeVenda2;
    procedure ControledeCartoes;
    procedure ImportaPedido;
    procedure CondicaoVendaInicio2;
    // procedure AbreContasaPagar;
    procedure ImportaOS;
    procedure ImprimeVenda1;
    procedure Configuracoes;
    procedure ApagaVenda;
    procedure MudaPreco;
    procedure DeletaCupom;
    procedure ConsultaUsuario;
    procedure Sangria;
    procedure Suprimento;
    procedure VeiculosdoCliente;
    procedure AbreContasaPagarSenha;

    procedure BobinaouMatricial;
    procedure GeradordeImpressao;
    procedure Preco;

    { Private declarations }
  public

    { Public declarations }
  end;
  // procedure VendasAnterioresf8;
  // procedure VendaAnterior;
  // procedure VendasAnteriores;
  procedure EscolheaImpressora;
  procedure FiltraVendaAnterior(CupomFilstro:string);
  procedure FechaTabeladaVenda;
  procedure FiltroArquivodeVendas;
  procedure FiltroVendasSql;
  procedure ConsultaProdutos;
  procedure InformacoesCaixaFrente(dc,ap,parcela:string;Valor:double);
  procedure InformacoesCaixa(HISTORICOC,Observacao,Portador,RECEBEMOS,ENDERECOR,
    EMITENTE,DOC_EMITE,ENDERECOE,DC,TIPO,AVIS_PRAZO,ENTREGADOR,
    Parcela:string;CLIENTE,FORNECEDOR,Operador,Vendedor,Historico,
    SubHistorico:integer;DATA,HORA:tdatetime;Valor:double;SP:String);
  procedure InformacoesVenda;
  procedure AbreContasaPagar;

var
  FrentredeCaixaF: TFrentredeCaixaF;
  item: integer;
  TotalGeralPago, TotalTroco,
  PrecodoProduto, TrocoCompra, ValorPago,
  ValoarParaTroco, SomaValorDaVenda, ValordoFrete, ValordaTaxadeEntrega,
  ValordadoDesconto, ValordadoAcrescimo, ValordoTroco, ValoraserPagodaVenda,
  ValordasFormas, PrecoaVista, PrecoaPrazo, TotaldaVenda, TotaldasParecelas,
  VlComissao, TotGeralX,Desconto2X, ValtotX, Acrescimox, VlrUnit,
  TrocoX, Tamanho, TamNome, ValrecX, Quantidadesx, QuantidadePassada,
  PrecoPassado :double;

  quantidade, CodigodeBarras, ConfirmaFechamento,
  Entregador, Portadorx, MeioPagamento,
  PesquisaMeio, SoFrente, PrecoVistaPrazo,
  EntrouOleoCarro,
  EntrecadorMercadoria, PortadorCliente, ImpressaoOrcamentetoCustoVenda,
  CpfCnpj, MeiodePagamento, TipoDesc, ParcalaX, TrocaMensagem,
  TipoAcre, Tam, DescricaoCliente, QUAPAR,
  ConfirmaItemVenda, Modalidade,
  CodigoEntrada, FechamentoCaixa : string;


  QuantidadeEscolhida, QuantidadeRecibos, Tama, TamanhoFonte,
  CodigoClienteCaderneta: integer;

  // TabelaEstoque, Queere2: TUniQuery;

implementation

{$R *.dfm}

uses DADOSFRENTE, dadosFinaceiro, FUNCAORELATORIOS, FUNCOESUNIDAC, GERAL,
  DADOS_CADASTROS, FUNCOES, CONSULTAS, DADOS_CONSULTAS, TrocaPreco,
  DADOSMOVIMENTO, dadosOBJETOS, FUNCOESGERAIS, VISUALIZACAO, MENSPROC,
  CONTASRECPAG, GERALFRENTE, CAD_MANUTENCAO, GERAL3;

procedure TFrentredeCaixaF.FormActivate(Sender: TObject);
begin
  inherited;
  Modalidade:='Vendas';
  TiposCaixa;
  // DataModule5.CONFIG.Open;
  InformacoesFrenteCaixa;
  FocaVendas;
end;

procedure TFrentredeCaixaF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  // Action:=canone;
  DADOS_CADASTROSf.UniConnection1.Connected:=false;
  FreeAndNil(FrentredeCaixaF);
  // halt;
  // Application.Terminate;
end;

procedure TFrentredeCaixaf.TiposCaixa;
begin
  DADOS_CADASTROSf.UniConnection1.Connected:=true;
  // AbreGeral;
end;


procedure TFrentredeCaixaF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_escape then
    FinalizaCaixa;
  if not DADOSFRENTEf.ITEVENDAS_ECF2.IsEmpty then begin
    if key=Vk_up then
      DADOSFRENTEf.ITEVENDAS_ECF2.Prior;
    if key=Vk_down then
      DADOSFRENTEf.ITEVENDAS_ECF2.Next;
    if key=vk_Prior then
      DADOSFRENTEf.ITEVENDAS_ECF2.MoveBy(-17);
    if key=vk_Next  then
      DADOSFRENTEf.ITEVENDAS_ECF2.MoveBy(+17);
    if key=vk_Home  then
      DADOSFRENTEf.ITEVENDAS_ECF2.First;
    if key=vk_end  then
      DADOSFRENTEf.ITEVENDAS_ECF2.Last;
    if (shift=[ssctrl]) and (key=Vk_Delete) then
      ApagaItem;
  end;
  if key=vk_f2 then begin
    PesquisaMeio:='S';
    Consulta2;
    PesquisaMeio:='';
  end;
  if key=vk_f4 then
    VendaConsumidor;
  if key=vk_f5 then
    ApagaVenda;
  if key=vk_f11 then
    MudaPreco;
  if key=vk_f1 then begin
    SomaValorDaVenda:=SomaValorDaVenda+DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('TOTAL').AsFloat;
    NxPanel79.Caption:=NxPanel79.Caption+' + '+
    '('+DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('ITEM').AsString+')'+
    FormatFloat('###,##0.00',DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('TOTAL').AsFloat);
    NxPanel80.Caption:='Soma.: '+FormatFloat('###,##0.00',SomaValorDaVenda);
  end;
  if key=vk_f9 then begin
    ZeraSoma;
    Cod.SetFocus;
  end;
  if key=vk_f7 then
    Fechamento;
  if key=vk_f8 then
    VendasAnterioresf8;
    // VendaAnterior;
  if (key=vk_f9) and (Panel9.Visible=true) then
    VeiculosdoCliente;
  if key=vk_f11 then
    FocaVendas;
  if key=vk_f12 then begin
    FinalizaCaixa;
    // DADOS_CADASTROSf.UniConnection1.Connected:=false;
    // application.Terminate;
  end;
end;

procedure TFrentredeCaixaf.ApagaVenda;
begin
  cxGrid9.Visible:=false;
  if DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_VENDA').AsFloat<>0 then begin
    ShowMessage('Venda Fechada !!!')
  end
  else begin
    if NxCheckBox5.Checked then begin
      DeletaCupom;
      AbreCupom;
      item:=0;
      TotalGeral:=0;
      Panel37.Caption:=FormatFloat('###,##0.00',TotalGeral);
      // NxPanel13.Visible:=false;
      // NxPanel17.Visible:=false;
      NxCheckBox5.Checked:=false;
      FocaVendas;
    end;
  end;
  cxGrid9.Visible:=true;
end;

procedure TFrentredeCaixaf.DeletaCupom;
begin
  DADOSFRENTEf.ITEVENDAS_ECF2.Close;
  DADOSFRENTEf.ITEVENDAS_ECF2.Open;
  DADOSFRENTEf.ITEVENDAS_ECF2.First;
  while not DADOSFRENTEf.ITEVENDAS_ECF2.IsEmpty do
    DADOSFRENTEf.ITEVENDAS_ECF2.Delete;
end;

procedure TFrentredeCaixaf.MudaPreco;
begin
  if NxCheckBox1.Checked then
    NxCheckBox1.Checked:=false
  else
    NxCheckBox1.Checked:=true;
end;

procedure TFrentredeCaixaf.ApagaItem;
var NumerItem:string;
begin
  // cxGrid9.Visible:=false;
  // if DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_VENDA').AsFloat<>0 then
  if DADOSFRENTEf.VENDAS_ECF2.FieldByName('ABERTO').AsString='F' then
    Fechamento
  else begin
    if not DADOSFRENTEf.ITEVENDAS_ECF2.IsEmpty then begin
      TotalGeral:=TotalGeral-DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('TOTAL').AsFloat;
      Panel37.Caption:=FormatFloat('###,##0.00',TotalGeral);
      NumerItem:=DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('ITEM').AsString;
      DADOSFRENTEf.ITEVENDAS_ECF2.Close;
      DADOSFRENTEf.ITEVENDAS_ECF2.Open;
      DADOSFRENTEf.ITEVENDAS_ECF2.Refresh;
      DADOSFRENTEf.ITEVENDAS_ECF2.Locate('ITEM',NumerItem,[]);
      DADOSFRENTEf.ITEVENDAS_ECF2.Delete;
      AbreCupom;
      DADOSFRENTEf.ITEVENDAS_ECF2.Last;
      {
      DADOSFRENTEf.ITEVENDAS_ECF2.First;
      item:=0;
      if not DADOSFRENTEf.ITEVENDAS_ECF2.IsEmpty then begin
        while not DADOSFRENTEf.ITEVENDAS_ECF2.Eof do begin
          item:=item+1;
          DADOSFRENTEf.ITEVENDAS_ECF2.Edit;
          DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('ITEM').AsInteger:=item;
          DADOSFRENTEf.ITEVENDAS_ECF2.Post;
          DADOSFRENTEf.ITEVENDAS_ECF2.Next;
        end;
      end;
      }
    end;
  end;
  // cxGrid9.Visible:=true;
end;

procedure TFrentredeCaixaf.FinalizaCaixa;
begin
  if Application.MessageBox('Deseja Finalizar o Sistema ?','Confirmação',MB_YESNO + MB_ICONQUESTION)= ID_YES then
    Close;
end;

procedure TFrentredeCaixaF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key=^R then
    ContasReceber;
  {
  if key=^B then
    ImprimeVenda2;
    }
  if key=^C then
    ControledeCartoes;
  if key=^E then
    ImportaPedido;
  if key=^F then
    FechaCaixa;
  if key=^G then
    AbreContasaPagarSenha;
    // AbreContasaPagar;
  if key=^O then
    ImportaOS;
  if key=^P then
    ImprimeVenda1;
  if key=^S then
    Sangria;
  if key=^U then
    Suprimento;
  // if key=^S then
  //   CurrencyEdit3.SetFocus;
  if key=^X then
    Configuracoes;
  if key=^T then
    GeradordeImpressao;
  // if key=^T then begin
  if key=^B then
    BobinaouMatricial;
  if key=^I then begin
    EscolheaImpressora;
    Panel42.Caption:='Ctrl<I> Escolher Impressora - '+ImpressoraEscolhida;
  end;
end;

procedure TFrentredeCaixaf.GeradordeImpressao;
begin
  if TrodadeGeradordeImpressao='MI' then
    TrodadeGeradordeImpressao:='RB'
  else
    TrodadeGeradordeImpressao:='MI';
end;

procedure TFrentredeCaixaf.BobinaouMatricial;
begin
  if Panel44.Caption='Matricial' then begin
    BobinaFormulario:='B';
    Panel44.Caption:='Bobina'
  end
  else if Panel44.Caption='Bobina' then begin
    BobinaFormulario:='F';
    Panel44.Caption:='Matricial'
  end;
end;

procedure EscolheaImpressora;
begin
  ImpressoraEscolhida:='';
  // with TGERALFRENTEF.Create(Self) do begin
  with TGERALFRENTEF.Create(nil) do begin
    Width:=Panel58.Width;
    Height:=Panel58.Height;
    NxNotebook61.ActivePageIndex:=16;
    ShowModal;
  end;
end;

procedure TFrentredeCaixaf.Configuracoes;
begin
  TelaSenha;
  if senha='EJOCVERDADEIRO' then begin
    with TGERALFRENTEF.Create(Self) do begin
      Width:=Panel117.Width;
      Height:=Panel117.Height;
      NxNotebook61.ActivePageIndex:=1;
      DADOSFRENTEf.CONFIG.Open;
      if DADOSFRENTEf.CONFIG.IsEmpty then
        DADOSFRENTEf.CONFIG.Append
      else
        DADOSFRENTEf.CONFIG.Edit;
      ShowModal;
    end;
  end
  else
    ShowMessage('Senha Incorreta !!!');
end;

procedure TFrentredeCaixaf.ImprimeVenda1;
begin
  if DADOSFRENTEf.ITEVENDAS_ECF2.IsEmpty then
    ShowMessage('Venda sem itens !!!')
  else begin
      // if (DADOSFRENTEf.CONF_PADRAO.FieldByName('TIPODEMPRESSAO').AsString='GB') or (DADOSFRENTEf.CONF_PADRAO.FieldByName('TIPODEMPRESSAO').AsString='RB') then
      if DADOSFRENTEf.CONF_PADRAO.FieldByName('TIPODEMPRESSAO').AsString='GB' then
        ImprimeVendas('S');
      // if DADOSFRENTEf.CONF_PADRAO.FieldByName('TIPODEMPRESSAO').AsString='MI' then
      if (DADOSFRENTEf.CONF_PADRAO.FieldByName('TIPODEMPRESSAO').AsString='MI') or (DADOSFRENTEf.CONF_PADRAO.FieldByName('TIPODEMPRESSAO').AsString='RB') then
        ImprOrcamento;
  end;
end;

procedure TFrentredeCaixaF.ImportaOS;
begin
  with TGERALFRENTEF.Create(Self) do begin
    Panel6.Visible:=false;
    Width:=Panel2.Width;
    Height:=Panel2.Height;
    NxNotebook61.ActivePageIndex:=3;
    ShowModal;
  end;
  if not DataOBJETOSx.PRODSERV.IsEmpty then begin
      CodigoClientePedidoOS:=DataOBJETOSx.ORDENS.FieldByName('CODCLI').AsInteger;
    DataOBJETOSx.PRODSERV.First;
    while not DataOBJETOSx.PRODSERV.Eof do begin
      CodigodeBarras:=DataOBJETOSx.PRODSERV.FieldByName('CODIGO').AsString;
      Pesquisa;
      quantidade:=DataOBJETOSx.PRODSERV.FieldByName('QTD').AsString;
      PrecodoProduto:=DataOBJETOSx.PRODSERV.FieldByName('PRECO').AsFloat;
      CondicaoVendaInicio2;
      DataOBJETOSx.PRODSERV.Next;
    end;
    DataOBJETOSx.PRODSERV.Close;
  end;
end;

procedure AbreContasaPagar;
begin
  // with TCONTASRECPAGF.Create(Self) do begin
  with TCONTASRECPAGF.Create(nil) do begin
    Width:=Panel26.Width;
    Height:=Panel26.Height;
    NxPanel19.Caption:='Contas a Pagar';
    NxNotebook61.ActivePageIndex:=1;
    ShowModal;
  end;
end;

procedure TFrentredeCaixaF.ImportaPedido;
begin
  with TGERALFRENTEF.Create(Self) do begin
    Panel2.Visible:=False;
    Width:=Panel6.Width;
    Height:=Panel6.Height;
    NxNotebook61.ActivePageIndex:=3;
    ShowModal;
  end;
  if not DADOSMOVIMENTOF.ITEPEDIDOSCLI.IsEmpty then begin
    CodigoClientePedidoOS:=DADOSMOVIMENTOF.PED_CLI.FieldByName('CLIENTE').AsInteger;
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.First;
    while not DADOSMOVIMENTOF.ITEPEDIDOSCLI.Eof do begin
      CodigodeBarras:=DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('CODIGO').AsString;
      Pesquisa;
      quantidade:=DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('QTD').AsString;
      PrecodoProduto:=DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('PRECO').AsFloat;
      CondicaoVendaInicio2;
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.Next;
    end;
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.Close;
  end;
end;

procedure TFrentredeCaixaF.CondicaoVendaInicio2;
begin
  if DADOSFRENTEf.VENDAS_ECF2.Active=false then begin
    AbreGeral;
    InformacoesFrenteCaixa;
  end;
  // if DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_VENDA').AsFloat<>0 then begin
  if DADOSFRENTEf.VENDAS_ECF2.FieldByName('ABERTO').AsString='F' then begin
    Fechamento;
    VendeItem;
  end
  else begin
    VendeItem;
  end;
end;

procedure TFrentredeCaixaf.ControledeCartoes;
begin
  DADOSFRENTEf.CONF_PADRAO.Refresh;
  TelaSenha;
  if senha='MANAGER' then begin
    DataFinanceiro.CARTOES.Open;
    DataFinanceiro.CARTOESITENS.Open;
    with TCONTASRECPAGF.Create(Self) do begin
      Width:=Panel14.Width;
      Height:=Panel14.Height;
      NxPanel62.Caption:='Controle de Cartões';
      NxNotebook61.ActivePageIndex:=2;
      ShowModal;
    end;
  end;
end;

procedure TFrentredeCaixaF.cxGrid9Enter(Sender: TObject);
begin
  inherited;
  FocaVendas;
end;

procedure TFrentredeCaixaF.cxGridDBTableView9CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  // ACanvas.Font.Color  := clMaroon;
end;

procedure TFrentredeCaixaf.ImprimeVenda2;
begin
  if DADOSFRENTEf.ITEVENDAS_ECF2.IsEmpty then
    ShowMessage('Venda sem itens !!!')
  else
    ImprimeVendas('B');
end;

procedure TFrentredeCaixaF.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  DescricaoItem;
end;

procedure TFrentredeCaixaf.DescricaoItem;
begin
  if DADOSFRENTEf.ITEVENDAS_ECF2.IsEmpty then
    Panel33.Caption:='Caixa Livre'
  else begin
    Panel33.Caption:=
    'Código: '+
    DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('BARRAS').AsString+' ('+
    COPY(DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('DESCRICAO').AsString,1,30)+') '+
    'QTDxUN. '+
    DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('QTD').AsString+'X'+
    DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECO').AsString+' '+
    'VL ITEM ('+
    FormatFloat('###,##0.00',DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName(
      'TOTAL').AsFloat)+')';
  end;
end;

procedure TFrentredeCaixaF.FormShow(Sender: TObject);
var NumerodaImpressora:string;
begin
  inherited;
  NumerodaImpressora:=ParamStr(2);
  if ParamStr(2)='' then
    NumerodaImpressora:='2';

  DADOSFRENTEf.CONF_PADRAO.Open;
  if DADOSFRENTEf.CONF_PADRAO.FieldByname('IMPRESSAO').AsString='F' then begin
    BobinaFormulario:='';
    Panel44.Caption:='Bobina';
  end;
  if ParamStr(3)<>'F' then
    Panel44.Caption:='Matricial';
  if ParamStr(3)<>'B' then
    Panel44.Caption:='Bobina';
  BobinaouMatricial;

  OperadorCaixa;

  if DADOSFRENTEf.CONF_PADRAO.FieldByname('TIPODEMPRESSAO').AsString='MI' then
    TrodadeGeradordeImpressao:='MI';

  // Panel42.Caption:='Ctrl<I> Escolher Impressora - '+DADOSFRENTEf.CONF_PADRAO.FieldByName('IMPRESSORA'+ParamStr(2)).AsString;
  Panel42.Caption:='Ctrl<I> Escolher Impressora - '+DADOSFRENTEf.CONF_PADRAO.FieldByName('IMPRESSORA'+NumerodaImpressora).AsString;

  DADOSFRENTEf.DiversasFormas.Close;
  DADOSFRENTEf.DiversasFormas.CachedUpdates:=true;
  DADOSFRENTEf.DiversasFormas.SQL.Clear;
  DADOSFRENTEf.DiversasFormas.SQL.Add('Select * from DiversasFormas where CUPOM='+QuotedStr(''));
  DADOSFRENTEf.DiversasFormas.Open;
  DADOSFRENTEf.DiversasFormas.First;
  while not DADOSFRENTEf.DiversasFormas.Eof do
    DADOSFRENTEf.DiversasFormas.Delete;

  DADOSFRENTEf.DiversasFormas.ApplyUpdates();

  DADOSFRENTEf.CONF_PADRAO.Open;
  if (DADOSFRENTEf.CONF_PADRAO.FieldByName('RAMO').AsString<>'Conveniencia') and
     (DADOSFRENTEf.CONF_PADRAO.FieldByName('RAMO').AsString<>'Mercado') and
     (DADOSFRENTEf.CONF_PADRAO.FieldByName('RAMO').AsString<>'Lanchonete') then begin
    Panel25.Caption:='Ctrl<O> Importa OS';
  end;
  Panel27.Caption:='Ctrl<E>Importa Pedido';

  if DADOSFRENTEf.CONF_PADRAO.FieldByName('OLEO').AsString='N' then
    Panel9.Visible:=false;

  // Panel33.BevelOuter:=bvNone;
  // Panel34.BevelOuter:=bvNone;
  Panel48.BevelOuter:=bvNone;
  Panel38.BevelOuter:=bvNone;
  Panel37.BevelOuter:=bvNone;
  Panel49.BevelOuter:=bvNone;
  // Panel50.BevelOuter:=bvNone;
  Panel51.BevelOuter:=bvNone;
  Panel52.BevelOuter:=bvNone;
  Panel53.BevelOuter:=bvNone;
  Panel54.BevelOuter:=bvNone;
  Panel1.BevelOuter:=bvNone;
  Panel2.BevelOuter:=bvNone;
  Panel30.BevelOuter:=bvNone;
  Panel35.BevelOuter:=bvNone;
  Panel12.BevelOuter:=bvNone;

  Panel31.BevelOuter:=bvNone;
  Panel36.BevelOuter:=bvNone;
  Panel40.BevelOuter:=bvNone;
  Panel32.BevelOuter:=bvNone;
  Panel4.BevelOuter:=bvNone;
  Panel11.BevelOuter:=bvNone;
  Panel14.BevelOuter:=bvNone;
  Panel28.BevelOuter:=bvNone;

  // Panel14.Align:=alclient;
  Panel1.Align:=alclient;
  cxGrid9.Align:=alclient;
  Panel13.Align:=alclient;
  Panel12.Align:=alclient;
  Panel2.Align:=alclient;
  Image1.Align:=alclient;

  Panel52.Caption:='Vendas';




  FiltroVendasSql;
  {
  DADOSFRENTEf.VENDAS_ECF2.ParamByName('_dataini').asdatetime :=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').asdatetime;
  DADOSFRENTEf.VENDAS_ECF2.Open;
  }

  DADOSFRENTEf.VENDAS_ECF2.Last;



  if DADOSFRENTEf.VENDAS_ECF2.FieldByName('ABERTO').AsString='A' then begin
    FiltroItensCupom;
    SomaCupom;
  end
  else
    DADOSFRENTEf.VENDAS_ECF2.Close;

  if (ParamStr(1)='Consulta') then
    FechaCaixa;
end;

procedure TFrentredeCaixaF.CodButtonClick(Sender: TObject);
begin
  inherited;
  Consulta2;
end;

procedure TFrentredeCaixaF.CodChange(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.CONF_PADRAO.Refresh;
end;

procedure TFrentredeCaixaF.CodEnter(Sender: TObject);
begin
  inherited;
  DescricaoItem;
end;

procedure TFrentredeCaixaF.CodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Consulta2;
  if key=vk_return then
    VendeItemOrcamento;
end;

procedure TFrentredeCaixaF.CodKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if POS(Key,' -\}{^`!@#$%¨&()_+.')>0 then
    Key:=#0;
end;

procedure TFrentredeCaixaf.Consulta2;
begin
  ConsultaProdutos;
  LeiterQuant;
end;

procedure TFrentredeCaixaf.LeiterQuant;
begin
  if CodigoConsulta<>'' then begin
    if Pos('*',Cod.Text)<>0 then begin
      quantidade:=Copy(cod.text,1,Pos('*',cod.text)-1);
      Cod.Text:=quantidade+'*'+CodigoBarra;
    end
    else
      Cod.Text:=CodigoBarra;
    Quantidades;
    // if (quantidade='') or (quantidade='0') then else
    if (quantidade<>'') or (quantidade<>'0') then
      VendeItemOrcamento;
      // VendeItemLeitor;
  end;
  // Preco;
end;

procedure TFrentredeCaixaf.Quantidades;
begin
  // NxPanel13.Visible:=false;
  // NxPanel17.Visible:=false;
  if Pos('*',Cod.Text)<>0 then begin
    quantidade:=Copy(cod.text,1,Pos('*',cod.text)-1);
    if (quantidade='') or (quantidade='0') then begin
      Showmessage('Quantidade não Informada !!!');
      cod.text:='';
    end
    else
      CodigodeBarras:=Copy(Cod.Text,Pos('*',Cod.text)+1,15);
  end
  else begin
    quantidade:='1';
    CodigodeBarras:=Cod.Text;
  end;
  if cod.text<>'' then
    Pesquisa;
end;

procedure TFrentredeCaixaf.Pesquisa;
begin
  DADOSFRENTEf.PRODUTOS.Close;
  DADOSFRENTEf.PRODUTOS.SQL.Clear;
  DADOSFRENTEf.PRODUTOS.SQL.Add('Select * from PRODUTOS where barras='+QuotedStr(CodigodeBarras));
  DADOSFRENTEf.PRODUTOS.Open;
  if DADOSFRENTEf.PRODUTOS.IsEmpty then begin
    DADOSFRENTEf.PRODUTOS.Close;
    DADOSFRENTEf.PRODUTOS.SQL.Clear;
    DADOSFRENTEf.PRODUTOS.SQL.Add('Select * from PRODUTOS where codigo like '+QuotedStr(CodigodeBarras));
    DADOSFRENTEf.PRODUTOS.Open;
  end;
  {
  DADOSFRENTEf.PRODUTOS.Close;
  DADOSFRENTEf.PRODUTOS.SQL.Clear;
  DADOSFRENTEf.PRODUTOS.SQL.Add('Select * from PRODUTOS where codigo like '+QuotedStr(CodigodeBarras));
  DADOSFRENTEf.PRODUTOS.Open;
  if DADOSFRENTEf.PRODUTOS.IsEmpty then begin
    DADOSFRENTEf.PRODUTOS.Close;
    DADOSFRENTEf.PRODUTOS.SQL.Clear;
    DADOSFRENTEf.PRODUTOS.SQL.Add('Select * from PRODUTOS where barras='+QuotedStr(CodigodeBarras));
    DADOSFRENTEf.PRODUTOS.Open;
  end;
  }
  if DADOSFRENTEf.PRODUTOS.IsEmpty then begin
    DADOS_CADASTROSf.Grade.Close;
    DADOS_CADASTROSf.Grade.SQL.Clear;
    DADOS_CADASTROSf.Grade.SQL.Add('Select * from Grade where BARRAS like '+QuotedStr(CodigodeBarras));
    DADOS_CADASTROSf.Grade.Open;
    if not DADOS_CADASTROSf.Grade.IsEmpty then begin
      DADOSFRENTEf.PRODUTOS.Close;
      DADOSFRENTEf.PRODUTOS.SQL.Clear;
      DADOSFRENTEf.PRODUTOS.SQL.Add('Select * from PRODUTOS where codigo like '+QuotedStr(DADOS_CADASTROSf.Grade.FieldByName('codigo').AsString));
      DADOSFRENTEf.PRODUTOS.Open;
    end;
  end;
  if DADOSFRENTEf.PRODUTOS.IsEmpty then begin
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
          Pesquisa;
          if CodigodeBarras='' then
            cod.Clear;
        end;
      end;
    end;
  end;
end;

procedure TFrentredeCaixaF.VendeItemOrcamento;
begin
  if Cod.Text<>'' then begin
    CondicaoVendaInicio;
  end;
end;

procedure TFrentredeCaixaF.CondicaoVendaInicio;
begin
  if DADOSFRENTEf.VENDAS_ECF2.Active=false then begin
    AbreGeral;
    InformacoesFrenteCaixa;
  end;
  // if DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_VENDA').AsFloat<>0 then begin
  if DADOSFRENTEf.VENDAS_ECF2.FieldByName('ABERTO').AsString='F' then begin
    Fechamento;
    VendeItemLeitor;
  end
  else begin
    VendeItemLeitor;
  end;
end;

procedure TFrentredeCaixaf.VendeItemLeitor;
begin
  DADOSFRENTEf.CONF_PADRAO.Open;
  // if (DADOSFRENTEf.CONF_PADRAO.FieldByName('VISTAPRAZO').AsString='S') or (NxCheckBox1.Checked=true) then begin
  if (DADOSFRENTEf.CONF_PADRAO.FieldByName('VISTAPRAZO').AsString='S') or (NxCheckBox1.Checked=true) or (NxCheckBox6.Checked=true) then begin
    Quantidades;
    // Pesquisa;
    if (DADOSFRENTEf.PRODUTOS.IsEmpty) or (CodigodeBarras='') then
      ShowMessage('Código Inexistente !!!')
    else if Cod.Text='' then
      ShowMessage('Informe um Código !!!')
    else begin
      {
      with TGeralf.Create(Self) do begin
        Width:=NxPanel12.Width;
        Height:=NxPanel12.Height;
        NxNotebook1.ActivePageIndex:=5;
        Panel27.Caption:='Descrição.: '+DADOSFRENTEf.PRODUTOS.FieldByName('DESCRICAO').AsString;
        Panel2.Caption:='Estoque...: '+DADOSFRENTEf.PRODUTOS.FieldByName('QTD').AsString;
        RealEdit2.Value:=DADOSFRENTEf.PRODUTOS.FieldByName('PRECO_CONS').AsFloat;
        PrecoaVista:=DADOSFRENTEf.PRODUTOS.FieldByName('PRECO_CONS').AsFloat;
        PrecoaPrazo:=DADOSFRENTEf.PRODUTOS.FieldByName('PRECO_REV').AsFloat;
        CurrencyEdit18.Text:=quantidade;
        ShowModal;
      end;
      }
      with TTrocaPrecof.Create(Self) do begin
        Width:=Panel48.Width;
        Height:=Panel48.Height;
        // NxNotebook1.ActivePageIndex:=5;
        Panel27.Caption:='Descrição.: '+DADOSFRENTEf.PRODUTOS.FieldByName('DESCRICAO').AsString;
        if DADOSFRENTEf.PRODUTOS.FieldByName('QTD').AsInteger=0 then begin
          Panel2.Font.Color:=clMaroon;
          Panel2.Caption:='Estoque.: ( '+DADOSFRENTEf.PRODUTOS.FieldByName('QTD').AsString+' ) Zerado';
        end
        else if DADOSFRENTEf.PRODUTOS.FieldByName('QTD').AsInteger<0 then begin
          Panel2.Font.Color:=clRed;
          Panel2.Caption:='Estoque.: ( '+DADOSFRENTEf.PRODUTOS.FieldByName('QTD').AsString+' ) Itens - Negativo';
        end
        else if DADOSFRENTEf.PRODUTOS.FieldByName('QTD').AsInteger>0 then begin
          Panel2.Font.Color:=clNavy;
          Panel2.Caption:='Estoque.: ( '+DADOSFRENTEf.PRODUTOS.FieldByName('QTD').AsString+' ) Itens - Positivo';
        end;
        RealEdit2.Value:=DADOSFRENTEf.PRODUTOS.FieldByName('PRECO_CONS').AsFloat;
        PrecoaVista:=DADOSFRENTEf.PRODUTOS.FieldByName('PRECO_CONS').AsFloat;
        PrecoaPrazo:=DADOSFRENTEf.PRODUTOS.FieldByName('PRECO_REV').AsFloat;
        CurrencyEdit18.Text:=quantidade;
        ShowModal;
      end;
      if ConfirmaItemVenda='S' then begin
        // quantidade:=1;
        quantidade:=FloatToStr(QuantidadePassada);
        PrecodoProduto:=PrecoPassado;
        VendeItem;
      end;
    end;
    ConfirmaItemVenda:='';
    // NxCheckBox1.Checked:=false;
  end
  else
    FechaVendaItem;
end;

procedure TFrentredeCaixaf.FechaVendaItem;
begin
  if Cod.Text='' then
    FocaVendas
  else begin
    Quantidades;
    if cod.text<>'' then begin
      FocaVendas;
      // if DADOSFRENTEf.PRODUTOS.IsEmpty then
      if (DADOSFRENTEf.PRODUTOS.IsEmpty) or (CodigodeBarras='') then
        ShowMessage('Código Inexistente !!!')
      else begin
        Preco;
      end;
    end
    else
      cod.SetFocus;
  end;
  DADOSFRENTEf.PRODUTOS_xxxx.Refresh;
end;

procedure TFrentredeCaixaf.Preco;
begin
  {
  if NxCheckBox1.Checked then begin
    NxPanel27.Visible:=true;
    if Modalidade<>'Pedidos' then begin
        CurrencyEdit1.Value:=DADOSFRENTEf.PRODUTOS.FieldByName(
          'PRECO_CONS').AsFloat
    end;
    CurrencyEdit1.SetFocus;
  end
  else begin
    if Modalidade<>'Pedidos' then
      PrecodoProduto:=DADOSFRENTEf.PRODUTOS.FieldByName('PRECO_CONS').AsFloat
    else begin
            DADOSFRENTEf.PRODUTOS.Open;
      DADOSFRENTEf.PRODUTOS.Locate('Codigo',DADOSFRENTEf.PRODUTOS.FieldByName(
        'Codigo').AsString,[]);

      PrecodoProduto:=DADOSFRENTEf.PRODUTOS.FieldByName(
        'ULTIMO_PRECO').AsFloat;

      PrecodoProduto:=DADOSFRENTEf.PRODUTOS.FieldByName(
        'ULTIMO_PRECO').AsFloat;
    end;
    VendeItem;
  end;
  }
  if Modalidade<>'Pedidos' then
    PrecodoProduto:=DADOSFRENTEf.PRODUTOS.FieldByName('PRECO_CONS').AsFloat
  else begin

    {
    DADOSFRENTEf.PRODUTOS.Open;
    DADOSFRENTEf.PRODUTOS.Locate('Codigo',DADOSFRENTEf.PRODUTOS.FieldByName('Codigo').AsString,[]);

    DADOSFRENTEf.PRODUTOS.Close;
    DADOSFRENTEf.PRODUTOS.SQL.Clear;
    DADOSFRENTEf.PRODUTOS.SQL.Add('Select * from PRODUTOS where codigo like '+QuotedStr(DADOSFRENTEf.PRODUTOS.FieldByName('Codigo').AsString));
    DADOSFRENTEf.PRODUTOS.Open;
    }

    PrecodoProduto:=DADOSFRENTEf.PRODUTOS.FieldByName(
      'ULTIMO_PRECO').AsFloat;

    PrecodoProduto:=DADOSFRENTEf.PRODUTOS.FieldByName(
      'ULTIMO_PRECO').AsFloat;
  end;
  VendeItem;
end;

procedure TFrentredeCaixaf.FocaVendas;
begin
  Cod.SetFocus;
  // if NxPanel27.Visible=true then
  //   CurrencyEdit1.SetFocus;
end;

procedure TFrentredeCaixaf.VendeItem;
begin
  cxGrid9.Visible:=false;
  DADOSFRENTEf.VENDAS_ECF2.Open;
  DADOSFRENTEf.ITEVENDAS_ECF2.Open;
  if DADOSFRENTEf.VENDAS_ECF2.IsEmpty then begin
    CupomNovo;
  end;

  if DADOSFRENTEf.ITEVENDAS_ECF2.IsEmpty then
    item:=0;

  DADOSFRENTEf.VENDAS_ECF2.Open;
  DADOSFRENTEf.CONF_PADRAO.Open;
  DADOSFRENTEf.ITEVENDAS_ECF2.Append;
  item:=item+1;
  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('CUPOM').AsString:=
  DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString;

  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('CLIENTE').AsString:='0';

  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('VENDEDOR').AsString:='1';

  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('OPERADOR').AsString:=DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString;
  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('N_CAIXA').AsString:=
  DADOSFRENTEf.CONF_PADRAO.FieldByName('CAIXA').AsString;
  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('TURNO').AsString:=
  DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString;
  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('OPERADOR_SUP').AsInteger:=1;
  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('CANCELADO').AsInteger:=0;
  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('ITEM').AsInteger:=item;
  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('CODIGO').AsString:=
    DADOSFRENTEf.PRODUTOS.FieldByName('CODIGO').AsString;
  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('DESCRICAO').AsString:=
    DADOSFRENTEf.PRODUTOS.FieldByName('DESCRICAO').AsString;
  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('BARRAS').AsString:=
    DADOSFRENTEf.PRODUTOS.FieldByName('BARRAS').AsString;
  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('DATA').AsDateTime:=
    DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime;

  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('QTD').AsString:=quantidade;

  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('TOTAL').AsFloat:=
    DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('QTD').AsFloat*PrecodoProduto;

  if PrecodoProduto<DADOSFRENTEf.PRODUTOS.FieldByName('PRECO_CONS').AsFloat then
    DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('DESCONTO').AsFloat:=
      DADOSFRENTEf.PRODUTOS.FieldByName('PRECO_CONS').AsFloat-PrecodoProduto;

  if PrecodoProduto>DADOSFRENTEf.PRODUTOS.FieldByName('PRECO_CONS').AsFloat then
    DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('ACRESCIMO').AsFloat:=
      PrecodoProduto-DADOSFRENTEf.PRODUTOS.FieldByName('PRECO_CONS').AsFloat;

  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECO_CUSTO').AsFloat:=
    DADOSFRENTEf.PRODUTOS.FieldByName('ULTIMO_PRECO').AsFloat;

  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECO').AsFloat:=PrecodoProduto;

  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECOPRO').AsFloat:=
    DADOSFRENTEf.PRODUTOS.FieldByName('PRECO_CONS').AsFloat;

  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECORAT').AsFloat:=
    PrecodoProduto;
  TotalGeral:=TotalGeral+DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('TOTAL').AsFloat;
  Panel37.Caption:=FormatFloat('###,##0.00',TotalGeral);
  DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('HORA').AsDateTime:=time;
  DADOSFRENTEf.ITEVENDAS_ECF2.POST;
  Cod.Clear;
  cxGrid9.Visible:=true;
end;

procedure TFrentredeCaixaf.Fechamento;
begin
  if not DADOSFRENTEf.ITEVENDAS_ECF2.IsEmpty then begin
    ContaVendas:='V';
    SomaCupom;
    FiltroRecebimentoConta:='';
    if DADOSFRENTEf.ITEVENDAS_ECF2.IsEmpty then
      ShowMessage('Sem vendas !!!')
    else begin
      if DADOSFRENTEf.VENDAS_ECF2.FieldByName('ABERTO').AsString='F' then begin
        DADOSFRENTEf.VENDAS_ECF2.Last;
        if DADOSFRENTEf.VENDAS_ECF2.FieldByName('ABERTO').AsString='F' then begin
          CupomNovo;
        end
        else
          DADOSFRENTEf.VENDAS_ECF2.Edit;
        DADOSFRENTEf.VENDAS_ECF2.Post;
        FiltroItensCupom;
        SomaCupom;
        item:=0;
      end
      else begin
        FechaCupom;
      end;
    end;
  end;
end;

procedure TFrentredeCaixaf.FechaCupom;
var AvistaPrazo,DebitoCredito:string;
begin
  TrocoCompra:=0;
  DADOSFRENTEf.CONF_PADRAO.Open;
  with TGERALFRENTEF.Create(Self) do begin
    DADOSFRENTEf.VENDAS_ECF2.Edit;
    Width:=Panel10.Width;
    Height:=Panel10.Height;
    NxNotebook61.ActivePageIndex:=2;
    CodVen.Text:=DADOSFRENTEf.CONF_PADRAO.FieldByName('VENDEDOR').AsString;
    DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsInteger:=1;
    ShowModal;
  end;
  if MeioPagamento='Cancela' then begin

  end
  else begin
    with TGERALFRENTEF.Create(Self) do begin
      FiltroDiversasFormas;
      ValorTotaldaVenda.Value:=TotalGeral;
      ValoraserPago.Value:=TotalGeral;
      ValoarParaTroco:=TotalGeral;
      if DADOSFRENTEf.CONF_PADRAO.FieldByName('ACRESDESCON').AsString='N' then
        NxPanel27.Height:=NxPanel27.Height-NxPanel185.Height;
      Width:=Panel1.Width;
      Height:=Panel1.Height;
      Button31.Visible:=true;
      NxNotebook61.ActivePageIndex:=0;
      ShowModal;
    end;
    if MeioPagamento='Cancela' then begin

    end
    else begin
      TotalParcelamento:=0;
      DADOSFRENTEf.DiversasFormas.First;
      while not DADOSFRENTEf.DiversasFormas.Eof do begin
        if DADOSFRENTEf.DiversasFormas.FieldByName('FORMADEPAGAMENTO').AsString='Conta a Prazo' then begin
          QuantidadedeParcelasdaForma:=DADOSFRENTEf.DiversasFormas.FieldByName('PARCELA').AsInteger;
          TotalParcelamento:=DADOSFRENTEf.DiversasFormas.FieldByName('VALOR').AsFloat;
          MeioPagamento:=DADOSFRENTEf.DiversasFormas.FieldByName('FORMADEPAGAMENTO').AsString;
        end;
        if DADOSFRENTEf.DiversasFormas.FieldByName('VALOR').AsFloat=0 then
          DADOSFRENTEf.DiversasFormas.Delete
        else
          DADOSFRENTEf.DiversasFormas.Next;
      end;
      if MeioPagamento='Cancela' then begin

      end
      else if MeioPagamento='Conta a Prazo' then begin
        if TotalParcelamento>0 then begin
          DebitoCredito:='C';
          AvistaPrazo:='P';
          DuplicatasRecberPagar:='Duplicatas';
          with TGERALFRENTEF.Create(Self) do begin
            Width:=Panel24.Width;
            Height:=Panel24.Height;
            cxCalcEdit1.Visible:=false;
            NxNotebook61.ActivePageIndex:=6;
            TotaldasParecelasReceberPagar:=TotalParcelamento;
            Panel37.Caption:=FormatFloat('###,##0.00',TotalParcelamento);
            ShowModal;
          end;
          if MeioPagamento<>'Cancela' then
            FechamentoVenda(AvistaPrazo,DebitoCredito);
        end;
      end
      else begin
         FechamentoVenda(AvistaPrazo,DebitoCredito);
      end;
    end;
  end;
end;

procedure InformacoesCaixaFrente(dc,ap,parcela:string;Valor:double);
begin
  DADOSFRENTEf.CONF_PADRAO.Open;
  InformacoesCaixa('Venda Frente de Caixa - '+MeioPagamento,'',Portadorx,'','',
    '','','',dc,'V',ap,ENTREGADOR,parcela,DADOSFRENTEf.VENDAS_ECF2.FieldByName(
      'CLIENTE').AsInteger,0,StrToInt(DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString),StrToInt(Vendedorxyz),0,0,DATE,
      TIME,Valor,'');
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

procedure TFrentredeCaixaf.ZeraSoma;
begin
  SomaValorDaVenda:=0;
  NxPanel80.Caption:='Soma';
  NxPanel79.Caption:='';
end;

procedure TFrentredeCaixaf.FechamentoVenda(AvistaPrazo,DebitoCredito:string);
var i:integer;
    DescontoRatiado,AcrescimoRatiado:double;
begin
  ZeraSoma;
  cxGrid9.Visible:=false;
  Panel13.Caption:='Aguarde o Fechamento da Venda   !  !  !';
  Panel13.Visible:=true;
  refresh;
  DescontoRatiado:=ValordadoDesconto/TotaldaVenda;
  AcrescimoRatiado:=ValordadoAcrescimo/TotaldaVenda;
  DADOSFRENTEf.ITEVENDAS_ECF2.First;
  while not DADOSFRENTEf.ITEVENDAS_ECF2.Eof do begin
    DADOSFRENTEf.ITEVENDAS_ECF2.Edit;
    if DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString='' then
      DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('CLIENTE').AsString:='0'
    else
      DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('CLIENTE').AsString:=
    DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString;
    DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('VENDEDOR').AsString:=
    DADOSFRENTEf.VENDAS_ECF2.FieldByName('VENDEDOR').AsString;
    DADOSFRENTEf.ITEVENDAS_ECF2.Post;
    DADOSFRENTEf.ITEVENDAS_ECF2.Next;
  end;
  if (ValordadoDesconto>0) or (ValordadoAcrescimo>0) then begin
    DADOSFRENTEf.ITEVENDAS_ECF2.First;
    while not DADOSFRENTEf.ITEVENDAS_ECF2.Eof do begin
      DADOSFRENTEf.ITEVENDAS_ECF2.Edit;
      if ValordadoDesconto>0 then begin
        DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('DESCONTORAT').AsFloat:=DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECORAT').AsFloat*DescontoRatiado;
        DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECORAT').AsFloat:=
        DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECORAT').AsFloat-
        DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('DESCONTORAT').AsFloat;
      end;
      if ValordadoAcrescimo>0 then begin
        DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('ACRESCIMORAT').AsFloat:=DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECORAT').AsFloat*AcrescimoRatiado;
        DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECORAT').AsFloat:=
        DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECORAT').AsFloat+
        DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('ACRESCIMORAT').AsFloat;
      end;
      DADOSFRENTEf.ITEVENDAS_ECF2.Post;
      DADOSFRENTEf.ITEVENDAS_ECF2.Next;
    end;
  end;
  DADOSFRENTEf.CONF_PADRAO.Open;
  if DADOSFRENTEf.CONF_PADRAO.FieldByName('CONTAS').AsString='2' then begin
    DataFinanceiro.CADERNETA.Close;
    DataFinanceiro.CADERNETA.CachedUpdates:=true;
    DataFinanceiro.CADERNETA.SQL.Clear;
    DataFinanceiro.CADERNETA.SQL.Add('Select * from CADERNETA where CUPOM='+QuotedStr(DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').Value));
    DataFinanceiro.CADERNETA.Open;
    DataFinanceiro.CADERNETA.First;
    DADOSFRENTEf.ITEVENDAS_ECF2.First;
    while not DADOSFRENTEf.ITEVENDAS_ECF2.Eof do begin
      if MeioPagamento='Conta a Prazo' then begin
        // DataFinanceiro.CADERNETA.Open;
        DataFinanceiro.CADERNETA.Append;
        DataFinanceiro.CADERNETA.FieldByName('CUPOM').Value           := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('CUPOM').Value;
        DataFinanceiro.CADERNETA.FieldByName('N_CAIXA').Value         := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('N_CAIXA').Value;
        DataFinanceiro.CADERNETA.FieldByName('DATA').Value            := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('DATA').Value;
        DataFinanceiro.CADERNETA.FieldByName('VENCIMENTO').AsDateTime := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('DATA').AsDateTime+30;
        DataFinanceiro.CADERNETA.FieldByName('HORA').Value            := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('HORA').Value;
        DataFinanceiro.CADERNETA.FieldByName('OPERADOR').Value        := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('OPERADOR').Value;
        DataFinanceiro.CADERNETA.FieldByName('ITEM').Value            := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('ITEM').Value;
        DataFinanceiro.CADERNETA.FieldByName('CODIGO').Value          := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('CODIGO').Value;
        DataFinanceiro.CADERNETA.FieldByName('BARRAS').Value          := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('BARRAS').Value;
        DataFinanceiro.CADERNETA.FieldByName('DESCRICAO').Value       := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('DESCRICAO').Value;
        DataFinanceiro.CADERNETA.FieldByName('QTD').Value             := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('QTD').Value;
        DataFinanceiro.CADERNETA.FieldByName('PRECO').Value           := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECO').Value;
        DataFinanceiro.CADERNETA.FieldByName('TOTAL').Value           := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('TOTAL').Value;
        DataFinanceiro.CADERNETA.FieldByName('CLIENTE').Value         := DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').Value;
        DataFinanceiro.CADERNETA.Post;
        // DataFinanceiro.CADERNETA.Close;
      end;
      DADOSFRENTEf.ITEVENDAS_ECF2.Next;
    end;
    DataFinanceiro.CADERNETA.ApplyUpdates();
    InformacoesCaixaFrente(DebitoCredito,'P',' 1',TotalGeral)
  end;
  if EntrouOleoCarro='S' then begin
    DADOSFRENTEf.ITEOLEOS.Close;
    DADOSFRENTEf.ITEOLEOS.CachedUpdates:=true;
    DADOSFRENTEf.ITEOLEOS.SQL.Clear;
    DADOSFRENTEf.ITEOLEOS.SQL.Add('Select * from ITEOLEOS where CUPOM='+QuotedStr(DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').Value));
    DADOSFRENTEf.ITEOLEOS.Open;
    DADOSFRENTEf.ITEOLEOS.First;
    DADOSFRENTEf.ITEVENDAS_ECF2.First;
    while not DADOSFRENTEf.ITEVENDAS_ECF2.Eof do begin
      DADOSFRENTEf.ITEOLEOS.Append;
      DADOSFRENTEf.ITEOLEOS.FieldByName('CUPOM').Value           := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('CUPOM').Value;
      DADOSFRENTEf.ITEOLEOS.FieldByName('N_CAIXA').Value         := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('N_CAIXA').Value;
      DADOSFRENTEf.ITEOLEOS.FieldByName('DATA').Value            := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('DATA').Value;
      DADOSFRENTEf.ITEOLEOS.FieldByName('VENCIMENTO').AsDateTime := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('DATA').AsDateTime+30;
      DADOSFRENTEf.ITEOLEOS.FieldByName('HORA').Value            := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('HORA').Value;
      DADOSFRENTEf.ITEOLEOS.FieldByName('OPERADOR').Value        := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('OPERADOR').Value;
      DADOSFRENTEf.ITEOLEOS.FieldByName('ITEM').Value            := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('ITEM').Value;
      DADOSFRENTEf.ITEOLEOS.FieldByName('CODIGO').Value          := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('CODIGO').Value;
      DADOSFRENTEf.ITEOLEOS.FieldByName('BARRAS').Value          := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('BARRAS').Value;
      DADOSFRENTEf.ITEOLEOS.FieldByName('DESCRICAO').Value       := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('DESCRICAO').Value;
      DADOSFRENTEf.ITEOLEOS.FieldByName('QTD').Value             := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('QTD').Value;
      DADOSFRENTEf.ITEOLEOS.FieldByName('PRECO').Value           := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECO').Value;
      DADOSFRENTEf.ITEOLEOS.FieldByName('TOTAL').Value           := DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('TOTAL').Value;
      DADOSFRENTEf.ITEOLEOS.FieldByName('CLIENTE').Value         := DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').Value;
      DADOSFRENTEf.ITEOLEOS.Post;
      DADOSFRENTEf.ITEVENDAS_ECF2.Next;
    end;
  end;
  DADOSFRENTEf.CONFIG.Open;
  TabelaEstoque:=DADOSFRENTEf.ITEVENDAS_ECF2;
  if DADOSFRENTEf.CONFIG.FieldByName('CONT_ESTOQUE').AsString='S' then begin
    DADOSFRENTEf.ITEVENDAS_ECF2.First;
    while not DADOSFRENTEf.ITEVENDAS_ECF2.Eof do begin
      BaixaEntraEstoque( 'Baixa' );
      DADOSFRENTEf.ITEVENDAS_ECF2.Next;
    end;
  end;
  DADOSMOVIMENTOF.ESTOQUEEntrada.Close;
  InformacoesVenda;
  DADOSFRENTEf.VENDAS_ECF2.FieldByName('ABERTO').AsString:='F';
  DADOSFRENTEf.VENDAS_ECF2.Post;
  Panel37.Caption:=FormatFloat('###,##0.00',TotalGeral);
  Leitor;
  if DADOS_CADASTROSf.OLEO.CachedUpdates=true then
    DADOS_CADASTROSf.OLEO.ApplyUpdates();
  // DADOSFRENTEf.DADOCLIE.ApplyUpdates();
  DADOSFRENTEf.DiversasFormas.First;
  while not DADOSFRENTEf.DiversasFormas.Eof do begin
    // InformacoesCaixaFrenteFormas('C',
    InformacoesCaixaFrenteFormasVendas('C',
    DADOSFRENTEf.DiversasFormas.FieldByName('AVISTAPRAZO').AsString,'',
    DADOSFRENTEf.DiversasFormas.FieldByName('FORMADEPAGAMENTO').AsString,
    DADOSFRENTEf.DADOCLIE.FieldByName('NOME').AsString,
    DADOSFRENTEf.DiversasFormas.FieldByName('VALOR').AsFloat);
    DADOSFRENTEf.DiversasFormas.Next;
  end;
  if DADOSFRENTEf.DiversasFormas.CachedUpdates=true then
    DADOSFRENTEf.DiversasFormas.ApplyUpdates();
  if EntrouOleoCarro='S' then
    DADOSFRENTEf.ITEOLEOS.ApplyUpdates();
  TrocoTotalDaCompra;
  TotalGeral:=0; item:=0; MeioPagamento:='';
  Panel13.Visible:=false;
  cxGrid9.Visible:=true;
  DADOSFRENTEf.DiversasFormas.Close;
  DADOSFRENTEf.DiversasFormas.CachedUpdates:=false;
  DADOSFRENTEf.DiversasFormas.Close;
  DADOS_CADASTROSf.OLEO.Close;
  DADOS_CADASTROSf.OLEO.CachedUpdates:=false;
  DADOSFRENTEf.DADOCLIEx.Refresh;
  CodigoClientePedidoOS:=0;
  OBSERVACAOClientePedidoOS:='';
  DataOBJETOSx.PRODSERV.Close;
  DataOBJETOSx.ORDENS.Close;
  PerguntaImpressao;
  FechaTabeladaVenda;
  EntrouOleoCarro:='';
  Vendedorxyz:='';
  refresh;
  DescricaoItem;
end;

procedure TFrentredeCaixaf.PerguntaImpressao;
begin
  AbreConf_Padrao;
  if DADOSFRENTEf.CONF_PADRAO.FieldByName('IMPRIME').AsString='S' then begin
    if Application.Messagebox('Deseja imprimir notinha ?','Confirmação',MB_YESNO+MB_ICONQUESTION)=IDYES then begin
      // if DADOSFRENTEf.CONF_PADRAO.FieldByName('TIPODEMPRESSAO').AsString='GB' then
      if DADOSFRENTEf.CONF_PADRAO.FieldByName('TIPODEMPRESSAO').AsString='GB' then
        ImprimeVendas('S');
      // if DADOSFRENTEf.CONF_PADRAO.FieldByName('TIPODEMPRESSAO').AsString='MI' then
      if (DADOSFRENTEf.CONF_PADRAO.FieldByName('TIPODEMPRESSAO').AsString='MI') or (DADOSFRENTEf.CONF_PADRAO.FieldByName('TIPODEMPRESSAO').AsString='RB') then
        ImprOrcamento;
    end;
  end;
end;

procedure TFrentredeCaixaf.ImprimeVendas(Grafico:string);
var TotalPago,TotalVendas,TotalTroco:double;
    linha:string;
begin
  MENSPROCF.Panel1.Caption:='AGUARDE UM MOMENTO - GERANDO O RELATÓRIO !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;
  // NomeDoArquivo:=NxPanel30.Caption;
  DADOSFRENTEf.EMITENTE.OPEN;
  DADOSFRENTEf.ITEVENDAS_ECF2.First;
  DADOSFRENTEf.CONF_PADRAO.Open;
  Queere2:=DADOSFRENTEf.DADOCLIE;
  FiltroQuery('DADOCLIE','CUPOM',DADOSFRENTEf.VENDAS_ECF2.FieldByName(
    'CUPOM').AsString);
  linha:='------------------------------------------------------';
  with TVISUALIZACAOF.Create(Self) do begin
    TextListBox1.Clear;
    // DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString;
    TextListBox1.Items.Add(DireiraEsquera(0,linha , 6, 'D'));
    TextListBox1.Items.Add('DATA: '+
      DADOSFRENTEf.VENDAS_ECF2.FieldByName('DATA').AsString+' HORA: '+
      DADOSFRENTEf.VENDAS_ECF2.FieldByName('HORA').AsString+' CAIXA: '+
      DADOSFRENTEf.VENDAS_ECF2.FieldByName('N_CAIXA').AsString);
    TextListBox1.Items.Add('       Cupom não Fiscal: '+
      DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString);
    TextListBox1.Items.Add(DireiraEsquera(0,linha , 6, 'D'));
    TextListBox1.Items.Add(
    DireiraEsquera(0,'Empresa.: '+DADOSFRENTEf.EMITENTE.FieldByName('NOME').AsString, 50, 'E'));
    TextListBox1.Items.Add(
    DireiraEsquera(0,'ENDEREÇO: '+DADOSFRENTEf.EMITENTE.FieldByName('ENDERECO').AsString+', '+DADOSFRENTEf.EMITENTE.FieldByName('NUMERO').AsString, 100, 'E'));
    TextListBox1.Items.Add('Bairro.: '+
      DADOSFRENTEf.EMITENTE.FieldByName('BAIRRO').AsString
      +' - Cep.: '+
      DADOSFRENTEf.EMITENTE.FieldByName('CEP').AsString);
    TextListBox1.Items.Add('Cidade.: '+
      DADOSFRENTEf.EMITENTE.FieldByName('Cidade').AsString+' - UF.: '+
      DADOSFRENTEf.EMITENTE.FieldByName('UF').AsString+' - Fone: '+
      DADOSFRENTEf.EMITENTE.FieldByName('TELEFONE').AsString);
    TextListBox1.Items.Add(DireiraEsquera(0,linha , 6, 'D'));
    if Modalidade='Pedidos' then begin
      DADOSFRENTEf.FORNECEDORES.Open;
      DADOSFRENTEf.FORNECEDORES.Locate('CODIGO',
        DADOSFRENTEf.VENDAS_ECF2.FieldByName('FORNECEDOR').AsString,[]);
      TextListBox1.Items.Add(
      DireiraEsquera(0,'Fornecedor.: '+DADOSFRENTEf.FORNECEDORES.FieldByName(
        'CODIGO').AsString+' '+DADOSFRENTEf.FORNECEDORES.FieldByName('NOME').AsString,50, 'E'));
    end
    else begin
      if DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString<>'0' then begin
        DADOSFRENTEf.CLIENTES.Open;
        DADOSFRENTEf.CLIENTES.Locate('CODIGO',DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString,[]);
        TextListBox1.Items.Add(
        DireiraEsquera(0,'Cliente Código.: '+DADOSFRENTEf.CLIENTES.FieldByName('CODIGO').AsString+' - '+
          DADOSFRENTEf.DADOCLIE.FieldByName('NOME').AsString,50, 'E'));

        TextListBox1.Items.Add('Endereço.: '+
          DADOSFRENTEf.DADOCLIE.FieldByName('ENDERECO').AsString+', '+
          DADOSFRENTEf.DADOCLIE.FieldByName('NUMERO').AsString);
        TextListBox1.Items.Add('Bairro.: '+
          DADOSFRENTEf.DADOCLIE.FieldByName('BAIRRO').AsString
          +' - Cep.: '+
          DADOSFRENTEf.DADOCLIE.FieldByName('CEP').AsString);
        TextListBox1.Items.Add('Cidade.: '+
          DADOSFRENTEf.DADOCLIE.FieldByName('Cidade').AsString+' - UF.: '+
          DADOSFRENTEf.DADOCLIE.FieldByName('UF').AsString+' - Fone: '+
          DADOSFRENTEf.DADOCLIE.FieldByName('TELEFONE').AsString);

        if DADOSFRENTEf.DADOCLIE.FieldByName('CPF').AsString<>'' then
          TextListBox1.Items.Add('Documento.: '+
            formatMasktext('###.###.###-##;0; ',DADOSFRENTEf.DADOCLIE.FieldByName('CPF').AsString));

        if DADOSFRENTEf.DADOCLIE.FieldByName('CNPJ').AsString<>'' then
          TextListBox1.Items.Add('Documento.: '+
            formatMasktext('##.###.###.####-##;0; ',DADOSFRENTEf.DADOCLIE.FieldByName('CNPJ').AsString));

      if (MeioPagamento='Conta a Prazo') or (MeioPagamento='Duplicatas') then begin
        TextListBox1.Items.Add('');
        TextListBox1.Items.Add('');
        TextListBox1.Items.Add('    ..............................................    ');
        TextListBox1.Items.Add('                       Assinatura                     ');
      end;

      end;
    end;
    if DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString<>'0' then
      TextListBox1.Items.Add(DireiraEsquera(0,linha , 6, 'D'));
    TextListBox1.Items.Add(
    DireiraEsquera(0,'It.Cód. Descrição       Quantidade     Preço     Total', 6, 'D'));
    TextListBox1.Items.Add(DireiraEsquera(0,linha , 6, 'D'));
    while not DADOSFRENTEf.ITEVENDAS_ECF2.Eof do begin
      TextListBox1.Items.Add(
      DireiraEsquera(0,COPY(DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName(
        'ITEM').AsString,1,2), 2, 'D')+' '+
      DireiraEsquera(0,COPY(DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName(
        'CODIGO').AsString,1,3), 4, 'D')+' '+
      DireiraEsquera(0,COPY(DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName(
        'DESCRICAO').AsString,1,16), 16, 'E')+' '+
      DireiraEsquera(0, FormatFloat('###,##0.00',
        DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('QTD').AsFloat), 9, 'D')+' '+
      DireiraEsquera(0, FormatFloat('###,##0.00',
        DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECO').AsFloat), 9, 'D')+' '+
      DireiraEsquera(0, FormatFloat('###,##0.00',
        DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('TOTAL').AsFloat), 9, 'D'));
      DADOSFRENTEf.ITEVENDAS_ECF2.Next;
    end;
    if DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_VENDA').AsFloat=0 then
      TotalVendas:=TotalGeral
    else
      TotalVendas:=DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_VENDA').AsFloat;

    if DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_ISS').AsFloat<0 then
      TotalTroco:=0
    else
      TotalTroco:=DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_ISS').AsFloat;
    TotalPago:=DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_ISS_D').AsFloat;
    TextListBox1.Items.Add(DireiraEsquera(0,linha , 6, 'D'));
    TextListBox1.Items.Add(
      DireiraEsquera(0,'Total Pago................................: ', 6, 'D')+
      DireiraEsquera(0, FormatFloat('###,##0.00',TotalPago), 10, 'D'));
    TextListBox1.Items.Add(
      DireiraEsquera(0,'Total da Compra...........................: ', 6, 'D')+
      DireiraEsquera(0, FormatFloat('###,##0.00',TotalVendas), 10, 'D'));
    if TotalTroco>0 then begin
      TextListBox1.Items.Add(
        DireiraEsquera(0,'Troco ....................................: ', 6, 'D')+
        DireiraEsquera(0, FormatFloat('###,##0.00',TotalTroco), 10, 'D'));
    end;
    TextListBox1.Items.Add(DireiraEsquera(0,linha , 6, 'D'));


    Show;
    TamanhoFonte:=99999;
    Button9.Click;
    close;
  end;
  MENSPROCF.Close;
  TamanhoFonte:=0;
end;

procedure TFrentredeCaixaf.TrocoTotalDaCompra;
begin
  if TrocoCompra>0 then begin
    {
    NxPanel72.Visible:=false;
    NxPanel11.Visible:=false;
    NxPanel13.Visible:=true;
    NxPanel11.Visible:=true;
    NxPanel17.Visible:=true;
    NxPanel72.Visible:=true;
    NxPanel14.Caption:=FormatFloat('###,##0.00',TrocoCompra);
    NxPanel10.Caption:=FormatFloat('###,##0.00',TotalGeral);
    NxPanel64.Caption:=FormatFloat('###,##0.00',ValorPago);
    }
  end;
end;


procedure TFrentredeCaixaf.Leitor;
begin
  // NxPanel13.Visible:=false;
  // NxPanel17.Visible:=false;
  // NxPanel1.Visible:=true;
  DADOSFRENTEf.ITEVENDAS_ECF2.Last;
  FocaVendas;
end;


procedure InformacoesVenda;
begin
  DADOSFRENTEf.VENDAS_ECF2.Edit;
  // DADOSFRENTEf.VENDAS_ECF2.FieldByName('DATA').AsDateTime:=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').asdatetime;
  DADOSFRENTEf.VENDAS_ECF2.FieldByName('HORA').AsString:=TimeToStr(Time());
  DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_ISS_D').AsFloat:=TotalGeralPago;
  DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_VENDA').AsFloat:=TotaldaVenda;
  DADOSFRENTEf.VENDAS_ECF2.FieldByName('DESCONTO').AsFloat:=ValordadoDesconto;
  DADOSFRENTEf.VENDAS_ECF2.FieldByName('ACRESCIMO').AsFloat:=ValordadoAcrescimo;
  DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_TROCO').AsFloat:=ValordoTroco;;
  DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_TOTALPAGO').AsFloat:=ValorPago;
  DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_PRODUTOS').AsFloat:=ValordasFormas;
  DADOSFRENTEf.VENDAS_ECF2.FieldByName('TAXAENTREGA').AsFloat:=ValordaTaxadeEntrega;
  DADOSFRENTEf.VENDAS_ECF2.FieldByName('FRETE').AsFloat:=ValordoFrete;
  DADOSFRENTEf.VENDAS_ECF2.FieldByName('OPERADOR').AsString:=DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString;
end;

procedure TFrentredeCaixaf.SomaCupom;
begin
  {
  cxGrid9.Visible:=false;
  DADOSFRENTEf.ITEVENDAS_ECF2.Open;
  DADOSFRENTEf.ITEVENDAS_ECF2.First;
  item:=0; TotalGeral:=0;
  while not DADOSFRENTEf.ITEVENDAS_ECF2.Eof do begin
     TotalGeral:=TotalGeral+DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('TOTAL').AsFloat;
     item:=item+1;
     DADOSFRENTEf.ITEVENDAS_ECF2.Next
  end;
  }
  // FiltroItensCupomFuncaoSoma;
  FiltroItensCupomFuncaoSoma;
  TotalGeral:=DADOSFRENTEf.ITEVENDAS_ECF2SOMA.FieldByName('TotalGeralSql').AsFloat;
  Panel37.Caption:=FormatFloat('###,##0.00',TotalGeral);
  FocaVendas;
  // cxGrid9.Visible:=true;
end;

procedure TFrentredeCaixaf.AbreGeral;
begin
  UltimoCupom;
  AbreCupom;
  SomaCupom;
  OperadorCaixa;
end;

procedure TFrentredeCaixaf.AbreCupom;
begin
  FiltroItensCupom;
end;

procedure TFrentredeCaixaf.UltimoCupom;
begin
  FiltroVendasSql;  // ver aqui
  if DADOSFRENTEf.VENDAS_ECF2.IsEmpty then
    CupomNovo
  else
    FiltroArquivodeVendas;
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

procedure TFrentredeCaixaf.FechaCaixa;
begin
  ShowMessage(' -------> Atenção <------ '+#13+#13+'Antes de Fechar o Caixa '+#13+#13+'Certifique-se de não ter nenhum Orçamento Aberto '+#13+#13+'Nos outros Caixas ( Pontos de Venda ) da Rede !!!');

  DADOSFRENTEf.CONF_PADRAO.Refresh;
  if not DADOSFRENTEf.ITEVENDAS_ECF2.IsEmpty then begin
    ShowMessage('Feche a venda Primeiro !!!');
  end
  else begin
    {
    if NxPanel30.Caption<>'Vendas' then begin
      Modalidade:='Vendas';
      TiposCaixa;
      NxPanel30.Caption:=Modalidade;
    end;
    }
    with TGERALFRENTEF.Create(Self) do begin
      Width:=Panel63.Width;
      Height:=Panel63.Height;
      NxNotebook61.ActivePageIndex:=4;
      ShowModal;
    end;
    InformacoesFrenteCaixa;
  end;
  // FiltroItensCupom;
  DADOSFRENTEf.VENDAS_ECF2.Close;
  InformacoesFrenteCaixa;
  OperadorCaixa;
end;

procedure TFrentredeCaixaf.OperadorCaixa;
begin
  // DADOS_CADASTROSf.OPERADOR_caixa.Open;
  InformacoesFrenteCaixa;
  DADOS_CADASTROSf.OPERADOR_caixa.Close;
  DADOS_CADASTROSf.OPERADOR_caixa.SQL.Clear;
  DADOS_CADASTROSf.OPERADOR_caixa.SQL.Add('Select * from OPERADOR where CODIGO='+QuotedStr(Operador));
  DADOS_CADASTROSf.OPERADOR_caixa.Open;
  // DADOS_CADASTROSf.OPERADOR_caixa.Locate('CODIGO',Operador,[]);
  Panel51.Caption:='Operador(a).: '+DADOS_CADASTROSf.OPERADOR_caixa.FieldByName('NOME').AsString;
end;

procedure TFrentredeCaixaf.InformacoesFrenteCaixa;
begin
  DADOSFRENTEf.CONF_PADRAO.Open;
  if not DADOSFRENTEf.CONF_PADRAO.IsEmpty then begin
    Panel52.Caption:='Caixa.:  '+DADOSFRENTEf.CONF_PADRAO.FieldByName('CAIXA').AsString+'  '
       +' Dia.:  '+DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsString+'  '
       +' Turno.:  '+DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString+' ';
      Operador:=DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString;
    if Operador='' then
      Operador:='1';
    if ParamStr(4)<>'' then
      Operador:=ParamStr(4);
  end;
end;

procedure TFrentredeCaixaF.Panel10Click(Sender: TObject);
begin
  inherited;
  FinalizaCaixa;
end;

procedure TFrentredeCaixaF.Panel15Click(Sender: TObject);
begin
  inherited;
  VendaConsumidor;
end;

procedure TFrentredeCaixaF.Panel16Click(Sender: TObject);
begin
  inherited;
  ApagaVenda;
end;

procedure TFrentredeCaixaF.Panel17Click(Sender: TObject);
begin
  inherited;
  MudaPreco;
end;

procedure TFrentredeCaixaF.Panel18Click(Sender: TObject);
begin
  inherited;
  Fechamento;
end;

procedure TFrentredeCaixaf.VendaConsumidor;
begin
  if not DADOSFRENTEf.ITEVENDAS_ECF2.IsEmpty then begin
    ContaVendas:='V';
    FiltraQuery(DADOSFRENTEf.CADASTRO_CLIENTES,'CLIENTES','0');
    SomaCupom;
    FiltroRecebimentoConta:='';
    if DADOSFRENTEf.ITEVENDAS_ECF2.IsEmpty then
      ShowMessage('Sem vendas !!!')
    else begin
      MeioPagamento:='';
      with TGERALFRENTEF.Create(Self) do begin
        FiltroDiversasFormas;
        ValorTotaldaVenda.Value:=TotalGeral;
        ValoraserPago.Value:=TotalGeral;
        ValoarParaTroco:=TotalGeral;

        NxPanel82.Caption:=NxPanel82.Caption+' - Venda Consumidor';
        cxButton51.Visible:=false;
        cxButton50.Visible:=false;
        cxButton52.Visible:=false;
        cxButton69.Visible:=false;
        NxPanel81.Visible:=false;
        cxButton27.Visible:=false;
        Button30.Visible:=false;
        Image2.Visible:=false;
        if DADOSFRENTEf.CONF_PADRAO.FieldByName('ACRESDESCON').AsString='N' then
          NxPanel27.Height:=NxPanel27.Height-NxPanel185.Height;

        Width:=Panel1.Width;
        Height:=Panel1.Height;
        NxNotebook61.ActivePageIndex:=0;
        ShowModal;
      end;

      if MeioPagamento='Cancela' then begin

      end
      else begin
        DADOSFRENTEf.CONF_PADRAO.Open;
        Vendedorxyz:=DADOSFRENTEf.CONF_PADRAO.FieldByName('VENDEDOR').AsString;
        if MeioPagamento<>'Cancela' then begin
          // PerguntaImpressao;
          FechamentoVenda('A','C');
        end;
      end;
    end;
  end;
end;

procedure TFrentredeCaixaf.FiltroDiversasFormas;
begin
  DADOSFRENTEf.DiversasFormas.Close;
  DADOSFRENTEf.DiversasFormas.CachedUpdates:=true;
  DADOSFRENTEf.DiversasFormas.SQL.Clear;
  DADOSFRENTEf.DiversasFormas.SQL.Add('Select * from DiversasFormas where CUPOM='+QuotedStr(DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString));
  DADOSFRENTEf.DiversasFormas.Open;
end;

procedure TFrentredeCaixaF.Panel19Click(Sender: TObject);
begin
  inherited;
  VendasAnterioresf8;
end;

procedure TFrentredeCaixaF.Panel20Click(Sender: TObject);
begin
  inherited;
  ImprimeVenda1;
end;

procedure TFrentredeCaixaF.Panel21Click(Sender: TObject);
begin
  inherited;
  // DADOSFRENTEf.VENDAS_ECF2.Open;
  Consulta2;
end;

procedure TFrentredeCaixaF.Panel22Click(Sender: TObject);
begin
  inherited;
  AbreContasaPagarSenha;
end;

procedure TFrentredeCaixaF.AbreContasaPagarSenha;
begin
  DADOSFRENTEf.CONF_PADRAO.Refresh;
  TelaSenha;
  if senha='MANAGER' then begin
    AbreContasaPagar;
  end;
end;

procedure TFrentredeCaixaF.Panel23Click(Sender: TObject);
begin
  inherited;
  ControledeCartoes;
end;

procedure TFrentredeCaixaF.Panel24Click(Sender: TObject);
begin
  inherited;
  ContasReceber;
end;

procedure TFrentredeCaixaF.Panel25Click(Sender: TObject);
begin
  inherited;
  ImportaOS;
end;

procedure TFrentredeCaixaF.Panel26Click(Sender: TObject);
begin
  inherited;
  FechaCaixa;
end;

procedure TFrentredeCaixaF.Panel27Click(Sender: TObject);
begin
  inherited;
  ImportaPedido;
end;

procedure TFrentredeCaixaF.Panel41Click(Sender: TObject);
begin
  inherited;
  BobinaouMatricial;
end;

procedure TFrentredeCaixaF.Panel42Click(Sender: TObject);
begin
  inherited;
  EscolheaImpressora;
  Panel42.Caption:='Ctrl<I> Escolher Impressora - '+ImpressoraEscolhida;
end;

procedure TFrentredeCaixaF.Panel43Click(Sender: TObject);
begin
  inherited;
  GeradordeImpressao;
end;

procedure TFrentredeCaixaF.Panel45Click(Sender: TObject);
begin
  inherited;
  // Panel45.Caption:=Panel45.Caption;
  FiltroItensCupomFuncaoSoma;
  Panel45.Caption:=DADOSFRENTEf.ITEVENDAS_ECF2SOMA.FieldByName('TotalGeralSql').AsString;
end;

procedure TFrentredeCaixaF.Panel49Click(Sender: TObject);
begin
  inherited;
  ApagaItem;
end;

procedure TFrentredeCaixaF.Panel51Click(Sender: TObject);
begin
  inherited;
  ConsultaUsuario;
  OperadorCaixa;
end;

procedure TFrentredeCaixaF.Panel6Click(Sender: TObject);
begin
  inherited;
  Suprimento;
end;

procedure TFrentredeCaixaF.Panel8Click(Sender: TObject);
begin
  inherited;
  Sangria;
end;

procedure TFrentredeCaixaF.Panel9Click(Sender: TObject);
begin
  inherited;
  VeiculosdoCliente;
end;

procedure TFrentredeCaixaF.VeiculosdoCliente;
begin
  with TGERAL3F.Create(Self) do begin
    Width:=Panel16.Width;
    Height:=Panel16.Height;
    NxNotebook61.ActivePageIndex:=17;
    ShowModal;
  end;
end;

procedure TFrentredeCaixaf.ConsultaUsuario;
begin
  ConsultaOperadores;
  if CodigoConsulta<>'' then begin
    Operador:=CodigoConsulta;
    OperadorCaixa;
    DADOSFRENTEf.CONF_PADRAO.Edit;
    DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString:=CodigoConsulta;
    DADOSFRENTEf.CONF_PADRAO.Post;
  end;
  FiltroCaixa(DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime,
  DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString);
  DADOSFRENTEf.CAIXA.First;
  while not DADOSFRENTEf.CAIXA.Eof do begin
    DADOSFRENTEf.CAIXA.Edit;
    DADOSFRENTEf.CAIXA.FieldByName('OPERADOR').AsString:=Operador;
    DADOSFRENTEf.CAIXA.Post;
    DADOSFRENTEf.CAIXA.Next;
  end;
end;

procedure TFrentredeCaixaF.Sangria;
begin
  DADOSFRENTEf.EMITENTE.Open;
  with TGERALFRENTEF.Create(Self) do begin
    ComboEdit3x.Text:=DADOSFRENTEf.EMITENTE.FieldByName(
      'NOME').AsString;
    Edit2.Text:=DADOSFRENTEf.EMITENTE.FieldByName(
      'ENDERECO').AsString+', '+DADOSFRENTEf.EMITENTE.FieldByName(
      'NUMERO').AsString;
    Width:=Panel119.Width;
    Height:=Panel119.Height;
    NxNotebook61.ActivePageIndex:=7;
    ShowModal;
  end;
end;

procedure TFrentredeCaixaF.Suprimento;
begin
  DADOSFRENTEf.EMITENTE.Open;
  with TGERALFRENTEF.Create(Self) do begin
    ComboEdit4x.Text:=DADOSFRENTEf.EMITENTE.FieldByName(
      'NOME').AsString;

    Edit4.Text:=DADOSFRENTEf.EMITENTE.FieldByName(
      'ENDERECO').AsString+', '+DADOSFRENTEf.EMITENTE.FieldByName(
      'NUMERO').AsString;

    if DADOSFRENTEf.EMITENTE.FieldByName('CNPJ').AsString<>'' then
       Edit3.Text:=DADOSFRENTEf.EMITENTE.FieldByName('CNPJ').AsString;

    Panel35.Caption:='Suprimento';
    Width:=Panel119.Width;
    Height:=Panel119.Height;
    NxNotebook61.ActivePageIndex:=7;
    ShowModal;
  end;
end;

procedure TFrentredeCaixaf.ContasReceber;
begin
  DADOSFRENTEf.CONF_PADRAO.Refresh;
  DADOSFRENTEf.CONF_PADRAO.Open;
  if DADOSFRENTEf.CONF_PADRAO.FieldByName('CONTAS').AsString='2' then begin
    {
    with TCONTASRECPAGF.Create(Self) do begin
      Width:=NxPanel40.Width;
      Height:=NxPanel40.Height;
      NxPanel46.Caption:='Contas a Receber (Caderneta)';
      NxNotebook1.ActivePageIndex:=9;
      ShowModal;
    end;
    }
  end
  else begin
    with TCONTASRECPAGF.Create(Self) do begin
      Width:=Panel2.Width;
      Height:=Panel2.Height;
      Panel7.Caption:='Contas a Receber';
      NxNotebook61.ActivePageIndex:=0;
      ShowModal;
    end;
  end;
end;

procedure TFrentredeCaixaF.VendasAnterioresf8;
begin
  DADOSFRENTEf.CONF_PADRAO.Refresh;
  if not DADOSFRENTEf.ITEVENDAS_ECF2.IsEmpty then begin
    ShowMessage('Feche a Venda Primeiro Para entar nessa Opção !!!');
  end
  else begin
    DataFinanceiro.RECEBER.Close;
    VendaAnterior;
    DADOSFRENTEf.VENDAS_ECF2.Last;
    FiltroItensCupomFuncao;
    FechaTabeladaVenda;
    if RetornaVendas='S' then begin
      cxGrid9.Visible:=false;
      Panel13.Caption:='Aguarde o Retorno dos Itens da Venda   !  !  !';
      Panel13.Visible:=true;
      refresh;
      // DADOSFRENTEf.CONF_PADRAO.Open;
      FiltroVendasSql;
      {
      DADOSFRENTEf.VENDAS_ECF2.ParamByName('_dataini').asdatetime :=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').asdatetime;
      DADOSFRENTEf.VENDAS_ECF2.Open;
      }
      DADOSFRENTEf.VENDAS_ECF2.Last;
      CupomNovo;
      OrigemDestinoUnidacChaveCampo(DADOSFRENTEf.ITEVENDAS_ECF2_Rel, DADOSFRENTEf.ITEVENDAS_ECF2,'CUPOM');
      // NumerItem:=DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('ITEM').AsString;
      DADOSFRENTEf.ITEVENDAS_ECF2.Last;
      item:=DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('ITEM').AsInteger;
      AbreGeral;
      InformacoesFrenteCaixa;
      Panel13.Visible:=false;
      refresh;
      cxGrid9.Visible:=true;
    end;
    RetornaVendas:='';
  end;
end;

procedure FechaTabeladaVenda;
begin
  DADOSFRENTEf.VENDAS_ECF2.Close;
  DADOSFRENTEf.ITEVENDAS_ECF2.Close;
  DataFinanceiro.RECEBER.Close;
  DADOSFRENTEf.DiversasFormas.Close;
  DADOSFRENTEf.DADOCLIE.Close;
end;

procedure TFrentredeCaixaf.VendaAnterior;
var ContaRegistros:integer;
begin
  FiltroArquivodeVendas;
  {
  NxPanel17.Visible:=false;
  NxPanel13.Visible:=false;
  }
  if not (DADOSFRENTEf.ITEVENDAS_ECF2.IsEmpty) and (
    DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_VENDA').AsFloat=0) then begin
    ShowMessage('Feche a Venda Primeiro !!!');
  end
  else begin
    DADOSFRENTEf.VENDAS_ECF2.First;
    while not DADOSFRENTEf.VENDAS_ECF2.Eof do begin
      ContaRegistros:=ContaRegistros+1;
      DADOSFRENTEf.VENDAS_ECF2.Next;
      if ContaRegistros=2 then
        break;
    end;

    if ContaRegistros=1 then begin

      if Modalidade='Vendas' then
        ShowMessage('Não Existe Vendas Anteriores !!!');
      {
      end
      else if Modalidade='Orçamentos' then begin
        ShowMessage('Não Existe Orçamentos Anteriores !!!');
      end
      else if Modalidade='Pedidos' then begin
        ShowMessage('Não Existe Pedidos Anteriores !!!');
      end;
      }
      DADOSFRENTEf.VENDAS_ECF2.Edit;
    end
    else begin
      DADOSFRENTEf.VENDAS_ECF2.Last;
      VendasAnteriores;
    end;
  end;
end;

procedure TFrentredeCaixaf.VendasAnteriores;
begin
  with TGeralf.Create(Self) do begin
    Width:=Panel6.Width-20;
    Height:=Panel6.Height;
    cxGrid9.Visible:=true;
    NxNotebook61.ActivePageIndex:=0;
    ShowModal;
  end;
  FiltroItensCupom;
  // SomaCupom;
  DADOSFRENTEf.VENDAS_ECF2.Edit;
end;

procedure TFrentredeCaixaf.FiltroItensCupom;
begin
  FiltroItensCupomFuncao;
  Panel53.Caption:='Lançamento: '+DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString;
end;


procedure FiltroArquivodeVendas;
begin
  FiltroVendasSql;
  {
  DADOSFRENTEf.VENDAS_ECF2.ParamByName('_dataini').asdatetime :=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').asdatetime;
  DADOSFRENTEf.VENDAS_ECF2.Open;
  }
  DADOSFRENTEf.VENDAS_ECF2.Last;
  DADOSFRENTEf.VENDAS_ECF2.Edit;
end;

procedure FiltroVendasSql;
begin
  DADOSFRENTEf.CONF_PADRAO.Open;
  DADOSFRENTEf.VENDAS_ECF2.Close;
  DADOSFRENTEf.VENDAS_ECF2.SQL.Clear;
  if COPY(ParamStr(1),6,2)='' then
    DADOSFRENTEf.VENDAS_ECF2.SQL.Add('SELECT * FROM VENDAS_ECF2 WHERE  '+
    'TERMINAL='+'03'+
    'and DATA= :_dataini order by CUPOM')
  else
    DADOSFRENTEf.VENDAS_ECF2.SQL.Add('SELECT * FROM VENDAS_ECF2 WHERE '+
    'TERMINAL='+COPY(ParamStr(1),6,2)+
    'and DATA= :_dataini order by CUPOM');
  DADOSFRENTEf.VENDAS_ECF2.ParamByName('_dataini').asdatetime :=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').asdatetime;
  DADOSFRENTEf.VENDAS_ECF2.Open;
end;

procedure FiltraVendaAnterior(CupomFilstro:string);
begin

  DADOSFRENTEf.VENDAS_ECF2_CONSULTA.Close;
  DADOSFRENTEf.VENDAS_ECF2_CONSULTA.SQL.Clear;
  DADOSFRENTEf.VENDAS_ECF2_CONSULTA.SQL.Add('SELECT * FROM VENDAS_ECF2 WHERE CUPOM='+Quotedstr(StrZero(StrToInt(CupomFilstro),9,0)));
  DADOSFRENTEf.VENDAS_ECF2_CONSULTA.Open;

  if DADOSFRENTEf.VENDAS_ECF2_CONSULTA.IsEmpty then
    ShowMessage('Venda Inexistente !!!')
  else begin
    DADOSFRENTEf.VENDAS_ECF2.Close;
    DADOSFRENTEf.VENDAS_ECF2.SQL.Clear;
    DADOSFRENTEf.VENDAS_ECF2.SQL.Add('SELECT * FROM VENDAS_ECF2 WHERE CUPOM='+Quotedstr(StrZero(StrToInt(CupomFilstro),9,0)));
    DADOSFRENTEf.VENDAS_ECF2.Open;
  end;
end;

end.

DADOSFRENTEf.DiversasFormas.FieldByName('CODIGO')
