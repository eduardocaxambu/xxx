unit PREVIEW;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, ExtCtrls, Mask, DBCtrls , db, RxCombos,
  MaskUtils, RxRichEd, RxCalc, RXCtrls, RXToolEdit, RXCurrEdit, ComObj,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMemo, cxRichEdit,
  cxDBRichEdit, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxSkinscxPCPainter, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxSkinsdxBarPainter, dxPSCore, dxPSRELnk,
  dxPScxExtComCtrlsLnk, dxPSPrVw,dxPSRes,cxClasses, ppDB, ppDBPipe, ppParameter,
  ppBands, ppStrtch, ppRichTx, jpeg, ppPrnabl, ppClass, ppCtrls, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppDesignLayer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk;

type
  TFrmPreview = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Impressora: TCheckBox;
    Button3: TButton;
    cxRichEdit1: TcxRichEdit;
    TextListBox1: TTextListBox;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxRichEditReportLink;
    Button4: TButton;
    dxComponentPrinter1Link2: TcxRichEditReportLink;
    Button5: TButton;
    Button6: TButton;
    Curriculum: TppReport;
    ppHeaderBand14: TppHeaderBand;
    ppDetailBand14: TppDetailBand;
    ppDBRichText2: TppDBRichText;
    ppFooterBand14: TppFooterBand;
    ppParameterList15: TppParameterList;
    ppDBPipeline1: TppDBPipeline;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    ArqPreview: String;
  public
    { Public declarations }
  end;

  function GeraArqTemp: String;
  function LerImpressora: String;
  function EscolheImpressora: String;
  procedure DefineVarPubl();
  function Imp_Inicio(Const pNomeImp, pNomeTrabalho, pTipo: String; pPreview: Boolean): Boolean;
  function TrocaAcentos(Texto: String): String;
  procedure Imp_InicializaPagina;
  // procedure Imp_Linha(SaltaLin, EspacoCol: Integer; Texto: String; TamTotal: Integer; Alinha: Char);
  procedure Imp_Linha(SaltaLin, EspacoCol: Integer; Texto: AnsiString; TamTotal: Integer; Alinha: Char);
  procedure Imp_Linha2(SaltaLin, EspacoCol: Integer; Texto: String; TamTotal: Integer; Alinha: Char);
  procedure Imp_Ejeta;
  procedure Imp_Fim;
  function AcertaAcentos(Str:String): String;
  function RemoveAcentos(Str:String): String;

  // procedure RelSimples(Tabela:ttable;Cod, Desc, Tit,ESPACO,indice: String);
  procedure RelSimples(tabela,Cod, Desc, Tit,ESPACO,indice: String);
var
  FrmPreview: TFrmPreview;
  hPrinter: THandle;
  BytesWritten: DWORD;
  AExpandido, DExpandido, ACondensa2, DCondensa2, ACondensa3,
  DCondensa3, ACondensa4, DCondensa4, ACondensa5, DCondensa5,
  ACondensa6, DCondensa6, ACondensa7, DCondensa7,
  ASaltLinha, ASaltPoleg, AReduEntr1, DReduEntr1, AReduEntr2,
  DReduEntr2, ASublinhad, DSublinhad, ASupScript, ASubScript,
  DSupScript, AEnfatizad, DEnfatizad, DTudo, DiretorioDados,
  NomeDoArquivo: string;

implementation
  Uses WinSpool, Printers, DADOS_CADASTROS, dadosOBJETOS, FUNCOES, DADOSFRENTE,
  GERAL3, PRINCIPAL, MENSPROC, FUNCAORELATORIOS, GERALFRENTE, CAD_MANUTENCAO;

{$R *.dfm}

function LerImpressora: String;
var
  MyPrinter, MyDriver, MyPort: array[0..100] of Char;
  DevMode: THandle;
  NomeImpressora, Impressoraxyz: string;
