unit CONTASRECPAG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, mestre2, NxNotebook6, NxControls6,
  NxCollection6, cxStyles, cxClasses, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  RxToolEdit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxGridLevel, cxGridDBChartView, cxGridDBCardView, cxGridDBBandedTableView,
  cxGridChartView, cxGridCustomLayoutView, cxGridCardView,
  cxGridBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.Menus, cxButtons, MemDS,
  DBAccess, Uni, MaskUtils, DateUtils, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPScxCommon, dxPScxExtComCtrlsLnk,
  RxCurrEdit, cxContainer, cxTextEdit, cxMemo, cxRichEdit, RxCtrls, dxPSRELnk,
  Vcl.DBCtrls;

type
  TCONTASRECPAGf = class(Tmestre2_FRM)
    NxNotebook61: TNxNotebook6;
    ContasaReceber: TNxNotebookSheet6;
    ContasaPagar: TNxNotebookSheet6;
    ItensCartoes: TNxNotebookSheet6;
    CadernetaPaga: TNxNotebookSheet6;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label15: TLabel;
    ComboEdit1: TComboEdit;
    Button80: TButton;
    Button81: TButton;
    Button82: TButton;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBTableView7Column3: TcxGridDBColumn;
    cxGridDBTableView7NUMERO: TcxGridDBColumn;
    cxGridDBTableView7ORDEM: TcxGridDBColumn;
    cxGridDBTableView7EMISSAO: TcxGridDBColumn;
    cxGridDBTableView7VENCIMENTO: TcxGridDBColumn;
    cxGridDBTableView7Column1: TcxGridDBColumn;
    cxGridDBTableView7RECEBIMENTO: TcxGridDBColumn;
    cxGridDBTableView7VALOR_RECEBIDO: TcxGridDBColumn;
    cxGridDBTableView7VALOR: TcxGridDBColumn;
    cxGridDBTableView7Column2: TcxGridDBColumn;
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
    Label11: TLabel;
    Label12: TLabel;
    CheckBox6: TCheckBox;
    DateEdit4: TDateEdit;
    DateEdit5: TDateEdit;
    CheckBox8: TCheckBox;
    cxButton7: TButton;
    cxButton3: TButton;
    CheckBox1: TCheckBox;
    cxButton4: TButton;
    cxButton27: TButton;
    cxButton26: TButton;
    cxButton5: TButton;
    cxButton127: TButton;
    cxButton36: TButton;
    cxButton24: TButton;
    Panel12: TPanel;
    Panel13: TPanel;
    CreditoClie: TNxNotebookSheet6;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel17: TPanel;
    Panel19: TPanel;
    Button10: TButton;
    cxButton29: TButton;
    Button12: TButton;
    NxPanel62: TPanel;
    Panel21: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel29: TPanel;
    Panel31: TPanel;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    NxPanel19: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    NxPanel17: TPanel;
    Panel36: TPanel;
    cxButton11: TButton;
    Panel37: TPanel;
    cxButton9: TButton;
    cxButton10: TButton;
    cxButton8: TButton;
    Label9: TLabel;
    Label10: TLabel;
    CheckBox7: TCheckBox;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    CheckBox9: TCheckBox;
    CheckBox13: TCheckBox;
    NxPanel26: TPanel;
    NxPanel27: TPanel;
    NxPanel24: TPanel;
    NxPanel22: TPanel;
    cxGrid4: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBTableView5NUMERO: TcxGridDBColumn;
    cxGridDBTableView5ORDEM: TcxGridDBColumn;
    cxGridDBTableView5CODIGO: TcxGridDBColumn;
    cxGridDBTableView5Fornecedor: TcxGridDBColumn;
    cxGridDBTableView5HISTORICO: TcxGridDBColumn;
    cxGridDBTableView5EMISSAO: TcxGridDBColumn;
    cxGridDBTableView5VENCIMENTO: TcxGridDBColumn;
    cxGridDBTableView5Column1: TcxGridDBColumn;
    cxGridDBTableView5VALOR: TcxGridDBColumn;
    cxGridDBTableView5PAGAMENTO: TcxGridDBColumn;
    cxGridDBTableView5VALOR_PAGO: TcxGridDBColumn;
    cxGridBandedTableView3: TcxGridBandedTableView;
    cxGridBandedColumn5: TcxGridBandedColumn;
    cxGridBandedColumn6: TcxGridBandedColumn;
    cxGridCardView3: TcxGridCardView;
    cxGridChartView3: TcxGridChartView;
    cxGridTableView3: TcxGridTableView;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridDBCardView3: TcxGridDBCardView;
    cxGridDBChartView3: TcxGridDBChartView;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    Panel8: TPanel;
    cxGrid9: TcxGrid;
    cxGridDBTableView16: TcxGridDBTableView;
    cxGridDBTableView16Column3: TcxGridDBColumn;
    cxGridDBTableView16CARTOES: TcxGridDBColumn;
    cxGridDBTableView16Column5: TcxGridDBColumn;
    cxGridDBTableView16Column2: TcxGridDBColumn;
    cxGridDBTableView16Column1: TcxGridDBColumn;
    cxGridDBTableView16HISTORICO: TcxGridDBColumn;
    cxGridDBTableView16EMISSAO: TcxGridDBColumn;
    cxGridDBTableView16VENCIMENTO: TcxGridDBColumn;
    cxGridDBTableView16Column6: TcxGridDBColumn;
    cxGridDBTableView16Column4: TcxGridDBColumn;
    cxGridDBTableView16VALOR: TcxGridDBColumn;
    cxGridDBTableView16VALORDES: TcxGridDBColumn;
    cxGridDBTableView16VALOR_RECEBIDO: TcxGridDBColumn;
    cxGridBandedTableView8: TcxGridBandedTableView;
    cxGridBandedColumn15: TcxGridBandedColumn;
    cxGridBandedColumn16: TcxGridBandedColumn;
    cxGridCardView8: TcxGridCardView;
    cxGridChartView8: TcxGridChartView;
    cxGridTableView8: TcxGridTableView;
    cxGridDBBandedTableView8: TcxGridDBBandedTableView;
    cxGridDBCardView8: TcxGridDBCardView;
    cxGridDBChartView8: TcxGridDBChartView;
    cxGridDBTableView17: TcxGridDBTableView;
    cxGridLevel9: TcxGridLevel;
    Label18: TLabel;
    Label19: TLabel;
    cxButton34: TcxButton;
    DateEdit8: TDateEdit;
    DateEdit9: TDateEdit;
    cxButton38: TcxButton;
    cxButton31: TcxButton;
    cxButton32: TcxButton;
    cxButton33: TcxButton;
    Button15: TButton;
    Button16: TButton;
    Panel22: TPanel;
    NxPanel56: TPanel;
    NxPanel60: TPanel;
    NxPanel61: TPanel;
    NxPanel58: TPanel;
    NxPanel59: TPanel;
    UniQuery1: TUniQuery;
    Panel129: TPanel;
    Panel128: TPanel;
    Panel127: TPanel;
    Panel130: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;
    Panel5: TPanel;
    Panel16: TPanel;
    Panel18: TPanel;
    Panel20: TPanel;
    Panel23: TPanel;
    Panel28: TPanel;
    Panel30: TPanel;
    Panel32: TPanel;
    Panel35: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel49: TPanel;
    Panel50: TPanel;
    Panel51: TPanel;
    Panel52: TPanel;
    Panel53: TPanel;
    Panel54: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Panel55: TPanel;
    Panel57: TPanel;
    Panel58: TPanel;
    CreditoCliente: TCurrencyEdit;
    Panel70: TPanel;
    Button14: TButton;
    Button3: TButton;
    Panel71: TPanel;
    Panel72: TPanel;
    Panel73: TPanel;
    Panel56: TPanel;
    Panel60: TPanel;
    Panel61: TPanel;
    Panel59: TPanel;
    Panel68: TPanel;
    Button4: TButton;
    TextListBox1: TTextListBox;
    Panel62: TPanel;
    CheckBox2: TCheckBox;
    cxRichEdit1: TcxRichEdit;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1cxRichEditReportLink1: TcxRichEditReportLink;
    Panel63: TPanel;
    Button5: TButton;
    cxGridDBTableView7Column4: TcxGridDBColumn;
    Panel64: TPanel;
    DBText1: TDBText;
    Label5: TLabel;
    procedure Panel5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton27Click(Sender: TObject);
    procedure cxButton26Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure Button80Click(Sender: TObject);
    procedure Button81Click(Sender: TObject);
    procedure Button82Click(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure ComboEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton31Click(Sender: TObject);
    procedure cxButton32Click(Sender: TObject);
    procedure cxButton38Click(Sender: TObject);
    procedure cxButton34Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure cxButton29Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridDBTableView7CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBTableView7DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGridDBTableView5DblClick(Sender: TObject);
    procedure cxGridDBTableView16DblClick(Sender: TObject);
    procedure cxButton33Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton127Click(Sender: TObject);
    procedure cxGridDBTableView7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton24Click(Sender: TObject);
    procedure cxButton36Click(Sender: TObject);
    procedure cxGridDBTableView5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CreditoClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CreditoClienteEnter(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TextListBox1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
  private
    procedure TatalContaReceber(Marca: string);
    procedure Pesquisa;
    procedure LocalizaContas;
    procedure FiltraAConta;
    procedure LocalizaContasAPagar;
    procedure TatalContaAPagar;
    procedure BaixaContasAReceber;
    procedure ImprimeRecibo(Referente: string);
    procedure Recibo(Lancamento, TipoReciboXYZ, Recebemos, RecebemosEndereco,
      Referente, Emitente, documento, EnderecoEmitente, Grafico: string;
      ValorRecibo: double; DataRecibo: tdatetime);
    procedure EstornarContasAReceber;
    procedure RelSaldosVencimentosContas(TabelaClienteFornecedor,
      ReceberPagar: TUniQuery; ReceberPagarx, ValarPagoRecebidox: string);
    procedure RelSaldosVencimentosContas2(TabelaClienteFornecedor,ReceberPagar:TUniQuery;ReceberPagarx,ValarPagoRecebidox:string);
    procedure BaixaContasAPagar;
    procedure EstornarContasAPargar;
    procedure AcertaContasaPagar;
    procedure TatalContasaPagar;
    procedure TotalCartoes;
    procedure BaixaCartao;
    procedure EstornarCartao;
    procedure AcertaCartoes;
    procedure Clone(Igual: string);
    function SomaAnt: string;
    procedure RecebeConta(CreditoRecebimento:string);
    procedure ResumodasContas;
    procedure FiltroContasXYZ(ReceberPagar: TUniQuery; ReceberPagarx,
      ValarPagoRecebidox: string; DataInicial, DataFinal: tdatetime);
    procedure ResumoContasF5;
    { Private declarations }
  public
    { Public declarations }
  end;
  // procedure NovaPagina;
  procedure ConfirmaFormasdePagamentodasContas;
  procedure RecCobra;

var
  CONTASRECPAGf: TCONTASRECPAGf;

implementation

uses dadosFinaceiro, DADOSFRENTE, FUNCOESGERAIS, VISUALIZACAO,
     FUNCOES, GERAL2, GERAL, FrentredeCaixa, CONSULTAS, PRINCIPAL,
     DADOS_CONSULTAS, FUNCOESUNIDAC, MENSPROC, PREVIEW, DADOS_CADASTROS,
     ImportaDados, FUNCAORELATORIOS, CAD_MANUTENCAO, GERALCONTAS, EXTENSO,
  GERALFRENTE;

{$R *.dfm}

procedure TCONTASRECPAGf.Button10Click(Sender: TObject);
begin
  inherited;
  if cxGrid4.Visible=true then begin
    DataFinanceiro.CARTOESITENS.Append;
    DataFinanceiro.CARTOESITENS.FieldByName('VALOR_RECEBIDO').AsFloat:=0;
    with TGERALCONTASF.Create(Self) do begin
      Width:=Panel6.Width;
      Height:=Panel6.Height+50;
      NxNotebook61.ActivePageIndex:=4;
      DataFinanceiro.CARTOESITENS.FieldByName('HORA').AsString:=TimeToStr(Time());
      ShowModal;
    end;
    idNovo:=DataFinanceiro.CARTOESITENS.FieldByName('ID').AsInteger;
    cxGrid9.SetFocus;
    FiltroCartoesGeral;
    TotalCartoes;
    DataFinanceiro.CARTOESITENS.Locate('ID',idNovo,[]);
  end;
end;

procedure TCONTASRECPAGf.cxButton29Click(Sender: TObject);
begin
  inherited;
  if cxGrid4.Visible=true then begin
    if DataFinanceiro.CARTOESITENS.IsEmpty then
      ShowMessage('Sem Itens de Cartões !!!')
    else begin
      DataFinanceiro.CARTOESITENS.Edit;
      with TGERALCONTASF.Create(Self) do begin
        Width:=Panel6.Width;
        Height:=Panel6.Height+50;
        NxNotebook61.ActivePageIndex:=4;
        // caption:='Contas a Pagar';
        DataFinanceiro.CARTOESITENS.FieldByName('HORA').AsString:=TimeToStr(Time());
        ShowModal;
      end;
      idNovo:=DataFinanceiro.CARTOESITENS.FieldByName('ID').AsInteger;
      cxGrid9.SetFocus;
      FiltroCartoesGeral;
      TotalCartoes;
      DataFinanceiro.CARTOESITENS.Locate('ID',idNovo,[]);
    end;
  end;
end;

procedure TCONTASRECPAGf.Button12Click(Sender: TObject);
begin
  inherited;
  if DataFinanceiro.CARTOESITENS.IsEmpty then
    ShowMessage('Sem Itens de Cartões !!!')
  else begin
    if Application.MessageBox('Deseja Deletar esse Cartão ?','Confirmação',MB_YESNO + MB_ICONQUESTION)= ID_YES then
      DataFinanceiro.CARTOESITENS.Delete;
    cxGrid9.SetFocus;
  end;
end;

procedure TCONTASRECPAGf.Button14Click(Sender: TObject);
begin
  inherited;
  if not DataFinanceiro.CREDITO.IsEmpty then begin
    DataFinanceiro.CREDITO.Edit;
    DataFinanceiro.CREDITO.FieldByName('CODIGO').AsString:=DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString;
    DataFinanceiro.CREDITO.FieldByName('NOME').AsString:=DataFinanceiro.CADASTRO_CLIENTES.FieldByName('NOME').AsString;
    DataFinanceiro.CREDITO.FieldByName('VALOR').AsFloat:=CreditoCliente.Value;
    DataFinanceiro.CREDITO.Post;
  end;
  close;
end;

procedure TCONTASRECPAGf.Button15Click(Sender: TObject);
begin
  inherited;
  Clone('Edita');
end;

procedure TCONTASRECPAGf.CheckBox1Exit(Sender: TObject);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TCONTASRECPAGf.Clone(Igual:string);
var i:integer;
begin
  if not DataFinanceiro.CARTOESITENS.IsEmpty then begin
    DataFinanceiro.CARTOESITENS_COPIA.Close;
    DataFinanceiro.CARTOESITENS_COPIA.Open;
    DataFinanceiro.CARTOESITENS_COPIA.Refresh;
    DataFinanceiro.CARTOESITENS_COPIA.Locate('ID',DataFinanceiro.CARTOESITENS.FieldByName('ID').AsString,[]);

    DataFinanceiro.CARTOESITENS.Append;
    for i:=1 to DataFinanceiro.CARTOESITENS_COPIA.FieldCount -1 do begin
      if (DataFinanceiro.CARTOESITENS_COPIA.Fields[i].DataType<>ftAutoInc) or (DataFinanceiro.CARTOESITENS.Fields[i].DataType<>ftAutoInc) then begin
        if (DataFinanceiro.CARTOESITENS.Fields.FindField(DataFinanceiro.CARTOESITENS_COPIA.Fields[i].FieldName)<>nil) and
        (DataFinanceiro.CARTOESITENS_COPIA.Fields[i].FieldName<>'ID') then
          DataFinanceiro.CARTOESITENS.FieldByName(DataFinanceiro.CARTOESITENS_COPIA.Fields[i].FieldName).Value:=DataFinanceiro.CARTOESITENS_COPIA.Fields[i].Value;
      end;
    end;
    if DataFinanceiro.CARTOESITENS.FieldByName('CUPOM').AsString<>'' then
      DataFinanceiro.CARTOESITENS.FieldByName('CUPOM').AsString:=IntToStr(DataFinanceiro.CARTOESITENS.FieldByName('CUPOM').AsInteger+1);

    idNovo:=DataFinanceiro.CARTOESITENS.FieldByName('ID').AsInteger;
    DataFinanceiro.CARTOESITENS.Post;
  end;
  cxGrid9.SetFocus;
  FiltroCartoesGeral;
  TotalCartoes;
  DataFinanceiro.CARTOESITENS.Locate('ID',idNovo,[]);
  if Igual='Edita' then begin
    cxButton29.Click;
    DataFinanceiro.CARTOESITENS.Locate('ID',idNovo,[]);
  end;
  if Igual='P2' then begin
    DataFinanceiro.CARTOES.Open;
    DataFinanceiro.CARTOES.Locate('ID',DataFinanceiro.CARTOESITENS.FieldByName('CARTOES').AsInteger,[]);
    DataFinanceiro.CARTOESITENS.Edit;
    DataFinanceiro.CARTOESITENS.FieldByName('VENCIMENTO').AsDateTime:=
    DataFinanceiro.CARTOESITENS.FieldByName('VENCIMENTO').AsDateTime+
    DataFinanceiro.CARTOES.FieldByName('DIAS').AsInteger;
    DataFinanceiro.CARTOESITENS.FieldByName('ORDEM').AsInteger:=DataFinanceiro.CARTOESITENS.FieldByName('ORDEM').AsInteger+1;
    DataFinanceiro.CARTOESITENS.Post;
    DataFinanceiro.CARTOESITENS.Locate('ID',idNovo,[]);
  end;
end;

procedure TCONTASRECPAGf.Button16Click(Sender: TObject);
begin
  inherited;
  if not DataFinanceiro.CARTOESITENS.IsEmpty then
    Clone('P2');
end;

procedure TCONTASRECPAGf.Button1Click(Sender: TObject);
begin
  inherited;
  SomaAnt;

  if DataFinanceiro.CREDITO.FieldByName('VALOR').AsFloat>0 then begin
    TotalGeralContaBaixar:=DataFinanceiro.CREDITO.FieldByName('VALOR').AsFloat;
    RecebeConta('Credito');
  end;
  cxGrid1.SetFocus;
end;

procedure TCONTASRECPAGf.Button22Click(Sender: TObject);
begin
  inherited;
  if cxGrid4.Visible=true then begin
    DataFinanceiro.PAGAR.Append;
    DataFinanceiro.PAGAR.FieldByName('CODIGO').AsInteger:=0;
    DataFinanceiro.PAGAR.FieldByName('VALOR_PAGO').AsFloat:=0;
    with TGERALCONTASF.Create(Self) do begin
      Width:=Panel4.Width;
      Height:=Panel4.Height+50;
      NxNotebook61.ActivePageIndex:=1;
      caption:='Contas a Pagar';
      ShowModal;
    end;
    cxGrid4.SetFocus;
    FiltroContasaPagarGeral;
    TatalContasaPagar;
  end;
end;

procedure TCONTASRECPAGf.Button23Click(Sender: TObject);
begin
  inherited;
  if cxGrid4.Visible=true then begin
    if DataFinanceiro.PAGAR.IsEmpty then
      ShowMessage('Sem Contas Pagar!!!')
    else begin
      DataFinanceiro.PAGAR.Edit;
      with TGERALCONTASF.Create(Self) do begin
        NxNotebook61.ActivePageIndex:=1;
        Width:=Panel4.Width;
        Height:=Panel4.Height+50;
        caption:='Contas a Pagar';
        ShowModal;
      end;
      cxGrid4.SetFocus;
      FiltroContasaPagarGeral;
      TatalContasaPagar;
    end;
  end;
end;

procedure TCONTASRECPAGf.Button24Click(Sender: TObject);
begin
  inherited;
  if DataFinanceiro.PAGAR.IsEmpty then
    ShowMessage('Sem Contas Pagar!!!')
  else begin
    if Application.MessageBox('Deseja Deletar essa Conta ?','Confirmação',MB_YESNO + MB_ICONQUESTION)= ID_YES then
      DataFinanceiro.PAGAR.Delete;
    cxGrid4.SetFocus;
    TatalContasaPagar;
  end;
end;

procedure TCONTASRECPAGf.Button2Click(Sender: TObject);
begin
  inherited;
  if Panel1.Caption<>'' then begin
    TelaSenha;
    // senha:='MANAGER';
    if senha='MANAGER' then begin
      with TCONTASRECPAGf.Create(Self) do begin
        Width:=Panel8.Width;
        Height:=Panel8.Height;
        NxNotebook61.ActivePageIndex:=4;
        ShowModal;
      end;
      if not DataFinanceiro.CREDITO.IsEmpty then
        Panel54.Caption:=FormatFloat('###,##0.00',DataFinanceiro.CREDITO.FieldByName('VALOR').AsFloat);
    end;
  end;
end;

procedure TCONTASRECPAGf.Button3Click(Sender: TObject);
begin
  inherited;
  DataFinanceiro.CREDITO.Cancel;
  close;
end;

procedure TCONTASRECPAGf.Button4Click(Sender: TObject);
begin
  inherited;
  ResumodasContas;
end;

procedure TCONTASRECPAGf.Button5Click(Sender: TObject);
begin
  inherited;
  cxRichEdit1.Lines.Clear;
  cxRichEdit1.Lines.Text:=TextListBox1.Items.Text;
  cxRichEdit1.Lines.Add('');
  cxRichEdit1.Lines.Add(Panel62.Caption);
  dxComponentPrinter1.CurrentLink:=dxComponentPrinter1cxRichEditReportLink1;
  dxComponentPrinter1.Preview();
end;

procedure TCONTASRECPAGf.ResumodasContas;
var CodigoNovo:string;
    TotaldaConta,TotalGeralX:double;
begin
  if (CheckBox2.checked=true) and (TextListBox1.Items.text<>'') then begin
    Panel62.Visible:=true;
    TextListBox1.Visible:=true;
    TextListBox1.setfocus;
  end
  else begin
    MENSPROCF.Panel1.Caption := 'AGUARDE UM MOMENTO - Gerando o Resumo da Contas !!!';
    MENSPROCF.Show;
    MENSPROCF.Update;
    TextListBox1.Items.Clear;
    TextListBox1.Visible:=true;
    FiltroContasXYZ(DataFinanceiro.RECEBER_REL,'RECEBER','VALOR_RECEBIDO',DateEdit4.Date,DateEdit5.Date);
    while true do begin
      CodigoNovo:=DataFinanceiro.RECEBER_REL.FieldByName('CODIGO').AsString;
      TotaldaConta:=TotaldaConta+DataFinanceiro.RECEBER_REL.FieldByName('VALOR').AsFloat-DataFinanceiro.RECEBER_REL.FieldByName('VALOR_RECEBIDO').AsFloat;
      TotalGeralX:=TotalGeralX+DataFinanceiro.RECEBER_REL.FieldByName('VALOR').AsFloat-DataFinanceiro.RECEBER_REL.FieldByName('VALOR_RECEBIDO').AsFloat;
      DataFinanceiro.RECEBER_REL.Next;
      if (CodigoNovo<>DataFinanceiro.RECEBER_REL.FieldByName('CODIGO').AsString)  and (TotaldaConta>0.01) or (DataFinanceiro.RECEBER_REL.Eof) and (TotaldaConta>0.01) then begin
        if CodigoNovo<>'' then begin
          FiltraQuery(DataFinanceiro.CLIENTES_Rel,'CLIENTES',CodigoNovo);
          TextListBox1.Items.Add(
          // DireiraEsquera(0, DataFinanceiro.CLIENTES_Rel.FieldByName('NOME').AsString,50, 'E')+' - '+
          DireiraEsquera(0, DataFinanceiro.CLIENTES_Rel.FieldByName('NOME').AsString,40, 'E')+
          DireiraEsquera(0, CodigoNovo,7, 'D')+
          DireiraEsquera(0, FormatFloat('###,##0.00', TotaldaConta),12, 'D')+' '+
          DireiraEsquera(0, ' - Fones: ',10, 'E')+
          DireiraEsquera(0, DataFinanceiro.CLIENTES_Rel.FieldByName('TELEFONE').AsString,15, 'E')+
          DireiraEsquera(0, DataFinanceiro.CLIENTES_Rel.FieldByName('CELULAR').AsString,15, 'E'));
          TotaldaConta:=0;
          if DataFinanceiro.RECEBER_REL.Eof then
            break;
        end;
      end;
    end;
    Panel62.Visible:=true;
    Panel62.Caption:='Total Geral das Contas - '+FormatFloat('###,##0.00', TotalGeralX);
    TextListBox1.Sorted:=true;
    MENSPROCF.close;
  end;
  TextListBox1.SetFocus;
end;

procedure TCONTASRECPAGf.Button80Click(Sender: TObject);
begin
  inherited;
  TelaSenha;
  if senha='MANAGER' then begin
    OptConta:='Novo';
    if cxGrid1.Visible=true then begin
      {
      if cxButton5.Caption='Contas a Receber' then
        FiltroContasReceber( '0','R' )
      else
        FiltroContasReceber( '0','E' );
        }
      DataFinanceiro.RECEBER.Append;
      // DataFinanceiro.RECEBER.FieldByName('CODIGO').AsString:=DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString;
      DataFinanceiro.RECEBER.FieldByName('CODIGO').AsInteger:=DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsInteger;
      DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat:=1;
      DataFinanceiro.RECEBER.FieldByName('VALOR_RECEBIDO').AsFloat:=0;
      DataFinanceiro.RECEBER.FieldByName('ORDEM').AsString:=StrZero(1,2,0);
      DataFinanceiro.RECEBER.FieldByName('NUMERO').AsString:=StrZero(1,9,0);
      DataFinanceiro.RECEBER.FieldByName('TIPO').AsString:='P';
      DataFinanceiro.RECEBER.FieldByName('MODELO').AsString:='55';
      DataFinanceiro.RECEBER.FieldByName('SERIE').AsString:='001';
      DataFinanceiro.RECEBER.FieldByName('SUBSERIE').AsString:='01';
      DataFinanceiro.RECEBER.FieldByName('ORIGEM').AsString:='01';
      DataFinanceiro.RECEBER.FieldByName('EMISSAO').AsDateTime:=date;
      DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsDateTime:=date+30;
      DataFinanceiro.RECEBER.FieldByName('HISTORICO').AsString:='NOVA';
      DataFinanceiro.RECEBER.FieldByName('ESPECIE').AsString:='DUPLICATAS';
      DataFinanceiro.RECEBER.FieldByName('N_CAIXA').AsString:='1';
      DataFinanceiro.RECEBER.FieldByName('TURNO').AsString:='1';
      DataFinanceiro.RECEBER.FieldByName('HORA').AsDateTime:=time;
      DataFinanceiro.RECEBER.FieldByName('OPERADOR').AsString:='1';
      DataFinanceiro.RECEBER.FieldByName('MARCADO').AsString:='';

      with TGERALCONTASF.Create(Self) do begin
        Width:=Panel8.Width;
        Height:=Panel8.Height+50;
        NxNotebook61.ActivePageIndex:=0;
        ShowModal;
      end;
     {
      if ComboEdit1.Text='' then begin
        ComboEdit1.Text:=NovoLancamento;
        LocalizaContas;
      end;
      }
      cxGrid1.SetFocus;
      TatalContaReceber('');
    end;
    if ComboEdit1.Text='' then
      DataFinanceiro.RECEBER.Close;
    // ComboEdit1.SetFocus;
  end;
  cxGrid1.SetFocus;
end;

procedure TCONTASRECPAGf.Button81Click(Sender: TObject);
begin
  inherited;
  TelaSenha;
  if senha='MANAGER' then begin
    if cxGrid1.Visible=true then begin
      OptConta:='Editar';
      if DataFinanceiro.RECEBER.IsEmpty then
        ShowMessage('Sem Contas a Receber !!!')
      else begin
        DataFinanceiro.RECEBER.Edit;
        JurosDescontos:=DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat;
        with TGERALCONTASF.Create(Self) do begin
          Width:=Panel8.Width;
          Height:=Panel8.Height+50;
          NxNotebook61.ActivePageIndex:=0;
          caption:='Contas a Receber';
          ShowModal;
        end;
        if JurosDescontos<DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat then begin
          NumedordoLancamento;
          InformacoesRecebimentoContas('Juros '+DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString+'-'+
          DataFinanceiro.CADASTRO_CLIENTES.FieldByName('NOME').AsString,
          'Juros no vencimento '+
          DataFinanceiro.RECEBER.FieldByName('NUMERO').AsString+'/'+DataFinanceiro.RECEBER.FieldByName('ORDEM').AsString,'C',
          'P',
          '',
          DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat-JurosDescontos,
          0);
        end
        else if JurosDescontos>DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat then begin
          NumedordoLancamento;
          InformacoesRecebimentoContas('Desc. '+DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString+'-'+
          DataFinanceiro.CADASTRO_CLIENTES.FieldByName('NOME').AsString,
          'Desconto no vencimento '+
          DataFinanceiro.RECEBER.FieldByName('NUMERO').AsString+'/'+DataFinanceiro.RECEBER.FieldByName('ORDEM').AsString,'D',
          'P',
          '',
          JurosDescontos-DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat,
          0);
        end;
        cxGrid1.SetFocus;
        TatalContaReceber('');
      end;
    end;
  end;
  cxGrid1.SetFocus;
end;

procedure TCONTASRECPAGf.Button82Click(Sender: TObject);
begin
  inherited;
  TelaSenha;
  if senha='MANAGER' then begin
    if DataFinanceiro.RECEBER.IsEmpty then
      ShowMessage('Sem Contas a Receber !!!')
    else begin
      if Application.MessageBox('Deseja Deletar essa Conta ?','Confirmação',MB_YESNO + MB_ICONQUESTION)= ID_YES then begin

        NumedordoLancamento;
        InformacoesRecebimentoContas('Deletado '+DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString+'-'+
        DataFinanceiro.CADASTRO_CLIENTES.FieldByName('NOME').AsString,
        'Vencimento deletado '+
        DataFinanceiro.RECEBER.FieldByName('NUMERO').AsString+'/'+DataFinanceiro.RECEBER.FieldByName('ORDEM').AsString,'D',
        'P',
        '',
        DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat,
        0);

        DataFinanceiro.RECEBER.Delete;
        TatalContaReceber('');
      end;
      cxGrid1.SetFocus;
    end;
  end;
  // ComboEdit1.SetFocus;
  cxGrid1.SetFocus;
end;

procedure TCONTASRECPAGf.ComboEdit1ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TCONTASRECPAGf.ComboEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Pesquisa;
  if key=vk_return then
    LocalizaContas;
  if key=Vk_Delete then begin
    ComboEdit1.Clear;
    DataFinanceiro.RECEBER.Close;
  end;
end;

procedure TCONTASRECPAGf.CreditoClienteEnter(Sender: TObject);
begin
  inherited;
  FiltroCredito(DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString);
  if DataFinanceiro.CREDITO.IsEmpty then
    DataFinanceiro.CREDITO.Append
  else begin
    DataFinanceiro.CREDITO.Edit;
    CreditoCliente.Value:=DataFinanceiro.CREDITO.FieldByName('VALOR').AsFloat;
  end;
end;

procedure TCONTASRECPAGf.CreditoClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
     Button14.Click;
end;

procedure TCONTASRECPAGF.Pesquisa;
begin
  if ComboEdit1.Focused then begin
    ConsultaClientes;
    ComboEdit1.Text:=CodigoConsulta;
    LocalizaContas;
  end;
end;

procedure TCONTASRECPAGF.LocalizaContasAPagar;
begin
  {
  FiltroContasAPagar( ComboEdit2.Text );
  if DataFinanceiro.PAGAR.IsEmpty then begin
    ShowMessage('Fornecedor não tem nenhuma conta !!!');
    ComboEdit2.SetFocus;
  end
  else begin
    NxPanel19.Caption:=DataFinanceiro.PAGAR.FieldByName('fornecedor').AsString;
    cxGrid4.SetFocus;
  end;
  TatalContaAPagar;
  ComboEdit2.SetFocus;
  }
end;

procedure TCONTASRECPAGF.TatalContaAPagar;
var TotalGeralX:double;
begin
  inherited;
  TotalConta:=0;
  DataFinanceiro.PAGAR.First;
  while not DataFinanceiro.PAGAR.Eof do
  begin
    TotalGeralX:=TotalGeralX+(DataFinanceiro.PAGAR.FieldByName('VALOR').AsFloat-
      DataFinanceiro.PAGAR.FieldByName('VALOR_PAGO').AsFloat);
    DataFinanceiro.PAGAR.Next
  end;
  NxPanel17.Caption:=FormatFloat('###,##0.00',TotalGeralX);
  TotalConta:=TotalGeralX;
end;

procedure TCONTASRECPAGF.LocalizaContas;
begin
  cxGrid1.Visible:=false;
  if ComboEdit1.Text<>'' then begin
    {
    DataFinanceiro.CREDITO.Close;
    DataFinanceiro.CREDITO.SQL.Clear;
    DataFinanceiro.CREDITO.SQL.Add('SELECT * FROM CREDITO where CODIGO='+QuotedStr(DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString));
    DataFinanceiro.CREDITO.Open;
    }
    DataFinanceiro.CADASTRO_CLIENTES.Close;
    DataFinanceiro.CADASTRO_CLIENTES.SQL.Clear;
    DataFinanceiro.CADASTRO_CLIENTES.SQL.Add('Select * from CLIENTES where CODIGO='+QuotedStr(ComboEdit1.Text));
    DataFinanceiro.CADASTRO_CLIENTES.Open;

    if not DataFinanceiro.CADASTRO_CLIENTES.IsEmpty then begin
      FiltroCredito(DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString);
      if not DataFinanceiro.CREDITO.IsEmpty then
        Panel54.Caption:=FormatFloat('###,##0.00',DataFinanceiro.CREDITO.FieldByName('VALOR').AsFloat)
      else
        Panel54.Caption:=FormatFloat('###,##0.00',0);

      FiltraAConta;
      Panel1.Caption:=DataFinanceiro.CADASTRO_CLIENTES.FieldByName('nome').AsString;
      if DataFinanceiro.RECEBER.IsEmpty then begin
        cxGrid1.Visible:=true;
        Panel13.Caption:=FormatFloat('###,##0.00',0);
        ShowMessage('Cliente não tem nenhuma conta !!!');
      end
      else begin
        if DataFinanceiro.CADASTRO_CLIENTES.FieldByName('DIAVENCIMENTO').AsString<>'' then
          Label4.Caption:='Vencimento do Cliente é Dia '+DataFinanceiro.CADASTRO_CLIENTES.FieldByName('DIAVENCIMENTO').AsString
        else
          Label4.Caption:='';

        DataFinanceiro.Soma_Receber.Close;
        DataFinanceiro.Soma_Receber.SQL.Clear;
        // DataFinanceiro.Soma_Receber.SQL.Add('UPDATE RECEBER SET MARCADO ='+QuotedStr('')+' where CODIGO='+QuotedStr(ComboEdit1.Text) );
        DataFinanceiro.Soma_Receber.SQL.Add('UPDATE RECEBER SET MARCADO ='+QuotedStr('')+' where CODIGO='+QuotedStr(ComboEdit1.Text)+
        ' and  MARCADO='+QuotedStr('X'));
        DataFinanceiro.Soma_Receber.ExecSQL;
        DataFinanceiro.RECEBER.Refresh;

        {
        FiltroContasReceber( ComboEdit1.Text,'RX' );
        if not DataFinanceiro.RECEBER.IsEmpty then begin
          DataFinanceiro.RECEBER.First;

          while not DataFinanceiro.RECEBER.Eof do begin
            DataFinanceiro.RECEBER.Edit;
            DataFinanceiro.RECEBER.FieldByName('MARCADO').AsString:='';
            DataFinanceiro.RECEBER.Next;
          end;

        end;
        // FiltroContasReceber( ComboEdit1.Text,'R' );
        FiltraAConta;
        }
        TatalContaReceber('');
        cxGrid1.Visible:=true;
        cxGrid1.SetFocus;
      end;
    end
    else begin
      cxGrid1.Visible:=true;
      cxGrid1.SetFocus;
      FiltraAConta;
      Panel1.Caption:='';
      ShowMessage('Cliente Inexistente !!!');
    end;

    {
    if not (DataFinanceiro.RECEBER.IsEmpty) and not (DataFinanceiro.CREDITO.IsEmpty) then begin
      if Application.MessageBox(Pchar('Cliente possuí Crédito de (R$ '+FormatFloat('###,##0.00',DataFinanceiro.CREDITO.FieldByName('VALOR').AsFloat)+') deseja abater agora ?'), 'Confirmação',
        MB_YESNO + MB_ICONQUESTION) = ID_YES then
      begin
        Button1.Click;
      end;
    end;
    }
  end;
  cxGrid1.Visible:=true;
  // ComboEdit1.SetFocus;
  if DataFinanceiro.RECEBER.IsEmpty then
    ComboEdit1.SetFocus
  else begin
    cxGrid1.SetFocus;
    if CheckBox8.Checked=true then
      cxButton36.Click;
  end;
end;

procedure TCONTASRECPAGF.FiltraAConta;
begin
  if cxButton5.Caption='Contas a Receber' then
    FiltroContasReceber( ComboEdit1.Text,'R' )
  else
    FiltroContasReceber( ComboEdit1.Text,'E' );
end;

procedure TCONTASRECPAGF.TatalContaReceber(Marca:string);
begin
  inherited;
  // cxGrid1.Visible:=false;
  TotalGeralX:=0;

  if Marca='S' then begin
    // FiltroContasReceberMarcado( CodigoDoCliente, RecebeEstorna: String )
    {
    FiltroContasReceberMarcado( ComboEdit1.Text,'RX' );
    while not DataFinanceiro.RECEBER_marca.Eof do begin
      TotalGeralX:=TotalGeralX+(DataFinanceiro.RECEBER_marca.FieldByName('VALOR').AsFloat-
      DataFinanceiro.RECEBER_marca.FieldByName('VALOR_RECEBIDO').AsFloat);
      DataFinanceiro.RECEBER_marca.Next
    end;
    }

    DataFinanceiro.Soma_Receber.Close;
    DataFinanceiro.Soma_Receber.SQL.Clear;
    DataFinanceiro.Soma_Receber.SQL.Add('SELECT Sum(VALOR-VALOR_RECEBIDO) as Total from RECEBER where CODIGO='+
    ComboEdit1.Text+' and VALOR<>VALOR_RECEBIDO and MARCADO='+QuotedStr('X'));
    DataFinanceiro.Soma_Receber.Open;
    TotalGeralX:=DataFinanceiro.Soma_Receber.FieldByName('Total').AsFloat;
  end
  else begin
    {
    DataFinanceiro.RECEBER.First;
    while not DataFinanceiro.RECEBER.Eof do
    begin
      if cxButton5.Caption='Contas a Receber' then begin
          TotalGeralX:=TotalGeralX+(DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat-
          DataFinanceiro.RECEBER.FieldByName('VALOR_RECEBIDO').AsFloat);
      end
      else if cxButton5.Caption='Contas Pagas' then begin
        if DataFinanceiro.RECEBER.FieldByName('VALOR_RECEBIDO').AsFloat<>DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat then
          TotalGeralX:=TotalGeralX+DataFinanceiro.RECEBER.FieldByName('VALOR_RECEBIDO').AsFloat
        else
          TotalGeralX:=TotalGeralX+DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat;
      end;
      DataFinanceiro.RECEBER.Next
    end;
    }
    if cxButton5.Caption='Contas a Receber' then begin
      DataFinanceiro.Soma_Receber.Close;
      DataFinanceiro.Soma_Receber.SQL.Clear;
      DataFinanceiro.Soma_Receber.SQL.Add('select Sum(VALOR-VALOR_RECEBIDO) as Total from RECEBER');
      DataFinanceiro.Soma_Receber.SQL.Add('where CODIGO='+ComboEdit1.Text);
      DataFinanceiro.Soma_Receber.Open;
      TotalGeralX:=DataFinanceiro.Soma_Receber.FieldByName('Total').AsFloat;
    end
    else if cxButton5.Caption='Contas Pagas' then begin
      DataFinanceiro.Soma_Receber.Close;
      DataFinanceiro.Soma_Receber.SQL.Clear;
      DataFinanceiro.Soma_Receber.SQL.Add('select Sum(VALOR_RECEBIDO) as Total from RECEBER');
      DataFinanceiro.Soma_Receber.SQL.Add('where CODIGO='+ComboEdit1.Text);
      DataFinanceiro.Soma_Receber.Open;
      TotalGeralX:=DataFinanceiro.Soma_Receber.FieldByName('Total').AsFloat;
    end;

    DataFinanceiro.RECEBER.First;
  end;
  Panel13.Caption:=FormatFloat('###,##0.00',TotalGeralX);
  TotalConta:=TotalGeralX;
end;

procedure TCONTASRECPAGf.cxButton10Click(Sender: TObject);
begin
  inherited;
  Baixax:='';
  if cxButton8.Caption='Contas a Pagar' then begin
    TotalContaBaixa:=DataFinanceiro.PAGAR.FieldByName('VALOR').AsFloat-
    DataFinanceiro.PAGAR.FieldByName('VALOR_PAGO').AsFloat;
    ValorTotalDaBaixa:=TotalContaBaixa;
    BaixaContasAPagar;
  end;
  if cxButton8.Caption='Contas Pagas' then begin
    TotalContaBaixa:=DataFinanceiro.PAGAR.FieldByName('VALOR_PAGO').AsFloat;
    ValorTotalDaBaixa:=TotalContaBaixa;
    EstornarContasAPargar;
  end;
  AcertaContasaPagar;
  cxGrid4.SetFocus;
end;

procedure TCONTASRECPAGf.cxButton11Click(Sender: TObject);
begin
  inherited;
  RelSaldosVencimentosContas(DataFinanceiro.FORNECEDORES_REL,DataFinanceiro.PAGAR_REL,'PAGAR','VALOR_PAGO');
end;

procedure TCONTASRECPAGf.cxButton127Click(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.VENDAS_ECF2.Close;
  DADOSFRENTEf.VENDAS_ECF2.SQL.Clear;
  DADOSFRENTEf.VENDAS_ECF2.SQL.Add('SELECT * FROM VENDAS_ECF2 WHERE CUPOM='+Quotedstr(DataFinanceiro.RECEBER.FieldByName('NUMERO').AsString));
  DADOSFRENTEf.VENDAS_ECF2.Open;

  if not DADOSFRENTEf.VENDAS_ECF2.IsEmpty then begin
    FiltroItensCupomFuncao;
    FiltroItensFormasPagamento;
    FiltroItensContasReceber;
    FiltroDADOCLIE;
    ImprOrcamento;
    FechaTabeladaVenda;
    LocalizaContas;
  end;
end;

procedure TCONTASRECPAGf.cxButton24Click(Sender: TObject);
begin
  inherited;
  if not DataFinanceiro.RECEBER.IsEmpty then begin
    DataFinanceiro.ITEVENDAS_ECF2.Close;
    DataFinanceiro.ITEVENDAS_ECF2.SQL.Clear;
    DataFinanceiro.ITEVENDAS_ECF2.SQL.Add('Select * from ITEVENDAS_ECF2');
    DataFinanceiro.ITEVENDAS_ECF2.SQL.Add('Where Cupom='+DataFinanceiro.RECEBER.FieldByName('NUMERO').AsString);
    DataFinanceiro.ITEVENDAS_ECF2.Open;
    with TGERALCONTASF.Create(Self) do begin
      Width:=Panel1.Width;
      Height:=Panel1.Height;
      NxNotebook61.ActivePageIndex:=5;
      Panel49.caption:='Itens da Venda !!!';
      ShowModal;
    end;
    cxGrid1.SetFocus;
  end;
end;

procedure TCONTASRECPAGf.cxButton26Click(Sender: TObject);
var Parcelas:integer;
begin
  inherited;
  if DataFinanceiro.RECEBER.IsEmpty then
    ShowMessage('Cliente sem Contas a Receber !!!')
  else begin
    Parcelas:=0;
    DataFinanceiro.RECEBER.First;
    while not DataFinanceiro.RECEBER.Eof do begin
      Parcelas:=Parcelas+1;
      DataFinanceiro.RECEBER.Next;
    end;
    QuantidadeParcelas:=IntToSTr(Parcelas);
    DataFinanceiro.RECEBER.First;
    FiltraQuery(DADOSFRENTEf.CADASTRO_CLIENTES,'CLIENTES',DataFinanceiro.RECEBER.FieldByName('CODIGO').AsString);
    with TGERALF.Create(Self) do begin
      Width:=Panel5.Width;
      Height:=Panel5.Height;
      BitBtn1.Visible:=true;
      BitBtn25.Visible:=false;
      NxNotebook61.ActivePageIndex:=1;
      ShowModal;
    end;
  end;
  cxGrid1.SetFocus;
end;

procedure TCONTASRECPAGf.cxButton27Click(Sender: TObject);
begin
  inherited;
  if DataFinanceiro.RECEBER.IsEmpty then
    ShowMessage('Cliente sem Contas a Receber !!!')
  else begin
    RecCobra;
    cxGrid1.SetFocus;
  end;
end;

procedure TCONTASRECPAGf.cxButton31Click(Sender: TObject);
begin
  inherited;
  if cxButton33.Caption='Cartões Baixados' then
    FiltroCartoesGeralEstorno
  else if cxButton33.Caption='Cartões a Vencer' then
    FiltroCartoesGeral;
  TotalCartoes;
  if DataFinanceiro.CARTOESITENS.IsEmpty then begin
    cxGrid9.SetFocus;
    ShowMessage('Não tem nenhuma Conta a Pagar !!!');
  end
  else begin
    TotalGeralConta:=TotalConta;
    with TGERALCONTASF.Create(Self) do begin
      Width:=Panel12.Width;
      Height:=Panel12.Height;
      NxNotebook61.ActivePageIndex:=3;
      Panel19.Caption:=FormatFloat('###,##0.00',TotalGeralConta);
      ShowModal;
    end;
    Baixax:='Valor';
    if cxButton33.Caption='Cartões a Vencer' then begin
      if TotalGeralContaBaixar>0 then begin
        TotalContaBaixa:=TotalGeralContaBaixar;
        BaixaCartao;
      end;
    end
    else begin
      if TotalGeralContaBaixar>0 then begin
        TotalContaBaixa:=TotalGeralContaBaixar;
      end;
    end;
    if cxButton33.Caption='Cartões Baixados' then begin
      if TotalGeralContaBaixar>0 then begin
        TotalContaBaixa:=TotalGeralContaBaixar;
        EstornarCartao;
      end;
    end
    else begin
      if TotalGeralContaBaixar>0 then begin
        TotalContaBaixa:=TotalGeralContaBaixar;
      end;
    end;
  end;
  AcertaCartoes;
  cxGrid9.SetFocus;
end;

procedure TCONTASRECPAGF.AcertaCartoes;
begin
  if cxButton33.Caption='Cartões Baixados' then
    FiltroCartoesGeralEstorno
  else if cxButton33.Caption='Cartões a Vencer' then
    FiltroCartoesGeral;

  TotalCartoes;
end;

procedure TCONTASRECPAGF.EstornarCartao;
var TotalGeralX,ValorBaixa,ValorCaixa,diferenca:double;
begin
  inherited;
  if Baixax='Valor' then
    DataFinanceiro.CARTOESITENS.First;
  while not DataFinanceiro.CARTOESITENS.Eof do begin
    DADOSFRENTEf.CONF_PADRAO.Open;
    DataFinanceiro.CARTOESITENS.Edit;
    ValorCaixa:=DataFinanceiro.CARTOESITENS.FieldByName('VALOR_RECEBIDO').AsFloat;
    diferenca:=ValorCaixa-TotalContaBaixa;
    if diferenca>0 then begin
      ValorCaixa:=ValorCaixa-diferenca;
    end;
    TotalContaBaixa:=TotalContaBaixa-ValorCaixa;
    if ValorCaixa<DataFinanceiro.CARTOESITENS.FieldByName('VALOR_RECEBIDO').AsFloat then
      DataFinanceiro.CARTOESITENS.FieldByName('VALOR_RECEBIDO').AsFloat:=diferenca
    else
      DataFinanceiro.CARTOESITENS.FieldByName('VALOR_RECEBIDO').AsFloat:=0;
    DataFinanceiro.CARTOESITENS.Post;
    if TotalContaBaixa=0 then
      break;
    DataFinanceiro.CARTOESITENS.Next
  end;
end;

procedure TCONTASRECPAGF.BaixaCartao;
var TotalGeralX,ValorBaixa,ValorCaixa:double;
begin
  inherited;
  if Baixax='Valor' then
    DataFinanceiro.CARTOESITENS.First;
  while not DataFinanceiro.CARTOESITENS.Eof do begin
    DADOSFRENTEf.CONF_PADRAO.Open;
    DataFinanceiro.CARTOESITENS.Edit;
    ValorCaixa:=DataFinanceiro.CARTOESITENS.FieldByName('VALORDES').AsFloat;
    TotalContaBaixa:=TotalContaBaixa-DataFinanceiro.CARTOESITENS.FieldByName('VALORDES').AsFloat;
    if DataFinanceiro.CARTOESITENS.FieldByName('VALOR_RECEBIDO').AsFloat>0 then begin
      TotalContaBaixa:=TotalContaBaixa+DataFinanceiro.CARTOESITENS.FieldByName( 'VALOR_RECEBIDO').AsFloat;
      ValorCaixa:=DataFinanceiro.CARTOESITENS.FieldByName('VALORDES').AsFloat-
      DataFinanceiro.CARTOESITENS.FieldByName('VALOR_RECEBIDO').AsFloat;
    end;
    DataFinanceiro.CARTOESITENS.FieldByName('VALOR_RECEBIDO').AsFloat:=
      DataFinanceiro.CARTOESITENS.FieldByName('VALORDES').AsFloat;
    if TotalContaBaixa<0 then begin
      DataFinanceiro.CARTOESITENS.FieldByName('VALOR_RECEBIDO').AsFloat:=
        DataFinanceiro.CARTOESITENS.FieldByName('VALORDES').AsFloat+(TotalContaBaixa);
        ValorCaixa:=DataFinanceiro.CARTOESITENS.FieldByName('VALORDES').AsFloat-(
          TotalContaBaixa*-1);
      TotalContaBaixa:=0;
    end;
    DataFinanceiro.CARTOESITENS.Post;
    if TotalContaBaixa=0 then
      break;
    DataFinanceiro.CARTOESITENS.Next
  end;
end;

procedure TCONTASRECPAGF.TotalCartoes;
var TotalVencidas:double;
begin
  inherited;
  if cxButton33.Caption='Cartões Baixados' then begin
    FiltroCartoesGeralEstornoTotal;
    NxPanel60.Visible:=false;
    NxPanel61.Visible:=false;
    NxPanel59.Visible:=false;
    NxPanel58.Visible:=false;
  end
  else if cxButton33.Caption='Cartões a Vencer' then begin
    if FiltroCartoesVenciddos<>'S' then
      FiltroCartoesGeralTotal
    else
      FiltroCartoesGeralTotalVencidos;
    NxPanel60.Visible:=true;
    NxPanel61.Visible:=true;
    NxPanel59.Visible:=true;
    NxPanel58.Visible:=true;
  end;

  TotalGeralX:=0;
  DataFinanceiro.CARTOESITENS_TOTAL.First;
  while not DataFinanceiro.CARTOESITENS_TOTAL.Eof do begin
    if cxButton33.Caption='Cartões a Vencer' then begin
      TotalGeralX:=TotalGeralX+(DataFinanceiro.CARTOESITENS_TOTAL.FieldByName('VALORDES').AsFloat-
      DataFinanceiro.CARTOESITENS_TOTAL.FieldByName('VALOR_RECEBIDO').AsFloat);
      if DataFinanceiro.CARTOESITENS_TOTAL.FieldByName('VENCIMENTO').AsDateTime>=date then begin
        TotalVencidas:=TotalVencidas+(DataFinanceiro.CARTOESITENS_TOTAL.FieldByName('VALORDES').AsFloat-
        DataFinanceiro.CARTOESITENS_TOTAL.FieldByName('VALOR_RECEBIDO').AsFloat);
      end;
    end
    else if cxButton33.Caption='Cartões Baixados' then begin
      if DataFinanceiro.CARTOESITENS_TOTAL.FieldByName('VALOR_RECEBIDO').AsFloat<>DataFinanceiro.CARTOESITENS_TOTAL.FieldByName('VALORDES').AsFloat then
        TotalGeralX:=TotalGeralX+DataFinanceiro.CARTOESITENS_TOTAL.FieldByName('VALOR_RECEBIDO').AsFloat
      else
        TotalGeralX:=TotalGeralX+DataFinanceiro.CARTOESITENS_TOTAL.FieldByName('VALORDES').AsFloat;
    end;
    DataFinanceiro.CARTOESITENS_TOTAL.Next
  end;
  DataFinanceiro.CARTOESITENS_TOTAL.First;
  NxPanel56.Caption:=FormatFloat('###,##0.00',TotalGeralX);
  NxPanel59.Caption:=FormatFloat('###,##0.00',TotalVencidas);
  NxPanel58.Caption:=FormatFloat('###,##0.00',TotalGeralX-TotalVencidas);
  TotalConta:=TotalGeralX;
  FiltroCartoesVenciddos:='';
end;

procedure TCONTASRECPAGf.cxButton32Click(Sender: TObject);
begin
  inherited;
  Baixax:='';
  if cxButton33.Caption='Cartões a Vencer' then begin
    TotalContaBaixa:=DataFinanceiro.CARTOESITENS.FieldByName('VALORDES').AsFloat-
    DataFinanceiro.CARTOESITENS.FieldByName('VALOR_RECEBIDO').AsFloat;
    ValorTotalDaBaixa:=TotalContaBaixa;
    BaixaCartao;
  end;

  if cxButton33.Caption='Cartões Baixados' then begin
    TotalContaBaixa:=DataFinanceiro.CARTOESITENS.FieldByName('VALOR_RECEBIDO').AsFloat;
    ValorTotalDaBaixa:=TotalContaBaixa;
    EstornarCartao;
  end;
  AcertaCartoes;
  cxGrid9.SetFocus;
end;

procedure TCONTASRECPAGf.cxButton33Click(Sender: TObject);
begin
  inherited;
  if cxButton33.Caption='Cartões Baixados' then begin
    cxButton31.Caption:='&Baixar por Valor';
    cxButton32.Caption:='Baixar um Cartão';
    cxButton33.Caption:='Cartões a Vencer';
    cxButton38.Visible:=true;
    FiltroCartoesGeral;
  end
  else if cxButton33.Caption='Cartões a Vencer' then begin
    cxButton31.Caption:='&Estornar por Valor';
    cxButton32.Caption:='&Estornar um Cartao';
    cxButton33.Caption:='Cartões Baixados';
    cxButton38.Visible:=false;
    FiltroCartoesGeralEstorno;
  end;
  TotalCartoes;
  cxGrid9.SetFocus;
end;

procedure TCONTASRECPAGf.cxButton34Click(Sender: TObject);
begin
  inherited;
  // dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link1;
  // dxComponentPrinter1.Preview();
end;

procedure TCONTASRECPAGf.cxButton36Click(Sender: TObject);
begin
  inherited;
  if cxButton36.Caption='<F2>Filtra contas vencidas' then begin
    FiltroContasReceber( ComboEdit1.Text,'RV' );
    TatalContaReceber('');
    cxButton36.Caption:='<F2>Filtra todas as contas'
  end
  else if cxButton36.Caption='<F2>Filtra todas as contas' then begin
    FiltroContasReceber( ComboEdit1.Text,'R' );
    TatalContaReceber('');
    cxButton36.Caption:='<F2>Filtra contas vencidas'
  end;
  cxGrid1.SetFocus;
end;

procedure TCONTASRECPAGf.cxButton38Click(Sender: TObject);
begin
  inherited;
  if cxButton38.Caption='<F2> Cartões Vencidos' then begin
    FiltroCartoesVenciddos:='S';
    FiltroCartoesGeralVencidos;
    TotalCartoes;
    cxButton38.Caption:='<F2> Todas os Cartões'
  end
  else if cxButton38.Caption='<F2> Todas os Cartões' then begin
    // FiltroContasReceber( ComboEdit1.Text,'R' );
    // TatalContaReceber('');
    AcertaCartoes;
    cxButton38.Caption:='<F2> Cartões Vencidos'
  end;
  cxGrid9.SetFocus;
end;

procedure TCONTASRECPAGf.cxButton3Click(Sender: TObject);
begin
  inherited;
  if DataFinanceiro.RECEBER.IsEmpty then begin
    cxGrid1.SetFocus;
    Panel13.Caption:=FormatFloat('###,##0.00',0);
    ShowMessage('Cliente não tem nenhuma conta !!!');
  end
  else begin
    SomaAnt;
    TotalGeralConta:=TotalConta;
    with TGERALCONTASF.Create(Self) do begin
      Width:=Panel12.Width;
      Height:=Panel12.Height;
      NxNotebook61.ActivePageIndex:=3;
      Panel19.Caption:=FormatFloat('###,##0.00',TotalGeralConta);
      ShowModal;
    end;
    if TotalGeralContaBaixar>0 then begin
       RecebeConta('Recebimento');
    end;
  end;
end;


procedure TCONTASRECPAGf.RecebeConta(CreditoRecebimento:string);
begin
  Baixax:='Valor';
  if cxButton5.Caption='Contas a Receber' then begin
    if TotalGeralContaBaixar>0 then begin
      TotalContaBaixa:=TotalGeralContaBaixar;
      OPTCREDITORECEBIMENTO:=CreditoRecebimento;
      if CreditoRecebimento='Credito' then begin
        TotalGeralContaBaixar:=DataFinanceiro.CREDITO.FieldByName('VALOR').AsFloat;
        NumedordoLancamento;
        InformacoesRecebimentoContas('REC. '+DataFinanceiro.CREDITO.FieldByName('CODIGO').AsString+'-'+
        DataFinanceiro.CREDITO.FieldByName('NOME').AsString,
        'ABATIMENTO DO CREDITO','D',
        'A',
        '',
        TotalGeralX,
        0);

        NumedordoLancamento;
        InformacoesRecebimentoContas('REC. '+DataFinanceiro.CREDITO.FieldByName('CODIGO').AsString+'-'+
        DataFinanceiro.CREDITO.FieldByName('NOME').AsString,
        'ABATIMENTO DO CREDITO','C',
        'A',
        '',
        TotalGeralX,
        0);

        if TotalGeralX<TotalGeralContaBaixar then begin
          DataFinanceiro.CREDITO.Edit;
          DataFinanceiro.CREDITO.FieldByName('VALOR').AsFloat:=DataFinanceiro.CREDITO.FieldByName('VALOR').AsFloat-TotalGeralX;
          DataFinanceiro.CREDITO.Post;
          Credito:=DataFinanceiro.CREDITO.FieldByName('VALOR').AsFloat;
        end
        else begin
          Credito:=0;
          DataFinanceiro.CREDITO.Delete;
        end;

      end
      else
        ConfirmaFormasdePagamentodasContas;
      TotalContaBaixa:=TotalGeralContaBaixar;
      if TotalGeralContaBaixar>0 then begin
        cxGrid1.Visible:=false;
        BaixaContasAReceber;
        cxGrid1.Visible:=true;
        LocalizaContas;
      end;
    end;
    if (CheckBox1.Checked=true) and (TotalGeralContaBaixar>0) then begin
      ValorTotalDaBaixa:=TotalGeralContaBaixar;
      ImprimeRecibo('Pagamento de Contas');
    end;
  end
  else begin
    if TotalGeralContaBaixar>0 then begin
      TotalContaBaixa:=TotalGeralContaBaixar;
      LocalizaContas;
    end;
  end;
  if cxButton5.Caption='Contas Pagas' then begin
    if TotalGeralContaBaixar>0 then begin
      TotalContaBaixa:=TotalGeralContaBaixar;
      ConfirmaFormasdePagamentodasContas;
      TotalContaBaixa:=TotalGeralContaBaixar;
      cxGrid1.Visible:=false;
      EstornarContasAReceber;
      cxGrid1.Visible:=true;
      LocalizaContas;
    end;
  end
  else begin
    if TotalGeralContaBaixar>0 then begin
      TotalContaBaixa:=TotalGeralContaBaixar;
      LocalizaContas;
    end;
  end;
end;


procedure TCONTASRECPAGF.EstornarContasAReceber;
var TotalGeralX,ValorBaixa,ValorCaixa,diferenca:double;
begin
  inherited;
  if Baixax='Valor' then
    DataFinanceiro.RECEBER.First;
  while not DataFinanceiro.RECEBER.Eof do begin
    DADOSFRENTEf.CONF_PADRAO.Open;
    DataFinanceiro.RECEBER.Edit;
    ValorCaixa:=DataFinanceiro.RECEBER.FieldByName('VALOR_RECEBIDO').AsFloat;
    diferenca:=ValorCaixa-TotalContaBaixa;
    if diferenca>0 then begin
      ValorCaixa:=ValorCaixa-diferenca;
    end;
    TotalContaBaixa:=TotalContaBaixa-ValorCaixa;
    if ValorCaixa<DataFinanceiro.RECEBER.FieldByName('VALOR_RECEBIDO').AsFloat then
      DataFinanceiro.RECEBER.FieldByName('VALOR_RECEBIDO').AsFloat:=diferenca
    else
      DataFinanceiro.RECEBER.FieldByName('VALOR_RECEBIDO').AsFloat:=0;
    if TotalContaBaixa<0 then begin
      TotalContaBaixa:=0;
    end
    else
      DataFinanceiro.RECEBER.FieldByName('RECEBIMENTO').Clear;
    DataFinanceiro.RECEBER.Post;
    if TotalContaBaixa=0 then
      break;
    DataFinanceiro.RECEBER.Next
  end;

  NumedordoLancamento;
  DADOSFRENTEf.DiversasFormas.First;
  while not DADOSFRENTEf.DiversasFormas.Eof do begin
    // InformacoesRecebimentoContas('Estorno de Contas a Receber - '+ComboEdit1.Text+'-'+

    {
    InformacoesRecebimentoContas('REC. '+ComboEdit1.Text+'-'+
      NxPanel6.Caption,
      DADOSFRENTEf.DiversasFormas.FieldByName('FORMADEPAGAMENTO').AsString,'C',
      DADOSFRENTEf.DiversasFormas.FieldByName('AVISTAPRAZO').AsString,
      '',
      DADOSFRENTEf.DiversasFormas.FieldByName('VALOR').AsFloat,
      0);
    }

    InformacoesRecebimentoContas('Estorno - '+ComboEdit1.Text+'-'+
      Panel1.Caption,
      DADOSFRENTEf.DiversasFormas.FieldByName('FORMADEPAGAMENTO').AsString,'D',
      DADOSFRENTEf.DiversasFormas.FieldByName('AVISTAPRAZO').AsString,
      '',
      DADOSFRENTEf.DiversasFormas.FieldByName('VALOR').AsFloat,
      0);
    DADOSFRENTEf.DiversasFormas.Edit;
    DADOSFRENTEf.DiversasFormas.FieldByName('CUPOM').AsString:=BaixaContasAReceberNumedor;
    DADOSFRENTEf.DiversasFormas.FieldByName('CODIGO').AsString:=DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString;
    DADOSFRENTEf.DiversasFormas.FieldByName('VALOR').AsFloat:=-DADOSFRENTEf.DiversasFormas.FieldByName('VALOR').AsFloat;
    DADOSFRENTEf.DiversasFormas.FieldByName('TOTALPAGO').AsFloat:=-DADOSFRENTEf.DiversasFormas.FieldByName('TOTALPAGO').AsFloat;
    DADOSFRENTEf.DiversasFormas.FieldByName('TROCO').AsFloat:=-DADOSFRENTEf.DiversasFormas.FieldByName('TROCO').AsFloat;
    DADOSFRENTEf.DiversasFormas.Post;
    DADOSFRENTEf.DiversasFormas.Next
  end;
  BaixaContasAReceberNumedor:='';
  DADOSFRENTEf.DiversasFormas.ApplyUpdates();
end;

procedure TCONTASRECPAGF.ImprimeRecibo(Referente:string);
begin
  while true do begin
    if Application.Messagebox('Deseja Imprimir o Recibo ?','Confirmação',MB_YESNO+MB_ICONQUESTION)=IDYES then begin
      Recibo2(ValorTotalDaBaixa,SomaAnterior,ComboEdit1.Text,
      DataFinanceiro.CADASTRO_CLIENTES.FieldByName('NOME').AsString,
      DataFinanceiro.CADASTRO_CLIENTES.FieldByName('ENDERECO').AsString,
      DataFinanceiro.CADASTRO_CLIENTES.FieldByName('NUMERO').AsString,
      Referente,
      DADOSFRENTEf.CAIXA.FieldByName('Documento').AsString,
      '1');
    end
    else
      break;
  end;
  // Documento  DADOSFRENTEf.CAIXA.FieldByName('CODIGO').AsString,
end;

procedure TCONTASRECPAGF.Recibo(Lancamento, TipoReciboXYZ, Recebemos,
  RecebemosEndereco, Referente, Emitente,documento,EnderecoEmitente,
  Grafico:string;ValorRecibo:double;DataRecibo:tdatetime);
var QuanImpr:integer;
    dia,mes,ano :string;
begin
  DADOSFRENTEf.EMITENTE.Open;
  DADOSFRENTEf.CONF_PADRAO.Open;
  dia:=StrZero(StrToInt(FormatDateTime('d',DataRecibo)),2,0);
  mes:=FormatDateTime('mmmm',DataRecibo); if mes='março' then mes:='marco';
  ano:=FormatDateTime('yyyy',DataRecibo);
  {
  Imp_Linha(02, 00, Padc(DADOSFRENTEf.EMITENTE.FieldByName(
    'CIDADE').AsString+', '+dia+' de '+mes+' de '+ano,78), 3, 'E');
  Imp_Linha(02, 00, 'EMITENTE: '+DADOSFRENTEf.EMITENTE.FieldByName(
    'NOME').AsString,55, 'E');
  Imp_Linha(02, 00, Padc(DADOSFRENTEf.EMITENTE.FieldByName(
    'CIDADE').AsString+', '+dia+' de '+mes+' de '+ano,78), 3, 'E');
    }
  with TVISUALIZACAOF.Create(Self) do begin
    for QuanImpr:=1  to 2 do begin
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('Lançamento: '+Lancamento+'                 ' +
        'RECIBO ' +'(' +TipoReciboXYZ+')                   '+DireiraEsquera(0,
          'R$ '+FormatFloat('###,##0.00',ValorRecibo), 10, 'D'));
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('Recebi(emos) de.: '+Recebemos+'');
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('Endereço: '+RecebemosEndereco+'');
      TextListBox1.Items.Add('');
      with TExtensof.Create(nil) do begin
        Edit1.Text:=FloatToStr(ABS(ValorRecibo));
        Button1.Click;
        TextListBox1.Items.Add('A importância de: '+Edit2.Text);
        TextListBox1.Items.Add('                  '+Edit3.Text);
      end;
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('Referênte: '+Referente);
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add(Padc(DADOSFRENTEf.EMITENTE.FieldByName(
        'CIDADE').AsString+', '+dia+' de '+mes+' de '+ano,78));
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('EMITENTE: '+Emitente);
      TextListBox1.Items.Add('CGC/CPF/RG: '+documento);
      TextListBox1.Items.Add('Endereço: '+EnderecoEmitente);
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add(
        'Assinatura:___________________________________________________________________');
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('');
    end;
    if Grafico='' then
      ShowModal
    else begin
      Show;
      Button1.Click;
      close;
    end;
  end;
end;

procedure TCONTASRECPAGF.BaixaContasAReceber;
var TotalGeralX,ValorBaixa,ValorCaixa:double;
    marca, Parcela123:string;
    dup: integer;
begin
  inherited;
  for dup:=1 to 200 do
    Ref[dup]:='';
  dup:=0;
  MeiosdeRecebimento:='';
  DADOSFRENTEf.DiversasFormas.First;
  while not DADOSFRENTEf.DiversasFormas.Eof do begin
    if DADOSFRENTEf.DiversasFormas.FieldByName('PARCELA').AsString<>'' then
      Parcela123:='-'+DADOSFRENTEf.DiversasFormas.FieldByName('PARCELA').AsString
    else
      Parcela123:='';
    MeiosdeRecebimento:=MeiosdeRecebimento+DADOSFRENTEf.DiversasFormas.FieldByName('FORMADEPAGAMENTO').AsString+
    Parcela123+'( '+FormatFloat('###,##0.00',DADOSFRENTEf.DiversasFormas.FieldByName('VALOR').AsFloat)+' ) ';
    DADOSFRENTEf.DiversasFormas.Next
  end;

  if Baixax='Valor' then begin
    DataFinanceiro.RECEBER.First;
    while not DataFinanceiro.RECEBER.Eof do begin
      if DataFinanceiro.RECEBER.FieldByName('MARCADO').AsString='X' then begin
        marca:='S';
        break;
      end;
      DataFinanceiro.RECEBER.Next;
    end;
    DataFinanceiro.RECEBER.First;
  end;

  while not DataFinanceiro.RECEBER.Eof do begin
    DADOSFRENTEf.CONF_PADRAO.Open;

    if Marca='S' then begin
      if DataFinanceiro.RECEBER.FieldByName('MARCADO').AsString<>'X' then begin
        DataFinanceiro.RECEBER.Next;
        continue;
      end;
    end;

    dup:=dup+1;
    DataFinanceiro.RECEBER.Edit;
    ValorCaixa:=DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat;
    TotalContaBaixa:=TotalContaBaixa-DataFinanceiro.RECEBER.FieldByName(
      'VALOR').AsFloat;
    if DataFinanceiro.RECEBER.FieldByName('VALOR_RECEBIDO').AsFloat>0 then begin
      TotalContaBaixa:=TotalContaBaixa+DataFinanceiro.RECEBER.FieldByName(
        'VALOR_RECEBIDO').AsFloat;
      ValorCaixa:=DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat-
      DataFinanceiro.RECEBER.FieldByName('VALOR_RECEBIDO').AsFloat;
    end;
    DataFinanceiro.RECEBER.FieldByName('VALOR_RECEBIDO').AsFloat:=
      DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat;
    if TotalContaBaixa<0 then begin
      DataFinanceiro.RECEBER.FieldByName('VALOR_RECEBIDO').AsFloat:=
        DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat+(TotalContaBaixa);
        ValorCaixa:=DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat-(
          TotalContaBaixa*-1);
      TotalContaBaixa:=0;
    end;
    DataFinanceiro.RECEBER.FieldByName('RECEBIMENTO').AsDateTime:=
      DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime;

    DataFinanceiro.RECEBER.FieldByName('MARCADO').AsString:='';

    DataFinanceiro.RECEBER.FieldByName('MEIOSPAGAMENTO').AsString:=MeiosdeRecebimento;

    DataFinanceiro.RECEBER.Post;

    if ValorCaixa<DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat then begin
      Ref[dup]:='Pg.Venc. '+
      DataFinanceiro.RECEBER.FieldByName('NUMERO').AsString+'/'+
      DataFinanceiro.RECEBER.FieldByName('ORDEM').AsString+' de '+
      DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsString+' R$'+
      DireiraEsquera(0, FormatFloat('###,##0.00',ValorCaixa), 9,'D')+' - parcial de R$'+
      DireiraEsquera(0, FormatFloat('###,##0.00',DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat), 9,'D');
    end
    else begin
      Ref[dup]:='Pg.Venc. '+
      DataFinanceiro.RECEBER.FieldByName('NUMERO').AsString+'/'+
      DataFinanceiro.RECEBER.FieldByName('ORDEM').AsString+' de '+
      DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsString+' R$'+
      DireiraEsquera(0, FormatFloat('###,##0.00',
      ValorCaixa), 9,'D');
    end;
    if TotalContaBaixa=0 then
      break;
    DataFinanceiro.RECEBER.Next
  end;
  NumedordoLancamento;
  if OPTCREDITORECEBIMENTO<>'Credito' then begin
    DADOSFRENTEf.DiversasFormas.First;
    while not DADOSFRENTEf.DiversasFormas.Eof do begin
      // InformacoesRecebimentoContas('Contas a Receber - '+ComboEdit1.Text+'-'+
      // InformacoesRecebimentoContas(Historico,Observacao,dc,ap,parcela:string;Valor:double;Cliente:integer);
      // NxPanel6.Caption+DataFinanceiro.RECEBER.FieldByName('ORDEM').AsString,
      // InformacoesRecebimentoContas('REC. '+ComboEdit1.Text+'-'+
      //   Panel1.Caption,

      InformacoesRecebimentoContas('REC. '+DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString+'-'+
        DataFinanceiro.CADASTRO_CLIENTES.FieldByName('NOME').AsString,
        DADOSFRENTEf.DiversasFormas.FieldByName('FORMADEPAGAMENTO').AsString,'C',
        DADOSFRENTEf.DiversasFormas.FieldByName('AVISTAPRAZO').AsString,
        '',
        DADOSFRENTEf.DiversasFormas.FieldByName('VALOR').AsFloat,
        0);
      DADOSFRENTEf.DiversasFormas.Edit;
      // DADOSFRENTEf.DiversasFormas.FieldByName('CUPOM').AsString:=BaixaContasAReceberNumedor;
      DADOSFRENTEf.DiversasFormas.FieldByName('CUPOM').AsString:=BaixaContasAReceberNumedor;
      DADOSFRENTEf.DiversasFormas.FieldByName('CODIGO').AsString:=DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString;
      DADOSFRENTEf.DiversasFormas.Post;
      DADOSFRENTEf.DiversasFormas.Next
    end;
    DADOSFRENTEf.DiversasFormas.ApplyUpdates();
  end;
  BaixaContasAReceberNumedor:='';
  Baixax:='';
end;

procedure TCONTASRECPAGf.cxButton4Click(Sender: TObject);
begin
  inherited;
  if cxButton5.Caption='Contas a Receber' then begin
    SomaAnt;

    TotalContaBaixa:=DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat-
    DataFinanceiro.RECEBER.FieldByName('VALOR_RECEBIDO').AsFloat;
    ValorTotalDaBaixa:=TotalContaBaixa;
    ConfirmaFormasdePagamentodasContas;
    if FiltroRecebimentoConta='CONFIRMA' then begin
      FiltroRecebimentoConta:='';
      cxGrid1.Visible:=false;
      BaixaContasAReceber;
      cxGrid1.Visible:=true;
      LocalizaContas;
      if (CheckBox1.Checked=true) and (TotalGeralContaBaixar>0) then
        ImprimeRecibo('Pagamento de Contas');
    end;
  end;
  if cxButton5.Caption='Contas Pagas' then begin
    TotalContaBaixa:=DataFinanceiro.RECEBER.FieldByName('VALOR_RECEBIDO').AsFloat;
    ValorTotalDaBaixa:=TotalContaBaixa;
    ConfirmaFormasdePagamentodasContas;
    if FiltroRecebimentoConta='CONFIRMA' then begin
      FiltroRecebimentoConta:='';
      cxGrid1.Visible:=false;
      EstornarContasAReceber;
      cxGrid1.Visible:=true;
      LocalizaContas;
    end;
  end;
end;

procedure TCONTASRECPAGf.cxButton5Click(Sender: TObject);
begin
  inherited;
  if cxButton5.Caption='Contas a Receber' then begin
    Panel7.Caption:='Contas a Receber Estorno';
    cxButton3.Caption:='&Estornar por Valor';
    cxButton4.Caption:='&Estornar um &Vencimento';
    cxButton5.Caption:='Contas Pagas';
    Button1.Visible:=false;
    Panel53.Visible:=false;
    Panel54.Visible:=false;
    Panel64.Visible:=true;
    cxGridDBTableView7Column4.Visible:=true;
  end
  else if cxButton5.Caption='Contas Pagas' then begin
    Panel7.Caption:='Contas a Receber';
    cxButton3.Caption:='&Receber por Valor';
    cxButton4.Caption:='Receber um &Vencimento';
    cxButton5.Caption:='Contas a Receber';
    Button1.Visible:=true;
    Panel54.Visible:=true;
    Panel53.Visible:=true;
    Panel64.Visible:=false;
    cxGridDBTableView7Column4.Visible:=false;
  end;
  LocalizaContas;
end;

procedure TCONTASRECPAGf.cxButton7Click(Sender: TObject);
begin
  inherited;
  // RelSaldosVencimentosContas(DataFinanceiro.CLIENTES_Rel,DataFinanceiro.RECEBER_REL,'RECEBER','VALOR_RECEBIDO');
  DataFinanceiro.CLIENTES_Rel.SQL.Clear;
  DataFinanceiro.CLIENTES_Rel.SQL.Add('SELECT * FROM CLIENTES Order by Nome');
  RelSaldosVencimentosContas2(DataFinanceiro.CLIENTES_Rel,DataFinanceiro.RECEBER_REL,'RECEBER','VALOR_RECEBIDO');
  cxGrid1.SetFocus;
end;

procedure TCONTASRECPAGf.cxButton8Click(Sender: TObject);
begin
  inherited;
  if cxButton8.Caption='Contas Pagas' then begin
    NxPanel19.Caption:='Contas a Pagar';
    cxButton9.Caption:='&Pagar por Valor';
    cxButton10.Caption:='Pagar um &Vencimento';
    cxButton8.Caption:='Contas a Pagar';
    FiltroContasaPagarGeral;
  end
  else if cxButton8.Caption='Contas a Pagar' then begin
    NxPanel19.Caption:='Contas a Pagar Estorno';
    cxButton9.Caption:='&Estorno por Valor';
    cxButton10.Caption:='&Estornar um &Vencimento';
    cxButton8.Caption:='Contas Pagas';
    FiltroContasaPagarGeralEstorno
  end;
  TatalContasaPagar;
  cxGrid4.SetFocus;
end;

procedure TCONTASRECPAGf.cxButton9Click(Sender: TObject);
begin
  inherited;
  if DataFinanceiro.PAGAR.IsEmpty then begin
    cxGrid4.SetFocus;
    ShowMessage('Não tem nenhuma Conta a Pagar !!!');
  end
  else begin
    TotalGeralConta:=TotalConta;
    with TGERALCONTASF.Create(Self) do begin
      Width:=Panel12.Width;
      Height:=Panel12.Height;
      NxNotebook61.ActivePageIndex:=3;
      Panel19.Caption:=FormatFloat('###,##0.00',TotalGeralConta);
      ShowModal;
    end;
    Baixax:='Valor';
    if cxButton8.Caption='Contas a Pagar' then begin
      if TotalGeralContaBaixar>0 then begin
        TotalContaBaixa:=TotalGeralContaBaixar;
        BaixaContasAPagar;
      end;
    end
    else begin
      if TotalGeralContaBaixar>0 then begin
        TotalContaBaixa:=TotalGeralContaBaixar;
      end;
    end;
    if cxButton8.Caption='Contas Pagas' then begin
      if TotalGeralContaBaixar>0 then begin
        TotalContaBaixa:=TotalGeralContaBaixar;
        EstornarContasAPargar;
      end;
    end
    else begin
      if TotalGeralContaBaixar>0 then begin
        TotalContaBaixa:=TotalGeralContaBaixar;
      end;
    end;
  end;
  AcertaContasaPagar;
  cxGrid4.SetFocus;
end;

procedure TCONTASRECPAGf.cxGridDBTableView16DblClick(Sender: TObject);
begin
  inherited;
  cxButton29.Click;
end;

procedure TCONTASRECPAGf.cxGridDBTableView16KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
    cxButton29.Click;
end;

procedure TCONTASRECPAGf.cxGridDBTableView5DblClick(Sender: TObject);
begin
  inherited;
  Button23.Click;
end;

procedure TCONTASRECPAGf.cxGridDBTableView5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
    Button23.Click;
end;

procedure TCONTASRECPAGf.cxGridDBTableView7CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  var marca:string;
begin
  inherited;
  marca:='';
  if not AViewInfo.Selected then  begin
     marca := VarAsType( cxGridDBTableView7.ViewData.Records[AViewInfo.GridRecord.Index].Values[cxGridDBTableView7Column3.Index], varString );
     if marca = 'X' then begin
        ACanvas.Font.Color  := clRed;
     end else begin
        ACanvas.Font.Color  := clWindowText;
     end;
     if AViewInfo.GridRecord.Selected then begin
        ACanvas.Font.Color  := clRed;
     end;
     marca:='';
  end;
end;

procedure TCONTASRECPAGf.cxGridDBTableView7DblClick(Sender: TObject);
begin
  inherited;
  if not DataFinanceiro.RECEBER.IsEmpty then
    Button81.Click;
end;

procedure TCONTASRECPAGf.cxGridDBTableView7KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  // if (key=vk_return) and (cxGrid1.Focused=true) then
  if key=vk_return then
    Button81.Click;
end;

procedure TCONTASRECPAGF.AcertaContasaPagar;
begin
  if cxButton8.Caption='Contas Pagas' then
    FiltroContasaPagarGeralEstorno
  else if cxButton8.Caption='Contas a Pagar' then
    FiltroContasaPagarGeral;
  TatalContasaPagar
end;

procedure TCONTASRECPAGF.TatalContasaPagar;
var TotalVencidas:double;
begin
  inherited;
  if cxButton8.Caption='Contas Pagas' then begin
    FiltroContasaPagarGeralEstornoTotal;
    NxPanel22.Visible:=false;
    NxPanel24.Visible:=false;
    NxPanel26.Visible:=false;
    NxPanel27.Visible:=false;
  end
  else if cxButton8.Caption='Contas a Pagar' then begin
    FiltroContasaPagarGeralTotal;
    NxPanel22.Visible:=true;
    NxPanel24.Visible:=true;
    NxPanel26.Visible:=true;
    NxPanel27.Visible:=true;
  end;
  TotalGeralX:=0;
  DataFinanceiro.PAGAR_Total.First;
  while not DataFinanceiro.PAGAR_Total.Eof do begin
    if cxButton8.Caption='Contas a Pagar' then begin
      TotalGeralX:=TotalGeralX+(DataFinanceiro.PAGAR_Total.FieldByName('VALOR').AsFloat-
      DataFinanceiro.PAGAR_Total.FieldByName('VALOR_PAGO').AsFloat);
      if DataFinanceiro.PAGAR_Total.FieldByName('VENCIMENTO').AsDateTime>=date then begin
        TotalVencidas:=TotalVencidas+(DataFinanceiro.PAGAR_Total.FieldByName('VALOR').AsFloat-
        DataFinanceiro.PAGAR_Total.FieldByName('VALOR_PAGO').AsFloat);
      end;
    end
    else if cxButton8.Caption='Contas Pagas' then begin
      if DataFinanceiro.PAGAR_Total.FieldByName('VALOR_PAGO').AsFloat<>DataFinanceiro.PAGAR_Total.FieldByName('VALOR').AsFloat then
        TotalGeralX:=TotalGeralX+DataFinanceiro.PAGAR_Total.FieldByName('VALOR_PAGO').AsFloat
      else
        TotalGeralX:=TotalGeralX+DataFinanceiro.PAGAR_Total.FieldByName('VALOR').AsFloat;
    end;
    DataFinanceiro.PAGAR_Total.Next
  end;
  DataFinanceiro.PAGAR_Total.First;
  NxPanel17.Caption:=FormatFloat('###,##0.00',TotalGeralX);
  NxPanel22.Caption:=FormatFloat('###,##0.00',TotalVencidas);
  NxPanel24.Caption:=FormatFloat('###,##0.00',TotalGeralX-TotalVencidas);
  TotalConta:=TotalGeralX;
end;

procedure TCONTASRECPAGf.TextListBox1DblClick(Sender: TObject);
begin
  inherited;
  ResumoContasF5;
end;

procedure TCONTASRECPAGF.EstornarContasAPargar;
var TotalGeralX,ValorBaixa,ValorCaixa,diferenca:double;
begin
  inherited;
  if Baixax='Valor' then
    DataFinanceiro.PAGAR.First;
  while not DataFinanceiro.PAGAR.Eof do begin
    DADOSFRENTEf.CONF_PADRAO.Open;
    DataFinanceiro.PAGAR.Edit;
    ValorCaixa:=DataFinanceiro.PAGAR.FieldByName('VALOR_PAGO').AsFloat;
    diferenca:=ValorCaixa-TotalContaBaixa;
    if diferenca>0 then begin
      ValorCaixa:=ValorCaixa-diferenca;
    end;
    TotalContaBaixa:=TotalContaBaixa-ValorCaixa;
    if ValorCaixa<DataFinanceiro.PAGAR.FieldByName('VALOR_PAGO').AsFloat then
      DataFinanceiro.PAGAR.FieldByName('VALOR_PAGO').AsFloat:=diferenca
    else
      DataFinanceiro.PAGAR.FieldByName('VALOR_PAGO').AsFloat:=0;
    if TotalContaBaixa<0 then begin
      TotalContaBaixa:=0;
    end
    else
      DataFinanceiro.PAGAR.FieldByName('PAGAMENTO').Clear;
    DataFinanceiro.PAGAR.Post;
    if TotalContaBaixa=0 then
      break;
    DataFinanceiro.PAGAR.Next
  end;
end;

procedure TCONTASRECPAGF.BaixaContasAPagar;
var TotalGeralX,ValorBaixa,ValorCaixa:double;
begin
  inherited;
  if Baixax='Valor' then
    DataFinanceiro.PAGAR.First;
  while not DataFinanceiro.PAGAR.Eof do begin
    DADOSFRENTEf.CONF_PADRAO.Open;
    DataFinanceiro.PAGAR.Edit;
    ValorCaixa:=DataFinanceiro.PAGAR.FieldByName('VALOR').AsFloat;
    TotalContaBaixa:=TotalContaBaixa-DataFinanceiro.PAGAR.FieldByName(
      'VALOR').AsFloat;
    if DataFinanceiro.PAGAR.FieldByName('VALOR_PAGO').AsFloat>0 then begin
      TotalContaBaixa:=TotalContaBaixa+DataFinanceiro.PAGAR.FieldByName(
        'VALOR_PAGO').AsFloat;
      ValorCaixa:=DataFinanceiro.PAGAR.FieldByName('VALOR').AsFloat-
      DataFinanceiro.PAGAR.FieldByName('VALOR_PAGO').AsFloat;
    end;
    DataFinanceiro.PAGAR.FieldByName('VALOR_PAGO').AsFloat:=
      DataFinanceiro.PAGAR.FieldByName('VALOR').AsFloat;
    if TotalContaBaixa<0 then begin
      DataFinanceiro.PAGAR.FieldByName('VALOR_PAGO').AsFloat:=
        DataFinanceiro.PAGAR.FieldByName('VALOR').AsFloat+(TotalContaBaixa);
        ValorCaixa:=DataFinanceiro.PAGAR.FieldByName('VALOR').AsFloat-(
          TotalContaBaixa*-1);
      TotalContaBaixa:=0;
    end;
    DataFinanceiro.PAGAR.FieldByName('PAGAMENTO').AsDateTime:=
      DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime;
    if CheckBox13.Checked=true then begin
      NumedordoLancamento;
      DADOSFRENTEf.CONF_PADRAO.Open;
      InformacoesCaixa('Pag. - '+
        DataFinanceiro.PAGAR.FieldByName('CODIGO').AsString+'-'+
        Copy(DataFinanceiro.PAGAR.FieldByName('Fornecedor').AsString,1,16)+
        ' Parcela '+DataFinanceiro.PAGAR.FieldByName('ORDEM').AsString+''+' - '+'','',
        '','','','','','','D','V','A','','',
        0,0,StrToInt(DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString),0,0,0,DATE,TIME,
        ValorCaixa,'');
    end;
    DataFinanceiro.PAGAR.Post;
    if TotalContaBaixa=0 then
      break;
    DataFinanceiro.PAGAR.Next
  end;
end;

procedure TCONTASRECPAGF.RelSaldosVencimentosContas(TabelaClienteFornecedor,ReceberPagar:TUniQuery;ReceberPagarx,ValarPagoRecebidox:string);
var Pag ,nLin, cliente : Integer;
    Saldo , Total , TotalConta ,VlrAcum : Double;
    Tipo, Dias , ValorJ, CampoClienteFornecedor, CliFor, Clientesoufornecedores :String;
    DataInicial, DataFinal:TDateTime;

  procedure Cabecalho;
  begin


  end;

begin
  MENSPROCF.Panel1.Caption := 'AGUARDE UM MOMENTO - GERANDO O RELATÓRIO !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;
  with TVISUALIZACAOF.Create(nil) do begin
    TabelaClienteFornecedor.Close;
    TabelaClienteFornecedor.Open;
    TabelaClienteFornecedor.Refresh;
    TabelaClienteFornecedor.First;
    TextListBox1.Items.Add('Empresa.: '+DADOSFRENTEf.EMITENTE.FieldByName('NOME').AsString);
    TextListBox1.Items.Add('');
    if (CheckBox6.Checked=false) and (CheckBox7.Checked=false) then begin
      if ReceberPagarx='RECEBER' then begin
        TextListBox1.Items.Add('RELATÓRIO DE SALDOS POR ORDEM ALFABETICA E VENCIMENTO DE CONTAS A RECEBER');
        TextListBox1.Items.Add('');
        TextListBox1.Items.Add('COD.* *----N O M E   D O   C L I E N T E-----*  *--TEL.RES.--* *--CELULAR.--* *----------------E-MAIL-----------------* ');
        TextListBox1.Items.Add('Lanc.   P  DT.EMIS.    DT.VENC.    DIAS  *--VLR.PRESTACAO--*  *--VL. JUROS--*  *--VL. DESC.--*  *D O C U M E N T O*     ');
      end
      else begin
        TextListBox1.Items.Add('RELATÓRIO DE SALDOS POR ORDEM ALFABETICA E VENCIMENTO DE CONTAS A PAGAR');
        TextListBox1.Items.Add('');
        TextListBox1.Items.Add('COD.* *-N O M E   D O   F O R N E C E D O R -*  *--TEL.RES.--* *--CELULAR.--* *----------------E-MAIL-----------------* ');
        TextListBox1.Items.Add('Lanc.   P  DT.EMIS.    DT.VENC.    DIAS  *--VLR.PRESTACAO--*  *--VL. JUROS--*  *--VL. DESC.--*  *D O C U M E N T O*     ');
      end;
    end
    else
      TextListBox1.Items.Add('RELATÓRIO RESUMIDO DE CONTAS A '+ReceberPagarx);
    TextListBox1.Items.Add('-----------------------------------------------------------------------------------------------------------------------');
    if (ComboEdit1.Text<>'') and (ReceberPagarx='RECEBER') then begin
      // TabelaClienteFornecedor.Locate('CODIGO',ComboEdit1.Text,[]);
      FiltraQuery(TabelaClienteFornecedor,'CLIENTES',ComboEdit1.Text);
    end;

    if ReceberPagarx='RECEBER' then begin
      DataInicial:=DateEdit4.Date;
      DataFinal:=DateEdit5.Date;
    end
    else begin
      DataInicial:=DateEdit2.Date;
      DataFinal:=DateEdit3.Date;
    end;
    while not TabelaClienteFornecedor.Eof do begin
      ReceberPagar.SQL.Clear;
      if (CheckBox8.Checked=true) or (CheckBox9.Checked=true) then begin
        ReceberPagar.SQL.Add('SELECT * FROM '+ReceberPagarx+' where CODIGO='+
        TabelaClienteFornecedor.FieldByName('CODIGO').AsString+' and '+
        'Vencimento<=:_dataini '+
        ' and VALOR<>'+ValarPagoRecebidox+' order by Vencimento');
          ReceberPagar.ParamByName('_dataini').asdatetime :=
            date;
      end
      else begin
        if (DataInicial=0) and (DataFinal=0) then begin
          ReceberPagar.SQL.Add('SELECT * FROM '+ReceberPagarx+' where CODIGO='+
          TabelaClienteFornecedor.FieldByName('CODIGO').AsString+
          ' and VALOR<>'+ValarPagoRecebidox+' order by Vencimento');
        end
        else begin
          ReceberPagar.SQL.Add('SELECT * FROM '+ReceberPagarx+' WHERE CODIGO='+
            TabelaClienteFornecedor.FieldByName('CODIGO').AsString+' and '+
            ' Vencimento>= :_dataini and Vencimento<= :_dataFin  order by Vencimento');
          ReceberPagar.ParamByName('_dataini').asdatetime :=
            DataInicial;
          ReceberPagar.ParamByName('_dataFin').asdatetime :=
            DataFinal;
        end;
      end;
      ReceberPagar.Open;
      ReceberPagar.First;
      if not ReceberPagar.IsEmpty then begin
        VlrAcum := 0;
        cliente := 0;
        while not ReceberPagar.eof do begin
          cliente:=cliente+1;
          if cliente=1 then begin
            if (CheckBox6.Checked=false) and (CheckBox7.Checked=false) then begin
              TextListBox1.Items.Add(DireiraEsquera(0, TabelaClienteFornecedor.FieldByName('CODIGO').AsString,3, 'D')+' '+
              DireiraEsquera(0, Copy(TabelaClienteFornecedor.FieldByName('NOME').AsString,1,45),45, 'E')+' '+
              DireiraEsquera(0, Copy(FormatMaskText('##-####-####;0; ',TabelaClienteFornecedor.FieldByName('TELEFONE').AsString),1,13),13, 'D')+' '+
              DireiraEsquera(0, Copy(FormatMaskText('##-####-####;0; ',TabelaClienteFornecedor.FieldByName('CELULAR').AsString),1,42),42, 'E'));
            end;
          end;
          if (CheckBox6.Checked=false) and (CheckBox7.Checked=false) then begin
            if DATE > ReceberPagar.FieldByName('VENCIMENTO').AsDateTime then
              DIAS := IntToStr(DAYSBETWEEN(DATE,ReceberPagar.FieldByName('VENCIMENTO').AsDateTime))
            else
              DIAS := IntToStr(DAYSBETWEEN(DATE,ReceberPagar.FieldByName('VENCIMENTO').AsDateTime)*-1);
            TextListBox1.Items.Add(DireiraEsquera(0, ReceberPagar.FieldByName('CONTROLE').AsString,6, 'D')+' '+
            ReceberPagar.FieldByName('ORDEM').AsString+' '+
            ReceberPagar.FieldByName('EMISSAO').AsString+' '+
            ReceberPagar.FieldByName('VENCIMENTO').AsString+' '+
            DireiraEsquera(0, DIAS,7, 'D')+' '+
            DireiraEsquera(0, FormatFloat('###,##0.00', ReceberPagar.FieldByName('VALOR').asFloat-
            ReceberPagar.FieldByName(ValarPagoRecebidox).asFloat),20, 'D')+' '+
            DireiraEsquera(0, ReceberPagar.FieldByName('NUMERO').AsString,54, 'D'));
          end;
          Total:=Total+ReceberPagar.FieldByName('VALOR').asFloat-ReceberPagar.FieldByName(ValarPagoRecebidox).asFloat;
          TotalConta:=TotalConta+ReceberPagar.FieldByName('VALOR').asFloat-ReceberPagar.FieldByName(ValarPagoRecebidox).asFloat;
          ReceberPagar.Next;
        end;
        if (CheckBox6.Checked=false) and (CheckBox7.Checked=false) then begin
          TextListBox1.Items.Add('TOTAL DA CONTA -> '+
            DireiraEsquera(0, FormatFloat('###,##0.00', TotalConta),42, 'D'));
        end
        else begin
          TextListBox1.Items.Add(DireiraEsquera(0, TabelaClienteFornecedor.FieldByName('CODIGO').AsString,3, 'D')+' '+
          DireiraEsquera(0, Copy(TabelaClienteFornecedor.FieldByName('NOME').AsString,1,40),40, 'E')+' -> '+
          DireiraEsquera(0, FormatFloat('###,##0.00', TotalConta),12, 'D'));
        end;
        TotalConta:=0;
        TextListBox1.Items.Add('');
      end;
      TabelaClienteFornecedor.Next;
      if (ComboEdit1.Text<>'') and (ReceberPagarx='RECEBER') then
        break;
    end;
    if (ComboEdit1.Text<>'') and (ReceberPagarx='RECEBER') then else
     TextListBox1.Items.Add('TOTAL GERAL -> '+
        DireiraEsquera(0, FormatFloat('###,##0.00', Total),45, 'D'));
    TextListBox1.Items.Add('');
    TamanhoFonte:=9;
    Show;
    Button1.Click;
    close;
  end;
  MENSPROCF.Close;
  TamanhoFonte:=0;
end;

procedure TCONTASRECPAGf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(GERALCONTASF);
  Action:=caFree;
end;

procedure TCONTASRECPAGf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var lanx:string;
begin
  if NxNotebook61.ActivePageIndex=0 then begin
    if (key=vk_return) and (TextListBox1.Focused=true) then begin
      ResumoContasF5;
      key:=vk_clear;
      cxGrid1.SetFocus
    end;
  end;
  if (key=VK_ESCAPE) and (NxNotebook61.ActivePageIndex=4) then
    Button3.Click;
  inherited;
  if (key=vk_f2) and (NxNotebook61.ActivePageIndex=2) then
    cxButton38.Click;
  if (key=vk_f2) and (NxNotebook61.ActivePageIndex=0) then
    cxButton36.Click;
  if (key=vk_f4) and (NxNotebook61.ActivePageIndex=0) then
    cxButton24.Click;
  if (key=vk_f6) and (NxNotebook61.ActivePageIndex=0) then
    cxButton27.Click;
  if (key=vk_f7) and (NxNotebook61.ActivePageIndex=0) and (Button1.Visible) then
    Button1.Click;
  if (key=vk_f8) and (NxNotebook61.ActivePageIndex=0) then
    cxButton5.Click;
  if (key=vk_f9) and (NxNotebook61.ActivePageIndex=0) then
    ResumodasContas;
  // if (key=vk_f9) and (NxNotebook61.ActivePageIndex=0) then
  //   TextListBox1.Visible:=true;
  if (key=vk_f8) and (NxNotebook61.ActivePageIndex=1) then
    cxButton8.Click;
  if (key=vk_f8) and (NxNotebook61.ActivePageIndex=2) then
    cxButton33.Click;
  if (key=vk_space) and (NxNotebook61.ActivePageIndex=0) then begin
    DataFinanceiro.RECEBER.Open;
    DataFinanceiro.RECEBER.Edit;
    if DataFinanceiro.RECEBER.fieldbyname('MARCADO').Asstring='X' then
      DataFinanceiro.RECEBER.fieldbyname('MARCADO').Asstring:=' '
    else
      DataFinanceiro.RECEBER.fieldbyname('MARCADO').Asstring:='X';
    DataFinanceiro.RECEBER.Post;
    lanx:=DataFinanceiro.RECEBER.fieldbyname('ID').Asstring;
    TatalContaReceber('S');
    if TotalGeralX=0 then
      TatalContaReceber('');
    DataFinanceiro.RECEBER.Locate('ID',lanx,[]);
    cxGrid1.SetFocus;
  end;

  if (key=vk_space) and (NxNotebook61.ActivePageIndex=9) then begin
    DataFinanceiro.CADERNETA.Open;
    DataFinanceiro.CADERNETA.Edit;
    if DataFinanceiro.CADERNETA.fieldbyname('MARCADO').Asstring='X' then
      DataFinanceiro.CADERNETA.fieldbyname('MARCADO').Asstring:=' '
    else
      DataFinanceiro.CADERNETA.fieldbyname('MARCADO').Asstring:='X';
    DataFinanceiro.CADERNETA.Post;
    lanx:=DataFinanceiro.CADERNETA.fieldbyname('CODIGOX').Asstring;
    DataFinanceiro.CADERNETA.Locate('CODIGOX',lanx,[]);
    // cxGrid5.SetFocus;
  end;

  if NxNotebook61.ActivePageIndex=0 then begin
    if key=vk_f5 then
      ResumoContasF5;
  end;

  if NxNotebook61.ActivePageIndex=9 then begin
    // if (Shift=[ssAlt]) and (Key=68) or (Shift=[ssAlt]) and (Key=100) then
    //   ComboEdit7.SetFocus;
  end;
end;

procedure TCONTASRECPAGf.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key=^X then begin
    if not DataFinanceiro.RECEBER.IsEmpty then begin
      ShowMessage('Digite a senha para apagar toda essa conta !!!');
      TelaSenha;
      if senha='MANAGER' then begin
        MENSPROCF.Panel1.Caption := 'AGUARDE UM MOMENTO - Apagando a conta geral !!!';
        MENSPROCF.Show;
        MENSPROCF.Update;
        cxGrid1.Visible:=false;
        DataFinanceiro.RECEBER.Close;
        DataFinanceiro.RECEBER.SQL.Clear;
        DataFinanceiro.RECEBER.SQL.Add('DELETE FROM RECEBER where codigo='+ComboEdit1.Text);
        DataFinanceiro.RECEBER.Execute;
        LocalizaContas;
        TatalContaReceber('');
        MENSPROCF.Close;
        cxGrid1.Visible:=true;
        ComboEdit1.SetFocus
      end;
    end;
  end;
end;

procedure TCONTASRECPAGf.ResumoContasF5;
begin
  if TextListBox1.Focused then begin
    TextListBox1.Visible:=false;
    Panel62.Visible:=false;
    // ComboEdit1.Text:=Trim(COPY(TextListBox1.Items[TextListBox1.ItemIndex],55,7));
    ComboEdit1.Text:=Trim(COPY(TextListBox1.Items[TextListBox1.ItemIndex],42,7));
    LocalizaContas;
  end
  else
    ComboEdit1.SetFocus;
end;


procedure TCONTASRECPAGf.FormShow(Sender: TObject);
begin
  inherited;
  NxNotebook61.Align:=alclient;

  Panel3.BevelOuter:=bvNone;
  Panel27.BevelOuter:=bvNone;
  Panel15.BevelOuter:=bvNone;
  Panel4.BevelOuter:=bvNone;
  Panel17.BevelOuter:=bvNone;
  Panel29.BevelOuter:=bvNone;
  Panel62.BevelOuter:=bvNone;
  Panel63.BevelOuter:=bvNone;

  Panel4.Align:=alclient;
  Panel14.Align:=alclient;
  cxGrid1.Align:=alclient;
  cxGrid4.Align:=alclient;
  cxGrid9.Align:=alclient;
  Panel2.Align:=alclient;
  Panel14.Align:=alclient;
  Panel17.Align:=alclient;
  Panel26.Align:=alclient;
  Panel29.Align:=alclient;
  Panel3.Align:=alclient;
  Panel27.Align:=alclient;
  Panel15.Align:=alclient;
  Panel8.Align:=alclient;
  TextListBox1.Align:=alclient;
  cxRichEdit1.Align:=alclient;

  if NxNotebook61.ActivePageIndex=0 then begin
    DataFinanceiro.RECEBER.Close;
  end;

  if NxNotebook61.ActivePageIndex=1 then begin
    AcertaContasaPagar;
    cxGrid4.SetFocus;
  end;

  if NxNotebook61.ActivePageIndex=2 then begin
    AcertaCartoes;
    cxGrid9.SetFocus;
  end;
  {
  if NxNotebook61.ActivePageIndex=4 then begin
    NxPanel31.Caption:='Movimentações de Caixa';
    DataFinanceiro.CAIXA.Open;
    DataFinanceiro.CAIXA.First;
    cxGrid6.SetFocus;
  end;

  if NxNotebook61.ActivePageIndex=5 then begin
    DataFinanceiro.MOVIBCO.Open;
    DataFinanceiro.MOVIBCO.First;
    cxGrid8.SetFocus;
  end;
  }
  DADOSFRENTEf.CONF_PADRAO.Open;
  if DADOSFRENTEf.CONF_PADRAO.FieldByName('IMPRIME').AsString<>'S' then
    CheckBox1.Checked:=false;
end;

function TCONTASRECPAGf.SomaAnt: string;
begin
  FiltroContasReceberSoma( ComboEdit1.Text,'R' );
  SomaAnterior:=0;
  DataFinanceiro.RECEBER_SOMA.First;
  while not DataFinanceiro.RECEBER_SOMA.Eof do begin
    SomaAnterior:=SomaAnterior+
    DataFinanceiro.RECEBER_SOMA.FieldByName('VALOR').AsFloat-
    DataFinanceiro.RECEBER_SOMA.FieldByName('VALOR_RECEBIDO').AsFloat;
    DataFinanceiro.RECEBER_SOMA.Next;
  end;
  DataFinanceiro.RECEBER_SOMA.First;
  result:=FloatToStr(SomaAnterior);
end;

procedure TCONTASRECPAGf.Panel5Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure RecCobra;
var
  Tipo , Historico, RepetidoLancamento, Marca : String;
  Pag ,nLin , Primeiro : Integer;
  Data1 : TDaTeTime;
  TotRec, Quatot, VrTotal : double;
  procedure Cabecalho;
  begin
    Definevarpubl();
    Imp_InicializaPagina;
    DADOS_CADASTROSf.emitente.Open;
    if TelaImpressora='I' then
      Imp_Linha(00, 00, #27#67#33 , 6, 'E');
    Imp_Linha(01, 00+3, AEnfatizad+ACondensa2 +Padc(DADOS_CADASTROSf.emitente.FieldByName('NOME').AsString,91), 6, 'E');
    Imp_Linha(00, 17, 'Folha ', 5, 'E');
    Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
    Imp_Linha(01, 00+3, Padc(' CNPJ: '+FormatMaskText('##.###.###.####/##;0; ',DADOS_CADASTROSf.emitente.FieldByName('CNPJ').AsString),91), 19, 'E');
    Imp_Linha(01, 00+3, Padc('TEL.: '+FormatMaskText('##-####-####;0; ',DADOS_CADASTROSf.emitente.FieldByName('TELEFONE').AsString)+'   -   TELEFAX.: '+FormatMaskText('##-####-####;0; ',DADOS_CADASTROSf.emitente.FieldByName('FAX').AsString),91), 13, 'E');
    Imp_Linha(01, 00+3, Padc('E-MAIL: '+DADOS_CADASTROSf.emitente.FieldByName('EMAIL').AsString,91), 6, 'E');
    Imp_Linha(01, 00+3, Padc('HOME PAGE: '+DADOS_CADASTROSf.emitente.FieldByName('HTTP').AsString,91), 6, 'E');
    Imp_Linha(01, 00+3, Padc(DADOS_CADASTROSf.emitente.FieldByName('ENDERECO').AsString+' - '+DADOS_CADASTROSf.emitente.FieldByName('BAIRRO').AsString+' - '+DADOS_CADASTROSf.emitente.FieldByName('CIDADE').AsString+' - '+DADOS_CADASTROSf.emitente.FieldByName('UF').AsString,91), 6, 'E');
    Imp_Linha(01, 00+3, StringOfChar('-', 91), 91, 'E');
    Imp_Linha(01, 00+3, Padc('R E C I B O',91), 91, 'E');
    Imp_Linha(02, 00+3, ACondensa2+DEnfatizad+'Recebemos de: '+
    AEnfatizad+ACondensa2+DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString+'-'+DataFinanceiro.CADASTRO_CLIENTES.FieldByName('NOME').AsString+
    ACondensa2+DEnfatizad+', que reside a', 91, 'E');
    Imp_Linha(01, 00+3,
    AEnfatizad+ACondensa2+DataFinanceiro.CADASTRO_CLIENTES.FieldByName('ENDERECO').AsString+' - '+
    DataFinanceiro.CADASTRO_CLIENTES.FieldByName('BAIRRO').AsString+' - '+
    DataFinanceiro.CADASTRO_CLIENTES.FieldByName('UF').AsString+' - FONE: '+FormatMaskText('##-####-####;0; ',DataFinanceiro.CADASTRO_CLIENTES.FieldByName('TELEFONE').AsString), 91, 'E');
    Imp_Linha(01, 00+3, ACondensa2+DEnfatizad+'o valor abaixo referente ao(s) vencimento(s):', 91, 'E');
    if AnaliticoSintetico='S' then begin
      Imp_Linha(02, 03, '*COD.* *--------------DESCRIÇÃO---------------* *--QUANT.-* *VR.UNIT.* *VR.TOTAL*', 44, 'E');
      nLin := nLin + 2;
    end;
    nLin := nLin + 12;
  end;
  procedure NovaPagina;
  begin
    if nLin >= 60 then begin
      Imp_Ejeta;
      nLin := 0;
      Pag  := Pag+1;
      Cabecalho;
    end;
  end;
begin
  if Application.MessageBox(Pchar('Imprime Recibo Analítico ?'),'',MB_YESNO+MB_ICONQUESTION)= ID_YES then
    AnaliticoSintetico:='A'
  else
    AnaliticoSintetico:='S';
  DataFinanceiro.RECEBER.First;
  while not DataFinanceiro.RECEBER.Eof do begin
    if DataFinanceiro.RECEBER.fieldbyname('MARCADO').Asstring='X' then begin
       Marca:='S';
       break;
    end;
    DataFinanceiro.RECEBER.Next;
  end;
  DataFinanceiro.RECEBER.First;
  Tipo := 'RAW';   // Dica: Imprime com matricial Epson mais rápido;
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    nLin := 0;
    Pag  := 1;
    TotRec := 0;
    RepetidoLancamento:='';
    Cabecalho;
    while not DataFinanceiro.RECEBER.Eof do begin
      if Marca='S' then begin
        if DataFinanceiro.RECEBER.FieldByName('MARCADO').AsString<>'X' then begin
          DataFinanceiro.RECEBER.Next;
          continue;
        end;
      end;
      DataFinanceiro.ITEVENDAS_ECF2.Close;
      DataFinanceiro.ITEVENDAS_ECF2.SQL.Clear;
      DataFinanceiro.ITEVENDAS_ECF2.SQL.Add('Select * from ITEVENDAS_ECF2');
      DataFinanceiro.ITEVENDAS_ECF2.SQL.Add('Where Cupom='+DataFinanceiro.RECEBER.FieldByName('NUMERO').AsString);
      DataFinanceiro.ITEVENDAS_ECF2.Open;
      if not DataFinanceiro.ITEVENDAS_ECF2.IsEmpty then begin
        if RepetidoLancamento<>DataFinanceiro.RECEBER.fieldByname('NUMERO').Asstring then begin
          if AnaliticoSintetico='A' then begin
            if not DataFinanceiro.ITEVENDAS_ECF2.IsEmpty then begin
              Imp_Linha(02, 03, '*COD.* *--------------DESCRIÇÃO---------------* *--QUANT.-* *VR.UNIT.* *VR.TOTAL*', 44, 'E');
              nLin := nLin + 2;
              Quatot:=0; VrTotal:=0;
            end;
            while not DataFinanceiro.ITEVENDAS_ECF2.eof do begin
              if DataFinanceiro.ITEVENDAS_ECF2.fieldByname('CUPOM').Asstring<>DataFinanceiro.RECEBER.fieldByname('NUMERO').Asstring then
                break;
              DescProd:=DataFinanceiro.ITEVENDAS_ECF2.fieldByname('CODIGO').Asstring+'-'+DataFinanceiro.ITEVENDAS_ECF2.fieldByname('DESCRICAO').Asstring;
              Imp_Linha(01, 03, DescProd, 44, 'E');
              Imp_Linha(00, 00, FormatFloat('###,##0.00', DataFinanceiro.ITEVENDAS_ECF2.FieldByName('QTD').AsFloat), 12, 'D');
              Imp_Linha(00, 00, FormatFloat('###,##0.00', DataFinanceiro.ITEVENDAS_ECF2.FieldByName('PRECORAT').AsFloat), 11, 'D');
              Imp_Linha(00, 00, FormatFloat('###,##0.00', DataFinanceiro.ITEVENDAS_ECF2.FieldByName('TOTALRAT').AsFloat), 11, 'D');
              Quatot:=Quatot+DataFinanceiro.ITEVENDAS_ECF2.FieldByName('QTD').AsFloat;
              VrTotal:=VrTotal+DataFinanceiro.ITEVENDAS_ECF2.FieldByName('TOTALRAT').AsFloat;
              DataFinanceiro.ITEVENDAS_ECF2.Next;
              Inc( nLin );
              NovaPagina;
            end;
            Imp_Linha(01, 03, 'Total do Lançamento ('+DataFinanceiro.RECEBER.fieldByname('NUMERO').Asstring+')--> ', 41, 'E');
            Imp_Linha(00, 00, FormatFloat('###,##0.00', Quatot), 15, 'D');
            Imp_Linha(00, 00, FormatFloat('###,##0.00', VrTotal), 22, 'D');
            Imp_Linha(00, 00, ''+DCondensa5, 0, 'E');
            Imp_Linha(02, 00+3,AEnfatizad+ACondensa2+'COD.LAN. PARC.  DATA DE EMISSÃO  DATA DE VENCIMENTO  DIAS *-$* VALOR DA PRESTAÇÃO'+dEnfatizad, 91, 'E');
            nLin := nLin + 3;
            NovaPagina;
          end;
        end;
      end;
      Imp_Linha(01, 00+3, ACondensa2+DEnfatizad+DataFinanceiro.RECEBER.FieldByName('NUMERO').AsString, 9, 'E');
      Imp_Linha(00, 00, DataFinanceiro.RECEBER.FieldByName('ORDEM').AsString, 4, 'D');
      Imp_Linha(00, 07, DataFinanceiro.RECEBER.FieldByName('EMISSAO').AsString, 8, 'E');
      Imp_Linha(00, 10, DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsString, 8, 'E');
      if DATE > DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsDateTime then
        DIAX := IntToStr(DAYSBETWEEN(DATE,DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsDateTime))
      else
        DIAX := IntToStr(DAYSBETWEEN(DATE,DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsDateTime)*-1);
      Imp_Linha(00, 00, DIAX , 6, 'D');
      Imp_Linha(00, 00, 'R$' , 5, 'D');
      Imp_Linha(00, 00, FormatFloat('###,##0.00', DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat+DataFinanceiro.RECEBER.FieldByName('JUROS').AsFloat-DataFinanceiro.RECEBER.FieldByName('DESCONTO').AsFloat), 19, 'D');
      TotRec:=TotRec+DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat+DataFinanceiro.RECEBER.FieldByName('JUROS').AsFloat-DataFinanceiro.RECEBER.FieldByName('DESCONTO').AsFloat;
      Inc( nLin );
      RepetidoLancamento:=DataFinanceiro.RECEBER.fieldByname('NUMERO').Asstring;
      DataFinanceiro.RECEBER.Next;
      NovaPagina;
    end;
    Imp_Linha(03, 00+3,AEnfatizad+ACondensa2+'                                                     TOTAL DO RECIBO:',21, 'E');
    NovaPagina;
    Imp_Linha(00, 00,FormatFloat('###,##0.00', TotRec), 12, 'D');
    Imp_Linha(03, 00+3,ACondensa2+DEnfatizad+'DATA ___/___/___                                 ____________________________________',25, 'E');
    Imp_Linha(01, 00+3,'                                                                Assinatura            '+DCondensa2+DCondensa2,25, 'E');
    nLin := nLin + 4;
    if nLin>33 then
      Imp_Ejeta
    else
      Imp_Linha(01, 00, #12+DTudo , 6, 'E');
    Imp_Fim;
  end;
end;

procedure ConfirmaFormasdePagamentodasContas;
begin
  FiltroRecebimentoConta:='S';
  DADOSFRENTEf.DiversasFormas.CachedUpdates:=true;
  FiltroItensFormasPagamentoContas;
  DADOSFRENTEf.DiversasFormas.First;
  while not DADOSFRENTEf.DiversasFormas.Eof do
    DADOSFRENTEf.DiversasFormas.Delete;
  ContaVendas:='C';
  with TGERALFRENTEF.Create(nil) do begin
    DADOSFRENTEf.DiversasFormas.Close;
    DADOSFRENTEf.DiversasFormas.CachedUpdates:=true;
    DADOSFRENTEf.DiversasFormas.Open;
    ValoraserPago.Value:=TotalContaBaixa;
    NxPanel185.Visible:=false;
    NxPanel177.Visible:=false;
    Panel148.Visible:=false;
    NxPanel22.Visible:=false;
    cxButton50.Visible:=false;
    ValorTotaldaVenda.Visible:=false;
    Width:=Panel1.Width;
    Height:=Panel1.Height-NxPanel185.Height;
    NxNotebook61.ActivePageIndex:=0;
    ShowModal;
  end;
end;

procedure TCONTASRECPAGF.FiltroContasXYZ(ReceberPagar:TUniQuery;ReceberPagarx,ValarPagoRecebidox:string;DataInicial,DataFinal:tdatetime);
begin
  ReceberPagar.Close;
  ReceberPagar.SQL.Clear;
  if (CheckBox8.Checked=true) or (CheckBox9.Checked=true) then begin
    ReceberPagar.SQL.Add('SELECT * FROM '+ReceberPagarx+' where '+
    'Vencimento<=:_dataini '+
    ' and VALOR<>'+ValarPagoRecebidox+' order by CODIGO');
      ReceberPagar.ParamByName('_dataini').asdatetime :=
        date;
  end
  else begin
    if (DataInicial=0) and (DataFinal=0) then begin
      ReceberPagar.SQL.Add('SELECT * FROM '+ReceberPagarx+' where '+
      'VALOR<>'+ValarPagoRecebidox+' order by CODIGO');
    end
    else begin
      ReceberPagar.SQL.Add('SELECT * FROM '+ReceberPagarx+' WHERE '+
        'Vencimento>= :_dataini and Vencimento<= :_dataFin order by CODIGO');
      ReceberPagar.ParamByName('_dataini').asdatetime :=
        DataInicial;
      ReceberPagar.ParamByName('_dataFin').asdatetime :=
        DataFinal;
    end;
  end;
  DataFinanceiro.RECEBER_REL.Open;
  DataFinanceiro.RECEBER_REL.First;
end;


procedure TCONTASRECPAGF.RelSaldosVencimentosContas2(TabelaClienteFornecedor,ReceberPagar:TUniQuery;ReceberPagarx,ValarPagoRecebidox:string);
var Pag ,nLin, cliente : Integer;
    Saldo , Total , TotalConta ,VlrAcum : Double;
    Tipo, Dias , ValorJ, CampoClienteFornecedor, CliFor, Clientesoufornecedores :String;
    DataInicial, DataFinal:TDateTime;

  procedure Cabecalho;
  begin
    Imp_Linha(01, 00, 'Empresa.: '+DADOSFRENTEf.EMITENTE.FieldByName('CODIGO').AsString+'-'+DADOSFRENTEf.EMITENTE.FieldByName('NOME').AsString , 6, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
    Imp_Linha(00, 01, TimetoStr(Time), 8, 'E');
    Imp_Linha(00, 00, '                                                                                           Folha ', 24, 'E');
    Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
    if (CheckBox6.Checked=false) and (CheckBox7.Checked=false) then begin
      if ReceberPagarx='RECEBER' then begin
        // TextListBox1.Items.Add('RELATÓRIO DE SALDOS POR ORDEM ALFABETICA E VENCIMENTO DE CONTAS A RECEBER');
        Imp_Linha(01, 00, Padc('RELATÓRIO DE SALDOS POR ORDEM ALFABETICA E VENCIMENTO DE CONTAS A PAGAR',121) , 121, 'E');
        Imp_Linha(01, 00, '', 6, 'E');
        Imp_Linha(01, 00, 'COD.* *----N O M E   D O   C L I E N T E-----*  *--TEL.RES.--* *--CELULAR.--* *----------------E-MAIL-----------------* ', 6, 'E');
        Imp_Linha(01, 00, 'Lanc.   P  DT.EMIS.    DT.VENC.    DIAS  *--VLR.PRESTACAO--*  *--VL. JUROS--*  *--VL. DESC.--*  *D O C U M E N T O*     ', 6, 'E');
      end
      else begin
        Imp_Linha(01, 00, 'RELATÓRIO DE SALDOS POR ORDEM ALFABETICA E VENCIMENTO DE CONTAS A PAGAR', 6, 'E');
        Imp_Linha(01, 00, '', 6, 'E');
        Imp_Linha(01, 00, 'COD.* *-N O M E   D O   F O R N E C E D O R -*  *--TEL.RES.--* *--CELULAR.--* *----------------E-MAIL-----------------* ', 6, 'E');
        Imp_Linha(01, 00, 'Lanc.   P  DT.EMIS.    DT.VENC.    DIAS  *--VLR.PRESTACAO--*  *--VL. JUROS--*  *--VL. DESC.--*  *D O C U M E N T O*     ', 6, 'E');
      end;
      nLin := nLin + 6;
    end
    else begin
      Imp_Linha(01, 00, 'RELATÓRIO RESUMIDO DE CONTAS A '+ReceberPagarx, 6, 'E');
      Inc( nLin );
    end;
    Imp_Linha(01, 00, '-----------------------------------------------------------------------------------------------------------------------', 6, 'E');
    Inc( nLin );
  end;

begin
  // with TVISUALIZACAOF.Create(nil) do begin
  TabelaClienteFornecedor.Close;
  TabelaClienteFornecedor.Open;
  TabelaClienteFornecedor.Refresh;
  TabelaClienteFornecedor.First;
  if (ComboEdit1.Text<>'') and (ReceberPagarx='RECEBER') then
    FiltraQuery(TabelaClienteFornecedor,'CLIENTES',ComboEdit1.Text);
    // TabelaClienteFornecedor.Locate('CODIGO',ComboEdit1.Text,[]);
  if ReceberPagarx='RECEBER' then begin
    DataInicial:=DateEdit4.Date;
    DataFinal:=DateEdit5.Date;
  end
  else begin
    DataInicial:=DateEdit2.Date;
    DataFinal:=DateEdit3.Date;
  end;
  Tipo := 'RAW';   // Dica: Imprime com matricial Epson mais rápido;
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    MENSPROCF.Panel1.Caption := 'AGUARDE UM MOMENTO - GERANDO O RELATÓRIO !!!';
    MENSPROCF.Show;
    MENSPROCF.Update;
    nLin := 0;
    Pag  := 1;
    if (nLin=0) and (TelaImpressora='T') then
      Cabecalho;
    while not TabelaClienteFornecedor.Eof do begin
      if (nLin=0) and (TelaImpressora='I') then
         Cabecalho;
      ReceberPagar.SQL.Clear;
      if (CheckBox8.Checked=true) or (CheckBox9.Checked=true) then begin
        ReceberPagar.SQL.Add('SELECT * FROM '+ReceberPagarx+' where CODIGO='+
        TabelaClienteFornecedor.FieldByName('CODIGO').AsString+' and '+
        'Vencimento<=:_dataini '+
        ' and VALOR<>'+ValarPagoRecebidox+' order by Vencimento');
          ReceberPagar.ParamByName('_dataini').asdatetime :=
            date;
      end
      else begin
        if (DataInicial=0) and (DataFinal=0) then begin
          ReceberPagar.SQL.Add('SELECT * FROM '+ReceberPagarx+' where CODIGO='+
          TabelaClienteFornecedor.FieldByName('CODIGO').AsString+
          ' and VALOR<>'+ValarPagoRecebidox+' order by Vencimento');
        end
        else begin
          ReceberPagar.SQL.Add('SELECT * FROM '+ReceberPagarx+' WHERE CODIGO='+
            TabelaClienteFornecedor.FieldByName('CODIGO').AsString+' and '+
            ' Vencimento>= :_dataini and Vencimento<= :_dataFin  order by Vencimento');
          ReceberPagar.ParamByName('_dataini').asdatetime :=
            DataInicial;
          ReceberPagar.ParamByName('_dataFin').asdatetime :=
            DataFinal;
        end;
      end;
      ReceberPagar.Open;
      ReceberPagar.First;
      if not ReceberPagar.IsEmpty then begin
        VlrAcum := 0;
        cliente := 0;
        while not ReceberPagar.eof do begin
          cliente:=cliente+1;
          if cliente=1 then begin
            if (CheckBox6.Checked=false) and (CheckBox7.Checked=false) then begin
              Imp_Linha(01, 00, DireiraEsquera(0, TabelaClienteFornecedor.FieldByName('CODIGO').AsString,3, 'D')+' '+
              DireiraEsquera(0, Copy(TabelaClienteFornecedor.FieldByName('NOME').AsString,1,45),45, 'E')+' '+
              DireiraEsquera(0, Copy(FormatMaskText('##-####-####;0; ',TabelaClienteFornecedor.FieldByName('TELEFONE').AsString),1,13),13, 'D')+' '+
              DireiraEsquera(0, Copy(FormatMaskText('##-####-####;0; ',TabelaClienteFornecedor.FieldByName('CELULAR').AsString),1,42),42, 'E'), 6, 'E');
              Inc( nLin );
            end;
          end;
          if (CheckBox6.Checked=false) and (CheckBox7.Checked=false) then begin
            if DATE > ReceberPagar.FieldByName('VENCIMENTO').AsDateTime then
              DIAS := IntToStr(DAYSBETWEEN(DATE,ReceberPagar.FieldByName('VENCIMENTO').AsDateTime))
            else
              DIAS := IntToStr(DAYSBETWEEN(DATE,ReceberPagar.FieldByName('VENCIMENTO').AsDateTime)*-1);
            Imp_Linha(01, 00, DireiraEsquera(0, ReceberPagar.FieldByName('CONTROLE').AsString,6, 'D')+' '+
            ReceberPagar.FieldByName('ORDEM').AsString+' '+
            ReceberPagar.FieldByName('EMISSAO').AsString+' '+
            ReceberPagar.FieldByName('VENCIMENTO').AsString+' '+
            DireiraEsquera(0, DIAS,7, 'D')+' '+
            DireiraEsquera(0, FormatFloat('###,##0.00', ReceberPagar.FieldByName('VALOR').asFloat-
            ReceberPagar.FieldByName(ValarPagoRecebidox).asFloat),20, 'D')+' '+
            DireiraEsquera(0, ReceberPagar.FieldByName('NUMERO').AsString,54, 'D'), 6, 'E');
            Inc( nLin );
          end;
          Total:=Total+ReceberPagar.FieldByName('VALOR').asFloat-ReceberPagar.FieldByName(ValarPagoRecebidox).asFloat;
          TotalConta:=TotalConta+ReceberPagar.FieldByName('VALOR').asFloat-ReceberPagar.FieldByName(ValarPagoRecebidox).asFloat;
          ReceberPagar.Next;
        end;
        if (CheckBox6.Checked=false) and (CheckBox7.Checked=false) then begin
          Imp_Linha(01, 00, 'TOTAL DA CONTA -> '+
            DireiraEsquera(0, FormatFloat('###,##0.00', TotalConta),42, 'D'), 6, 'E');
        end
        else begin
          {
          Imp_Linha(01, 00, DireiraEsquera(0, TabelaClienteFornecedor.FieldByName('CODIGO').AsString,3, 'D')+' '+
          DireiraEsquera(0, TabelaClienteFornecedor.FieldByName('NOME').AsString,47, 'E')+
          DireiraEsquera(0, FormatFloat('###,##0.00', TotalConta),12, 'D'), 12, 'D');
          }
          Imp_Linha(01, 00, DireiraEsquera(0, TabelaClienteFornecedor.FieldByName('CODIGO').AsString,7, 'D')+' - '+
          DireiraEsquera(0, TabelaClienteFornecedor.FieldByName('NOME').AsString,47, 'E'), 12, 'E');
          Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalConta), 12, 'D');
          Inc( nLin );
        end;
        TotalConta:=0;
        // TextListBox1.Items.Add('');
      end;
      TabelaClienteFornecedor.Next;
      // if nLin >= QuantidadedeLinhas then  begin
      if nLin >= 60 then  begin
        // if not CONFIGF.DBCheckBox1.Checked then
        //   Imp_Linha(02, 00, ACondensa5+ASubScript+RODAPEV+DSupScript , 6, 'E');
        if TelaImpressora='I' then
          Imp_Ejeta;
        nLin := 0;
        Pag  := Pag+1;
        // Cabecalho;
      end;
      if (ComboEdit1.Text<>'') and (ReceberPagarx='RECEBER') then
        break;
    end;

    if (ComboEdit1.Text<>'') and (ReceberPagarx='RECEBER') then else
     if CheckBox6.Checked=true then
       Imp_Linha(02, 00, 'TOTAL GERAL -> '+DireiraEsquera(0, FormatFloat('###,##0.00', Total),55, 'D'), 6, 'E')
     else
       Imp_Linha(01, 00, 'TOTAL GERAL -> '+DireiraEsquera(0, FormatFloat('###,##0.00', Total),45, 'D'), 6, 'E');

    Imp_Linha(01, 00, '', 6, 'E');
    TamanhoFonte:=9;
    // Show;
    // Button1.Click;
    // close;
  end;
  Imp_Fim;
  MENSPROCF.Close;
  TamanhoFonte:=0;
end;

end.
