unit GERAL3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Mestre, NxNotebook6, NxControls6,
  NxCollection6, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.Buttons, cxStyles,
  cxClasses, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxGridLevel, cxGridDBChartView, cxGridDBCardView, cxGridDBBandedTableView,
  cxGridChartView, cxGridCustomLayoutView, cxGridCardView,
  cxGridBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, RxToolEdit, Vcl.DBCtrls, MemDS,
  DBAccess, Uni;

type
  TGERAL3F = class(TMestre_FRM)
    NxNotebook61: TNxNotebook6;
    ContasaRecebereRecebidas: TNxNotebookSheet6;
    ContasaRecebereRecebidasnoDia: TNxNotebookSheet6;
    Compras: TNxNotebookSheet6;
    ComprasFornecedores: TNxNotebookSheet6;
    ComprasProduto: TNxNotebookSheet6;
    VendasProduto: TNxNotebookSheet6;
    comissao: TNxNotebookSheet6;
    RetiradasSuprimentos: TNxNotebookSheet6;
    NxNotebookSheet69: TNxNotebookSheet6;
    NxNotebookSheet610: TNxNotebookSheet6;
    Panel7: TPanel;
    Button37: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Panel10: TPanel;
    Panel15: TPanel;
    BitBtn2: TBitBtn;
    BitBtn16: TBitBtn;
    MaskEdit4: TMaskEdit;
    Inadimplentes: TNxNotebookSheet6;
    NxNotebookSheet612: TNxNotebookSheet6;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    cxGrid5: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBTableView6Column1: TcxGridDBColumn;
    cxGridDBTableView6Column2: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridBandedTableView3: TcxGridBandedTableView;
    cxGridBandedColumn5: TcxGridBandedColumn;
    cxGridBandedColumn6: TcxGridBandedColumn;
    cxGridCardView3: TcxGridCardView;
    cxGridChartView3: TcxGridChartView;
    cxGridTableView3: TcxGridTableView;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridDBCardView3: TcxGridDBCardView;
    cxGridDBChartView3: TcxGridDBChartView;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    Panel13: TPanel;
    Panel14: TPanel;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    RadioGroup2: TRadioGroup;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    fd: TCheckBox;
    cxGrid9: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBTableView9DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView9ITEM: TcxGridDBColumn;
    cxGridDBTableView9Column3: TcxGridDBColumn;
    cxGridDBTableView9Column2: TcxGridDBColumn;
    cxGridDBTableView9Column1: TcxGridDBColumn;
    cxGridDBTableView9BARRAS: TcxGridDBColumn;
    cxGridDBTableView9QTD: TcxGridDBColumn;
    cxGridDBTableView9PRECO: TcxGridDBColumn;
    cxGridDBTableView9TOTAL: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    NxNotebookSheet61: TNxNotebookSheet6;
    NxNotebookSheet62: TNxNotebookSheet6;
    NxNotebookSheet63: TNxNotebookSheet6;
    NxNotebookSheet613: TNxNotebookSheet6;
    NxNotebookSheet614: TNxNotebookSheet6;
    ConsultaVeiculosx: TNxNotebookSheet6;
    NxNotebookSheet616: TNxNotebookSheet6;
    NxNotebookSheet617: TNxNotebookSheet6;
    Panel16: TPanel;
    Panel18: TPanel;
    Label72: TLabel;
    ComboEdit9: TComboEdit;
    Button1: TButton;
    Panel20: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3NOTA: TcxGridDBColumn;
    cxGridDBTableView3ITEM: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView3CODIGO: TcxGridDBColumn;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3BARRAS: TcxGridDBColumn;
    cxGridDBTableView3QTD: TcxGridDBColumn;
    cxGridDBTableView3PRECO: TcxGridDBColumn;
    cxGridDBTableView3TOTAL: TcxGridDBColumn;
    cxGridBandedTableView2: TcxGridBandedTableView;
    cxGridBandedColumn3: TcxGridBandedColumn;
    cxGridBandedColumn4: TcxGridBandedColumn;
    cxGridCardView2: TcxGridCardView;
    cxGridChartView2: TcxGridChartView;
    cxGridTableView2: TcxGridTableView;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBCardView2: TcxGridDBCardView;
    cxGridDBChartView2: TcxGridDBChartView;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridBandedTableView1: TcxGridBandedTableView;
    cxGridBandedColumn1: TcxGridBandedColumn;
    cxGridBandedColumn2: TcxGridBandedColumn;
    cxGridCardView1: TcxGridCardView;
    cxGridChartView1: TcxGridChartView;
    cxGridTableView1: TcxGridTableView;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridDBChartView1: TcxGridDBChartView;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    Panel17: TPanel;
    Panel19: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel21: TPanel;
    Panel22: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel23: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    datini: TDateEdit;
    DatFim: TDateEdit;
    BitBtn5: TBitBtn;
    Panel24: TPanel;
    Label39: TLabel;
    ComboEdit1: TComboEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    CheckBox4: TCheckBox;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    Panel102: TPanel;
    Panel101: TPanel;
    Panel104: TPanel;
    Panel103: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;
    Panel49: TPanel;
    Panel50: TPanel;
    Panel51: TPanel;
    Panel52: TPanel;
    Label43: TLabel;
    Datinix: TLabel;
    BitBtn6: TBitBtn;
    ComboEdit2: TComboEdit;
    ComboEdit3: TComboEdit;
    Panel53: TPanel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Panel54: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    BitBtn10: TBitBtn;
    GroupBox5: TGroupBox;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    Panel55: TPanel;
    Panel56: TPanel;
    Panel57: TPanel;
    Panel58: TPanel;
    Panel59: TPanel;
    Panel60: TPanel;
    Panel61: TPanel;
    Panel62: TPanel;
    Panel63: TPanel;
    Panel64: TPanel;
    Panel65: TPanel;
    Panel66: TPanel;
    Panel67: TPanel;
    Panel68: TPanel;
    Panel69: TPanel;
    Panel70: TPanel;
    Panel71: TPanel;
    Panel72: TPanel;
    Panel73: TPanel;
    Panel74: TPanel;
    Panel75: TPanel;
    Panel76: TPanel;
    Panel77: TPanel;
    Panel78: TPanel;
    Panel79: TPanel;
    Panel80: TPanel;
    Panel81: TPanel;
    Panel82: TPanel;
    Panel83: TPanel;
    Panel84: TPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGrid4: TcxGrid;
    cxGridDBTableView100: TcxGridDBTableView;
    cxGridDBTableView100NUMERO: TcxGridDBColumn;
    cxGridDBTableView100ORDEM: TcxGridDBColumn;
    cxGridDBTableView100EMISSAO: TcxGridDBColumn;
    cxGridDBTableView100VENCIMENTO: TcxGridDBColumn;
    cxGridDBTableView100Column1: TcxGridDBColumn;
    cxGridDBTableView100RECEBIMENTO: TcxGridDBColumn;
    cxGridDBTableView100VALOR_RECEBIDO: TcxGridDBColumn;
    cxGridDBTableView100VALOR: TcxGridDBColumn;
    cxGridDBTableView100Column2: TcxGridDBColumn;
    cxGrid1BandedTableView1: TcxGridBandedTableView;
    cxGrid1BandedTableView1Column1: TcxGridBandedColumn;
    cxGrid1BandedTableView1Column2: TcxGridBandedColumn;
    cxGrid1CardView1: TcxGridCardView;
    cxGrid1ChartView1: TcxGridChartView;
    cxGrid1TableView1: TcxGridTableView;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    Panel25: TPanel;
    Panel85: TPanel;
    Panel86: TPanel;
    Panel87: TPanel;
    cxGridDBTableView9Column4: TcxGridDBColumn;
    Panel88: TPanel;
    Panel89: TPanel;
    Panel90: TPanel;
    Panel91: TPanel;
    Panel92: TPanel;
    Panel93: TPanel;
    Panel94: TPanel;
    Panel95: TPanel;
    cxGrid6: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridDBTableView10Column1: TcxGridDBColumn;
    cxGridDBTableView10Column2: TcxGridDBColumn;
    cxGridDBTableView10FORMADEPAGAMENTO: TcxGridDBColumn;
    cxGridDBTableView10TOTALPAGO: TcxGridDBColumn;
    cxGridDBTableView10VALOR: TcxGridDBColumn;
    cxGridDBTableView10TROCO: TcxGridDBColumn;
    cxGridDBTableView10AVISTAPRAZO: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    cxGridDBTableView10Column3: TcxGridDBColumn;
    Panel96: TPanel;
    Panel97: TPanel;
    Panel98: TPanel;
    cxGrid7: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridBandedTableView4: TcxGridBandedTableView;
    cxGridBandedColumn7: TcxGridBandedColumn;
    cxGridBandedColumn8: TcxGridBandedColumn;
    cxGridCardView4: TcxGridCardView;
    cxGridChartView4: TcxGridChartView;
    cxGridTableView4: TcxGridTableView;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBCardView4: TcxGridDBCardView;
    cxGridDBChartView4: TcxGridDBChartView;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    Panel99: TPanel;
    Panel100: TPanel;
    Panel105: TPanel;
    Panel106: TPanel;
    Panel107: TPanel;
    Panel108: TPanel;
    Panel109: TPanel;
    Panel110: TPanel;
    Panel111: TPanel;
    Panel112: TPanel;
    Panel113: TPanel;
    Panel114: TPanel;
    ComboEdit4: TComboEdit;
    Label4: TLabel;
    Button5: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Panel115: TPanel;
    Label1: TLabel;
    ComboEdit5: TComboEdit;
    SUB_HIST: TUniTable;
    SUB_HISTCODIGO: TIntegerField;
    SUB_HISTNOME: TStringField;
    SUB_HISTHISTORIC: TIntegerField;
    procedure Button40Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure ComboEdit9ButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure ComboEdit1Change(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure ComboEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn8Click(Sender: TObject);
    procedure ComboEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboEdit2ButtonClick(Sender: TObject);
    procedure ComboEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure ComboEdit3ButtonClick(Sender: TObject);
    procedure ComboEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ComboEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ComboEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboEdit5Exit(Sender: TObject);
  private
    procedure EstatisticadeVendas;
    procedure Aniversariantes;
    procedure Pesquisa;
    procedure ComissaoPorVendas;
    procedure RetiSupri;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GERAL3F: TGERAL3F;
  vMesAno,ServicoProduto:string;

implementation

uses
  Cadastros, PREVIEW, DADOS_CADASTROS, DADOSFRENTE, FUNCOES, FUNCOESUNIDAC,
  dadosFinaceiro, DADOSMOVIMENTO, DADOS_CONSULTAS, FUNCOESGERAIS,
  FUNCAORELATORIOS, CAD_MANUTENCAO, Principal;

{$R *.dfm}

procedure TGERAL3F.BitBtn10Click(Sender: TObject);
begin
  inherited;
  DateEdit3.Date:=DateEdit2.Date;
end;

procedure TGERAL3F.BitBtn17Click(Sender: TObject);
begin
  inherited;
  Aniversariantes;
end;

procedure TGERAL3F.Aniversariantes;
  var Pag ,nLin, dias: Integer;
    Tipo, DataNascimento, xxx : String;
  procedure Cabecalho;
  begin
    Imp_InicializaPagina;
    Imp_Linha(01, 00, DADOS_CADASTROSf.EMITENTE.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString , 6, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
    Imp_Linha(00, 01, TimetoStr(Time), 8, 'E');
    Imp_Linha(00, 29, 'Folha', 6, 'E');
    Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
    Imp_Linha(01, 00, Padc('RELATORIO DE ANIVERSARIANTES',57), 57, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 57), 57, 'E');
    Imp_Linha(01, 00, 'COD.* *-----N O M E   D O   C L I E N T E----* *--DATA--*', 80, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 57), 57, 'E');
    nLin:=nLin + 7;
  end;