begin
  AbreConf_Padrao;
  // if DataModule5.CONF_PADRAO.FieldByName('IMPRESSORA').AsString='' then begin
  // if copy(ParamStr(1),9,1)<>'' then
  //   NomeImpressora:='IMPRESSORA'+copy(ParamStr(1),9,1)
  // else
  //   NomeImpressora:='IMPRESSORA1';

  if ParamStr(2)<>'' then
    NomeImpressora:='IMPRESSORA'+ParamStr(2)
  else
    NomeImpressora:='IMPRESSORA2';

  if ImpressoraEscolhida='' then
    Impressoraxyz:=DADOSFRENTEf.CONF_PADRAO.FieldByName(NomeImpressora).AsString
  else
    Impressoraxyz:=ImpressoraEscolhida;

  // ShowMessage(ParamStr(2));
  // ShowMessage(NomeImpressora+#13+DADOSFRENTEf.CONF_PADRAO.FieldByName(NomeImpressora).AsString);

  // if DADOSFRENTEf.CONF_PADRAO.FieldByName(NomeImpressora).AsString='' then begin
  if Impressoraxyz='' then begin
    Printer.GetPrinter(MyPrinter, MyDriver, MyPort, DevMode);
    Result := MyPrinter
  end
  else
    Result := Impressoraxyz;
    // Result := DADOSFRENTEf.CONF_PADRAO.FieldByName(NomeImpressora).AsString
end;

function GeraArqTemp: String;
var
  // TempDir: array[0..200] of char;
  // Buffer : array[0..200] of Char;

  // TempDir: array[0..200] of AnsiString;
  // Buffer : array[0..200] of AnsiString;

  TempDir: array[0..200] of char;
  Buffer : array[0..200] of char;

begin
  {
  GetTempPath(MAX_PATH, @TempDir);
  GetTempFileName(@TempDir, 'CLUB', 0, Buffer);
  Result := Buffer;
  }
  GetTempFileName('C:\DADOSFDB\TEMP', 'CLUB', 0, Buffer);
  Result := Buffer;
end;

function EscolheImpressora: String;
var
  MyPrinter, MyDriver, MyPort: array[0..100] of Char;
  DevMode: THandle;
begin
  Printer.GetPrinter(MyPrinter, MyDriver, MyPort, DevMode);
  Result := MyPrinter
end;

function Imp_Inicio(Const pNomeImp, pNomeTrabalho, pTipo: String; pPreview: Boolean): Boolean;
var
  DocInfo: TDocInfo1;
begin
  with TGERALFRENTEF.Create(nil) do begin
    Width:=Tela_Impressora_panel.Width;
    Height:=Tela_Impressora_panel.Height;
    NxNotebook61.ActivePageIndex:=15;
    ShowModal;
  end;
  // TelaImpressora:='T';
  if TelaImpressora='T' then
    pPreview:=true
  else
    pPreview:=false;
  MENSPROCF.Panel1.Caption := 'AGUARDE UM MOMENTO - GERANDO O RELATÓRIO !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;
  Result := False;
  if not WinSpool.OpenPrinter(PChar( pNomeImp ), hPrinter, nil) then
    raise exception.create('ALL INFORMATICA - Impressora não encontrada!');
  DocInfo.pDocName := PChar( pNomeTrabalho );
  DocInfo.pOutputFile := nil;
  if pPreview then begin
    DocInfo.pOutputFile := PChar( GeraArqTemp );
    FrmPreview := TFrmPreview.Create( Nil );
    FrmPreview.ArqPreview := DocInfo.pOutputFile;
  end;
  DocInfo.pDatatype := PChar( pTipo );
  if StartDocPrinter(hPrinter, 1, @DocInfo) = 0 then
    Exit;
  if not StartPagePrinter(hPrinter) then
    Exit;
  Result := True;
end;

function TrocaAcentos(Texto: String): String;
var
  i, j, p: Integer;
  s: String;
