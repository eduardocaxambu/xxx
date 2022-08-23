unit GERAL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Mestre, NxNotebook6, NxControls6,
  NxCollection6, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGridDBChartView, cxGridDBCardView, cxGridDBBandedTableView, cxGridChartView,
  cxGridCustomLayoutView, cxGridCardView, cxGridBandedTableView, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Buttons, MemDS, DBAccess, Uni, MaskUtils, Vcl.DBCtrls,
  RxToolEdit;

type
  TGERALF = class(TMestre_FRM)
    NxNotebook61: TNxNotebook6;
    NxNotebookSheet61: TNxNotebookSheet6;
    NxNotebookSheet63: TNxNotebookSheet6;
    NxNotebookSheet64: TNxNotebookSheet6;
    NxNotebookSheet65: TNxNotebookSheet6;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    NxNotebookSheet66: TNxNotebookSheet6;
    NxNotebookSheet67: TNxNotebookSheet6;
    NxNotebookSheet68: TNxNotebookSheet6;
    UniQuery1: TUniQuery;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    MaskEdit7: TMaskEdit;
    MaskEdit8: TMaskEdit;
    BitBtn25: TBitBtn;
    BitBtn1: TBitBtn;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBTableView9BARRAS: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel6: TPanel;
    Panel18: TPanel;
    Panel20: TPanel;
    Panel2: TPanel;
    cxGrid9: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBTableView9CUPOM: TcxGridDBColumn;
    cxGridDBTableView9DATA: TcxGridDBColumn;
    cxGridDBTableView9HORA: TcxGridDBColumn;
    cxGridDBTableView9CLIENTE: TcxGridDBColumn;
    cxGridDBTableView9Column2: TcxGridDBColumn;
    cxGridDBTableView9TOT_VENDA: TcxGridDBColumn;
    cxGridDBTableView9FRETE: TcxGridDBColumn;
    cxGridDBTableView9TAXAENTREGA: TcxGridDBColumn;
    cxGridDBTableView9ACRESCIMO: TcxGridDBColumn;
    cxGridDBTableView9DESCONTO: TcxGridDBColumn;
    cxGridDBTableView9TOT_TOTALPAGO: TcxGridDBColumn;
    cxGridDBTableView9TOT_TROCO: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    Panel31: TPanel;
    Panel36: TPanel;
    Panel40: TPanel;
    Panel32: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel16: TPanel;
    Label1: TLabel;
    Button3: TButton;
    Button4: TButton;
    DBMemo1: TDBMemo;
    Panel4: TPanel;
    cxGrid10: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridDBTableView10FORMADEPAGAMENTO: TcxGridDBColumn;
    cxGridDBTableView10TOTALPAGO: TcxGridDBColumn;
    cxGridDBTableView10VALOR: TcxGridDBColumn;
    cxGridDBTableView10TROCO: TcxGridDBColumn;
    cxGridDBTableView10Column1: TcxGridDBColumn;
    cxGridDBTableView10AVISTAPRAZO: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    Panel15: TPanel;
    Panel19: TPanel;
    Label20: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CheckBox9: TCheckBox;
    MaskEdit1: TMaskEdit;
    Button65: TButton;
    Button1: TButton;
    Button2: TButton;
    Button5: TButton;
    DateEdit3: TDateEdit;
    ComboEdit1: TComboEdit;
    Panel21: TPanel;
    Panel14: TPanel;
    Panel3: TPanel;
    Panel12: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBTableView7NUMERO: TcxGridDBColumn;
    cxGridDBTableView7ORDEM: TcxGridDBColumn;
    cxGridDBTableView7EMISSAO: TcxGridDBColumn;
    cxGridDBTableView7VENCIMENTO: TcxGridDBColumn;
    cxGridDBTableView7Column1: TcxGridDBColumn;
    cxGridDBTableView7RECEBIMENTO: TcxGridDBColumn;
    cxGridDBTableView7VALOR: TcxGridDBColumn;
    cxGridDBTableView7Column2: TcxGridDBColumn;
    cxGridDBTableView7Column4: TcxGridDBColumn;
    cxGridDBTableView7VALOR_RECEBIDO: TcxGridDBColumn;
    cxGridDBTableView7Column3: TcxGridDBColumn;
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
    Panel1: TPanel;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBTableView9DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView9ITEM: TcxGridDBColumn;
    cxGridDBTableView9Column1: TcxGridDBColumn;
    cxGridDBTableView9QTD: TcxGridDBColumn;
    cxGridDBTableView9PRECO: TcxGridDBColumn;
    cxGridDBTableView9TOTAL: TcxGridDBColumn;
    cxGridDBTableView5Column7: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxGridDBTableView9KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView9MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button65Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DateEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure ComboEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure VendaCancelada;
    procedure ImpPromis(Grafico: string; Tabela: TUniQuery);
    procedure ImpPromisVisualiza(Grafico: string; Tabela: TUniQuery);
    procedure FiltroPelosCliente;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GERALF: TGERALF;
  ConsultaCaixa: string;
  // TotalGeralConta, TotalGeralContaBaixar, SomaGeral :double;
  NRegistro:integer;