begin
  DADOSMOVIMENTOF.CLIENTES_REL.Close;
  DADOSMOVIMENTOF.CLIENTES_REL.Open;
  DADOSMOVIMENTOF.CLIENTES_REL.Filter:='DTNASC <> null';
  DADOSMOVIMENTOF.CLIENTES_REL.Filtered:=true;
  DADOSMOVIMENTOF.CLIENTES_REL.First;
  Tipo:='RAW';   // Dica: Imprime com matricial Epson mais rápido
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    nLin:=0;
    Pag :=1;
    if RadioButton10.Checked=true then
      dias:=7;
    if RadioButton9.Checked=true then
      dias:=30;
    if RadioButton11.Checked=true then
      dias:=366;
    while not DADOSMOVIMENTOF.CLIENTES_REL.Eof do begin
      if nLin=0 then
        Cabecalho;
      if DADOSMOVIMENTOF.CLIENTES_REL.FieldByName('DTNASC').AsDateTime<>0 then begin
        if Copy(DADOSMOVIMENTOF.CLIENTES_REL.FieldByName('DTNASC').AsString,1,6)='29/02/' then
          DataNascimento:='28/02/'+Copy(DateToStr(date),7,4)
        else
          DataNascimento:=Copy(DADOSMOVIMENTOF.CLIENTES_REL.FieldByName('DTNASC').AsString,1,6)+Copy(DateToStr(date),7,4)
      end
      else
        DataNascimento:='';
      if DADOSMOVIMENTOF.CLIENTES_REL.FieldByName('CODIGO').AsString='00840' then
        xxx :='x';
      if DataNascimento<>'' then
        if (RadioButton11.Checked) then begin
          Imp_Linha(01, 00, DADOSMOVIMENTOF.CLIENTES_REL.FieldByName('CODIGO').AsString, 3, 'E');
          Imp_Linha(00, 01, DADOSMOVIMENTOF.CLIENTES_REL.FieldByName('NOME').AsString, 40, 'E');
          Imp_Linha(00, 01, DADOSMOVIMENTOF.CLIENTES_REL.FieldByName('DTNASC').AsString, 10, 'E');
          Inc( nLin );
        end
        else if ((date+dias-StrToDate(DataNascimento))<dias) and (date+dias-StrToDate(DataNascimento)>0) or (date=StrToDate(DataNascimento)) then begin
          Imp_Linha(01, 00, DADOSMOVIMENTOF.CLIENTES_REL.FieldByName('CODIGO').AsString, 3, 'E');
          Imp_Linha(00, 01, DADOSMOVIMENTOF.CLIENTES_REL.FieldByName('NOME').AsString, 40, 'E');
          Imp_Linha(00, 01, DADOSMOVIMENTOF.CLIENTES_REL.FieldByName('DTNASC').AsString, 10, 'E');
          Inc( nLin );
        end;
      if nLin >= 60 then begin
        if TelaImpressora='I' then
          Imp_Linha(01, 15, DCondensa2+ACondensa5+ASubScript+'EJOC SISTEMAS -  TRAVESSA DA APARECIDA, 228, CENTRO, CEP 37.190-000, TRÊS PONTAS, MG - FONE/FAX: 35-98849-1204'+DCondensa5+DSupScript, 6, 'E');
        // if TelaImpressora='I' then
          Imp_Ejeta;
        nLin:=0;
        Pag :=Pag+1;
      end;
      DADOSMOVIMENTOF.CLIENTES_REL.Next;
    end;
    // if not CONFIGF.DBCheckBox1.Checked then
    Imp_Ejeta;
    Imp_Fim
  end;
