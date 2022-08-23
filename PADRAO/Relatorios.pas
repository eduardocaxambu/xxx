unit Relatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, mestre2, NxNotebook6, Vcl.ExtCtrls,
  NxControls6, NxCollection6, Vcl.StdCtrls, Data.DB, MemDS, DBAccess, Uni,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxSkinsCore, dxSkinsDefaultPainters,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, RxCalc, cxStyles, dxPSCore, dxPScxCommon, cxClasses,
  Vcl.Mask, RxToolEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges, cxDBData, RxCurrEdit, Vcl.Buttons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, dxPScxExtComCtrlsLnk;

type
  TRelatoriosf = class(Tmestre2_FRM)
    NxNotebook61: TNxNotebook6;
    NxNotebookSheet61: TNxNotebookSheet6;
    NxNotebookSheet62: TNxNotebookSheet6;
    Produtosx: TNxNotebookSheet6;
    Panel1: TPanel;
    Button13: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    ChecEntradasSaidas: TCheckBox;
    ZeradasNegativas: TCheckBox;
    Button4: TButton;
    CheckBox2: TCheckBox;
    Button5: TButton;
    Button6: TButton;
    Button12: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    CheckBox5: TCheckBox;
    Button23: TButton;
    CheckBox6: TCheckBox;
    Button24: TButton;
    UniQuery1: TUniQuery;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    RxCalculator1: TRxCalculator;
    Veiculos: TNxNotebookSheet6;
    EntradasSaidasxy: TNxNotebookSheet6;
    NxNotebook62: TNxNotebook6;
    NxNotebookSheet65: TNxNotebookSheet6;
    NxNotebookSheet66: TNxNotebookSheet6;
    Panel3: TPanel;
    Panel4: TPanel;
    Label9: TLabel;
    Edit11: TComboEdit;
    Panel2: TPanel;
    Button1: TButton;
    Entradas: TNxNotebookSheet6;
    Balanço: TNxNotebookSheet6;
    CurvaABCX: TNxNotebookSheet6;
    RelatorioEntradas: TNxNotebookSheet6;
    Panel7: TPanel;
    Panel10: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    datiniE: TDateEdit;
    DatFime: TDateEdit;
    MaskEdit1: TMaskEdit;
    Button22: TButton;
    BitBtn2: TBitBtn;
    Panel8: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Button7: TButton;
    Panel9: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    datini: TDateEdit;
    DatFim: TDateEdit;
    CurrencyEdit1: TCurrencyEdit;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    Button11: TButton;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2CODIGO: TcxGridDBColumn;
    cxGridDBTableView2BARRAS: TcxGridDBColumn;
    cxGridDBTableView2NOME: TcxGridDBColumn;
    cxGridDBTableView2QTD: TcxGridDBColumn;
    cxGridDBTableView2PRECO_CUSTO: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel5: TPanel;
    Button3: TButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Panel11: TPanel;
    Button2: TButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    DataSimuladox: TNxNotebookSheet6;
    Panel6: TPanel;
    Panel153: TPanel;
    Panel152: TPanel;
    Panel154: TPanel;
    Panel151: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
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
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Button25: TButton;
    Button26: TButton;
    Label6: TLabel;
    Label10: TLabel;
    BitBtn9: TBitBtn;
    Button27: TButton;
    Button28: TButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridDBTableView12Column1: TcxGridDBColumn;
    cxGridDBTableView12Column2: TcxGridDBColumn;
    cxGridDBTableView12Column3: TcxGridDBColumn;
    cxGridDBTableView12Column4: TcxGridDBColumn;
    cxGridLevel12: TcxGridLevel;
    NxNotebookSheet64: TNxNotebookSheet6;
    Panel32: TPanel;
    Label11: TLabel;
    DateEdit1: TDateEdit;

    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CadastroParaRelatorio;
    procedure CadastroParaRelatorioGrupo;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton32Click(Sender: TObject);
    procedure EntradasSaidas(TabelaEstoque: TUniQuery; DataEstoque,
      Grafico: string);
    procedure GeraCurvaAbc;
    procedure GeraEntradasSaidasPedidos(Tipo: string);
    procedure GeraVendasGeral;
    procedure Inventario(TabelaEstoque: TUniQuery; DataEstoque, Grafico,
      Grupo: string);
    procedure ProdutosGeral(TabelaEstoque: TUniQuery; DataEstoque,
      Grafico: string);
    procedure RelCurvaABC;
    procedure RelEntradasSaidas(Tipo: string);
    procedure RelEntradasSaidasPedidos(Tipo: string);
    procedure RelEntradasSaidasPedidos2(Tipo: string);
    procedure FormShow(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure cxGridDBTableView12DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure DateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    procedure GeraInventario;
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure ImportaOrigemDestino2(TabelaOrige,TabelaDestino,CampoGeneretor:String);

var
  Relatoriosf: TRelatoriosf;
  COVEPEGE,COVEPE,PrecoCustoVenda:string;
  COMSAIPED: TUniQuery;
  ITCOMSAIPED: TUniQuery;

implementation

uses VISUALIZACAO, FUNCOES, DADOS_CONSULTAS, FUNCAORELATORIOS, estoque,
  PRINCIPAL, MENSPROC, DADOSMOVIMENTO, FUNCOESGERAIS, DADOS_CADASTROS, PREVIEW,
  CAD_MANUTENCAO, FUNCOES_DADOS, Importacao, FUNCOESUNIDAC;

{$R *.dfm}

procedure TRelatoriosf.Button10Click(Sender: TObject);
begin
  inherited;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.SQL.Clear;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.SQL.Add('SELECT * FROM ITEVENDAS_ECF2 WHERE ' +
    'DATA>= :_dataini and DATA<= :_dataFin and CANCELADO<>1 order by CODIGO');
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.ParamByName('_dataini').asdatetime :=
    datini.Date;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.ParamByName('_dataFin').asdatetime :=
    DatFim.Date;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.Open;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.First;
end;

procedure TRelatoriosf.Button11Click(Sender: TObject);
begin
  inherited;
  GeraCurvaAbc;
  RelCurvaABC;
end;

procedure TRelatoriosf.Button12Click(Sender: TObject);
begin
  inherited;
  with TRelatoriosf.Create(Self) do begin
    COVEPE:='ITECOMPRAS';
    COVEPEGE:='ENTRRELA';
    COMSAIPED:=DADOSMOVIMENTOF.ENTRRELA;
    ITCOMSAIPED:=DADOSMOVIMENTOF.ITECOMPRASR;
    NxNotebook61.ActivePageIndex:=8;
    ShowModal;
  end;
end;

procedure TRelatoriosf.Button13Click(Sender: TObject);
begin
  inherited;
  CadastroParaRelatorio;
  if Label10.Caption<>'Informações' then
    Inventario(DADOS_CONSULTASF.PRODUTOS, Copy(Label10.Caption,10,20),'G','')
  else
    Inventario(DADOS_CONSULTASF.PRODUTOS, DateToStr(date),'G','');
  DADOS_CONSULTASF.PRODUTOS.Close;
  DADOS_CONSULTASF.PRODUTOS.SQL.Clear;
end;

procedure TRelatoriosf.Button19Click(Sender: TObject);
begin
  inherited;
  with TRelatoriosf.Create(Self) do begin
    COVEPE:='ITEVENDAS';
    COVEPEGE:='SaidRela';
    COMSAIPED:=DADOSMOVIMENTOF.SaidRela;
    ITCOMSAIPED:=DADOSMOVIMENTOF.ITEVENDASR;
    NxNotebook61.ActivePageIndex:=8;
    ShowModal;
  end;
end;

procedure TRelatoriosf.Button1Click(Sender: TObject);
begin
  inherited;
  RelVeiculos;
end;

procedure TRelatoriosf.Button20Click(Sender: TObject);
begin
  inherited;
  with TRelatoriosf.Create(Self) do begin
    COVEPE:='ITEPEDIDOS';
    COVEPEGE:='PediRela';
    COMSAIPED:=DADOSMOVIMENTOF.PediRela;
    ITCOMSAIPED:=DADOSMOVIMENTOF.ITEPEDIDOSR;
    NxNotebook61.ActivePageIndex:=8;
    ShowModal;
  end;
end;

procedure TRelatoriosf.Button21Click(Sender: TObject);
begin
  inherited;
  with TRelatoriosf.Create(Self) do begin
    COVEPE:='ITEVENDAS_ECF2';
    COVEPEGE:='EntrSaid';
    COMSAIPED:=DADOSMOVIMENTOF.EntrSaid;
    ITCOMSAIPED:=DADOSMOVIMENTOF.ITEVENDAS_ECF2;
    NxNotebook61.ActivePageIndex:=8;
    ShowModal;
  end;
end;

procedure TRelatoriosf.Button22Click(Sender: TObject);
begin
  inherited;
  if COVEPEGE='EntrSaid' then begin
    GeraVendasGeral;
    COVEPE:='ITECOMPRAS';
    COVEPEGE:='EntrSaid';
    COMSAIPED:=DADOSMOVIMENTOF.EntrSaid;
    ITCOMSAIPED:=DADOSMOVIMENTOF.ITECOMPRASR;
    GeraEntradasSaidasPedidos('');
    COVEPE:='ITEVENDAS';
    COVEPEGE:='EntrSaid';
    COMSAIPED:=DADOSMOVIMENTOF.EntrSaid;
    ITCOMSAIPED:=DADOSMOVIMENTOF.ITEVENDASR;
    GeraEntradasSaidasPedidos('');
    RelEntradasSaidas('');
  end
  else begin
    GeraEntradasSaidasPedidos('');
    RelEntradasSaidasPedidos('');
  end;
end;

procedure TRelatoriosf.Button23Click(Sender: TObject);
begin
  inherited;
  RelEntradasSaidasPedidos2('');
end;

procedure TRelatoriosf.Button24Click(Sender: TObject);
begin
  inherited;
  CadastroParaRelatorioGrupo;
  Inventario(DADOS_CONSULTASF.PRODUTOS, DateToStr(date),'G','S');
  DADOS_CONSULTASF.PRODUTOS.Close;
  DADOS_CONSULTASF.PRODUTOS.SQL.Clear;
end;

procedure TRelatoriosf.Button25Click(Sender: TObject);
var NomedaTabela, INFORMACOESTabela:string;
begin
  inherited;
  MENSPROCF.Panel1.Caption:='AGUARDE UM MOMENTO - PROCESSANDO INVENTÁRIO !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;

  NomedaTabela:='PRODUTOS_'+copy(DatetoStr(date),1,2)+copy(DatetoStr(date),4,2)+copy(DatetoStr(date),7,4)+copy(TimetoStr(time),1,2)+copy(TimetoStr(time),4,2)+copy(TimetoStr(time),7,2);
  INFORMACOESTabela:='PRODUTOS '+DatetoStr(date)+' '+TimetoStr(time);
  DADOS_CONSULTASF.INVENTARIO.Close;
  DADOS_CONSULTASF.INVENTARIO.SQL.Clear;
  DADOS_CONSULTASF.INVENTARIO.SQL.Add('select * from INVENTARIO order by ID desc');
  DADOS_CONSULTASF.INVENTARIO.Open;
  DADOS_CONSULTASF.INVENTARIO.Append;
  DADOS_CONSULTASF.INVENTARIO.FieldByName('TABELA').AsString:=NomedaTabela;
  DADOS_CONSULTASF.INVENTARIO.FieldByName('INFORMACOES').AsString:=INFORMACOESTabela;
  DADOS_CONSULTASF.INVENTARIO.FieldByName('DATA').AsDateTime:=date;
  DADOS_CONSULTASF.INVENTARIO.FieldByName('HORA').AsDateTime:=time;

  DADOS_CONSULTASF.INVENTARIO.Post;
  PRODUTOS(NomedaTabela);

  ImportaOrigemDestino2('PRODUTOS',NomedaTabela,'CODIGO');
  MENSPROCF.Close;
end;

procedure TRelatoriosf.Button26Click(Sender: TObject);
begin
  inherited;
  cxGridDBTableView12.DataController.DataSource:=DADOS_CONSULTASF.Source_INVENTARIO;
  DADOS_CONSULTASF.INVENTARIO.Close;
  DADOS_CONSULTASF.INVENTARIO.SQL.Clear;
  DADOS_CONSULTASF.INVENTARIO.SQL.Add('select * from INVENTARIO order by ID desc');
  DADOS_CONSULTASF.INVENTARIO.Open;
  DADOS_CONSULTASF.INVENTARIO.First;
  cxGrid1.Visible:=true;
end;

procedure TRelatoriosf.Button27Click(Sender: TObject);
var NomedaTabela, INFORMACOESTabela:string;
begin
  inherited;
  with TRelatoriosf.Create(nil) do begin
    Width:=Panel6.Width;
    Height:=Panel6.Height;
    Panel6.Align:=alclient;
    NxNotebook61.ActivePageIndex:=9;
    DateEdit1.Date:=date-30;
    DataSimulado:=DateEdit1.Text;
    // DADOS_CADASTROSf.Clientes.Open;
    // DADOS_CADASTROSf.Clientes.Append;
    ShowModal;
  end;
  MENSPROCF.Panel1.Caption:='AGUARDE UM MOMENTO - PROCESSANDO INVENTÁRIO SIMULADO !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;

  NomedaTabela:='PRODUTOS_'+copy(DataSimulado,1,2)+copy(DataSimulado,4,2)+copy(DataSimulado,7,4)+copy(TimetoStr(time),1,2)+copy(TimetoStr(time),4,2)+copy(TimetoStr(time),7,2);
  INFORMACOESTabela:='PRODUTOS '+DataSimulado+' '+TimetoStr(time);
  DADOS_CONSULTASF.simulado.Close;
  DADOS_CONSULTASF.simulado.SQL.Clear;
  DADOS_CONSULTASF.simulado.SQL.Add('select * from simulado order by ID desc');
  DADOS_CONSULTASF.simulado.Open;
  DADOS_CONSULTASF.simulado.Append;
  DADOS_CONSULTASF.simulado.FieldByName('TABELA').AsString:=NomedaTabela;
  DADOS_CONSULTASF.simulado.FieldByName('INFORMACOES').AsString:=INFORMACOESTabela;
  DADOS_CONSULTASF.simulado.FieldByName('DATA').AsDateTime:=date;
  DADOS_CONSULTASF.simulado.FieldByName('HORA').AsDateTime:=time;
  DADOS_CONSULTASF.simulado.Post;
  PRODUTOS(NomedaTabela);
  ImportaOrigemDestino2('PRODUTOS',NomedaTabela,'CODIGO');
  with Testoquef.Create(Self) do begin
    ESTOQUE.Close;
    ESTOQUE.SQL.Clear;
    ESTOQUE.SQL.Add('SELECT * FROM '+NomedaTabela);
    ESTOQUE.Open;
    DateEdit1.Text:=DataSimulado;
    // DateEdit1.Date:='01/01/2020';
    Filtro.Click;
    Button1.Click;
    Button2.Click;
  end;
  MENSPROCF.Close;
end;

procedure TRelatoriosf.Button28Click(Sender: TObject);
begin
  inherited;
  cxGridDBTableView12.DataController.DataSource:=DADOS_CONSULTASF.Source_simulado;
  DADOS_CONSULTASF.simulado.Close;
  DADOS_CONSULTASF.simulado.SQL.Clear;
  DADOS_CONSULTASF.simulado.SQL.Add('select * from simulado order by ID desc');
  DADOS_CONSULTASF.simulado.Open;
  DADOS_CONSULTASF.simulado.First;
  cxGrid1.Visible:=true;
end;

procedure ImportaOrigemDestino2(TabelaOrige,TabelaDestino,CampoGeneretor:String);
begin
  DADOS_CONSULTASF.QOrigem.Close;
  DADOS_CONSULTASF.QOrigem.SQL.Clear;
  DADOS_CONSULTASF.QOrigem.SQL.Add('Select * from '+TabelaOrige);
  DADOS_CONSULTASF.QOrigem.Open;

  DADOS_CONSULTASF.QDestino.Close;
  DADOS_CONSULTASF.QDestino.SQL.Clear;
  DADOS_CONSULTASF.QDestino.SQL.Add('Select * from '+TabelaDestino);
  DADOS_CONSULTASF.QDestino.Open;

  OrigemDestinoUnidac(DADOS_CONSULTASF.QOrigem, DADOS_CONSULTASF.QDestino);

  if CampoGeneretor<>'' then begin
    DADOS_CONSULTASF.QDestino.Open;
    if not DADOS_CONSULTASF.QDestino.IsEmpty then begin
      DADOS_CONSULTASF.QDestino.Last;
      if not DADOS_CONSULTASF.QDestino.IsEmpty then begin
        if CampoGeneretor<>'' then begin
          DADOS_CONSULTASF.generatorx.SQL.Clear;
          DADOS_CONSULTASF.generatorx.SQL.Add('set generator gen_'+TabelaDestino+' to ' + DADOS_CONSULTASF.QDestino.FieldByName(CampoGeneretor).AsString);
          DADOS_CONSULTASF.generatorx.ExecSQL;
        end;
      end;
    end;
  end;
end;

procedure TRelatoriosf.Button2Click(Sender: TObject);
begin
  inherited;
  DADOS_CONSULTASF.PRODUTOS.Close;
  DADOS_CONSULTASF.PRODUTOS.SQL.Clear;
  if RadioButton1.Checked=true then
    DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from PRODUTOS Order by codigo')
  else
    DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from PRODUTOS Order by Nome');
  DADOS_CONSULTASF.PRODUTOS.Open;
end;

procedure TRelatoriosf.Button4Click(Sender: TObject);
begin
  inherited;
  CadastroParaRelatorio;
  ProdutosGeral(DADOS_CONSULTASF.PRODUTOS, DateToStr(date),'G');
  DADOS_CONSULTASF.PRODUTOS.Close;
  DADOS_CONSULTASF.PRODUTOS.SQL.Clear;
end;

procedure TRelatoriosf.CadastroParaRelatorioGrupo;
begin
  DADOS_CONSULTASF.PRODUTOS.Close;
  DADOS_CONSULTASF.PRODUTOS.SQL.Clear;
  if CheckBox6.Checked=false then begin
    if RadioButton1.Checked=true then
      DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from PRODUTOS Order by GRUPO,codigo')
    else
      DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from PRODUTOS Order by GRUPO,Nome');
    DADOS_CONSULTASF.PRODUTOS.Open;
  end
end;


procedure TRelatoriosf.Button5Click(Sender: TObject);
begin
  inherited;
  DADOS_CONSULTASF.PRODUTOS.Close;
  DADOS_CONSULTASF.PRODUTOS.SQL.Clear;
  if RadioButton1.Checked=true then
    DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from PRODUTOS Order by codigo')
  else
    DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from PRODUTOS Order by Nome');
  DADOS_CONSULTASF.PRODUTOS.Open;
  with TRelatoriosf.Create(Self) do begin
    NxNotebook61.ActivePageIndex:=6;
    ShowModal;
  end;
end;

procedure TRelatoriosf.Button6Click(Sender: TObject);
begin
  inherited;
  with TRelatoriosf.Create(Self) do begin
    NxNotebook61.ActivePageIndex:=7;
    ShowModal;
  end;
end;

procedure TRelatoriosf.cxButton1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TRelatoriosf.cxButton32Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link1;
  dxComponentPrinter1.Preview();
end;

procedure TRelatoriosf.cxGridDBTableView12DblClick(Sender: TObject);
begin
  inherited;
  GeraInventario;
end;

procedure TRelatoriosf.DateEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then begin
    DataSimulado:=DateEdit1.Text;
    close;
  end;
end;

procedure TRelatoriosf.GeraInventario;
begin
  cxGrid1.SetFocus;
  if cxGridDBTableView12.DataController.DataSource=DADOS_CONSULTASF.Source_INVENTARIO then begin
    Label6.Caption:=DADOS_CONSULTASF.INVENTARIO.FieldByName('TABELA').AsString;
    Label10.Caption:=DADOS_CONSULTASF.INVENTARIO.FieldByName('INFORMACOES').AsString;
  end;
  if cxGridDBTableView12.DataController.DataSource=DADOS_CONSULTASF.Source_simulado then begin
    Label6.Caption:=DADOS_CONSULTASF.simulado.FieldByName('TABELA').AsString;
    Label10.Caption:=DADOS_CONSULTASF.simulado.FieldByName('INFORMACOES').AsString;
  end;
  cxGrid1.Visible:=false;
end;


procedure TRelatoriosf.Inventario(TabelaEstoque :TUniQuery; DataEstoque,Grafico,Grupo: string);
var TotalProduto,TotalGeral,CustoVenda,TotalGrupoQuantidade,TotalGrupo:double;
    NomedoGrupo:string;
begin
  MENSPROCF.Panel1.Caption :='AGUARDE UM MOMENTO - GERANDO O INVENTÁRIO !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;
  if Grupo='S' then
    NomeDoArquivo:='INVENTARIO SEPARADO POR GRUPOS'
  else
     NomeDoArquivo:='INVENTARIO';
  TabelaEstoque.Open;
  TabelaEstoque.First;
  NomedoGrupo:='X';
  with TVISUALIZACAOF.Create(Self) do begin
     TextListBox1.Items.Add('Inventario - '+DataEstoque);
     TextListBox1.Items.Add('');
     TextListBox1.Items.Add('Codigo Descricao                                Quantidade      Custo  Tot.Prod.      Total');
     TextListBox1.Items.Add('');
     While not TabelaEstoque.Eof do begin
       if PrecoCustoVenda='' then
         CustoVenda:=TabelaEstoque.FieldByName('ULTIMO_PRECO').AsFloat
       else
         CustoVenda:=TabelaEstoque.FieldByName('PRECO_CONS').AsFloat;
       if ZeradasNegativas.Checked=false then begin
         if TabelaEstoque.FieldByName('QTD').AsFloat>0 then begin
           TotalProduto:=TabelaEstoque.FieldByName('QTD').AsFloat*
             CustoVenda;
           TotalGeral:=TotalGeral+TotalProduto;
           TotalGrupo:=TotalGrupo+TotalProduto;
           TotalGrupoQuantidade:=TotalGrupoQuantidade+TabelaEstoque.FieldByName('QTD').AsFloat;
           TextListBox1.Items.Add(
           DireiraEsquera(0, TabelaEstoque.FieldByName('codigo').AsString, 6,
             'D')
           +' '+DireiraEsquera(0, Copy(TabelaEstoque.FieldByName('DESCRICAO').AsString,1,40), 40,'E')
           +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
             TabelaEstoque.FieldByName('QTD').AsFloat), 10, 'D')
           +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
             CustoVenda), 10, 'D')
           +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
             TotalProduto), 10, 'D')
           +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
             TotalGeral), 10, 'D'));
           if CheckBox2.Checked=true then
             TextListBox1.Items.Add('--------------------------------------------------------------------------------------------');
           if ChecEntradasSaidas.Checked=true then begin
             if TabelaEstoque.FieldByName('PRECO_CONS1').AsFloat<>0 then
               TextListBox1.Items.Add('Entradas----->'+DireiraEsquera(0, FormatFloat('###,##0.00',TabelaEstoque.FieldByName('PRECO_CONS1').AsFloat), 10, 'D'));
             if TabelaEstoque.FieldByName('PRECO_CONS2').AsFloat<>0 then
               TextListBox1.Items.Add('Vendas------->'+DireiraEsquera(0, FormatFloat('###,##0.00',TabelaEstoque.FieldByName('PRECO_CONS2').AsFloat), 10, 'D'));
             if TabelaEstoque.FieldByName('PRECO_CONS3').AsFloat<>0 then
               TextListBox1.Items.Add('Saídas------->'+DireiraEsquera(0, FormatFloat('###,##0.00',TabelaEstoque.FieldByName('PRECO_CONS3').AsFloat), 10, 'D'));
           end;
         end;
       end;
       if ZeradasNegativas.Checked=true then begin
         TotalProduto:=TabelaEstoque.FieldByName('QTD').AsFloat*
           CustoVenda;
         TotalGeral:=TotalGeral+TotalProduto;
         TotalGrupo:=TotalGrupo+TotalProduto;
         TotalGrupoQuantidade:=TotalGrupoQuantidade+TabelaEstoque.FieldByName('QTD').AsFloat;
         TextListBox1.Items.Add(
         DireiraEsquera(0, TabelaEstoque.FieldByName('codigo').AsString, 6,
           'D')
         +' '+DireiraEsquera(0, Copy(TabelaEstoque.FieldByName('DESCRICAO').AsString,1,40), 40,'E')
         +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
           TabelaEstoque.FieldByName('QTD').AsFloat), 10, 'D')
         +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
           CustoVenda), 10, 'D')
         +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
           TotalProduto), 10, 'D')
         +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
           TotalGeral), 10, 'D'));
         if CheckBox2.Checked=true then
           TextListBox1.Items.Add('--------------------------------------------------------------------------------------------');
         if ChecEntradasSaidas.Checked=true then begin
           if TabelaEstoque.FieldByName('PRECO_CONS1').AsFloat<>0 then
             TextListBox1.Items.Add('Entradas----->'+DireiraEsquera(0, FormatFloat('###,##0.00',TabelaEstoque.FieldByName('PRECO_CONS1').AsFloat), 10, 'D'));
           if TabelaEstoque.FieldByName('PRECO_CONS2').AsFloat<>0 then
             TextListBox1.Items.Add('Vendas------->'+DireiraEsquera(0, FormatFloat('###,##0.00',TabelaEstoque.FieldByName('PRECO_CONS2').AsFloat), 10, 'D'));
           if TabelaEstoque.FieldByName('PRECO_CONS3').AsFloat<>0 then
             TextListBox1.Items.Add('Saídas------->'+DireiraEsquera(0, FormatFloat('###,##0.00',TabelaEstoque.FieldByName('PRECO_CONS3').AsFloat), 10, 'D'));
         end;
       end;
       NomedoGrupo:=TabelaEstoque.FieldByName('GRUPO').AsString;
       TabelaEstoque.Next;
       if Grupo='S' then begin
         if (NomedoGrupo<>TabelaEstoque.FieldByName('GRUPO').AsString) and (TotalGrupo>0) then begin
           DADOS_CADASTROSf.GRUPOCONSULTA.Open;
           if DADOS_CADASTROSf.GRUPOCONSULTA.Locate('CODIGO',TabelaEstoque.FieldByName('GRUPO').AsString,[]) then begin
             TextListBox1.Items.Add('');
             TextListBox1.Items.Add('  ( '+TabelaEstoque.FieldByName('GRUPO').AsString+' - '+DADOS_CADASTROSf.GRUPOCONSULTA.FieldByName('NOME').AsString+' ) - '+
             'Quantidade e Valor total '+DireiraEsquera(0, FormatFloat('###,##0.00',TotalGrupoQuantidade), 10, 'D')+' - '+DireiraEsquera(0, FormatFloat('###,##0.00',TotalGrupo), 10, 'D'));
             TextListBox1.Items.Add('');
           end
           else begin
             TextListBox1.Items.Add('');
             TextListBox1.Items.Add('  ( Sem Grupo ) ' +'Quantidade e Valor total '+
             DireiraEsquera(0, FormatFloat('###,##0.00',TotalGrupoQuantidade), 10, 'D')+' - '+DireiraEsquera(0, FormatFloat('###,##0.00',TotalGrupo), 10, 'D'));
             TextListBox1.Items.Add('');
           end;
           TextListBox1.Items.Add('--------------------------------------------------------------------------------------------');
           TotalGrupo:=0;
           TotalGrupoQuantidade:=0;
         end;
       end;
     end;
     if Grupo='S' then begin
       DADOS_CADASTROSf.GRUPOCONSULTA.Open;
       if DADOS_CADASTROSf.GRUPOCONSULTA.Locate('CODIGO',TabelaEstoque.FieldByName('GRUPO').AsString,[]) then begin
         TextListBox1.Items.Add('');
         TextListBox1.Items.Add('  ( '+TabelaEstoque.FieldByName('GRUPO').AsString+' - '+DADOS_CADASTROSf.GRUPOCONSULTA.FieldByName('NOME').AsString+' ) - '+
         'Quantidade e Valor total '+DireiraEsquera(0, FormatFloat('###,##0.00',TotalGrupoQuantidade), 10, 'D')+' - '+DireiraEsquera(0, FormatFloat('###,##0.00',TotalGrupo), 10, 'D'));
         TextListBox1.Items.Add('');
       end
       else begin
         TextListBox1.Items.Add('');
         TextListBox1.Items.Add('  ( Sem Grupo ) ' +'Quantidade e Valor total '+
         DireiraEsquera(0, FormatFloat('###,##0.00',TotalGrupoQuantidade), 10, 'D')+' - '+DireiraEsquera(0, FormatFloat('###,##0.00',TotalGrupo), 10, 'D'));
         TextListBox1.Items.Add('');
       end;
       TextListBox1.Items.Add('');
       TextListBox1.Items.Add('--------------------------------------------------------------------------------------------');
       TotalGrupo:=0;
       TextListBox1.Items.Add('');
     end;
     if Grafico='' then
       ShowModal
     else if Grafico='2' then begin
       Show;
       Button5.Click;
       close;
     end
     else begin
       Show;
       Button1.Click;
       close;
     end;
  end;
  MENSPROCF.Close;
