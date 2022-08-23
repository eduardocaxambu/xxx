unit GERALDADOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Mestre, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.StdCtrls, cxButtons, DADump, UniDump, Data.DB,
  MemDS, DBAccess, Uni, Vcl.Buttons;

type
  TGERALDADOS_FRM = class(TMestre_FRM)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxButton2: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton9: TcxButton;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Edit1: TEdit;
    cxButton19: TcxButton;
    Button3: TButton;
    Button4: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Button5: TButton;
    Button6: TButton;
    UniQuery1: TUniQuery;
    Testa: TUniQuery;
    UniDump1: TUniDump;
    UniDump2: TUniDump;
    cxButton1: TcxButton;
    BitBtn1: TBitBtn;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton8: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GERALDADOS_FRM: TGERALDADOS_FRM;

implementation

{$R *.dfm}

uses FUNCOES_DADOS, acessoadados, Importacao, estoque, DADOS_CRIA;

procedure TGERALDADOS_FRM.BitBtn1Click(Sender: TObject);
begin
  inherited;
  RECEBER_tabela('INADIMPLENTES');
end;

procedure TGERALDADOS_FRM.Button1Click(Sender: TObject);
begin
  inherited;
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('CREATE SEQUENCE '+Edit1.Text+';');
    Execute;
  end;
end;

procedure TGERALDADOS_FRM.Button3Click(Sender: TObject);
begin
  inherited;
  UniDump1.TableNames:=Edit3.Text;
  UniDump1.BackupToFile(Edit2.Text);
end;

procedure TGERALDADOS_FRM.Button5Click(Sender: TObject);
begin
  inherited;
  UniDump2.BackupToFile('C:\DADOSFDB\backup\dados.SQL');
end;

procedure TGERALDADOS_FRM.Button6Click(Sender: TObject);
begin
  inherited;
  UniDump2.RestoreFromFile('C:\DADOSFDB\backup\dados.SQL');
  // UniDump2.RestoreFromStream('C:\DADOSFDB\backup\dados01.fdb');
  UniDump2.Restore;
end;

procedure TGERALDADOS_FRM.cxButton19Click(Sender: TObject);
begin
  inherited;
  ComPed('NFE');
  ITEComPED('ITENFE');
end;

procedure TGERALDADOS_FRM.cxButton1Click(Sender: TObject);
begin
  inherited;
  Credito;
  TerminalPreferencias;
end;

procedure TGERALDADOS_FRM.cxButton2Click(Sender: TObject);
begin
  inherited;
  Criadados('\DADOSFDB\X\DADOS2.FDB');
end;

procedure TGERALDADOS_FRM.cxButton3Click(Sender: TObject);
begin
  inherited;
  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('DROP TABLE INVENTARIO');
    Execute;
  end;

  with DataModule2.UniScript1, SQL do
  begin
    Clear;
    Add('DROP SEQUENCE GEN_INVENTARIO');
    Execute;
  end;

  INVENTARIO('INVENTARIO');
end;

procedure TGERALDADOS_FRM.cxButton4Click(Sender: TObject);
begin
  inherited;
  PRODUTOS('PRODUTOS_DELETADOS');
end;

procedure TGERALDADOS_FRM.cxButton5Click(Sender: TObject);
begin
  inherited;
  INVENTARIO('SIMULADO');
end;

procedure TGERALDADOS_FRM.cxButton6Click(Sender: TObject);
begin
  inherited;
  with Tacessoadadosf.Create(Self) do begin
    Show;
  end;
end;

procedure TGERALDADOS_FRM.cxButton7Click(Sender: TObject);
begin
  inherited;
  with TImportacaof.Create(Self) do begin
    Show;
  end;
end;

procedure TGERALDADOS_FRM.cxButton8Click(Sender: TObject);
begin
  inherited;
  RECEBIMENTO('RECEBIMENTOCONTA');
end;

procedure TGERALDADOS_FRM.cxButton9Click(Sender: TObject);
begin
  inherited;
  with Testoquef.Create(Self) do begin
    Show;
  end;
end;

procedure TGERALDADOS_FRM.FormShow(Sender: TObject);
begin
  inherited;
  Panel2.Align:=alclient;
end;

end.