end;

procedure TGERAL3F.BitBtn2Click(Sender: TObject);
begin
  inherited;
  EstatisticadeVendas;
end;

procedure TGERAL3F.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if CheckBox4.Checked=false then begin
    if ComboEdit1.Text='' then begin
      ShowMessage('Informe o Venddedor !!!');
      ComboEdit1.SetFocus;
    end
    else
      ComissaoPorVendas;
  end
  else
    ComissaoPorVendas;
end;

procedure TGERAL3F.ComissaoPorVendas;
var
  Pag ,nLin : Integer;
  Tipo, Pedido, CodCliente, DataEmissao, DataVencimento : String;
  TotPedido, PerComissao, TotalGeral, TotalComissao, TotalGeralTodos, TotalComissaoTodos : Double;
  procedure Cabecalho;
  begin
    Definevarpubl();
    Imp_InicializaPagina;
    DADOS_CADASTROSf.EMITENTE.Open;
    Imp_Linha(01, 00, ACondensa4+DADOS_CADASTROSf.EMITENTE.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString , 6, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
    Imp_Linha(00, 01, TimetoStr(Time), 8, 'E');
    Imp_Linha(00, 96, 'Folha', 06, 'E');
    Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
    Imp_Linha(01, 00, PADC('RELATORIO DE COMISSOES DE '+datini.Text+' A '+DatFim.Text,123) , 42, 'E');
    // Imp_Linha(01, 00, StringOfChar('-', 135), 135, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 124), 124, 'E');
    Imp_Linha(01, 00, 'VENDEDOR.: '+DADOS_CADASTROSf.VENDEDORES_Drop2.FieldByName('CODIGO').AsString+' - '+DADOS_CADASTROSf.VENDEDORES_Drop2.FieldByName('NOME').AsString, 115, 'E');
    // Imp_Linha(01, 00, 'VENDEDOR.: '+DADOS_CADASTROSf.VENDEDORES_REL.FieldByName('CODIGO').AsString+' - '+DADOS_CADASTROSf.VENDEDORES_REL.FieldByName('NOME').AsString, 115, 'E');
    // Imp_Linha(01, 00, StringOfChar('-', 135), 135, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 124), 124, 'E');
    Imp_Linha(01, 00, 'PEDIDO   *-----------------------------CLIENTE-------------------------------*    VLR.PEDIDO PERCENT.    COMISSAO    EMISSAO', 124, 'E');
//  VENCIMENTO
    // Imp_Linha(01, 00, StringOfChar('-', 135), 135, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 124), 124, 'E');
    nLin:=nLin+8;
  end;

  procedure ComissaoVendedor;
  begin
    nLin:=0;
    // DataModule5.ITEVENDAS_ECF2_Rel.Open;
    // DataModule5.ITEVENDAS_ECF2_Rel.Filter:='';
    // DataModule5.ITEVENDAS_ECF2_Rel.Filtered:=false;
    // DataModule5.ITEVENDAS_ECF2_Rel.IndexFieldNames:='VE_CODVEN;VE_DATEMI;VE_LANCAM;VE_CAIXA;VE_CODPER;VE_CODPRO';
    // DataModule5.ITEVENDAS_ECF2_Rel.Filter:='VE_DATEMI>='+QuotedStr(Datini.Text)+' and VE_DATEMI<='+QuotedStr(DatFim.Text)+' and VE_CODVEN='+QuotedStr(ComboEdit1.Text);
    // DataModule5.ITEVENDAS_ECF2_Rel.Filtered := true;

    // FiltroItensCupomRelatorio(CodigoVendedor:string;DataInicial,DataFinal:tdatetime);
    // FiltroItensCupomRelatorio(ComboEdit1.Text,datini.Date,DatFim.Date);
    FiltroItensCupomRelatorio(DADOS_CADASTROSf.VENDEDORES_Drop2.FieldByName('CODIGO').AsString,datini.Date,DatFim.Date);

    DADOSFRENTEf.ITEVENDAS_ECF2_Rel.First;
    if not DADOSFRENTEf.ITEVENDAS_ECF2_Rel.IsEmpty then begin
      Pag:=1;
      while true do begin
        if nLin = 0 then
          Cabecalho;
        Pedido:=DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('CUPOM').AsString;
        CodCliente:=DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('CLIENTE').AsString;
        TotPedido:=TotPedido+(DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('TOTAL').AsFloat);
        {
        if DADOSFRENTEf.CONF_PADRAO.FieldByName('EM_RAMO').AsString='FABRICA DE VELAS' then
          PerComissao:=DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('VE_COMISS').AsFloat
        else
        }
        DADOSFRENTEf.CONF_PADRAO.Open;
        PerComissao:=DADOSFRENTEf.CONF_PADRAO.FieldByName('PORCPRO').AsFloat;

        DataEmissao:=DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('DATA').AsString;
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Next;
        if (Pedido<>DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('CUPOM').AsString) or (DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Eof) then begin
          DADOSFRENTEf.CLIENTES_REL.Locate('CODIGO',CodCliente,[]);
          // DADOSFRENTEf.VENDAS_ECF2_REL.SetRange([Pedido,DataEmissao],[Pedido,DataEmissao]);
          if not DADOSFRENTEf.VENDAS_ECF2_REL.IsEmpty then begin
            while not DADOSFRENTEf.VENDAS_ECF2_REL.Eof do begin
              DataVencimento:=DADOSFRENTEf.VENDAS_ECF2_REL.FieldByName('DATA').AsString;
              DADOSFRENTEf.VENDAS_ECF2_REL.Next;
            end;
          end
          else
            DataVencimento:='  /  /    ';
          Imp_Linha(01, 00, Pedido,7, 'E');

          // Imp_Linha(00, 02, CodCliente+'-'+DADOSFRENTEf.CLIENTES_REL.FieldByName('NOME').AsString,44, 'E');
          Imp_Linha(00, 02, DireiraEsquera(0, CodCliente, 5, 'D')+'-'+copy(DADOSFRENTEf.CLIENTES_REL.FieldByName('NOME').AsString,1,38),44, 'E');
          Imp_Linha(00, 00, '-'+DADOSFRENTEf.CLIENTES_REL.FieldByName('CIDADE').AsString,22, 'E');
          Imp_Linha(00, 01, FormatFloat('###,##0.00', TotPedido),14, 'D');
          Imp_Linha(00, 01, FormatFloat('###,##0.00', PerComissao)+'%',7, 'D');
          Imp_Linha(00, 01, FormatFloat('###,##0.00', TotPedido*PerComissao/100),12, 'D');
          Imp_Linha(00, 01, DataEmissao,10, 'E');
          // Imp_Linha(00, 01, DataVencimento,10, 'E');
          TotalGeral:=TotalGeral+TotPedido;
          TotalComissao:=TotalComissao+(TotPedido*PerComissao/100);
          TotPedido:=0;
          Inc( nLin );
          if DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Eof then
            break;
        end;
        if nLin >= 60 then begin
          if TelaImpressora='I' then
            Imp_Linha(01, 15, DCondensa2+ACondensa5+ASubScript+'EJOC SISTEMAS -  TRAVESSA DA APARECIDA, 228, CENTRO, CEP 37.190-000, TRÊS PONTAS, MG - FONE/FAX: 35-98849-1204'+DCondensa5+DSupScript, 6, 'E');
          if TelaImpressora='I' then
            Imp_Ejeta;
          nLin := 0;
          Pag  := Pag+1;
          Cabecalho;
        end;
      end;
      Imp_Linha(02, 00, ACondensa4+'Total ---------------------------------------------------------------------> ',14, 'E');
      Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalGeral),14, 'D');
      Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalComissao),20, 'D');
      Imp_Linha(00, 01, DCondensa4,20, 'D');
    end;
  end;

