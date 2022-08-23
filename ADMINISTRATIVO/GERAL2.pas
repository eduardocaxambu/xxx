unit GERAL2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Mestre, NxNotebook6, NxControls6,
  NxCollection6, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.StdCtrls, Vcl.DBCtrls, RxToolEdit, RxDBCtrl,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, Vcl.Mask,
  Vcl.Buttons, Printers, cxStyles, cxClasses;

type
  TGERAL2F = class(TMestre_FRM)
    NxNotebook61: TNxNotebook6;
    Senhax: TNxNotebookSheet6;
    NxNotebookSheet62: TNxNotebookSheet6;
    NxNotebookSheet63: TNxNotebookSheet6;
    NxNotebookSheet64: TNxNotebookSheet6;
    CONFIG: TNxNotebookSheet6;
    Panel6: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel7: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Panel9: TPanel;
    Button14: TButton;
    Button15: TButton;
    DBText2: TDBText;
    DBText10: TDBText;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label57: TLabel;
    SpeedButton2: TSpeedButton;
    Label69: TLabel;
    Label70: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label84: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label85: TLabel;
    Label86: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label140: TLabel;
    Label92: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    RxDBComboEdit2: TRxDBComboEdit;
    RxDBComboEdit4: TRxDBComboEdit;
    RxDBComboEdit11: TRxDBComboEdit;
    DBEdit2: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit11: TDBEdit;
    ListBox1: TListBox;
    DBEdit39: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit53: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    Button1: TButton;
    NxNotebookSheet66: TNxNotebookSheet6;
    Panel5: TPanel;
    Panel8: TPanel;
    Panel10: TPanel;
    Edit1: TEdit;
    Panel11: TPanel;
    Data: TLabel;
    Label1: TLabel;
    TURNO: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit17: TDBEdit;
    DBEdit10: TDBEdit;
    Label56: TLabel;
    Panel137: TPanel;
    Panel138: TPanel;
    Panel139: TPanel;
    Panel140: TPanel;
    OpenDialog1: TOpenDialog;
    Label2: TLabel;
    DBEdit1: TDBEdit;
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
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBComboEdit4ButtonClick(Sender: TObject);
    procedure RxDBComboEdit2ButtonClick(Sender: TObject);
    procedure RxDBComboEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboEdit11ButtonClick(Sender: TObject);
    procedure RxDBComboEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure Pesquisa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GERAL2F: TGERAL2F;

implementation

{$R *.dfm}

uses DADOSFRENTE, Principal, CAD_MANUTENCAO, FUNCOESGERAIS;

procedure TGERAL2F.Button14Click(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.CONF_PADRAO.Post;
  Close;
end;

procedure TGERAL2F.Button15Click(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.CONF_PADRAO.Cancel;
  Close;
end;

procedure TGERAL2F.Button1Click(Sender: TObject);
begin
  inherited;
  ListBox1.Items.Assign(Printer.Printers); // pegas as impressoras
  ListBox1.ItemIndex := Printer.PrinterIndex; // posiciona na impressora atual
end;

procedure TGERAL2F.Button6Click(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime:=date;
  DADOSFRENTEf.CONF_PADRAO.FieldByName('CAIXA').Value:='1';
  DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').Value:='1';
  DADOSFRENTEf.CONF_PADRAO.FieldByName('TIPO').Value:='P';
  DADOSFRENTEf.CONF_PADRAO.FieldByName('CONTAS').Value:='1';
  DADOSFRENTEf.CONF_PADRAO.FieldByName('VENDEDOR').Value:='1';
  DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').Value:='1';
  DADOSFRENTEf.CONF_PADRAO.FieldByName('OS').Value:='S';
  DADOSFRENTEf.CONF_PADRAO.FieldByName('OS').Value:='S';
  DADOSFRENTEf.CONF_PADRAO.FieldByName('IMPRIME').Value:='S';
  DADOSFRENTEf.CONF_PADRAO.FieldByName('TIPODEMPRESSAO').Value:='MI';
  DADOSFRENTEf.CONF_PADRAO.FieldByName('IMPRIME').Value:='S';
  DADOSFRENTEf.CONF_PADRAO.FieldByName('IMPRESSAO').Value:='F';
  DADOSFRENTEf.CONF_PADRAO.FieldByName('OLEO').Value:='S';
  DADOSFRENTEf.CONF_PADRAO.FieldByName('DIVERSASPAG').Value:='S';
  DADOSFRENTEf.CONF_PADRAO.FieldByName('VISTAPRAZO').Value:='S';
  DADOSFRENTEf.CONF_PADRAO.FieldByName('DOISPRECOS').Value:='S';
end;

procedure TGERAL2F.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then begin
    senha:=Edit1.text;
    close;
  end;
end;

procedure TGERAL2F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(GERAL2F);
  Action:=caFree;
end;

procedure TGERAL2F.FormShow(Sender: TObject);
begin
  inherited;
  Panel4.Align:=alclient;
  NxNotebook61.Align:=alclient;
  Panel6.Align:=alclient;
end;

procedure TGERAL2F.RxDBComboEdit11ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TGERAL2F.RxDBComboEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Pesquisa;
end;

procedure TGERAL2F.RxDBComboEdit2ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TGERAL2F.RxDBComboEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Pesquisa;
end;

procedure TGERAL2F.Pesquisa;
begin
  if RxDBComboEdit11.Focused=true then begin
    ConsultaOperadores;
    if CodigoConsulta<>'' then
      DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString:=CodigoConsulta;
  end;


  if RxDBComboEdit2.Focused=true then begin
    EscolheVendedor;
    DADOSFRENTEf.CONF_PADRAO.FieldByName('VENDEDOR').AsString:=CodigoConsulta;
  end;
end;

procedure TGERAL2F.RxDBComboEdit4ButtonClick(Sender: TObject);
begin
  inherited;
  OpenDialog1.Execute;
  DADOSFRENTEf.CONF_PADRAO.FieldByName('IMAGEM').AsString:=OpenDialog1.FileName;
end;

procedure TGERAL2F.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.CONF_PADRAO.FieldByName('IMPRESSORA1').AsString:= ListBox1.Items.Strings[ListBox1.ItemIndex];
end;

procedure TGERAL2F.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.CONF_PADRAO.FieldByName('IMPRESSORA2').AsString:= ListBox1.Items.Strings[ListBox1.ItemIndex];
end;

procedure TGERAL2F.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.CONF_PADRAO.FieldByName('IMPRESSORA3').AsString:= ListBox1.Items.Strings[ListBox1.ItemIndex];
end;

procedure TGERAL2F.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.CONF_PADRAO.FieldByName('IMPRESSORA4').AsString:= ListBox1.Items.Strings[ListBox1.ItemIndex];
end;

procedure TGERAL2F.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.CONF_PADRAO.FieldByName('IMPRESSORA5').AsString:= ListBox1.Items.Strings[ListBox1.ItemIndex];
end;

end.