end;

procedure TRelatoriosf.EntradasSaidas(TabelaEstoque :TUniQuery; DataEstoque,Grafico: string);
var TotalProduto,TotalGeral:double;
    quantidade:double;
    codigo:string;
begin
  NomeDoArquivo:='INVENTARIO';
  TabelaEstoque.Open;
  TabelaEstoque.First;
  with TVISUALIZACAOF.Create(Self) do begin
     TextListBox1.Items.Add('Inventario - '+DataEstoque);
     TextListBox1.Items.Add('');
     TextListBox1.Items.Add('Codigo Descricao                                Quant. de Entrada  Quanti. de Saída  Estoque');
     TextListBox1.Items.Add('');
     while not TabelaEstoque.Eof do begin
         TotalProduto:=TabelaEstoque.FieldByName('QTD').AsFloat*
           TabelaEstoque.FieldByName('ULTIMO_PRECO').AsFloat;
         TotalGeral:=TotalGeral+TotalProduto;
         TextListBox1.Items.Add(
         DireiraEsquera(0, TabelaEstoque.FieldByName('codigo').AsString, 6,'D')
         +' '+DireiraEsquera(0, Copy(TabelaEstoque.FieldByName('DESCRICAO').AsString,1,40), 40,'E')
         +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
           TabelaEstoque.FieldByName('QTD').AsFloat), 10, 'D')
         +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
           TabelaEstoque.FieldByName('ULTIMO_PRECO').AsFloat), 10, 'D')
         +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
           TotalProduto), 10, 'D')
         +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
           TotalGeral), 10, 'D'));
       estoquef.ITECOMPRAS.Open;
       TabelaEstoque.Next;
     end;
     if Grafico='' then
       ShowModal
     else if Grafico='2' then begin
       Show;
       Button5.Click;
       close;
     end
     else begin
       Show;
       Button1.Click;
       close;
     end;
  end;