begin
  tamanhofonte:=7;
  // TamanhodoFone:=8;
  DADOSFRENTEf.CLIENTES_REL.Open;
  DADOSFRENTEf.VENDAS_ECF2_REL.Open;
  Tipo := 'RAW';   // Dica: Imprime com matricial Epson mais rápido
  // if Imp_Inicio( CONFIGF.Label1.Caption, 'Impressão de dados Employee - THE CLUB', Tipo, CONFIGF.DBCheckBox1.Checked) then begin
  DADOS_CADASTROSf.VENDEDORES_Drop2.Open;
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    if CheckBox4.Checked=false then begin
      DADOS_CADASTROSf.VENDEDORES_Drop2.Locate('CODIGO',ComboEdit1.Text,[]);
      ComissaoVendedor;
      // if not CONFIGF.DBCheckBox1.Checked then
      if TelaImpressora='I' then
        Imp_Ejeta;
    end;
    if CheckBox4.Checked=true then begin
      DADOS_CADASTROSf.VENDEDORES_Drop2.First;
      TotalGeralTodos:=0;
      TotalComissaoTodos:=0;
      while true do begin
        // ComboEdit1.Text:=DADOS_CADASTROSf.VENDEDORES_Drop2.FieldByName('CODIGO').AsString;
        TotalGeral:=0;
        TotalComissao:=0;
        ComissaoVendedor;
        TotalGeralTodos:=TotalGeralTodos+TotalGeral;
        TotalComissaoTodos:=TotalComissaoTodos+TotalComissao;
        // if not CONFIGF.DBCheckBox1.Checked then
        if TelaImpressora='I' then
          Imp_Ejeta;
        if DADOS_CADASTROSf.VENDEDORES_Drop2.Eof then
          break;
        DADOS_CADASTROSf.VENDEDORES_Drop2.Next;
      end;
      Imp_Linha(02, 00, ACondensa4+'Total Geral ---------------------------------------------------------------> ',14, 'E');
      Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalGeralTodos),14, 'D');
      Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalComissaoTodos),20, 'D');
      Imp_Linha(00, 01, DCondensa4,20, 'D');
    end;
  end;
  Imp_Fim;
end;

procedure TGERAL3F.BitBtn5Click(Sender: TObject);
begin
  inherited;
  DatFim.Date:=datini.Date;
end;

procedure TGERAL3F.BitBtn6Click(Sender: TObject);
begin
  inherited;
  ComboEdit3.Text:=ComboEdit2.Text;
end;

procedure TGERAL3F.BitBtn8Click(Sender: TObject);
begin
  inherited;
  FotoPaisagengem:='PAISAGEM';
  RetiSupri;
  FotoPaisagengem:='';
end;

