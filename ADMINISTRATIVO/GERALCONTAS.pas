unit GERALCONTAS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, mestre2, NxControls6, NxCollection6,
  NxNotebook6, Vcl.ExtCtrls, RxDBCtrl, RxToolEdit, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, RxCurrEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TGERALCONTASF = class(Tmestre2_FRM)
    NxNotebook61: TNxNotebook6;
    ContasReceber: TNxNotebookSheet6;
    ContasPagar: TNxNotebookSheet6;
    Caderneta: TNxNotebookSheet6;
    RecebimentoCaixa: TNxNotebookSheet6;
    CartoesItens: TNxNotebookSheet6;
    Panel8: TPanel;
    Panel56: TPanel;
    Button24: TButton;
    Button25: TButton;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel3: TPanel;
    Button3: TButton;
    Button4: TButton;
    Label137: TLabel;
    Label138: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label155: TLabel;
    Label190: TLabel;
    Label192: TLabel;
    Label193: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBEdit50: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit103: TDBEdit;
    DBEdit107: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    RxDBComboEdit1: TRxDBComboEdit;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    RxDBComboEdit2: TRxDBComboEdit;
    RxDBComboEdit3: TRxDBComboEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Label161: TLabel;
    Label162: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    Label167: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBDateEdit10: TDBDateEdit;
    RxDBComboEdit9: TRxDBComboEdit;
    DBDateEdit11: TDBDateEdit;
    DBDateEdit12: TDBDateEdit;
    RxDBComboEdit10: TRxDBComboEdit;
    RxDBComboEdit11: TRxDBComboEdit;
    Label25: TLabel;
    Label28: TLabel;
    DBText12: TDBText;
    Label209: TLabel;
    Label210: TLabel;
    Label211: TLabel;
    Label216: TLabel;
    Label218: TLabel;
    Label219: TLabel;
    Label220: TLabel;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit87: TDBEdit;
    DBDateEdit13: TDBDateEdit;
    RxDBComboEdit12: TRxDBComboEdit;
    DBDateEdit14: TDBDateEdit;
    DBDateEdit15: TDBDateEdit;
    Panel12: TPanel;
    Label36: TLabel;
    Panel17: TPanel;
    Button6: TButton;
    Button7: TButton;
    CurrencyEdit2: TCurrencyEdit;
    Panel18: TPanel;
    Label37: TLabel;
    Panel19: TPanel;
    ItensdaVenda: TNxNotebookSheet6;
    Panel6: TPanel;
    Panel7: TPanel;
    Button5: TButton;
    Button8: TButton;
    Label212: TLabel;
    Label213: TLabel;
    Label214: TLabel;
    Label215: TLabel;
    Label217: TLabel;
    Label221: TLabel;
    Label222: TLabel;
    Label223: TLabel;
    Label224: TLabel;
    Label225: TLabel;
    Label226: TLabel;
    DBEdit80: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit100: TDBEdit;
    DBEdit104: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit109: TDBEdit;
    DBDateEdit16: TDBDateEdit;
    DBDateEdit17: TDBDateEdit;
    RxDBComboEdit13: TRxDBComboEdit;
    RxDBCalcEdit1: TRxDBCalcEdit;
    DBEdit81: TDBEdit;
    DBEdit86: TDBEdit;
    Panel47: TPanel;
    Panel46: TPanel;
    Panel48: TPanel;
    Panel45: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
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
    NxNotebookSheet62: TNxNotebookSheet6;
    Panel44: TPanel;
    Panel1: TPanel;
    Panel49: TPanel;
    Panel50: TPanel;
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
    Panel52: TPanel;
    Panel53: TPanel;
    Panel54: TPanel;
    Panel51: TPanel;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    procedure FormShow(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CurrencyEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBComboEdit13ButtonClick(Sender: TObject);
    procedure RxDBComboEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboEdit1ButtonClick(Sender: TObject);
    procedure RxDBComboEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit38KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit62KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit109Enter(Sender: TObject);
    procedure DBEdit81Enter(Sender: TObject);
    procedure DBDateEdit16Enter(Sender: TObject);
    procedure DBDateEdit16Exit(Sender: TObject);
    procedure RxDBCalcEdit1Exit(Sender: TObject);
  private
    procedure Pesquisa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GERALCONTASF: TGERALCONTASF;

implementation

{$R *.dfm}

uses dadosFinaceiro, FUNCOES, CAD_MANUTENCAO, CONSULTAS, FUNCOESGERAIS;

procedure TGERALCONTASF.Button1Click(Sender: TObject);
begin
  inherited;
  if DataFinanceiro.PAGAR.FieldByName('NUMERO').AsString='' then begin
    ShowMessage('Informe o Número do Vencimento !!!');
    DBEdit71.SetFocus;
  end
  else if DataFinanceiro.PAGAR.FieldByName('ORDEM').AsString='' then begin
    ShowMessage('Informe a Parcela !!!');
    DBEdit17.SetFocus;
  end
  else if DataFinanceiro.PAGAR.FieldByName('EMISSAO').AsString='' then begin
    ShowMessage('Informe a data de Emissão do Vencimento !!!');
    DBDateEdit12.SetFocus;
  end
  else if DataFinanceiro.PAGAR.FieldByName('CODIGO').AsInteger=0 then begin
    ShowMessage('Informe o Fornecedor do Vencimento !!!');
    RxDBComboEdit9.SetFocus;
  end
  else if DataFinanceiro.PAGAR.FieldByName('VENCIMENTO').AsString='' then begin
    ShowMessage('Informe a data de Vencimento do Vencimento !!!');
    DBDateEdit10.SetFocus;
  end
  else if DataFinanceiro.PAGAR.FieldByName('VALOR').AsFloat=0 then begin
    ShowMessage('Informe o Valor de Vendas !!!');
    DBEdit35.SetFocus;
  end
  else begin
    DataFinanceiro.PAGAR.FieldByName('ORDEM').AsString:=StrZero(DataFinanceiro.PAGAR.FieldByName('ORDEM').AsInteger,2,0);
    DataFinanceiro.PAGAR.FieldByName('NUMERO').AsString:=StrZero(DataFinanceiro.PAGAR.FieldByName('NUMERO').AsInteger,9,0);
    DataFinanceiro.PAGAR.FieldByName('TIPO').AsString:='P';
    DataFinanceiro.PAGAR.FieldByName('MODELO').AsString:='55';
    DataFinanceiro.PAGAR.FieldByName('SERIE').AsString:='001';
    DataFinanceiro.PAGAR.FieldByName('SUBSERIE').AsString:='01';
    DataFinanceiro.PAGAR.Post;
    close;
  end;
end;

procedure TGERALCONTASF.Button24Click(Sender: TObject);
begin
  inherited;
  if DataFinanceiro.RECEBER.FieldByName('NUMERO').AsString='' then begin
    ShowMessage('Informe o Número do Vencimento !!!');
    DBEdit103.SetFocus;
  end
  else if DataFinanceiro.RECEBER.FieldByName('ORDEM').AsString='' then begin
    ShowMessage('Informe a Parcela !!!');
    DBEdit50.SetFocus;
  end
  else if DataFinanceiro.RECEBER.FieldByName('EMISSAO').AsString='' then begin
    ShowMessage('Informe a data de Emissão do Vencimento !!!');
    DBDateEdit3.SetFocus;
  end
  else if DataFinanceiro.RECEBER.FieldByName('CODIGO').AsInteger=0 then begin
    ShowMessage('Informe o Cliente do Vencimento !!!');
    RxDBComboEdit1.SetFocus;
  end
  else if DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsString='' then begin
    ShowMessage('Informe a data de Vencimento do Vencimento !!!');
    DBDateEdit1.SetFocus;
  end
  else if DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat=0 then begin
    ShowMessage('Informe o Valor de Vendas !!!');
    DBEdit60.SetFocus;
  end
  else begin
    DataFinanceiro.RECEBER.FieldByName('ORDEM').AsString:=StrZero(DataFinanceiro.RECEBER.FieldByName('ORDEM').AsInteger,2,0);
    DataFinanceiro.RECEBER.FieldByName('NUMERO').AsString:=StrZero(DataFinanceiro.RECEBER.FieldByName('NUMERO').AsInteger,9,0);
    DataFinanceiro.RECEBER.FieldByName('TIPO').AsString:='P';
    DataFinanceiro.RECEBER.FieldByName('MODELO').AsString:='55';
    DataFinanceiro.RECEBER.FieldByName('SERIE').AsString:='001';
    DataFinanceiro.RECEBER.FieldByName('SUBSERIE').AsString:='01';
    DataFinanceiro.RECEBER.FieldByName('ORIGEM').AsString:='01';
    DataFinanceiro.RECEBER.Post;
    NovoLancamento:=DataFinanceiro.RECEBER.FieldByName('CODIGO').AsString;

    if OptConta='Novo' then begin
      NumedordoLancamento;
      InformacoesRecebimentoContas('Nova '+DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString+'-'+
      DataFinanceiro.CADASTRO_CLIENTES.FieldByName('NOME').AsString,
      'Lançamento de uma Nova Conta '+
      DataFinanceiro.RECEBER.FieldByName('NUMERO').AsString+'/'+DataFinanceiro.RECEBER.FieldByName('ORDEM').AsString,'C',
      'P',
      '',
      DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat,
      0);
    end;

    close;
  end;
end;

procedure TGERALCONTASF.Button25Click(Sender: TObject);
begin
  inherited;
  DataFinanceiro.RECEBER.Cancel;
  close;
end;

procedure TGERALCONTASF.Button2Click(Sender: TObject);
begin
  inherited;
  DataFinanceiro.PAGAR.Cancel;
  close;
end;

procedure TGERALCONTASF.Button5Click(Sender: TObject);
begin
  inherited;
  if DataFinanceiro.CARTOESITENS.FieldByName('CUPOM').AsString='' then
    DataFinanceiro.CARTOESITENS.FieldByName('CUPOM').AsString:='1';
  DataFinanceiro.CARTOESITENS.Post;
  close;
end;

procedure TGERALCONTASF.Button6Click(Sender: TObject);
begin
  inherited;
  if CurrencyEdit2.Value>TotalGeralConta+0.01 then begin
    ShowMessage('Recebimento não pode ser maior que a Conta !!!');
    CurrencyEdit2.SetFocus;
  end
  else begin
    TotalGeralContaBaixar:=CurrencyEdit2.Value;
    close;
  end;
end;

procedure TGERALCONTASF.Button7Click(Sender: TObject);
begin
  inherited;
  TotalGeralContaBaixar:=0;
  close;
end;

procedure TGERALCONTASF.Button8Click(Sender: TObject);
begin
  inherited;
  DataFinanceiro.CARTOESITENS.Cancel;
  close;
end;

procedure TGERALCONTASF.CurrencyEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key=^T then
    CurrencyEdit2.Value:=TotalGeralConta;
end;

procedure TGERALCONTASF.DBDateEdit16Enter(Sender: TObject);
begin
  inherited;
  if DataFinanceiro.CARTOESITENS.FieldByName('EMISSAO').AsString='' then begin
    DataFinanceiro.CARTOESITENS.FieldByName('EMISSAO').AsDateTime:=date;
    DataFinanceiro.CARTOESITENS.FieldByName('VENCIMENTO').AsDateTime:=date+DataFinanceiro.CARTOES.FieldByName('DIAS').AsInteger;
  end;
end;

procedure TGERALCONTASF.DBDateEdit16Exit(Sender: TObject);
begin
  inherited;
  DataFinanceiro.CARTOESITENS.FieldByName('VENCIMENTO').AsDateTime:=
  DataFinanceiro.CARTOESITENS.FieldByName('EMISSAO').AsDateTime+
  DataFinanceiro.CARTOES.FieldByName('DIAS').AsInteger;
end;

procedure TGERALCONTASF.DBEdit109Enter(Sender: TObject);
begin
  inherited;
  if DataFinanceiro.CARTOESITENS.FieldByName('ORDEM').AsString='' then
    DataFinanceiro.CARTOESITENS.FieldByName('ORDEM').AsInteger:=1;
end;

procedure TGERALCONTASF.DBEdit38KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
    DBEdit71.SetFocus;
end;

procedure TGERALCONTASF.DBEdit62KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
    DBEdit103.SetFocus;
end;

procedure TGERALCONTASF.DBEdit81Enter(Sender: TObject);
begin
  inherited;
  if DataFinanceiro.CARTOESITENS.FieldByName('ORDEM').AsString='' then
    DataFinanceiro.CARTOESITENS.FieldByName('ORDEM').AsInteger:=1;
end;

procedure TGERALCONTASF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(GERALCONTASF);
  Action:=caFree;
end;

procedure TGERALCONTASF.FormShow(Sender: TObject);
begin
  inherited;
  NxNotebook61.Align:=alclient;
  Panel18.BevelOuter:=bvNone;
  Panel19.BevelOuter:=bvNone;
  Panel17.BevelOuter:=bvNone;
  Panel7.BevelOuter:=bvNone;
  Panel6.BevelOuter:=bvNone;
  Panel3.BevelOuter:=bvNone;
  Panel5.BevelOuter:=bvNone;
  Panel2.BevelOuter:=bvNone;
  Panel4.BevelOuter:=bvNone;
  Panel2.BevelOuter:=bvNone;
  Panel4.BevelOuter:=bvNone;
  Panel8.BevelOuter:=bvNone;
  Panel56.BevelOuter:=bvNone;

  Panel4.Align:=alclient;
  Panel5.Align:=alclient;
  Panel6.Align:=alclient;
  Panel8.Align:=alclient;
  Panel12.Align:=alclient;
  Panel1.Align:=alclient;

  if NxNotebook61.ActivePageIndex=0 then begin
    if OptConta='Novo' then begin
      // DataFinanceiro.RECEBER.FieldByName('CODIGO').AsString:=DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString;
      RxDBComboEdit1.Enabled:=false;
    end;
    if OptConta='Editar' then
      RxDBComboEdit1.Enabled:=false;
  end;

  if NxNotebook61.ActivePageIndex=3 then begin
    CurrencyEdit2.SetFocus;
    TotalGeralContaBaixar:=0;
  end;
end;

procedure TGERALCONTASF.RxDBCalcEdit1Exit(Sender: TObject);
begin
  inherited;
  DataFinanceiro.CARTOESITENS.FieldByName('VALORDES').AsFloat:=
  DataFinanceiro.CARTOESITENS.FieldByName('VALOR').AsFloat-
  (DataFinanceiro.CARTOESITENS.FieldByName('VALOR').AsFloat*
  DataFinanceiro.CARTOES.FieldByName('VALORTAXA').AsFloat/100)
end;

procedure TGERALCONTASF.RxDBComboEdit13ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TGERALCONTASF.RxDBComboEdit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Pesquisa;
end;

procedure TGERALCONTASF.RxDBComboEdit1ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TGERALCONTASF.RxDBComboEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Pesquisa;
end;

procedure TGERALCONTASF.Pesquisa;
begin
  if RxDBComboEdit9.Focused=true then begin
    ConsultaFornecedores;
    if CodigoConsulta<>'' then
      DataFinanceiro.PAGAR.FieldByName('CODIGO').AsString:=CodigoConsulta;
  end;

  if RxDBComboEdit1.Focused=true then begin
    ConsultaClientes;
    if CodigoConsulta<>'' then
      DataFinanceiro.RECEBER.FieldByName('CODIGO').AsString:=CodigoConsulta;
  end;

  if RxDBComboEdit13.Focused=true then begin
    ConsultaCartoes;
    if CodigoConsulta<>'' then
      DataFinanceiro.CARTOESITENS.FieldByName('CARTOES').AsString:=CodigoConsulta;
  end;
end;

end.