end;

procedure TRelatoriosf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_return) and (cxGrid1.Visible=true) then
    GeraInventario;
end;

procedure TRelatoriosf.FormShow(Sender: TObject);
begin
  inherited;
  NxNotebook61.Align:=AlClient;
  NxNotebook62.Align:=AlClient;
  Panel1.Align:=AlClient;
  Panel2.Align:=AlClient;
  Panel3.Align:=AlClient;
  cxGrid1.Align:=AlClient;
  // Panel6.Align:=AlClient;

  datini.Date:=DATE-20;
  DatFim.Date:=DATE;
  datinie.Date:=DATE-40;
  DatFime.Date:=DATE;
end;

procedure TRelatoriosf.ProdutosGeral(TabelaEstoque :TUniQuery; DataEstoque,Grafico: string);
var TotalProduto,TotalGeral:double;
begin
  MENSPROCF.Panel1.Caption :='AGUARDE UM MOMENTO - Gerando o Relatório de Custos !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;
  NomeDoArquivo:='Diferença entre Preço de Venda e Custo';
  TabelaEstoque.Open;
  TabelaEstoque.First;
  with TVISUALIZACAOF.Create(Self) do begin
     TextListBox1.Items.Add('Dif.entre Preço de Venda e Custo-'+DataEstoque);
     if CheckBox2.Checked=true then
       TextListBox1.Items.Add('_____________________________________________')
     else
       TextListBox1.Items.Add('');
     TextListBox1.Items.Add('Codigo Descricao');
     TextListBox1.Items.Add('Ult. Custo      Venda  Diferença   Per.Lucro');
     if CheckBox2.Checked=true then
       TextListBox1.Items.Add('_____________________________________________')
     else
       TextListBox1.Items.Add('');
     While not TabelaEstoque.Eof do begin
       TotalProduto:=TabelaEstoque.FieldByName('QTD').AsFloat*
         TabelaEstoque.FieldByName('ULTIMO_PRECO').AsFloat;
       TotalGeral:=TotalGeral+TotalProduto;
       if TabelaEstoque.FieldByName('ULTIMO_PRECO').AsFloat>0 then begin
         TextListBox1.Items.Add(
         DireiraEsquera(0, TabelaEstoque.FieldByName('codigo').AsString, 6,
           'D')
         +' '+DireiraEsquera(0, Copy(TabelaEstoque.FieldByName('DESCRICAO').AsString,1,38), 38,'E'));
         TextListBox1.Items.Add(DireiraEsquera(0, FormatFloat('###,##0.00',
           TabelaEstoque.FieldByName('ULTIMO_PRECO').AsFloat), 10, 'D')
         +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
           TabelaEstoque.FieldByName('PRECO_CONS').AsFloat), 10, 'D')
         +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
           TabelaEstoque.FieldByName('PRECO_CONS').AsFloat-TabelaEstoque.FieldByName('ULTIMO_PRECO').AsFloat), 10, 'D')
         +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
           ((TabelaEstoque.FieldByName('PRECO_CONS').AsFloat-TabelaEstoque.FieldByName('ULTIMO_PRECO').AsFloat)*100)
           /TabelaEstoque.FieldByName('ULTIMO_PRECO').AsFloat)+'%', 11, 'D')
           );
           if CheckBox2.Checked=true then
             TextListBox1.Items.Add('_____________________________________________');
       end;
       TabelaEstoque.Next;
     end;

     if Grafico='' then
       ShowModal
     else if Grafico='2' then begin
       Show;
       Button5.Click;

       Button9.Click;
       close;
     end
     else begin
       Show;
       TamanhoFonte:=99;
       Button9.Click;
       close;
     end;
  end;
  MENSPROCF.Close;