procedure TGERAL3F.RetiSupri;
var
  Pag ,nLin: Integer;
  Saldo : Double;
  Tipo, Histori , Repetido , RepetidoSaldo: String;
  SubTotal, Total, Valor : Double;
  procedure Cabecalho;
  begin
    Definevarpubl();
    Imp_InicializaPagina;
    DADOS_CADASTROSf.EMITENTE.Open;
    Imp_Linha(01, 00, ACondensa4+DADOS_CADASTROSf.EMITENTE.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString , 6, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
    Imp_Linha(00, 01, TimetoStr(Time), 8, 'E');
    Imp_Linha(00, 138, 'Folha', 06, 'E');
    Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
    if RadioButton7.Checked=true then
      Imp_Linha(01, 00, Padc('RELATORIO DE RETIRADAS DE '+DateEdit2.Text+' até '+DateEdit3.Text,166) , 166, 'E')
    else
      Imp_Linha(01, 00, Padc('RELATORIO DE SUPRIMENTOS DE '+DateEdit2.Text+' até '+DateEdit3.Text,166), 166, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 166), 166, 'E');
    Imp_Linha(01, 00, '*LANC.CAIXA* *--DATA--* *----------------HISTORICO---------------* *-----VALOR-----* *------------- OBSERVACAO -------------* *------------ SUBHISTORICO ------------*', 99, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 166), 166, 'E');
    nLin:=nLin + 7;
  end;

  procedure SubTotalHistorico;
  begin
    Imp_Linha(01, 10, 'Subtotal --------------------------------------------> ',56, 'E');
    Imp_Linha(00, 00, FormatFloat('###,##0.00',SubTotal),18, 'D');
    Imp_Linha(01, 02, '', 30, 'E');
    nLin:=nLin+2;
    SubTotal:=0;
  end;

  procedure Rodapex;
  begin
    if TelaImpressora='I' then
      Imp_Linha(01, 15, DCondensa2+ACondensa5+ASubScript+'EJOC SISTEMAS -  TRAVESSA DA APARECIDA, 228, CENTRO, CEP 37.190-000, TRÊS PONTAS, MG - FONE/FAX: 35-98849-1204'+DCondensa5+DSupScript, 6, 'E');
    if TelaImpressora='I' then
      Imp_Ejeta;
    nLin:=0;
    Pag :=Pag+1;
  end;

begin
  // TamanhodoFone:=8;
  tamanhofonte:=6;
  DADOSFRENTEf.HISTORIC_REL.Close;
  DADOSFRENTEf.HISTORIC_REL.Open;
  DADOSFRENTEf.HISTORIC_REL.Refresh;
  DADOSFRENTEf.SUB_HIST_REL.Open;
  DADOSFRENTEf.SUB_HIST_REL.Refresh;
  if ComboEdit5.Text='' then begin
    if RadioButton7.Checked=true then
      FiltroSangriaSuprimento('S',ComboEdit2.Text,ComboEdit3.Text,DateEdit2.date,DateEdit3.date)
    else
      FiltroSangriaSuprimento('P',ComboEdit2.Text,ComboEdit3.Text,DateEdit2.date,DateEdit3.date);
  end;
  if ComboEdit5.Text<>'' then begin
    if RadioButton7.Checked=true then
      FiltroSangriaSuprimentoSubHistorico('S',ComboEdit5.Text,DateEdit2.date,DateEdit3.date)
    else
      FiltroSangriaSuprimentoSubHistorico('P',ComboEdit5.Text,DateEdit2.date,DateEdit3.date);
  end;
  DADOSFRENTEf.CAIXA_REL.First;
  Tipo:='RAW';   // Dica: Imprime com matricial Epson mais rápido
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    nLin:=0;
    Pag :=1;
    while not DADOSFRENTEf.CAIXA_REL.Eof do begin
      if nLin = 0 then
        Cabecalho;
      RepetidoSaldo:=DADOSFRENTEf.CAIXA_REL.FieldByName('HISTORICO').Asstring+DADOSFRENTEf.CAIXA_REL.FieldByName('SUBHISTORICO').Asstring;
      while true do begin
        if Repetido = FormatFloat('###,##0.00',Valor)+DADOSFRENTEf.CAIXA_REL.FieldByName('OBSERVACAO').AsString+DADOSFRENTEf.CAIXA_REL.FieldByName('DATA').AsString+DADOSFRENTEf.CAIXA_REL.FieldByName('TURNO').AsString+DADOSFRENTEf.CAIXA_REL.FieldByName('HORA').AsString then begin
          if DADOSFRENTEf.CAIXA_REL.Eof then
            break;
          DADOSFRENTEf.CAIXA_REL.Next
        end
        else begin
          if Pos('-',DADOSFRENTEf.CAIXA_REL.FieldByName('VALOR').asString) > 0 then
            Valor:=StrToFloat(Copy(DADOSFRENTEf.CAIXA_REL.FieldByName('VALOR').AsString,Pos('-',DADOSFRENTEf.CAIXA_REL.FieldByName('VALOR').AsString)+1,16))
          else
            Valor:=DADOSFRENTEf.CAIXA_REL.FieldByName('VALOR').AsFloat;
          Imp_Linha(01, 00, '', 0, 'E');
          Imp_Linha(00, 01, DADOSFRENTEf.CAIXA_REL.FieldByName('DOCUMENTO').Asstring+'/',7, 'E');
          Imp_Linha(00, 00, DADOSFRENTEf.CAIXA_REL.FieldByName('CAIXA').Asstring+'-',2, 'E');
          Imp_Linha(00, 00, DADOSFRENTEf.CAIXA_REL.FieldByName('DATA').Asstring,8, 'E');
          Imp_Linha(00, 00, '  '+copy(DADOSFRENTEf.CAIXA_REL.FieldByName('HISTORICOC').AsString,1,38),40, 'E');
          Imp_Linha(00, 00, FormatFloat('###,##0.00',Valor),21, 'D');
          Imp_Linha(00, 00, '  '+DADOSFRENTEf.CAIXA_REL.FieldByName('OBSERVACAO').AsString,40, 'E');
          if DADOSFRENTEf.CAIXA_REL.FieldByName('SUBHISTORICO').Asstring<>'' then begin
            DADOSFRENTEf.SUB_HIST_REL.Locate('CODIGO',DADOSFRENTEf.CAIXA_REL.FieldByName('SUBHISTORICO').AsString,[]);
            Imp_Linha(00, 00, '  '+DADOSFRENTEf.SUB_HIST_REL.FieldByName('NOME').AsString,40, 'E');
          end;
          Saldo:=Saldo+Valor;
          SubTotal:=SubTotal+Valor;
          Repetido:=FormatFloat('###,##0.00',Valor)+DADOSFRENTEf.CAIXA_REL.FieldByName('OBSERVACAO').AsString+DADOSFRENTEf.CAIXA_REL.FieldByName('DATA').AsString+DADOSFRENTEf.CAIXA_REL.FieldByName('TURNO').AsString+DADOSFRENTEf.CAIXA_REL.FieldByName('HORA').AsString;
          RepetidoSaldo:=DADOSFRENTEf.CAIXA_REL.FieldByName('HISTORICO').Asstring+DADOSFRENTEf.CAIXA_REL.FieldByName('SUBHISTORICO').Asstring;
          DADOSFRENTEf.CAIXA_REL.Next;
          if (RepetidoSaldo<>DADOSFRENTEf.CAIXA_REL.FieldByName('HISTORICO').Asstring+DADOSFRENTEf.CAIXA_REL.FieldByName('SUBHISTORICO').Asstring) or (DADOSFRENTEf.CAIXA_REL.Eof) then
            SubTotalHistorico;
          if DADOSFRENTEf.CAIXA_REL.Eof then
            break;
          Inc( nLin );
        end;
        if nLin >= 42 then begin
          Rodapex;
          Cabecalho;
        end;
      end;
      Total:=Total+Saldo;
      Saldo:=0;
      if nLin >= 60 then begin
        Rodapex;
        Cabecalho;
      end;
    end;
    Imp_Linha(01, 10, 'TOTAL GERAL-------------------------------------------> ',56, 'E');
    Imp_Linha(00, 00, FormatFloat('###,##0.00',Total)+DCondensa4,18, 'D');
    if TelaImpressora='I' then
      Imp_Linha(01, 15, DCondensa2+ACondensa5+ASubScript+'EJOC SISTEMAS -  TRAVESSA DA APARECIDA, 228, CENTRO, CEP 37.190-000, TRÊS PONTAS, MG - FONE/FAX: 35-98849-1204'+DCondensa5+DSupScript, 6, 'E');
    if TelaImpressora='I' then
      Imp_Ejeta;
    DADOSFRENTEf.HISTORIC_REL.Close;
    DADOSFRENTEf.CAIXA_REL.Close;
    Imp_Fim
  end;
