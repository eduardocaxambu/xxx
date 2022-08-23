unit VISUALIZACAO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Mestre, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, ppDesignLayer,
  ppDB, ppDBPipe, ppParameter, ppBands, ppPrnabl, ppClass, ppStrtch, ppRichTx,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, cxDBRichEdit, cxTextEdit, cxMemo,
  cxRichEdit, Vcl.StdCtrls, RxRichEd, RxCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit,
  Vcl.Buttons, Vcl.ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,               cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxExtComCtrlsLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPSRELnk, cxClasses, ComObj,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, cxStyles;

type
  TVISUALIZACAOF = class(TMestre_FRM)
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button7: TButton;
    Button6: TButton;
    CurrencyEdit1: TCurrencyEdit;
    Button8: TButton;
    Button10: TButton;
    Button11: TButton;
    CheckBox1: TCheckBox;
    Button3: TButton;
    Button5: TButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    TextListBox1: TTextListBox;
    RxRichEdit1: TRxRichEdit;
    cxRichEdit1: TcxRichEdit;
    RichEdit1: TcxDBRichEdit;
    OpenDialog1: TOpenDialog;
    PrintDialog1: TPrintDialog;
    SaveDialog1: TSaveDialog;
    Curriculum: TppReport;
    ppHeaderBand14: TppHeaderBand;
    ppDetailBand14: TppDetailBand;
    ppDBRichText2: TppDBRichText;
    ppFooterBand14: TppFooterBand;
    ppParameterList15: TppParameterList;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline1ppField1: TppField;
    ppDBPipeline1ppField2: TppField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxRichEditReportLink;
    dxComponentPrinter1Link2: TcxRichEditReportLink;
    Button9: TButton;
    procedure Button5Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure DefineDiretorioArquivo;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ImpressaoReportBuilder;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VISUALIZACAOF: TVISUALIZACAOF;

implementation

uses FUNCOES, PRINCIPAL, FRENTEDADOS;

{$R *.dfm}

procedure TVISUALIZACAOF.Button10Click(Sender: TObject);
begin
  inherited;
  PrintDialog1.Execute;
  // Label2.Caption := LerImpressora;
end;

procedure TVISUALIZACAOF.Button11Click(Sender: TObject);
var  I: integer;
begin
  inherited;
  RxRichEdit1.Clear;
  RxRichEdit1.Text:=TextListBox1.Items.Text;
  {
  if CheckBox1.Checked then begin
    if Imp_Inicio( Label2.Caption, 'Impressão', 'TEXT', False) then
      Imp_InicializaPagina;
  end
  else begin
    if Imp_Inicio( Label2.Caption, 'Impressão', 'RAW', False) then
      Imp_InicializaPagina;
  end;
  }

  try
    {
    for I := 0 to RxRichEdit1.Lines.Count -1 do
      Imp_Linha(01, 00, RxRichEdit1.Lines[I], 100, 'E');
      // Imp_Linha(01, 00, 'ejoc', 100, 'E');
      }
  finally
    // CloseFile(F);
  end;
  // Imp_Fim;
end;

procedure TVISUALIZACAOF.Button1Click(Sender: TObject);
begin
  inherited;
  if DataModule5.CONF_PADRAO.FieldByName('TIPODEMPRESSAO').AsString='RB' then begin
    ImpressaoReportBuilder;
  end
  else begin
    DefineDiretorioArquivo;
    cxRichEdit1.Style.Font.Name:='LettrGoth12 BT';
    cxRichEdit1.Style.Font:=TextListBox1.Font;
    cxRichEdit1.Style.Font.Color:=clWindowText;
    if TamanhoFonte=0 then
      cxRichEdit1.Style.Font.Size:=11
    else
      cxRichEdit1.Style.Font.Size:=TamanhoFonte;

    cxRichEdit1.Lines.Clear;
    cxRichEdit1.Lines.Text:=TextListBox1.Items.Text;

    dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link1;
    dxComponentPrinter1.Preview();
  end;
end;

procedure TVISUALIZACAOF.Button2Click(Sender: TObject);
var
  ArquivoTexto: TextFile;
  Mensagem, NomeArquivo: String;
begin
  inherited;
  if (SaveDialog1.Execute) then begin
    NomeArquivo := SaveDialog1.FileName + '.txt';
    AssignFile(ArquivoTexto, NomeArquivo);
    Rewrite(ArquivoTexto);
    Mensagem := TextListBox1.Items.Text;
    Writeln(ArquivoTexto, Mensagem);
    CloseFile(ArquivoTexto);
  end;
  TextListBox1.SetFocus;
end;

