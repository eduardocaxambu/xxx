unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, DADOS_CRIA,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DADump,
  UniDump, Data.DB, MemDS, DBAccess, Uni, Vcl.Imaging.jpeg;

type
  TPrincipal_FRM = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    UniQuery1: TUniQuery;
    Testa: TUniQuery;
    UniDump1: TUniDump;
    UniDump2: TUniDump;
    Image1: TImage;
    Panel28: TPanel;
    Panel32: TPanel;
    Panel30: TPanel;
    Panel2: TPanel;
    Button5: TButton;
    Panel3: TPanel;
    Button7: TButton;
    Button4: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button5Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    procedure Finalizacao;
    procedure Limpa;
    { Private declarations }
  public
    { Public declarations }
  end;
  function LogNoSistema:string;

var
  Principal_FRM: TPrincipal_FRM;

    FiltraSemBarra,
    NovoEditaX, NovoEdita, Operador, MesAnoRelatorio, DescricaoEstaticaX,
    CodigoDoCliente, CodigoGrade, CampoJaExiste, TipoConsulta,
    escricaoConsulta, Modalidade, senha2, senha3, senha4, senha5, senha6,
    OpSangSupr, NumeroCaixa, ClienteFornecedor,
    CodigoEntrada, FechamentoCaixa, ConsultaStatica,
    Estatica, FiltroInicio,
    ClienteComprax, ProdServi,
    CupomVeiculo,
    FormaAvistaPrazo, ConfirmaItemVenda,
    FotoPaisagengem, VamosVerLucro: string;

  DataVeiculo: TDateTime;

  CodigoClienteCaderneta, TamanhodoFone, CodigoClientePedidoOS: integer;

  {
  EntradasCaixa, SaidasCAixa, PrazoCaixa, TotaldasParecelas, QuantidadePassada,
    PrecoPassado: double;
  }

  // TamanhoFonte: integer;

  Queere2: TUniQuery;

implementation

{$R *.dfm}

uses Cadastros, Movimentacoes, DADOS_CADASTROS, FUNCOES, DADOSFRENTE,
  FrentredeCaixa, VISUALIZACAO, EXTENSO, CAD_MANUTENCAO, GERALDADOS,
  GERALFRENTE, mapas;

procedure TPrincipal_FRM.Button1Click(Sender: TObject);
begin
  Limpa;
  with TCadastros_FRM.Create(nil) do
  begin
    Show;
    // AnimateWindow(Cadastros_FRM.Handle,2000,AW_HOR_POSITIVE);
  end;
end;

procedure TPrincipal_FRM.Button2Click(Sender: TObject);
begin
  Limpa;
  with TMovimentacoes_FRM.Create(nil) do
    Show;
end;

procedure TPrincipal_FRM.Button3Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja Finalizar o Sistema ?', 'Confirmação',
    MB_YESNO + MB_ICONQUESTION) = ID_YES then
  begin
    Limpa;
    DADOS_CADASTROSf.UniConnection1.Connected := false;
    Application.Terminate;
  end;
end;

procedure TPrincipal_FRM.Limpa;
var
  I: integer;
begin
  with Principal_FRM do
    for I := MDIChildCount - 1 downto 0 do
      MDIChildren[I].Close;
end;

procedure TPrincipal_FRM.Button4Click(Sender: TObject);
var I:integer;
begin
  Limpa;
  // with TFrentredeCaixaF.Create(nil) do begin
  with TFrentredeCaixaF.Create(self) do begin
    SoFrente:='Frente';
    DADOSFRENTEf.EMITENTE.Open;
      Panel34.Caption:='Módulo Frente de Caixa - Licenciado para: '+
      DADOSFRENTEf.EMITENTE.FieldByName('NOME').AsString;
    ShowModal;
  end;
  Limpa;
  // FreeAndNil(Principal_FRM);
  Application.Terminate;
  // close;
end;

procedure TPrincipal_FRM.Button5Click(Sender: TObject);
begin
  Limpa;
  Application.Terminate;
end;

procedure TPrincipal_FRM.Button7Click(Sender: TObject);
begin
  Limpa;
  with Tmapas_FRM.Create(nil) do
    Show;
end;