end;

procedure TGERAL3F.Button1Click(Sender: TObject);
begin
  inherited;
  if ComboEdit9.Text<>'' then
    ImpCompras2(ComboEdit9.Text);
end;

procedure TGERAL3F.Button2Click(Sender: TObject);
begin
  inherited;
  TelaSenha;
  if senha='MANAGER' then begin
    DataFinanceiro.RECEBER.Open;
    DataFinanceiro.Inadimplentes.First;
    while not DataFinanceiro.Inadimplentes.Eof do begin
      DataFinanceiro.Inadimplentes.Open;
      OrigemDestinoX(DataFinanceiro.Inadimplentes, DataFinanceiro.RECEBER);
      DataFinanceiro.Inadimplentes.Delete;
      // DataFinanceiro.Inadimplentes.Next;
    end;
  end;
end;

procedure TGERAL3F.Button40Click(Sender: TObject);
begin
  inherited;
  NomeDaConsulta:=tButton(sender).Caption;
  close;
end;

procedure TGERAL3F.Button5Click(Sender: TObject);
begin
  inherited;
  ConsultaClientes;
  ComboEdit4.Text:=CodigoConsulta;
  FiltroContasReceberINADIMPLENTESCliente( ComboEdit4.Text);
end;

procedure TGERAL3F.Button6Click(Sender: TObject);
begin
  inherited;
  NomeDaConsulta:=tButton(sender).Caption;
  close;

end;

procedure TGERAL3F.ComboEdit1ButtonClick(Sender: TObject);
begin
  inherited;
  // ConsultaGeral;
  Pesquisa;
end;

procedure TGERAL3F.ComboEdit1Change(Sender: TObject);
begin
  inherited;
  DBLookupComboBox5.KeyValue:=ComboEdit1.Text;
end;

procedure TGERAL3F.ComboEdit1Exit(Sender: TObject);
begin
  inherited;
  if ComboEdit1.Text<>'' then begin
    DADOS_CADASTROSf.VENDEDORES_Drop2.Open;
    if not DADOS_CADASTROSf.VENDEDORES_Drop2.Locate('CODIGO',ComboEdit1.Text,[]) then begin
      ShowMessage('Código Inexistente !!!');
      ComboEdit1.Clear;
      ComboEdit1.SetFocus;
      exit;
    end;
  end;
end;

procedure TGERAL3F.ComboEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Pesquisa;
    // ConsultaGeral;
  if key=vk_delete then
    ComboEdit1.Clear;
end;

procedure TGERAL3F.ComboEdit2ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TGERAL3F.ComboEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Pesquisa;
end;

procedure TGERAL3F.ComboEdit3ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TGERAL3F.ComboEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Pesquisa;
end;

procedure TGERAL3F.ComboEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Button5.Click;
  if key=vk_return then
    FiltroContasReceberINADIMPLENTESCliente( ComboEdit4.Text);
end;

procedure TGERAL3F.ComboEdit5Exit(Sender: TObject);
begin
  inherited;
  if ComboEdit5.Text='' then
    Panel115.Caption:='';
end;

procedure TGERAL3F.ComboEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Pesquisa;
end;

procedure TGERAL3F.ComboEdit9ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TGERAL3F.ComboEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  {
  if key=vk_f3 then begin
    ConsultaClientes;
    Consultaveiculos;
  end;
  }
  if key=vk_f3 then
    Pesquisa;
end;

procedure TGERAL3F.Pesquisa;
begin
  if ComboEdit9.Focused=true then begin
    ConsultaClientes;
    FiltroVeiculo:=CodigoConsulta;
    ConsultaVeiculos;
    ComboEdit9.Text:=PlacaVeiculo;
    PlacaVeiculo:='';
  end;
  if ComboEdit1.Focused=true then begin
    ConsultaVendedores;
    ComboEdit1.Text:=CodigoConsulta;
  end;
  if ComboEdit2.Focused=true then begin
    ConsultaHISTORIC;
    ComboEdit2.Text:=CodigoConsulta;
  end;
  if ComboEdit3.Focused=true then begin
    ConsultaHISTORIC;
    ComboEdit3.Text:=CodigoConsulta;
  end;
  if ComboEdit5.Focused=true then begin
    ConsultaHISTORIC;
    // ComboEdit2.Text:=CodigoConsulta;

    FiltraCampo:='HISTORIC='+QuotedStr(CodigoConsulta);
    ConsultaSUB_HIST;
    if CodigoConsulta<>'' then begin
      ComboEdit5.Text:=CodigoConsulta;
      SUB_HIST.Open;
      SUB_HIST.Locate('CODIGO',ComboEdit5.Text,[]);
      Panel115.Caption:=SUB_HIST.FieldByName('Nome').AsString;
      // Panel115.Caption:=DescricaoConsulta;
    end;
    FiltraCampo:='';

  end;