Const
  {Acentos:Array[1..26,1..2] of String =  (('á', 'a'#8''''),  ('â', 'a'#8'^'),
  ('à', 'a'#8'`'),  ('ã', 'a'#8'~'),  ('Á', 'A'#8''''), ('À', 'A'#8'`'),
  ('Â', 'A'#8'^'),  ('Ã', 'A'#8'~'),  ('é', 'e'#8''''), ('É', 'E'#8''''),
  ('Ê', 'E'#8'^'),  ('ê', 'e'#8'^'),  ('í', 'i'#8''''), ('Í', 'I'#8''''),
  ('ó', 'o'#8''''), ('õ', 'o'#8'~'),  ('ô', 'o'#8'^'),  ('Ó', 'O'#8''''),
  ('Ô', 'O'#8'^'),  ('Õ', 'o'#8'~'),  ('ú', 'u'#8''''), ('ü', 'u'#8'"'),
  ('Ú', 'U'#8''''), ('Ü', 'U'#8'"'),  ('ç', 'c'#8','),  ('Ç', 'C'#8','),

  ('Ú', 'U'#8''''));}
  Acentos:Array[1..27,1..2] of String =  (('á', 'a'#8''''),  ('â', 'a'#8'^'),
  ('à', 'a'#8'`'),  ('ã', 'a'#8'~'),  ('Á', 'A'#8''''), ('À', 'A'#8'`'),
  ('Â', 'A'#8'^'),  ('Ã', 'A'#8'~'),  ('é', 'e'#8''''), ('É', 'E'#8''''),
  ('Ê', 'E'#8'^'),  ('ê', 'e'#8'^'),  ('í', 'i'#8''''), ('Í', 'I'#8''''),
  ('ó', 'o'#8''''), ('õ', 'o'#8'~'),  ('ô', 'o'#8'^'),  ('Ó', 'O'#8''''),
  ('Ô', 'O'#8'^'),  ('Õ', 'o'#8'~'),  ('ú', 'u'#8''''), ('ü', 'u'#8'"'),
  ('Ú', 'U'#8''''), ('Ü', 'U'#8'"'),  ('ç', 'c'#8','),  ('Ç', 'C'#8','),
  ('║', 'º'#8''''));
begin
  s := Texto;
  for i := 1 to Length(Texto) do
    for j := 1 to High(Acentos) do
      if Texto[i] = Acentos[j, 1] then
      begin
        p := Pos(Texto[i], S);
        Delete(S, p, 1);
        Insert(Acentos[j, 2], S, p);
      end;
  Result := S;
end;

procedure Imp_InicializaPagina;
begin
  DefineVarPubl();
  Imp_Linha(00, 00, ACondensa5+ASubScript+DSupScript+DCondensa5+DCondensa2 , 6, 'E');
  if not StartPagePrinter(hPrinter) then
    raise exception.create('All Infomática - Problemas na inicialização da página !!!');
end;

procedure Imp_Fim;
var GeradordeImpressao:string;
begin
  if TrodadeGeradordeImpressao='' then
    GeradordeImpressao:=DADOSFRENTEf.CONF_PADRAO.FieldByName('TIPODEMPRESSAO').AsString
  else
    GeradordeImpressao:=TrodadeGeradordeImpressao;

  Imp_Linha(00, 00, ''+DTudo, 30, 'E');
  EndPagePrinter(hPrinter);
  EndDocPrinter(hPrinter);
  WinSpool.ClosePrinter(hPrinter);
  if Assigned( FrMPreview ) then begin
    try
      FrmPreview.TextListBox1.Align:=alclient;
      if TelaImpressora='T' then begin
        FrmPreview.TextListBox1.Items.LoadFromFile( FrmPreview.ArqPreview );
        if FotoPaisagengem='PAISAGEM' then
          FrmPreview.Button5.Click
        else begin
          // if DADOSFRENTEf.CONF_PADRAO.FieldByName('TIPODEMPRESSAO').AsString='RB' then
          if GeradordeImpressao='RB' then
            FrmPreview.Button6.Click
          else
            if ImprimePaisagem='S' then
              FrmPreview.Button5.Click
            else
              FrmPreview.Button4.Click;
        end;
      end;
      FrMPreview.Show;
      try
        DeleteFile( FrmPreview.ArqPreview );
      except end;
    finally
      FreeAndNil( FrMPreview );
    end;
  end;
  MENSPROCF.Close;
  ImprimePaisagem:='';
end;

procedure Imp_Linha(SaltaLin, EspacoCol: Integer; Texto: AnsiString; TamTotal: Integer; Alinha: Char);
var
  i: integer;
  Espaco: string;
begin
  { adiciona as linhas }
  for i:=1 to SaltaLin do
    WritePrinter(hPrinter, PAnsiChar(#13#10), Length(#13#10), BytesWritten);

  { Calcula o espaço q determinado o tamanho total do campo }
  Espaco := StringOfChar(' ', TamTotal-Length(Texto));
  if Alinha = 'E' then
    Texto := Texto+Espaco
  else if Alinha = 'D' then
    Texto := Espaco+Texto;
  { adiciona espaço entre as colunas }
  Texto := StringOfChar(' ', EspacoCol)+Texto;
  { Imprime o texto }

  // if (TelaImpressora='I') and (BobinaFormulario<>'B') then
  // if TelaImpressora='I' then
  //   Texto := AcertaAcentos(Texto)
  // else if (TelaImpressora='I') and (BobinaFormulario<>'B') then
    // Texto := TrocaAcentos(Texto);

  if (TelaImpressora='I') and (BobinaFormulario<>'B') then
    Texto := AcertaAcentos(Texto)
  else if (TelaImpressora='I') and (BobinaFormulario='B') then
    Texto := RemoveAcentos(Texto);

  WritePrinter(hPrinter, PAnsiChar(Texto), Length(Texto), BytesWritten);
end;

procedure Imp_Linha2(SaltaLin, EspacoCol: Integer; Texto: String; TamTotal: Integer; Alinha: Char);
var
  i: integer;
  Espaco: string;
begin
  { adiciona as linhas }
  if EspacoCol=0 then
    EspacoCol:=2;
  for i:=1 to SaltaLin do
    WritePrinter(hPrinter, PChar(#13+#10), Length(#13+#10), BytesWritten);
  { Calcula o espaço q determinado o tamanho total do campo }
  Espaco := StringOfChar(' ', TamTotal-Length(Texto));
  if Alinha = 'E' then
    Texto := Texto+Espaco
  else if Alinha = 'D' then
    Texto := Espaco+Texto;
  { adiciona espaço entre as colunas }
  Texto := StringOfChar(' ', EspacoCol)+Texto;
  // if LivroPdv='PDV' then begin
    {
    if CONFIGF.DBCheckBox1.Checked=False then begin
      if DataModule1.PADEMPRE.FieldByName('EM_ImAcSe').AsString<>'N' then
        Texto := AcertaAcentos(Texto)
      else if DataModule1.PADEMPRE.FieldByName('EM_ImAcSe').AsString='N' then
        Texto := RemoveAcentos(Texto);
    end;
    }
  // end;
  { Imprime o texto }
  WritePrinter(hPrinter, PChar(Texto), Length(Texto), BytesWritten);
end;

procedure Imp_Ejeta;
var ch: Char;
begin
  ch:= #12;
  WritePrinter( hPrinter, @ch, 1, BytesWritten );
  EndPagePrinter(hPrinter);
end;

procedure DefineVarPubl();
var
  TipImpr : ShortString;
begin
  // if FrmPreview.Impressora.Checked=true then begin
  if TelaImpressora='I' then begin
    AExpandido:=#14;
    DExpandido:=#20;
    ACondensa2:=#27'M';  // 12 cpi
    DCondensa2:=#27'P';  // 10 cpi
    // ACondensa3:=#15; // 17 cpi
    // DCondensa3:=#18; // cancela 17
    ACondensa3:=#27'P'#15;  // 10 cpi condensado
    DCondensa3:=#27'P'#18;; // 10 cpi descondensado
    ACondensa4:=#15; // 17 cpi
    DCondensa4:=#18; // descondensado
    ACondensa5:=#27'M'#15; // 12 cpi condensado
    DCondensa5:=#27'P'#18; // 10 cpi descondensado
    ACondensa6:=#27'M'#27#15; // 12 cpi super condensado
    DCondensa6:=#27'P'#18; // 10 cpi descondensado
    ACondensa7:=#27'P'#27#15; // 10 cpi super condensado
    DCondensa7:=#27'P'#18; // 10 cpi descondensado
    ASaltLinha:=#27'C';
    // ASaltLinha:=#27'C'#33;
    ASaltPoleg:=#27#67#0;

    // ASaltPoleg:=#27'C'#33;

    ///
    // ASaltPoleg12:=#27'C'#0'12';
    ///
    AReduEntr1:=#27'0';
    DReduEntr1:=#27'2';
    AReduEntr2:=#27'1';
    DReduEntr2:=#27'2';
    ASublinhad:=#27'-'#1;
    DSublinhad:=#27'-'#0;
    ASupScript:=#27#83'0';
    ASubScript:=#27#83'1';
    DSupScript:=#27#84;
    AEnfatizad:=#27'E';
    DEnfatizad:=#27'F';
    DTudo:=#27'@';
  end
  else begin
    AExpandido:='';
    DExpandido:='';
    ACondensa2:='';
    DCondensa2:='';
    ACondensa3:='';
    DCondensa3:='';
    ACondensa4:='';
    DCondensa4:='';
    ACondensa5:='';
    DCondensa5:='';
    ASaltLinha:='';
    ASaltPoleg:='';
    AReduEntr1:='';
    DReduEntr1:='';
    AReduEntr2:='';
    DReduEntr2:='';
    ASublinhad:='';
    DSublinhad:='';
    ASupScript:='';
    ASubScript:='';
    DSupScript:='';
    AEnfatizad:='';
    DEnfatizad:='';
    DTudo:='';
  end;
end;

procedure TFrmPreview.Button1Click(Sender: TObject);
begin
  RelSimples('clientes','001', '5555', 'ejoc principal',' ','123456');
end;

procedure TFrmPreview.Button2Click(Sender: TObject);
begin
  // FrmPreview.TextListBox1.Items.LoadFromFile('C:\impressao\x\CLU27.tmp');
  // FrmPreview.TextListBox1.Items.LoadFromFile(Edit1.Text);
  ImpriOS();
  TextListBox1.SetFocus;
end;

procedure TFrmPreview.Button3Click(Sender: TObject);
begin
  {
  cxRichEdit1.Lines.LoadFromFile( FrmPreview.ArqPreview );
  cxRichEdit1.Lines.Clear;
  cxRichEdit1.Lines.LoadFromFile( FrmPreview.ArqPreview );
  }
end;

procedure TFrmPreview.Button4Click(Sender: TObject);
begin
  if tamanhofonte<>0 then
    cxRichEdit1.Style.Font.Size:=tamanhofonte;

  cxRichEdit1.Lines.Text:=TextListBox1.Items.Text;
  dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link1;
  dxComponentPrinter1.Preview();
  tamanhofonte:=0;
end;

procedure TFrmPreview.Button5Click(Sender: TObject);
begin
  if tamanhofonte<>0 then
    cxRichEdit1.Style.Font.Size:=tamanhofonte;

  cxRichEdit1.Lines.Text:=TextListBox1.Items.Text;
  dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link2;
  dxComponentPrinter1.Preview();
  tamanhofonte:=0;
end;

procedure TFrmPreview.Button6Click(Sender: TObject);
begin
  ppDBRichText2.Font.Name:='LettrGoth12 BT';
  ppDBRichText2.Font:=TextListBox1.Font;
  ppDBRichText2.Font.Color:=clWindowText;
  ppDBRichText2.Font.Size:=8;
  if tamanhofonte<>0 then
    ppDBRichText2.Font.Size:=tamanhofonte;
  DADOSFRENTEf.OBSERVACAO.Open;
  DADOSFRENTEf.OBSERVACAO.Append;
  DADOSFRENTEf.OBSERVACAO.FieldByName('OBS').Value:=TextListBox1.Items.Text;
  DADOSFRENTEf.OBSERVACAO.Post;
  Curriculum.Print;
end;

procedure TFrmPreview.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_escape then
    close;
end;

procedure TFrmPreview.FormShow(Sender: TObject);
begin
  FrmPreview.WindowState:=wsMaximized;
  Panel4.Align:=alclient;
  cxRichEdit1.Align:=alclient;
  FrmPreview.TextListBox1.Align:=alclient;
  Edit1.Text:=LerImpressora;
  TextListBox1.SetFocus;
end;

// procedure RelSimples(Tabela:ttable;Cod, Desc, Tit,ESPACO,indice: String);
procedure RelSimples(tabela,Cod, Desc, Tit,ESPACO,indice: String);
  var Pag ,nLin, sai: Integer;
    Tipo: String;
  procedure Cabecalho;
  begin
    Imp_InicializaPagina;
    Imp_Linha(01, 00, 'Ejoc Principal'+' - '+'Verdadeiro', 80, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 16, 'E');
    Imp_Linha(00, 01, TimetoStr(Time), 16, 'E');
    Imp_Linha(00, 16, ESPACO+'Folha', 6+length(ESPACO), 'E');
    // Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
    Imp_Linha(01, 00, 'RELATORIO DE '+ Tit, 80, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 44+length(ESPACO)), 80, 'E');
    Imp_Linha(01, 00, 'Cod.'+ESPACO+'*-------------DESCRICAO---------------*', 80, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 44+length(ESPACO)), 80, 'E');
    nLin:=nLin + 7;
  end;
begin
  {
  with TtelaImprF.Create(nil) do
    ShowModal;
  Tabela.Open;
  Tabela.IndexFieldNames:=indice;
  Tabela.First;

  if CONFIGF.DBRadioGroup2.ItemIndex=0 then
    Tipo:='RAW'   // Dica: Imprime com matricial Epson mais rápido
  else
    Tipo:='TEXT'; // Dica: Funciona para impressora USB
    }

  // FrmPreview.cxRichEdit1.Lines.Clear;

  Tipo:='RAW';  // Dica: Imprime com matricial Epson mais rápido
  // if Imp_Inicio( 'ELGIN i7(USB)', 'Impressão de dados Employee - THE CLUB', Tipo, false) then begin
  // if Imp_Inicio( 'ELGIN i7(USB)', 'Impressão de dados Employee - THE CLUB', Tipo, false) then begin
  if Imp_Inicio( FrmPreview.Edit1.Text, 'Impressão de dados Employee - THE CLUB', Tipo, false) then begin
  // if Imp_Inicio( FrmPreview.Edit1.Text, 'Impressão de dados Employee - THE CLUB', Tipo, TRUE) then begin
    nLin:=0;
    Pag :=1;
    // while not Tabela.Eof do begin
    while true=true do begin
      if nLin=0 then begin
        Cabecalho;
      end;
      sai:=sai+1;
      Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO', 80, 'E');
      Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO xxxxxxxxxxxxxxxxxxx8888888', 100, 'E');

      Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO', 80, 'E');
      Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO yyyyyyyyyyyyyyyyyyy', 80, 'E');

      Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO', 80, 'E');
      Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO xxxxxxxxxxxxxxxxxxx', 80, 'E');

      Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO', 80, 'E');
      Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO yyyyyyyyyyyyyyyyyyy', 80, 'E');

      Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO', 50, 'E');
      Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO xxxxxxxxxxxxxxxxxxx', 80, 'D');

      Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO', 80, 'E');
      Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO yyyyyyyyyyyyyyyyyyy', 50, 'D');

      Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO', 80, 'E');
      Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO xxxxxxxxxxxxxxxxxxx', 80, 'E');

      Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO', 80, 'E');
      Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO yyyyyyyyyyyyyyyyyyy', 80, 'E');

      Inc( nLin );
      if nLin >= 60 then begin
        // if not CONFIGF.DBCheckBox1.Checked then
        //   Imp_Linha(02, 00, ACondensa5+ASubScript+RODAPEV+DSupScript , 6, 'E');
        // Imp_Ejeta;
        nLin:=0;
        Pag :=Pag+1;
      end;
      if sai>61 then
        break;
      // Tabela.Next;
    end;
    // if not CONFIGF.DBCheckBox1.Checked then
    Imp_Ejeta;
    Imp_Fim
  end;
  // MENSPROCF.Close;
end;

function AcertaAcentos(Str:String): String;
{Acerta caracteres acentuados de uma string}
{Const ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
      ComAcentx = '…ƒˆ“–Æä ‚¡¢£‡·¶ÒâêÇåµÖàé€š';  // FUDIDO}
Const ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
      ComAcentx = '…ƒˆ“–Æä ‚¡¢£‡·¶ÒâêÇåµÖàé€š';  // FUDIDO

      // ║  º
    // if SemAcento[Pos(Str[x],ComAcento)='║' then
    //   Str[x] := SemAcento['º'];

var
x : Integer;
begin
  For x := 1 to Length(Str) do begin
    if Pos(Str[x],ComAcento)<>0 then begin
      Str[x] := ComAcentx[Pos(Str[x],ComAcento)];
    end;
    // if Str[x]='x' then
    // if (Str[x]=#167) or (Str[x]=#248) then
    {if Str[x]=#186 then
      Str[x] := ComAcentx[Pos(Str[x],'§')];}
  end;
  Result := Str;
end;

function RemoveAcentos(Str:String): String;
{Remove caracteres acentuados de uma string}
Const ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
      SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
x : Integer;
begin
  For x := 1 to Length(Str) do begin
    if Pos(Str[x],ComAcento)<>0 then begin
      Str[x] := SemAcento[Pos(Str[x],ComAcento)];
    end;
  end;
  Result := Str;
end;


end.