procedure TVISUALIZACAOF.Button3Click(Sender: TObject);
begin
  inherited;
  DefineDiretorioArquivo;
  cxRichEdit1.Style.Font.Name:='LettrGoth12 BT';
  cxRichEdit1.Style.Font:=TextListBox1.Font;
  cxRichEdit1.Style.Font.Color:=clWindowText;
  if TamanhoFonte=0 then
    cxRichEdit1.Style.Font.Size:=12
  else
    cxRichEdit1.Style.Font.Size:=TamanhoFonte;

  cxRichEdit1.Lines.Clear;
  cxRichEdit1.Lines.Text:=TextListBox1.Items.Text;

  dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link2;
  dxComponentPrinter1.Preview();
end;

procedure TVISUALIZACAOF.Button4Click(Sender: TObject);
var
  NomeArquivo: String;
begin
  inherited;
  if (OpenDialog1.Execute) then begin
    NomeArquivo := OpenDialog1.FileName;
    TextListBox1.Items.Text := '';
    TextListBox1.Items.LoadFromFile(NomeArquivo);
  end;
  TextListBox1.SetFocus;
end;

procedure TVISUALIZACAOF.Button5Click(Sender: TObject);
begin
  ImpressaoReportBuilder;
end;

procedure TVISUALIZACAOF.Button6Click(Sender: TObject);
begin
  inherited;
  RxRichEdit1.Width:=1000;
  RxRichEdit1.Height:=1000;
  RxRichEdit1.Clear;
  RxRichEdit1.Font.Name:='LettrGoth12 BT';
  // TextListBox1.Font.Name:='Terminal';
  RxRichEdit1.Font:=TextListBox1.Font;
  RxRichEdit1.Font.Color:=clWindowText;
  // RxRichEdit1.Font.Size:=CurrencyEdit1.AsInteger;
  RxRichEdit1.Font.Size:=12;
  RxRichEdit1.Text:=TextListBox1.Items.Text;
  // ImprimirMemo(TextListBox1);
  // ImprimirMemo(RxRichEdit1);
  tamanhofonte:=0;

  {RxRichEdit1.Clear;
  RxRichEdit1.Items.Text:=TextListBox1.Items.Text;
  ImprimirMemo(RxRichEdit1);}
end;


procedure TVISUALIZACAOF.Button7Click(Sender: TObject);
begin
  inherited;
  RxRichEdit1.Width:=1000;
  RxRichEdit1.Height:=1000;
  RxRichEdit1.Clear;
  TextListBox1.Font.Name:='LettrGoth12 BT';
  RxRichEdit1.Font:=TextListBox1.Font;
  RxRichEdit1.Font.Color:=clWindowText;
  tamanhofonte:=CurrencyEdit1.AsInteger;
  if tamanhofonte=0 then
    RxRichEdit1.Font.Size:=7
  else
    RxRichEdit1.Font.Size:=tamanhofonte;
  RxRichEdit1.Text:=TextListBox1.Items.Text;
  // ImprimirMemo(RxRichEdit1);
  tamanhofonte:=0;
end;

procedure TVISUALIZACAOF.Button8Click(Sender: TObject);
var linha, coluna, I : integer;
    planilha : variant;
    valorcampo : string;
begin
  inherited;
  planilha:= CreateoleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do dbGrid para o Excel';
  planilha.visible := true;

  RxRichEdit1.Width:=1000;
  RxRichEdit1.Height:=1000;
  RxRichEdit1.Clear;
  TextListBox1.Font.Name:='LettrGoth12 BT';
  RxRichEdit1.Font:=TextListBox1.Font;
  RxRichEdit1.Font.Color:=clWindowText;
  if tamanhofonte=0 then
    RxRichEdit1.Font.Size:=7
  else
    RxRichEdit1.Font.Size:=tamanhofonte;
  RxRichEdit1.Text:=TextListBox1.Items.Text;
  for I := 0 to RxRichEdit1.Lines.Count -1 do begin
    linha:=linha+1;
    valorcampo := RxRichEdit1.Lines[I];
    planilha.cells[linha ,1] := valorCampo;
  end;
  tamanhofonte:=0;
  planilha.columns.Autofit;
end;

procedure TVISUALIZACAOF.Button9Click(Sender: TObject);
begin
  inherited;
  if DataModule5.CONF_PADRAO.FieldByName('TIPODEMPRESSAO').AsString='RB' then begin
    ImpressaoReportBuilder;
  end
  else begin
    DefineDiretorioArquivo;
    cxRichEdit1.Style.Font.Name:='LettrGoth12 BT';
    cxRichEdit1.Style.Font:=TextListBox1.Font;
    cxRichEdit1.Style.Font.Color:=clWindowText;
    if TamanhoFonte=0 then
      cxRichEdit1.Style.Font.Size:=16
    else if TamanhoFonte=99 then
      cxRichEdit1.Style.Font.Size:=16
    else if TamanhoFonte=999 then
      cxRichEdit1.Style.Font.Size:=18
    else if TamanhoFonte=9999 then
      cxRichEdit1.Style.Font.Size:=19
    else if TamanhoFonte=99999 then
      cxRichEdit1.Style.Font.Size:=21
    else
      cxRichEdit1.Style.Font.Size:=TamanhoFonte;

    TamanhoFonte:=0;
    cxRichEdit1.Lines.Clear;
    cxRichEdit1.Lines.Text:=TextListBox1.Items.Text;

    dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link1;
    dxComponentPrinter1.Preview();
  end;