end;

procedure TRelatoriosf.Button7Click(Sender: TObject);
begin
  GeraCurvaAbc;
end;

procedure TRelatoriosf.GeraCurvaAbc;
var CodPro:string;
    QuaTot,VrCusto,UltCodigo,TotalGeral,Vl_Tot:double;
begin
  inherited;
  MENSPROCF.Panel1.Caption :='AGUARDE UM MOMENTO - GERANDO A CURVA ABC !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;
  DADOSMOVIMENTOF.CurvaABC.Open;
  while not DADOSMOVIMENTOF.CurvaABC.Eof do
    DADOSMOVIMENTOF.CurvaABC.Delete;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.Open;

  DADOSMOVIMENTOF.ITEVENDAS_ECF2.SQL.Clear;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.SQL.Add('SELECT * FROM ITEVENDAS_ECF2 WHERE ' +
    'DATA>= :_dataini and DATA<= :_dataFin and CANCELADO<>1 order by CODIGO');
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.ParamByName('_dataini').asdatetime :=
    datini.Date;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.ParamByName('_dataFin').asdatetime :=
    DatFim.Date;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.Open;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.First;
  TotalGeral:=0;
  while not DADOSMOVIMENTOF.ITEVENDAS_ECF2.Eof do begin
    if CodPro<>DADOSMOVIMENTOF.ITEVENDAS_ECF2.FieldByName('CODIGO').AsString then begin
      CodPro:=DADOSMOVIMENTOF.ITEVENDAS_ECF2.FieldByName('CODIGO').AsString;
      QuaTot:=0;
      DADOSMOVIMENTOF.PRODUTOS.Close;
      DADOSMOVIMENTOF.PRODUTOS.SQL.Clear;
      DADOSMOVIMENTOF.PRODUTOS.SQL.Add('Select * from PRODUTOS where codigo like '+QuotedStr(CodPro));
      DADOSMOVIMENTOF.PRODUTOS.Open;
      DADOSMOVIMENTOF.CurvaABC.Append;
    end
    else
      DADOSMOVIMENTOF.CurvaABC.Edit;
    QuaTot:=QuaTot+DADOSMOVIMENTOF.ITEVENDAS_ECF2.FieldByName('QTD').AsFloat;
    DADOSMOVIMENTOF.CurvaABC.FieldByName('CODIGO').AsString:=CodPro;
    DADOSMOVIMENTOF.CurvaABC.FieldByName('QTD').AsFloat:=DADOSMOVIMENTOF.CurvaABC.FieldByName('QTD').AsFloat+
    DADOSMOVIMENTOF.ITEVENDAS_ECF2.FieldByName('QTD').AsFloat;
    DADOSMOVIMENTOF.CurvaABC.FieldByName('DESCRICAO').AsString:=DADOSMOVIMENTOF.PRODUTOS.FieldByName('NOME').AsString;
    DADOSMOVIMENTOF.CurvaABC.FieldByName('PRECO').AsFloat:=DADOSMOVIMENTOF.PRODUTOS.FieldByName('PRECO_CONS').AsFloat;
    DADOSMOVIMENTOF.CurvaABC.FieldByName('TOTAL').AsFloat:=DADOSMOVIMENTOF.CurvaABC.FieldByName('QTD').AsFloat*
    DADOSMOVIMENTOF.CurvaABC.FieldByName('PRECO').AsFloat;
    if DADOSMOVIMENTOF.CurvaABC.FieldByName('TOTAL').AsFloat=0 then
      DADOSMOVIMENTOF.CurvaABC.Cancel
    else begin
      DADOSMOVIMENTOF.CurvaABC.Post;
    end;
    CodPro:=DADOSMOVIMENTOF.ITEVENDAS_ECF2.FieldByName('CODIGO').AsString;
    if DADOSMOVIMENTOF.ITEVENDAS_ECF2.Eof then
      break;
    DADOSMOVIMENTOF.ITEVENDAS_ECF2.Next;
  end;
  DADOSMOVIMENTOF.CurvaABC.First;
  while not DADOSMOVIMENTOF.CurvaABC.eof do begin
    TotalGeral:=TotalGeral+DADOSMOVIMENTOF.CurvaABC.FieldByName('TOTAL').AsFloat;
    DADOSMOVIMENTOF.CurvaABC.Next;
  end;
  CurrencyEdit1.Value:=TotalGeral;
  while not DADOSMOVIMENTOF.CurvaABC.Bof do begin
    DADOSMOVIMENTOF.CurvaABC.Edit;
    DADOSMOVIMENTOF.CurvaABC.FieldByName('PERCENTUAL').AsFloat:=(DADOSMOVIMENTOF.CurvaABC.FieldByName('TOTAL').AsFloat/TotalGeral)*100;
    DADOSMOVIMENTOF.CurvaABC.Post;
    DADOSMOVIMENTOF.CurvaABC.Prior;
  end;
  DADOSMOVIMENTOF.CurvaABC.SQL.Clear;
  DADOSMOVIMENTOF.CurvaABC.SQL.Add('SELECT * FROM CurvaABC order by PERCENTUAL desc');
  DADOSMOVIMENTOF.CurvaABC.Open;
  DADOSMOVIMENTOF.CurvaABC.First;
  MENSPROCF.Close;
