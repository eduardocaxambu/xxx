unit GERALFRENTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, mestre2, NxControls6, NxCollection6,
  NxNotebook6, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit,
  dxGDIPlusClasses, Vcl.Imaging.jpeg, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.DBCtrls, RxDBCtrl, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalc,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.Menus,
  cxButtons, cxDBEdit, MemDS, DBAccess, Uni, Vcl.Buttons, DateUtils, Vcl.Printers;

type
  TGERALFRENTEF = class(Tmestre2_FRM)
    NxNotebook61: TNxNotebook6;
    FormasdePagamento: TNxNotebookSheet6;
    Config: TNxNotebookSheet6;
    Clientes: TNxNotebookSheet6;
    ImportaOS: TNxNotebookSheet6;
    Panel2: TPanel;
    Panel1: TPanel;
    NxPanel27: TPanel;
    NxPanel179: TPanel;
    Button19: TButton;
    Button20: TButton;
    NxPanel185: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Frete: TCurrencyEdit;
    TaxadeEntrega: TCurrencyEdit;
    Acrescimo: TCurrencyEdit;
    CheckBox8: TCheckBox;
    NxPanel186: TPanel;
    Image1: TImage;
    Image2: TImage;
    ValorForma: TCurrencyEdit;
    cxGrid7: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBTableView6FORMADEPAGAMENTO: TcxGridDBColumn;
    cxGridDBTableView6VALOR: TcxGridDBColumn;
    cxGridDBTableView6Column2: TcxGridDBColumn;
    cxGridDBTableView6Column1: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    ValorTotaldaVenda: TCurrencyEdit;
    ValoraserPago: TCurrencyEdit;
    TotaldasFormasX: TCurrencyEdit;
    TrocodaVenda: TCurrencyEdit;
    NxPanel82: TPanel;
    NxPanel81: TPanel;
    NxPanel22: TPanel;
    NxPanel176: TPanel;
    NxPanel177: TPanel;
    NxPanel13: TPanel;
    NxPanel178: TPanel;
    NxPanel180: TPanel;
    CodVen2: TComboEdit;
    NxPanel181: TPanel;
    NxPanel182: TPanel;
    cxButton46: TButton;
    cxButton47: TButton;
    cxButton51: TButton;
    cxButton52: TButton;
    cxButton50: TButton;
    cxButton69: TButton;
    cxButton27: TButton;
    Panel6: TPanel;
    Label51: TLabel;
    MaskEdit2: TMaskEdit;
    Label52: TLabel;
    MaskEdit3: TMaskEdit;
    FechaCaixa: TNxNotebookSheet6;
    RecebimentoCaixa: TNxNotebookSheet6;
    Parcelamento: TNxNotebookSheet6;
    SangriaSuprimento: TNxNotebookSheet6;
    Oleo: TNxNotebookSheet6;
    Panel10: TPanel;
    Panel24: TPanel;
    Parcela: TNxNotebookSheet6;
    CaixaRelatorio: TNxNotebookSheet6;
    Panel54: TPanel;
    UniQuery1: TUniQuery;
    Desconto2: TCurrencyEdit;
    NxNotebookSheet62: TNxNotebookSheet6;
    Panel57: TPanel;
    Panel56: TPanel;
    Button24: TButton;
    Button25: TButton;
    Panel63: TPanel;
    Panel8: TPanel;
    Panel29: TPanel;
    Label49: TLabel;
    Label50: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label64: TLabel;
    Datacai: TDateEdit;
    Edit1: TEdit;
    CurrencyEdit3: TCurrencyEdit;
    CheckBox2: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox7: TCheckBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    cxButton56: TcxButton;
    cxButton115: TcxButton;
    cxButton74: TcxButton;
    cxButton61: TcxButton;
    cxButton58: TcxButton;
    cxButton59: TcxButton;
    cxButton73: TcxButton;
    cxButton128: TcxButton;
    Panel28: TPanel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    TotEntra: TCurrencyEdit;
    TotSaid: TCurrencyEdit;
    SaldTot: TCurrencyEdit;
    RealEdit1: TCurrencyEdit;
    cxButton85: TcxButton;
    cxButton98: TcxButton;
    Panel27: TPanel;
    CheckBox6: TCheckBox;
    cxButton24: TcxButton;
    cxButton25: TcxButton;
    cxButton75: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2CODIGO: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView2HORA: TcxGridDBColumn;
    cxGridDBTableView2OBSERVACAO: TcxGridDBColumn;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    cxGridDBTableView2VALOR: TcxGridDBColumn;
    cxGridDBTableView2DC: TcxGridDBColumn;
    cxGridDBTableView2AVIS_PRAZO: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    OpcoesSanSup: TNxNotebookSheet6;
    CaixaAnterior: TNxNotebookSheet6;
    Panel64: TPanel;
    Panel65: TPanel;
    cxGrid5: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBTableView7DATA: TcxGridDBColumn;
    cxGridDBTableView7TURNO: TcxGridDBColumn;
    cxGridDBTableView7HORA: TcxGridDBColumn;
    cxGridDBTableView7OPERADOR: TcxGridDBColumn;
    cxGridDBTableView7NomeOperador: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    Panel66: TPanel;
    ValoresCaixa: TNxNotebookSheet6;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    Panel77: TPanel;
    Panel78: TPanel;
    Panel79: TPanel;
    Panel80: TPanel;
    Panel81: TPanel;
    Panel82: TPanel;
    Panel83: TPanel;
    Panel84: TPanel;
    Panel97: TPanel;
    Panel98: TPanel;
    Panel99: TPanel;
    Panel100: TPanel;
    Panel101: TPanel;
    Panel102: TPanel;
    Panel103: TPanel;
    Panel104: TPanel;
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
    Panel115: TPanel;
    Panel116: TPanel;
    Panel4: TPanel;
    Panel9: TPanel;
    Label19: TLabel;
    Label13: TLabel;
    RxDBComboEdit4: TRxDBComboEdit;
    Panel13: TPanel;
    DBText3: TDBText;
    Panel11: TPanel;
    Button3: TButton;
    Button4: TButton;
    Panel16: TPanel;
    Label25: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Panel14: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Entregadorx: TComboEdit;
    Portador: TComboEdit;
    Panel15: TPanel;
    Label35: TLabel;
    CodVen: TComboEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Observaçoes: TEdit;
    Button5: TButton;
    Panel117: TPanel;
    Panel118: TPanel;
    Panel119: TPanel;
    Panel120: TPanel;
    Panel121: TPanel;
    Panel93: TPanel;
    Panel67: TPanel;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2x: TCurrencyEdit;
    CurrencyEdit3x: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit6x: TCurrencyEdit;
    CurrencyEdit7x: TCurrencyEdit;
    CurrencyEdit8x: TCurrencyEdit;
    CurrencyEdit9x: TCurrencyEdit;
    CurrencyEdit10x: TCurrencyEdit;
    CurrencyEdit11x: TCurrencyEdit;
    CurrencyEdit23: TCurrencyEdit;
    CurrencyEdit25x: TCurrencyEdit;
    CurrencyEdit24: TCurrencyEdit;
    CurrencyEdit26: TCurrencyEdit;
    CurrencyEdit22: TCurrencyEdit;
    CurrencyEdit21: TCurrencyEdit;
    CurrencyEdit20: TCurrencyEdit;
    CurrencyEdit19: TCurrencyEdit;
    CurrencyEdit18: TCurrencyEdit;
    CurrencyEdit17: TCurrencyEdit;
    CurrencyEdit16: TCurrencyEdit;
    CurrencyEdit15: TCurrencyEdit;
    CurrencyEdit14x: TCurrencyEdit;
    CurrencyEdit13x: TCurrencyEdit;
    CurrencyEdit12x: TCurrencyEdit;
    Panel68: TPanel;
    Button28: TButton;
    Button29: TButton;
    CheckBox11: TCheckBox;
    Panel31: TPanel;
    Label43: TLabel;
    Label44: TLabel;
    Panel55: TPanel;
    Button22: TButton;
    Button23: TButton;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    Panel7: TPanel;
    Label82: TLabel;
    Label83: TLabel;
    Label53: TLabel;
    DBText7: TDBText;
    Label42: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label90: TLabel;
    DBText12: TDBText;
    Panel53: TPanel;
    Button18: TButton;
    Button21: TButton;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    RxDBComboEdit8: TRxDBComboEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    MaskEdit11: TMaskEdit;
    Panel30: TPanel;
    Panel32: TPanel;
    Button14: TButton;
    Button15: TButton;
    CodVenx: TComboEdit;
    ComboEdit1x: TComboEdit;
    ComboEdit2x: TComboEdit;
    Edit5: TEdit;
    RxCalcEdit1: TRxCalcEdit;
    Panel33: TPanel;
    ComboEdit3x: TComboEdit;
    Edit2: TEdit;
    Panel46: TPanel;
    Panel47: TPanel;
    Button16: TButton;
    Panel34: TPanel;
    ComboEdit4x: TComboEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Panel49: TPanel;
    Panel48: TPanel;
    Panel50: TPanel;
    Button17: TButton;
    CheckBox1: TCheckBox;
    Panel35: TPanel;
    NxPanel17: TPanel;
    NxPanel29: TPanel;
    NxPanel27x: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    Panel51: TPanel;
    Panel52: TPanel;
    Panel12: TPanel;
    Label36: TLabel;
    Panel17: TPanel;
    Button6: TButton;
    Button7: TButton;
    CurrencyEdit2: TCurrencyEdit;
    Panel18: TPanel;
    Label37: TLabel;
    Panel19: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBComboBox7: TDBComboBox;
    DBComboBox8: TDBComboBox;
    DBComboBox9: TDBComboBox;
    DBComboBox10: TDBComboBox;
    DBComboBox11: TDBComboBox;
    DBComboBox12: TDBComboBox;
    Panel94: TPanel;
    Panel95: TPanel;
    Panel96: TPanel;
    Panel122: TPanel;
    Panel123: TPanel;
    Panel124: TPanel;
    Panel125: TPanel;
    Panel126: TPanel;
    Panel127: TPanel;
    Panel128: TPanel;
    Panel129: TPanel;
    Panel130: TPanel;
    Panel131: TPanel;
    Panel132: TPanel;
    Panel133: TPanel;
    Panel134: TPanel;
    Panel135: TPanel;
    Panel136: TPanel;
    Panel137: TPanel;
    Panel138: TPanel;
    Panel139: TPanel;
    Panel140: TPanel;
    Panel141: TPanel;
    Panel142: TPanel;
    Panel143: TPanel;
    Panel144: TPanel;
    Panel145: TPanel;
    Panel146: TPanel;
    Panel147: TPanel;
    Panel148: TPanel;
    Panel73: TPanel;
    Panel74: TPanel;
    Panel75: TPanel;
    Panel76: TPanel;
    Panel85: TPanel;
    Panel86: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Button8: TButton;
    Button9: TButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3EMISSAO: TcxGridDBColumn;
    cxGridDBTableView3VENCIMENTO: TcxGridDBColumn;
    cxGridDBTableView3PARCELA: TcxGridDBColumn;
    cxGridDBTableView3VALOR: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Panel22: TPanel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    cxSpinEdit1: TcxSpinEdit;
    cxDateEdit1: TcxDateEdit;
    cxSpinEdit2: TcxSpinEdit;
    Panel38: TPanel;
    Panel37: TPanel;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    cxCalcEdit1: TcxCalcEdit;
    Panel23: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Button13: TButton;
    Panel69: TPanel;
    Panel70: TPanel;
    Panel71: TPanel;
    Panel72: TPanel;
    Panel87: TPanel;
    Panel88: TPanel;
    Panel149: TPanel;
    Panel89: TPanel;
    Panel90: TPanel;
    Panel91: TPanel;
    HISTORIC: TUniTable;
    HISTORICCODIGO: TIntegerField;
    HISTORICNOME: TStringField;
    HISTORICCONTA: TIntegerField;
    HISTORICCUSTO: TIntegerField;
    HISTORICATIVO: TSmallintField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    UniQuery2: TUniQuery;
    DataSource3: TDataSource;
    VENDEDORx: TUniTable;
    DataSource4: TDataSource;
    Panel36: TPanel;
    cxButton53: TcxButton;
    cxButton54: TcxButton;
    cxButton55: TcxButton;
    cxButton57: TcxButton;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel92: TPanel;
    Panel150: TPanel;
    Tela_Impressora: TNxNotebookSheet6;
    Tela_Impressora_panel: TPanel;
    Panel151: TPanel;
    Panel152: TPanel;
    Panel153: TPanel;
    Panel154: TPanel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    NxPanel108: TPanel;
    NxPanel58: TPanel;
    NxPanel59: TPanel;
    NxPanel60: TPanel;
    NxPanel61: TPanel;
    NxPanel62: TPanel;
    NxPanel57: TPanel;
    NxPanel73: TPanel;
    NxPanel74: TPanel;
    NxPanel75: TPanel;
    NxPanel76: TPanel;
    NxPanel89: TPanel;
    NxPanel90: TPanel;
    NxPanel71: TPanel;
    NxPanel84: TPanel;
    NxPanel82x: TPanel;
    NxPanel81x: TPanel;
    NxPanel80: TPanel;
    NxPanel79: TPanel;
    NxPanel78: TPanel;
    NxPanel70: TPanel;
    NxPanel69: TPanel;
    NxPanel68: TPanel;
    NxPanel66: TPanel;
    NxPanel64: TPanel;
    NxPanel63: TPanel;
    NxPanel107: TPanel;
    NxPanel110: TPanel;
    NxPanel77: TPanel;
    NxPanel83: TPanel;
    NxPanel85: TPanel;
    NxPanel86: TPanel;
    NxPanel87: TPanel;
    NxPanel88: TPanel;
    NxPanel96: TPanel;
    NxPanel97: TPanel;
    NxPanel98: TPanel;
    NxPanel99: TPanel;
    NxPanel100: TPanel;
    NxPanel95: TPanel;
    NxPanel106: TPanel;
    NxPanel113: TPanel;
    NxPanel91: TPanel;
    NxPanel111: TPanel;
    CheckBox14: TCheckBox;
    Label65: TLabel;
    CheckBox15: TCheckBox;
    Panel59: TPanel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Panel60: TPanel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    ComboBox1: TComboBox;
    Codper: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    CheckBox9: TCheckBox;
    DateEdit6: TDateEdit;
    Panel61: TPanel;
    Label63: TLabel;
    RadioButton6: TRadioButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button26: TButton;
    Button27: TButton;
    CheckBox12: TCheckBox;
    DateEdit7: TDateEdit;
    CheckBox13: TCheckBox;
    CurrencyEdit14: TCurrencyEdit;
    Panel62: TPanel;
    BitBtn11: TBitBtn;
    BitBtn19: TBitBtn;
    Button30: TButton;
    Button31: TButton;
    EscolheImpressora: TNxNotebookSheet6;
    Panel58: TPanel;
    Panel155: TPanel;
    Panel156: TPanel;
    Panel157: TPanel;
    Panel158: TPanel;
    ListBox1: TListBox;
    cxGridDBTableView6Column3: TcxGridDBColumn;
    QuantidadedeParcelas: TNxNotebookSheet6;
    Panel159: TPanel;
    Panel160: TPanel;
    Panel161: TPanel;
    Panel162: TPanel;
    Parcelasxyz: TCurrencyEdit;
    Panel163: TPanel;
    Button32: TButton;
    Button33: TButton;
    Panel164: TPanel;
    Panel165: TPanel;
    Panel166: TPanel;
    Panel167: TPanel;
    Panel168: TPanel;
    Panel169: TPanel;
    Panel170: TPanel;
    Panel171: TPanel;
    cxButton1: TcxButton;
    MeiosdePagamento: TNxNotebookSheet6;
    Panel172: TPanel;
    Panel173: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel174: TPanel;
    Panel175: TPanel;
    Panel176: TPanel;
    Panel177: TPanel;
    Panel178: TPanel;
    Panel179: TPanel;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1CUPOM: TcxGridDBColumn;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxGridDBTableView1FORMADEPAGAMENTO: TcxGridDBColumn;
    cxGridDBTableView1EMISSAO: TcxGridDBColumn;
    cxGridDBTableView1VENCIMENTO: TcxGridDBColumn;
    cxGridDBTableView1HORA: TcxGridDBColumn;
    cxGridDBTableView1PARCELA: TcxGridDBColumn;
    cxGridDBTableView1TOTALPAGO: TcxGridDBColumn;
    cxGridDBTableView1VALOR: TcxGridDBColumn;
    cxGridDBTableView1TROCO: TcxGridDBColumn;
    cxGridDBTableView1AVISTAPRAZO: TcxGridDBColumn;
    cxGridDBTableView1VENDASCONTAS: TcxGridDBColumn;
    Panel180: TPanel;
    Label66: TLabel;
    DateEdit3: TDateEdit;
    Button34: TButton;
    ListBox2: TListBox;
    Label67: TLabel;
    DateEdit4: TDateEdit;
    Button35: TButton;
    ListBox3: TListBox;
    Label68: TLabel;
    DateEdit5: TDateEdit;
    Panel181: TPanel;
    CheckBox10: TCheckBox;
    SUB_HIST: TUniTable;
    SUB_HISTCODIGO: TIntegerField;
    SUB_HISTNOME: TStringField;
    SUB_HISTHISTORIC: TIntegerField;
    Button36: TButton;
    Button37: TButton;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    Button38: TButton;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure EntregadorxButtonClick(Sender: TObject);
    procedure PortadorButtonClick(Sender: TObject);
    procedure CodVenButtonClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure cxButton46Click(Sender: TObject);
    procedure cxButton47Click(Sender: TObject);
    procedure cxButton51Click(Sender: TObject);
    procedure cxButton52Click(Sender: TObject);
    procedure cxButton50Click(Sender: TObject);
    procedure cxButton69Click(Sender: TObject);
    procedure cxButton27Click(Sender: TObject);
    procedure ValorFormaEnter(Sender: TObject);
    procedure ValorFormaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FreteEnter(Sender: TObject);
    procedure FreteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TaxadeEntregaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Desconto2Exit(Sender: TObject);
    procedure AcrescimoExit(Sender: TObject);
    procedure Desconto2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AcrescimoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RxDBComboEdit4ButtonClick(Sender: TObject);
    procedure RxDBComboEdit4Enter(Sender: TObject);
    procedure RxDBComboEdit4Exit(Sender: TObject);
    procedure RxDBComboEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure MaskEdit11Exit(Sender: TObject);
    procedure RxDBComboEdit8ButtonClick(Sender: TObject);
    procedure RxDBComboEdit8Enter(Sender: TObject);
    procedure RxDBComboEdit8Exit(Sender: TObject);
    procedure RxDBComboEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure cxButton85Click(Sender: TObject);
    procedure cxButton98Click(Sender: TObject);
    procedure cxButton56Click(Sender: TObject);
    procedure cxButton58Click(Sender: TObject);
    procedure cxButton115Click(Sender: TObject);
    procedure cxButton59Click(Sender: TObject);
    procedure cxButton74Click(Sender: TObject);
    procedure cxButton61Click(Sender: TObject);
    procedure cxButton73Click(Sender: TObject);
    procedure PortadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EntregadorxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodVenExit(Sender: TObject);
    procedure CodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ObservaçoesExit(Sender: TObject);
    procedure DatacaiExit(Sender: TObject);
    procedure CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton128Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure cxButton25Click(Sender: TObject);
    procedure cxButton75Click(Sender: TObject);
    procedure cxButton24Click(Sender: TObject);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MaskEdit2Enter(Sender: TObject);
    procedure Panel6Enter(Sender: TObject);
    procedure CodVenxButtonClick(Sender: TObject);
    procedure CodVenxExit(Sender: TObject);
    procedure CodVenxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboEdit1xExit(Sender: TObject);
    procedure ComboEdit2xExit(Sender: TObject);
    procedure ComboEdit3xButtonClick(Sender: TObject);
    procedure cxButton53Click(Sender: TObject);
    procedure cxButton54Click(Sender: TObject);
    procedure cxButton55Click(Sender: TObject);
    procedure cxButton57Click(Sender: TObject);
    procedure ComboEdit3xKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboEdit4xButtonClick(Sender: TObject);
    procedure ComboEdit4xKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure CodVen2ButtonClick(Sender: TObject);
    procedure CodVen2Exit(Sender: TObject);
    procedure CodVen2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure CurrencyEdit24Exit(Sender: TObject);
    procedure Label49Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure ParcelasxyzKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button38Click(Sender: TObject);
    procedure CheckBox17Enter(Sender: TObject);
    procedure CheckBox16Enter(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
  private
    procedure FocaValorForma;
    procedure TotalFormas;
    procedure AcrescimoVenda;
    procedure TotalaserPagaoF;
    procedure DescontoVenda;
    procedure LocalizaVendedor;
    procedure EscolheOCliente;
    procedure Pesquisa;
    procedure MostraTotalDuplicatas;
    procedure ConsultaCaixaAnterior(GeralSemanal: string);
    procedure ImprimeCaixa(QueryCaixa: TUniQuery; Grafico: string);
    procedure ImprimeRecibo;
    procedure SaldoDoCaixa;
    procedure ImprimeVendas(Resumido: string);
    procedure InformacoesCaixaX;
    procedure SomatoriaCaixaInformacoesCaixa;
    procedure NomePortador;
    procedure NomeVendedor;
    procedure FechaFechamento;
    procedure OpcoesSangSupr;
    procedure Recibo(Lancamento, TipoReciboXYZ, Recebemos, RecebemosEndereco,
      Referente, Emitente, documento, EnderecoEmitente, Grafico: string;
      ValorRecibo: double; DataRecibo: tdatetime);
    procedure TotalDeTodososValores;
    procedure InformacoesCaixa;
    procedure ParcelasdasFormas;
    procedure SomaDasFormasPagamento(DiaPeriodo:string);
    procedure IncluiDiversasFormas(FormaPagamento:string);
    { Private declarations }
  public
    { Public declarations }
  end;


var
  GERALFRENTEF: TGERALFRENTEF;
  ConsultaCaixa: string;
  // TotalGeralConta, TotalGeralContaBaixar, SomaGeral :double;
  // TotalGeralContaBaixar, SomaGeral :double;
  NRegistro:integer;

implementation

uses FUNCOES, VISUALIZACAO, DADOSFRENTE, EXTENSO, DADOSMOVIMENTO, PRINCIPAL,
     CONSULTAS, DADOS_CRIA, CONTASRECPAG, DADOSVEICULOS,
     FrentredeCaixa, FUNCOESGERAIS, MENSPROC, GERAL2, FUNCOESUNIDAC,
     CadastroMovimentos, DADOS_CADASTROS, Relatorios,
     FUNCAORELATORIOS, dadosFinaceiro, GERAL3, CAD_MANUTENCAO, GERAL,
  dadosOBJETOS;

{$R *.dfm}

procedure TGERALFRENTEF.AcrescimoExit(Sender: TObject);
begin
  inherited;
  AcrescimoVenda;
end;

procedure TGERALFRENTEF.AcrescimoVenda;
begin
  Desconto2.Clear;
  if CheckBox8.Checked=true then
    Acrescimo.Value:=(Acrescimo.Value*ValorTotaldaVenda.Value)/100;
  TotalaserPagaoF;
end;

procedure TGERALFRENTEF.TotalaserPagaoF;
begin
  inherited;
  ValoraserPago.Value:=ValorTotaldaVenda.Value-Desconto2.Value+TaxadeEntrega.Value+Frete.Value+Acrescimo.Value;
end;


procedure TGERALFRENTEF.AcrescimoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then begin
    cxGrid7.SetFocus;
  end;
end;

procedure TGERALFRENTEF.BitBtn11Click(Sender: TObject);
var RedDes:string;
begin
  inherited;
  if DateEdit7.Visible=false then
    DateEdit7.Date:=DateEdit6.Date;

  if RadioButton6.Checked=true then
    RedDes:='1'
  else if RadioButton6.Checked=true then
    RedDes:='2'
  else if RadioButton6.Checked=true then
    RedDes:='3';
  RelatoriodeCaixa(DateEdit6.Text,DateEdit7.Text,ComboBox1.Text,
                   ComboBox1.Text,ComboBox2.Text, RedDes,
                   CheckBox9.Checked,CheckBox12.Checked,
                   CheckBox13.Checked);
end;

procedure TGERALFRENTEF.Button10Click(Sender: TObject);
begin
  inherited;
  cxGrid3.Visible:=false;
  if ContaPagarReceber='Pagar' then begin
    GeraParcelamentoDuplicatas(cxSpinEdit1.Value,cxSpinEdit2.Value,cxDateEdit1.Date,cxCalcEdit1.Value);
    Panel26.Caption:=FormatFloat('###,##0.00',cxCalcEdit1.Value);
    TotaldasParecelasReceberPagar:=cxCalcEdit1.Value;
  end
  else begin
    GeraParcelamentoDuplicatas(cxSpinEdit1.Value,cxSpinEdit2.Value,cxDateEdit1.Date,TotaldasParecelasReceberPagar);
    Panel26.Caption:=FormatFloat('###,##0.00',TotalParcelas);
  end;
  cxGrid3.Visible:=true;
  cxGrid3.SetFocus;
end;

procedure TGERALFRENTEF.Button11Click(Sender: TObject);
begin
  inherited;
  QuantidadeParcelas:=cxSpinEdit1.Text;
  // DADOSFRENTEf.CADASTRO_CLIENTES.Open;
  // DADOSFRENTEf.CADASTRO_CLIENTES.Locate('CODIGO',DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString,[]);
  // FiltraQuery(DADOSFRENTEf.CADASTRO_CLIENTES,'CLIENTES',DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString);
  FiltraQuery(DADOSFRENTEf.CADASTRO_CLIENTES,'CLIENTES',DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString);
  {
  with TGeralf.Create(Self) do begin
    Width:=Panel18.Width;
    Height:=Panel18.Height;
    NxNotebook61.ActivePageIndex:=0;
    ShowModal;
  end;
  }
  with TGERALF.Create(Self) do begin
    Width:=Panel5.Width;
    Height:=Panel5.Height;
    BitBtn1.Visible:=false;
    BitBtn25.Visible:=true;
    NxNotebook61.ActivePageIndex:=1;
    ShowModal;
  end;
end;

procedure TGERALFRENTEF.Button12Click(Sender: TObject);
var R, ultima, primeira, TotPar, Resto: Real;
begin
  inherited;
  DADOSFRENTEf.duplicatas.First;
  TotPar:=0;
  while not DADOSFRENTEf.duplicatas.Eof do begin
    DADOSFRENTEf.duplicatas.Edit;
    R:=R+frac(DADOSFRENTEf.duplicatas.FieldByName('VALOR').AsFloat);
    DADOSFRENTEf.duplicatas.FieldByName('VALOR').AsFloat:=
      DADOSFRENTEf.duplicatas.FieldByName('VALOR').AsFloat - frac(
        DADOSFRENTEf.duplicatas.FieldByName('VALOR').AsFloat);
    TotPar:=TotPar+DADOSFRENTEf.duplicatas.FieldByName('VALOR').AsFloat;
    DADOSFRENTEf.duplicatas.Post;
    DADOSFRENTEf.duplicatas.Next;
  end;
  DADOSFRENTEf.duplicatas.Edit;
  DADOSFRENTEf.duplicatas.FieldByName('VALOR').AsFloat:=
    DADOSFRENTEf.duplicatas.FieldByName('VALOR').AsFloat+TotalGeral-TotPar;
  DADOSFRENTEf.duplicatas.Post;
  // MostraTotalDuplicatas;
  DADOSFRENTEf.duplicatas.First;
end;

procedure TGERALFRENTEF.Button13Click(Sender: TObject);
begin
  inherited;
  if DADOSFRENTEf.duplicatas.IsEmpty then begin
    ShowMessage('Parcelas não foram geradas !!!');
    Button10.SetFocus;
  end
  else begin
    with TGERALFRENTEF.Create(Self) do begin
      Width:=Panel121.Width;
      Height:=Panel121.Height;
      NxNotebook61.ActivePageIndex:=9;
      DADOSFRENTEf.duplicatas.Edit;
      ShowModal;
    end;
    MostraTotalDuplicatas;
  end;
end;

procedure TGERALFRENTEF.MostraTotalDuplicatas;
begin
  TotalDuplicatas;
  Panel26.Caption:=FormatFloat('###,##0.00',TotalParcelas);
  cxGrid3.SetFocus;
end;

procedure TGERALFRENTEF.Button14Click(Sender: TObject);
var SangriaSuprimento,DC,TipoMovimento:string;
begin
  inherited;
  if CodVenx.Text='' then begin
    ShowMessage('Informe o Vendedor !!!');
    CodVenx.SetFocus
  end
  else if ComboEdit1x.Text='' then begin
    ShowMessage('Informe o Histórico !!!');
    ComboEdit1x.SetFocus
  end
  else if ComboEdit2x.Text='' then begin
    ShowMessage('Informe o Sub-Histórico !!!');
    ComboEdit2x.SetFocus
  end
  else if RxCalcEdit1.Value=0 then begin
    ShowMessage('Informe o Valor !!!');
    RxCalcEdit1.SetFocus
  end
  else begin
    if Panel35.Caption='Sangria' then begin
      DC:='D';
      SangriaSuprimento:='S';
    end
    else begin
      DC:='C';
      SangriaSuprimento:='P';
    end;
    NumedordoLancamento;

{
procedure InformacoesCaixaSangriaSuprimento(Sang_supr,obs,dc,
  ap,RECEBEMOS,ENDERECOR,OBSERVACAO,EMITENTE,DOC_EMITE,
  ENDERECOE:string;Valor:double;Cliente,Fornecedor,Vendedor,Historico,
  SubHistorico:integer;SanSup:string);
}
    InformacoesCaixaSangriaSuprimento(Panel35.Caption,Edit5.Text,DC,
    'V',ComboEdit3x.Text,Edit2.Text,Edit5.Text,ComboEdit4x.Text,Edit3.Text,
    Edit4.Text,RxCalcEdit1.Value,0,0,StrToInt(CodVenx.text),StrToInt(
      ComboEdit1x.text),StrToInt(ComboEdit2x.text),SangriaSuprimento);
    // if CheckBox2.Checked=true then begin
    if CheckBox1.Checked=true then begin
      with TGeralf.Create(Self) do
        ImprimeRecibo;
    end;
    close;
  end;
end;

procedure TGERALFRENTEF.Button15Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TGERALFRENTEF.Button18Click(Sender: TObject);
begin
  inherited;
  if not (DADOS_CADASTROSf.Oleo_rel.IsEmpty) and (OBSERVACAOClientePedidoOS<>'') then begin
    while not DADOS_CADASTROSf.Oleo_rel.Eof do begin
      DADOS_CADASTROSf.Oleo_rel.Delete;
    end;
  end;

  if DADOS_CADASTROSf.OLEO.FieldByName('CUPOM').AsString='' then begin
    ShowMessage('Informe o Lançamento !!!');
    DBEdit44.SetFocus;
  end
  else if DADOS_CADASTROSf.OLEO.FieldByName('KM_INICIO').AsString='' then begin
    ShowMessage('Informe o KM Inicial !!!');
    DBEdit51.SetFocus;
  end
  else if DADOS_CADASTROSf.OLEO.FieldByName('KM_FIM').AsString='' then begin
    ShowMessage('Informe o KM Final !!!');
    DBEdit52.SetFocus;
  end
  else if DADOS_CADASTROSf.OLEO.FieldByName('KM_INICIO').AsFloat>DADOS_CADASTROSf.OLEO.FieldByName('KM_FIM').AsFloat then begin
    ShowMessage('Informe o KM Final não pode ser menor que KM Final !!!');
    DBEdit51.SetFocus;
  end
  else begin
    DADOS_CADASTROSf.OLEO.Post;
    FiltroVeiculo:='';
    EntrouOleoCarro:='S';
    close;
  end;
end;

procedure TGERALFRENTEF.Button19Click(Sender: TObject);
begin
  inherited;
  // DADOSFRENTEf.CADASTRO_CLIENTES
  if (CheckBox14.Checked=true) and  (DADOSFRENTEf.DiversasFormas.FieldByName('TROCO').AsFloat<>0) then begin
    DADOSFRENTEf.DiversasFormas.Edit;
    DADOSFRENTEf.DiversasFormas.FieldByName('TROCO').AsFloat:=0;
    DADOSFRENTEf.DiversasFormas.Post;
  end;

  Vendedorxyz:=CodVen2.Text;
  if FiltroRecebimentoConta='' then begin
    if ValoraserPago.Value>TotaldasFormasX.Value then begin
      ShowMessage('Valor das Formas de Pagamento tem que ser maaior ou igual ao Valor total da Venda !!!');
    end
    else begin
      TotaldaVenda:=ValorTotaldaVenda.Value;
      TrocoCompra:=TrocodaVenda.Value;
      ValoraserPagodaVenda:=ValoraserPago.Value;
      ValordadoDesconto:=Desconto2.Value;
      ValordadoAcrescimo:=Acrescimo.Value;
      ValordoTroco:=TrocodaVenda.Value;
      ValorPago:=TotaldasFormasX.Value;
      ValordasFormas:=TotaldasFormasX.Value;
      ValoraserPagodaVenda:=ValoraserPago.Value;
      ValordaTaxadeEntrega:=TaxadeEntrega.Value;
      ValordoFrete:=Frete.Value;
      if NxPanel81.Visible=false then begin
        DADOSFRENTEf.VENDAS_ECF2.Edit;
        DADOSFRENTEf.VENDAS_ECF2.FieldByName('VENDEDOR').AsString:=CodVen2.Text;

        // DADOSFRENTEf.CADASTRO_CLIENTES.Open;
        // DADOSFRENTEf.CADASTRO_CLIENTES.Locate('CODIGO','0',[]);
        FiltraQuery(DADOSFRENTEf.CADASTRO_CLIENTES,'CLIENTES','0');
        ImformacoesCliente;
        DADOSFRENTEf.DADOCLIEx.Refresh;
      end;
      close;
    end;
  end
  else begin
    if ValoraserPago.Value>TotaldasFormasX.Value then begin
      ShowMessage('Valor das Formas de Pagamento tem que ser maior ou igual ao Valor total da Venda !!!');
    end
    else begin
      TotalGeralContaBaixar:=ValoraserPago.Value;
      FiltroRecebimentoConta:='CONFIRMA';
      if CheckBox14.Checked=true then begin
        FiltroCredito(DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString);
        if DataFinanceiro.CREDITO.IsEmpty then
          DataFinanceiro.CREDITO.Append
        else
          DataFinanceiro.CREDITO.Edit;
        DataFinanceiro.CREDITO.FieldByName('CODIGO').AsString:=DataFinanceiro.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString;
        DataFinanceiro.CREDITO.FieldByName('NOME').AsString:=DataFinanceiro.CADASTRO_CLIENTES.FieldByName('NOME').AsString;
        if DataFinanceiro.CREDITO.FieldByName('VALOR').AsFloat>0 then
          DataFinanceiro.CREDITO.FieldByName('VALOR').AsFloat:=TrocodaVenda.Value+DataFinanceiro.CREDITO.FieldByName('VALOR').AsFloat
        else
          DataFinanceiro.CREDITO.FieldByName('VALOR').AsFloat:=TrocodaVenda.Value;

        Credito:=DataFinanceiro.CREDITO.FieldByName('VALOR').AsFloat;
        CreditoCapitado:=TrocodaVenda.Value;
        DataFinanceiro.CREDITO.Post;

        NumedordoLancamento;
        InformacoesRecebimentoContas('REC. '+DataFinanceiro.CREDITO.FieldByName('CODIGO').AsString+'-'+
        DataFinanceiro.CREDITO.FieldByName('NOME').AsString,
        'CREDITO','C',
        'A',
        '',
        TrocodaVenda.Value,
        0);

      end;
      close;
    end;
  end;
end;

procedure TGERALFRENTEF.Button1Click(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.CONFIG.Post;
  close;
end;

procedure TGERALFRENTEF.Button20Click(Sender: TObject);
begin
  inherited;
  TotalGeralContaBaixar:=0;
  DADOSFRENTEf.DiversasFormas.CancelUpdates;
  MeioPagamento:='Cancela';
  close;
end;

procedure TGERALFRENTEF.Button21Click(Sender: TObject);
begin
  inherited;
  DADOS_CADASTROSf.OLEO.Cancel;
  DADOS_CADASTROSf.OLEO.Close;
  DADOS_CADASTROSf.OLEO.CachedUpdates:=false;
  close;
end;

procedure TGERALFRENTEF.Button22Click(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.duplicatas.Post;
  close;
end;

procedure TGERALFRENTEF.Button23Click(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.duplicatas.Cancel;
  close;
end;

procedure TGERALFRENTEF.Button27Click(Sender: TObject);
begin
  inherited;
  if DateEdit7.Visible=true then begin
    Label57.Visible:=false;
    DateEdit7.Visible:=false;
    Label61.Visible:=false;
    ComboBox2.Visible:=false;
    Label62.Visible:=false;
    ComboBox3.Visible:=false;
    Label56.Caption:='Data do M&ovimento';
    Label56.Left:=49;
    Button27.Caption:='&Vários dias e Caixas';
  end
  else begin
    Label57.Visible:=true;
    DateEdit7.Visible:=true;
    Label61.Visible:=true;
    ComboBox2.Visible:=true;
    Label62.Visible:=true;
    ComboBox3.Visible:=true;
    Label56.Caption:='Data do M&ovimento Inicial';
    Label56.Left:=17;
    Button27.Caption:='&Um Caixa';
  end;
end;

procedure TGERALFRENTEF.Button28Click(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Deseja Sair do Fechamento de Valores ?','Confirmação',MB_YESNO + MB_ICONQUESTION)= ID_YES then
    close;
end;

procedure TGERALFRENTEF.Button29Click(Sender: TObject);
var spaco:string;
begin
  inherited;
  MesAnoRelatorio:=Copy(DateEdit1.Text,4,2)+Copy(DateEdit1.Text,7,4);
  NomeDoArquivo:='VALORES';
  spaco:='          ';
  with TVISUALIZACAOF.Create(Self) do begin

    TextListBox1.Items.Add('');
    TextListBox1.Items.Add('');
    TextListBox1.Items.Add('');
    // TextListBox1.Items.Add(spaco+'Caixa - '+DateEdit1.Text+' - Turno'+Edit11.Text);
    TextListBox1.Items.Add(spaco+'-------------------------------');

    if CheckBox9.Checked then begin
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add(spaco+NxPanel108.Caption+'.: '+NxPanel63.Caption);
      TextListBox1.Items.Add(spaco+NxPanel58.Caption+'.: '+NxPanel64.Caption);
      TextListBox1.Items.Add(spaco+NxPanel59.Caption+'.: '+NxPanel66.Caption);
      TextListBox1.Items.Add(spaco+NxPanel60.Caption+'.: '+NxPanel68.Caption);
      TextListBox1.Items.Add(spaco+NxPanel61.Caption+'.: '+NxPanel69.Caption);
      TextListBox1.Items.Add(spaco+NxPanel62.Caption+'.: '+NxPanel70.Caption);
      TextListBox1.Items.Add(spaco+'-------------------------------');
    end;

    if CheckBox11.Checked=false then
      TextListBox1.Items.Add('');

    TextListBox1.Items.Add(spaco+NxPanel71.Caption);

    if CheckBox9.Checked then begin
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add(spaco+NxPanel57.Caption+'.: '+NxPanel78.Caption);
      TextListBox1.Items.Add(spaco+NxPanel73.Caption+'.: '+NxPanel79.Caption);
      TextListBox1.Items.Add(spaco+NxPanel74.Caption+'.: '+NxPanel80.Caption);
      TextListBox1.Items.Add(spaco+NxPanel75.Caption+'.: '+NxPanel81x.Caption);
      TextListBox1.Items.Add(spaco+NxPanel76.Caption+'.: '+NxPanel82x.Caption);
      TextListBox1.Items.Add(spaco+'-------------------------------');
    end;

    if CheckBox11.Checked=false then
      TextListBox1.Items.Add('');

    TextListBox1.Items.Add(spaco+NxPanel84.Caption);

    if CheckBox11.Checked then begin
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add(spaco+NxPanel77.Caption+'.: '+CurrencyEdit12x.Text);
      TextListBox1.Items.Add(spaco+NxPanel83.Caption+'.: '+CurrencyEdit13x.Text);
      TextListBox1.Items.Add(spaco+NxPanel85.Caption+'.: '+CurrencyEdit14.Text);
      TextListBox1.Items.Add(spaco+NxPanel86.Caption+'.: '+CurrencyEdit15.Text);
      TextListBox1.Items.Add(spaco+NxPanel87.Caption+'.: '+CurrencyEdit16.Text);
      TextListBox1.Items.Add(spaco+NxPanel88.Caption+'.: '+CurrencyEdit17.Text);
      TextListBox1.Items.Add(spaco+'-------------------------------');
    end;

    if CheckBox11.Checked=false then
      TextListBox1.Items.Add('');

    TextListBox1.Items.Add(spaco+NxPanel95.Caption);

    if CheckBox9.Checked then begin
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add(spaco+NxPanel96.Caption+'.: '+CurrencyEdit18.Text);
      TextListBox1.Items.Add(spaco+NxPanel97.Caption+'.: '+CurrencyEdit19.Text);
      TextListBox1.Items.Add(spaco+NxPanel98.Caption+'.: '+CurrencyEdit20.Text);
      TextListBox1.Items.Add(spaco+NxPanel99.Caption+'.: '+CurrencyEdit21.Text);
      TextListBox1.Items.Add(spaco+NxPanel100.Caption+'.: '+CurrencyEdit22.Text);
      TextListBox1.Items.Add(spaco+'-------------------------------');
      TextListBox1.Items.Add(spaco+NxPanel89.Caption+'.: '+CurrencyEdit23.Text);
      TextListBox1.Items.Add(spaco+NxPanel90.Caption+'.: '+CurrencyEdit25x.Text);
      TextListBox1.Items.Add(spaco+NxPanel91.Caption+'.: '+CurrencyEdit26.Text);
      TextListBox1.Items.Add(spaco+'-------------------------------');
    end;

    if CheckBox11.Checked=false then
      TextListBox1.Items.Add('');

    TextListBox1.Items.Add(spaco+NxPanel106.Caption);

    TextListBox1.Items.Add('');
    TextListBox1.Items.Add(spaco+'-------------------------------');
    TextListBox1.Items.Add(spaco+NxPanel110.Caption);


    TextListBox1.Items.Add('');
    TextListBox1.Items.Add(spaco+'-------------------------------');
    TextListBox1.Items.Add(spaco+NxPanel113.Caption);


    TextListBox1.Items.Add('');
    TextListBox1.Items.Add(spaco+'-------------------------------');
    TextListBox1.Items.Add(spaco+NxPanel107.Caption);
    Show;
    // Button1.Click;
    Button9.Click;
    close;
  end;
  TamanhoFonte:=0;
end;

procedure TGERALFRENTEF.Button2Click(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.CONFIG.Cancel;
  close;
end;

procedure TGERALFRENTEF.Button30Click(Sender: TObject);
begin
  inherited;
  ValorForma.Enabled:=true;
  FormaAvistaPrazo:='P';
  IncluiDiversasFormas('Cartão de Debito');
  FocaValorForma;
end;

procedure TGERALFRENTEF.Button31Click(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.DiversasFormas.First;
  while not DADOSFRENTEf.DiversasFormas.Eof do
    DADOSFRENTEf.DiversasFormas.Delete;
  TotalFormas;
  cxButton46.SetFocus;
end;

procedure TGERALFRENTEF.Button32Click(Sender: TObject);
begin
  inherited;
  QuantidadedeParcelasdaForma:=StrToInt(Parcelasxyz.Text);
  close;
end;

procedure TGERALFRENTEF.Button33Click(Sender: TObject);
begin
  inherited;
  QuantidadedeParcelasdaForma:=1;
  close;
end;

procedure TGERALFRENTEF.Button34Click(Sender: TObject);
begin
  cxGrid1.Visible:=false;
  SomaDasFormasPagamento('DIA');
  cxGrid1.Visible:=true;
end;

procedure TGERALFRENTEF.Button35Click(Sender: TObject);
begin
  inherited;
  cxGrid1.Visible:=false;
  SomaDasFormasPagamento('PERIODO');
  cxGrid1.Visible:=true;
end;

procedure TGERALFRENTEF.Button36Click(Sender: TObject);
begin
  inherited;
  RelSimples2(ListBox2,ListBox2.Items.Count);
end;

procedure TGERALFRENTEF.Button37Click(Sender: TObject);
begin
  inherited;
  RelSimples2(ListBox3,ListBox3.Items.Count);
end;

procedure TGERALFRENTEF.Button38Click(Sender: TObject);
begin
  inherited;
  cxGrid1.Visible:=false;
  DADOSFRENTEf.DiversasFormasX.First;
  DataFinanceiro.VENDAS_ECF2.Open;
  while not DADOSFRENTEf.DiversasFormasX.Eof do begin
    if DataFinanceiro.VENDAS_ECF2.Locate('CUPOM',DADOSFRENTEf.DiversasFormasX.FieldByName('CUPOM').AsString,[]) then begin
      DADOSFRENTEf.DiversasFormasX.Edit;
      DADOSFRENTEf.DiversasFormasX.FieldByName('VENDASCONTAS').AsString:='V';
      DADOSFRENTEf.DiversasFormasX.Post;
    end;
    DADOSFRENTEf.DiversasFormasX.Next;
  end;
  cxGrid1.Visible:=true;
end;

procedure TGERALFRENTEF.SomaDasFormasPagamento(DiaPeriodo:string);
var TotalDinheiro,
    TotalCheque,
    TotalChequePrazo,
    TotalCartaoDebito,
    TotalCartaoCredito,
    TotalContaPrazo,
    TotalBoleto,
    TotalDeposito,
    TotalGeral:double;

    lista:TListBox;

    TituloPercentual,Risco :string;

    function PercentualForma(ValorForma:double):string;
    var PerFor:double;
    begin
      PerFor:=ValorForma/TotalGeral*100;
      if CheckBox10.Checked then
        Result:=' '+DireiraEsquera(0, FormatFloat('###,##0.00',PerFor),8,'D')+'%'
      else
        Result:='';
    end;
begin
  inherited;
  if DiaPeriodo='DIA' then begin
    if CheckBox16.Checked then
      FiltroDiversasFormasx2( DateEdit3.date,'V' )
    else if CheckBox17.Checked then
      FiltroDiversasFormasx2( DateEdit3.date,'C' )
    else
      FiltroDiversasFormasx( DateEdit3.date);
    lista:=ListBox2;
  end;
  if DiaPeriodo='PERIODO' then begin
    if CheckBox16.Checked then
      FiltroDiversasFormasxy2(  DateEdit4.date,DateEdit5.date,'V')
    else if CheckBox17.Checked then
      FiltroDiversasFormasxy2(  DateEdit4.date,DateEdit5.date,'C')
    else
      FiltroDiversasFormasxY( DateEdit4.date,DateEdit5.date);
    lista:=ListBox3;
  end;
  DADOSFRENTEf.DiversasFormasX.First;
  while not DADOSFRENTEf.DiversasFormasX.Eof do begin
     if DADOSFRENTEf.DiversasFormasX.FieldByName('FORMADEPAGAMENTO').AsString='Dinheiro' then
       TotalDinheiro:=TotalDinheiro+DADOSFRENTEf.DiversasFormasX.FieldByName('VALOR').AsFloat;
     if DADOSFRENTEf.DiversasFormasX.FieldByName('FORMADEPAGAMENTO').AsString='Cheque' then
       TotalCheque:=TotalCheque+DADOSFRENTEf.DiversasFormasX.FieldByName('VALOR').AsFloat;
     if DADOSFRENTEf.DiversasFormasX.FieldByName('FORMADEPAGAMENTO').AsString='Cheque a Prazo' then
       TotalChequePrazo:=TotalChequePrazo+DADOSFRENTEf.DiversasFormasX.FieldByName('VALOR').AsFloat;
     if DADOSFRENTEf.DiversasFormasX.FieldByName('FORMADEPAGAMENTO').AsString='Cartão de Debito' then
       TotalCartaoDebito:=TotalCartaoDebito+DADOSFRENTEf.DiversasFormasX.FieldByName('VALOR').AsFloat;
     if DADOSFRENTEf.DiversasFormasX.FieldByName('FORMADEPAGAMENTO').AsString='Cartão de Crédito' then
       TotalCartaoCredito:=TotalCartaoCredito+DADOSFRENTEf.DiversasFormasX.FieldByName('VALOR').AsFloat;
     if DADOSFRENTEf.DiversasFormasX.FieldByName('FORMADEPAGAMENTO').AsString='Conta a Prazo' then
       TotalContaPrazo:=TotalContaPrazo+DADOSFRENTEf.DiversasFormasX.FieldByName('VALOR').AsFloat;
     if DADOSFRENTEf.DiversasFormasX.FieldByName('FORMADEPAGAMENTO').AsString='Boleto' then
       TotalBoleto:=TotalBoleto+DADOSFRENTEf.DiversasFormasX.FieldByName('VALOR').AsFloat;
     if DADOSFRENTEf.DiversasFormasX.FieldByName('FORMADEPAGAMENTO').AsString='Deposito' then
       TotalDeposito:=TotalDeposito+DADOSFRENTEf.DiversasFormasX.FieldByName('VALOR').AsFloat;
     TotalGeral:=TotalGeral+DADOSFRENTEf.DiversasFormasX.FieldByName('VALOR').AsFloat;
     DADOSFRENTEf.DiversasFormasX.Next;
  end;

  if CheckBox10.Checked then begin
    TituloPercentual:='Percentual';
    Risco:='----------';
  end
  else begin
    TituloPercentual:='';
    Risco:='';
  end;
  lista.Items.Clear;
  if lista=ListBox2 then
    lista.Items.Add('Data das Formas de Pagamento '+DateEdit3.Text);
  if lista=ListBox3 then
   lista.Items.Add('Perido de '+DateEdit4.text+' a '+DateEdit5.text);
  lista.Items.Add('--------------------------------------'+Risco);
  lista.Items.Add('Formas a Vista........................'+TituloPercentual);
  lista.Items.Add('Dinheiro --------------->  '+DireiraEsquera(0, FormatFloat('###,##0.00',TotalDinheiro),11,'D')+PercentualForma(TotalDinheiro));
  lista.Items.Add('Cheque ----------------->  '+DireiraEsquera(0, FormatFloat('###,##0.00',TotalCheque),11,'D')+PercentualForma(TotalCheque));
  lista.Items.Add('--------------------------------------'+Risco);
  lista.Items.Add('Total Formas a Vista---->  '+DireiraEsquera(0, FormatFloat('###,##0.00',TotalDinheiro+TotalCheque),11,'D')+
  PercentualForma(TotalDinheiro+TotalCheque));
  lista.Items.Add('--------------------------------------'+Risco);
  lista.Items.Add('Formas a a Prazo......................'+TituloPercentual);
  lista.Items.Add('Cartão de Debito ------->  '+DireiraEsquera(0, FormatFloat('###,##0.00',TotalCartaoDebito),11,'D')+PercentualForma(TotalCartaoDebito));
  lista.Items.Add('Cartão de Crédito ------>  '+DireiraEsquera(0, FormatFloat('###,##0.00',TotalCartaoCredito),11,'D')+PercentualForma(TotalCartaoCredito));
  lista.Items.Add('Conta a Prazo ---------->  '+DireiraEsquera(0, FormatFloat('###,##0.00',TotalContaPrazo),11,'D')+PercentualForma(TotalContaPrazo));
  lista.Items.Add('Boleto ----------------->  '+DireiraEsquera(0, FormatFloat('###,##0.00',TotalBoleto),11,'D')+PercentualForma(TotalBoleto));
  lista.Items.Add('--------------------------------------'+Risco);
  lista.Items.Add('Total Formas a Prazo---->  '+DireiraEsquera(0, FormatFloat('###,##0.00',TotalCartaoDebito+TotalCartaoCredito+TotalContaPrazo+TotalBoleto+TotalBoleto+TotalDeposito),11,'D')+
  PercentualForma(TotalCartaoDebito+TotalCartaoCredito+TotalContaPrazo+TotalBoleto+TotalBoleto+TotalDeposito));
  lista.Items.Add('--------------------------------------'+Risco);
  lista.Items.Add('Total Geral ------------>  '+DireiraEsquera(0, FormatFloat('###,##0.00',TotalGeral),11,'D')+PercentualForma(TotalGeral));
  // lista.Items.Add('Total de linhas--------->  '+InttoSTr(lista.Items.Count));
  lista.SetFocus;
end;

procedure TGERALFRENTEF.Button3Click(Sender: TObject);
begin
  inherited;
  if (DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString='') or
    (DADOSFRENTEf.DADOCLIE.Active=false) then begin
    ShowMessage('Informe o Cliente Primeiro !!!');
    RxDBComboEdit4.SetFocus;
  end
  else if (CodVen.Text='') or (CodVen.Text='     ') then begin
    ShowMessage('Informe o Vendedor Primeiro !!!');
    CodVen.SetFocus;
  end
  else begin
    Entregador:=Entregadorx.Text;
    Portadorx:=Portador.Text;
    Vendedorxyz:=CodVen.Text;
    ConfirmaFechamento:='S';
    MeioPagamento:='';
    DADOSFRENTEf.VENDAS_ECF2.FieldByName('VENDEDOR').AsString:=CodVen.Text;
    DADOSFRENTEf.VENDAS_ECF2.Post;

    DADOSFRENTEf.DADOCLIE.Edit;
    DADOSFRENTEf.DADOCLIE.FieldByName('PORTADOR').AsString:=Portador.Text;
    DADOSFRENTEf.DADOCLIE.FieldByName('ENTREGADOR').AsString:=Entregadorx.Text;
    DADOSFRENTEf.DADOCLIE.FieldByName('OBSERVACAO').AsString:=Observaçoes.Text;
    DADOSFRENTEf.DADOCLIE.Post;
    close;
  end;
end;

procedure TGERALFRENTEF.Button4Click(Sender: TObject);
begin
  inherited;
  ConfirmaFechamento:='N';
  MeioPagamento:='Cancela';
  if DADOSFRENTEf.DADOCLIE.Active=true then begin
    // DADOSFRENTEf.DADOCLIE.Delete;
    DADOSFRENTEf.DADOCLIE.Close;
  end;
  close;
end;

procedure TGERALFRENTEF.Button5Click(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.VENDAS_ECF2.Open;
  if DADOSFRENTEf.DADOCLIE.FieldByName('CODIGO').AsString<>'' then begin
    FiltroVeiculo:=DADOSFRENTEf.DADOCLIE.FieldByName('CODIGO').AsString;
    FiltroClienteVeiculo:=DADOSFRENTEf.DADOCLIE.FieldByName('CODIGO').AsString;
    CupomVeiculo:=DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString;
    DataVeiculo:=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime;
    with TGERALFRENTEF.Create(Self) do begin
      Width:=Panel120.Width;
      Height:=Panel120.Height;
      DBDateEdit1.Enabled:=false;
      DBEdit44.Enabled:=false;
      DBEdit45.Enabled:=false;
      DBEdit46.Enabled:=false;
      NxNotebook61.ActivePageIndex:=8;
      DADOS_CADASTROSf.OLEO.Close;
      DADOS_CADASTROSf.OLEO.CachedUpdates:=true;
      DADOS_CADASTROSf.OLEO.Open;
      DADOS_CADASTROSf.OLEO.Append;
      ShowModal;
    end;
  end;
end;

procedure TGERALFRENTEF.Button6Click(Sender: TObject);
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

procedure TGERALFRENTEF.Button7Click(Sender: TObject);
begin
  inherited;
  TotalGeralContaBaixar:=0;
  close;
end;

procedure TGERALFRENTEF.Button8Click(Sender: TObject);

  procedure Mensagemdebloqueio(Mensagem:integer);
  var Mensagemx1, Mensagemx2:string;
  begin
    if Mensagem=1 then begin
      Mensagemx1:='Limite de Crédito do Cliente foi Ultrapassado !!!';
      Mensagemx2:='Não é permitido fazer ventas para esse Cliente !!!';
    end
    else if Mensagem=2 then begin
      Mensagemx1:='(Aviso)-> Limite de Crédito do Cliente foi Ultrapassado <-(Aviso) !!!';
      Mensagemx2:='(Aviso)-> Informe ao Cliente que ele precisa acertar os debitos <-(Aviso) !!!';
    end
    else if Mensagem=3 then begin
      Mensagemx1:='Cliente está com Vencimentos Atrazados !!!';
      Mensagemx2:='Não é permitido fazer ventas para esse Cliente !!!';
    end;

    if (Mensagem=1) or  (Mensagem=2) then begin
      ShowMessage(
                  Mensagemx1+#13+#13+
                  Mensagemx2+#13+#13+
                  'Código.: '+DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString+
                  ' - Nome.: '+DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('NOME').AsString+#13+#13+

                  'Dias de Atrazo nos Vencimentos: '+ IntToStr(bloqueiadia+DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('DIADEBLOQUEIO').AsInteger)+#13+#13+
                  'Limite de Crédito do Cliente era de : '+
                  FormatFloat('###,##0.00',DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('LIMITEDEDEBITOS').AsFloat)+#13+#13+
                  'Limite de Crédito foi Ultrapassado em  : '+
                  FormatFloat('###,##0.00',
                  abs(DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('LIMITEDEDEBITOS').AsFloat-(SomaAnterior+TotalParcelamento))
                  )+#13+#13+
                  'Total de Debidos do Cliente são : '+#13+#13+
                  'Debitos anteriores são: '+
                  FormatFloat('###,##0.00',SomaAnterior)+#13+#13+
                  'A Prazo atual desta venda é: '+
                  FormatFloat('###,##0.00',TotalParcelamento)+#13+#13+
                  'Total de: '+
                  FormatFloat('###,##0.00',SomaAnterior+TotalParcelamento)
                  );
    end
    else begin
      ShowMessage(
                  Mensagemx1+#13+#13+
                  Mensagemx2+#13+#13+
                  'Código.: '+DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString+
                  ' - Nome.: '+DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('NOME').AsString+#13+#13+
                  'Dias de Atrazo nos Vencimentos: '+ IntToStr(bloqueiadia+DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('DIADEBLOQUEIO').AsInteger)+#13+#13+

                  'Valor dos Vencimentos Atrazados: '+
                  FormatFloat('###,##0.00',VencimentosAtrazados)+#13+#13+

                  'Total de Debidos do Cliente são : '+#13+#13+
                  'Debitos anteriores são: '+
                  FormatFloat('###,##0.00',SomaAnterior)+#13+#13+
                  'A Prazo atual desta venda é: '+
                  FormatFloat('###,##0.00',TotalParcelamento)+#13+#13+
                  'Total de: '+
                  FormatFloat('###,##0.00',SomaAnterior+TotalParcelamento)
                  );
    end;
  end;

begin
  inherited;
  if ContaPagarReceber='Pagar' then begin
    GeraContasAPagar(ClienteComprax);
    close;
  end
  else begin
    if DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('DIADEBLOQUEIO').AsString<>'' then begin
      bloqueiadia:=bloqueiadia-DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('DIADEBLOQUEIO').AsInteger;
    end;

    DADOSFRENTEf.CADASTRO_CLIENTES.Refresh;
    if (DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('LIMITEDEDEBITOS').AsFloat<SomaAnterior+TotalParcelamento) and
       (DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('LIMITEDEDEBITOS').AsFloat<>0) and
       (DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('VENDASAPOSBLOQUEIO').AsBoolean=false)
     then begin
      Mensagemdebloqueio(1);
    end
    else if (DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('DIADEBLOQUEIO').AsString<>'') and
      (bloqueiadia>0) then begin
      Mensagemdebloqueio(3);
    end
    else if DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('BLOQUEIAAPRAZO').AsBoolean=true then begin
      ShowMessage('Cliente se encontra bloqueado !!!'+#13+#13+
      'Código.: '+DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString+
      ' - Nome.: '+DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('NOME').AsString+#13+#13+
      'Impossibilitado de fazer compras a prazo  !!!');
    end
    else begin
    if DADOSFRENTEf.duplicatas.IsEmpty then begin
      ShowMessage('Parcelas não foram geradas !!!');
      Button10.SetFocus;
    end
    else begin
        if DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('VENDASAPOSBLOQUEIO').AsBoolean=true then
          Mensagemdebloqueio(2);
        cxGrid3.Visible:=false;
        if FloatToStr(TotaldasParecelasReceberPagar)<>FloatToStr(TotalParcelas) then begin
          if ContaPagarReceber='Pagar' then
            ShowMessage('Total das Parcelas tem que ser igual Total das Vendas !!!')
          else
            ShowMessage('Total das Parcelas tem que ser igual Total das Compras !!!');
          cxGrid3.SetFocus;
        end
        else begin
          GeraContaAReceber;
          close;
        end;
      end;
    end;
  end;
end;

procedure TGERALFRENTEF.Button9Click(Sender: TObject);
begin
  inherited;
  cxGrid3.Visible:=false;
  DADOSFRENTEf.duplicatas.Open;
  DADOSFRENTEf.duplicatas.First;
  while not DADOSFRENTEf.duplicatas.Eof do
  begin
    DADOSFRENTEf.duplicatas.Delete;
  end;
  MeioPagamento:='Cancela';
  close;
end;

procedure TGERALFRENTEF.CheckBox16Enter(Sender: TObject);
begin
  inherited;
  CheckBox17.Checked:=false;
end;

procedure TGERALFRENTEF.CheckBox17Enter(Sender: TObject);
begin
  inherited;
  CheckBox16.Checked:=false;
end;

procedure TGERALFRENTEF.CodVen2ButtonClick(Sender: TObject);
begin
  inherited;
  NomeVendedor;
end;

procedure TGERALFRENTEF.CodVen2Exit(Sender: TObject);
begin
  inherited;
  // CodVen.Text:=CodVen2.Text;
  Vendedorxyz:=CodVen2.Text;
  CodVen.Text:=CodVen2.Text;
  LocalizaVendedor;
  if NxPanel182.Caption='' then begin
    ShowMessage('Vendedor Inexistente !!!');
    CodVen2.Clear;
    CodVen2.SetFocus;
  end
  else
    cxGrid7.SetFocus;
end;

procedure TGERALFRENTEF.CodVen2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    NomeVendedor;
end;

procedure TGERALFRENTEF.CodVenButtonClick(Sender: TObject);
begin
  inherited;
  NomeVendedor;
end;

procedure TGERALFRENTEF.CodVenExit(Sender: TObject);
begin
  inherited;
  Vendedorxyz:=CodVen.Text;
  LocalizaVendedor;
  if Panel15.Caption='' then begin
    ShowMessage('Vendedor Inexistente !!!');
    CodVen.Clear;
    CodVen.SetFocus;
  end;
end;

procedure TGERALFRENTEF.CodVenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    NomeVendedor;
end;

procedure TGERALFRENTEF.CodVenxButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TGERALFRENTEF.CodVenxExit(Sender: TObject);
begin
  inherited;
  if CodVenx.Text<>'' then begin
    VENDEDORx.Open;
    VENDEDORx.Locate('CODIGO',CodVenx.Text,[]);
    NxPanel17.Caption:=VENDEDORx.FieldByName('Nome').AsString;
  end;
end;

procedure TGERALFRENTEF.CodVenxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f21 then begin
    if CodVen.Focused=true then begin
      ConsultaVendedores;
    end;
    if ComboEdit1x.Focused=true then begin
      ConsultaHISTORIC;
    end;
    if ComboEdit2x.Focused=true then begin
      ConsultaSUB_HIST;
    end;
  end;
  if key=vk_f3 then
    Pesquisa;
end;

procedure TGERALFRENTEF.ComboEdit1xExit(Sender: TObject);
begin
  inherited;
  if ComboEdit1x.Text<>'' then begin
    HISTORIC.Open;
    HISTORIC.Locate('CODIGO',ComboEdit1x.Text,[]);
    NxPanel27x.Caption:=HISTORIC.FieldByName('Nome').AsString;
  end;
end;

procedure TGERALFRENTEF.ComboEdit2xExit(Sender: TObject);
begin
  inherited;
  if ComboEdit2x.Text<>'' then begin
    SUB_HIST.Open;
    SUB_HIST.Locate('CODIGO',ComboEdit2x.Text,[]);
    NxPanel29.Caption:=SUB_HIST.FieldByName('Nome').AsString;
  end;
end;

procedure TGERALFRENTEF.ComboEdit3xButtonClick(Sender: TObject);
begin
  inherited;
  OpcoesSangSupr;
end;

procedure TGERALFRENTEF.ComboEdit3xKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    OpcoesSangSupr;
end;

procedure TGERALFRENTEF.ComboEdit4xButtonClick(Sender: TObject);
begin
  inherited;
  OpcoesSangSupr;
end;

procedure TGERALFRENTEF.ComboEdit4xKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    OpcoesSangSupr;
end;

procedure TGERALFRENTEF.OpcoesSangSupr;
begin
  with TGERALFRENTEF.Create(Self) do begin
    Width:=Panel36.Width;
    Height:=Panel36.Height;
    NxNotebook61.ActivePageIndex:=12;
    ShowModal;
  end;

  if OpSangSupr='1' then begin
    ConsultaClientes;
    if CodigoConsulta<>'' then begin
      // DADOSFRENTEf.CADASTRO_CLIENTES.open;
      FiltraQuery(DADOSFRENTEf.CADASTRO_CLIENTES,'CLIENTES',CodigoConsulta);
      // if DADOSFRENTEf.CADASTRO_CLIENTES.locate('CODIGO',CodigoConsulta,[]) then
      if not DADOSFRENTEf.CADASTRO_CLIENTES.IsEmpty then
      begin
        if ComboEdit3x.Focused=true then begin
          ComboEdit3x.Text:=DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName(
            'NOME').AsString;

          Edit2.Text:=DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName(
            'ENDERECO').AsString+', '+DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName(
            'NUMERO').AsString;
        end;

        if ComboEdit4x.Focused=true then begin

          ComboEdit4x.Text:=DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName(
            'NOME').AsString;

          Edit4.Text:=DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName(
            'ENDERECO').AsString+', '+DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName(
            'NUMERO').AsString;

          if DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CNPJ').AsString<>'' then
             Edit3.Text:=DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName(
               'CNPJ').AsString
          else if DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CPF').AsString<>
          '' then
             Edit3.Text:=DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName(
               'CPF').AsString
          else if DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('RG').AsString<>
          '' then
             Edit3.Text:=DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName(
               'RG').AsString;

        end;
      end;
    end;
  end;

  if OpSangSupr='2' then begin
    ConsultaFornecedores;
    if CodigoConsulta<>'' then begin
      DADOSFRENTEf.CADASTRO_FORNECEDORES.open;
      if DADOSFRENTEf.CADASTRO_FORNECEDORES.locate('CODIGO',CodigoConsulta,[])
      then
      begin
        if ComboEdit3x.Focused=true then begin
          ComboEdit3x.Text:=DADOSFRENTEf.CADASTRO_FORNECEDORES.FieldByName(
            'NOME').AsString;

          Edit2.Text:=DADOSFRENTEf.CADASTRO_FORNECEDORES.FieldByName(
            'ENDERECO').AsString+', '+DADOSFRENTEf.CADASTRO_FORNECEDORES.FieldByName(
            'NUMERO').AsString;
        end;
        if ComboEdit4x.Focused=true then begin

          ComboEdit4x.Text:=DADOSFRENTEf.CADASTRO_FORNECEDORES.FieldByName(
            'NOME').AsString;

          Edit4.Text:=DADOSFRENTEf.CADASTRO_FORNECEDORES.FieldByName(
            'ENDERECO').AsString+', '+DADOSFRENTEf.CADASTRO_FORNECEDORES.FieldByName(
            'NUMERO').AsString;

          if DADOSFRENTEf.CADASTRO_FORNECEDORES.FieldByName('CNPJ').AsString<>'' then
             Edit3.Text:=DADOSFRENTEf.CADASTRO_FORNECEDORES.FieldByName(
               'CNPJ').AsString
          else if DADOSFRENTEf.CADASTRO_FORNECEDORES.FieldByName('CPF').AsString<>
          '' then
             Edit3.Text:=DADOSFRENTEf.CADASTRO_FORNECEDORES.FieldByName(
               'CPF').AsString
          else if DADOSFRENTEf.CADASTRO_FORNECEDORES.FieldByName('RG').AsString<>
          '' then
             Edit3.Text:=DADOSFRENTEf.CADASTRO_FORNECEDORES.FieldByName(
               'RG').AsString;


        end;
      end;
    end;
  end;

  if OpSangSupr='3' then begin
    ConsultaVendedores;
    if CodigoConsulta<>'' then begin
      DADOSFRENTEf.VENDEDORES.open;
      if DADOSFRENTEf.VENDEDORES.locate('CODIGO',CodigoConsulta,[])
      then
      begin
        if ComboEdit3x.Focused=true then begin
          ComboEdit3x.Text:=DADOSFRENTEf.VENDEDORES.FieldByName(
            'NOME').AsString;

          Edit2.Text:=DADOSFRENTEf.VENDEDORES.FieldByName(
            'ENDERECO').AsString+', '+DADOSFRENTEf.VENDEDORES.FieldByName(
            'NUMERO').AsString;
        end;

        if ComboEdit4x.Focused=true then begin

          ComboEdit4x.Text:=DADOSFRENTEf.VENDEDORES.FieldByName(
            'NOME').AsString;

          Edit4.Text:=DADOSFRENTEf.VENDEDORES.FieldByName(
            'ENDERECO').AsString+', '+DADOSFRENTEf.VENDEDORES.FieldByName(
            'NUMERO').AsString;

          if DADOSFRENTEf.VENDEDORES.FieldByName('CPF').AsString<>
          '' then
             Edit3.Text:=DADOSFRENTEf.VENDEDORES.FieldByName(
               'CPF').AsString
          else if DADOSFRENTEf.VENDEDORES.FieldByName('RG').AsString<>
          '' then
             Edit3.Text:=DADOSFRENTEf.VENDEDORES.FieldByName(
               'RG').AsString;
        end;
      end;
    end;
  end;

  if OpSangSupr='4' then begin
    DADOSFRENTEf.EMITENTE.Open;
    if ComboEdit3x.Focused=true then begin
      ComboEdit3x.Text:=DADOSFRENTEf.EMITENTE.FieldByName(
        'NOME').AsString;

      Edit2.Text:=DADOSFRENTEf.EMITENTE.FieldByName(
        'ENDERECO').AsString+', '+DADOSFRENTEf.EMITENTE.FieldByName(
        'NUMERO').AsString;
    end;

    if ComboEdit4x.Focused=true then begin

      ComboEdit4x.Text:=DADOSFRENTEf.EMITENTE.FieldByName(
        'NOME').AsString;

      Edit4.Text:=DADOSFRENTEf.EMITENTE.FieldByName(
        'ENDERECO').AsString+', '+DADOSFRENTEf.EMITENTE.FieldByName(
        'NUMERO').AsString;

      if DADOSFRENTEf.EMITENTE.FieldByName('CNPJ').AsString<>'' then
         Edit3.Text:=DADOSFRENTEf.EMITENTE.FieldByName('CNPJ').AsString;

    end;
  end;
end;

procedure TGERALFRENTEF.cxButton115Click(Sender: TObject);
begin
  inherited;
  ConsultaCaixaAnterior('S');
end;

procedure TGERALFRENTEF.cxButton128Click(Sender: TObject);
begin
  inherited;
  with TGERALFRENTEF.Create(Self) do begin
    Width:=Panel54.Width;
    Height:=Panel54.Height;

    DADOSFRENTEf.CONF_PADRAO.Open;
    DateEdit6.Date:=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime;
    DateEdit7.Date:=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime;

    ComboBox1.Text:='1';
    ComboBox2.Text:='1';

    Codper.Text:=DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString;
    ComboBox3.Text:=DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString;

    NxNotebook61.ActivePageIndex:=10;
    ShowModal;
  end;
end;

procedure TGERALFRENTEF.cxButton1Click(Sender: TObject);
begin
  inherited;
  with TGERALFRENTEF.Create(Self) do begin
    Width:=Panel172.Width;
    Height:=Panel172.Height;
    NxNotebook61.ActivePageIndex:=18;
    DADOSFRENTEf.DiversasFormasX.Open;
    DADOSFRENTEf.DiversasFormasX.Refresh;
    DADOSFRENTEf.DiversasFormasX.Last;
    ShowModal;
  end;
end;

procedure TGERALFRENTEF.cxButton24Click(Sender: TObject);
var DataAnterior,Lancamento:string;
begin
  inherited;
  if CheckBox6.Checked then
    Datacai.Date:=Datacai.Date+1;
  while True do begin
    ShowMessage('Confirme o Próximo Operador do Caixa !!!');
    ConsultaOperadores;
    if CodigoConsulta='' then begin
      ShowMessage('Operador nâo informado. Confirme o Próximo Operador do Caixa !!!');
    end
    else
      break
  end;
  if ConsultaCaixa='S' then begin
    ShowMessage('Caixa só de Consutal, não pode ser Fechado !!!');
  end
  else begin
    if Application.MessageBox('Tem certeza que deseja Fechar o Caixa ?','Confirmação',
      MB_YESNO + MB_ICONQUESTION)= ID_YES then begin
      cxButton24.Visible:=false;
      CurrencyEdit3.Visible:=false;
      Label64.Visible:=false;
      cxButton74.Visible:=false;
      cxButton56.Visible:=false;
      cxButton58.Visible:=false;
      cxButton59.Visible:=false;
      cxButton73.Visible:=false;
      CheckBox1.Visible:=false;
      cxButton56.Visible:=false;
      APPLAUDATES:='S';
      cxButton75.Visible:=true;
      DADOSFRENTEf.CONF_PADRAO.Close;
      DADOSFRENTEf.CONF_PADRAO.CachedUpdates:=true;
      DADOSFRENTEf.CONF_PADRAO.Open;
      if Datacai.Date<DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime then
      begin
        ShowMessage('Data não pode ser menor que Caixa Anterior !!!');
        Datacai.SetFocus;
      end
      else if Datacai.Date=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime
      then begin
        if DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString='9' then begin
          ShowMessage('Limite de Turnos é 9');
        end
        else begin
          DADOSFRENTEf.CONF_PADRAO.Edit;
          DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString:=CodigoConsulta;
          DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString:=
            IntToStr(DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsInteger+1);
          DADOSFRENTEf.CONF_PADRAO.Post;
          DADOSFRENTEf.CAIXA.Last;
          NumedordoLancamento;
          Lancamento:=BaixaContasAReceberNumedor;
          FechamentoCaixa:='S';
          InformacoesFechamentoDeCaixa('Saldo anterior do dia '+Datacai.Text,
            SaldTot.Value);
          FechamentoCaixa:='';
          Edit2.Text:=DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString;
          DADOSFRENTEf.CAIXA.Filter:='CODIGO>'+Lancamento;
          DADOSFRENTEf.CAIXA.Filtered:=true;
        end;
      end
      else if Datacai.Date>DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime
      then begin
        DADOSFRENTEf.CONF_PADRAO.Edit;
        DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString:=CodigoConsulta;
        DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString:='1';
        DataAnterior:=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsVariant;
        DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime:=Datacai.Date;
        DADOSFRENTEf.CONF_PADRAO.Post;
        DADOSFRENTEf.CAIXA.Last;
        NumedordoLancamento;
        Lancamento:=BaixaContasAReceberNumedor;
        FechamentoCaixa:='S';
        InformacoesFechamentoDeCaixa('Saldo anterior do dia '+DataAnterior,
          SaldTot.Value);
        FechamentoCaixa:='';
        Edit2.Text:=DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString;
        // DADOSFRENTEf.CAIXA.Filter:='CODIGO>'+Lancamento;
        // DADOSFRENTEf.CAIXA.Filtered:=true;
      end;
    end;
  end;
  BaixaContasAReceberNumedor:='';
  cxButton75.SetFocus;
end;

procedure TGERALFRENTEF.cxButton25Click(Sender: TObject);
begin
  inherited;
  APPLAUDATES:='N';

  DADOSFRENTEf.CAIXA.Filter:='';
  DADOSFRENTEf.CAIXA.Filtered:=false;

  DADOSFRENTEf.CONF_PADRAO.Close;
  DADOSFRENTEf.CONF_PADRAO.CachedUpdates:=false;

  DADOSFRENTEf.CAIXA.Close;
  DADOSFRENTEf.CAIXA.CachedUpdates:=false;

  FechaFechamento;
end;

procedure TGERALFRENTEF.FechaFechamento;
begin
  if (ParamStr(1)='Consulta') then
    application.Terminate
  else
    close;
end;

procedure TGERALFRENTEF.cxButton27Click(Sender: TObject);
begin
  inherited;
  ValorForma.Enabled:=true;
  FormaAvistaPrazo:='P';
  IncluiDiversasFormas('Deposito');
  FocaValorForma;
end;

procedure TGERALFRENTEF.cxButton3Click(Sender: TObject);
begin
  inherited;
  TelaImpressora:='T';
  close;
end;

procedure TGERALFRENTEF.cxButton46Click(Sender: TObject);
begin
  inherited;
  ValorForma.Enabled:=true;
  FormaAvistaPrazo:='A';
  IncluiDiversasFormas('Dinheiro');
  FocaValorForma;
end;

procedure TGERALFRENTEF.cxButton47Click(Sender: TObject);
begin
  inherited;
  ValorForma.Enabled:=true;
  FormaAvistaPrazo:='A';
  IncluiDiversasFormas('Cheque');
  FocaValorForma;
end;

procedure TGERALFRENTEF.cxButton4Click(Sender: TObject);
begin
  inherited;
  TelaImpressora:='I';
  close;
end;

procedure TGERALFRENTEF.cxButton50Click(Sender: TObject);
begin
  inherited;
  ParcelasdasFormas;
  ValorForma.Enabled:=true;
  FormaAvistaPrazo:='P';
  IncluiDiversasFormas('Conta a Prazo');
  MeioPagamento:='Conta a Prazo';
  FocaValorForma;
end;

procedure TGERALFRENTEF.cxButton51Click(Sender: TObject);
begin
  inherited;
  ParcelasdasFormas;
  ValorForma.Enabled:=true;
  FormaAvistaPrazo:='P';
  IncluiDiversasFormas('Cheque a Prazo');
  FocaValorForma;
end;

procedure TGERALFRENTEF.ParcelasdasFormas;
begin
  with TGERALFRENTEF.Create(Self) do begin
    Width:=Panel159.Width;
    Height:=Panel159.Height;
    NxNotebook61.ActivePageIndex:=17;
    ShowModal;
  end;
end;


procedure TGERALFRENTEF.ParcelasxyzKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
     Button32.Click;
end;

procedure TGERALFRENTEF.cxButton52Click(Sender: TObject);
begin
  inherited;
  ParcelasdasFormas;
  ValorForma.Enabled:=true;
  FormaAvistaPrazo:='P';
  IncluiDiversasFormas('Cartão de Crédito');
  FocaValorForma;
end;

procedure TGERALFRENTEF.cxButton53Click(Sender: TObject);
begin
  inherited;
  Modalidade:=tcxButton(sender).Caption;
  OpSangSupr:=copy(tcxButton(sender).Caption,2,1);
  Close;
end;

procedure TGERALFRENTEF.cxButton54Click(Sender: TObject);
begin
  inherited;
  Modalidade:=tcxButton(sender).Caption;
  OpSangSupr:=copy(tcxButton(sender).Caption,2,1);
  Close;
end;

procedure TGERALFRENTEF.cxButton55Click(Sender: TObject);
begin
  inherited;
  Modalidade:=tcxButton(sender).Caption;
  OpSangSupr:=copy(tcxButton(sender).Caption,2,1);
  Close;
end;

procedure TGERALFRENTEF.cxButton56Click(Sender: TObject);
begin
  inherited;
  ConsultaCaixaAnterior('G');
end;

procedure TGERALFRENTEF.cxButton57Click(Sender: TObject);
begin
  inherited;
  Modalidade:=tcxButton(sender).Caption;
  OpSangSupr:=copy(tcxButton(sender).Caption,2,1);
  Close;
end;

procedure TGERALFRENTEF.cxButton58Click(Sender: TObject);
begin
  inherited;
  cxGrid2.Visible:=false;
  MesAnoRelatorio:=Copy(Datacai.Text,4,2)+Copy(Datacai.Text,7,4);
  NomeDoArquivo:='CAIXA';
  if (DateEdit1.Date<>0)  and (DateEdit2.Date<>0) then begin
    DADOSFRENTEf.CAIXA_x.SQL.Clear;
    DADOSFRENTEf.CAIXA_x.SQL.Add('SELECT * FROM CAIXA WHERE ' +
      'DATA>= :_dataini and DATA<= :_dataFin order by CODIGO');
    DADOSFRENTEf.CAIXA_x.ParamByName('_dataini').asdatetime :=
      DateEdit1.Date;
    DADOSFRENTEf.CAIXA_x.ParamByName('_dataFin').asdatetime :=
      DateEdit2.Date;
    DADOSFRENTEf.CAIXA_x.Open;
    DADOSFRENTEf.CAIXA_x.First;
    ImprimeCaixa(DADOSFRENTEf.CAIXA_x,'S');
  end
  else
    ImprimeCaixa(DADOSFRENTEf.CAIXA,'S');
  cxGrid2.Visible:=true;
end;

procedure TGERALFRENTEF.cxButton59Click(Sender: TObject);
begin
  inherited;
  if (DADOSFRENTEf.CAIXA.FieldByName('HISTORICOC').AsString='Sangria') or
     (DADOSFRENTEf.CAIXA.FieldByName('HISTORICOC').AsString='Suprimento') or
     (Copy(DADOSFRENTEf.CAIXA.FieldByName('HISTORICOC').AsString,1,4)='REC.')
      then
    begin
    if (Copy(DADOSFRENTEf.CAIXA.FieldByName('HISTORICOC').AsString,1,4)='REC.') then begin
      DADOS_CADASTROSf.EMITENTE.Open;
      ReciboCaixa(DADOSFRENTEf.CAIXA.FieldByName('VALOR').AsFloat,

      DADOSFRENTEf.CAIXA.FieldByName('HISTORICOC').AsString,
      '',
      DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString,
      DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString,
      DADOS_CADASTROSf.EMITENTE.FieldByName('ENDERECO').AsString,
      DADOSFRENTEf.CAIXA.FieldByName('OBSERVACAO').AsString,
      // DADOSFRENTEf.CAIXA.FieldByName('HISTORICOC').AsString,
      Panel35.Caption,
      DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString);

    end
    else
      ImprimeRecibo;
  end
  else
    ShowMessage('Impressão de Recibos só para Sangria ou Suprimento e Recebimento de Contas !!!');
end;

procedure TGERALFRENTEF.ImprimeRecibo;
begin
  {
  Recibo(DADOSFRENTEf.CAIXA.FieldByName('CODIGO').AsString,
    DADOSFRENTEf.CAIXA.FieldByName('HISTORICOC').AsString,
    DADOSFRENTEf.CAIXA.FieldByName('RECEBEMOS').AsString,
    DADOSFRENTEf.CAIXA.FieldByName('ENDERECOR').AsString,
    DADOSFRENTEf.CAIXA.FieldByName('OBSERVACAO').AsString,
    DADOSFRENTEf.CAIXA.FieldByName('EMITENTE').AsString,
    DADOSFRENTEf.CAIXA.FieldByName('DOC_EMITE').AsString,
    DADOSFRENTEf.CAIXA.FieldByName('ENDERECOE').AsString,'S',
    DADOSFRENTEf.CAIXA.FieldByName('VALOR').AsFloat,
    DADOSFRENTEf.CAIXA.FieldByName('DATA').AsDateTime);

    ReciboCaixa(valor:double;
    Rec01,
    Rec02,
    Emi01,
    Emi02,
    Emi03,
    Referente,
    SanSupDev,
    LancamentoCaixa:string);


  ReciboCaixa(DADOSFRENTEf.CAIXA.FieldByName('VALOR').AsFloat,
    DADOSFRENTEf.CAIXA.FieldByName('RECEBEMOS').AsString,
    DADOSFRENTEf.CAIXA.FieldByName('ENDERECOR').AsString,
    DADOSFRENTEf.CAIXA.FieldByName('EMITENTE').AsString,
    DADOSFRENTEf.CAIXA.FieldByName('DOC_EMITE').AsString,
    DADOSFRENTEf.CAIXA.FieldByName('ENDERECOE').AsString,
    DADOSFRENTEf.CAIXA.FieldByName('HISTORICOC').AsString,
    'S',
    DADOSFRENTEf.CAIXA.FieldByName('CODIGO').AsString);
    }
  while true do begin
    if Application.Messagebox('Deseja Imprimir o Recibo ?','Confirmação',MB_YESNO+MB_ICONQUESTION)=IDYES then begin
    ReciboCaixa(DADOSFRENTEf.CAIXA.FieldByName('VALOR').AsFloat,
      DADOSFRENTEf.CAIXA.FieldByName('RECEBEMOS').AsString,
      DADOSFRENTEf.CAIXA.FieldByName('ENDERECOR').AsString,
      DADOSFRENTEf.CAIXA.FieldByName('EMITENTE').AsString,
      DADOSFRENTEf.CAIXA.FieldByName('DOC_EMITE').AsString,
      DADOSFRENTEf.CAIXA.FieldByName('ENDERECOE').AsString,
      DADOSFRENTEf.CAIXA.FieldByName('OBSERVACAO').AsString,
      // DADOSFRENTEf.CAIXA.FieldByName('HISTORICOC').AsString,
      Panel35.Caption,
      DADOSFRENTEf.CAIXA.FieldByName('Documento').AsString);
      // DADOSFRENTEf.CAIXA.FieldByName('CODIGO').AsString);
    end
    else
      break;
  end;
  // DADOSFRENTEf.CAIXA.FieldByName('Documento').AsString,
  // DADOSFRENTEf.CAIXA.FieldByName('CODIGO').AsString);
end;

procedure TGERALFRENTEF.Recibo(Lancamento, TipoReciboXYZ, Recebemos,
  RecebemosEndereco, Referente, Emitente,documento,EnderecoEmitente,
  Grafico:string;ValorRecibo:double;DataRecibo:tdatetime);
var QuanImpr:integer;
    dia,mes,ano :string;
    var VExt : array[0..1] of string;
begin
  DADOSFRENTEf.EMITENTE.Open;
  DADOSFRENTEf.CONF_PADRAO.Open;
  dia:=StrZero(StrToInt(FormatDateTime('d',DataRecibo)),2,0);
  mes:=FormatDateTime('mmmm',DataRecibo); if mes='março' then mes:='marco';
  ano:=FormatDateTime('yyyy',DataRecibo);
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
      // ValorExtenso(VExt,StrToFloat(Edit1.Text),'','',02,60,'*',3);
      ValorExtenso(VExt,StrToFloat(RxCalcEdit1.Text),'','',02,60,'*',3);
      TextListBox1.Items.Add('A importância de: '+VExt[0]);
      TextListBox1.Items.Add('                  '+VExt[1]);
      {
      with TExtensof.Create(nil) do begin
        Edit1.Text:=FloatToStr(ABS(ValorRecibo));
        // Button1.Click;
        TextListBox1.Items.Add('A importância de: '+Edit2.Text);
        TextListBox1.Items.Add('                  '+Edit3.Text);
        // close;
      end;}

      // ValorExtenso(VExt,StrToFloat(Edit1.Text),'','',02,60,'*',3);
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

procedure TGERALFRENTEF.ImprimeCaixa(QueryCaixa :TUniQuery; Grafico:string);
var SaldoCaixa,TotalEntradas,TotalSaidas,TotalVendas,
    TotalSangrias,TotalSuprimentos,TotalRecebimentos,
    TotalPagamentos:double;
    DescricaoProduto, Espacos, linhaSeparadora, linhaSeparadora2, AVistaPrazo:string;
begin
  if CheckBox2.Checked then
    AVistaPrazo:='A'
  else
    AVistaPrazo:='P';

  DADOSFRENTEf.EMITENTE.Open;
  QueryCaixa.Open;
  QueryCaixa.First;

  if CheckBox5.Checked=true then
    Espacos:='.                                        '
  else
    Espacos:='';
   with TVISUALIZACAOF.Create(Self) do begin
     TextListBox1.Items.Add('Empresa.: '+DADOSFRENTEf.EMITENTE.FieldByName('NOME').AsString);
     TextListBox1.Items.Add('');
     TextListBox1.Items.Add('Caixa - '+Datacai.Text+' - Turno'+Edit2.Text);
     TextListBox1.Items.Add('');
      if CheckBox5.Checked=true then begin
       TextListBox1.Items.Add('Document.Hora     Histórico                     Valor      Saldo');
     end
     else begin
       TextListBox1.Items.Add('Document.Hora     ' +
         'Histórico                         ' +
         '                      Valor      Saldo');
     end;
      TextListBox1.Items.Add('');
     while not QueryCaixa.Eof do begin
       if QueryCaixa.FieldByName('AVIS_PRAZO').AsString=AVistaPrazo then begin
         if QueryCaixa.FieldByName('DC').AsString='C' then begin
           SaldoCaixa:=SaldoCaixa+QueryCaixa.FieldByName('Valor').AsFloat;
           TotalEntradas:=TotalEntradas+QueryCaixa.FieldByName('Valor').AsFloat;
         end
         else begin
           SaldoCaixa:=SaldoCaixa-QueryCaixa.FieldByName('Valor').AsFloat;
           TotalSaidas:=TotalSaidas+QueryCaixa.FieldByName('Valor').AsFloat
         end;
          if copy(QueryCaixa.FieldByName('HISTORICOC').AsString,1,16)='Contas a Receber' then
           TotalRecebimentos:=TotalRecebimentos+QueryCaixa.FieldByName('VALOR').AsFloat;
          if copy(QueryCaixa.FieldByName('HISTORICOC').AsString,1,27)='Estorno de Contas a Receber' then
           TotalRecebimentos:=TotalRecebimentos-QueryCaixa.FieldByName('VALOR').AsFloat;
          if copy(QueryCaixa.FieldByName('HISTORICOC').AsString,1,21)='Sangria' then
           TotalSangrias:=TotalSangrias+QueryCaixa.FieldByName('VALOR').AsFloat;
          if copy(QueryCaixa.FieldByName('HISTORICOC').AsString,1,21)='Suprimento' then
           TotalSuprimentos:=TotalSuprimentos+QueryCaixa.FieldByName('VALOR').AsFloat;
          if copy(QueryCaixa.FieldByName('HISTORICOC').AsString,1,21)='Venda Frente de Caixa' then begin
           TotalVendas:=TotalVendas+QueryCaixa.FieldByName('VALOR').AsFloat;
           if CheckBox4.Checked then begin
              DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Clear;
              DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Add('Select * from ITEVENDAS_ECF2 where '+
                'CUPOM='+QuotedStr(QueryCaixa.FieldByName('DOCUMENTO').AsString)+
                ' order by ITEM');
              DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Open;
              DADOSFRENTEf.ITEVENDAS_ECF2_Rel.First;
               if not DADOSFRENTEf.ITEVENDAS_ECF2_Rel.IsEmpty then begin
                if CheckBox5.Checked=true then begin
                  TextListBox1.Items.Add('-----------------------------------------------------------------');
                end
                else
                  TextListBox1.Items.Add('------------------------------------------------------------------------------------------');
                while not DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Eof do begin

                  if CheckBox5.Checked=true then begin
                    DescricaoProduto:=DireiraEsquera(0,COPY(DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('DESCRICAO').AsString,1,18), 18, 'E');
                  end
                  else
                    DescricaoProduto:=DireiraEsquera(0,COPY(DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('DESCRICAO').AsString,1,32), 32, 'E');
                   TextListBox1.Items.Add(
                  DireiraEsquera(0,COPY(DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName(
                    'ITEM').AsString,1,3), 3, 'D')+' '+
                  DireiraEsquera(0,COPY(DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName(
                    'CODIGO').AsString,1,6), 6, 'D')+' '+DescricaoProduto+' '+
                  DireiraEsquera(0, FormatFloat('###,##0.00',
                    DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('QTD').AsFloat), 10, 'D')+' '+
                  DireiraEsquera(0, FormatFloat('###,##0.00',
                    DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('PRECO').AsFloat), 10, 'D')+' '+
                  DireiraEsquera(0, FormatFloat('###,##0.00',
                    DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('TOTAL').AsFloat), 10, 'D'));

                  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Next;
                end;
                if CheckBox5.Checked=true then begin
                  TextListBox1.Items.Add('-----------------------------------------------------------------');
                end
                else
                  TextListBox1.Items.Add('-------------------------------------------------------------------------------------------');
              end;
            end;
         end;
         // DireiraEsquera(0, QueryCaixa.FieldByName('codigo').AsString, 6,
          TextListBox1.Items.Add(
         DireiraEsquera(0, QueryCaixa.FieldByName('DOCUMENTO').AsString, 6,
           'D')
         +' '+DireiraEsquera(0, QueryCaixa.FieldByName('HORA').AsString, 6,
           'D')
         +' '+DireiraEsquera(0, QueryCaixa.FieldByName(
           'HISTORICOC').AsString, 50,'E')
         +' '+Espacos+DireiraEsquera(0, FormatFloat('###,##0.00',
           QueryCaixa.FieldByName('VALOR').AsFloat)+
           QueryCaixa.FieldByName('DC').AsString, 10, 'D')
         +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
           SaldoCaixa), 10, 'D'));
          if QueryCaixa.FieldByName('OBSERVACAO').AsString<>'' then
            TextListBox1.Items.Add('                   '+
            QueryCaixa.FieldByName('OBSERVACAO').AsString);
       end;
       QueryCaixa.Next;
     end;
     if CheckBox5.Checked=true then begin
       linhaSeparadora:='------------------------------------>';
     end
     else
       linhaSeparadora:='---------------------------------------------->';
      if TotalEntradas>0 then begin
       TextListBox1.Items.Add('');
       if CheckBox5.Checked=true then
         linhaSeparadora2:='Total das Entradas'
       else
         linhaSeparadora2:='Total das Entradas----------------';
       TextListBox1.Items.Add(linhaSeparadora2+linhaSeparadora+DireiraEsquera(0, FormatFloat('###,##0.00',TotalEntradas), 10, 'D'));
     end;
      if TotalSaidas>0 then begin
       TextListBox1.Items.Add('');
       if CheckBox5.Checked=true then
         linhaSeparadora2:='Total das Saidas--'
       else
         linhaSeparadora2:='Total das Saidas------------------';
       TextListBox1.Items.Add(linhaSeparadora2+linhaSeparadora+DireiraEsquera(0, FormatFloat('###,##0.00',TotalSaidas), 10, 'D'));
     end;
      if TotalVendas>0 then begin
       TextListBox1.Items.Add('');
       if CheckBox5.Checked=true then
         linhaSeparadora2:='Total das Vendas--'
       else
         linhaSeparadora2:='Total das Vendas------------------';
       TextListBox1.Items.Add(linhaSeparadora2+linhaSeparadora+DireiraEsquera(0, FormatFloat('###,##0.00',TotalVendas), 10, 'D'));
    end;
      if TotalRecebimentos>0 then begin
       TextListBox1.Items.Add('');
       if CheckBox5.Checked=true then
         linhaSeparadora2:='Total dos Recebimentos de Contas'
       else
         linhaSeparadora2:='Total dos Recebimentos de Contas';
       TextListBox1.Items.Add(linhaSeparadora2+linhaSeparadora+DireiraEsquera(0, FormatFloat('###,##0.00',TotalRecebimentos), 10, 'D'));
     end;
      if TotalSangrias>0 then begin
       TextListBox1.Items.Add('');
       if CheckBox5.Checked=true then
         linhaSeparadora2:='Total das Sangrias'
       else
         linhaSeparadora2:='Total das Sangrias----------------';
       TextListBox1.Items.Add(linhaSeparadora2+linhaSeparadora+DireiraEsquera(0, FormatFloat('###,##0.00',TotalSangrias), 10, 'D'));
     end;
      if TotalSuprimentos>0 then begin
       TextListBox1.Items.Add('');
       if CheckBox5.Checked=true then
         linhaSeparadora2:='Total dos Suprimentos'
       else
         linhaSeparadora2:='Total dos Suprimentos-------------';
       TextListBox1.Items.Add(linhaSeparadora2+linhaSeparadora+DireiraEsquera(0, FormatFloat('###,##0.00',
           TotalSuprimentos), 10, 'D'));
     end;
      if Grafico='' then
       ShowModal
     else begin
       Show;
       if CheckBox5.Checked=true then begin
         TamanhoFonte:=999;
         Button9.Click;
       end
       else
         Button1.Click;
       close;
     end;
  end;
end;

procedure TGERALFRENTEF.ConsultaCaixaAnterior(GeralSemanal:string);
var DataCaixa,DataAtual:Tdatetime; TurnoCaixaAnterior,TurnoAtual,TurnoAnterior:string;
begin
  inherited;
  with TGERALFRENTEF.Create(Self) do begin
    Width:=Panel64.Width;
    Height:=Panel64.Height;
    DADOSFRENTEf.CONF_PADRAO.Open;
    NxNotebook61.ActivePageIndex:=13;
    if GeralSemanal='S' then begin
      DADOSFRENTEf.CAIXAANTERIOR.SQL.Clear;
      DADOSFRENTEf.CAIXAANTERIOR.SQL.Add('Select * from CAIXA WHERE HISTORICOC like :N AND DATA>= :_DATACAIXA2 AND DATA<= :_DATACAIXA1 ORDER BY CODIGO DESC');
      DADOSFRENTEf.CAIXAANTERIOR.ParamByName('_DATACAIXA1').AsDateTime:=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime;
      DADOSFRENTEf.CAIXAANTERIOR.ParamByName('_DATACAIXA2').AsDateTime:=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime-31;
    end;

    if GeralSemanal='G' then begin
      DADOSFRENTEf.CAIXAANTERIOR.SQL.Clear;
      DADOSFRENTEf.CAIXAANTERIOR.SQL.Add('Select * from CAIXA where HISTORICOC like :N order by codigo desc');
    end;
    // DADOSFRENTEf.CAIXAANTERIOR.ParamByName('N').AsString :='Transporte de Saldo do Caixa do dia%';
    DADOSFRENTEf.CAIXAANTERIOR.ParamByName('N').AsString :='Saldo anterior do dia%';
    DADOSFRENTEf.CAIXAANTERIOR.Open;
    DADOSFRENTEf.CAIXAANTERIOR.First;
    ShowModal;
  end;
  Datacai.Date:=DADOSFRENTEf.CAIXAANTERIOR.FieldByName('DATA').AsDateTime;
  Edit2.Text:=DADOSFRENTEf.CAIXAANTERIOR.FieldByName('TURNO').AsString;
  FiltroCaixa(Datacai.Date,Edit2.Text);
  SomatoriaCaixaInformacoesCaixa;
  CurrencyEdit3.Enabled:=false;
  cxButton74.Enabled:=false;
  cxButton24.Enabled:=false;
  CheckBox6.Enabled:=false;
  cxGrid2.SetFocus;
end;

procedure TGERALFRENTEF.CurrencyEdit1Change(Sender: TObject);
begin
  inherited;
  TotalDeTodososValores;
end;

procedure TGERALFRENTEF.CurrencyEdit24Exit(Sender: TObject);
begin
  inherited;
  CurrencyEdit1.SetFocus;
end;

procedure TGERALFRENTEF.TotalDeTodososValores;
var SomaNotas,SomaMoedas,SomaContas,SomaVales:double;
begin
  inherited;
  NxPanel63.Caption:=FormatFloat('###,##0.00',CurrencyEdit1.Value*2);
  NxPanel64.Caption:=FormatFloat('###,##0.00',CurrencyEdit2x.Value*5);
  NxPanel66.Caption:=FormatFloat('###,##0.00',CurrencyEdit3x.Value*10);
  NxPanel68.Caption:=FormatFloat('###,##0.00',CurrencyEdit4.Value*20);
  NxPanel69.Caption:=FormatFloat('###,##0.00',CurrencyEdit5.Value*50);
  NxPanel70.Caption:=FormatFloat('###,##0.00',CurrencyEdit6x.Value*100);

  SomaNotas:=(CurrencyEdit1.Value*2)+
             (CurrencyEdit2.Value*5)+
             (CurrencyEdit3.Value*10)+
             (CurrencyEdit4.Value*20)+
             (CurrencyEdit5.Value*50)+
             (CurrencyEdit6x.Value*100);

  NxPanel71.Caption:='Total das Notas.: '+FormatFloat('###,##0.00',SomaNotas);

  NxPanel78.Caption:=FormatFloat('###,##0.00',CurrencyEdit7x.Value*0.05);
  NxPanel79.Caption:=FormatFloat('###,##0.00',CurrencyEdit8x.Value*0.10);
  NxPanel80.Caption:=FormatFloat('###,##0.00',CurrencyEdit9x.Value*0.25);
  NxPanel81x.Caption:=FormatFloat('###,##0.00',CurrencyEdit10x.Value*0.50);
  NxPanel82x.Caption:=FormatFloat('###,##0.00',CurrencyEdit11x.Value*1.00);

  SomaMoedas:=(CurrencyEdit7x.Value*0.05)+
              (CurrencyEdit8x.Value*0.1)+
              (CurrencyEdit9x.Value*0.25)+
              (CurrencyEdit10x.Value*0.5)+
              (CurrencyEdit11x.Value*1.00);

  NxPanel84.Caption:='Total das Moedas.: '+FormatFloat('###,##0.00',SomaMoedas);

  SomaContas:=(CurrencyEdit12x.Value)+
              (CurrencyEdit13x.Value)+
              (CurrencyEdit14x.Value)+
              (CurrencyEdit15.Value)+
              (CurrencyEdit16.Value)+
              (CurrencyEdit17.Value);

  NxPanel95.Caption:='Total das Contas.: '+FormatFloat('###,##0.00',SomaContas);

  SomaVales:=(CurrencyEdit18.Value)+
              (CurrencyEdit19.Value)+
              (CurrencyEdit20.Value)+
              (CurrencyEdit21.Value)+
              (CurrencyEdit22.Value);

  NxPanel113.Caption:='Total das Vendas.: '+FormatFloat('###,##0.00',CurrencyEdit24.Value);

  NxPanel106.Caption:='Total dos Vales.: '+FormatFloat('###,##0.00',SomaVales);

  NxPanel110.Caption:='Total dos Valores.: '+FormatFloat('###,##0.00',SomaNotas+SomaMoedas+
    SomaContas+SomaVales+CurrencyEdit25x.Value+CurrencyEdit23.Value+CurrencyEdit26.Value);

  NxPanel107.Caption:='Diferença.: '+FormatFloat('###,##0.00',SomaNotas+SomaMoedas+SomaContas+SomaVales-CurrencyEdit24.Value
   +CurrencyEdit25x.Value+CurrencyEdit23.Value+CurrencyEdit26.Value);
end;

procedure TGERALFRENTEF.CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then begin
    CurrencyEdit3.SetFocus;
    cxButton74.Click;
    CurrencyEdit3.SetFocus;
  end;
end;

procedure TGERALFRENTEF.cxButton61Click(Sender: TObject);
begin
  inherited;
  with TRelatoriosf.Create(Self) do begin
    NxNotebook61.ActivePageIndex:=2;
    PrecoCustoVenda:='Caixa';
    Show;
    Button13.Click;
    PrecoCustoVenda:='';
    close;
  end;
end;

procedure TGERALFRENTEF.cxButton69Click(Sender: TObject);
begin
  inherited;
  ParcelasdasFormas;
  ValorForma.Enabled:=true;
  FormaAvistaPrazo:='P';
  IncluiDiversasFormas('Boleto');
  FocaValorForma;
end;

procedure TGERALFRENTEF.cxButton73Click(Sender: TObject);
begin
  inherited;
  if DateEdit1.Date>DateEdit2.Date then begin
    ShowMessage('Data Final está menor que Data Inícial !!!');

  end
  else begin
    MesAnoRelatorio:=Copy(Datacai.Text,4,2)+Copy(Datacai.Text,7,4);
    NomeDoArquivo:='VENDAS';
    ImprimeVendas('N');
  end;
  TamanhoFonte:=0;
end;

procedure TGERALFRENTEF.ImprimeVendas(Resumido:string);
var DocInicial,DocFinal:string;
    soma,Quantidade,Total,EstoqueProduto,SaldoQuantidade:double;
    linha:integer;
begin
  MENSPROCF.Panel1.Caption:='AGUARDE UM MOMENTO - GERANDO O RELATÓRIO !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;
  DADOSFRENTEf.CAIXA.Open;
  DADOSFRENTEf.CAIXA.First;
  while not DADOSFRENTEf.CAIXA.Eof do begin
    if DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString<>'' then begin
      if DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString<>'000000' then begin
        DocInicial:=DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString;
        Break;
      end;
    end;
    DADOSFRENTEf.CAIXA.Next;
  end;
   DADOSFRENTEf.CAIXA.Last;
  while not DADOSFRENTEf.CAIXA.Bof do begin
    if DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString<>'' then begin
      if DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString<>'000000' then begin
        DocFinal:=DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString;
        Break;
      end;
    end;
    DADOSFRENTEf.CAIXA.Prior;
  end;
  DADOSFRENTEf.CAIXA.First;

  if DocFinal='' then
    DocFinal:=DocInicial;
   if DocInicial+DocInicial='' then begin
    ShowMessage('Caixa não teve Vendas !!!');
  end
  else begin
    if CheckBox15.Checked=false then begin
      if (DateEdit1.Date<>0)  and (DateEdit2.Date<>0) then begin
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Clear;
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Add('SELECT * FROM ITEVENDAS_ECF2 WHERE ' +
          'DATA>= :_dataini and DATA<= :_dataFin and CANCELADO<>1 order by CODIGO');
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.ParamByName('_dataini').asdatetime :=
          DateEdit1.Date;
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.ParamByName('_dataFin').asdatetime :=
          DateEdit2.Date;
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Open;
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.First;
      end
      else begin
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Clear;
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Add('Select * from ITEVENDAS_ECF2'+
          ' where CUPOM>='+QuotedStr(DocInicial)+
          ' and CUPOM<='+QuotedStr(DocFinal)+' order by CODIGO,CUPOM');
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Open;
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.First;
      end;
    end;
    if CheckBox15.Checked=true then begin
      ConsultaProdutos;
      if (DateEdit1.Date<>0)  and (DateEdit2.Date<>0) then begin
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Clear;
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Add('SELECT * FROM ITEVENDAS_ECF2 WHERE ' +
          'codigo='+CodigoConsulta+' and ' +
          'DATA>= :_dataini and DATA<= :_dataFin and CANCELADO<>1 order by CODIGO');
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.ParamByName('_dataini').asdatetime :=
          DateEdit1.Date;
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.ParamByName('_dataFin').asdatetime :=
          DateEdit2.Date;
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Open;
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.First;
      end
      else begin
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Clear;
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Add('Select * from ITEVENDAS_ECF2'+
          ' where CUPOM>='+QuotedStr(DocInicial)+
          ' and CUPOM<='+QuotedStr(DocFinal)+
          'and codigo='+CodigoConsulta +
          ' order by CODIGO,CUPOM');
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Open;
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.First;
      end;
    end;
    DADOSFRENTEf.estoque_Rel.Close;
    DADOSFRENTEf.estoque_Rel.Open;
    DADOSFRENTEf.estoque_Rel.Refresh;
    with TVISUALIZACAOF.Create(Self) do begin
      if (DateEdit1.Date<>0)  and (DateEdit2.Date<>0) then
        TextListBox1.Items.Add('Relatorio de Vendas do dia.: '+DateEdit1.Text+' ao dia.: '+DateEdit2.Text)
      else
        TextListBox1.Items.Add('Relatorio de Vendas do dia.: '+Datacai.Text+' Período.: '+Edit2.Text);
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('');
      if CheckBox3.Checked then begin
        TextListBox1.Items.Add('Cod.  Descrição            Quantidade  Vl.Venda  Est.Ant.   Est.Atu.');
        TextListBox1.Items.Add('');
      end;
      while true do begin
        DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Locate('CODIGO',DADOSFRENTEf.estoque_Rel.FieldByName('CODIGO').AsString,[]);
        soma:=0; Quantidade:=0; SaldoQuantidade:=0;
        while DADOSFRENTEf.estoque_Rel.FieldByName('CODIGO').AsString=DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('CODIGO').AsString do begin
          if (CheckBox7.Checked=true) and (soma=0) then
            TextListBox1.Items.Add('------------------------------------------------------');
          Quantidade:=Quantidade+DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('QTD').AsFloat;
          soma:=soma+DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('TOTAL').AsFloat;
          Total:=Total+DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('TOTAL').AsFloat;
          if CheckBox7.Checked=true then begin
            SaldoQuantidade:=SaldoQuantidade+DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('QTD').AsFloat;
            TextListBox1.Items.Add('Hora.: '+COPY(DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('HORA').AsString,1,5)+' Quant.:'+
            DireiraEsquera(0, FormatFloat('###,##0.00',DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('QTD').AsFloat), 7, 'D')+
            ' Geral.: '+DireiraEsquera(0, FormatFloat('###,##0.00',SaldoQuantidade), 7, 'D')+
            ' D.: '+DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('CUPOM').AsString);
          end;
          DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Next;
          if DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Eof then
            break;
        end;
        if soma>0 then begin
          linha:=linha+1;
          if CheckBox3.Checked then begin
            EstoqueProduto:=DADOSFRENTEf.estoque_Rel.FieldByName('QTD').AsFloat;
            if CheckBox7.Checked=true then
              TextListBox1.Items.Add('----------------------------------------------------------');
            TextListBox1.Items.Add(DireiraEsquera(0, FormatFloat('00000',
            DADOSFRENTEf.estoque_Rel.FieldByName('CODIGO').AsFloat), 5, 'D')+'-'+
            DireiraEsquera(0, Copy(DADOSFRENTEf.estoque_Rel.FieldByName('NOME').AsString,1,20), 20, 'E')+'-'+
            DireiraEsquera(0, FormatFloat('###,##0.00',Quantidade), 9, 'D')+'-'+
            DireiraEsquera(0, FormatFloat('###,##0.00',soma), 10, 'D')+'-'+
            DireiraEsquera(0, FormatFloat('###,##0.00',EstoqueProduto+Quantidade), 9, 'D')+'-'+
            DireiraEsquera(0, FormatFloat('###,##0.00',EstoqueProduto), 10, 'D'));
          end
          else begin
            if Label47.Caption<>'Total a prazox' then begin
              TextListBox1.Items.Add(DireiraEsquera(0, FormatFloat('00000',DADOSFRENTEf.estoque_Rel.FieldByName('CODIGO').AsFloat), 5, 'D')
              +' '+DireiraEsquera(0, Copy(DADOSFRENTEf.estoque_Rel.FieldByName('NOME').AsString,1,27), 27, 'E')
              +' '+DireiraEsquera(0, FormatFloat('###,##0.00',Quantidade), 9, 'D')
              +' '+DireiraEsquera(0, FormatFloat('###,##0.00',soma), 10, 'D'))
            end
            else begin
              if DADOSFRENTEf.estoque_Rel.FieldByName('ULTIMO_PRECO').AsFloat>0 then begin
                TextListBox1.Items.Add(DireiraEsquera(0, FormatFloat('00000',DADOSFRENTEf.estoque_Rel.FieldByName('CODIGO').AsFloat), 5, 'D')
                +'-'+DireiraEsquera(0, Copy(DADOSFRENTEf.estoque_Rel.FieldByName('NOME').AsString,1,40), 40, 'E')
                +'-'+DireiraEsquera(0, FormatFloat('###,##0.00',Quantidade), 9, 'D')
                +'-'+DireiraEsquera(0, FormatFloat('###,##0.00',soma), 10, 'D')
                 +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
                   DADOSFRENTEf.estoque_Rel.FieldByName('PRECO_CONS').AsFloat), 10, 'D')
                 +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
                   DADOSFRENTEf.estoque_Rel.FieldByName('PRECO_CONS').AsFloat-DADOSFRENTEf.estoque_Rel.FieldByName('ULTIMO_PRECO').AsFloat), 10, 'D')
                 +' '+DireiraEsquera(0, FormatFloat('###,##0.00',
                   ((DADOSFRENTEf.estoque_Rel.FieldByName('PRECO_CONS').AsFloat-DADOSFRENTEf.estoque_Rel.FieldByName('ULTIMO_PRECO').AsFloat)*100)
                   /DADOSFRENTEf.estoque_Rel.FieldByName('ULTIMO_PRECO').AsFloat)+'%', 11, 'D')
                );
              end;
            end;
          end;
        end;
        DADOSFRENTEf.estoque_Rel.Next;
        if DADOSFRENTEf.estoque_Rel.Eof then
          break;
      end;
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('');
      TextListBox1.Items.Add('Total Geral-----------------------------> '+DireiraEsquera(0, FormatFloat('###,##0.00',Total), 12, 'D'));
      Show;
      {
      if CheckBox3.Checked then begin
        TamanhoFonte:=99;
        Button9.Click;
      end
      else begin
        TamanhoFonte:=99;
        Button9.Click;
      end;
      }
      TamanhoFonte:=20;
      Show;
      Button1.Click;
      close;
    end;
  end;
  MENSPROCF.Close;
end;

procedure TGERALFRENTEF.cxButton74Click(Sender: TObject);
begin
  inherited;
  SaldoDoCaixa;
end;

procedure TGERALFRENTEF.cxButton75Click(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.CONF_PADRAO.Edit;
  DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString:=CodigoConsulta;
  DADOSFRENTEf.CONF_PADRAO.Post;
  DADOSFRENTEf.CONF_PADRAO.ApplyUpdates;
  DADOSFRENTEf.CAIXA.ApplyUpdates;
  if Datacai.Date=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime then begin
    FiltroCaixa(DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime,
      DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString);
    Edit2.Text:=DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString;
    InformacoesCaixaX;
  end
  else if Datacai.Date>DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime then begin
    FiltroCaixa(DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime,
      DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString);
    Datacai.Date:=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime;
    Edit2.Text:=DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString;
    InformacoesCaixaX;
  end;
  CurrencyEdit3.Visible:=true;
  Label64.Visible:=true;
  cxButton74.Visible:=true;
  cxButton24.Visible:=true;
  cxButton75.Visible:=false;
  cxButton56.Visible:=true;
  cxButton58.Visible:=true;
  cxButton59.Visible:=true;
  cxButton73.Visible:=true;
  CheckBox1.Visible:=true;
  cxButton56.Visible:=true;
  DADOSFRENTEf.CONF_PADRAO.Close;
  DADOSFRENTEf.CONF_PADRAO.CachedUpdates:=false;
  DADOSFRENTEf.CONF_PADRAO.Open;
  DADOSFRENTEf.CAIXA.Filter:='';
  DADOSFRENTEf.CAIXA.Filtered:=false;
  DADOSFRENTEf.CAIXA.Close;
  DADOSFRENTEf.CAIXA.CachedUpdates:=false;
  DADOSFRENTEf.CAIXA.Open;
  APPLAUDATES:='N';

  {
  DADOSFRENTEf.VENDAS_ECF2.ParamByName('_dataini').asdatetime :=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').asdatetime;
  DADOSFRENTEf.VENDAS_ECF2.Open;
  DADOSFRENTEf.VENDAS_ECF2.Last;
  }
  FiltroArquivodeVendas;

  CupomNovo;
  ShowMessage('Agora Digite o Saldo do Caixa e Tecle <Enter> e Depois Confirme !!!');
  CurrencyEdit3.SetFocus;
end;

procedure TGERALFRENTEF.SaldoDoCaixa;
Var SaldoTransporte:double;
    Transporte:string;
begin
  if CurrencyEdit3.Value>0 then begin
    // if CurrencyEdit3.Value>10000 then begin
    if CurrencyEdit3.Value>1000010000 then begin
      ShowMessage('Saldo muito grande ( '+FormatFloat('###,##0.00', CurrencyEdit3.Value )+' ) !!!');
    end
    else begin
      if Application.MessageBox(Pchar('Confirma o saldo do Caixa  '+FormatFloat('###,##0.00', CurrencyEdit3.Value )+' reais  ?'),'Confirmação',
        MB_YESNO + MB_ICONQUESTION)= ID_YES then begin

        FechamentoCaixa:='S';
        if DADOSFRENTEf.CAIXA.IsEmpty then begin
          NumedordoLancamento;
          InformacoesFechamentoDeCaixa('Saldo de Abertura do Caixa do dia '+Datacai.Text,
            CurrencyEdit3.Value);
          BaixaContasAReceberNumedor:='';
        end
        else begin
          // Transporte:='Transporte de Saldo';
          Transporte:='Transp.Saldo';
          if SaldTot.Value>CurrencyEdit3.Value then begin
            SaldoTransporte:=SaldTot.Value-CurrencyEdit3.Value;
            NumedordoLancamento;
            InformacoesTransportedeSaldo(Transporte+' Caixa do dia '+Datacai.Text,'D',SaldoTransporte);
            BaixaContasAReceberNumedor:='';
          end
          else begin
            SaldoTransporte:=CurrencyEdit3.Value-SaldTot.Value;
            NumedordoLancamento;
            // InformacoesTransportedeSaldo(Transporte+' do Caixa do dia '+Datacai.Text,'C',SaldoTransporte);
            InformacoesTransportedeSaldo(Transporte+' Caixa do dia '+Datacai.Text,'C',SaldoTransporte);
            BaixaContasAReceberNumedor:='';
          end;
        end;
        FechamentoCaixa:='';
        InformacoesCaixaX;
        CurrencyEdit3.Clear;
      end;
    end;
  end
  else begin
    ShowMessage('Saldo Incial não pode ser Zero !!!');
    CurrencyEdit3.SetFocus;
  end;
  BaixaContasAReceberNumedor:='';
end;

procedure TGERALFRENTEF.SomatoriaCaixaInformacoesCaixa;
begin
  SomatoriaCaixa;
  TotEntra.Value:=EntradasCaixa;
  TotSaid.Value:=SaidasCAixa;
  RealEdit1.Value:=PrazoCaixa;
  SaldTot.Value:=EntradasCaixa-SaidasCAixa;
end;

procedure TGERALFRENTEF.InformacoesCaixa;
begin
  DADOSFRENTEf.CONF_PADRAO.Open;
  Datacai.Date:=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime;
  Edit2.Text:=DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString;

  FiltroCaixa(DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime,
    DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString);

  SomatoriaCaixaInformacoesCaixa;
end;


procedure TGERALFRENTEF.cxButton85Click(Sender: TObject);
begin
  inherited;
  MesAnoRelatorio:=Copy(Datacai.Text,4,2)+Copy(Datacai.Text,7,4);
  {
  with TDESCRICAOF.Create(Self) do begin
    cxMemo1.Clear;
    Caption:='Mensagem';
    ShowModal;
  end;
  }
end;

procedure TGERALFRENTEF.cxButton98Click(Sender: TObject);
var DocInicial,DocFinal,datacaixa,caixa:string;
    soma,Quantidade,Total,EstoqueProduto,TotalDasVendasGeral,
    TotalRecebimentos,TotalSangrias,TotalSuprimentos:double;
    linha:integer;
begin
  DADOSFRENTEf.CAIXA.Open;
  DADOSFRENTEf.CAIXA.First;
  while not DADOSFRENTEf.CAIXA.Eof do begin
    if DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString<>'' then begin
      if DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString<>'000000' then begin
        DocInicial:=DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString;
        Break;
      end;
    end;
    DADOSFRENTEf.CAIXA.Next;
  end;

  DADOSFRENTEf.CAIXA.Last;
  while not DADOSFRENTEf.CAIXA.Bof do begin
    if DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString<>'' then begin
      if DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString<>'000000' then begin
        DocFinal:=DADOSFRENTEf.CAIXA.FieldByName('DOCUMENTO').AsString;
        Break;
      end;
    end;
    DADOSFRENTEf.CAIXA.Prior;
  end;
  DADOSFRENTEf.CAIXA.First;

  if DocFinal='' then
    DocFinal:=DocInicial;

  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Clear;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Add('Select * from ITEVENDAS_ECF2'+
    ' where CUPOM>='+QuotedStr(DocInicial)+
    ' and CUPOM<='+QuotedStr(DocFinal)+' order by CODIGO');
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Open;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.First;

  TotalDasVendasGeral:=0;
  while not DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Eof do begin
    TotalDasVendasGeral:=TotalDasVendasGeral+DADOSFRENTEf.ITEVENDAS_ECF2_Rel.FieldByName('TOTAL').AsFloat;
    DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Next;
  end;
  datacaixa:=Datacai.Text;
  caixa:=Edit2.Text;

  {
  DADOSFRENTEf.CAIXA.SQL.Clear;
  DADOSFRENTEf.CAIXA.SQL.Add('SELECT * FROM CAIXA WHERE ' +
    'DATA>= :_dataini and DATA<= :_dataFin order by CODIGO');
  DADOSFRENTEf.CAIXA.ParamByName('_dataini').asdatetime :=
    datacaixa;
  DADOSFRENTEf.CAIXA.ParamByName('_dataFin').asdatetime :=
    datacaixa;
  }

  DADOSFRENTEf.CAIXA.Open;
  DADOSFRENTEf.CAIXA.First;

  DADOSFRENTEf.CAIXA.First;
  while not DADOSFRENTEf.CAIXA.Eof do begin

    if copy(DADOSFRENTEf.CAIXA.FieldByName('HISTORICOC').AsString,1,27)='Estorno de Contas a Receber' then
      TotalRecebimentos:=TotalRecebimentos-DADOSFRENTEf.CAIXA.FieldByName('VALOR').AsFloat;

    if copy(DADOSFRENTEf.CAIXA.FieldByName('HISTORICOC').AsString,1,21)='Sangria' then
      TotalSangrias:=TotalSangrias+DADOSFRENTEf.CAIXA.FieldByName('VALOR').AsFloat;

    if copy(DADOSFRENTEf.CAIXA.FieldByName('HISTORICOC').AsString,1,21)='Suprimento' then
      TotalSuprimentos:=TotalSuprimentos+DADOSFRENTEf.CAIXA.FieldByName('VALOR').AsFloat;

    DADOSFRENTEf.CAIXA.Next;
  end;

  with TGERALFRENTEF.Create(Self) do begin
    DateEdit1.Text:=datacaixa;
    // Edit11.Text:=caixa;
    Width:=Panel93.Width;
    Height:=Panel93.Height;
    NxNotebook61.ActivePageIndex:=14;
    CurrencyEdit24.Value:=TotalDasVendasGeral;
    CurrencyEdit23.Value:=TotalSuprimentos;
    CurrencyEdit26.Value:=TotalRecebimentos;
    CurrencyEdit25x.Value:=(TotalSangrias)*-1;
    ShowModal;
  end;
end;

procedure TGERALFRENTEF.cxGridDBTableView3DblClick(Sender: TObject);
begin
  inherited;
  Button13.Click;
end;

procedure TGERALFRENTEF.DatacaiExit(Sender: TObject);
begin
  inherited;
  Datacai.Enabled:=false;
  cxButton24.SetFocus;
end;

procedure TGERALFRENTEF.Desconto2Exit(Sender: TObject);
begin
  inherited;
  DescontoVenda;
end;

procedure TGERALFRENTEF.DescontoVenda;
begin
  Acrescimo.Clear;
  if CheckBox8.Checked=true then
    Desconto2.Value:=(Desconto2.Value*ValorTotaldaVenda.Value)/100;
  TotalaserPagaoF;
end;

procedure TGERALFRENTEF.Desconto2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then begin
    cxGrid7.SetFocus;
  end;

end;

procedure TGERALFRENTEF.IncluiDiversasFormas(FormaPagamento:string);
begin
  if DADOSFRENTEf.DiversasFormas.IsEmpty then
    DADOSFRENTEf.DiversasFormas.Append
  else begin
    if (CheckBox20.Checked=true) and (FormaPagamento='Cheque') then
      DADOSFRENTEf.DiversasFormas.Append
    else if (CheckBox18.Checked=true) and (FormaPagamento='Cartão de Debito') then
      DADOSFRENTEf.DiversasFormas.Append
    else if (CheckBox19.Checked=true) and (FormaPagamento='Cartão de Crédito') then
      DADOSFRENTEf.DiversasFormas.Append
    else
      if DADOSFRENTEf.DiversasFormas.Locate('FORMADEPAGAMENTO',FormaPagamento,[]) then
        DADOSFRENTEf.DiversasFormas.Edit
      else
        DADOSFRENTEf.DiversasFormas.Append;
  end;
  DADOSFRENTEf.CONF_PADRAO.Open;
  DADOSFRENTEf.DiversasFormas.FieldByName('N_CAIXA').AsString:=DADOSFRENTEf.CONF_PADRAO.FieldByName('CAIXA').AsString;
  DADOSFRENTEf.DiversasFormas.FieldByName('TURNO').AsString:=DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString;
  DADOSFRENTEf.DiversasFormas.FieldByName('EMISSAO').asdatetime:=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').asdatetime;
  DADOSFRENTEf.DiversasFormas.FieldByName('VENCIMENTO').asdatetime:=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').asdatetime+40;
  // PARCELA
  DADOSFRENTEf.DiversasFormas.FieldByName('AVISTAPRAZO').AsString:=FormaAvistaPrazo;
  DADOSFRENTEf.DiversasFormas.FieldByName('FORMADEPAGAMENTO').AsString:=FormaPagamento;

  DADOSFRENTEf.DiversasFormas.FieldByName('CODIGO').AsString:=DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString;

  if FiltroRecebimentoConta='' then
    DADOSFRENTEf.DiversasFormas.FieldByName('CUPOM').AsString:=DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString
  else
    DADOSFRENTEf.DiversasFormas.FieldByName('CUPOM').AsString:='999999999';
end;

procedure TGERALFRENTEF.FocaValorForma;
begin
  if DADOSFRENTEf.DiversasFormas.State in [dsedit] then
    TotaldasFormasX.Value:=TotaldasFormasX.Value-DADOSFRENTEf.DiversasFormas.FieldByName('TOTALPAGO').AsFloat;
  ValorForma.Value:=ValoraserPago.Value-TotaldasFormasX.Value;
  ValorForma.SetFocus;
end;


procedure TGERALFRENTEF.EntregadorxButtonClick(Sender: TObject);
begin
  inherited;
  NomeVendedor;
end;

procedure TGERALFRENTEF.EntregadorxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    NomeVendedor;
end;

procedure TGERALFRENTEF.NomeVendedor;
begin
  EscolheVendedor;
  if (CodVen.Focused=true) or (CodVen2.Focused=true) then begin
    CodVen.Text:=DADOSFRENTEf.VENDEDORES.FieldByName('CODIGO').AsString;
    CodVen2.Text:=DADOSFRENTEf.VENDEDORES.FieldByName('CODIGO').AsString;
    LocalizaVendedor;
  end
  else
    Entregadorx.Text:=DADOSFRENTEf.VENDEDORES.FieldByName('NOME').AsString;
end;

procedure TGERALFRENTEF.ObservaçoesExit(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TGERALFRENTEF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(GERALFRENTEF);
  Action:=caFree;
end;

procedure TGERALFRENTEF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (NxNotebook61.ActivePageIndex=2) and (key=vk_f5) then
    RxDBComboEdit4.SetFocus;
  if (NxNotebook61.ActivePageIndex=2) and (key=vk_f9) then
    CodVen.SetFocus;
  if (NxNotebook61.ActivePageIndex=2) and (key=vk_f6) then
    Observaçoes.SetFocus;
  if (NxNotebook61.ActivePageIndex=7) and (key=vk_f5) then
    ComboEdit3x.SetFocus;
  if (NxNotebook61.ActivePageIndex=7) and (key=vk_f6) then
    ComboEdit4x.SetFocus;
  if NxNotebook61.ActivePageIndex=13 then begin
    if key=vk_return then
      close;
  end;
  if (NxNotebook61.ActivePageIndex=0) and (key=vk_escape) then
    Button20.Click;
  if (NxNotebook61.ActivePageIndex=2) and (key=vk_escape) then
    Button4.Click;
  if (NxNotebook61.ActivePageIndex=6) and (key=vk_escape) then
    Button9.Click;
  if NxNotebook61.ActivePageIndex=6 then
    if (key=vk_f5) and (cxSpinEdit1.Enabled=true) then
      cxSpinEdit1.SetFocus;
  inherited;
  if NxNotebook61.ActivePageIndex=0 then begin
    if key=vk_f4 then
      Frete.SetFocus;
    if key=vk_f5 then
      TaxadeEntrega.SetFocus;
    if key=vk_f6 then
      Desconto2.SetFocus;
    if key=vk_f7 then
      Acrescimo.SetFocus;

    if key=vk_f9 then
      CodVen2.SetFocus;

  end;

end;

procedure TGERALFRENTEF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key=^A then begin
    TelaSenha;
    if senha='MASTER' then
      Button38.Visible:=true;
  end;
end;

procedure TGERALFRENTEF.FormShow(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.CONF_PADRAO.Open;
  if DADOSFRENTEf.CONF_PADRAO.FieldByName('OLEO').AsString='S' then
    cxButton51.Visible:=false;

  Panel13.BevelOuter:=bvNone;
  Panel38.BevelOuter:=bvNone;
  Panel37.BevelOuter:=bvNone;
  Panel25.BevelOuter:=bvNone;
  Panel26.BevelOuter:=bvNone;
  Panel35.BevelOuter:=bvNone;
  // NxPanel17.BevelOuter:=bvNone;
  Panel41.BevelOuter:=bvNone;
  Panel42.BevelOuter:=bvNone;
  // NxPanel27x.BevelOuter:=bvNone;
  Panel43.BevelOuter:=bvNone;
  // NxPanel29.BevelOuter:=bvNone;
  Panel46.BevelOuter:=bvNone;
  Panel47.BevelOuter:=bvNone;
  Panel49.BevelOuter:=bvNone;
  Panel48.BevelOuter:=bvNone;
  Panel50.BevelOuter:=bvNone;
  Panel51.BevelOuter:=bvNone;
  Panel52.BevelOuter:=bvNone;
  Panel19.BevelOuter:=bvNone;
  Panel30.BevelOuter:=bvNone;
  Panel32.BevelOuter:=bvNone;
  Panel35.BevelOuter:=bvNone;
  Panel44.BevelOuter:=bvNone;
  Panel45.BevelOuter:=bvNone;
  NxPanel181.BevelOuter:=bvNone;
  NxPanel182.BevelOuter:=bvNone;
  // Panel33.BevelOuter:=bvNone;
  // Panel34.BevelOuter:=bvNone;

  NxPanel27.BevelOuter:=bvNone;
  NxPanel186.BevelOuter:=bvNone;
  NxPanel82.BevelOuter:=bvNone;
  NxPanel176.BevelOuter:=bvNone;
  NxPanel81.BevelOuter:=bvNone;
  NxPanel177.BevelOuter:=bvNone;
  NxPanel13.BevelOuter:=bvNone;
  NxPanel178.BevelOuter:=bvNone;
  NxPanel180.BevelOuter:=bvNone;
  Panel5.BevelOuter:=bvNone;
  Panel3.BevelOuter:=bvNone;
  Panel9.BevelOuter:=bvNone;
  Panel16.BevelOuter:=bvNone;
  Panel14.BevelOuter:=bvNone;
  // Panel15.BevelOuter:=bvNone;
  Panel8.BevelOuter:=bvNone;
  Panel12.BevelOuter:=bvNone;
  Panel20.BevelOuter:=bvNone;
  Panel7.BevelOuter:=bvNone;
  Panel31.BevelOuter:=bvNone;
  Panel4.BevelOuter:=bvNone;
  Panel68.BevelOuter:=bvNone;
  Panel67.BevelOuter:=bvNone;

  NxPanel186.BevelOuter:=bvNone;
  NxNotebook61.Align:=alclient;
  NxPanel186.Align:=alclient;
  NxPanel27.Align:=alclient;
  NxPanel186.Align:=alclient;
  Panel172.Align:=alclient;

  Panel1.Align:=alclient;
  Panel2.Align:=alclient;
  Panel118.Align:=alclient;
  Panel10.Align:=alclient;
  Panel117.Align:=alclient;
  Panel6.Align:=alclient;
  Panel7.Align:=alclient;
  Panel63.Align:=alclient;
  Panel24.Align:=alclient;
  Panel119.Align:=alclient;
  Panel54.Align:=alclient;
  Panel64.Align:=alclient;
  Panel121.Align:=alclient;
  Panel5.Align:=alclient;
  Panel4.Align:=alclient;
  Panel8.Align:=alclient;
  Panel12.Align:=alclient;
  Panel20.Align:=alclient;
  Panel7.Align:=alclient;
  Panel31.Align:=alclient;
  Panel30.Align:=alclient;
  Panel36.Align:=alclient;
  Panel120.Align:=alclient;
  Panel67.Align:=alclient;
  Panel93.Align:=alclient;
  Tela_Impressora_panel.Align:=alclient;
  Panel58.Align:=alclient;
  Panel159.Align:=alclient;


  cxGrid1.Align:=alclient;
  cxGrid3.Align:=alclient;
  cxGrid2.Align:=alclient;
  cxGrid5.Align:=alclient;
  if NxNotebook61.ActivePageIndex=0 then
    cxButton46.SetFocus;
  if Button11.Visible=true then begin
    DADOSFRENTEf.CONF_PADRAO.Open;
    cxDateEdit1.Date:=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime;
  end
  else
    cxDateEdit1.Date:=date;
  cxSpinEdit2.Value:=30;

  if (NxNotebook61.ActivePageIndex=0) or (NxNotebook61.ActivePageIndex=2) then begin
    CodVen.Text:=DADOSFRENTEf.CONF_PADRAO.FieldByName('VENDEDOR').AsString;
    CodVen2.Text:=DADOSFRENTEf.CONF_PADRAO.FieldByName('VENDEDOR').AsString;

    if ParamStr(5)<>'' then begin
      CodVen.Text:=ParamStr(5);
      CodVen2.Text:=ParamStr(5);
    end;

    if Vendedorxyz<>'' then
      CodVen2.Text:=Vendedorxyz;
    Vendedorxyz:=CodVen2.Text;
    LocalizaVendedor;
  end;

  if NxNotebook61.ActivePageIndex=2 then begin
    if OBSERVACAOClientePedidoOS<>'' then begin
      Observaçoes.Text:=OBSERVACAOClientePedidoOS;
      if not DADOS_CADASTROSf.Oleo_rel.IsEmpty then begin
        DADOS_CADASTROSf.Oleo_rel.Edit;
        DADOS_CADASTROSf.Oleo_rel.FieldByName('CUPOM').AsString:=DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString;
        DADOS_CADASTROSf.Oleo_rel.Post;
      end;
      EntrouOleoCarro:='S';

    end;
  end;

  if NxNotebook61.ActivePageIndex=4 then begin
    InformacoesCaixaX;
    cxButton25.SetFocus;
    if DADOSFRENTEf.CAIXA.IsEmpty then begin
      ShowMessage('Passe o Saldo Inicial do Caixa !!!');
      CurrencyEdit3.SetFocus;
    end;
  end;

  if NxNotebook61.ActivePageIndex=4 then begin
    InformacoesCaixa;
    cxButton25.SetFocus;
    if DADOSFRENTEf.CAIXA.IsEmpty then begin
      ShowMessage('Passe o Saldo Inicial do Caixa !!!');
      CurrencyEdit3.SetFocus;
    end;
  end;

  if NxNotebook61.ActivePageIndex=6 then begin
    Label65.Caption:='';
    if DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('DIASPARAPRAZO').AsString<>'' then begin
      cxSpinEdit2.Value:=DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('DIASPARAPRAZO').AsInteger;
      cxSpinEdit1.Enabled:=false;
      cxDateEdit1.Enabled:=false;
      cxSpinEdit2.Enabled:=false;
      Label65.Caption:='Quantidade de Dias de Prazo é '+DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('DIASPARAPRAZO').AsString;
      Button10.SetFocus;
    end;
    if ContaPagarReceber<>'Pagar' then begin
      Label41.Visible:=false;
      cxCalcEdit1.Visible:=false;
      VencimentosAtrazados:=0; bloqueiadia:=0;
      FiltroContasReceberSoma( DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString,'R' );
      SomaAnterior:=0;
      DataFinanceiro.RECEBER_SOMA.First;
      while not DataFinanceiro.RECEBER_SOMA.Eof do begin
        bloqueiadia:=bloqueiadia+(DAYSBETWEEN(DATE,DataFinanceiro.RECEBER_SOMA.FieldByName('VENCIMENTO').AsDateTime));

        if DataFinanceiro.RECEBER_SOMA.FieldByName('VENCIMENTO').AsDateTime<date then begin
          VencimentosAtrazados:=VencimentosAtrazados+
          DataFinanceiro.RECEBER_SOMA.FieldByName('VALOR').AsFloat-
          DataFinanceiro.RECEBER_SOMA.FieldByName('VALOR_RECEBIDO').AsFloat;
        end;

        SomaAnterior:=SomaAnterior+
        DataFinanceiro.RECEBER_SOMA.FieldByName('VALOR').AsFloat-
        DataFinanceiro.RECEBER_SOMA.FieldByName('VALOR_RECEBIDO').AsFloat;
        DataFinanceiro.RECEBER_SOMA.Next;
      end;
      DataFinanceiro.RECEBER_SOMA.First;
      ShowMessage(
                  'Dias de Atrazo nos Vencimentos: '+ IntToStr(bloqueiadia)+#13+#13+
                  'Valor dos Vencimentos Atrazados: '+
                  FormatFloat('###,##0.00',VencimentosAtrazados)+#13+#13+
                  'Total de Debido do cliente !!!'+#13+#13+
                  'Debitos anteriores são: '+
                  FormatFloat('###,##0.00',SomaAnterior)+#13+#13+
                  'A Prazo atual é: '+
                  FormatFloat('###,##0.00',TotalParcelamento)+#13+#13+
                  'Total de: '+
                  FormatFloat('###,##0.00',SomaAnterior+TotalParcelamento));
    end;
    if QuantidadedeParcelasdaForma<>0 then begin
      cxSpinEdit1.Text:=IntToStr(QuantidadedeParcelasdaForma);
      cxSpinEdit1.Enabled:=false;
      if cxDateEdit1.Enabled=true then
        cxDateEdit1.SetFocus;
      QuantidadedeParcelasdaForma:=0;
    end;
  end;

  if NxNotebook61.ActivePageIndex=7 then begin
    if ParamStr(5)<>'' then
      CodVenx.Text:=ParamStr(5);
  end;

  if NxNotebook61.ActivePageIndex=15 then
    cxButton4.SetFocus;
  if NxNotebook61.ActivePageIndex=16 then begin
    ListBox1.Items.Assign(Printer.Printers); // pegas as impressoras
    ListBox1.ItemIndex := Printer.PrinterIndex; // posiciona na impressora atual
  end;

  DateEdit3.Date:=date;

  DateEdit4.Date:=date-30;
  DateEdit5.Date:=date;

end;

procedure TGERALFRENTEF.InformacoesCaixaX;
begin
  DADOSFRENTEf.CONF_PADRAO.Open;
  Datacai.Date:=DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime;
  Edit2.Text:=DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString;

  FiltroCaixa(DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime,
    DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString);

  SomatoriaCaixaInformacoesCaixa;
end;

procedure TGERALFRENTEF.FreteEnter(Sender: TObject);
begin
  inherited;
  if not DADOSFRENTEf.DiversasFormas.IsEmpty then begin
     DADOSFRENTEf.DiversasFormas.First;
     while not DADOSFRENTEf.DiversasFormas.Eof do
       DADOSFRENTEf.DiversasFormas.Delete;
     TotaldasFormasX.Clear;
     TrocodaVenda.Clear;
     ValorForma.Clear;
  end;
end;

procedure TGERALFRENTEF.FreteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then begin
    TotalaserPagaoF;
    cxGrid7.SetFocus;
  end;
end;

procedure TGERALFRENTEF.PortadorButtonClick(Sender: TObject);
begin
  inherited;
  NomePortador;
end;

procedure TGERALFRENTEF.PortadorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    NomePortador;
end;

procedure TGERALFRENTEF.NomePortador;
begin
  EscolhePortador;
  Portador.Text:=DADOSFRENTEf.Portador.FieldByName('NOME').AsString;
end;

procedure TGERALFRENTEF.RxDBComboEdit4ButtonClick(Sender: TObject);
begin
  inherited;
  ConsultaGeral;
end;

procedure TGERALFRENTEF.RxDBComboEdit4Enter(Sender: TObject);
begin
  inherited;
  LocalizaVendedor;
  DADOSFRENTEf.VENDAS_ECF2.Edit;
  if CodigoClientePedidoOS<>0 then
    DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsInteger:=CodigoClientePedidoOS;

  if not DADOSFRENTEf.DADOCLIE.IsEmpty then begin
    // DADOSFRENTEf.DADOCLIE.Delete;
    FiltraQuery(DADOSFRENTEf.CADASTRO_CLIENTES,'CLIENTES',DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString);
    // DADOSFRENTEf.CADASTRO_CLIENTES.Open;
    // DADOSFRENTEf.CADASTRO_CLIENTES.Locate('CODIGO',DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString,[]);
    ImformacoesCliente;
  end;
end;

procedure TGERALFRENTEF.Label49Click(Sender: TObject);
begin
  inherited;
  TelaSenha;
  if senha='MASTER' then begin
    Datacai.Enabled:=true;
    Datacai.SetFocus;
  end;
end;

procedure TGERALFRENTEF.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then begin
    ImpressoraEscolhida:= ListBox1.Items.Strings[ListBox1.ItemIndex];
    close;
  end;
end;

procedure TGERALFRENTEF.LocalizaVendedor;
begin
  // DADOSFRENTEf.VENDEDORES.Open;
  // if DADOSFRENTEf.VENDEDORES.Locate('CODIGO',CodVen.Text,[]) then begin
  DADOSFRENTEf.VENDEDORES.Close;
  DADOSFRENTEf.VENDEDORES.SQL.Clear;
  DADOSFRENTEf.VENDEDORES.SQL.Add('Select * from VENDEDORES where CODIGO='+QuotedStr(CodVen.Text));
  DADOSFRENTEf.VENDEDORES.Open;
  // if DADOSFRENTEf.VENDEDORES.Locate('CODIGO',Vendedor,[]) then begin
  if not DADOSFRENTEf.VENDEDORES.IsEmpty then begin
    Panel15.Caption:=DADOSFRENTEf.VENDEDORES.FieldByName('NOME').AsString;
    NxPanel182.Caption:=DADOSFRENTEf.VENDEDORES.FieldByName('NOME').AsString;
  end
  else begin
    Panel15.Caption:='';
    NxPanel182.Caption:='';
  end;
end;

procedure TGERALFRENTEF.MaskEdit11Exit(Sender: TObject);
begin
  inherited;
  if MaskEdit11.Text<>'' then begin
    DADOS_CADASTROSf.VEICULOS.Close;
    DADOS_CADASTROSf.VEICULOS.SQL.Clear;
    DADOS_CADASTROSf.VEICULOS.SQL.Add('Select * from VEICULOS where PLACA='+QuotedStr(MaskEdit11.Text));
    DADOS_CADASTROSf.VEICULOS.Open;
    if FiltroClienteVeiculo<>DADOS_CADASTROSf.VEICULOS.FieldByName('CLIENTE').AsString then begin
      ShowMessage('Essa placa não é de nenhum veiculo do cliente que você selecionou !!!');
      MaskEdit11.Clear;
      MaskEdit11.SetFocus;
    end
    else
      DADOS_CADASTROSf.OLEO.FieldByName('VEICULO').AsString:=DADOS_CADASTROSf.VEICULOS.FieldByName('CODIGO').AsString;
  end;
end;

procedure TGERALFRENTEF.MaskEdit2Enter(Sender: TObject);
begin
  inherited;
  MaskEdit2.Clear;
end;

procedure TGERALFRENTEF.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then begin
    if MaskEdit2.Text<>'' then begin
      FiltroOSServiçosPeças(MaskEdit2.Text);
      if not DataOBJETOSx.PRODSERV.IsEmpty then
        close
      else begin
        ShowMessage('OS Inexistente !!!');
        MaskEdit2.SetFocus;
      end;
    end;
  end;
end;

procedure TGERALFRENTEF.MaskEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then begin
    if MaskEdit3.Text<>'' then begin
      FiltroItensPedidoCliente(MaskEdit3.Text);
      if not DADOSMOVIMENTOF.ITEPEDIDOSCLI.IsEmpty then
        close
      else begin
        ShowMessage('Pedido Inexistente !!!');
        MaskEdit3.SetFocus;
      end;
    end;
  end;
end;

procedure TGERALFRENTEF.RxDBComboEdit4Exit(Sender: TObject);
begin
  inherited;
  EscolheOCliente;
end;

procedure TGERALFRENTEF.EscolheOCliente;
begin
  DADOSFRENTEf.CADASTRO_CLIENTES.Close;
  DADOSFRENTEf.CADASTRO_CLIENTES.SQL.Clear;
  DADOSFRENTEf.CADASTRO_CLIENTES.SQL.Add('Select * from CLIENTES where CODIGO='+QuotedStr(DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString));
  DADOSFRENTEf.CADASTRO_CLIENTES.open;
  FiltroDADOCLIE;
  // if DADOSFRENTEf.CADASTRO_CLIENTES.locate('CODIGO',
  //   DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString,[]) then begin
  if not DADOSFRENTEf.CADASTRO_CLIENTES.IsEmpty then begin
    // if not DADOSFRENTEf.DADOCLIE.IsEmpty then
    //   DADOSFRENTEf.DADOCLIE.Delete;
    ImformacoesCliente;
  end
  else begin
    // if not DADOSFRENTEf.DADOCLIE.IsEmpty then
    //   DADOSFRENTEf.DADOCLIE.Delete;
    DADOSFRENTEf.VENDAS_ECF2.FieldByName('CLIENTE').AsString:='';
    ShowMessage('Cliente Inexistente !!!');
    RxDBComboEdit4.SetFocus;
  end;
end;

procedure TGERALFRENTEF.RxDBComboEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    ConsultaGeral;
end;

procedure TGERALFRENTEF.RxDBComboEdit8ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TGERALFRENTEF.RxDBComboEdit8Enter(Sender: TObject);
begin
  inherited;
  if FiltroClienteVeiculo<>'' then
    FiltroVeiculo:=FiltroClienteVeiculo;
end;

procedure TGERALFRENTEF.RxDBComboEdit8Exit(Sender: TObject);
begin
  inherited;
  if FiltroClienteVeiculo<>'' then begin
    DADOS_CADASTROSf.VEICULOS.Close;
    DADOS_CADASTROSf.VEICULOS.SQL.Clear;
    DADOS_CADASTROSf.VEICULOS.SQL.Add('Select * from VEICULOS where Cliente='+QuotedStr(FiltroClienteVeiculo));
    DADOS_CADASTROSf.VEICULOS.Open;
  end
  else begin
    DADOS_CADASTROSf.VEICULOS.Close;
    DADOS_CADASTROSf.VEICULOS.SQL.Clear;
    DADOS_CADASTROSf.VEICULOS.SQL.Add('Select * from VEICULOS');
    DADOS_CADASTROSf.VEICULOS.Open;
  end;

  if DADOS_CADASTROSf.VEICULOS.Locate('CODIGO',DADOS_CADASTROSf.OLEO.FieldByName('VEICULO').AsString,[]) then begin
    DADOS_CADASTROSf.OLEO.FieldByName('PLACA').AsString:=DADOS_CADASTROSf.VEICULOS.FieldByName('PLACA').AsString;
    DADOS_CADASTROSf.OLEO.FieldByName('CLIENTE').AsString:=DADOS_CADASTROSf.VEICULOS.FieldByName('CLIENTE').AsString;
    if CupomVeiculo<>'' then begin
      DADOS_CADASTROSf.OLEO.FieldByName('CUPOM').AsString:=CupomVeiculo;
      DADOS_CADASTROSf.OLEO.FieldByName('DATA').AsDateTime:=DataVeiculo;
      FiltroVeiculo:=DADOS_CADASTROSf.OLEO.FieldByName('CLIENTE').AsString;
    end;
  end
  else begin
    ShowMessage('Carro Inexistente para !!!');
    DADOS_CADASTROSf.OLEO.FieldByName('VEICULO').AsString:='';
    RxDBComboEdit8.SetFocus;
  end;
end;

procedure TGERALFRENTEF.RxDBComboEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Pesquisa;
  if key=vk_f5 then
    CadastrodeVeiculos;;
end;

procedure TGERALFRENTEF.Panel6Enter(Sender: TObject);
begin
  inherited;
  MaskEdit3.Clear;
end;

procedure TGERALFRENTEF.Pesquisa;
begin
  if RxDBComboEdit8.Focused=true then begin
     Consultaveiculos;
    if CodigoConsulta<>'' then
      DADOS_CADASTROSf.OLEO.FieldByName('VEICULO').AsString:=CodigoConsulta;
  end;


  if CodVenx.Focused=true then begin
    ConsultaVendedores;
    if CodigoConsulta<>'' then begin
      CodVenx.Text:=CodigoConsulta;
      NxPanel17.Caption:=DescricaoConsulta;
    end;
  end;

  if ComboEdit1x.Focused=true then begin
    ConsultaHISTORIC;
    if CodigoConsulta<>'' then begin
      ComboEdit1x.Text:=CodigoConsulta;
      NxPanel27.Caption:=DescricaoConsulta;
    end;
  end;

  if ComboEdit2x.Focused=true then begin
    FiltraCampo:='HISTORIC='+QuotedStr(ComboEdit1x.Text);
    ConsultaSUB_HIST;
    if CodigoConsulta<>'' then begin
      ComboEdit2x.Text:=CodigoConsulta;
      NxPanel29.Caption:=DescricaoConsulta;
    end;
    FiltraCampo:='';
  end;



  {
  if ComboEdit9.Focused=true then begin
    ConsultaClientes;
    FiltroVeiculo:=CodigoConsulta;
    ConsultaVeiculos;
    ComboEdit9.Text:=PlacaVeiculo;
    PlacaVeiculo:='';
  end;

  if RxDBComboEdit1.Focused=true then begin
    ConsultaClientes;
    if CodigoConsulta<>'' then
      DADOS_CADASTROSf.Portador.FieldByName('CLIENTE').AsString:=CodigoConsulta;
  end;

  if RxDBComboEdit6.Focused=true then begin
    ConsultaClientes;
    if CodigoConsulta<>'' then
      DADOS_CADASTROSf.VEICULOS.FieldByName('CLIENTE').AsString:=CodigoConsulta;
  end;

  if RxDBComboEdit12.Focused=true then begin
    ConsultaFornecedores;
    if CodigoConsulta<>'' then
      DADOSFRENTEf.AUXICPAGAR.FieldByName('FORNECEDOR').AsString:=CodigoConsulta;
  end;

  if RxDBComboEdit8.Focused=true then begin
     Consultaveiculos;
    if CodigoConsulta<>'' then
      DADOS_CADASTROSf.OLEO.FieldByName('VEICULO').AsString:=CodigoConsulta;
  end;

  if RxDBComboEdit5.Focused=true then begin
    Consultaveiculos;
    if CodigoConsulta<>'' then
      DADOSVEICULOSF.ABASTECI.FieldByName('VEICULO').AsString:=CodigoConsulta;
  end;

  if RxDBComboEdit7.Focused=true then begin
    ConsultaVendedores;
    if CodigoConsulta<>'' then
      DADOSVEICULOSF.ABASTECI.FieldByName('VENDEDOR').AsString:=CodigoConsulta;
  end;

  if RxDBComboEdit9.Focused=true then begin
    Consultaveiculos;
    if CodigoConsulta<>'' then
      DADOSVEICULOSF.MANUTEM.FieldByName('VEICULO').AsString:=CodigoConsulta;
  end;

  if RxDBComboEdit10.Focused=true then begin
    ConsultaVendedores;
    if CodigoConsulta<>'' then
      DADOSVEICULOSF.MANUTEM.FieldByName('VENDEDOR').AsString:=CodigoConsulta;
  end;

  if RxDBComboEdit11.Focused=true then begin
    ConsultaOperadores;
    if CodigoConsulta<>'' then
      DADOSFRENTEf.CONF_PADRAO.FieldByName('OPERADOR').AsString:=CodigoConsulta;
  end;


  if RxDBComboEdit2.Focused=true then begin
    EscolheVendedor;
    DADOSFRENTEf.CONF_PADRAO.FieldByName('VENDEDOR').AsString:=CodigoConsulta;
  end;

  if CodVen.Focused=true then begin
    ConsultaVendedores;
    if CodigoConsulta<>'' then begin
      CodVen.Text:=CodigoConsulta;
      NxPanel17.Caption:=DescricaoConsulta;
    end;
  end;

  if ComboEdit1.Focused=true then begin
    ConsultaHISTORIC;
    if CodigoConsulta<>'' then begin
      ComboEdit1.Text:=CodigoConsulta;
      NxPanel27.Caption:=DescricaoConsulta;
    end;
  end;

  if ComboEdit2.Focused=true then begin
    FiltraCampo:='HISTORIC='+QuotedStr(ComboEdit1.Text);
    ConsultaSUB_HIST;
    if CodigoConsulta<>'' then begin
      ComboEdit2.Text:=CodigoConsulta;
      NxPanel29.Caption:=DescricaoConsulta;
    end;
    FiltraCampo:='';
  end;

  if RxDBComboEdit3.Focused=true then begin
    ConsultaHISTORIC;
    if CodigoConsulta<>'' then
      DADOS_CADASTROSf.SUB_HIST.FieldByName('HISTORIC').AsString:=CodigoConsulta;
  end;
  }
end;

procedure TGERALFRENTEF.ValorFormaEnter(Sender: TObject);
begin
  inherited;
  if TotaldasFormasX.Value>ValoraserPago.Value then begin
    DADOSFRENTEf.DiversasFormas.Cancel;
    Button19.SetFocus;
    ValorForma.Enabled:=true;
    ShowMessage('Total das formas de Pagamento já passa do Valor Total da Venda !!!');
  end;
end;

procedure TGERALFRENTEF.ValorFormaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var TotalFormax, TotalVendasx:double;
begin
  inherited;
  if key=vk_return then begin
    TotalFormax:=TotaldasFormasX.Value+ValorForma.Value;
    TotalVendasx:=ValoraserPago.Value;
    // if (FormaAvistaPrazo='P') and (TotalFormax>TotalVendasx) then begin
    //   ShowMessage('Valor com Troco só pode ser em Forma a Vista !!!');
    //   ValorForma.SetFocus;
    // end
    // else begin
      if QuantidadedeParcelasdaForma<>0 then
        DADOSFRENTEf.DiversasFormas.FieldByName('PARCELA').AsFloat:=QuantidadedeParcelasdaForma;
      if ValorForma.Value>0 then begin
        if TotalFormax>TotalVendasx then begin
          DADOSFRENTEf.DiversasFormas.FieldByName('TROCO').AsFloat:=TotalFormax-TotalVendasx;
          DADOSFRENTEf.DiversasFormas.FieldByName('VALOR').AsFloat:=ValorForma.Value-(TotalFormax-TotalVendasx);
          DADOSFRENTEf.DiversasFormas.FieldByName('TOTALPAGO').AsFloat:=ValorForma.Value;
        end
        else begin
          DADOSFRENTEf.DiversasFormas.FieldByName('VALOR').AsFloat:=ValorForma.Value;
          DADOSFRENTEf.DiversasFormas.FieldByName('TOTALPAGO').AsFloat:=ValorForma.Value;
          DADOSFRENTEf.DiversasFormas.FieldByName('TROCO').AsFloat:=0;
        end;
        DADOSFRENTEf.DiversasFormas.FieldByName('VENDASCONTAS').AsString:=ContaVendas;
        DADOSFRENTEf.DiversasFormas.Post;
        TotalFormas;
        ValorForma.Enabled:=false;
      end
      else begin
        ShowMessage('Informe o valor Da Forma de Pagamento !!!');
        ValorForma.SetFocus;
      end;
    // end;
    if ValoraserPago.Value=TotaldasFormasX.Value then
      Button19.SetFocus;
    if (TrocodaVenda.Value>0) and (cxButton50.Visible=false) then begin
      CheckBox14.Visible:=true;
    end;
    ValorForma.Clear;
    QuantidadedeParcelasdaForma:=0;
  end;
end;

procedure TGERALFRENTEF.TaxadeEntregaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then begin
    TotalaserPagaoF;
    cxGrid7.SetFocus;
  end;
end;

procedure TGERALFRENTEF.TotalFormas;
begin
  TotaldasFormasX.Value:=0;
  DADOSFRENTEf.DiversasFormas.First;
  while not DADOSFRENTEf.DiversasFormas.Eof do begin
    TotaldasFormasX.Value:=TotaldasFormasX.Value+DADOSFRENTEf.DiversasFormas.FieldByName('TOTALPAGO').AsFloat;
    DADOSFRENTEf.DiversasFormas.Next;
  end;
  if TotaldasFormasX.Value-ValoraserPago.Value>0 then
    TrocodaVenda.Value:=TotaldasFormasX.Value-ValoraserPago.Value;
end;

{
  ValorForma.Enabled:=true;
  FormaAvistaPrazo:='A';
  IncluiDiversasFormas('Cartão de Debito');
  FocaValorForma;
}

end.