end;

procedure TVISUALIZACAOF.ImpressaoReportBuilder;
begin
  inherited;
  ppDBRichText2.Font.Name:='LettrGoth12 BT';
  ppDBRichText2.Font:=TextListBox1.Font;
  ppDBRichText2.Font.Color:=clWindowText;

  if TamanhoFonte=0 then
    ppDBRichText2.Font.Size:=16
  else if TamanhoFonte=99 then
    ppDBRichText2.Font.Size:=16
  else if TamanhoFonte=999 then
    ppDBRichText2.Font.Size:=18
  else if TamanhoFonte=9999 then
    ppDBRichText2.Font.Size:=19
  else if TamanhoFonte=99999 then
    ppDBRichText2.Font.Size:=21
  else
    ppDBRichText2.Font.Size:=TamanhoFonte;

  {
  ppDBRichText2.Font.Size:=8;
  if TamanhodoFone<>0 then
    ppDBRichText2.Font.Size:=TamanhodoFone;
  }
  DataModule5.OBSERVACAO.Open;
  DataModule5.OBSERVACAO.Append;
  DataModule5.OBSERVACAO.FieldByName('OBS').Value:=TextListBox1.Items.Text;
  DataModule5.OBSERVACAO.Post;
  Curriculum.Print;
end;

procedure TVISUALIZACAOF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_escape then
    close;
end;

procedure TVISUALIZACAOF.FormShow(Sender: TObject);
begin
  inherited;
  cxRichEdit1.Align:=alclient;
  RichEdit1.Align:=alclient;

  TextListBox1.Font.Name:='LettrGoth12 BT';
  TextListBox1.Align:=AlClient;
  TextListBox1.Visible:=false;
  TextListBox1.Visible:=true;
  TextListBox1.SetFocus;

  RxRichEdit1.Align:=AlClient;

  // Label2.Caption := LerImpressora;

  {  // VELHO
  DataModule5.CONF_PADRAO.Open;
  if DataModule5.CONF_PADRAO.FieldByName('IMAGEM').AsString<>'' then begin
    if fileexists(DataModule5.CONF_PADRAO.FieldByName(
      'IMAGEM').AsString) then
      ppImage1.Picture.LoadFromFile(DataModule5.CONF_PADRAO.FieldByName(
        'IMAGEM').AsString);
  end;
  } // VELHO
end;

procedure ImprimirMemo(RichEditX: TRxRichEdit);
var
  I: integer;
  F: Text;
begin
  { Usa na impressora a mesma fonte do memo }
  // Printer.Canvas.Font.Assign(RichEditX.Font);
  // AssignPrn(F);
  Rewrite(F);
  try
    WriteLn(F, '');
    WriteLn(F, '');
    for I := 0 to RichEditX.Lines.Count -1 do
      WriteLn(F, '          '+RichEditX.Lines[I]);
  finally
    CloseFile(F);
  end;
end;

procedure TVISUALIZACAOF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  TextListBox1.Font.Size:=TextListBox1.Font.Size+1;
  TextListBox1.Visible:=false;
  TextListBox1.Visible:=true;
  TextListBox1.SetFocus;
end;

procedure TVISUALIZACAOF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if TextListBox1.Font.Size<>1 then begin
    TextListBox1.Font.Size:=TextListBox1.Font.Size-1;
    TextListBox1.Visible:=false;
    TextListBox1.Visible:=true;
    TextListBox1.SetFocus;
  end;
end;

procedure TVISUALIZACAOF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  cxRichEdit1.Style.Font.Name:='LettrGoth12 BT';
  cxRichEdit1.Style.Font:=TextListBox1.Font;
  cxRichEdit1.Style.Font.Color:=clWindowText;
  if TamanhoFonte=0 then
    cxRichEdit1.Style.Font.Size:=12
  else
    cxRichEdit1.Style.Font.Size:=TamanhoFonte;

  cxRichEdit1.Lines.Clear;
  cxRichEdit1.Lines.Text:=TextListBox1.Items.Text;

  dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link1;
end;

procedure TVISUALIZACAOF.DefineDiretorioArquivo;
var Data,hora,DataHora,DiretorioNovo:string;
begin
  dxComponentPrinter1Link1.PDFExportOptions.DefaultFileName:=DefineDiretorioArquivoSalvo(NomeDoArquivo,MesAnoRelatorio,'.PDF');
  dxComponentPrinter1Link2.PDFExportOptions.DefaultFileName:=DefineDiretorioArquivoSalvo(NomeDoArquivo,MesAnoRelatorio,'.PDF');
  Curriculum.AllowPrintToFile := true;
  Curriculum.TextFileName :=DataHora;
end;


end.