end;

Procedure TRelatoriosf.RelCurvaABC;
var Clase:string;
    Quantidade,Posicao:integer;
    TotValo,TotPerc,TotalCurvas:double;
begin
  with TVISUALIZACAOF.Create(Self) do begin
    DADOSMOVIMENTOF.CurvaABC.SQL.Clear;
    DADOSMOVIMENTOF.CurvaABC.SQL.Add('SELECT * FROM CurvaABC order by PERCENTUAL desc');
    DADOSMOVIMENTOF.CurvaABC.Open;
    DADOSMOVIMENTOF.CurvaABC.First;
    Quantidade:=0;
    while not DADOSMOVIMENTOF.CurvaABC.Eof do  begin
      Quantidade:=Quantidade+1;
      DADOSMOVIMENTOF.CurvaABC.Next;
    end;
    DADOSMOVIMENTOF.CurvaABC.First;
    TextListBox1.Items.Add('Curva ABC de '+datini.Text+' a '+DatFim.Text);
    TextListBox1.Items.Add('-----------------------------------------------------------------------------------------------');
    TextListBox1.Items.Add('*PO* *Cod. *------Descrição-------* *--Qtd--* *-Valor* *-Vl Total-* *Perc*  *Tot.Acu* *Per.Acu*');
    TextListBox1.Items.Add('-----------------------------------------------------------------------------------------------');
    while not DADOSMOVIMENTOF.CurvaABC.Eof do  begin
      Posicao:=Posicao+1;
      TotPerc:=TotPerc+DADOSMOVIMENTOF.CurvaABC.FieldByName('PERCENTUAL').AsFloat;
      TotValo:=TotValo+(DADOSMOVIMENTOF.CurvaABC.FieldByName('QTD').AsFloat*DADOSMOVIMENTOF.CurvaABC.FieldByName('PRECO').AsFloat);
      TotalCurvas:=TotalCurvas+(DADOSMOVIMENTOF.CurvaABC.FieldByName('QTD').AsFloat*DADOSMOVIMENTOF.CurvaABC.FieldByName('PRECO').AsFloat);
      TextListBox1.Items.Add(DireiraEsquera(0, IntToStr(Posicao), 4,'D')
      +' '+DireiraEsquera(0, DADOSMOVIMENTOF.CurvaABC.FieldByName('CODIGO').AsString, 4,'D')
      +' '+DireiraEsquera(0, Copy(DADOSMOVIMENTOF.CurvaABC.FieldByName('DESCRICAO').AsString,1,26), 26,'E')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', DADOSMOVIMENTOF.CurvaABC.FieldByName('QTD').AsFloat), 8, 'D')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', DADOSMOVIMENTOF.CurvaABC.FieldByName('PRECO').AsFloat), 9, 'D')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', DADOSMOVIMENTOF.CurvaABC.FieldByName('QTD').AsFloat*DADOSMOVIMENTOF.CurvaABC.FieldByName('PRECO').AsFloat), 10, 'D')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', DADOSMOVIMENTOF.CurvaABC.FieldByName('PERCENTUAL').AsFloat), 5, 'D')+'%'
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', TotValo), 10, 'D')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', TotPerc), 6, 'D')+'%');
      if (TotPerc>=80) and (Clase<>'B') and (TotPerc>=80) and (Clase<>'A') then begin
        TextListBox1.Items.Add('-----------------------------------------------------------------------------------------------');
        TextListBox1.Items.Add('Total Classe A -------------------------------------------------------------------> '+DireiraEsquera(0, FormatFloat('###,##0.00', TotalCurvas), 10, 'D'));
        TextListBox1.Items.Add('-----------------------------------------------------------------------------------------------');
        TotalCurvas:=0;
        Clase:='A';
      end;
      if (TotPerc>=95) and (Clase<>'B') then begin
        TextListBox1.Items.Add('-----------------------------------------------------------------------------------------------');
        TextListBox1.Items.Add('Total Classe B -------------------------------------------------------------------> '+DireiraEsquera(0, FormatFloat('###,##0.00', TotalCurvas), 10, 'D'));
        TextListBox1.Items.Add('-----------------------------------------------------------------------------------------------');
        TotalCurvas:=0;
        Clase:='B';
      end;
      DADOSMOVIMENTOF.CurvaABC.Next;
    end;
    TextListBox1.Items.Add('-----------------------------------------------------------------------------------------------');
    TextListBox1.Items.Add('Total Classe C -------------------------------------------------------------------> '+DireiraEsquera(0, FormatFloat('###,##0.00', TotalCurvas), 10, 'D'));
    TextListBox1.Items.Add('-----------------------------------------------------------------------------------------------');
    TotalCurvas:=0;
    show;
    Button1.Click;
    close;
  end;
  MENSPROCF.Close;