procedure TPrincipal_FRM.Finalizacao;
begin
  close;
end;

procedure TPrincipal_FRM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Limpa;
  Application.Terminate;

  // FreeAndNil(Principal_FRM);
  // Limpa;
end;

procedure TPrincipal_FRM.FormShow(Sender: TObject);
var FileName : PChar;
    BancodeDados:string;
begin
  Image1.Align := alclient;
  if not fileexists('\DADOSFDB\X\DADOS.FDB') then
  begin
    // with TCRIABANCOSF.Create(Self) do
    // Button1.Click;
  end;
  // Caption := 'Modulo Administrativo !!!';
  DADOS_CADASTROSf.UniConnection1.Connected := false;
  DADOS_CADASTROSf.UniConnection1.Database := '\DADOSFDB\X\DADOS.FDB';

  if fileexists('BASE.INI') then
    DADOS_CADASTROSf.UniConnection1.Database :=
      percorreArquivoTextoValidaBancodeDados('BASE.INI');
      DADOS_CADASTROSf.UniConnection1.Connected := true;

  BancodeDados:='\DADOSFDB\X\DADOS2.FDB';

  if fileexists('BASE.INI') then
    // BancodeDados := percorreArquivoTextoValidaBancodeDados('BASE.INI');
    DataModule2.UniConnection1.Database :=
        percorreArquivoTextoValidaBancodeDados('BASE.INI');
        DADOS_CADASTROSf.UniConnection1.Connected := true;

  {
  with DataModule2.UniScript1, SQL do
  begin
  Clear;
    Add('CREATE DATABASE "'+BancodeDados+'"');
    Add('USER "SYSDBA" PASSWORD "masterkey"');
    Add('PAGE_SIZE 4096');
    // Add('USER "sysdba" PASSWORD "masterkey"');


    Execute;
  end;
  }


  DADOSFRENTEf.EMITENTE.Open;
  // Caption := 'Módulo Frente de Caixa - Licenciado para: ' +
  //   DADOSFRENTEf.EMITENTE.FieldByName('NOME').AsString;
  Caption:='Modulo Administrativo PDV - Licenciado para: '+
            DADOSFRENTEf.EMITENTE.FieldByName('NOME').AsString;
  // if (ParamStr(1)='Caixa') then begin
  if (ParamStr(1) = 'Caixa') or (ParamStr(1) = 'Caixa01') or
    (ParamStr(1) = 'Caixa02') or (ParamStr(1) = 'Caixa03') or
    (ParamStr(1) = 'Caixa04') or (ParamStr(1) = 'Caixa05') or
    (ParamStr(1) = 'Caixa06') or (ParamStr(1) = 'Caixa07') or
    (ParamStr(1) = 'Caixa08') or (ParamStr(1) = 'Caixa09') or
    (ParamStr(1) = 'Caixa10') or (ParamStr(1) = 'Caixa11') or
    (ParamStr(1) = 'Caixa10') or (ParamStr(1) = 'Caixa11') or
    (ParamStr(1) = 'Caixa12') or (ParamStr(1) = 'Caixa13') or
    (ParamStr(1) = 'Caixa14') or (ParamStr(1) = 'Caixa15') or
    (ParamStr(1) = 'Caixa16') or (ParamStr(1) = 'Caixa17') or
    (ParamStr(1) = 'Caixa18') or (ParamStr(1) = 'Caixa19') or
    (ParamStr(1) = 'Caixa20') or (ParamStr(1) = 'Caixa21') or
    (ParamStr(1) = 'Caixa22') or (ParamStr(1) = 'Caixa23') or
    (ParamStr(1) = 'Caixa24') then
  begin
    {
    FrenteRetaguarda := 'Frente';
    HprevHist := FindWindow(Nil, PChar('Frente de Caixa Livre' + ParamStr(1)));
    if HprevHist = 0 then
    begin
      Application.Title := 'Frente de Caixa Livre' + ParamStr(1);
    end
    else
    begin
      MessageDlg('Você não pode executar outra cópia do aplicativo !!!',
        mtInformation, [mbOK], 0);
      Halt;
    end;
    }
    FrenteRetaguarda := 'Frente';
    Application.Exename;
    FileName := PChar( 'Frente de Caixa Livre' + ParamStr(1));
    HMutex := createMutex(nil, True, FileName);
    if ( HMutex = 0 ) or ( GetLastError = ERROR_ALREADY_EXISTS ) then begin
      ShowMessage('O programa já está em execução.');
      Halt;
    end;

    Button4.Click;
  end
  else if (ParamStr(1) = 'Pedido') OR (ParamStr(1) = 'Pedido2') then
  begin
    {
    FrenteRetaguarda := 'Pedido2';
    if (ParamStr(1) = 'Pedido') then
      HprevHist := FindWindow(Nil, PChar('Pedido Livre'));
    if (ParamStr(1) = 'Pedido2') then
      HprevHist := FindWindow(Nil, PChar('Pedido Livre2'));
    if HprevHist = 0 then
    begin
      if (ParamStr(1) = 'Pedido') then
        Application.Title := 'Pedido Livre';
      if (ParamStr(1) = 'Pedido2') then
        Application.Title := 'Pedido Livre2';
    end
    else
    begin
      MessageDlg('Você não pode executar outra cópia do aplicativo !!!',
        mtInformation, [mbOK], 0);
      Halt;
    end;
    }
    // cxButton1.Visible:=false;

    FrenteRetaguarda := 'Pedido2';


    Application.Exename;

    if (ParamStr(1) = 'Pedido') then
      // HprevHist := FindWindow(Nil, PChar('Pedido Livre'));
      FileName := PChar( 'Pedido Livre');
    if (ParamStr(1) = 'Pedido2') then
      // HprevHist := FindWindow(Nil, PChar('Pedido Livre2'));
      FileName := PChar( 'Pedido Livre2');
    // FileName := PChar( 'Frente de Caixa Livre' + ParamStr(1));
    HMutex := createMutex(nil, True, FileName);
    if ( HMutex = 0 ) or ( GetLastError = ERROR_ALREADY_EXISTS ) then begin
      ShowMessage('O programa já está em execução.');
      Halt;
    end;


  end
  else if (ParamStr(1) = 'Consulta') then
  begin
    {
    FrenteRetaguarda := 'Consulta';
    HprevHist := FindWindow(Nil, PChar('Frente de Caixa Livre Consulta'));
    if HprevHist = 0 then
    begin
      Application.Title := 'Frente de Caixa Livre Consulta';
    end
    else
    begin
      MessageDlg('Você não pode executar outra cópia do aplicativo !!!',
        mtInformation, [mbOK], 0);
      Halt;
    end;
    }
    FrenteRetaguarda := 'Consulta';
    Application.Exename;
    FileName := PChar( 'Frente de Caixa Livre Consulta' );
    HMutex := createMutex(nil, True, FileName);
    if ( HMutex = 0 ) or ( GetLastError = ERROR_ALREADY_EXISTS ) then begin
      ShowMessage('O programa já está em execução.');
      Halt;
    end;


    with TGERALFRENTEF.Create(Self) do begin
      Width:=Panel63.Width;
      Height:=Panel63.Height;
      NxNotebook61.ActivePageIndex:=4;
      ShowModal;
    end;
  end
  else
  begin
    FrenteRetaguarda := 'Administrativo';
    Application.Exename;
    FileName := PChar( 'Administrador de PDV' );
    HMutex := createMutex(nil, True, FileName);
    if ( HMutex = 0 ) or ( GetLastError = ERROR_ALREADY_EXISTS ) then begin
      ShowMessage('O programa já está em execução.');
      Halt;
    end;
  end;
  Panel3.BevelOuter:=bvNone;
  if LogNoSistema='SIM' then
    TelaSenha;
end;

function LogNoSistema:string;
begin
  result:='NÃO'
  // result:='SIM'
end;

procedure TPrincipal_FRM.Panel1Click(Sender: TObject);
begin
  // Form1.ShowModal;
end;

procedure TPrincipal_FRM.Panel3Click(Sender: TObject);
begin
  TelaSenha;
  if senha='MASTER' then begin
    Limpa;
    with TGERALDADOS_FRM.Create(nil) do
    begin
      ShowModal;
    end;
  end;
end;

end.

// .\$(Platform)\$(Config)

// .\$(Platform)\$(Config)