end;


procedure TGERAL3F.EstatisticadeVendas;
  var Pag, nLin, mes, a: Integer;
    ini, fim, Tipo, filtro: String;
    TotVis, TotPra, TotAnoPra, TotAnoVis: Double;
  procedure Cabecalho;
  begin
    DefineVarPubl();
    Imp_InicializaPagina;
    if TelaImpressora='I' then
      Imp_Linha(01, 00, DADOS_CADASTROSf.EMITENTE.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString , 6, 'E')
    else
      Imp_Linha(01, 00, ACondensa5+DADOS_CADASTROSf.EMITENTE.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString , 6, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
    Imp_Linha(00, 02, TimetoStr(Time), 8, 'E');
    Imp_Linha(00, 39, 'Folha '+StrZero(Pag,3,0), 108, 'E');
    Imp_Linha(01, 13, 'RELATORIO DE ESTATISTICA DE VENDAS DE '+MaskEdit4.Text, 80, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 68), 68, 'E');
    Imp_Linha(01, 00, '*-- MES --*  *---- TOTAL ----*', 69, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 68), 68, 'E');
    nLin := nLin + 6;
  end;

  procedure ImpPro;
  begin
    a:=0;
    mes:=1;
    vMesAno:= '02'+ MaskEdit4.Text;
    ini:= '01/01/'+ MaskEdit4.Text;
    fim:= '31/01/'+ MaskEdit4.Text;
    if nLin=0 then Cabecalho;
    while true do begin
      if mes=2 then begin
        if (Copy(vMesAno,1,2)='02') then begin
          ini:= '01/02/'+ MaskEdit4.Text;
          fim:= '28/02/'+ MaskEdit4.Text;
        end;
        if AnoBiSexto(StrToInt(Copy(vMesAno,3,4))) Then begin
          ini:= '01/02/'+ MaskEdit4.Text;
          fim:= '29/02/'+ MaskEdit4.Text;
        end;
      end;
      if mes=3 then begin
        ini:= '01/03/'+ MaskEdit4.Text;
        fim:= '31/03/'+ MaskEdit4.Text;
      end;
      if mes=4 then begin
        ini:= '01/04/'+ MaskEdit4.Text;
        fim:= '30/04/'+ MaskEdit4.Text;
      end;
      if mes=5 then begin
        ini:= '01/05/'+ MaskEdit4.Text;
        fim:= '31/05/'+ MaskEdit4.Text;
      end;
      if mes=6 then begin
        ini:= '01/06/'+ MaskEdit4.Text;
        fim:= '30/06/'+ MaskEdit4.Text;
      end;
      if mes=7 then begin
        ini:= '01/07/'+ MaskEdit4.Text;
        fim:= '31/07/'+ MaskEdit4.Text;
      end;
      if mes=8 then begin
        ini:= '01/08/'+ MaskEdit4.Text;
        fim:= '31/08/'+ MaskEdit4.Text;
      end;
      if mes=9 then begin
        ini:= '01/09/'+ MaskEdit4.Text;
        fim:= '30/09/'+ MaskEdit4.Text;
      end;
      if mes=10 then begin
        ini:= '01/10/'+ MaskEdit4.Text;
        fim:= '31/10/'+ MaskEdit4.Text;
      end;
      if mes=11 then begin
        ini:= '01/11/'+ MaskEdit4.Text;
        fim:= '30/11/'+ MaskEdit4.Text;
      end;
      if mes=12 then begin
        ini:= '01/12/'+ MaskEdit4.Text;
        fim:= '31/12/'+ MaskEdit4.Text;
      end;
      if mes>12 then
        break;
      FiltroItensItensVendaMes(StrToDate(ini),StrToDate(fim));
      DADOSFRENTEf.ITEVENDAS_ECF2_Rel.First;
      while not DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Eof do begin
        TotVis:=TotVis + Round(DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('TOTALRAT').asFloat*100)/100;
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Next;
        if DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Eof then begin
          if mes=1 then Imp_Linha(01, 00, 'JANEIRO', 11, 'E');
          if mes=2 then Imp_Linha(01, 00, 'FEVEREIRO', 11, 'E');
          if mes=3 then Imp_Linha(01, 00, 'MARCO', 11, 'E');
          if mes=4 then Imp_Linha(01, 00, 'ABRIL', 11, 'E');
          if mes=5 then Imp_Linha(01, 00, 'MAIO', 11, 'E');
          if mes=6 then Imp_Linha(01, 00, 'JUNHO', 11, 'E');
          if mes=7 then Imp_Linha(01, 00, 'JULHO', 11, 'E');
          if mes=8 then Imp_Linha(01, 00, 'AGOSTO', 11, 'E');
          if mes=9 then Imp_Linha(01, 00, 'SETEMBRO', 11, 'E');
          if mes=10 then Imp_Linha(01, 00, 'OUTUBRO', 11 , 'E');
          if mes=11 then Imp_Linha(01, 00, 'NOVEMBRO', 11, 'E');
          if mes=12 then Imp_Linha(01, 00, 'DEZEMBRO', 11, 'E');
          Imp_Linha(00, 01, FormatFloat('###,##0.00',TotVis),18, 'D');
          TotAnoVis:=TotAnoVis+TotVis;
          TotAnoPra:=TotAnoPra+TotPra;
          TotVis:=0;
          TotPra:=0;
        end;
      end;
      mes:=mes+1;
    end;
    Imp_Linha(01, 00, StringOfChar('-', 68), 68, 'E');
    Imp_Linha(01, 00, 'TOTAL ->', 11, 'E');
    Imp_Linha(00, 01, FormatFloat('###,##0.00',TotAnoVis),18, 'D');
  end;
begin
  TotVis:=0;
  TotPra:=0;
  TotAnoPra:=0;
  TotAnoVis:=0;
  Aguarde;
  Tipo:='RAW';   // Dica: Imprime com matricial Epson mais rápido
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    nLin:=0;
    Pag :=1;
    ImpPro;
    // if TelaImpressora='I' then
      Imp_Ejeta;
    Imp_Fim
  end;
end;

procedure TGERAL3F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(GERAL3F);
  Action:=caFree;
end;

procedure TGERAL3F.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_f7) and (NxNotebook61.ActivePageIndex=10) then begin
    ComboEdit4.SetFocus
  end;
end;