end;

procedure TRelatoriosf.GeraEntradasSaidasPedidos(Tipo:string);
var CodPro:string;
    QuaTot,VrCusto,UltCodigo,TotalGeral,Vl_Tot:double;
begin
  inherited;
  MENSPROCF.Panel1.Caption :='AGUARDE UM MOMENTO - GERANDO A MOVIMENTAÇÃO !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;
  COMSAIPED.Open;
  if COVEPEGE<>'EntrSaid' then begin
    COMSAIPED.First;
    while not COMSAIPED.Eof do
      COMSAIPED.Delete;
  end;
  if (MaskEdit1.Text='') or (MaskEdit1.Text='         ') then begin
    ITCOMSAIPED.Open;
    ITCOMSAIPED.SQL.Clear;
    ITCOMSAIPED.SQL.Add('SELECT * FROM '+COVEPE+' WHERE ' +
      'EMISSAO>= :_dataini and EMISSAO<= :_dataFin order by CODIGO');
    ITCOMSAIPED.ParamByName('_dataini').asdatetime := datinie.Date;
    ITCOMSAIPED.ParamByName('_dataFin').asdatetime := DatFime.Date;
    ITCOMSAIPED.Open;
    ITCOMSAIPED.First;
  end
  else begin
    ITCOMSAIPED.Open;
    ITCOMSAIPED.SQL.Clear;
    ITCOMSAIPED.SQL.Add('SELECT * FROM '+COVEPE+' WHERE ' +
      'EMISSAO>= :_dataini and EMISSAO<= :_dataFin and Nota='+
      RetZero(MaskEdit1.Text,9)+' order by CODIGO');
    ITCOMSAIPED.ParamByName('_dataini').asdatetime := datinie.Date;
    ITCOMSAIPED.ParamByName('_dataFin').asdatetime := DatFime.Date;
    ITCOMSAIPED.Open;
    ITCOMSAIPED.First;
  end;
  TotalGeral:=0;
  while not ITCOMSAIPED.Eof do begin
    if CodPro<>ITCOMSAIPED.FieldByName('CODIGO').AsString then begin
      CodPro:=ITCOMSAIPED.FieldByName('CODIGO').AsString;
      QuaTot:=0;
      DADOSMOVIMENTOF.PRODUTOS.Close;
      DADOSMOVIMENTOF.PRODUTOS.SQL.Clear;
      DADOSMOVIMENTOF.PRODUTOS.SQL.Add('Select * from PRODUTOS where codigo like '+QuotedStr(CodPro));
      DADOSMOVIMENTOF.PRODUTOS.Open;
      COMSAIPED.Append;
    end
    else
      COMSAIPED.Edit;
    QuaTot:=QuaTot+ITCOMSAIPED.FieldByName('QTD').AsFloat;
    COMSAIPED.FieldByName('CODIGO').AsString:=CodPro;
    COMSAIPED.FieldByName('QTD').AsFloat:=QuaTot;
    COMSAIPED.FieldByName('DESCRICAO').AsString:=DADOSMOVIMENTOF.PRODUTOS.FieldByName('NOME').AsString;
    if COVEPE<>'ITEVENDAS' then
      COMSAIPED.FieldByName('PRECO').AsFloat:=DADOSMOVIMENTOF.PRODUTOS.FieldByName('ULTIMO_PRECO').AsFloat
    else
      COMSAIPED.FieldByName('PRECO').AsFloat:=DADOSMOVIMENTOF.PRODUTOS.FieldByName('PRECO_CONS').AsFloat;
    COMSAIPED.FieldByName('TOTAL').AsFloat:=COMSAIPED.FieldByName('QTD').AsFloat*
    COMSAIPED.FieldByName('PRECO').AsFloat;
    if COVEPEGE='EntrSaid' then
      COMSAIPED.FieldByName('PERCENTUAL').AsFloat:=2;
    if COVEPE='ITEVENDAS' then
      COMSAIPED.FieldByName('PERCENTUAL').AsFloat:=3;
    if COMSAIPED.FieldByName('TOTAL').AsFloat=0 then
      COMSAIPED.Cancel
    else begin
      COMSAIPED.Post;
    end;
    CodPro:=ITCOMSAIPED.FieldByName('CODIGO').AsString;
    if ITCOMSAIPED.Eof then
      break;
    ITCOMSAIPED.Next;
  end;
  MENSPROCF.Close;