implementation

uses FUNCOES, VISUALIZACAO, DADOSFRENTE, EXTENSO, DADOSMOVIMENTO, PRINCIPAL,
     CONSULTAS, DADOS_CRIA, CONTASRECPAG, DADOSVEICULOS,
     FrentredeCaixa, FUNCOESGERAIS, MENSPROC, GERAL2, FUNCOESUNIDAC,
     CadastroMovimentos, DADOS_CADASTROS, Relatorios,
     FUNCAORELATORIOS, dadosFinaceiro, GERAL3, CAD_MANUTENCAO, PREVIEW;

{$R *.dfm}

procedure TGERALF.ImpPromisVisualiza(Grafico:string;Tabela:TUniQuery);
var    Tipo, Datemi,DatVenExt, Documento: String;
       a,b,fim,parcelas,n:integer;
       Data : TDaTeTime;
begin
  DADOSFRENTEf.EMITENTE.Open;
  DADOSFRENTEf.CONF_PADRAO.Open;
  fim:=1;
  n := 0;
  b:=strtoint('10');
  Datemi:=DataMesExtensoDE(DADOSFRENTEf.CONF_PADRAO.FieldByName(
    'DATA').AsDateTime);

  // with TVISUALIZACAOF.Create(Self) do begin
  with TVISUALIZACAOF.Create(nil) do begin
    Tabela.First;
    while not Tabela.Eof do begin
      parcelas:=parcelas+1;
      TextListBox1.Items.Add(ACondensa3+StringOfChar('_', 103));
      TextListBox1.Items.Add('');
      DatVenExt:=DataExtenso(Tabela.FieldByName(
        'VENCIMENTO').AsDateTime);

      TextListBox1.Items.Add('                                                  ' +
        '                Vencimento: '
      + Tabela.FieldByName('VENCIMENTO').AsString);

      TextListBox1.Items.Add('          Nr. '+StrZero(parcelas,2,0)+'/'+StrZero(
        StrToInt(
        QuantidadeParcelas ),2,0)+'                                           '+
        '                R$ ('+FormatFloat('###,##0.00',
        Tabela.FieldByName('VALOR').AsFloat)+')');

      TextListBox1.Items.Add('No dia '+'('+DatVenExt+')'+' pagarei por esta ' +
        'unica via de NOTA PROMISSORIA ');

      TextListBox1.Items.Add('a '+DADOSFRENTEf.EMITENTE.FieldByName(
        'NOME').AsString+'CPF/CNPJ: ' +FormatMaskText('##.###.###.####/##;0; ',
        DADOSFRENTEf.EMITENTE.FieldByName('CNPJ').AsString));


      with TExtensof.Create(nil) do begin
        Edit1.Text:=Tabela.FieldByName('VALOR').AsString;
        Button1.Click;
        if Edit3.Text='************************************************************' then begin
          TextListBox1.Items.Add('OU A SUA ORDEM A QUANTIA DE ('+Edit2.Text+
            ')'+StringOfChar('*', 70)+')'+'EM MOEDA CORRENTE DESTE PAIS');
        end
        else begin
          TextListBox1.Items.Add('OU A SUA ORDEM A QUANTIA DE ('+Edit2.Text+
            Edit3.Text+')EM MOEDA CORRENTE DESTE PAIS');
        end;
        Free;
      end;
      TextListBox1.Items.Add('Local de Pagamento: '+ DADOSFRENTEf.EMITENTE.FieldByName(
        'CIDADE').AsString+'                                    ' +
        'Data da Emissao: '+Datemi);

      TextListBox1.Items.Add('Nome do Emitente: '+
        DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('NOME').AsString);

      if DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CPF').AsString<>'' then
        Documento:='CPF: ' + FormatMaskText('###.###.###-##;0; ',
          DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CPF').AsString);
      if DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CNPJ').AsString<>'' then
         Documento:='CNPJ: ' + FormatMaskText('##.###.###.####/##;0; ',
          DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CNPJ').AsString);

      TextListBox1.Items.Add(Documento+'       Endereco: '+
        DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName(
        'ENDERECO').AsString+DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName(
        'BAIRRO').AsString);

      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('                     ' +
        '____________________________________________________________');
      TextListBox1.Items.Add('                                        ' +
        'Assinatura do Emitente');

      TextListBox1.Items.Add('');

      TextListBox1.Items.Add('Avalista(s)');
      TextListBox1.Items.Add('Nome: '+ Edit7.Text);
      if MaskEdit3.Text<>'' then
        TextListBox1.Items.Add('CPF/CNPJ: ' + FormatMaskText('###.###.###-##;0; ',
          MaskEdit3.Text));
      if MaskEdit4.Text<>'' then
        TextListBox1.Items.Add('CPF/CNPJ: ' + FormatMaskText('##.###.###.####/##;0; ',
          MaskEdit4.Text));
      TextListBox1.Items.Add('Fone: '+  FormatMaskText('##-####-####;0; ',
        MaskEdit5.Text));
      TextListBox1.Items.Add('Nome: '+ Edit8.Text);
      if MaskEdit6.Text<>'' then
        TextListBox1.Items.Add('CPF/CNPJ: ' + FormatMaskText('###.###.###-##;0; ',
          MaskEdit6.Text));
      if MaskEdit7.Text<>'' then
        TextListBox1.Items.Add('CPF/CNPJ: ' + FormatMaskText('###.###.###-##;0; ',
          MaskEdit7.Text));
      TextListBox1.Items.Add('Fone: '+  FormatMaskText('##-####-####;0; ',
        MaskEdit8.Text));

      TextListBox1.Items.Add('');

      Data:=Data+30;
      Inc( n );
      Tabela.Next;
    end;
    if Grafico='' then
      ShowModal
    else if Grafico='B' then
       begin
      Show;
      Button9.Click;
      close;
    end
    else begin
      Show;
      Button1.Click;
      close;
    end;
  end;
end;

procedure TGERALF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  TamanhoFonte:=10;
  ImpPromis('S',DataFinanceiro.RECEBER);
  TamanhoFonte:=0;
end;

procedure TGERALF.BitBtn25Click(Sender: TObject);
begin
  inherited;
  TamanhoFonte:=10;
  ImpPromis('S',DADOSFRENTEf.duplicatas);
  TamanhoFonte:=0;
end;

procedure TGERALF.Button1Click(Sender: TObject);
begin
  inherited;
  if DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_VENDA').asfloat=0 then begin
    ShowMessage('Esse Venda ainda está Aberta !!!'+#13+'Tente uma Venda Acima !!!');
    cxGrid9.SetFocus;
  end
  else begin
    ImprOrcamento;
    cxGrid9.SetFocus;
  end;
end;


procedure TGERALF.ImpPromis(Grafico:string;Tabela:TUniQuery);
var    Tipo, Datemi,DatVenExt, Documento: String;
       a,b,fim,parcelas,n:integer;
       Data : TDaTeTime;
begin
  DADOSFRENTEf.EMITENTE.Open;
  DADOSFRENTEf.CONF_PADRAO.Open;
  fim:=1;
  n := 0;
  b:=strtoint('10');
  Datemi:=DataMesExtensoDE(DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime);
  Tipo:='RAW';   // Dica: Imprime com matricial Epson mais rápido
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    Tabela.First;
    while not Tabela.Eof do begin
      parcelas:=parcelas+1;
      Imp_Linha(01, 00, ACondensa3+StringOfChar('_', 103), 103, 'E');
      Imp_Linha(01, 00,'', 1, 'E');
      DatVenExt:=DataExtenso(Tabela.FieldByName('VENCIMENTO').AsDateTime);
      Imp_Linha(01, 66,'Vencimento: '+Tabela.FieldByName('VENCIMENTO').AsString, 22, 'E');
      Imp_Linha(01, 10,'Nr. '+StrZero(parcelas,2,0)+'/'+StrZero(StrToInt(QuantidadeParcelas ),2,0), 8, 'E');
      Imp_Linha(00, 65, 'R$ ('+FormatFloat('###,##0.00',Tabela.FieldByName('VALOR').AsFloat)+')', 14, 'D');
      Imp_Linha(01, 00,'No dia '+'('+DatVenExt+')'+' pagarei por esta unica via de NOTA PROMISSORIA ', 52, 'E');
      Imp_Linha(00, 31,'a '+DADOSFRENTEf.EMITENTE.FieldByName('NOME').AsString, 42, 'E');
      if DADOSFRENTEf.EMITENTE.FieldByName('CPF').AsString<>'' then
        Imp_Linha(00, 31,'CPF/CNPJ: ' +FormatMaskText('###.###.###-##;0; ',DADOSFRENTEf.EMITENTE.FieldByName('CPF').AsString), 29, 'E');
      if DADOSFRENTEf.EMITENTE.FieldByName('CNPJ').AsString<>'' then
        Imp_Linha(00, 31,'CPF/CNPJ: ' +FormatMaskText('##.###.###.####/##;0; ',DADOSFRENTEf.EMITENTE.FieldByName('CNPJ').AsString), 29, 'E');
      with TExtensof.Create(nil) do begin
        Edit1.Text:=Tabela.FieldByName('VALOR').AsString;
        Button1.Click;
        if Edit3.Text='************************************************************' then begin
          Imp_Linha(01, 00,'OU A SUA ORDEM A QUANTIA DE (', 14, 'E');
          Imp_Linha(00, 00, Edit2.Text+')', 40, 'E');
          Imp_Linha(01, 00, StringOfChar('*', 70)+')', 71, 'E');
          Imp_Linha(00, 03,'EM MOEDA CORRENTE DESTE PAIS', 29, 'E');
        end
        else begin
          Imp_Linha(01, 00,'OU A SUA ORDEM A QUANTIA DE (', 14, 'E');
          Imp_Linha(00, 00,Edit2.Text, 40, 'E');
          Imp_Linha(01, 00,Edit3.Text+')', 40, 'E');
          Imp_Linha(00, 03,'EM MOEDA CORRENTE DESTE PAIS', 29, 'E');
        end;
        Free;
      end;
      Imp_Linha(01, 00,'Local de Pagamento: '+ DADOSFRENTEf.EMITENTE.FieldByName('CIDADE').AsString, 44, 'E');
      Imp_Linha(00, 18,'Data da Emissao: '+Datemi, 27, 'E');
      Imp_Linha(01, 00,'Nome do Emitente: '+DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('NOME').AsString, 58, 'E');
      if DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CPF').AsString<>'' then
        Imp_Linha(01, 00,'CPF/CNPJ: ' + FormatMaskText('###.###.###-##;0; ',DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CPF').AsString), 29, 'E');
      if DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CNPJ').AsString<>'' then
        Imp_Linha(01, 00,'CPF/CNPJ: ' + FormatMaskText('##.###.###.####/##;0; ',DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CNPJ').AsString), 29, 'E');
      Imp_Linha(00, 02,'Endereco: '+ DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('ENDERECO').AsString, 0, 'E');
      Imp_Linha(00, 01, DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('BAIRRO').AsString, 20, 'E');

      Imp_Linha(04, 21, StringOfChar('_', 60), 60, 'E');
      Imp_Linha(01, 40,'Assinatura do Emitente', 25, 'E');
      Imp_Linha(01, 00,'Avalista(s)', 11, 'E');
      Imp_Linha(01, 00,'Nome: '+ Edit7.Text, 46, 'E');
      if MaskEdit3.Text<>'' then
        Imp_Linha(00, 05,'CPF/CNPJ: ' + FormatMaskText('###.###.###-##;0; ',
          MaskEdit3.Text), 18, 'E');
      if MaskEdit4.Text<>'' then
        Imp_Linha(00, 05,'CPF/CNPJ: ' + FormatMaskText('##.###.###.####/##;0; ',
          MaskEdit4.Text), 18, 'E');
      Imp_Linha(00, 05,'Fone: '+  FormatMaskText('##-####-####;0; ',
        MaskEdit5.Text), 18, 'E');
      Imp_Linha(01, 00,'Nome: '+ Edit8.Text, 18, 'E');
      if MaskEdit6.Text<>'' then
        Imp_Linha(00, 05,'CPF/CNPJ: ' + FormatMaskText('###.###.###-##;0; ',
          MaskEdit6.Text), 18, 'E');
      if MaskEdit7.Text<>'' then
        Imp_Linha(00, 05,'CPF/CNPJ: ' + FormatMaskText('###.###.###-##;0; ',
          MaskEdit7.Text), 18, 'E');
      Imp_Linha(00, 05,'Fone: '+  FormatMaskText('##-####-####;0; ',MaskEdit8.Text), 18, 'E');
      Imp_Linha(00, 00,'', 18, 'E');
      Data:=Data+30;
      Inc( n );
      if n = 3 then begin
        Imp_Linha(01, 00, StringOfChar('_', 103), 103, 'E');
        Imp_Ejeta;
        n:=0;
      end;
      Inc( fim );
      Tabela.Next;
    end;
    Imp_Fim
    {
    if Grafico='' then
      ShowModal
    else if Grafico='B' then
       begin
      Show;
      Button9.Click;
      close;
    end
    else begin
      Show;
      Button1.Click;
      close;
    end;
    }
  end;
end;


procedure TGERALF.Button2Click(Sender: TObject);
begin
  inherited;
  if DataFinanceiro.RECEBER.IsEmpty then
    ShowMessage('Cliente sem Contas a Receber !!!')
  else begin
    DataFinanceiro.RECEBER.Last;
    QuantidadeParcelas:=DataFinanceiro.RECEBER.FieldByName('ORDEM').AsString;
    DataFinanceiro.RECEBER.First;
    DADOSFRENTEf.CADASTRO_CLIENTES.Open;
    DADOSFRENTEf.CADASTRO_CLIENTES.Locate('CODIGO',DataFinanceiro.RECEBER.FieldByName('CODIGO').AsString,[]);
    with TGERALF.Create(Self) do begin
      Width:=Panel5.Width;
      Height:=Panel5.Height;
      BitBtn1.Visible:=true;
      BitBtn25.Visible:=false;
      NxNotebook61.ActivePageIndex:=1;
      ShowModal;
    end;
  end;
  cxGrid9.SetFocus;
end;

procedure TGERALF.Button3Click(Sender: TObject);
begin
  inherited;
  DBMemo1.Enabled:=true;
  DADOSFRENTEf.VENDAS_ECF2.Edit;
  DBMemo1.SetFocus;
end;

procedure TGERALF.Button4Click(Sender: TObject);
begin
  inherited;
  if  DADOSFRENTEf.VENDAS_ECF2.State in dsEditModes then
    DADOSFRENTEf.VENDAS_ECF2.Post;
  DBMemo1.Enabled:=false;
  cxGrid9.SetFocus;
end;

procedure TGERALF.Button5Click(Sender: TObject);
begin
  inherited;
  ConsultaClientes;
  FiltroPelosCliente;
end;

procedure TGERALF.FiltroPelosCliente;
begin
  if CodigoConsulta<>'' then begin
    DADOSFRENTEf.VENDAS_ECF2.Close;
    DADOSFRENTEf.VENDAS_ECF2.SQL.Clear;
    DADOSFRENTEf.VENDAS_ECF2.SQL.Add('SELECT * FROM VENDAS_ECF2 WHERE CLIENTE='+Quotedstr(CodigoConsulta));
    DADOSFRENTEf.VENDAS_ECF2.Open;
    DADOSFRENTEf.VENDAS_ECF2.Last;
    if DADOSFRENTEf.VENDAS_ECF2.IsEmpty then
      ShowMessage('Cliente sem Compras !!!')
    else begin
      ComboEdit1.Text:=CodigoConsulta;
      cxGrid9.SetFocus;
    end;
  end;
end;

procedure TGERALF.Button65Click(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Deseja fazer a devolução ?','Confirmação',MB_YESNO + MB_ICONQUESTION)= ID_YES then begin
    if DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_VENDA').asfloat=0 then begin
      ShowMessage('Esse Venda ainda está Aberta !!!'+#13+'Tente uma Venda Acima !!!');
      cxGrid9.SetFocus;
    end
    else begin
      FiltroItensCupomFuncao2;

      DADOSFRENTEf.ITEVENDAS_ECF2.First;
      while not DADOSFRENTEf.ITEVENDAS_ECF2.Eof do begin
        if DADOSFRENTEf.CONFIG.FieldByName('CONT_ESTOQUE').AsString='S' then begin
          DADOSMOVIMENTOF.ESTOQUEEntrada.Close;
          DADOSMOVIMENTOF.ESTOQUEEntrada.SQL.Clear;
          DADOSMOVIMENTOF.ESTOQUEEntrada.SQL.Add('Select codigo,QTD from produtos Where codigo='+DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('CODIGO').AsString);
          DADOSMOVIMENTOF.ESTOQUEEntrada.Open;
          DADOSMOVIMENTOF.ESTOQUEEntrada.Edit;
          DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat:=
          DADOSMOVIMENTOF.ESTOQUEEntrada.FieldByName('QTD').AsFloat+
          DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('QTD').AsFloat;
          DADOSMOVIMENTOF.ESTOQUEEntrada.Post;
        end;
        DADOSFRENTEf.ITEVENDAS_ECF2.Delete;
      end;

      DADOSFRENTEf.ITEOLEOS.Close;
      DADOSFRENTEf.ITEOLEOS.SQL.Clear;
      DADOSFRENTEf.ITEOLEOS.SQL.Add('Select * from ITEOLEOS where CUPOM='+QuotedStr(DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString));
      DADOSFRENTEf.ITEOLEOS.Open;
      DADOSFRENTEf.ITEOLEOS.First;

      while not DADOSFRENTEf.ITEOLEOS.Eof do begin
        DADOSFRENTEf.ITEOLEOS.Delete;
      end;

      DADOS_CADASTROSf.Oleo_rel.Close;
      DADOS_CADASTROSf.Oleo_rel.SQL.Clear;
      DADOS_CADASTROSf.Oleo_rel.SQL.Add('Select * from Oleo where CUPOM='+QuotedStr(DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString));
      DADOS_CADASTROSf.Oleo_rel.Open;
      DADOS_CADASTROSf.Oleo_rel.First;

      if CheckBox9.Checked=false then begin
        while not DADOS_CADASTROSf.Oleo_rel.Eof do begin
          DADOS_CADASTROSf.Oleo_rel.Delete;
        end;
      end;

      FiltroDADOCLIE;

      NumedordoLancamento;
      DADOSFRENTEf.DiversasFormas.First;
      while not DADOSFRENTEf.DiversasFormas.Eof do begin
        Vendedorxyz:='1';
          {
          InformacoesCaixa(HISTORICOC,Observacao,Portador,RECEBEMOS,ENDERECOR,
          EMITENTE,DOC_EMITE,ENDERECOE,DC,TIPO,AVIS_PRAZO,ENTREGADOR,
          Parcela:string;CLIENTE,FORNECEDOR,Operador,Vendedor,Historico,
          SubHistorico:integer;DATA,HORA:tdatetime;Valor:double;SP:String);
          }
        // InformacoesCaixaFrenteFormas('D','',
        {
        InformacoesCaixaFrenteFormasDevolucao('D',
        DADOSFRENTEf.DiversasFormas.FieldByName('AVISTAPRAZO').AsString,
        '',' 1',
        DADOSFRENTEf.DiversasFormas.FieldByName('FORMADEPAGAMENTO').AsString,
        DADOSFRENTEf.DiversasFormas.FieldByName('VALOR').AsFloat);
        DADOSFRENTEf.DiversasFormas.Delete;
        }

        // ShowMessage(DADOSFRENTEf.DiversasFormas.FieldByName('FORMADEPAGAMENTO').AsString);

        InformacoesCaixaFrenteFormasDevolucao('D',
        DADOSFRENTEf.DiversasFormas.FieldByName('AVISTAPRAZO').AsString,
        '',' 1',
        COPY(DADOSFRENTEf.DADOCLIE.FieldByName('NOME').AsString,1,25)+
        '-Doc.: '+DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString,
        'Devolução.: '+DADOSFRENTEf.DiversasFormas.FieldByName('FORMADEPAGAMENTO').AsString,
        DADOSFRENTEf.DiversasFormas.FieldByName('VALOR').AsFloat);
        DADOSFRENTEf.DiversasFormas.Delete;


      end;

      DADOSFRENTEf.DiversasFormas.ApplyUpdates;

      DataFinanceiro.RECEBER.First;
      while not DataFinanceiro.RECEBER.Eof do begin
        DataFinanceiro.RECEBER.Delete;
      end;

      if not DADOSFRENTEf.DADOCLIE.IsEmpty then begin
        if CheckBox9.Checked=true then begin
          CodigoClientePedidoOS:=DADOSFRENTEf.DADOCLIE.FieldByName('CODIGO').AsInteger;
          OBSERVACAOClientePedidoOS:=DADOSFRENTEf.DADOCLIE.FieldByName('OBSERVACAO').AsString;
        end;
        DADOSFRENTEf.DADOCLIE.Delete;
      end;

      // DADOSFRENTEf.DADOCLIE.ApplyUpdates();
      DADOSFRENTEf.VENDAS_ECF2.Delete;
      // if CheckBox9.Checked=true then begin
      // end;
      if CheckBox9.Checked=true then begin
        RetornaVendas:='S';
        close;
      end;
    end;
  end;
  cxGrid9.SetFocus;
  VendaCancelada;
end;

procedure TGERALF.ComboEdit1ButtonClick(Sender: TObject);
begin
  inherited;
  Button5.Click;
end;

procedure TGERALF.ComboEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Button5.Click;
  if key=vk_return then begin
    CodigoConsulta:=ComboEdit1.Text;
    FiltroPelosCliente;
  end;
end;

procedure TGERALF.cxGridDBTableView9KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  VendaCancelada;
end;

procedure TGERALF.cxGridDBTableView9MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  VendaCancelada;
end;

procedure TGERALF.DateEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then begin
    DADOSFRENTEf.VENDAS_ECF2.Close;
    DADOSFRENTEf.VENDAS_ECF2.SQL.Clear;
    DADOSFRENTEf.VENDAS_ECF2.SQL.Add('SELECT * FROM VENDAS_ECF2 WHERE DATA=:_dataCOMPRA');
    DADOSFRENTEf.VENDAS_ECF2.ParamByName('_dataCOMPRA').asdatetime := DateEdit3.Date;
    DADOSFRENTEf.VENDAS_ECF2.Open;
    DADOSFRENTEf.VENDAS_ECF2.Last;
    cxGrid9.SetFocus;
    {
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.SQL.Clear;
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.SQL.Add('SELECT * FROM ITEPEDIDOSCLI WHERE NOTA='+
    DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString+
    ' AND EMISSAO= :_dataCOMPRA');
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.ParamByName('_dataCOMPRA').asdatetime := DADOSMOVIMENTOF.PED_CLI.FieldByName('EMISSAO').AsDateTime;
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.Open;
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.First;
    }
  end;
end;

procedure TGERALF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(GERALF);
  Action:=caFree;
end;

procedure TGERALF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f5 then
    MaskEdit1.SetFocus;
  if key=vk_f6 then
    DateEdit3.SetFocus;
  if key=vk_f7 then
    ComboEdit1.SetFocus;
end;

procedure TGERALF.FormShow(Sender: TObject);
begin
  inherited;
  Panel2.BevelOuter:=bvNone;
  Panel3.BevelOuter:=bvNone;
  Panel4.BevelOuter:=bvNone;
  Panel2.BevelOuter:=bvNone;
  Panel21.BevelOuter:=bvNone;
  // Panel19.BevelOuter:=bvNone;

  Panel6.Align:=alclient;
  Panel18.Align:=alclient;
  Panel5.Align:=alclient;
  NxNotebook61.Align:=alclient;
  cxGrid1.Align:=alclient;
  cxGrid6.Align:=alclient;
  // cxGrid8.Align:=alclient;
  cxGrid9.Align:=alclient;
  cxGrid10.Align:=alclient;
  Panel20.Align:=alclient;
  Panel3.Align:=alclient;
  // Panel19.Align:=alclient;

  DateEdit3.Date:=date;
end;

procedure TGERALF.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then begin
    FiltraVendaAnterior(MaskEdit1.Text);
    MaskEdit1.SetFocus;
    cxGrid9.SetFocus;
    VendaCancelada;
    MaskEdit1.SetFocus;
  end;
end;

procedure TGeralf.VendaCancelada;
begin
  FiltroItensCupomFuncao;
  if not DADOSFRENTEf.VENDAS_ECF2.IsEmpty then begin
    FiltroItensFormasPagamento;
    FiltroItensContasReceber;
    {
    if DataFinanceiro.RECEBER.IsEmpty then begin
      Panel3.Visible:=false;
      Panel1.Align:=alclient;
      cxGrid6.Align:=alclient;
    end
    else begin
      Panel3.Visible:=true;
      Panel3.Align:=altop;
      Panel3.Visible:=false;
      Panel1.Height:=209;
      Panel1.Align:=albottom;
      Panel3.Visible:=true;
    end;
    }
  end;
  {
  if DADOSFRENTEf.VENDAS_ECF2.FieldByName('CANCELADO').AsString='1' then
    NxPanel172.Caption:='Venda Cancelada !!!'
  else
    NxPanel172.Caption:=''
    }

end;

end.