procedure TGERAL3F.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // if key=^X then begin
  if (key=^x) and (NxNotebook61.ActivePageIndex=1) then begin
    TelaSenha;
    if senha='MANAGER' then begin
      // if NxNotebook61.ActivePageIndex=1 then begin
        DataFinanceiro.Inadimplentes.Open;
        while not DataFinanceiro.RECEBER.Bof do begin
          OrigemDestinoX(DataFinanceiro.RECEBER,DataFinanceiro.Inadimplentes);
          DataFinanceiro.RECEBER.Delete;
          DataFinanceiro.RECEBER.Prior;
        end;
      // end;
    end;
  end;

  if (key=^U) and (NxNotebook61.ActivePageIndex=1) then begin
    TelaSenha;
    if senha='MANAGER' then begin
      // if NxNotebook61.ActivePageIndex=1 then begin
        DataFinanceiro.Inadimplentes.Open;
        // while not DataFinanceiro.RECEBER.Bof do begin
          OrigemDestinoX(DataFinanceiro.RECEBER,DataFinanceiro.Inadimplentes);
          DataFinanceiro.RECEBER.Delete;
          DataFinanceiro.RECEBER.Prior;
        // end;
      // end;
    end;

  end;

  // if key=^X then begin
  if (key=^x) and (NxNotebook61.ActivePageIndex=10) then begin
    TelaSenha;
    if senha='MANAGER' then begin
      // if NxNotebook61.ActivePageIndex=10 then begin
        DataFinanceiro.Inadimplentes.Open;
        DataFinanceiro.RECEBER.Open;
        while not DataFinanceiro.Inadimplentes.Bof do begin
          OrigemDestinoX(DataFinanceiro.Inadimplentes,DataFinanceiro.RECEBER);
          DataFinanceiro.Inadimplentes.Delete;
          DataFinanceiro.Inadimplentes.Prior;
          // DataFinanceiro.Inadimplentes.Next;
        end;
      // end;
    end;
  end;

  if (key=^U) and (NxNotebook61.ActivePageIndex=10) then begin
    TelaSenha;
    if senha='MANAGER' then begin
      // if NxNotebook61.ActivePageIndex=10 then begin
        DataFinanceiro.Inadimplentes.Open;
        DataFinanceiro.RECEBER.Open;
        // while not DataFinanceiro.RECEBER.Bof do begin
          OrigemDestinoX(DataFinanceiro.Inadimplentes,DataFinanceiro.RECEBER);
          DataFinanceiro.Inadimplentes.Delete;
          DataFinanceiro.Inadimplentes.Prior;
        // end;
      // end;
    end;

  end;

end;

procedure TGERAL3F.FormShow(Sender: TObject);
begin
  inherited;
  NxNotebook61.Align:=alclient;

  Panel2.BevelOuter:=bvNone;
  Panel88.BevelOuter:=bvNone;

  Panel1.Align:=alclient;
  Panel3.Align:=alclient;
  Panel5.Align:=alclient;
  Panel7.Align:=alclient;
  Panel8.Align:=alclient;
  Panel10.Align:=alclient;
  Panel11.Align:=alclient;
  Panel13.Align:=alclient;
  Panel16.Align:=alclient;
  Panel11.Align:=alclient;
  Panel17.Align:=alclient;
  Panel21.Align:=alclient;
  Panel51.Align:=alclient;
  Panel96.Align:=alclient;
  cxGrid4.Align:=alclient;
  cxGrid6.Align:=alclient;
  // Panel2.Align:=alclient;

  if NxNotebook61.ActivePageIndex=2 then begin
    Panel6.Caption:=DADOS_CADASTROSf.Clientes.FieldByName('NOME').AsString;
    DADOS_CONSULTASF.ITEVENDAS_ECF2.Open;
    DADOS_CONSULTASF.ITEVENDAS_ECF2.SQL.Clear;
    DADOS_CONSULTASF.ITEVENDAS_ECF2.SQL.Add('SELECT * FROM ITEVENDAS_ECF2 WHERE ' +
      'CLIENTE='+DADOS_CADASTROSf.Clientes.FieldByName('CODIGO').AsString+' order by CODIGOX desc');
    DADOS_CONSULTASF.ITEVENDAS_ECF2.Open;
    DADOS_CONSULTASF.ITEVENDAS_ECF2.First;
    cxGrid9.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=3 then begin
    Panel9.Caption:=DADOS_CADASTROSf.FORNECEDORES.FieldByName('NOME').AsString;
    DADOS_CONSULTASF.ITECOMPRAS.Close;
    DADOS_CONSULTASF.ITECOMPRAS.SQL.Clear;
    DADOS_CONSULTASF.ITECOMPRAS.SQL.Add('SELECT * FROM ITECOMPRAS WHERE FORNECEDOR='+DADOS_CADASTROSf.FORNECEDORES.FieldByName('CODIGO').AsString+' order by id desc');
    DADOS_CONSULTASF.ITECOMPRAS.Open;
    cxGrid2.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=4 then begin
    Panel12.Caption:=DADOS_CADASTROSf.PRODUTOS.FieldByName('NOME').AsString;
    DADOS_CONSULTASF.ITECOMPRAS.Close;
    DADOS_CONSULTASF.ITECOMPRAS.SQL.Clear;
    DADOS_CONSULTASF.ITECOMPRAS.SQL.Add('SELECT * FROM ITECOMPRAS WHERE CODIGO='+DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsString+' order by id desc');
    DADOS_CONSULTASF.ITECOMPRAS.Open;
    cxGrid3.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=5 then begin
    Panel19.Caption:=DADOS_CADASTROSf.PRODUTOS.FieldByName('NOME').AsString;
    DADOS_CONSULTASF.ITEVENDAS_ECF2.Open;
    DADOS_CONSULTASF.ITEVENDAS_ECF2.SQL.Clear;
    DADOS_CONSULTASF.ITEVENDAS_ECF2.SQL.Add('SELECT * FROM ITEVENDAS_ECF2 WHERE ' +
      'CODIGO='+DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsString+' order by CODIGOX desc');
    DADOS_CONSULTASF.ITEVENDAS_ECF2.Open;
    DADOS_CONSULTASF.ITEVENDAS_ECF2.First;
    cxGrid1.SetFocus;
  end;

  if NxNotebook61.ActivePageIndex=6 then begin
    DADOS_CADASTROSf.VENDEDORES_Drop.Open;
    datini.Date:=date-30;
    DatFim.Date:=date;
  end;

  if NxNotebook61.ActivePageIndex=7 then begin
    // DADOS_CADASTROSf.VENDEDORES_Drop.Open;
    DateEdit2.Date:=date-30;
    DateEdit3.Date:=date;
  end;

end;

end.