end;

Procedure TRelatoriosf.RelEntradasSaidasPedidos(Tipo:string);
var Clase:string;
    Quantidade:integer;
    TotValo,TotPerc,TotalCurvas:double;
begin
  with TVISUALIZACAOF.Create(Self) do begin
    COMSAIPED.SQL.Clear;
    COMSAIPED.SQL.Add('SELECT * FROM '+COVEPEGE+' order by DESCRICAO');
    COMSAIPED.Open;
    COMSAIPED.First;
    Quantidade:=0;
    while not COMSAIPED.Eof do  begin
      Quantidade:=Quantidade+1;
      COMSAIPED.Next;
    end;
    COMSAIPED.First;
    if COVEPE='ITECOMPRAS' then
      TextListBox1.Items.Add('Relatorio de Entradas de '+datinie.Text+' a '+DatFime.Text);
    if COVEPE='ITEVENDAS' then
      TextListBox1.Items.Add('Relatorio de Saídas de '+datinie.Text+' a '+DatFime.Text);
    if COVEPE='ITEPEDIDOS' then
      TextListBox1.Items.Add('Relatorio de Pedidos de '+datinie.Text+' a '+DatFime.Text);
    TextListBox1.Items.Add('------------------------------------------------------------------------------');
    TextListBox1.Items.Add('*Cod.* *---------Descrição---------* *--Qtd--* *-Valor* *-Vl Total-* *Tot.Acu*');
    TextListBox1.Items.Add('------------------------------------------------------------------------------');
    while not COMSAIPED.Eof do  begin
      TotPerc:=TotPerc+COMSAIPED.FieldByName('PERCENTUAL').AsFloat;
      TotValo:=TotValo+(COMSAIPED.FieldByName('QTD').AsFloat*COMSAIPED.FieldByName('PRECO').AsFloat);
      TotalCurvas:=TotalCurvas+(COMSAIPED.FieldByName('QTD').AsFloat*COMSAIPED.FieldByName('PRECO').AsFloat);
      TextListBox1.Items.Add(DireiraEsquera(0, COMSAIPED.FieldByName('CODIGO').AsString, 6,'D')
      +' '+DireiraEsquera(0, Copy(COMSAIPED.FieldByName('DESCRICAO').AsString,1,30), 30,'E')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', COMSAIPED.FieldByName('QTD').AsFloat), 8, 'D')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', COMSAIPED.FieldByName('PRECO').AsFloat), 9, 'D')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', COMSAIPED.FieldByName('QTD').AsFloat*COMSAIPED.FieldByName('PRECO').AsFloat), 10, 'D')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', TotValo), 10, 'D'));
      COMSAIPED.Next;
    end;
    show;
    Button1.Click;
    close;
  end;
  MENSPROCF.Close;
end;

Procedure TRelatoriosf.RelEntradasSaidas(Tipo:string);
var Clase,EntradaSaidaVenda:string;
    Quantidade:integer;
    TotValo,TotPerc,TotalCurvas:double;
begin
  with TVISUALIZACAOF.Create(Self) do begin
    COMSAIPED.SQL.Clear;
    COMSAIPED.SQL.Add('SELECT * FROM '+COVEPEGE+' order by DESCRICAO');
    COMSAIPED.Open;
    COMSAIPED.First;
    Quantidade:=0;
    while not COMSAIPED.Eof do  begin
      Quantidade:=Quantidade+1;
      COMSAIPED.Next;
    end;
    COMSAIPED.First;
    TextListBox1.Items.Add('Relatorio de Entradas e Saídas de '+datinie.Text+' a '+DatFime.Text);
    TextListBox1.Items.Add('-----------------------------------------------------------------------------');
    TextListBox1.Items.Add('*Cod.* *---------Descrição---------* *--Qtd--* *-Valor* *-Vl Total-* EntSaiVe');
    TextListBox1.Items.Add('-----------------------------------------------------------------------------');
    while not COMSAIPED.Eof do  begin
      if COMSAIPED.FieldByName('PERCENTUAL').AsFloat=1 then
        EntradaSaidaVenda:='Caixa';
      if COMSAIPED.FieldByName('PERCENTUAL').AsFloat=2 then
        EntradaSaidaVenda:='Entrada';
      if COMSAIPED.FieldByName('PERCENTUAL').AsFloat=3 then
        EntradaSaidaVenda:='Saida';
      TotPerc:=TotPerc+COMSAIPED.FieldByName('PERCENTUAL').AsFloat;
      TotValo:=TotValo+(COMSAIPED.FieldByName('QTD').AsFloat*COMSAIPED.FieldByName('PRECO').AsFloat);
      TotalCurvas:=TotalCurvas+(COMSAIPED.FieldByName('QTD').AsFloat*COMSAIPED.FieldByName('PRECO').AsFloat);
      TextListBox1.Items.Add(DireiraEsquera(0, COMSAIPED.FieldByName('CODIGO').AsString, 6,'D')
      +' '+DireiraEsquera(0, Copy(COMSAIPED.FieldByName('DESCRICAO').AsString,1,30), 30,'E')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', COMSAIPED.FieldByName('QTD').AsFloat), 8, 'D')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', COMSAIPED.FieldByName('PRECO').AsFloat), 9, 'D')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', COMSAIPED.FieldByName('QTD').AsFloat*COMSAIPED.FieldByName('PRECO').AsFloat), 10, 'D')
      +' '+DireiraEsquera(0, EntradaSaidaVenda, 9, 'D'));
      COMSAIPED.Next;
    end;
    show;
    Button1.Click;
    close;
  end;
  MENSPROCF.Close;
end;

procedure TRelatoriosf.GeraVendasGeral;
var CodPro:string;
    QuaTot,VrCusto,UltCodigo,TotalGeral,Vl_Tot:double;
begin
  inherited;
  MENSPROCF.Panel1.Caption :='AGUARDE UM MOMENTO - GERANDO TODAS AS VENDAS !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;
  DADOSMOVIMENTOF.EntrSaid.Open;
  DADOSMOVIMENTOF.EntrSaid.First;
  while not DADOSMOVIMENTOF.EntrSaid.Eof do
    DADOSMOVIMENTOF.EntrSaid.Delete;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.Open;

  DADOSMOVIMENTOF.ITEVENDAS_ECF2.SQL.Clear;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.SQL.Add('SELECT * FROM ITEVENDAS_ECF2 WHERE ' +
    'DATA>= :_dataini and DATA<= :_dataFin and CANCELADO<>1 order by CODIGO');
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.ParamByName('_dataini').asdatetime :=datinie.Date;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.ParamByName('_dataFin').asdatetime :=DatFime.Date;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.Open;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.First;
  TotalGeral:=0;
  while not DADOSMOVIMENTOF.ITEVENDAS_ECF2.Eof do begin
    if CodPro<>DADOSMOVIMENTOF.ITEVENDAS_ECF2.FieldByName('CODIGO').AsString then begin
      CodPro:=DADOSMOVIMENTOF.ITEVENDAS_ECF2.FieldByName('CODIGO').AsString;
      QuaTot:=0;
      DADOSMOVIMENTOF.PRODUTOS.Close;
      DADOSMOVIMENTOF.PRODUTOS.SQL.Clear;
      DADOSMOVIMENTOF.PRODUTOS.SQL.Add('Select * from PRODUTOS where codigo like '+QuotedStr(CodPro));
      DADOSMOVIMENTOF.PRODUTOS.Open;
      DADOSMOVIMENTOF.EntrSaid.Append;
    end
    else
      DADOSMOVIMENTOF.EntrSaid.Edit;
    QuaTot:=QuaTot+DADOSMOVIMENTOF.ITEVENDAS_ECF2.FieldByName('QTD').AsFloat;
    DADOSMOVIMENTOF.EntrSaid.FieldByName('CODIGO').AsString:=CodPro;
    DADOSMOVIMENTOF.EntrSaid.FieldByName('QTD').AsFloat:=DADOSMOVIMENTOF.EntrSaid.FieldByName('QTD').AsFloat+
    DADOSMOVIMENTOF.ITEVENDAS_ECF2.FieldByName('QTD').AsFloat;
    DADOSMOVIMENTOF.EntrSaid.FieldByName('DESCRICAO').AsString:=DADOSMOVIMENTOF.PRODUTOS.FieldByName('NOME').AsString;
    DADOSMOVIMENTOF.EntrSaid.FieldByName('PRECO').AsFloat:=DADOSMOVIMENTOF.PRODUTOS.FieldByName('PRECO_CONS').AsFloat;
    DADOSMOVIMENTOF.EntrSaid.FieldByName('TOTAL').AsFloat:=DADOSMOVIMENTOF.EntrSaid.FieldByName('QTD').AsFloat*
    DADOSMOVIMENTOF.EntrSaid.FieldByName('PRECO').AsFloat;
    DADOSMOVIMENTOF.EntrSaid.FieldByName('PERCENTUAL').AsFloat:=1;
    if DADOSMOVIMENTOF.EntrSaid.FieldByName('TOTAL').AsFloat=0 then
      DADOSMOVIMENTOF.EntrSaid.Cancel
    else begin
      DADOSMOVIMENTOF.EntrSaid.Post;
    end;
    CodPro:=DADOSMOVIMENTOF.ITEVENDAS_ECF2.FieldByName('CODIGO').AsString;
    if DADOSMOVIMENTOF.ITEVENDAS_ECF2.Eof then
      break;
    DADOSMOVIMENTOF.ITEVENDAS_ECF2.Next;
  end;
  MENSPROCF.Close;
end;

Procedure TRelatoriosf.RelEntradasSaidasPedidos2(Tipo:string);
var TotValo,TotPerc,TotalCurvas:double;
begin
  with TVISUALIZACAOF.Create(Self) do begin
    TextListBox1.Items.Add(DireiraEsquera(0, 'Nota.: '+DADOSMOVIMENTOF.COMPRAS.FieldByName('NOTA').AsString, 6,'D')
    +' '+DireiraEsquera(0, 'Data.: '+DADOSMOVIMENTOF.COMPRAS.FieldByName('EMISSAO').AsString, 17,'E')
    +' '+DireiraEsquera(0, 'Codi.: '+DADOSMOVIMENTOF.COMPRAS.FieldByName('FORNECEDOR').AsString, 10,'E')
    +' '+DireiraEsquera(0, 'Fornecedor.: '+Copy(DADOSMOVIMENTOF.COMPRAS.FieldByName('Descrição').AsString,1,30), 43,'E'));
    DADOSMOVIMENTOF.ITECOMPRAS.First;
    TextListBox1.Items.Add('------------------------------------------------------------------------------');
    TextListBox1.Items.Add('*Cod.* *---------Descrição---------* *--Qtd--* *-Valor* *-Vl Total-* *Tot.Acu*');
    TextListBox1.Items.Add('------------------------------------------------------------------------------');
    while not DADOSMOVIMENTOF.ITECOMPRAS.Eof do  begin
      TotValo:=TotValo+(DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('QTD').AsFloat*DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').AsFloat);
      TotalCurvas:=TotalCurvas+(DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('QTD').AsFloat*DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').AsFloat);
      TextListBox1.Items.Add(DireiraEsquera(0, DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsString, 6,'D')
      +' '+DireiraEsquera(0, Copy(DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('Descrição').AsString,1,30), 30,'E')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('QTD').AsFloat), 8, 'D')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').AsFloat), 9, 'D')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('QTD').AsFloat*DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').AsFloat), 10, 'D')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', TotValo), 10, 'D'));
      DADOSMOVIMENTOF.ITECOMPRAS.Next;
    end;
    show;
    Button1.Click;
    close;
  end;
end;

procedure TRelatoriosf.CadastroParaRelatorio;
var produto_do_relatorio:string;
begin
  produto_do_relatorio:='PRODUTOS';
  produto_do_relatorio:=Label6.Caption;

  // from '+produto_do_relatorio+'
  // from PRODUTOS


  if CheckBox5.Checked=false then begin
    DADOS_CONSULTASF.PRODUTOS.Close;
    DADOS_CONSULTASF.PRODUTOS.SQL.Clear;
    if CheckBox6.Checked=false then begin
      if RadioButton1.Checked=true then
        DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from '+produto_do_relatorio+' Order by codigo')
      else
        DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from '+produto_do_relatorio+' Order by Nome');
      DADOS_CONSULTASF.PRODUTOS.Open;
    end
    else begin
      ConsultaGRUPO;
      if RadioButton1.Checked=true then
        DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from '+produto_do_relatorio+' WHERE GRUPO='+CodigoConsulta+' Order by codigo')
      else
        DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from '+produto_do_relatorio+' WHERE GRUPO='+CodigoConsulta+' Order by Nome');
      DADOS_CONSULTASF.PRODUTOS.Open;
    end;
  end
  else begin
    ConsultaProdutos;
    DADOS_CONSULTASF.PRODUTOS.Close;
    DADOS_CONSULTASF.PRODUTOS.SQL.Clear;
    if RadioButton1.Checked=true then begin
      if CheckBox6.Checked=false then begin
        if FiltroInicio='Inicio' then begin
          DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from '+produto_do_relatorio+' WHERE UPPER(Nome) LIKE :N Order by codigo');
          DADOS_CONSULTASF.PRODUTOS.ParamByName('N').AsString := AnsiUpperCase(DescricaoEstaticaX)+'%';
        end
        else begin
          DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from '+produto_do_relatorio+' WHERE UPPER(Nome) LIKE :N Order by codigo');
          DADOS_CONSULTASF.PRODUTOS.ParamByName('N').AsString := '%'+AnsiUpperCase(DescricaoEstaticaX)+'%';
        end;
      end
      else begin
        ConsultaGRUPO;
        if FiltroInicio='Inicio' then begin
          DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from '+produto_do_relatorio+' WHERE UPPER(Nome) GRUPO='+CodigoConsulta+' AND LIKE :N Order by codigo');
          DADOS_CONSULTASF.PRODUTOS.ParamByName('N').AsString := AnsiUpperCase(DescricaoEstaticaX)+'%';
        end
        else begin
          DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from '+produto_do_relatorio+' WHERE GRUPO='+CodigoConsulta+' AND UPPER(Nome) LIKE :N Order by codigo');
          DADOS_CONSULTASF.PRODUTOS.ParamByName('N').AsString := '%'+AnsiUpperCase(DescricaoEstaticaX)+'%';
        end;
      end;
    end
    else begin
      if CheckBox6.Checked=false then begin
        if FiltroInicio='Inicio' then begin
          DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from '+produto_do_relatorio+' WHERE UPPER(Nome) LIKE :N Order by Nome');
          DADOS_CONSULTASF.PRODUTOS.ParamByName('N').AsString := AnsiUpperCase(DescricaoEstaticaX)+'%';
        end
        else begin
          DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from '+produto_do_relatorio+' WHERE UPPER(Nome) LIKE :N Order by Nome');
          DADOS_CONSULTASF.PRODUTOS.ParamByName('N').AsString := '%'+AnsiUpperCase(DescricaoEstaticaX)+'%';
        end;
      end
      else begin
        ConsultaGRUPO;
        if FiltroInicio='Inicio' then begin
          DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from '+produto_do_relatorio+' WHERE GRUPO='+CodigoConsulta+' AND UPPER(Nome) LIKE :N Order by Nome');
          DADOS_CONSULTASF.PRODUTOS.ParamByName('N').AsString := AnsiUpperCase(DescricaoEstaticaX)+'%';
        end
        else begin
          DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from '+produto_do_relatorio+' WHERE GRUPO='+CodigoConsulta+' AND UPPER(Nome) LIKE :N Order by Nome');
          DADOS_CONSULTASF.PRODUTOS.ParamByName('N').AsString := '%'+AnsiUpperCase(DescricaoEstaticaX)+'%';
        end;
      end;
    end;
    DADOS_CONSULTASF.PRODUTOS.Open;
  end;
  DescricaoEstatica:='';
end;

end.



