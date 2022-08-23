unit CadastroMovimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, mestre2, cxStyles, cxClasses,
  NxNotebook6, NxControls6, NxCollection6, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinsDefaultPainters, cxControls, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxGridLevel, cxGridDBChartView, cxGridDBCardView, cxGridDBBandedTableView,
  cxGridChartView, cxGridCustomLayoutView, cxGridCardView,
  cxGridBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons,
  RxToolEdit, RxCurrEdit, Vcl.Mask, Vcl.DBCtrls, RxDBCtrl, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, MemDS, DBAccess, Uni, System.Math;

type
  TCadastroMovimentosf = class(Tmestre2_FRM)
    NxNotebook61: TNxNotebook6;
    Entradas: TNxNotebookSheet6;
    PedidosEntradas: TNxNotebookSheet6;
    Saidas: TNxNotebookSheet6;
    PedidodeSaidas: TNxNotebookSheet6;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    OS: TNxNotebookSheet6;
    EntradasSaidas: TNxNotebookSheet6;
    NxNotebookSheet68: TNxNotebookSheet6;
    A1: TNxNotebookSheet6;
    A2: TNxNotebookSheet6;
    A3: TNxNotebookSheet6;
    ItensEntrada: TNxNotebookSheet6;
    Panel25: TPanel;
    Panel26: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    Panel27: TPanel;
    Label160: TLabel;
    Label161: TLabel;
    DateEdit4: TDateEdit;
    DateEdit5: TDateEdit;
    BitBtn14: TBitBtn;
    GroupBox2: TGroupBox;
    SomenteEntradas: TRadioButton;
    SomenteSaidas: TRadioButton;
    GroupBox1: TGroupBox;
    OrdemCodigoi: TRadioButton;
    OrdemData: TRadioButton;
    OrdemLancamento: TRadioButton;
    GroupBox3: TGroupBox;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    BitBtn15: TBitBtn;
    MaskEdit1: TMaskEdit;
    DiferencaCustoVenda: TCheckBox;
    ComboEdit4: TComboEdit;
    ComboEdit5: TComboEdit;
    ClientesFornecedores: TCheckBox;
    Panel28: TPanel;
    NxNotebook62: TNxNotebook6;
    NotadeCompras: TNxNotebookSheet6;
    Panel10: TPanel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    Label17: TLabel;
    Label25: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBDateEdit11: TDBDateEdit;
    DBDateEdit1: TDBDateEdit;
    RxDBComboEdit9: TRxDBComboEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit96: TDBEdit;
    Button3: TButton;
    Button4: TButton;
    ItensdaCompra: TNxNotebookSheet6;
    Panel1: TPanel;
    Button80: TButton;
    Button1: TButton;
    Button2: TButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3ITEM: TcxGridDBColumn;
    cxGridDBTableView3CODIGO: TcxGridDBColumn;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3BARRAS: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView3QTD: TcxGridDBColumn;
    cxGridDBTableView3PRECO: TcxGridDBColumn;
    cxGridDBTableView3TOTAL: TcxGridDBColumn;
    cxGridDBTableView3NOTA: TcxGridDBColumn;
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
    Panel5: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label98: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    CurrencyEdit1: TCurrencyEdit;
    cxButton34: TcxButton;
    cxGrid6: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridDBTableView11CODIGO: TcxGridDBColumn;
    cxGridDBTableView11BARRAS: TcxGridDBColumn;
    cxGridDBTableView11NOME: TcxGridDBColumn;
    cxGridBandedTableView6: TcxGridBandedTableView;
    cxGridBandedColumn11: TcxGridBandedColumn;
    cxGridBandedColumn12: TcxGridBandedColumn;
    cxGridCardView6: TcxGridCardView;
    cxGridChartView6: TcxGridChartView;
    cxGridTableView6: TcxGridTableView;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridDBCardView6: TcxGridDBCardView;
    cxGridDBChartView6: TcxGridDBChartView;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    Panel55: TPanel;
    Button50: TButton;
    Button51: TButton;
    Panel29: TPanel;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    ItemPedido: TNxNotebookSheet6;
    ItemSaida: TNxNotebookSheet6;
    ItemPedidoCliente: TNxNotebookSheet6;
    Panel57: TPanel;
    Panel58: TPanel;
    Button46: TButton;
    Button47: TButton;
    Panel59: TPanel;
    Panel60: TPanel;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    Panel61: TPanel;
    Panel62: TPanel;
    Panel63: TPanel;
    Panel64: TPanel;
    ComboEdit3: TComboEdit;
    Panel65: TPanel;
    Button48: TButton;
    Button49: TButton;
    Button52: TButton;
    Panel72: TPanel;
    Panel6: TPanel;
    NxNotebook63: TNxNotebook6;
    NxNotebookSheet61: TNxNotebookSheet6;
    Panel7: TPanel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText26: TDBText;
    DBText27: TDBText;
    DBText28: TDBText;
    DBText29: TDBText;
    Label116: TLabel;
    Label117: TLabel;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBDateEdit8: TDBDateEdit;
    DBDateEdit9: TDBDateEdit;
    RxDBComboEdit4: TRxDBComboEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    Button20: TButton;
    Button26: TButton;
    NxNotebookSheet62: TNxNotebookSheet6;
    Panel8: TPanel;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button53: TButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBTableView5Column1: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
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
    Panel9: TPanel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    cxGrid7: TcxGrid;
    cxGridDBTableView13: TcxGridDBTableView;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridBandedTableView7: TcxGridBandedTableView;
    cxGridBandedColumn13: TcxGridBandedColumn;
    cxGridBandedColumn14: TcxGridBandedColumn;
    cxGridCardView7: TcxGridCardView;
    cxGridChartView7: TcxGridChartView;
    cxGridTableView7: TcxGridTableView;
    cxGridDBBandedTableView7: TcxGridDBBandedTableView;
    cxGridDBCardView7: TcxGridDBCardView;
    cxGridDBChartView7: TcxGridDBChartView;
    cxGridDBTableView14: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    Panel11: TPanel;
    Button10: TButton;
    Button11: TButton;
    Panel73: TPanel;
    Panel74: TPanel;
    Panel12: TPanel;
    NxNotebook64: TNxNotebook6;
    DADOS: TNxNotebookSheet6;
    Panel13: TPanel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    DBText5: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    Label85: TLabel;
    Label86: TLabel;
    Button12: TButton;
    Button13: TButton;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBDateEdit6: TDBDateEdit;
    DBDateEdit7: TDBDateEdit;
    RxDBComboEdit3: TRxDBComboEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    PRODUTOS: TNxNotebookSheet6;
    Panel14: TPanel;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridBandedTableView1: TcxGridBandedTableView;
    cxGridBandedColumn1: TcxGridBandedColumn;
    cxGridBandedColumn2: TcxGridBandedColumn;
    cxGridCardView1: TcxGridCardView;
    cxGridChartView1: TcxGridChartView;
    cxGridTableView1: TcxGridTableView;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridDBChartView1: TcxGridDBChartView;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel15: TPanel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label99: TLabel;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    Panel16: TPanel;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Panel17: TPanel;
    NxNotebook65: TNxNotebook6;
    NxNotebookSheet66: TNxNotebookSheet6;
    Panel18: TPanel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    DBText39: TDBText;
    DBText40: TDBText;
    DBText41: TDBText;
    DBText42: TDBText;
    DBText43: TDBText;
    DBText44: TDBText;
    DBText45: TDBText;
    DBText46: TDBText;
    DBText47: TDBText;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    DBDateEdit10: TDBDateEdit;
    RxDBComboEdit6: TRxDBComboEdit;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    DBEdit97: TDBEdit;
    NxNotebookSheet67: TNxNotebookSheet6;
    Panel19: TPanel;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    cxGrid5: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridBandedTableView5: TcxGridBandedTableView;
    cxGridBandedColumn9: TcxGridBandedColumn;
    cxGridBandedColumn10: TcxGridBandedColumn;
    cxGridCardView5: TcxGridCardView;
    cxGridChartView5: TcxGridChartView;
    cxGridTableView5: TcxGridTableView;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridDBCardView5: TcxGridDBCardView;
    cxGridDBChartView5: TcxGridDBChartView;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    Panel20: TPanel;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit98: TDBEdit;
    DBEdit99: TDBEdit;
    DBEdit100: TDBEdit;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    DBEdit103: TDBEdit;
    Panel21: TPanel;
    Button24: TButton;
    Button25: TButton;
    Label189: TLabel;
    Button68: TButton;
    Button69: TButton;
    Label183: TLabel;
    Label184: TLabel;
    Label185: TLabel;
    Label186: TLabel;
    Label187: TLabel;
    Label188: TLabel;
    DBEdit119: TDBEdit;
    DBEdit120: TDBEdit;
    DBEdit121: TDBEdit;
    DBEdit123: TDBEdit;
    RxDBComboEdit8: TRxDBComboEdit;
    Panel103: TPanel;
    Panel102: TPanel;
    Panel101: TPanel;
    Panel104: TPanel;
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
    Panel85: TPanel;
    Panel86: TPanel;
    Panel87: TPanel;
    Panel88: TPanel;
    Panel89: TPanel;
    Panel90: TPanel;
    Panel35: TPanel;
    Panel39: TPanel;
    Button36: TButton;
    Button37: TButton;
    Panel40: TPanel;
    Label171: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Label176: TLabel;
    DBEdit109: TDBEdit;
    DBEdit110: TDBEdit;
    DBEdit111: TDBEdit;
    DBEdit112: TDBEdit;
    DBEdit113: TDBEdit;
    RxDBComboEdit5: TRxDBComboEdit;
    Panel41: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Panel42: TPanel;
    Panel4: TPanel;
    Panel31: TPanel;
    Button32: TButton;
    Button31: TButton;
    Panel32: TPanel;
    Label165: TLabel;
    Label166: TLabel;
    Label167: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    DBEdit104: TDBEdit;
    DBEdit105: TDBEdit;
    DBEdit106: TDBEdit;
    DBEdit107: TDBEdit;
    DBEdit108: TDBEdit;
    RxDBComboEdit2: TRxDBComboEdit;
    Panel33: TPanel;
    cxButton71: TcxButton;
    cxButton70: TcxButton;
    cxButton72: TcxButton;
    Panel34: TPanel;
    Panel30: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Edit3: TComboEdit;
    Panel38: TPanel;
    Button34: TButton;
    Button33: TButton;
    Button35: TButton;
    Panel47: TPanel;
    Panel48: TPanel;
    Button41: TButton;
    Button42: TButton;
    Panel49: TPanel;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    DBEdit114: TDBEdit;
    DBEdit115: TDBEdit;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit118: TDBEdit;
    RxDBComboEdit7: TRxDBComboEdit;
    Panel50: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    Panel51: TPanel;
    Panel52: TPanel;
    Panel53: TPanel;
    Panel54: TPanel;
    ComboEdit2: TComboEdit;
    Panel56: TPanel;
    Button43: TButton;
    Button44: TButton;
    Button45: TButton;
    Panel91: TPanel;
    Panel92: TPanel;
    Panel93: TPanel;
    Panel94: TPanel;
    Panel555: TPanel;
    Panel95: TPanel;
    Panel97: TPanel;
    Panel2: TPanel;
    Panel23: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Panel68: TPanel;
    Button60: TButton;
    Button61: TButton;
    NxNotebook66: TNxNotebook6;
    NxNotebookSheet63: TNxNotebookSheet6;
    Label8: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Nomecli: TDBLookupComboBox;
    DBEdit7: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    CodiCli: TRxDBComboEdit;
    DBDateEdit2: TDBDateEdit;
    DBEdit36: TDBEdit;
    DBDateEdit3: TDBDateEdit;
    NxNotebookSheet64: TNxNotebookSheet6;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Button5: TButton;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBDateEdit4: TDBDateEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBGrid3: TDBGrid;
    NxNotebookSheet65: TNxNotebookSheet6;
    Panel3: TPanel;
    Label190: TLabel;
    Panel22: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    DBGrid2: TDBGrid;
    DBEdit124: TDBEdit;
    NxNotebookSheet69: TNxNotebookSheet6;
    Label68: TLabel;
    Button6: TButton;
    DBMemo1: TDBMemo;
    DBEdit47: TDBEdit;
    DBDateEdit5: TDBDateEdit;
    Panel96: TPanel;
    Button70: TButton;
    Button71: TButton;
    Button72: TButton;
    Button73: TButton;
    Button74: TButton;
    Panel98: TPanel;
    Panel99: TPanel;
    Panel100: TPanel;
    Panel105: TPanel;
    Panel106: TPanel;
    Panel107: TPanel;
    Panel108: TPanel;
    Panel109: TPanel;
    Panel111: TPanel;
    Panel115: TPanel;
    Panel116: TPanel;
    Panel117: TPanel;
    Panel119: TPanel;
    Panel121: TPanel;
    Panel71: TPanel;
    Button66: TButton;
    Button67: TButton;
    Panel122: TPanel;
    Panel67: TPanel;
    RxDBComboEdit1: TRxDBComboEdit;
    DBEdit122: TDBEdit;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    ComboEdit1: TComboEdit;
    Panel46: TPanel;
    Button38: TButton;
    Button40: TButton;
    Button39: TButton;
    Panel123: TPanel;
    Panel124: TPanel;
    Panel112: TPanel;
    Panel118: TPanel;
    Panel69: TPanel;
    Button62: TButton;
    Button63: TButton;
    Panel110: TPanel;
    Panel70: TPanel;
    Button64: TButton;
    Button65: TButton;
    Panel120: TPanel;
    Panel24: TPanel;
    Panel66: TPanel;
    Panel113: TPanel;
    Panel125: TPanel;
    Panel126: TPanel;
    Panel127: TPanel;
    Panel128: TPanel;
    Panel129: TPanel;
    Panel130: TPanel;
    Panel132: TPanel;
    Panel133: TPanel;
    Panel135: TPanel;
    Panel136: TPanel;
    Panel137: TPanel;
    Panel139: TPanel;
    Panel140: TPanel;
    Panel141: TPanel;
    Panel143: TPanel;
    Panel144: TPanel;
    Panel145: TPanel;
    Panel146: TPanel;
    Panel147: TPanel;
    Panel148: TPanel;
    Panel114: TPanel;
    Panel131: TPanel;
    Panel134: TPanel;
    Panel138: TPanel;
    Panel142: TPanel;
    Panel149: TPanel;
    Panel150: TPanel;
    Panel151: TPanel;
    Panel152: TPanel;
    Panel165: TPanel;
    Panel166: TPanel;
    Panel167: TPanel;
    Panel168: TPanel;
    Panel169: TPanel;
    Panel170: TPanel;
    Panel171: TPanel;
    Panel172: TPanel;
    Panel173: TPanel;
    Panel174: TPanel;
    Panel175: TPanel;
    Panel176: TPanel;
    Panel177: TPanel;
    Panel178: TPanel;
    Panel179: TPanel;
    Panel180: TPanel;
    Panel181: TPanel;
    Panel182: TPanel;
    Panel183: TPanel;
    Panel184: TPanel;
    Panel185: TPanel;
    Panel186: TPanel;
    Panel187: TPanel;
    Panel188: TPanel;
    Panel189: TPanel;
    Panel190: TPanel;
    Panel191: TPanel;
    Panel192: TPanel;
    Panel193: TPanel;
    Panel194: TPanel;
    Panel195: TPanel;
    Panel196: TPanel;
    Panel197: TPanel;
    Panel153: TPanel;
    Panel154: TPanel;
    Panel155: TPanel;
    Panel156: TPanel;
    Panel157: TPanel;
    Panel158: TPanel;
    Panel159: TPanel;
    Panel160: TPanel;
    Panel161: TPanel;
    Panel162: TPanel;
    Panel163: TPanel;
    Panel164: TPanel;
    Panel198: TPanel;
    Panel199: TPanel;
    Panel200: TPanel;
    Panel201: TPanel;
    Panel202: TPanel;
    Panel203: TPanel;
    Panel204: TPanel;
    Panel205: TPanel;
    Panel206: TPanel;
    Panel207: TPanel;
    Panel208: TPanel;
    Panel209: TPanel;
    Panel210: TPanel;
    Panel211: TPanel;
    Panel212: TPanel;
    MaskEdit2: TMaskEdit;
    a: TLabel;
    Button54: TButton;
    Button55: TButton;
    RelatoriodeVendas: TNxNotebookSheet6;
    Panel213: TPanel;
    Label66: TLabel;
    Panel214: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel215: TPanel;
    Label67: TLabel;
    Label191: TLabel;
    BitBtn7: TBitBtn;
    datini: TDateEdit;
    DatFim: TDateEdit;
    Edit10: TComboEdit;
    Panel216: TPanel;
    Panel217: TPanel;
    Panel218: TPanel;
    Panel219: TPanel;
    Panel220: TPanel;
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button50Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button80Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxButton71Click(Sender: TObject);
    procedure cxButton70Click(Sender: TObject);
    procedure cxButton72Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Edit3ButtonClick(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure RxDBComboEdit2ButtonClick(Sender: TObject);
    procedure RxDBComboEdit2Exit(Sender: TObject);
    procedure RxDBComboEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit104Enter(Sender: TObject);
    procedure DBEdit107Enter(Sender: TObject);
    procedure DBEdit107Exit(Sender: TObject);
    procedure DBEdit108Enter(Sender: TObject);
    procedure DBEdit108KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Change(Sender: TObject);
    procedure CodiCliButtonClick(Sender: TObject);
    procedure CodiCliExit(Sender: TObject);
    procedure CodiCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit33Exit(Sender: TObject);
    procedure DBEdit37KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button6Click(Sender: TObject);
    procedure Button60Click(Sender: TObject);
    procedure Button61Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button53Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure Button62Click(Sender: TObject);
    procedure Button64Click(Sender: TObject);
    procedure Button63Click(Sender: TObject);
    procedure Button65Click(Sender: TObject);
    procedure Button67Click(Sender: TObject);
    procedure Button66Click(Sender: TObject);
    procedure RxDBComboEdit9ButtonClick(Sender: TObject);
    procedure RxDBComboEdit9Exit(Sender: TObject);
    procedure RxDBComboEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure cxGridDBTableView5DblClick(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure RxDBComboEdit4Exit(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure RxDBComboEdit5ButtonClick(Sender: TObject);
    procedure RxDBComboEdit5Exit(Sender: TObject);
    procedure RxDBComboEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboEdit7ButtonClick(Sender: TObject);
    procedure RxDBComboEdit7Exit(Sender: TObject);
    procedure RxDBComboEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboEdit8ButtonClick(Sender: TObject);
    procedure RxDBComboEdit8Exit(Sender: TObject);
    procedure RxDBComboEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit111Exit(Sender: TObject);
    procedure DBEdit112Exit(Sender: TObject);
    procedure DBEdit48Exit(Sender: TObject);
    procedure DBEdit66Exit(Sender: TObject);
    procedure DBEdit84Exit(Sender: TObject);
    procedure DBEdit117Enter(Sender: TObject);
    procedure DBEdit117Exit(Sender: TObject);
    procedure DBEdit112Enter(Sender: TObject);
    procedure DBEdit122Enter(Sender: TObject);
    procedure DBEdit122Exit(Sender: TObject);
    procedure DBEdit106Exit(Sender: TObject);
    procedure DBEdit116Exit(Sender: TObject);
    procedure DBEdit121Exit(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView9DblClick(Sender: TObject);
    procedure RxDBComboEdit1ButtonClick(Sender: TObject);
    procedure RxDBComboEdit1Enter(Sender: TObject);
    procedure RxDBComboEdit1Exit(Sender: TObject);
    procedure RxDBComboEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button5Click(Sender: TObject);
    procedure Button70Click(Sender: TObject);
    procedure Button71Click(Sender: TObject);
    procedure Button72Click(Sender: TObject);
    procedure Button73Click(Sender: TObject);
    procedure Button74Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure Button5Exit(Sender: TObject);
    procedure DBEdit108Exit(Sender: TObject);
    procedure DBEdit118Exit(Sender: TObject);
    procedure DBEdit113Exit(Sender: TObject);
    procedure DBEdit123Exit(Sender: TObject);
    procedure RxDBComboEdit3ButtonClick(Sender: TObject);
    procedure RxDBComboEdit6ButtonClick(Sender: TObject);
    procedure RxDBComboEdit6Exit(Sender: TObject);
    procedure RxDBComboEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboEdit3Exit(Sender: TObject);
    procedure ComboEdit4ButtonClick(Sender: TObject);
    procedure ComboEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboEdit5ButtonClick(Sender: TObject);
    procedure ComboEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button52Click(Sender: TObject);
    procedure Button54Click(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure Edit10ButtonClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Edit10KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton34Click(Sender: TObject);
  private
    procedure EntSai;
    procedure TotalNota;
    procedure TotalNotaSaida;
    procedure Condicao;
    procedure CancelaLancamenteos;
    procedure EntraItem;
    procedure AlteraItem;
    procedure ApagaItem;
    procedure CadastroAlteraItens;
    procedure TotalPedido;
    procedure TotalPedidoCliente;
    procedure ConsultaEstatica;
    procedure Pesquisa;
    procedure InformeCodigo;
    procedure InformeQuantidade;
    procedure InformePreco;
    procedure VerBarra;
    procedure CondicaoCodigoServiçoPeca;
    procedure ApagaEnt;
    procedure Somatoria;
    procedure SomaGeralX;
    procedure ConsultaFornecedorx;
    procedure ConsultaFORNECEDORESx(Consulta: string);
    procedure ConsultaClientesx2(Consulta: string);
    procedure ConsultaClientesx;
    procedure ConsultaClientesY2(Consulta: string);
    procedure ConsultaClientesY;
    procedure ItensOrdem;
    procedure SomaGeral;
    // procedure AcertaPreçosdosProdutos;
    procedure AcertaPreçosdosProdutos(QueryPesquisa:TUniQuery);
    procedure ImpCompras;
    function GrupodosProdutos(Codigo:string): string;
    procedure GrupodosProdutosConsulta;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroMovimentosf: TCadastroMovimentosf;
  Query1: TUniQuery;

implementation

{$R *.dfm}

uses DADOSMOVIMENTO, CAD_MANUTENCAO, PREVIEW, Cadastros, DADOS_CADASTROS,
  FUNCOES, FUNCOESUNIDAC, DADOSFRENTE, FUNCOESGERAIS, dadosOBJETOS, CONSULTAS,
  DADOS_CONSULTAS, MENSPROC;

procedure TCadastroMovimentosf.BitBtn12Click(Sender: TObject);
begin
  inherited;
  FotoPaisagengem:='PAISAGEM';
  EntSai;
  FotoPaisagengem:='';
end;

procedure TCadastroMovimentosf.BitBtn14Click(Sender: TObject);
begin
  inherited;
  DateEdit5.Text:=DateEdit4.Text;
end;

procedure TCadastroMovimentosf.BitBtn15Click(Sender: TObject);
begin
  inherited;
  ComboEdit5.Text:=ComboEdit4.Text;
end;

procedure TCadastroMovimentosf.BitBtn2Click(Sender: TObject);
begin
  inherited;
  // FotoPaisagengem:='PAISAGEM';
  ImpCompras;
  // FotoPaisagengem:='';
end;

procedure TCadastroMovimentosf.BitBtn7Click(Sender: TObject);
begin
  inherited;
  DatFim.Text:=datini.Text;
end;

procedure TCadastroMovimentosf.Button10Click(Sender: TObject);
Var NumeroNota,CodigoFornecedor,DataPedido:string;
begin
  inherited;
  NxNotebook63.ActivePageIndex:=0;
  if DADOSMOVIMENTOF.PEDIDOS.FieldByName('NOTA').AsString='' then begin
    ShowMessage('Imforme o Número do Pedido !!!');
    DBEdit5.SetFocus;
  end
  else if DADOSMOVIMENTOF.PEDIDOS.FieldByName('EMISSAO').AsString='' then begin
    ShowMessage('Imforme a Data de Emissão do Pedido !!!');
    DBDateEdit11.SetFocus;
  end
  else if DADOSMOVIMENTOF.ITEPEDIDOS.IsEmpty then begin
    ShowMessage('Informe os Itens do Pedido !!!');
    NxNotebook63.ActivePageIndex:=1;
    UltimoItem:=1;
    Button7.Click;
  end
  else begin
    Condicao;
    if CondicaoAceita<>'N' then begin
      if DADOSMOVIMENTOF.PEDIDOS.FieldByName('SUBSERIE').AsString='' then
        DADOSMOVIMENTOF.PEDIDOS.FieldByName('SUBSERIE').AsString:='  ';
      NumeroNota:=DADOSMOVIMENTOF.PEDIDOS.FieldByName('NOTA').AsString;
      CodigoFornecedor:=DADOSMOVIMENTOF.PEDIDOS.FieldByName('FORNECEDOR').AsString;
      DataPedido:=DADOSMOVIMENTOF.PEDIDOS.FieldByName('EMISSAO').AsString;
      DADOSMOVIMENTOF.PEDIDOS.Post;
      DADOSMOVIMENTOF.PEDIDOS.ApplyUpdates;
      DADOSMOVIMENTOF.PEDIDOS.Refresh;
      TabelaEstoque:=DADOSMOVIMENTOF.ITEPEDIDOS;
      TabelaEstoque.First;
      while not TabelaEstoque.Eof do begin
        TabelaEstoque.Edit;
        TabelaEstoque.FieldByName('NOTA').AsString:=NumeroNota;
        TabelaEstoque.FieldByName('FORNECEDOR').AsString:=CodigoFornecedor;
        TabelaEstoque.FieldByName('EMISSAO').AsString:=DataPedido;
        DADOSMOVIMENTOF.ESTOQUEEntrada.Close;
        DADOSMOVIMENTOF.ESTOQUEEntrada.open;
        DADOSMOVIMENTOF.ESTOQUEEntrada.refresh;
        GeraEstoque;
        TabelaEstoque.Post;
        TabelaEstoque.Next;
      end;
      TabelaEstoque.ApplyUpdates;
      TabelaEstoque.Refresh;
      // DADOSMOVIMENTOF.FORNECEDORES.Refresh;
      close;
    end;
  end;
end;

procedure TCadastroMovimentosf.Button11Click(Sender: TObject);
begin
  inherited;
  CancelaLancamenteos;
  close;
end;

procedure TCadastroMovimentosf.Button12Click(Sender: TObject);
begin
  inherited;
  CadastrodeClientes;
end;

procedure TCadastroMovimentosf.Button13Click(Sender: TObject);
begin
  inherited;
  ConsultaClientes;

  if CodigoConsulta<>'' then begin
    // DADOS_CADASTROSf.Clientes.Open;
    // DADOS_CADASTROSf.Clientes.Locate('codigo',CodigoConsulta,[]);
    DADOS_CADASTROSf.Clientes.Close;
    DADOS_CADASTROSf.Clientes.SQL.Clear;
    DADOS_CADASTROSf.Clientes.SQL.Add('Select * from CLIENTES where codigo='+QuotedStr(CodigoConsulta));
    DADOS_CADASTROSf.Clientes.Open;
    EditCadastroClientes;
  end;
end;

procedure TCadastroMovimentosf.Button14Click(Sender: TObject);
begin
  inherited;
  EntraItem;
end;

procedure TCadastroMovimentosf.Button15Click(Sender: TObject);
begin
  inherited;
  AlteraItem;
end;

procedure TCadastroMovimentosf.Button16Click(Sender: TObject);
begin
  inherited;
  ApagaItem;
end;

procedure TCadastroMovimentosf.Button17Click(Sender: TObject);
var
  NOTAx, MODELOx, SERIEx, SUBSERIEx:string;
begin
  inherited;
  NxNotebook64.ActivePageIndex:=0;
  if DADOSMOVIMENTOF.VENDAS.FieldByName('NOTA').AsString='' then begin
    ShowMessage('Imforme o Número do Documento !!!');
    DBEdit24.SetFocus;
  end
  else if DADOSMOVIMENTOF.VENDAS.FieldByName('MODELO').AsString='' then begin
    ShowMessage('Imforme o Modelo do Documento !!!');
    DBEdit25.SetFocus;
  end
  else if DADOSMOVIMENTOF.VENDAS.FieldByName('SERIE').AsString='' then begin
    ShowMessage('Imforme o Série do Documento !!!');
    DBEdit26.SetFocus;
  end
  else if DADOSMOVIMENTOF.VENDAS.FieldByName('EMISSAO').AsString='' then begin
    ShowMessage('Imforme a Data de Emissão do Documento !!!');
    DBDateEdit2.SetFocus;
  end
  else if DADOSMOVIMENTOF.VENDAS.FieldByName('DATA_SAIDA').AsString='' then begin
    ShowMessage('Imforme a Data de Saída do Documento !!!');
    DBDateEdit3.SetFocus;
  end
  else if DADOSMOVIMENTOF.VENDAS.FieldByName('CFOPS').AsString='' then begin
    ShowMessage('Imforme os CFOPS do Documento !!!');
    DBEdit29.SetFocus;
  end
  else if DADOSMOVIMENTOF.itevendas.IsEmpty then begin
    ShowMessage('Informe os Itens do Documento !!!');
    NxNotebook64.ActivePageIndex:=1;
    UltimoItem:=1;
    Button14.Click;
  end
  else begin
    Condicao;
    if CondicaoAceita<>'N' then begin
      if DADOSMOVIMENTOF.VENDAS.FieldByName('SUBSERIE').AsString='' then
        DADOSMOVIMENTOF.VENDAS.FieldByName('SUBSERIE').AsString:='  ';
      NOTAx:=DADOSMOVIMENTOF.VENDAS.FieldByName('NOTA').AsString;
      MODELOx:=DADOSMOVIMENTOF.VENDAS.FieldByName('MODELO').AsString;
      SERIEx:=DADOSMOVIMENTOF.VENDAS.FieldByName('SERIE').AsString;
      SUBSERIEx:=DADOSMOVIMENTOF.VENDAS.FieldByName('SUBSERIE').AsString;
      DADOSMOVIMENTOF.VENDAS.Post;
      DADOSMOVIMENTOF.VENDAS.ApplyUpdates;
      DADOSMOVIMENTOF.VENDAS.Refresh;
      if NovoEdita='EditaSaidas' then begin
        TabelaEstoque:=DADOSMOVIMENTOF.itevendas2;
        {
        DADOSMOVIMENTOF.ESTOQUEEntrada.Close;
        DADOSMOVIMENTOF.ESTOQUEEntrada.SQL.Clear;
        DADOSMOVIMENTOF.ESTOQUEEntrada.SQL.Add('SELECT * FROM produtos ORDER BY CODIGO');
        DADOSMOVIMENTOF.ESTOQUEEntrada.open;
        DADOSMOVIMENTOF.ESTOQUEEntrada.refresh;
        }
        DADOSMOVIMENTOF.itevendas2.First;
        while not DADOSMOVIMENTOF.itevendas2.Eof do
        begin
          GeraEstoqueSaida;
          DADOSMOVIMENTOF.itevendas2.Next;
        end;
      end;

      TabelaEstoque:=DADOSMOVIMENTOF.itevendas;
      DADOSMOVIMENTOF.itevendas.First;
      while not DADOSMOVIMENTOF.itevendas.Eof do begin
        DADOSMOVIMENTOF.itevendas.Edit;
        DADOSMOVIMENTOF.itevendas.FieldByName('NOTA').AsString:=NOTAx;
        DADOSMOVIMENTOF.itevendas.FieldByName('MODELO').AsString:=MODELOx;
        DADOSMOVIMENTOF.itevendas.FieldByName('SERIE').AsString:=SERIEx;
        DADOSMOVIMENTOF.itevendas.FieldByName('SUBSERIE').AsString:=SUBSERIEx;
        DADOSMOVIMENTOF.itevendas.FieldByName('ORIGEM').AsString:='01';
        {
        DADOSMOVIMENTOF.ESTOQUEEntrada.Close;
        DADOSMOVIMENTOF.ESTOQUEEntrada.open;
        DADOSMOVIMENTOF.ESTOQUEEntrada.refresh;
        }
        GeraEstoqueSaidas;
        DADOSMOVIMENTOF.itevendas.Post;
        DADOSMOVIMENTOF.itevendas.Next;
      end;
      if DADOS_CADASTROSf.EntradaSaida.Active=true then begin
        DADOS_CADASTROSf.EntradaSaida.ApplyUpdates;
        DADOS_CADASTROSf.EntradaSaida.Close;
        DADOS_CADASTROSf.EntradaSaida.CachedUpdates:=false;
      end;
      DADOSMOVIMENTOF.itevendas.ApplyUpdates;
      DADOSMOVIMENTOF.itevendas.Refresh;
      DADOSMOVIMENTOF.CLIENTESVENDAS.Refresh;
      close;
    end;
  end;
end;

procedure TCadastroMovimentosf.Button18Click(Sender: TObject);
begin
  inherited;
  DADOSMOVIMENTOF.VENDAS.Cancel;
  DADOSMOVIMENTOF.VENDAS.CancelUpdates;
  DADOSMOVIMENTOF.ITEVENDAS.CancelUpdates;
  close;
end;

procedure TCadastroMovimentosf.Button19Click(Sender: TObject);
var ItemNota:integer;
    Quantidax:double;
begin
  inherited;
  DADOS_CADASTROSf.EntradaSaida.Close;
  DADOS_CADASTROSf.EntradaSaida.CachedUpdates:=true;
  DADOS_CADASTROSf.EntradaSaida.Open;
  DADOS_CADASTROSf.EntradaSaida.First;
  ItemNota:=0;
  while not DADOS_CADASTROSf.EntradaSaida.Eof do begin
    if DADOS_CADASTROSf.EntradaSaida.FieldByName('QTD').asfloat<0 then begin
      ItemNota:=ItemNota+1;
      Quantidax:=DADOS_CADASTROSf.EntradaSaida.FieldByName('QTD').asfloat*-1;
      DADOSMOVIMENTOF.itevendas.Append;
      DADOSMOVIMENTOF.itevendas.FieldByName('CODIGO').AsInteger:=DADOS_CADASTROSf.EntradaSaida.FieldByName('CODIGO').AsInteger;
      DADOSMOVIMENTOF.itevendas.FieldByName('PRECO').asfloat:=DADOS_CADASTROSf.EntradaSaida.FieldByName('COMPRA_VENDA').asfloat;
      DADOSMOVIMENTOF.itevendas.FieldByName('QTD').asfloat:=Quantidax;
      DADOSMOVIMENTOF.itevendas.FieldByName('TOTAL').asfloat:=Quantidax*
      DADOS_CADASTROSf.EntradaSaida.FieldByName('COMPRA_VENDA').asfloat;
      DADOSMOVIMENTOF.itevendas.FieldByName('NOTA').AsString:='999999999';
      DADOSMOVIMENTOF.itevendas.FieldByName('BARRAS').AsString:=DADOS_CADASTROSf.EntradaSaida.FieldByName('BARRAS').AsString;
      DADOSMOVIMENTOF.itevendas.FieldByName('ITEM').AsInteger:=ItemNota;
      DADOSMOVIMENTOF.itevendas.FieldByName('EMISSAO').AsDateTime:=date;
      DADOSMOVIMENTOF.itevendas.Post;

      DADOSMOVIMENTOF.itevendas4.Append;
      DADOSMOVIMENTOF.itevendas4.FieldByName('ID').AsInteger:=DADOSMOVIMENTOF.itevendas.FieldByName('ID').AsInteger;
      DADOSMOVIMENTOF.itevendas4.FieldByName('CODIGO').AsInteger:=DADOS_CADASTROSf.EntradaSaida.FieldByName('CODIGO').AsInteger;
      DADOSMOVIMENTOF.itevendas4.FieldByName('PRECO').asfloat:=DADOS_CADASTROSf.EntradaSaida.FieldByName('COMPRA_VENDA').asfloat;
      DADOSMOVIMENTOF.itevendas4.FieldByName('QTD').asfloat:=Quantidax;
      DADOSMOVIMENTOF.itevendas4.FieldByName('TOTAL').asfloat:=Quantidax*
      DADOS_CADASTROSf.EntradaSaida.FieldByName('COMPRA_VENDA').asfloat;
      DADOSMOVIMENTOF.itevendas4.FieldByName('NOTA').AsString:='999999999';
      DADOSMOVIMENTOF.itevendas4.FieldByName('BARRAS').AsString:=DADOS_CADASTROSf.EntradaSaida.FieldByName('BARRAS').AsString;
      DADOSMOVIMENTOF.itevendas4.FieldByName('ITEM').AsInteger:=ItemNota;
      DADOSMOVIMENTOF.itevendas4.FieldByName('EMISSAO').AsDateTime:=date;
      DADOSMOVIMENTOF.itevendas4.Post;

      DADOS_CADASTROSf.EntradaSaida.Delete;
    end
    else
      DADOS_CADASTROSf.EntradaSaida.Next;
  end;
  TotalNotaSaida;
end;

procedure TCadastroMovimentosf.Button1Click(Sender: TObject);
begin
  inherited;
  AlteraItem;
end;

procedure TCadastroMovimentosf.AlteraItem;
begin
  AppendEdit:='E';
  if NxNotebook61.ActivePageIndex=0 then begin
    if DADOSMOVIMENTOF.ITECOMPRAS.IsEmpty then
      ShowMessage('Inclua algum Item Primeiro !!!')
    else begin
      // DADOSMOVIMENTOF.ITECOMPRAS.Edit;
      CadastroAlteraItens;
      Button80.SetFocus;
      TotalNota;
    end;
    // Button30.Click;
  end;
  if NxNotebook61.ActivePageIndex=1 then begin
    if DADOSMOVIMENTOF.ITEPEDIDOS.IsEmpty then
      ShowMessage('Inclua algum Item Primeiro !!!')
    else begin
      // DADOSMOVIMENTOF.ITEPEDIDOS.Edit;
      CadastroAlteraItens;
      Button7.SetFocus;
      TotalPedido;
    end;
  end;
  if NxNotebook61.ActivePageIndex=2 then begin
    if DADOSMOVIMENTOF.ITEVENDAS.IsEmpty then
      ShowMessage('Inclua algum Item Primeiro !!!')
    else begin
      // DADOSMOVIMENTOF.ITEVENDAS.Edit;
      CadastroAlteraItens;
      Button14.SetFocus;
      TotalNotaSaida;
    end;
  end;
  if NxNotebook61.ActivePageIndex=3 then begin
    if DADOSMOVIMENTOF.ITEPEDIDOSCLI.IsEmpty then
      ShowMessage('Inclua algum Item Primeiro !!!')
    else begin
      // DADOSMOVIMENTOF.ITEPEDIDOSCLI.Edit;
      CadastroAlteraItens;
      Button21.SetFocus;
      TotalPedidoCliente;
    end;
  end;
end;

procedure TCadastroMovimentosf.TotalPedidoCliente;
Var TotalProdutos, TotalNotas :double;
begin
  DADOSMOVIMENTOF.ITEPEDIDOSCLI4.First;
  while not DADOSMOVIMENTOF.ITEPEDIDOSCLI4.Eof do begin
     TotalProdutos:=TotalProdutos+DADOSMOVIMENTOF.ITEPEDIDOSCLI4.FieldByName('TOTAL').AsFloat;
     TotalNotas:=TotalNotas+DADOSMOVIMENTOF.ITEPEDIDOSCLI4.FieldByName('TOTAL').AsFloat;
     DADOSMOVIMENTOF.ITEPEDIDOSCLI4.Next;
  end;
  DADOSMOVIMENTOF.PED_CLI.FieldByName('TOT_PRODUTOS').AsFloat:=TotalNotas;
  DADOSMOVIMENTOF.PED_CLI.FieldByName('TOTAL').AsFloat:=TotalNotas;
end;

procedure TCadastroMovimentosf.TotalPedido;
Var TotalProdutos, TotalNotas :double;
begin
  DADOSMOVIMENTOF.ITEPEDIDOS4.First;
  while not DADOSMOVIMENTOF.ITEPEDIDOS4.Eof do begin
     TotalProdutos:=TotalProdutos+DADOSMOVIMENTOF.ITEPEDIDOS4.FieldByName('TOTAL').AsFloat;
     TotalNotas:=TotalNotas+DADOSMOVIMENTOF.ITEPEDIDOS4.FieldByName('TOTAL').AsFloat;
     DADOSMOVIMENTOF.ITEPEDIDOS4.Next;
  end;
  DADOSMOVIMENTOF.PEDIDOS.FieldByName('TOT_PRODUTOS').AsFloat:=TotalNotas;
  DADOSMOVIMENTOF.PEDIDOS.FieldByName('TOTAL').AsFloat:=TotalNotas;
end;

procedure TCadastroMovimentosf.CadastroAlteraItens;
begin
  if NxNotebook61.ActivePageIndex=0 then begin
    with TCadastroMovimentosf.Create(Self) do begin
      NxNotebook61.ActivePageIndex:=10;
      Width:=Panel4.Width;
      Height:=Panel4.Height;
      ShowModal;
    end;
  end;
  if NxNotebook61.ActivePageIndex=1 then begin
    with TCadastroMovimentosf.Create(Self) do begin
      NxNotebook61.ActivePageIndex:=11;
      Width:=Panel35.Width;
      Height:=Panel35.Height;
      ShowModal;
    end;
  end;
  if NxNotebook61.ActivePageIndex=2 then begin
    with TCadastroMovimentosf.Create(Self) do begin
      NxNotebook61.ActivePageIndex:=12;
      Width:=Panel47.Width;
      Height:=Panel47.Height;
      ShowModal;
    end;
  end;
  if NxNotebook61.ActivePageIndex=3 then begin
    with TCadastroMovimentosf.Create(Self) do begin
      NxNotebook61.ActivePageIndex:=13;
      Width:=Panel57.Width;
      Height:=Panel57.Height;
      ShowModal;
    end;
  end;
end;


procedure TCadastroMovimentosf.Button21Click(Sender: TObject);
begin
  inherited;
  EntraItem;
end;

procedure TCadastroMovimentosf.Button22Click(Sender: TObject);
begin
  inherited;
  AlteraItem;
end;

procedure TCadastroMovimentosf.Button23Click(Sender: TObject);
begin
  inherited;
  ApagaItem;
end;

procedure TCadastroMovimentosf.Button24Click(Sender: TObject);
var
  NOTAx:string;
begin
  inherited;
  NxNotebook65.ActivePageIndex:=0;
  if DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString='' then begin
    ShowMessage('Imforme o Número do Documento !!!');
    DBEdit24.SetFocus;
  end
  else if DADOSMOVIMENTOF.PED_CLI.FieldByName('EMISSAO').AsString='' then begin
    ShowMessage('Imforme a Data de Emissão do Documento !!!');
    DBDateEdit2.SetFocus;
  end
  else if DADOSMOVIMENTOF.ITEPEDIDOSCLI.IsEmpty then begin
    ShowMessage('Informe os Itens do Documento !!!');
    NxNotebook65.ActivePageIndex:=1;
    UltimoItem:=1;
    Button21.Click;
  end
  else begin
    Condicao;
    if CondicaoAceita<>'N' then begin
      NOTAx:=DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString;
      DADOSMOVIMENTOF.PED_CLI.Post;
      DADOSMOVIMENTOF.PED_CLI.ApplyUpdates;
      DADOSMOVIMENTOF.PED_CLI.Refresh;
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.First;
      while not DADOSMOVIMENTOF.ITEPEDIDOSCLI.Eof do begin
        DADOSMOVIMENTOF.ITEPEDIDOSCLI.Edit;
        DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('NOTA').AsString:=NOTAx;
        DADOSMOVIMENTOF.ITEPEDIDOSCLI.Post;
        DADOSMOVIMENTOF.ITEPEDIDOSCLI.Next;
      end;
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.ApplyUpdates;
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.Refresh;
      DADOSMOVIMENTOF.CLIENTESVENDAS.Open;
      DADOSMOVIMENTOF.CLIENTESVENDAS.Refresh;
      close;
    end;
  end;
end;

procedure TCadastroMovimentosf.Button25Click(Sender: TObject);
begin
  inherited;
  CancelaLancamenteos;
  close;
end;

procedure TCadastroMovimentosf.Button27Click(Sender: TObject);
begin
  inherited;
  NxNotebook62.ActivePageIndex:=0;
  DBEdit5.SetFocus;
end;

procedure TCadastroMovimentosf.Button28Click(Sender: TObject);
begin
  inherited;
  // Condicao;
  if DADOSMOVIMENTOF.COMPRAS.FieldByName('NOTA').AsString='' then begin
    ShowMessage('Informe o Número da Nota !!!');
    NxNotebook65.ActivePageIndex:=0;
    CondicaoAceita:='N';
    DBEdit5.SetFocus;
  end
  else if DADOSMOVIMENTOF.COMPRAS.FieldByName('FORNECEDOR').AsString='' then begin
    ShowMessage('Informe o Fornecedor da Nota !!!');
    NxNotebook65.ActivePageIndex:=0;
    CondicaoAceita:='N';
    RxDBComboEdit9.SetFocus;
  end
  else if DADOSMOVIMENTOF.COMPRAS.FieldByName('EMISSAO').AsString='' then begin
    ShowMessage('Informe a Data de Emissão da Nota !!!');
    NxNotebook65.ActivePageIndex:=0;
    CondicaoAceita:='N';
    DBDateEdit11.SetFocus;
  end
  else if DADOSMOVIMENTOF.COMPRAS.FieldByName('CFOPS').AsString='' then begin
    ShowMessage('Informe os CFOPS da Nota !!!');
    NxNotebook65.ActivePageIndex:=0;
    CondicaoAceita:='N';
    DBEdit10.SetFocus;
  end
  else begin
    NxNotebook62.ActivePageIndex:=1;
    // cxGrid6.Visible:=true;
    if DADOSMOVIMENTOF.ITECOMPRAS.IsEmpty then begin
      UltimoItem:=1;
      Button80.Click;
    end
    else begin
      DADOSMOVIMENTOF.ITECOMPRAS.Last;
      UltimoItem:=DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('ITEM').AsInteger+1;
      cxGrid1.SetFocus;
    end;
    Button80.SetFocus;
  end;
end;

procedure TCadastroMovimentosf.Button29Click(Sender: TObject);
var ItemNota:integer;
begin
  inherited;
  DADOS_CADASTROSf.EntradaSaida.Close;
  DADOS_CADASTROSf.EntradaSaida.CachedUpdates:=true;
  DADOS_CADASTROSf.EntradaSaida.Open;
  DADOS_CADASTROSf.EntradaSaida.First;
  ItemNota:=0;
  while not DADOS_CADASTROSf.EntradaSaida.Eof do begin
    if DADOS_CADASTROSf.EntradaSaida.FieldByName('QTD').asfloat>0 then begin
      ItemNota:=ItemNota+1;
      DADOSMOVIMENTOF.ITECOMPRAS.Append;
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsInteger:=DADOS_CADASTROSf.EntradaSaida.FieldByName('CODIGO').AsInteger;
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').asfloat:=DADOS_CADASTROSf.EntradaSaida.FieldByName('COMPRA_VENDA').asfloat;
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('QTD').asfloat:=DADOS_CADASTROSf.EntradaSaida.FieldByName('QTD').asfloat;
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('TOTAL').asfloat:=DADOS_CADASTROSf.EntradaSaida.FieldByName('QTD').asfloat*
      DADOS_CADASTROSf.EntradaSaida.FieldByName('COMPRA_VENDA').asfloat;
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('NOTA').AsString:='999999999';
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('BARRAS').AsString:=DADOS_CADASTROSf.EntradaSaida.FieldByName('BARRAS').AsString;
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('FORNECEDOR').AsString:=DADOSMOVIMENTOF.COMPRAS.FieldByName('FORNECEDOR').AsString;
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('ITEM').AsInteger:=ItemNota;
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('EMISSAO').AsDateTime:=date;
      DADOSMOVIMENTOF.ITECOMPRAS.Post;

      DADOSMOVIMENTOF.ITECOMPRAS4.Append;
      DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('CODIGO').AsInteger:=DADOS_CADASTROSf.EntradaSaida.FieldByName('CODIGO').AsInteger;
      DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('PRECO').asfloat:=DADOS_CADASTROSf.EntradaSaida.FieldByName('COMPRA_VENDA').asfloat;
      DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('QTD').asfloat:=DADOS_CADASTROSf.EntradaSaida.FieldByName('QTD').asfloat;
      DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('TOTAL').asfloat:=DADOS_CADASTROSf.EntradaSaida.FieldByName('QTD').asfloat*
      DADOS_CADASTROSf.EntradaSaida.FieldByName('COMPRA_VENDA').asfloat;
      DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('NOTA').AsString:='999999999';
      DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('BARRAS').AsString:=DADOS_CADASTROSf.EntradaSaida.FieldByName('BARRAS').AsString;
      DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('FORNECEDOR').AsString:=DADOSMOVIMENTOF.COMPRAS.FieldByName('FORNECEDOR').AsString;
      DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('ITEM').AsInteger:=ItemNota;
      DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('EMISSAO').AsDateTime:=date;
      DADOSMOVIMENTOF.ITECOMPRAS4.Post;
      DADOS_CADASTROSf.EntradaSaida.Delete;
    end
    else
      DADOS_CADASTROSf.EntradaSaida.Next;
  end;
  TotalNota;
end;

procedure TCadastroMovimentosf.Button2Click(Sender: TObject);
begin
  inherited;
  ApagaItem;
end;

procedure TCadastroMovimentosf.Button31Click(Sender: TObject);
begin
  inherited;
  DADOSMOVIMENTOF.ESTOQUExxx.Refresh;
  if DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsString='' then
    InformeCodigo
  else if DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('QTD').AsFloat=0 then
    InformeQuantidade
  else if DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').AsFloat=0 then
    InformePreco
  else if (DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('QTD').AsFloat>0) and
    (DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').AsFloat>0) and
    (DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsString<>'')
    then begin

    DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('QTD').AsFloat:=
     DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('TOTAL').AsFloat/
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').AsFloat;

    DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').AsFloat:=
     DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('TOTAL').AsFloat/
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('QTD').AsFloat;

    if DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('NOTA').AsString='' then begin
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('ITEM').AsInteger:=UltimoItem;
      UltimoItem:=UltimoItem+1;

      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('NOTA').AsString:=
        Nota;

      // DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('FORNECEDOR').AsString:= Fornecedor;

      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('FORNECEDOR').AsInteger:= 1;

      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('EMISSAO').AsString:=
        DADOSMOVIMENTOF.COMPRAS.FieldByName('EMISSAO').AsString;

    end;
    if CodigoGrade<>'' then
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('BARRAS').AsString:=CodigoGrade;

    DADOSMOVIMENTOF.ITECOMPRAS.Post;

    if DADOSMOVIMENTOF.ITECOMPRAS4.Locate('ITEM',DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('ITEM').AsString,[]) then begin
      DADOSMOVIMENTOF.ITECOMPRAS4.Edit;
      OrigemDestinoEdita(DADOSMOVIMENTOF.ITECOMPRAS, DADOSMOVIMENTOF.ITECOMPRAS4);
      DADOSMOVIMENTOF.ITECOMPRAS4.Post;
    end
    else
      OrigemDestino1(DADOSMOVIMENTOF.ITECOMPRAS, DADOSMOVIMENTOF.ITECOMPRAS4);

    close;
  end;
  CodigoGrade:='';
end;

procedure TCadastroMovimentosf.InformePreco;
begin
  if NxNotebook61.ActivePageIndex=10 then begin
    if DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').AsFloat=0 then begin
      ShowMessage('Informe primeiro o preço do Produto !!!');
      DBEdit28.SetFocus
    end;
  end;
  if NxNotebook61.ActivePageIndex=11 then begin
    if DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('PRECO').AsFloat=0 then begin
      ShowMessage('Informe primeiro o preço do Produto !!!');
      DBEdit117.SetFocus
    end;
  end;
  if NxNotebook61.ActivePageIndex=12 then begin
    if DADOSMOVIMENTOF.ITEVENDAS.FieldByName('PRECO').AsFloat=0 then begin
      ShowMessage('Informe primeiro o preço do Produto !!!');
      DBEdit112.SetFocus
    end;
  end;
  if NxNotebook61.ActivePageIndex=13 then begin
    if DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('PRECO').AsFloat=0 then begin
      ShowMessage('Informe primeiro o preço do Produto !!!');
      DBEdit122.SetFocus
    end;
  end;
end;


procedure TCadastroMovimentosf.InformeQuantidade;
begin
  if NxNotebook61.ActivePageIndex=10 then begin
    if DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('QTD').AsFloat=0 then begin
      ShowMessage('Imforme primeiro a quantidade do Produto !!!');
      DBEdit106.SetFocus
    end;
  end;
  if NxNotebook61.ActivePageIndex=11 then begin
    if DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('QTD').AsFloat=0 then begin
      ShowMessage('Imforme primeiro a quantidade do Produto !!!');
      DBEdit116.SetFocus
    end;
  end;
  if NxNotebook61.ActivePageIndex=12 then begin
    if DADOSMOVIMENTOF.ITEVENDAS.FieldByName('QTD').AsFloat=0 then begin
      ShowMessage('Imforme primeiro a quantidade do Produto !!!');
      DBEdit111.SetFocus
    end;
  end;
  if NxNotebook61.ActivePageIndex=13 then begin
    if DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('QTD').AsFloat=0 then begin
      ShowMessage('Imforme primeiro a quantidade do Produto !!!');
      DBEdit121.SetFocus
    end;
  end;
end;

procedure TCadastroMovimentosf.Button32Click(Sender: TObject);
begin
  inherited;
  DADOSMOVIMENTOF.ITECOMPRAS.Cancel;
  close;
end;

procedure TCadastroMovimentosf.Button33Click(Sender: TObject);
begin
  inherited;
  ConsultaProdutos;
  if CodigoConsulta<>'' then begin
    DADOS_CADASTROSf.PRODUTOS.Close;
    DADOS_CADASTROSf.PRODUTOS.SQL.Clear;
    DADOS_CADASTROSf.PRODUTOS.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(CodigoConsulta));
    DADOS_CADASTROSf.PRODUTOS.Open;
    EditCadastroProdutos;
    if Panel30.Visible then begin
      Edit3.Text:=CodigoConsulta;
      Edit3.SetFocus;
    end
    else begin
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      RxDBComboEdit2.SetFocus;
    end;
    CodigoConsulta:='';
  end;
end;

procedure TCadastroMovimentosf.Button34Click(Sender: TObject);
begin
  inherited;
  CadastrodeProdutos;
  if CodigoConsulta<>'' then begin
    if Panel37.Visible then begin
      Edit3.Text:=CodigoConsulta;
      Edit3.SetFocus;
    end
    else begin
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      RxDBComboEdit3.SetFocus;
      // RxDBComboEdit7.SetFocus;
    end;
    CodigoConsulta:='';
  end;
end;

procedure TCadastroMovimentosf.Button35Click(Sender: TObject);
begin
  inherited;
  DADOSMOVIMENTOF.ITECOMPRAS.Cancel;
  close;
end;

procedure TCadastroMovimentosf.Button36Click(Sender: TObject);
begin
  inherited;
  DADOSMOVIMENTOF.ITEVENDAS.Cancel;
  close;
end;

procedure TCadastroMovimentosf.Button37Click(Sender: TObject);
begin
  inherited;
  DADOSMOVIMENTOF.ESTOQUExxx.Refresh;
  if DADOSMOVIMENTOF.ITEVENDAS.FieldByName('CODIGO').AsString='' then
    InformeCodigo
  else if DADOSMOVIMENTOF.ITEVENDAS.FieldByName('QTD').AsFloat=0 then
    InformeQuantidade
  else if DADOSMOVIMENTOF.ITEVENDAS.FieldByName('PRECO').AsFloat=0 then
    InformePreco
  else if (DADOSMOVIMENTOF.ITEVENDAS.FieldByName('QTD').AsFloat>0) and
    (DADOSMOVIMENTOF.ITEVENDAS.FieldByName('PRECO').AsFloat>0) and
    (DADOSMOVIMENTOF.ITEVENDAS.FieldByName('CODIGO').AsString<>'')
    then begin
    DADOSMOVIMENTOF.ITEVENDAS.FieldByName('QTD').AsFloat:=
     DADOSMOVIMENTOF.ITEVENDAS.FieldByName('TOTAL').AsFloat/
      DADOSMOVIMENTOF.ITEVENDAS.FieldByName('PRECO').AsFloat;
    DADOSMOVIMENTOF.ITEVENDAS.FieldByName('PRECO').AsFloat:=
     DADOSMOVIMENTOF.ITEVENDAS.FieldByName('TOTAL').AsFloat/
      DADOSMOVIMENTOF.ITEVENDAS.FieldByName('QTD').AsFloat;
    if DADOSMOVIMENTOF.ITEVENDAS.FieldByName('NOTA').AsString='' then begin
      DADOSMOVIMENTOF.ITEVENDAS.FieldByName('ITEM').AsInteger:=UltimoItem;
      UltimoItem:=UltimoItem+1;
      DADOSMOVIMENTOF.ITEVENDAS.FieldByName('NOTA').AsString:=
        Nota;
      DADOSMOVIMENTOF.ITEVENDAS.FieldByName('EMISSAO').AsString:=
        DADOSMOVIMENTOF.VENDAS.FieldByName('EMISSAO').AsString;
    end;
    DADOSMOVIMENTOF.ITEVENDAS.Post;
    if DADOSMOVIMENTOF.ITEVENDAS4.Locate('ITEM',DADOSMOVIMENTOF.ITEVENDAS.FieldByName('ITEM').AsString,[]) then begin
      DADOSMOVIMENTOF.ITEVENDAS4.Edit;
      OrigemDestinoEdita(DADOSMOVIMENTOF.ITEVENDAS, DADOSMOVIMENTOF.ITEVENDAS4);
      DADOSMOVIMENTOF.ITEVENDAS4.Post;
    end
    else
      OrigemDestino1(DADOSMOVIMENTOF.ITEVENDAS, DADOSMOVIMENTOF.ITEVENDAS4);
    close;
  end;
end;

procedure TCadastroMovimentosf.Button38Click(Sender: TObject);
begin
  inherited;
  CadastrodeProdutos;
  if CodigoConsulta<>'' then begin
    if Panel43.Visible then begin
      ComboEdit1.Text:=CodigoConsulta;
      ComboEdit1.SetFocus;
    end
    else begin
      DADOSMOVIMENTOF.ITEVENDAS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      RxDBComboEdit5.SetFocus;
    end;
    CodigoConsulta:='';
  end;
end;

procedure TCadastroMovimentosf.Button39Click(Sender: TObject);
begin
  inherited;
  ConsultaProdutos;
  if CodigoConsulta<>'' then begin
    DADOS_CADASTROSf.PRODUTOS.Close;
    DADOS_CADASTROSf.PRODUTOS.SQL.Clear;
    DADOS_CADASTROSf.PRODUTOS.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(CodigoConsulta));
    DADOS_CADASTROSf.PRODUTOS.Open;
    EditCadastroProdutos;
    if Panel43.Visible then begin
      ComboEdit1.Text:=CodigoConsulta;
      ComboEdit1.SetFocus;
    end
    else begin
      DADOSMOVIMENTOF.ITEVENDAS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      RxDBComboEdit5.SetFocus;
    end;
    CodigoConsulta:='';
  end;
end;

procedure TCadastroMovimentosf.Button3Click(Sender: TObject);
begin
  inherited;
  CadastrodeFornecedores;
end;

procedure TCadastroMovimentosf.Button40Click(Sender: TObject);
begin
  inherited;
  DADOSMOVIMENTOF.ITEVENDAS.Cancel;
  close;
end;

procedure TCadastroMovimentosf.Button41Click(Sender: TObject);
begin
  inherited;
  DADOSMOVIMENTOF.ITEPEDIDOS.Cancel;
  close;
end;

procedure TCadastroMovimentosf.Button42Click(Sender: TObject);
begin
  inherited;
  DADOSMOVIMENTOF.ESTOQUExxx.Refresh;
  if DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('CODIGO').AsString='' then
    InformeCodigo
  else if DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('QTD').AsFloat=0 then
    InformeQuantidade
  else if DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('PRECO').AsFloat=0 then
    InformePreco
  else if (DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('QTD').AsFloat>0) and
    (DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('PRECO').AsFloat>0) and
    (DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('CODIGO').AsString<>'')
    then begin
    DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('QTD').AsFloat:=
     DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('TOTAL').AsFloat/
      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('PRECO').AsFloat;
    DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('PRECO').AsFloat:=
     DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('TOTAL').AsFloat/
      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('QTD').AsFloat;
    if DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('NOTA').AsString='' then begin
      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('ITEM').AsInteger:=UltimoItem;
      UltimoItem:=UltimoItem+1;
      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('NOTA').AsString:=Nota;
      // DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('FORNECEDOR').AsString:=Fornecedor;

      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('FORNECEDOR').AsInteger:=1;

      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('EMISSAO').AsString:=DADOSMOVIMENTOF.PEDIDOS.FieldByName('EMISSAO').AsString;
    end;
    if CodigoGrade<>'' then
      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('BARRAS').AsString:=CodigoGrade;

    DADOSMOVIMENTOF.ITEPEDIDOS.Post;
    // OrigemDestino1(DADOSMOVIMENTOF.ITEPEDIDOS, DADOSMOVIMENTOF.ITEPEDIDOS4);

    if DADOSMOVIMENTOF.ITEPEDIDOS4.Locate('ITEM',DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('ITEM').AsString,[]) then begin
      DADOSMOVIMENTOF.ITEPEDIDOS4.Edit;
      OrigemDestinoEdita(DADOSMOVIMENTOF.ITEPEDIDOS, DADOSMOVIMENTOF.ITEPEDIDOS4);
      DADOSMOVIMENTOF.ITEPEDIDOS4.Post;
    end
    else
      OrigemDestino1(DADOSMOVIMENTOF.ITEPEDIDOS, DADOSMOVIMENTOF.ITEPEDIDOS4);

    CodigoGrade:='';
    close;
  end;
end;

procedure TCadastroMovimentosf.Button43Click(Sender: TObject);
begin
  inherited;
  CadastrodeProdutos;
  if CodigoConsulta<>'' then begin
    if Panel52.Visible then begin
      ComboEdit2.Text:=CodigoConsulta;
      ComboEdit2.SetFocus;
    end
    else begin
      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      RxDBComboEdit7.SetFocus;
    end;
    CodigoConsulta:='';
  end;
end;

procedure TCadastroMovimentosf.Button44Click(Sender: TObject);
begin
  inherited;
  DADOSMOVIMENTOF.ITEPEDIDOS.Cancel;
  close;
end;

procedure TCadastroMovimentosf.Button45Click(Sender: TObject);
begin
  inherited;
  ConsultaProdutos;
  if CodigoConsulta<>'' then begin
    DADOS_CADASTROSf.PRODUTOS.Close;
    DADOS_CADASTROSf.PRODUTOS.SQL.Clear;
    DADOS_CADASTROSf.PRODUTOS.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(CodigoConsulta));
    DADOS_CADASTROSf.PRODUTOS.Open;
    EditCadastroProdutos;
    if Panel52.Visible then begin
      ComboEdit2.Text:=CodigoConsulta;
      ComboEdit2.SetFocus;
    end
    else begin
      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      RxDBComboEdit7.SetFocus;
    end;
    CodigoConsulta:='';
  end;
end;

procedure TCadastroMovimentosf.Button46Click(Sender: TObject);
begin
  inherited;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI.Cancel;
  close;
end;

procedure TCadastroMovimentosf.Button47Click(Sender: TObject);
begin
  inherited;
  DADOSMOVIMENTOF.ESTOQUExxx.Refresh;
  if DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('CODIGO').AsString='' then
    InformeCodigo
  else if DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('QTD').AsFloat=0 then
    InformeQuantidade
  else if DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('PRECO').AsFloat=0 then
    InformePreco
  else if (DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('QTD').AsFloat>0) and
    (DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('PRECO').AsFloat>0) and
    (DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('CODIGO').AsString<>'')
    then begin
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('QTD').AsFloat:=
     DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('TOTAL').AsFloat/
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('PRECO').AsFloat;
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('PRECO').AsFloat:=
     DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('TOTAL').AsFloat/
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('QTD').AsFloat;
    if DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('NOTA').AsString='' then begin
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('ITEM').AsInteger:=UltimoItem;
      UltimoItem:=UltimoItem+1;
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('NOTA').AsString:=
        Nota;
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('EMISSAO').AsString:=
        DADOSMOVIMENTOF.PED_CLI.FieldByName('EMISSAO').AsString;
    end;
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.Post;
    if DADOSMOVIMENTOF.ITEPEDIDOSCLI4.Locate('ITEM',DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('ITEM').AsString,[]) then begin
      DADOSMOVIMENTOF.ITEPEDIDOSCLI4.Edit;
      OrigemDestinoEdita(DADOSMOVIMENTOF.ITEVENDAS, DADOSMOVIMENTOF.ITEPEDIDOSCLI4);
      DADOSMOVIMENTOF.ITEPEDIDOSCLI4.Post;
    end
    else
      OrigemDestino1(DADOSMOVIMENTOF.ITEPEDIDOSCLI, DADOSMOVIMENTOF.ITEPEDIDOSCLI4);
    close;
  end;
end;

procedure TCadastroMovimentosf.Button48Click(Sender: TObject);
begin
  inherited;
  CadastrodeProdutos;
  if CodigoConsulta<>'' then begin
    if Panel62.Visible then begin
      ComboEdit3.Text:=CodigoConsulta;
      ComboEdit3.SetFocus;
    end
    else begin
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('CODIGO').AsString:=CodigoConsulta;
      RxDBComboEdit8.SetFocus;
    end;
    CodigoConsulta:='';
  end;
end;

procedure TCadastroMovimentosf.Button49Click(Sender: TObject);
begin
  inherited;
  DADOSMOVIMENTOF.ITEPEDIDOSCLI.Cancel;
  close;
end;

procedure TCadastroMovimentosf.Button4Click(Sender: TObject);
begin
  inherited;
  ConsultaFornecedores;

  if CodigoConsulta<>'' then begin
    // DADOS_CADASTROSf.FORNECEDORES.Open;
    // DADOS_CADASTROSf.FORNECEDORES.Locate('codigo',CodigoConsulta,[]);

    DADOS_CADASTROSf.FORNECEDORES.Close;
    DADOS_CADASTROSf.FORNECEDORES.SQL.Clear;
    DADOS_CADASTROSf.FORNECEDORES.SQL.Add('Select * from FORNECEDORES where CODIGO='+QuotedStr(CodigoConsulta));
    DADOS_CADASTROSf.FORNECEDORES.Open;

    EditCadastroFornecedor;
  end;
end;

procedure TCadastroMovimentosf.ApagaItem;
begin
  if NxNotebook61.ActivePageIndex=0 then begin
    if not DADOSMOVIMENTOF.ITECOMPRAS.IsEmpty then begin
      if DADOSMOVIMENTOF.ITECOMPRAS4.Locate('ITEM',DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('ITEM').AsString,[]) then
        DADOSMOVIMENTOF.ITECOMPRAS4.Delete;
      DADOSMOVIMENTOF.ITECOMPRAS.Delete;
      TotalNota;
    end;
  end;
  if NxNotebook61.ActivePageIndex=1 then begin
    if not DADOSMOVIMENTOF.ITEPEDIDOS.IsEmpty then begin
      if DADOSMOVIMENTOF.ITEPEDIDOS4.Locate('ITEM',DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('ITEM').AsString,[]) then
        DADOSMOVIMENTOF.ITEPEDIDOS4.Delete;
      DADOSMOVIMENTOF.ITEPEDIDOS.Delete;
      TotalPedido;
    end;
  end;
  if NxNotebook61.ActivePageIndex=2 then begin
    if not DADOSMOVIMENTOF.ITEVENDAS.IsEmpty then begin
      if DADOSMOVIMENTOF.ITEVENDAS4.Locate('ITEM',DADOSMOVIMENTOF.ITEVENDAS.FieldByName('ITEM').AsString,[]) then
        DADOSMOVIMENTOF.ITEVENDAS4.Delete;
      DADOSMOVIMENTOF.ITEVENDAS.Delete;
      TotalNotaSaida;
    end;
  end;
  if NxNotebook61.ActivePageIndex=3 then begin
    if not DADOSMOVIMENTOF.ITEPEDIDOSCLI.IsEmpty then begin
      if DADOSMOVIMENTOF.ITEPEDIDOSCLI4.Locate('ITEM',DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('ITEM').AsString,[]) then
        DADOSMOVIMENTOF.ITEPEDIDOSCLI4.Delete;
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.Delete;
      TotalPedidoCliente;
    end;
  end;
end;

procedure TCadastroMovimentosf.TotalNota;
Var TotalProdutos, TotalNotas :double;
begin
  DADOSMOVIMENTOF.ITECOMPRAS4.First;
  while not DADOSMOVIMENTOF.ITECOMPRAS4.Eof do begin
     TotalProdutos:=TotalProdutos+DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('TOTAL').AsFloat;
     TotalNotas:=TotalNotas+DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('TOTAL').AsFloat;
     DADOSMOVIMENTOF.ITECOMPRAS4.Next;
  end;
  DADOSMOVIMENTOF.COMPRAS.FieldByName('TOT_PRODUTOS').AsFloat:=TotalNotas;
  DADOSMOVIMENTOF.COMPRAS.FieldByName('TOTAL').AsFloat:=TotalNotas;
end;

procedure TCadastroMovimentosf.TotalNotaSaida;
Var TotalProdutos, TotalNotas :double;
begin
  DADOSMOVIMENTOF.ITEVENDAS4.First;
  while not DADOSMOVIMENTOF.ITEVENDAS4.Eof do begin
     TotalProdutos:=TotalProdutos+DADOSMOVIMENTOF.ITEVENDAS4.FieldByName('TOTAL').AsFloat;
     TotalNotas:=TotalNotas+DADOSMOVIMENTOF.ITEVENDAS4.FieldByName('TOTAL').AsFloat;
     DADOSMOVIMENTOF.ITEVENDAS4.Next;
  end;
  DADOSMOVIMENTOF.VENDAS.FieldByName('TOT_PRODUTOS').AsFloat:=TotalNotas;
  DADOSMOVIMENTOF.VENDAS.FieldByName('TOTAL').AsFloat:=TotalNotas;
end;

procedure TCadastroMovimentosf.Button50Click(Sender: TObject);
Var NumeroNota,CodigoFornecedor,DadadeEmissao:string;
begin
  inherited;
  NxNotebook62.ActivePageIndex:=0;
  if DADOSMOVIMENTOF.COMPRAS.FieldByName('NOTA').AsString='' then begin
    ShowMessage('Imforme o Número do Documento !!!');
    DBEdit5.SetFocus;
  end
  else if DADOSMOVIMENTOF.COMPRAS.FieldByName('MODELO').AsString='' then begin
    ShowMessage('Imforme o Modelo do Documento !!!');
    DBEdit6.SetFocus;
  end
  else if DADOSMOVIMENTOF.COMPRAS.FieldByName('SERIE').AsString='' then begin
    ShowMessage('Imforme o Sérid do Documento !!!');
    DBEdit8.SetFocus;
  end
  else if DADOSMOVIMENTOF.COMPRAS.FieldByName('EMISSAO').AsString='' then begin
    ShowMessage('Imforme a Data de Emissão do Documento !!!');
    DBDateEdit11.SetFocus;
  end
  else if DADOSMOVIMENTOF.COMPRAS.FieldByName('SAIDA').AsString='' then begin
    ShowMessage('Imforme a Data de Saída do Documento !!!');
    DBDateEdit1.SetFocus;
  end
  else if DADOSMOVIMENTOF.COMPRAS.FieldByName('CFOPS').AsString='' then begin
    ShowMessage('Imforme os CFOPS do Documento !!!');
    DBEdit10.SetFocus;
  end
  else if DADOSMOVIMENTOF.ITECOMPRAS.IsEmpty then begin
    ShowMessage('Informe os Itens do Documento !!!');
    NxNotebook62.ActivePageIndex:=1;
    UltimoItem:=1;
    Button80.Click;
  end
  else begin
    Condicao;
    if CondicaoAceita<>'N' then begin
      if DADOSMOVIMENTOF.COMPRAS.FieldByName('SUBSERIE').AsString='' then
        DADOSMOVIMENTOF.COMPRAS.FieldByName('SUBSERIE').AsString:='  ';
      NumeroNota:=DADOSMOVIMENTOF.COMPRAS.FieldByName('NOTA').AsString;
      CodigoFornecedor:=DADOSMOVIMENTOF.COMPRAS.FieldByName('FORNECEDOR').AsString;
      DadadeEmissao:=DADOSMOVIMENTOF.COMPRAS.FieldByName('EMISSAO').AsString;
      DADOSMOVIMENTOF.COMPRAS.Post;
      DADOSMOVIMENTOF.COMPRAS.ApplyUpdates;
      DADOSMOVIMENTOF.COMPRAS.Refresh;
      if NovoEdita='EditaEntrada' then begin
        TabelaEstoque:=DADOSMOVIMENTOF.ITECOMPRAS2;
        TabelaEstoque.First;
        while not TabelaEstoque.Eof do
        begin
          GeraEstoque;
          TabelaEstoque.Next;
        end;
      end;
      TabelaEstoque:=DADOSMOVIMENTOF.ITECOMPRAS;
      TabelaEstoque.First;
      while not TabelaEstoque.Eof do begin
        TabelaEstoque.Edit;
        TabelaEstoque.FieldByName('NOTA').AsString:=NumeroNota;
        TabelaEstoque.FieldByName('FORNECEDOR').AsString:=CodigoFornecedor;
        TabelaEstoque.FieldByName('EMISSAO').AsString:=DadadeEmissao;

        DADOSMOVIMENTOF.ESTOQUEEntrada.Close;
        DADOSMOVIMENTOF.ESTOQUEEntrada.open;
        DADOSMOVIMENTOF.ESTOQUEEntrada.refresh;
        GeraEstoque;
        TabelaEstoque.Post;
        TabelaEstoque.Next;
      end;
      if DADOS_CADASTROSf.EntradaSaida.Active=true then begin
        DADOS_CADASTROSf.EntradaSaida.ApplyUpdates;
        DADOS_CADASTROSf.EntradaSaida.Close;
        DADOS_CADASTROSf.EntradaSaida.CachedUpdates:=false;
      end;
      TabelaEstoque.ApplyUpdates;
      TabelaEstoque.Refresh;
      // DADOSMOVIMENTOF.FORNECEDORES.Refresh;
      close;
    end;
  end;
end;

procedure TCadastroMovimentosf.CodiCliButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TCadastroMovimentosf.CodiCliExit(Sender: TObject);
begin
  inherited;
  if DataOBJETOSx.ORDENS.FieldByName('CodCli').AsString <> '' then begin
    DataOBJETOSx.ORDENS.Edit;
    DataOBJETOSx.ORDENS.FieldByName('CodCli').AsString:=Codicli.text;
    // DataOBJETOSx.CLIENTES.Open;
    DataOBJETOSx.CLIENTES.Close;
    DataOBJETOSx.CLIENTES.SQL.Clear;
    DataOBJETOSx.CLIENTES.SQL.Add('Select * from CLIENTES where CODIGO='+QuotedStr(CodiCli.text));
    DataOBJETOSx.CLIENTES.Open;
    // if not DataOBJETOSx.CLIENTES.Locate('CODIGO',CodiCli.text, []) then begin
    if DataOBJETOSx.CLIENTES.IsEmpty then begin
      ShowMessage('Código Inexistente !!!');
      DataOBJETOSx.ORDENS.FieldByName('CodCli').AsString:='';
      CodiCli.SetFocus;
    end;
  end;
end;

procedure TCadastroMovimentosf.CodiCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var anda : integer;
begin
  inherited;
  if key=vk_f3 then
    Pesquisa;
  if (shift=[ssctrl]) and (Key=Vk_Delete) then begin
    Key:=vk_clear;
    ApagaEnt;
    SomaGeralX;
  end;
  if key=vk_F2 then begin
    CadastrodeProdutos;
    DataOBJETOSx.produtos.Refresh;
    {
    if PageControl1.ActivePage=TabSheet3 then
      ADMF.Servios1.Click
    else if PageControl1.ActivePage=TabSheet4 then
      ADMF.Mend_Produtos.Click;
    }
  end;
  if Key=vk_Prior then
    anda:=-11
  else if Key=vk_Next  then
    anda:=11
  else if Key=Vk_up then
    anda:=-1
  else if Key=Vk_down then
    anda:=1
  else if Key=vk_Home then
    DataOBJETOSx.ProdServ.First
  else if Key=vk_End then
    DataOBJETOSx.ProdServ.Last;
  if Key=vk_Delete then begin
    DataOBJETOSx.ProdServ.Edit;
    DataOBJETOSx.ProdServ.FieldByName('CODIGO').AsString:='';
  end;
  if (Key=vk_Prior) or (Key=vk_Next) or (Key=Vk_up) or (Key=Vk_down) then begin
    if (DataOBJETOSx.ProdServ.State=dsInsert) and (DataOBJETOSx.ProdServ.FieldByName('CODIGO').AsString='') then begin
      DataOBJETOSx.ProdServ.Cancel;
      DataOBJETOSx.ProdServ.Edit;
    end
    else begin
      DataOBJETOSx.ProdServ.Cancel;
      DataOBJETOSx.ProdServ.MoveBy(anda);
      DataOBJETOSx.ProdServ.Edit;
    end;
  end;
end;

procedure TCadastroMovimentosf.ComboEdit4ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TCadastroMovimentosf.ComboEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Pesquisa;
  if key=vk_delete then
    ComboEdit4.Clear;
end;

procedure TCadastroMovimentosf.ComboEdit5ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TCadastroMovimentosf.ComboEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Pesquisa;
  if key=vk_delete then
    ComboEdit4.Clear;
end;

procedure TCadastroMovimentosf.SomaGeralX;
var SomaGeral:double;
begin
  if DataOBJETOSx.ORDENS.State in [dsedit,dsinsert] then
    DataOBJETOSx.ORDENS.FieldByName('VLRTOTALOS').AsFloat:=DataOBJETOSx.ORDENS.FieldByName('VLRFRETE').AsFloat+DataOBJETOSx.ORDENS.FieldByName('VLRTOTSERV').AsFloat+DataOBJETOSx.ORDENS.FieldByName('VLRTOTPECA').AsFloat;
end;


procedure TCadastroMovimentosf.ApagaEnt;
begin
  if not DataOBJETOSx.ProdServ.IsEmpty then begin
    DataOBJETOSx.ProdServ.Delete;
    Somatoria;
    DataOBJETOSx.ProdServ.Edit;
  end;
end;

procedure TCadastroMovimentosf.Somatoria;
var TotalGeral:double;
begin
  TotalGeral:=0;
  DataOBJETOSx.ProdServ.First;
  while not DataOBJETOSx.ProdServ.Eof do begin
    TotalGeral:=TotalGeral+DataOBJETOSx.ProdServ.FieldByName('TOTAL').AsFloat;
    DataOBJETOSx.ProdServ.Next;
  end;
  // if TabSheet3.Visible then
  if (NxNotebook66.ActivePageIndex=2) and (Label190.Caption='TOTAL de Serviços') then
    DataOBJETOSx.ORDENS.FieldByName('VLRTOTSERV').AsFloat:=TotalGeral
  else if (NxNotebook66.ActivePageIndex=2) and (Label190.Caption<>'TOTAL de Serviços') then
    DataOBJETOSx.ORDENS.FieldByName('VLRTOTPECA').AsFloat:=TotalGeral;
 // if (PageControl1.ActivePage=TabSheet3) or (PageControl1.ActivePage=TabSheet4) then
 // if NxNotebook66.ActivePageIndex=2 then
 //   DBGrid2.Visible:=true;
end;

procedure TCadastroMovimentosf.Condicao;
begin
  if NxNotebook62.ActivePageIndex=0 then begin
    CondicaoAceita:='S';
    if DADOSMOVIMENTOF.COMPRAS.FieldByName('NOTA').AsString='' then begin
      ShowMessage('Informe o Número da Nota !!!');
      NxNotebook65.ActivePageIndex:=0;
      CondicaoAceita:='N';
      DBEdit5.SetFocus;
    end
    else if DADOSMOVIMENTOF.COMPRAS.FieldByName('FORNECEDOR').AsString='' then begin
      ShowMessage('Informe o Fornecedor da Nota !!!');
      NxNotebook65.ActivePageIndex:=0;
      CondicaoAceita:='N';
      RxDBComboEdit9.SetFocus;
    end
    else if DADOSMOVIMENTOF.COMPRAS.FieldByName('EMISSAO').AsString='' then begin
      ShowMessage('Informe a Data de Emissão da Nota !!!');
      NxNotebook65.ActivePageIndex:=0;
      CondicaoAceita:='N';
      DBDateEdit11.SetFocus;
    end
    else if DADOSMOVIMENTOF.COMPRAS.FieldByName('CFOPS').AsString='' then begin
      ShowMessage('Informe os CFOPS da Nota !!!');
      NxNotebook65.ActivePageIndex:=0;
      CondicaoAceita:='N';
      DBEdit10.SetFocus;
    end;
    {
    else begin
      if NxNotebook62.ActivePageIndex=1 then begin
        cxGrid6.Visible:=true;
        if DADOSMOVIMENTOF.ITECOMPRAS.IsEmpty then begin
          UltimoItem:=1;
          Button80.Click;
        end
        else begin
          DADOSMOVIMENTOF.ITECOMPRAS.Last;
          UltimoItem:=DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('ITEM').AsInteger+1;
          cxGrid1.SetFocus;
        end;
        Button30.Click;
        cxGrid1.SetFocus;
        Button80.SetFocus;
      end;
      if NxNotebook62.ActivePageIndex=0 then
        cxGrid6.Visible:=false;
    end;
    }
  end;

  if NxNotebook61.ActivePageIndex=1 then begin
    CondicaoAceita:='S';
    if DADOSMOVIMENTOF.PEDIDOS.FieldByName('NOTA').AsString='' then begin
      ShowMessage('Informe o Número do Pedido !!!');
      NxNotebook63.ActivePageIndex:=0;
      CondicaoAceita:='N';
      DBEdit5.SetFocus;
    end
    else if DADOSMOVIMENTOF.PEDIDOS.FieldByName('FORNECEDOR').AsString='' then begin
      ShowMessage('Informe o Fornecedor do Pedido !!!');
      NxNotebook63.ActivePageIndex:=0;
      CondicaoAceita:='N';
      RxDBComboEdit9.SetFocus;
    end
    else if DADOSMOVIMENTOF.PEDIDOS.FieldByName('EMISSAO').AsString='' then begin
      ShowMessage('Informe a Data de Emissão do Pedido !!!');
      NxNotebook63.ActivePageIndex:=0;
      CondicaoAceita:='N';
      DBDateEdit11.SetFocus;
    end;
    {
    else begin
      if NxNotebook63.ActivePageIndex=1 then begin
        cxGrid7.Visible:=true;
        if DADOSMOVIMENTOF.ITECOMPRAS.IsEmpty then begin
          UltimoItem:=1;
          Button7.Click;
        end
        else begin
          DADOSMOVIMENTOF.ITEPEDIDOS.Last;
          UltimoItem:=DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('ITEM').AsInteger+1;
          Button7.SetFocus;
        end;
        Button53.Click;
        cxGrid3.SetFocus;
        Button7.SetFocus;
      end;
      if NxNotebook63.ActivePageIndex=0 then
        cxGrid7.Visible:=false;
    end;
    }
  end;

  if NxNotebook61.ActivePageIndex=2 then begin
    CondicaoAceita:='S';
    if DADOSMOVIMENTOF.VENDAS.FieldByName('NOTA').AsString='' then begin
      ShowMessage('Informe o Número da Nota !!!');
      NxNotebook64.ActivePageIndex:=0;
      CondicaoAceita:='N';
      DBEdit24.SetFocus;
    end
    else if DADOSMOVIMENTOF.VENDAS.FieldByName('CLIENTE').AsString='' then begin
      ShowMessage('Informe o Cliente da Nota !!!');
      NxNotebook64.ActivePageIndex:=0;
      CondicaoAceita:='N';
      RxDBComboEdit3.SetFocus;
    end
    else if DADOSMOVIMENTOF.VENDAS.FieldByName('EMISSAO').AsString='' then begin
      ShowMessage('Informe a Data de Emissão da Nota !!!');
      NxNotebook64.ActivePageIndex:=0;
      CondicaoAceita:='N';
      DBDateEdit2.SetFocus;
    end
    else if DADOSMOVIMENTOF.VENDAS.FieldByName('CFOPS').AsString='' then begin
      ShowMessage('Informe os CFOPS da Nota !!!');
      NxNotebook64.ActivePageIndex:=0;
      CondicaoAceita:='N';
      DBEdit28.SetFocus;
    end;
    {
    else begin
      if NxNotebook64.ActivePageIndex=1 then begin
        if DADOSMOVIMENTOF.itevendas.IsEmpty then begin
          UltimoItem:=1;
          Button14.Click;
        end
        else begin
          DADOSMOVIMENTOF.itevendas.Last;
          UltimoItem:=DADOSMOVIMENTOF.itevendas.FieldByName('ITEM').AsInteger+1;
        end;
      end;
    end;
    }
  end;

  if NxNotebook61.ActivePageIndex=3 then begin
    CondicaoAceita:='S';
    if DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString='' then begin
      ShowMessage('Informe o Número do Pedido !!!');
      NxNotebook65.ActivePageIndex:=0;
      CondicaoAceita:='N';
      DBEdit78.SetFocus;
    end;
    {
    else begin
      if NxNotebook65.ActivePageIndex=1 then begin
        if DADOSMOVIMENTOF.ITEPEDIDOSCLI.IsEmpty then begin
          UltimoItem:=1;
          Button21.Click;
        end
        else begin
          DADOSMOVIMENTOF.ITEPEDIDOSCLI.Last;
          UltimoItem:=DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('ITEM').AsInteger+1;
        end;
      end;
    end;
    }
  end;
end;

procedure TCadastroMovimentosf.cxButton1Click(Sender: TObject);
begin
  inherited;
  CadastrodeProdutos;
  if CodigoConsulta<>'' then begin
    if Panel43.Visible then begin
      ComboEdit1.Text:=CodigoConsulta;
      ComboEdit1.SetFocus;
    end
    else begin
      DADOSMOVIMENTOF.ITEVENDAS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      RxDBComboEdit5.SetFocus;
    end;
    CodigoConsulta:='';
  end;
end;

procedure TCadastroMovimentosf.cxButton2Click(Sender: TObject);
begin
  inherited;
  ConsultaProdutos;
  if CodigoConsulta<>'' then begin
    DADOS_CADASTROSf.PRODUTOS.Close;
    DADOS_CADASTROSf.PRODUTOS.SQL.Clear;
    DADOS_CADASTROSf.PRODUTOS.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(CodigoConsulta));
    DADOS_CADASTROSf.PRODUTOS.Open;

    EditCadastroProdutos;
    if Panel43.Visible then begin
      ComboEdit1.Text:=CodigoConsulta;
      ComboEdit1.SetFocus;
    end
    else begin
      DADOSMOVIMENTOF.ITEVENDAS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      RxDBComboEdit5.SetFocus;
    end;
    CodigoConsulta:='';
  end;
end;

procedure TCadastroMovimentosf.cxButton34Click(Sender: TObject);
var Diferenca,Rateio:double;
begin
  inherited;
  if DADOSMOVIMENTOF.COMPRAS.FieldByName('TOTAL').Value<CurrencyEdit1.Value then begin
    Diferenca:=CurrencyEdit1.Value-DADOSMOVIMENTOF.COMPRAS.FieldByName('TOTAL').Value;
    Rateio:=(Diferenca/DADOSMOVIMENTOF.COMPRAS.FieldByName('TOTAL').Value)*100;
    DADOSMOVIMENTOF.ITECOMPRAS.First;
    while not DADOSMOVIMENTOF.ITECOMPRAS.Eof do begin
      DADOSMOVIMENTOF.ITECOMPRAS.Edit;
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('TOTAL').AsFloat:=
        DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('TOTAL').AsFloat+
        (DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('TOTAL').AsFloat*Rateio/100);
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').AsFloat:=
        SimpleRoundTo(DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('TOTAL').AsFloat/
        DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('QTD').AsFloat);
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('TOTAL').AsFloat:=
        DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').AsFloat*
        DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('QTD').AsFloat;
      DADOSMOVIMENTOF.ITECOMPRAS.Post;
      DADOSMOVIMENTOF.ITECOMPRAS.Next;
    end;
    DADOSMOVIMENTOF.ITECOMPRAS4.First;
    while not DADOSMOVIMENTOF.ITECOMPRAS4.Eof do begin
      DADOSMOVIMENTOF.ITECOMPRAS4.Edit;
      DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('TOTAL').AsFloat:=
        DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('TOTAL').AsFloat+
        (DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('TOTAL').AsFloat*Rateio/100);
      DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('PRECO').AsFloat:=
        SimpleRoundTo(DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('TOTAL').AsFloat/
        DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('QTD').AsFloat);
      DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('TOTAL').AsFloat:=
        DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('PRECO').AsFloat*
        DADOSMOVIMENTOF.ITECOMPRAS4.FieldByName('QTD').AsFloat;
      DADOSMOVIMENTOF.ITECOMPRAS4.Post;
      DADOSMOVIMENTOF.ITECOMPRAS4.Next;
    end;
  end;
  TotalNota;
end;

procedure TCadastroMovimentosf.cxButton3Click(Sender: TObject);
begin
  inherited;
  // ShowMessage('TOPO -> '+IntToStr(Panel43.Top)+' ESQUERDA ->'+IntToStr(Panel43.Left));
  Panel43.Visible:=true;
  ComboEdit1.SetFocus;
end;

procedure TCadastroMovimentosf.cxButton4Click(Sender: TObject);
begin
  inherited;
  CadastrodeProdutos;
  if CodigoConsulta<>'' then begin
    if Panel52.Visible then begin
      ComboEdit2.Text:=CodigoConsulta;
      ComboEdit2.SetFocus;
    end
    else begin
      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      RxDBComboEdit7.SetFocus;
    end;
    CodigoConsulta:='';
  end;
end;

procedure TCadastroMovimentosf.cxButton5Click(Sender: TObject);
begin
  inherited;
  ConsultaProdutos;
  if CodigoConsulta<>'' then begin
    DADOS_CADASTROSf.PRODUTOS.Close;
    DADOS_CADASTROSf.PRODUTOS.SQL.Clear;
    DADOS_CADASTROSf.PRODUTOS.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(CodigoConsulta));
    DADOS_CADASTROSf.PRODUTOS.Open;

    EditCadastroProdutos;
    if Panel52.Visible then begin
      ComboEdit2.Text:=CodigoConsulta;
      ComboEdit2.SetFocus;
    end
    else begin
      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      RxDBComboEdit7.SetFocus;
    end;
    CodigoConsulta:='';
  end;
end;

procedure TCadastroMovimentosf.cxButton6Click(Sender: TObject);
begin
  inherited;
  Panel52.Visible:=true;
  ComboEdit2.SetFocus;
end;

procedure TCadastroMovimentosf.cxButton70Click(Sender: TObject);
begin
  inherited;
  ConsultaProdutos;
  if CodigoConsulta<>'' then begin
    // DADOS_CADASTROSf.PRODUTOS.Open;
    // DADOS_CADASTROSf.PRODUTOS.Locate('CODIGO',CodigoConsulta,[]);

    DADOS_CADASTROSf.PRODUTOS.Close;
    DADOS_CADASTROSf.PRODUTOS.SQL.Clear;
    // DADOS_CADASTROSf.PRODUTOS.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(DADOSMOVIMENTOF.PED_CLI.FieldByName('CLIENTE').AsString));
    DADOS_CADASTROSf.PRODUTOS.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(CodigoConsulta));
    DADOS_CADASTROSf.PRODUTOS.Open;

    EditCadastroProdutos;
    if Panel30.Visible then begin
      Edit3.Text:=CodigoConsulta;
      Edit3.SetFocus;
    end
    else begin
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      RxDBComboEdit2.SetFocus;
    end;
    CodigoConsulta:='';
  end;
end;

procedure TCadastroMovimentosf.cxButton71Click(Sender: TObject);
begin
  inherited;
  CadastrodeProdutos;
  if CodigoConsulta<>'' then begin
    if Panel30.Visible then begin
      Edit3.Text:=CodigoConsulta;
      Edit3.SetFocus;
    end
    else begin
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      RxDBComboEdit2.SetFocus;
      // RxDBComboEdit7.SetFocus;
    end;
    CodigoConsulta:='';
  end;
end;

procedure TCadastroMovimentosf.cxButton72Click(Sender: TObject);
begin
  inherited;
  // Panel37.Visible:=true;
  Panel30.Visible:=true;
  Edit3.SetFocus;
end;

procedure TCadastroMovimentosf.cxButton7Click(Sender: TObject);
begin
  inherited;
  CadastrodeProdutos;
  if CodigoConsulta<>'' then begin
    if Panel62.Visible then begin
      ComboEdit3.Text:=CodigoConsulta;
      ComboEdit3.SetFocus;
    end
    else begin
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('CODIGO').AsString:=CodigoConsulta;
      RxDBComboEdit8.SetFocus;
    end;
    CodigoConsulta:='';
  end;
end;

procedure TCadastroMovimentosf.cxButton8Click(Sender: TObject);
begin
  inherited;
  ConsultaProdutos;
  if CodigoConsulta<>'' then begin
    DADOS_CADASTROSf.PRODUTOS.Close;
    DADOS_CADASTROSf.PRODUTOS.SQL.Clear;
    DADOS_CADASTROSf.PRODUTOS.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(CodigoConsulta));
    DADOS_CADASTROSf.PRODUTOS.Open;

    EditCadastroProdutos;
    if Panel62.Visible then begin
      ComboEdit3.Text:=CodigoConsulta;
      ComboEdit3.SetFocus;
    end
    else begin
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('CODIGO').AsString:=CodigoConsulta;
      RxDBComboEdit8.SetFocus;
    end;
    CodigoConsulta:='';
  end;
end;

procedure TCadastroMovimentosf.cxButton9Click(Sender: TObject);
begin
  inherited;
  Panel62.Visible:=true;
  ComboEdit3.SetFocus;
end;

procedure TCadastroMovimentosf.cxGridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  Button15.Click;
end;

procedure TCadastroMovimentosf.cxGridDBTableView3DblClick(Sender: TObject);
begin
  inherited;
  Button1.Click;
end;

procedure TCadastroMovimentosf.cxGridDBTableView5DblClick(Sender: TObject);
begin
  inherited;
  Button8.Click;
end;

procedure TCadastroMovimentosf.cxGridDBTableView9DblClick(Sender: TObject);
begin
  inherited;
  Button22.Click;
end;

procedure TCadastroMovimentosf.DBEdit104Enter(Sender: TObject);
begin
  inherited;
  if NxNotebook61.ActivePageIndex=10 then begin
    DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CFOP').AsString:=
      copy(DADOSMOVIMENTOF.COMPRAS.FieldByName('CFOPS').AsString,1,4);
  end;

  if NxNotebook61.ActivePageIndex=12 then begin
    DADOSMOVIMENTOF.ITEVENDAS.FieldByName('CFOP').AsString:=
      copy(DADOSMOVIMENTOF.VENDAS.FieldByName('CFOPS').AsString,1,4);
  end;
end;

procedure TCadastroMovimentosf.DBEdit106Exit(Sender: TObject);
begin
  inherited;
  InformeQuantidade;
end;

procedure TCadastroMovimentosf.DBEdit107Enter(Sender: TObject);
begin
  inherited;
  if DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('QTD').AsFloat=0 then begin
    DBEdit106.SetFocus
  end;
end;

procedure TCadastroMovimentosf.DBEdit107Exit(Sender: TObject);
begin
  inherited;
  InformePreco;
end;

procedure TCadastroMovimentosf.DBEdit108Enter(Sender: TObject);
begin
  inherited;
  if NxNotebook61.ActivePageIndex=10 then begin
    DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('TOTAL').AsFloat:=
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('QTD').AsFloat*
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').AsFloat;
  end;
  if NxNotebook61.ActivePageIndex=11 then begin
    DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('TOTAL').AsFloat:=
      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('QTD').AsFloat*
      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('PRECO').AsFloat;
  end;
  if NxNotebook61.ActivePageIndex=12 then begin
    DADOSMOVIMENTOF.ITEVENDAS.FieldByName('TOTAL').AsFloat:=
      DADOSMOVIMENTOF.ITEVENDAS.FieldByName('QTD').AsFloat*
      DADOSMOVIMENTOF.ITEVENDAS.FieldByName('PRECO').AsFloat;
  end;
  if NxNotebook61.ActivePageIndex=13 then begin
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('TOTAL').AsFloat:=
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('QTD').AsFloat*
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('PRECO').AsFloat;
  end;

end;

procedure TCadastroMovimentosf.DBEdit108Exit(Sender: TObject);
begin
  inherited;
  if NxNotebook61.ActivePageIndex=10 then begin
    DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').AsFloat:=
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('TOTAL').AsFloat/
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('QTD').AsFloat;
  end;
end;

procedure TCadastroMovimentosf.DBEdit108KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
    if NxNotebook61.ActivePageIndex=10 then
      Button31.Click;
    if NxNotebook61.ActivePageIndex=11 then
      Button42.Click;
    if NxNotebook61.ActivePageIndex=12 then
      Button37.Click;
    if NxNotebook61.ActivePageIndex=13 then
      Button47.Click;
end;

procedure TCadastroMovimentosf.DBEdit111Exit(Sender: TObject);
begin
  inherited;
  InformeQuantidade;
end;

procedure TCadastroMovimentosf.DBEdit112Enter(Sender: TObject);
begin
  inherited;
  if DADOSMOVIMENTOF.ITEVENDAS.FieldByName('QTD').AsFloat=0 then begin
    DBEdit111.SetFocus
  end;
end;

procedure TCadastroMovimentosf.DBEdit112Exit(Sender: TObject);
begin
  inherited;
  InformePreco;
end;

procedure TCadastroMovimentosf.DBEdit113Exit(Sender: TObject);
begin
  inherited;
  if NxNotebook61.ActivePageIndex=12 then begin
    DADOSMOVIMENTOF.ITEVENDAS.FieldByName('PRECO').AsFloat:=
      DADOSMOVIMENTOF.ITEVENDAS.FieldByName('TOTAL').AsFloat/
      DADOSMOVIMENTOF.ITEVENDAS.FieldByName('QTD').AsFloat;
  end;
end;

procedure TCadastroMovimentosf.DBEdit116Exit(Sender: TObject);
begin
  inherited;
  InformeQuantidade;
end;

procedure TCadastroMovimentosf.DBEdit117Enter(Sender: TObject);
begin
  inherited;
  if DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('QTD').AsFloat=0 then begin
    DBEdit116.SetFocus
  end;
end;

procedure TCadastroMovimentosf.DBEdit117Exit(Sender: TObject);
begin
  inherited;
  InformePreco;
end;

procedure TCadastroMovimentosf.DBEdit118Exit(Sender: TObject);
begin
  inherited;
  if NxNotebook61.ActivePageIndex=11 then begin
    DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('PRECO').AsFloat:=
      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('TOTAL').AsFloat/
      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('QTD').AsFloat;
  end;
end;

procedure TCadastroMovimentosf.DBEdit121Exit(Sender: TObject);
begin
  inherited;
  InformeQuantidade;
end;

procedure TCadastroMovimentosf.DBEdit122Enter(Sender: TObject);
begin
  inherited;
  if DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('QTD').AsFloat=0 then begin
    DBEdit121.SetFocus
  end;
end;

procedure TCadastroMovimentosf.DBEdit122Exit(Sender: TObject);
begin
  inherited;
  InformePreco;
end;

procedure TCadastroMovimentosf.DBEdit123Exit(Sender: TObject);
begin
  inherited;
  if NxNotebook61.ActivePageIndex=13 then begin
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('PRECO').AsFloat:=
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('TOTAL').AsFloat/
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('QTD').AsFloat;
  end;
end;

procedure TCadastroMovimentosf.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if DBEdit21.Text = '' then
    DBEdit2.SetFocus
  else begin
    if DataOBJETOSx.ProdServ.State in [dsedit,dsinsert] then begin
      DataOBJETOSx.ProdServ.FieldByName('TOTAL').AsFloat:=DataOBJETOSx.ProdServ.FieldByName('QTD').AsFloat*DataOBJETOSx.ProdServ.FieldByName('PRECO').AsFloat;
      if Label190.Caption='TOTAL de Serviços' then
        DataOBJETOSx.ProdServ.FieldByName('PROSER').AsString:='S'
      else
        DataOBJETOSx.ProdServ.FieldByName('PROSER').AsString:='P';
      DataOBJETOSx.ProdServ.Post;
      Somatoria;
      DataOBJETOSx.ProdServ.Append;
    end;
    RxDBComboEdit1.SetFocus;
  end;
  SomaGeralX;
end;

procedure TCadastroMovimentosf.DBEdit33Exit(Sender: TObject);
begin
  inherited;
  SomaGeralX;
end;

procedure TCadastroMovimentosf.DBEdit37KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_F2 then begin
    CadastrodeObjetos;
    DataOBJETOSx.OBJETOS.Refresh;
  end;
  if (shift=[ssctrl]) and (Key=Vk_Delete) then begin
    Key:=vk_clear;
    {
    DataOBJETOSx.ProdServ.Filtered:=false;
    DataOBJETOSx.ProdServ.Filter:='';
    DataOBJETOSx.ProdServ.Filtered:=true;
    }
    DataOBJETOSx.ProdServ.Close;
    DataOBJETOSx.ProdServ.SQL.Clear;
    DataOBJETOSx.ProdServ.SQL.Add('Select * from PRODUTOS where CODOBJ='+QuotedStr(DataOBJETOSx.ITEMOBJE.FieldByName('CODIGO').AsString));
    DataOBJETOSx.ProdServ.Open;
    // if DataOBJETOSx.ProdServ.locate('CODOBJ',DataOBJETOSx.ITEMOBJE.FieldByName('CODIGO').AsString,[]) then
    if DataOBJETOSx.ProdServ.IsEmpty then
      ShowMessage('Existentem Serviços ou Produtos com esse Objeto !!!')
    else
      if not DataOBJETOSx.ITEMOBJE.IsEmpty then
        DataOBJETOSx.ITEMOBJE.Delete;
  end;
  if key=vk_delete then
    DataOBJETOSx.ProdServ.FieldByName('CODIGO').AsString:='';
  if key=Vk_up then
    DataOBJETOSx.ITEMOBJE.Prior;
  if key=Vk_down then
    DataOBJETOSx.ITEMOBJE.Next;
  if (key=Vk_up) or (key=Vk_down) then
    DataOBJETOSx.ITEMOBJE.Edit;
  if key=vk_Left then
    DBGrid3.SelectedIndex:=DBGrid2.SelectedIndex-1;
  if key=vk_Right then
    DBGrid3.SelectedIndex:=DBGrid2.SelectedIndex+1;
end;

procedure TCadastroMovimentosf.DBEdit48Exit(Sender: TObject);
begin
  inherited;
  if DADOSMOVIMENTOF.VENDAS.FieldByName('NOTA').AsString<>''  then begin
    DADOSMOVIMENTOF.VENDAS.FieldByName('NOTA').AsString:=StrZero(StrToInt(DADOSMOVIMENTOF.VENDAS.FieldByName('NOTA').AsString),9,0);
  end;
end;

procedure TCadastroMovimentosf.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if DADOSMOVIMENTOF.COMPRAS.FieldByName('NOTA').AsString<>''  then
    DADOSMOVIMENTOF.COMPRAS.FieldByName('NOTA').AsString:=StrZero(StrToInt(DADOSMOVIMENTOF.COMPRAS.FieldByName('NOTA').AsString),9,0);
end;

procedure TCadastroMovimentosf.DBEdit66Exit(Sender: TObject);
begin
  inherited;
  if DADOSMOVIMENTOF.PEDIDOS.FieldByName('NOTA').AsString<>''  then begin
    DADOSMOVIMENTOF.PEDIDOS.FieldByName('NOTA').AsString:=StrZero(StrToInt(DADOSMOVIMENTOF.PEDIDOS.FieldByName('NOTA').AsString),9,0);
  end;
end;

procedure TCadastroMovimentosf.DBEdit84Exit(Sender: TObject);
begin
  inherited;
  if DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString<>''  then begin
    DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString:=StrZero(StrToInt(DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString),9,0);
  end;
end;

procedure TCadastroMovimentosf.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  if not DataOBJETOSx.ProdServ.IsEmpty then begin
    DataOBJETOSx.ProdServ.Edit;
    RxDBComboEdit1.SetFocus;
  end;
end;

procedure TCadastroMovimentosf.DBGrid2DrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if gdSelected in State then begin
    TDBGrid(Sender).Canvas.Brush.Color := clYellow;
    TDBGrid(Sender).Canvas.Font.Color := clWindowText;
    TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).columns[datacol].field, State);
  end;
end;

procedure TCadastroMovimentosf.DBGrid2Enter(Sender: TObject);
begin
  inherited;
  CondicaoCodigoServiçoPeca;
end;

procedure TCadastroMovimentosf.DBGrid3DrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if gdSelected in State then begin
    TDBGrid(Sender).Canvas.Brush.Color := clYellow;
    TDBGrid(Sender).Canvas.Font.Color := clWindowText;
    TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).columns[datacol].field, State);
  end;
end;

procedure TCadastroMovimentosf.DBLookupComboBox3Exit(Sender: TObject);
begin
  inherited;
  Button71.SetFocus;
end;

procedure TCadastroMovimentosf.Button51Click(Sender: TObject);
begin
  inherited;
  CancelaLancamenteos;
  close;
end;

procedure TCadastroMovimentosf.Button52Click(Sender: TObject);
begin
  inherited;
  ConsultaProdutos;
  if CodigoConsulta<>'' then begin
    DADOS_CADASTROSf.PRODUTOS.Close;
    DADOS_CADASTROSf.PRODUTOS.SQL.Clear;
    DADOS_CADASTROSf.PRODUTOS.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(CodigoConsulta));
    DADOS_CADASTROSf.PRODUTOS.Open;
    EditCadastroProdutos;
    if Panel62.Visible then begin
      ComboEdit3.Text:=CodigoConsulta;
      ComboEdit3.SetFocus;
    end
    else begin
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('CODIGO').AsString:=CodigoConsulta;
      RxDBComboEdit8.SetFocus;
    end;
    CodigoConsulta:='';
  end;
end;

procedure TCadastroMovimentosf.Button53Click(Sender: TObject);
begin
  inherited;
  if not DADOSMOVIMENTOF.ITEPEDIDOS.IsEmpty then begin
    DADOSMOVIMENTOF.GRADEM.Close;
    DADOSMOVIMENTOF.GRADEM.SQL.Clear;
    DADOSMOVIMENTOF.GRADEM.SQL.Add('SELECT * FROM GRADE WHERE CODIGO='+DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('CODIGO').AsString);
    DADOSMOVIMENTOF.GRADEM.open;
    DADOSMOVIMENTOF.GRADEM.refresh;
  end;
end;

procedure TCadastroMovimentosf.Button54Click(Sender: TObject);
begin
  inherited;
  AcertaPreçosdosProdutos(DADOSMOVIMENTOF.ITECOMPRAS);
end;

procedure TCadastroMovimentosf.Button55Click(Sender: TObject);
begin
  inherited;
  AcertaPreçosdosProdutos(DADOSMOVIMENTOF.ITEPEDIDOS);
end;

procedure TCadastroMovimentosf.AcertaPreçosdosProdutos(QueryPesquisa:TUniQuery);
begin
  // FiltraQuery(DADOS_CADASTROSf.PRODUTOS,'PRODUTOS',DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsString);
  FiltraQuery(DADOS_CADASTROSf.PRODUTOS,'PRODUTOS',QueryPesquisa.FieldByName('CODIGO').AsString);
  opcao:='P';
  ChamaCadastro;
end;

procedure TCadastroMovimentosf.Button5Click(Sender: TObject);
begin
  inherited;
  ConsultaOBJETOS;
  if CodigoConsulta<>'' then begin
    // DataOBJETOSx.OBJETOS.Open;
    // DataOBJETOSx.OBJETOS.Locate('CODIGO',CodigoConsulta,[]);
    {
    DataOBJETOSx.ProdServ.Close;
    DataOBJETOSx.ProdServ.SQL.Clear;
    DataOBJETOSx.ProdServ.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(CodigoConsulta));
    DataOBJETOSx.ProdServ.Open;
    }
    // if DataOBJETOSx.ITEMOBJE.Locate('CODIGO', DataOBJETOSx.OBJETOS.FieldByName('CODIGO').AsString ,[]) then

    DataOBJETOSx.OBJETOS.Close;
    DataOBJETOSx.OBJETOS.SQL.Clear;
    DataOBJETOSx.OBJETOS.SQL.Add('Select * from OBJETOS where CODIGO='+QuotedStr(CodigoConsulta));
    DataOBJETOSx.OBJETOS.Open;

    if not DataOBJETOSx.ITEMOBJE.IsEmpty then
      ShowMessage('Objeto já foi informado p/essa OS !!!')
    else begin
      DataOBJETOSx.ITEMOBJE.Append;
      DataOBJETOSx.ITEMOBJE.FieldByName('CODIGO').AsString:=DataOBJETOSx.OBJETOS.FieldByName('CODIGO').AsString;
      DataOBJETOSx.ITEMOBJE.FieldByName('DESCRICAO').AsString:=DataOBJETOSx.OBJETOS.FieldByName('DESCRICAO').AsString;
      DataOBJETOSx.ITEMOBJE.FieldByName('IDENTIFIC1').AsString:=DataOBJETOSx.OBJETOS.FieldByName('IDENTIFIC1').AsString;
      DataOBJETOSx.ITEMOBJE.FieldByName('IDENTIFIC2').AsString:=DataOBJETOSx.OBJETOS.FieldByName('IDENTIFIC2').AsString;
      DataOBJETOSx.ITEMOBJE.FieldByName('IDENTIFIC3').AsString:=DataOBJETOSx.OBJETOS.FieldByName('IDENTIFIC3').AsString;
      DataOBJETOSx.ITEMOBJE.FieldByName('NUMERO').AsString:=DataOBJETOSx.ORDENS.FieldByName('NUMERO').AsString;
      DataOBJETOSx.ITEMOBJE.Post;
      DataOBJETOSx.ITEMOBJE.Edit;
      DBEdit37.SetFocus;
    end;
  end;
end;

procedure TCadastroMovimentosf.Button5Exit(Sender: TObject);
begin
  inherited;
  Button72.SetFocus;
end;

procedure TCadastroMovimentosf.SomaGeral;
var SomaGeral:double;
begin
  if DataOBJETOSx.ORDENS.State in [dsedit,dsinsert] then
    DataOBJETOSx.ORDENS.FieldByName('VLRTOTALOS').AsFloat:=DataOBJETOSx.ORDENS.FieldByName('VLRFRETE').AsFloat+DataOBJETOSx.ORDENS.FieldByName('VLRTOTSERV').AsFloat+DataOBJETOSx.ORDENS.FieldByName('VLRTOTPECA').AsFloat;
end;

procedure TCadastroMovimentosf.Button60Click(Sender: TObject);
begin
  inherited;
  SomaGeralX;
  CondicaoCodigoServiçoPeca;
  DataOBJETOSx.ORDENS.Post;
  DataOBJETOSx.ITEMOBJE.ApplyUpdates;
  DataOBJETOSx.PRODSERV.ApplyUpdates;
  close;
end;

procedure TCadastroMovimentosf.Button61Click(Sender: TObject);
begin
  inherited;
  DataOBJETOSx.ORDENS.Cancel;
  close;
end;

procedure TCadastroMovimentosf.Button62Click(Sender: TObject);
begin
  inherited;
    NxNotebook63.ActivePageIndex:=0;
    DBEdit66.SetFocus;
end;

procedure TCadastroMovimentosf.Button63Click(Sender: TObject);
begin
  inherited;
  if DADOSMOVIMENTOF.PEDIDOS.FieldByName('NOTA').AsString='' then begin
    ShowMessage('Informe o Número do Pedido !!!');
    NxNotebook63.ActivePageIndex:=0;
    DBEdit66.SetFocus;
  end
  else if DADOSMOVIMENTOF.PEDIDOS.FieldByName('FORNECEDOR').AsString='' then begin
    ShowMessage('Informe o Fornecedor do Pedido !!!');
    NxNotebook63.ActivePageIndex:=0;
    RxDBComboEdit4.SetFocus;
  end
  else if DADOSMOVIMENTOF.PEDIDOS.FieldByName('EMISSAO').AsString='' then begin
    ShowMessage('Informe a Data de Emissão do Pedido !!!');
    NxNotebook63.ActivePageIndex:=0;
    DBDateEdit8.SetFocus;
  end
  else begin
    NxNotebook63.ActivePageIndex:=1;
    if DADOSMOVIMENTOF.ITECOMPRAS.IsEmpty then begin
      UltimoItem:=1;
      Button7.Click;
    end
    else begin
      DADOSMOVIMENTOF.ITEPEDIDOS.Last;
      UltimoItem:=DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('ITEM').AsInteger+1;
      Button7.SetFocus;
    end;
    Button7.SetFocus;
  end;
end;

procedure TCadastroMovimentosf.Button64Click(Sender: TObject);
begin
  inherited;
  NxNotebook64.ActivePageIndex:=0;
  DBEdit48.SetFocus;
end;

procedure TCadastroMovimentosf.Button65Click(Sender: TObject);
begin
  inherited;
  {
  if DADOSMOVIMENTOF.VENDAS.FieldByName('NOTA').AsString='' then begin
    ShowMessage('Informe o Número da Nota !!!');
    NxNotebook64.ActivePageIndex:=0;
    DBEdit48.SetFocus;
  end
  else if DADOSMOVIMENTOF.VENDAS.FieldByName('CLIENTE').AsString='' then begin
    ShowMessage('Informe o Cliente da Nota !!!');
    NxNotebook64.ActivePageIndex:=0;
    RxDBComboEdit3.SetFocus;
  end
  else if DADOSMOVIMENTOF.VENDAS.FieldByName('EMISSAO').AsString='' then begin
    ShowMessage('Informe a Data de Emissão da Nota !!!');
    NxNotebook64.ActivePageIndex:=0;
    DBDateEdit6.SetFocus;
  end
  else if DADOSMOVIMENTOF.VENDAS.FieldByName('CFOPS').AsString='' then begin
    ShowMessage('Informe os CFOPS da Nota !!!');
    NxNotebook64.ActivePageIndex:=0;
    DBEdit52.SetFocus;
  end
  else begin
    NxNotebook64.ActivePageIndex:=1;
    Button14.SetFocus;
  end;
  }
    // Condicao;
  if DADOSMOVIMENTOF.VENDAS.FieldByName('NOTA').AsString='' then begin
    ShowMessage('Informe o Número da Nota !!!');
    NxNotebook64.ActivePageIndex:=0;
    // CondicaoAceita:='N';
    DBEdit48.SetFocus;
  end
  else if DADOSMOVIMENTOF.VENDAS.FieldByName('CLIENTE').AsString='' then begin
    ShowMessage('Informe o Cliente da Nota !!!');
    NxNotebook64.ActivePageIndex:=0;
    CondicaoAceita:='N';
    RxDBComboEdit3.SetFocus;
  end
  else if DADOSMOVIMENTOF.VENDAS.FieldByName('EMISSAO').AsString='' then begin
    ShowMessage('Informe a Data de Emissão da Nota !!!');
    NxNotebook64.ActivePageIndex:=0;
    CondicaoAceita:='N';
    DBDateEdit2.SetFocus;
  end
  else if DADOSMOVIMENTOF.VENDAS.FieldByName('CFOPS').AsString='' then begin
    ShowMessage('Informe os CFOPS da Nota !!!');
    NxNotebook64.ActivePageIndex:=0;
    CondicaoAceita:='N';
    DBEdit28.SetFocus;
  end
  else begin
    NxNotebook64.ActivePageIndex:=1;
    if DADOSMOVIMENTOF.itevendas.IsEmpty then begin
      UltimoItem:=1;
      Button14.Click;
    end
    else begin
      DADOSMOVIMENTOF.itevendas.Last;
      UltimoItem:=DADOSMOVIMENTOF.itevendas.FieldByName('ITEM').AsInteger+1;
    end;
    Button14.SetFocus;
  end;
end;

procedure TCadastroMovimentosf.Button66Click(Sender: TObject);
begin
  inherited;
  NxNotebook65.ActivePageIndex:=0;
  DBEdit84.SetFocus;
end;

procedure TCadastroMovimentosf.Button67Click(Sender: TObject);
begin
  inherited;
  if DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString='' then begin
    ShowMessage('Informe o Número do Pedido !!!');
    NxNotebook65.ActivePageIndex:=0;
    CondicaoAceita:='N';
    DBEdit84.SetFocus;
  end
  else begin
    NxNotebook65.ActivePageIndex:=1;
    if DADOSMOVIMENTOF.ITEPEDIDOSCLI.IsEmpty then begin
      UltimoItem:=1;
      Button21.Click;
    end
    else begin
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.Last;
      UltimoItem:=DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('ITEM').AsInteger+1;
    end;
    Button21.SetFocus;
  end;
end;

procedure TCadastroMovimentosf.Button6Click(Sender: TObject);
begin
  inherited;
  DataOBJETOSx.ORDENS.FieldByName('DATAENTREG').AsDateTime:=date;
  DataOBJETOSx.ORDENS.FieldByName('HORAENTREG').Asstring:=TimeToStr(Time());
end;

procedure TCadastroMovimentosf.Button70Click(Sender: TObject);
begin
  inherited;
  NxNotebook66.ActivePageIndex:=0;
  VerBarra;
end;

procedure TCadastroMovimentosf.Button71Click(Sender: TObject);
begin
  inherited;
  NxNotebook66.ActivePageIndex:=1;
  VerBarra;
end;

procedure TCadastroMovimentosf.Button72Click(Sender: TObject);
begin
  inherited;
  Label190.Caption:='TOTAL de Serviços';
  DBEdit124.DataField:='VLRTOTSERV';
  NxNotebook66.ActivePageIndex:=2;
  VerBarra;
  Somatoria;
  RxDBComboEdit1.SetFocus;
end;

procedure TCadastroMovimentosf.Button73Click(Sender: TObject);
begin
  inherited;
  Label190.Caption:='TOTAL de Peças';
  DBEdit124.DataField:='VLRTOTPECA';
  NxNotebook66.ActivePageIndex:=2;
  VerBarra;
  Somatoria;
  RxDBComboEdit1.SetFocus;
end;

procedure TCadastroMovimentosf.Button74Click(Sender: TObject);
begin
  inherited;
  NxNotebook66.ActivePageIndex:=3;
  VerBarra;
end;

procedure TCadastroMovimentosf.Button7Click(Sender: TObject);
begin
  inherited;
  EntraItem;
end;

procedure TCadastroMovimentosf.Button80Click(Sender: TObject);
begin
  inherited;
  EntraItem;
end;

procedure TCadastroMovimentosf.Button8Click(Sender: TObject);
begin
  inherited;
  AlteraItem;
end;

procedure TCadastroMovimentosf.Button9Click(Sender: TObject);
begin
  inherited;
  ApagaItem;
end;

procedure TCadastroMovimentosf.Edit10ButtonClick(Sender: TObject);
begin
  inherited;
  GrupodosProdutosConsulta;
end;

procedure TCadastroMovimentosf.GrupodosProdutosConsulta;
begin

  with TCONSULTASF.Create(nil) do begin
    Tabela:='GRUPO';
    CampoConsulta:='NOME';
    QueereConsulta:=DADOS_CONSULTASF.GRUPO;
    NxNotebook61.ActivePageIndex:=4;
    ShowModal;
  end;
  if CodigoConsulta<>'' then
    Edit10.Text:=CodigoConsulta;
end;

procedure TCadastroMovimentosf.Edit10Change(Sender: TObject);
begin
  inherited;
  Panel220.Caption:=GrupodosProdutos(Edit10.Text);
end;

procedure TCadastroMovimentosf.Edit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    GrupodosProdutosConsulta;
end;

procedure TCadastroMovimentosf.Edit3ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TCadastroMovimentosf.Edit3Exit(Sender: TObject);
begin
  inherited;
  CodigoConsulta:='';
  if NxNotebook61.ActivePageIndex=10 then begin
    ConsultaBCA(Edit3.Text);
    if not DADOSFRENTEf.PRODUTOS.IsEmpty then begin
      // DADOSMOVIMENTOF.ITECOMPRAS.Append;
      // DADOSMOVIMENTOF.ITECOMPRAS.Edit;
      if CodigoConsulta='' then
        DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsString:=DADOSFRENTEf.PRODUTOS.FieldByName('CODIGO').AsString
      else
        DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      InformeCodigo;
    end
    else begin
      if Edit3.Text<>'' then begin
        ShowMessage('Código Inexistente !!!');
        Edit3.SetFocus;
      end
    end;
  end;
  if NxNotebook61.ActivePageIndex=11 then begin
    ConsultaBCA(ComboEdit2.Text);
    if not DADOSFRENTEf.PRODUTOS.IsEmpty then begin
      if CodigoConsulta='' then
        DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('CODIGO').AsString:=DADOSFRENTEf.PRODUTOS.FieldByName('CODIGO').AsString
      else
        DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      InformeCodigo;
    end
    else begin
      if ComboEdit2.Text<>'' then begin
        ShowMessage('Código Inexistente !!!');
        ComboEdit2.SetFocus;
      end
    end;
  end;
  if NxNotebook61.ActivePageIndex=12 then begin
    ConsultaBCA(ComboEdit1.Text);
    if not DADOSFRENTEf.PRODUTOS.IsEmpty then begin
      if CodigoConsulta='' then
        DADOSMOVIMENTOF.ITEVENDAS.FieldByName('CODIGO').AsString:=DADOSFRENTEf.PRODUTOS.FieldByName('CODIGO').AsString
      else
        DADOSMOVIMENTOF.ITEVENDAS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      InformeCodigo;
    end
    else begin
      if ComboEdit1.Text<>'' then begin
        ShowMessage('Código Inexistente !!!');
        ComboEdit1.SetFocus;
      end
    end;
  end;
  if NxNotebook61.ActivePageIndex=13 then begin
    ConsultaBCA(ComboEdit3.Text);
    if not DADOSFRENTEf.PRODUTOS.IsEmpty then begin
      if CodigoConsulta='' then
        DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('CODIGO').AsString:=DADOSFRENTEf.PRODUTOS.FieldByName('CODIGO').AsString
      else
        DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('CODIGO').AsString:=CodigoConsulta;
      InformeCodigo;
    end
    else begin
      if ComboEdit3.Text<>'' then begin
        ShowMessage('Código Inexistente !!!');
        ComboEdit3.SetFocus;
      end
    end;
  end;
  CodigoConsulta:='';
end;

procedure TCadastroMovimentosf.InformeCodigo;
begin
  if NxNotebook61.ActivePageIndex=10 then begin
    if DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsString='' then begin
    end
    else begin
      Panel30.Visible:=false;

      DADOSMOVIMENTOF.ESTOQUE.Close;
      DADOSMOVIMENTOF.ESTOQUE.SQL.Clear;
      DADOSMOVIMENTOF.ESTOQUE.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsString));
      DADOSMOVIMENTOF.ESTOQUE.Open;
      {
      DADOSMOVIMENTOF.ESTOQUE.Close;
      DADOSMOVIMENTOF.ESTOQUE.Open;
      DADOSMOVIMENTOF.ESTOQUE.Refresh;
      }
      // if (DADOSMOVIMENTOF.ESTOQUE.Locate('CODIGO',DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsString,[]))
      if not (DADOSMOVIMENTOF.ESTOQUE.IsEmpty)
        then begin
        if DADOSMOVIMENTOF.ESTOQUE.FieldByName('UND_C').AsString='SER' then begin
          ShowMessage('Produto '+DADOSMOVIMENTOF.ESTOQUE.FieldByName('NOME').AsString
          +'é um serviço, não pode ter entrada !!!');
          RxDBComboEdit3.SetFocus
        end
        else
          Panel34.Caption:=DADOSMOVIMENTOF.ESTOQUE.FieldByName('NOME').AsString;
        DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('BARRAS').AsString:=DADOSMOVIMENTOF.ESTOQUE.FieldByName('BARRAS').AsString;
        if DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').AsFloat=0 then begin
          if DADOSMOVIMENTOF.ESTOQUE.FieldByName('ULTIMO_PRECO').AsFloat>0 then
            DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').AsFloat:=DADOSMOVIMENTOF.ESTOQUE.FieldByName('ULTIMO_PRECO').AsFloat
          else
            DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('PRECO').AsFloat:=DADOSMOVIMENTOF.ESTOQUE.FieldByName('PRECO_CUSTO').AsFloat;
        end;
        DBEdit106.SetFocus;
      end
      else begin
        ShowMessage('Produto Inexistente !!!');
        RxDBComboEdit3.SetFocus
      end;
    end;
  end;

  if NxNotebook61.ActivePageIndex=11 then begin
    if DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('CODIGO').AsString='' then begin
    end
    else begin
      Panel52.Visible:=false;
      {
      DADOSMOVIMENTOF.ESTOQUE.Close;
      DADOSMOVIMENTOF.ESTOQUE.Open;
      DADOSMOVIMENTOF.ESTOQUE.Refresh;
      }
      DADOSMOVIMENTOF.ESTOQUE.Close;
      DADOSMOVIMENTOF.ESTOQUE.SQL.Clear;
      DADOSMOVIMENTOF.ESTOQUE.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('CODIGO').AsString));
      DADOSMOVIMENTOF.ESTOQUE.Open;
      // if (DADOSMOVIMENTOF.ESTOQUE.Locate('CODIGO',DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('CODIGO').AsString,[]))
      if not (DADOSMOVIMENTOF.ESTOQUE.IsEmpty)
        then begin
        if DADOSMOVIMENTOF.ESTOQUE.FieldByName('UND_C').AsString='SER' then begin
          ShowMessage('Produto '+DADOSMOVIMENTOF.ESTOQUE.FieldByName('NOME').AsString
          +'é um serviço, não pode ter entrada !!!');
          RxDBComboEdit7.SetFocus
        end
        else
          Panel51.Caption:=DADOSMOVIMENTOF.ESTOQUE.FieldByName('NOME').AsString;
        DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('BARRAS').AsString:=DADOSMOVIMENTOF.ESTOQUE.FieldByName('BARRAS').AsString;
        if DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('PRECO').AsFloat=0 then begin
          if DADOSMOVIMENTOF.ESTOQUE.FieldByName('ULTIMO_PRECO').AsFloat>0 then
            DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('PRECO').AsFloat:=DADOSMOVIMENTOF.ESTOQUE.FieldByName('ULTIMO_PRECO').AsFloat
          else
            DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('PRECO').AsFloat:=DADOSMOVIMENTOF.ESTOQUE.FieldByName('PRECO_CUSTO').AsFloat;
        end;
        DBEdit116.SetFocus;
      end
      else begin
        ShowMessage('Produto Inexistente !!!');
        RxDBComboEdit7.SetFocus
      end;
    end;
  end;

  if NxNotebook61.ActivePageIndex=12 then begin
    if DADOSMOVIMENTOF.ITEVENDAS.FieldByName('CODIGO').AsString='' then begin
    end
    else begin
      Panel43.Visible:=false;
      {
      DADOSMOVIMENTOF.ESTOQUE.Close;
      DADOSMOVIMENTOF.ESTOQUE.Open;
      DADOSMOVIMENTOF.ESTOQUE.Refresh;
      }
      DADOSMOVIMENTOF.ESTOQUE.Close;
      DADOSMOVIMENTOF.ESTOQUE.SQL.Clear;
      DADOSMOVIMENTOF.ESTOQUE.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(DADOSMOVIMENTOF.ITEVENDAS.FieldByName('CODIGO').AsString));
      DADOSMOVIMENTOF.ESTOQUE.Open;
      // if (DADOSMOVIMENTOF.ESTOQUE.Locate('CODIGO',DADOSMOVIMENTOF.ITEVENDAS.FieldByName('CODIGO').AsString,[]))
      if not (DADOSMOVIMENTOF.ESTOQUE.IsEmpty)
        then begin
        // NxPanel92.Caption:=DADOSMOVIMENTOF.ESTOQUE.FieldByName('NOME').AsString;
        DADOSMOVIMENTOF.ITEVENDAS.FieldByName('BARRAS').AsString:=DADOSMOVIMENTOF.ESTOQUE.FieldByName('BARRAS').AsString;
        DADOSMOVIMENTOF.ITEVENDAS.FieldByName('PRECO').AsFloat:=DADOSMOVIMENTOF.ESTOQUE.FieldByName('PRECO_CONS').AsFloat;
        DBEdit111.SetFocus;
      end
      else begin
        ShowMessage('Produto Inexistente !!!');
        RxDBComboEdit5.SetFocus
      end;
    end;
  end;
  if NxNotebook61.ActivePageIndex=13 then begin
    if DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('CODIGO').AsString='' then begin
    end
    else begin
      Panel62.Visible:=false;
      {
      DADOSMOVIMENTOF.ESTOQUE.Close;
      DADOSMOVIMENTOF.ESTOQUE.Open;
      DADOSMOVIMENTOF.ESTOQUE.Refresh;
      }
      DADOSMOVIMENTOF.ESTOQUE.Close;
      DADOSMOVIMENTOF.ESTOQUE.SQL.Clear;
      DADOSMOVIMENTOF.ESTOQUE.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('CODIGO').AsString));
      DADOSMOVIMENTOF.ESTOQUE.Open;

      // if (DADOSMOVIMENTOF.ESTOQUE.Locate('CODIGO',DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('CODIGO').AsString,[]))
      if not (DADOSMOVIMENTOF.ESTOQUE.IsEmpty)
        then begin
        Panel61.Caption:=DADOSMOVIMENTOF.ESTOQUE.FieldByName('NOME').AsString;
        DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('BARRAS').AsString:=DADOSMOVIMENTOF.ESTOQUE.FieldByName('BARRAS').AsString;
        DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('PRECO').AsFloat:=DADOSMOVIMENTOF.ESTOQUE.FieldByName('PRECO_CONS').AsFloat;
        DBEdit121.SetFocus;
      end
      else begin
        ShowMessage('Produto Inexistente !!!');
        RxDBComboEdit1.SetFocus
      end;
    end;
  end;
end;

procedure TCadastroMovimentosf.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f2 then
    ConsultaEstatica;
  if key=vk_f3 then
    Pesquisa;
end;

procedure TCadastroMovimentosf.PageControl1Change(Sender: TObject);
begin
  inherited;
  VerBarra;
end;

procedure TCadastroMovimentosf.VerBarra;
begin
  CondicaoCodigoServiçoPeca;
  // Panel3.Visible:=false;
  if DataOBJETOSx.ORDENS.FieldByName('CodCli').AsString='' then begin
    NxNotebook66.ActivePageIndex:=0;
    ShowMessage('Informe o Cliente da OS !!!');
    CodiCli.SetFocus;
  end
  else if (NxNotebook66.ActivePageIndex<>1) and  (DataOBJETOSx.ITEMOBJE.IsEmpty) then begin
    ShowMessage('Informe um Objeto para OS !!!');
    NxNotebook66.ActivePageIndex:=1;
    Button5.Click;
  end
  else begin
    if NxNotebook66.ActivePageIndex=0 then
      CodiCli.SetFocus;
    if (NxNotebook66.ActivePageIndex=1) and (DataOBJETOSx.ITEMOBJE.IsEmpty=true) then begin
      ShowMessage('Inoforme um Objeto para a Ordem de Serviço !!!');
      Button5.Click;
    end;
    if NxNotebook66.ActivePageIndex=1 then
      DBEdit37.SetFocus;
    if (NxNotebook66.ActivePageIndex=2) and (Label190.Caption='TOTAL de Serviços') then begin
      ServicoProduto:='S';
      ProdServi:='S';
      DataOBJETOSx.ProdServ.Filtered:=false;
      DataOBJETOSx.ProdServ.Filter:='PROSER ='+QuotedStr('S');
      DataOBJETOSx.ProdServ.Filtered:=true;
      DataOBJETOSx.ProdServ.First;
      DataOBJETOSx.produtos.Filtered:=false;
      DataOBJETOSx.produtos.Filter:='UND_C ='+QuotedStr('SER');
      DataOBJETOSx.produtos.Filtered:=true;
      DataOBJETOSx.produtos.First;
    end;
    if (NxNotebook66.ActivePageIndex=2) and (Label190.Caption<>'TOTAL de Serviços') then begin
      ServicoProduto:='P';
      ProdServi:='P';
      DataOBJETOSx.ProdServ.Filtered:=false;
      DataOBJETOSx.ProdServ.Filter:='PROSER ='+QuotedStr('P');
      DataOBJETOSx.ProdServ.Filtered:=true;
      DataOBJETOSx.ProdServ.First;
      DataOBJETOSx.produtos.Filtered:=false;
      DataOBJETOSx.produtos.Filter:='UND_C <>'+QuotedStr('SER');
      DataOBJETOSx.produtos.Filtered:=true;
      DataOBJETOSx.produtos.First;
    end;
    if NxNotebook66.ActivePageIndex=3 then
      DBMemo1.SetFocus;
  end;
  SomaGeralX;
end;

procedure TCadastroMovimentosf.CondicaoCodigoServiçoPeca;
begin
  if (DataOBJETOSx.ProdServ.FieldByName('CODIGO').AsString='') and (not DataOBJETOSx.ProdServ.IsEmpty) then
    DataOBJETOSx.ProdServ.Delete;
end;

procedure TCadastroMovimentosf.Pesquisa;
begin
  if ComboEdit4.Focused=true then begin
    ConsultaProdutos;
    if CodigoConsulta<>'' then
      ComboEdit4.Text:=CodigoConsulta;
  end;
  if ComboEdit5.Focused=true then begin
    ConsultaProdutos;
    if CodigoConsulta<>'' then
      ComboEdit5.Text:=CodigoConsulta;
  end;


  if CodiCli.Focused=true then begin
    ConsultaClientes;
    if CodigoConsulta<>'' then
      DataOBJETOSx.ORDENS.FieldByName('CodCli').AsString:=CodigoConsulta;
  end;
  if RxDBComboEdit1.Focused=true then begin
    ConsultaProdutos;
    if CodigoConsulta<>'' then
      DataOBJETOSx.PRODSERV.FieldByName('CODIGO').AsString:=CodigoConsulta;
  end;
  if RxDBComboEdit9.Focused=true then begin
    ConsultaFornecedores;
    if CodigoConsulta<>'' then begin
      RxDBComboEdit9.Text:=CodigoConsulta;
      ConsultaFORNECEDORESx(CodigoConsulta);
    end;
  end;
  if RxDBComboEdit4.Focused=true then begin
    ConsultaFornecedores;
    if CodigoConsulta<>'' then begin
      RxDBComboEdit4.Text:=CodigoConsulta;
      ConsultaFORNECEDORESx(CodigoConsulta);
    end;
  end;
  if RxDBComboEdit3.Focused=true then begin
    ConsultaClientes;
    if CodigoConsulta<>'' then begin
      DADOSMOVIMENTOF.VENDAS.FieldByName('CLIENTE').AsString:=CodigoConsulta;
      ConsultaClientesx2(CodigoConsulta);
    end;
  end;
  if RxDBComboEdit6.Focused=true then begin
    ConsultaClientes;
    if CodigoConsulta<>'' then begin
      DADOSMOVIMENTOF.PED_CLI.FieldByName('CLIENTE').AsString:=CodigoConsulta;
      ConsultaClientesx2(CodigoConsulta);
    end;
  end;
  if RxDBComboEdit2.Focused=true then begin
    ConsultaProdutos;
    if CodigoConsulta<>'' then
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsString:=CodigoConsulta;
  end;
  if RxDBComboEdit5.Focused=true then begin
    ConsultaProdutos;
    if CodigoConsulta<>'' then
      DADOSMOVIMENTOF.ITEVENDAS.FieldByName('CODIGO').AsString:=CodigoConsulta;
  end;
  if RxDBComboEdit7.Focused=true then begin
    ConsultaProdutos;
    if CodigoConsulta<>'' then
      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('CODIGO').AsString:=CodigoConsulta;
  end;
  if RxDBComboEdit8.Focused=true then begin
    ConsultaProdutos;
    if CodigoConsulta<>'' then
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('CODIGO').AsString:=CodigoConsulta;
  end;
  if Edit3.Focused=true then begin
    ConsultaProdutos;
    if CodigoConsulta<>'' then
      Edit3.Text:=CodigoConsulta;
  end;
  if ComboEdit2.Focused=true then begin
    ConsultaProdutos;
    if CodigoConsulta<>'' then
      ComboEdit2.Text:=CodigoConsulta;
  end;
  if ComboEdit1.Focused=true then begin
    ConsultaProdutos;
    if CodigoConsulta<>'' then
      ComboEdit1.Text:=CodigoConsulta;
  end;
  if ComboEdit3.Focused=true then begin
    ConsultaProdutos;
    if CodigoConsulta<>'' then
      ComboEdit3.Text:=CodigoConsulta;
  end;
end;

procedure TCadastroMovimentosf.RxDBComboEdit1ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TCadastroMovimentosf.RxDBComboEdit1Enter(Sender: TObject);
begin
  inherited;
  if DataOBJETOSx.ProdServ.State in [dsedit,dsinsert] then else begin
    ItensOrdem;
  end;
end;

procedure TCadastroMovimentosf.ItensOrdem;
begin
  DataOBJETOSx.PRODSERV.Append;
  DataOBJETOSx.PRODSERV.FieldByName('PROSER').AsString:=ServicoProduto;
  DataOBJETOSx.PRODSERV.FieldByName('CUPOM').AsInteger:=1;
  DataOBJETOSx.PRODSERV.FieldByName('OPERADOR').AsInteger:=1;
  DataOBJETOSx.PRODSERV.FieldByName('ITEM').AsInteger:=1;
  DataOBJETOSx.PRODSERV.FieldByName('CLIENTE').AsInteger:=1;
  DataOBJETOSx.PRODSERV.FieldByName('NUMERO').AsInteger:=DataOBJETOSx.ORDENS.FieldByName('NUMERO').AsInteger;
  RxDBComboEdit1.SetFocus;
end;

procedure TCadastroMovimentosf.RxDBComboEdit1Exit(Sender: TObject);
Var QuanObje:integer; CodObjeto:string;
begin
  inherited;
  if DataOBJETOSx.ProdServ.FieldByName('CODIGO').AsString<>'' then begin
    if Panel2.Visible then begin
      // if PageControl1.ActivePage<>TabSheet1 then begin
      if NxNotebook66.ActivePageIndex<>0 then begin
        if DataOBJETOSx.ProdServ.FieldByName('CODIGO').AsString<>'' then begin
          DataOBJETOSx.ProdServ.Edit;
          {
          DataOBJETOSx.ProdServ.Close;
          DataOBJETOSx.ProdServ.SQL.Clear;
          DataOBJETOSx.ProdServ.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(DataOBJETOSx.ProdServ.FieldByName('CODIGO').AsString));
          DataOBJETOSx.ProdServ.Open;
          }
          // DataOBJETOSx.ProdServ
          // DataOBJETOSx.ProdServ.Edit;
          if not DataOBJETOSx.produtos.Locate('CODIGO', DataOBJETOSx.ProdServ.FieldByName('CODIGO').AsString ,[]) then begin
          // if not DataOBJETOSx.produtos.IsEmpty then begin
            ShowMessage('Código Inexistente !!!');
            DBEdit15.SetFocus;
          end
          else begin
            DataOBJETOSx.ITEMOBJE.First;
            while not DataOBJETOSx.ITEMOBJE.Eof do begin
              QuanObje:=QuanObje+1;
              CodObjeto:=DataOBJETOSx.ITEMOBJE.FieldByName('CODIGO').AsString;
              DataOBJETOSx.ITEMOBJE.Next;
            end;
            if QuanObje>1 then begin
              if DataOBJETOSx.ProdServ.FieldByName('CODOBJ').AsString='' then begin

              end;
            end;
            DataOBJETOSx.ProdServ.FieldByName('NUMERO').AsInteger:=DataOBJETOSx.ORDENS.FieldByName('NUMERO').AsInteger;
            DataOBJETOSx.ProdServ.FieldByName('CODOBJ').AsString:=CodObjeto;
            DataOBJETOSx.PRODSERV.FieldByName('PROSER').AsString:=ServicoProduto;
            DataOBJETOSx.PRODSERV.FieldByName('CUPOM').AsInteger:=1;
            DataOBJETOSx.PRODSERV.FieldByName('OPERADOR').AsInteger:=1;
            DataOBJETOSx.PRODSERV.FieldByName('ITEM').AsInteger:=1;
            DataOBJETOSx.PRODSERV.FieldByName('CLIENTE').AsInteger:=1;
            DataOBJETOSx.ProdServ.FieldByName('PRECO').AsFloat:=DataOBJETOSx.produtos.FieldByName('PRECO_CONS').AsFloat;
          end;
        end;
      end;
    end;
  end;
end;

procedure TCadastroMovimentosf.RxDBComboEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var anda : integer;
begin
  inherited;
  if key=vk_f3 then
    Pesquisa;
  if (shift=[ssctrl]) and (Key=Vk_Delete) then begin
    Key:=vk_clear;
    ApagaEnt;
    SomaGeralX;
  end;
  if key=vk_F2 then begin
    CadastrodeProdutos;
    DataOBJETOSx.produtos.Refresh;
    {
    if PageControl1.ActivePage=TabSheet3 then
      ADMF.Servios1.Click
    else if PageControl1.ActivePage=TabSheet4 then
      ADMF.Mend_Produtos.Click;
    }
  end;
  if Key=vk_Prior then
    anda:=-11
  else if Key=vk_Next  then
    anda:=11
  else if Key=Vk_up then
    anda:=-1
  else if Key=Vk_down then
    anda:=1
  else if Key=vk_Home then
    DataOBJETOSx.ProdServ.First
  else if Key=vk_End then
    DataOBJETOSx.ProdServ.Last;
  if Key=vk_Delete then begin
    DataOBJETOSx.ProdServ.Edit;
    DataOBJETOSx.ProdServ.FieldByName('CODIGO').AsString:='';
  end;
  if (Key=vk_Prior) or (Key=vk_Next) or (Key=Vk_up) or (Key=Vk_down) then begin
    if (DataOBJETOSx.ProdServ.State=dsInsert) and (DataOBJETOSx.ProdServ.FieldByName('CODIGO').AsString='') then begin
      DataOBJETOSx.ProdServ.Cancel;
      DataOBJETOSx.ProdServ.Edit;
    end
    else begin
      DataOBJETOSx.ProdServ.Cancel;
      DataOBJETOSx.ProdServ.MoveBy(anda);
      DataOBJETOSx.ProdServ.Edit;
    end;
  end;
end;

procedure TCadastroMovimentosf.RxDBComboEdit2ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TCadastroMovimentosf.RxDBComboEdit2Exit(Sender: TObject);
begin
  inherited;
  InformeCodigo;
end;

procedure TCadastroMovimentosf.RxDBComboEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_f2 then
    ConsultaEstatica;
  if key=vk_f3 then
    Pesquisa;
end;

procedure TCadastroMovimentosf.RxDBComboEdit3ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TCadastroMovimentosf.RxDBComboEdit3Exit(Sender: TObject);
begin
  inherited;
  ConsultaClientesx;
end;

procedure TCadastroMovimentosf.RxDBComboEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Pesquisa;
end;

procedure TCadastroMovimentosf.RxDBComboEdit4Exit(Sender: TObject);
begin
  inherited;
  ConsultaFornecedorx;
end;

procedure TCadastroMovimentosf.RxDBComboEdit5ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TCadastroMovimentosf.RxDBComboEdit5Exit(Sender: TObject);
begin
  inherited;
  InformeCodigo;
end;

procedure TCadastroMovimentosf.RxDBComboEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_f2 then
    ConsultaEstatica;
  if key=vk_f3 then
    Pesquisa;
end;

procedure TCadastroMovimentosf.RxDBComboEdit6ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TCadastroMovimentosf.RxDBComboEdit6Exit(Sender: TObject);
begin
  inherited;
  ConsultaClientesY;
end;

procedure TCadastroMovimentosf.RxDBComboEdit6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    Pesquisa;
end;

procedure TCadastroMovimentosf.RxDBComboEdit7ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TCadastroMovimentosf.RxDBComboEdit7Exit(Sender: TObject);
begin
  inherited;
  InformeCodigo;
end;

procedure TCadastroMovimentosf.RxDBComboEdit7KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_f2 then
    ConsultaEstatica;
  if key=vk_f3 then
    Pesquisa;
end;

procedure TCadastroMovimentosf.RxDBComboEdit8ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TCadastroMovimentosf.RxDBComboEdit8Exit(Sender: TObject);
begin
  inherited;
  InformeCodigo;
end;

procedure TCadastroMovimentosf.RxDBComboEdit8KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_f2 then
    ConsultaEstatica;
  if key=vk_f3 then
    Pesquisa;
end;

procedure TCadastroMovimentosf.RxDBComboEdit9ButtonClick(Sender: TObject);
begin
  inherited;
  Pesquisa;
end;

procedure TCadastroMovimentosf.RxDBComboEdit9Exit(Sender: TObject);
begin
  inherited;
  ConsultaFornecedorx;
end;

procedure TCadastroMovimentosF.ConsultaFornecedorx;
begin
  if NxNotebook61.ActivePageIndex=0 then
    ConsultaFORNECEDORESx(DADOSMOVIMENTOF.COMPRAS.FieldByName('FORNECEDOR').AsString);
  if NxNotebook61.ActivePageIndex=1 then
    ConsultaFORNECEDORESx(DADOSMOVIMENTOF.PEDIDOS.FieldByName('FORNECEDOR').AsString);
end;

procedure TCadastroMovimentosf.ConsultaFORNECEDORESx(Consulta:string);
begin
  {
  DADOSMOVIMENTOF.FORNECEDORESx.Close;
  DADOSMOVIMENTOF.FORNECEDORESx.Open;
  DADOSMOVIMENTOF.FORNECEDORESx.Refresh;
  DADOSMOVIMENTOF.FORNECEDORESx.Locate('CODIGO',Consulta,[]);
  }
  DADOSMOVIMENTOF.FORNECEDORESx.Close;
  DADOSMOVIMENTOF.FORNECEDORESx.SQL.Clear;
  DADOSMOVIMENTOF.FORNECEDORESx.SQL.Add('Select * from FORNECEDORES where CODIGO='+QuotedStr(Consulta));
  DADOSMOVIMENTOF.FORNECEDORESx.Open;

  if DADOSMOVIMENTOF.FORNECEDORESx.IsEmpty then begin
    ShowMessage('Fornecedor Inexistente !!!');
    if NxNotebook61.ActivePageIndex=0 then
      RxDBComboEdit9.SetFocus;
    if NxNotebook61.ActivePageIndex=1 then
      RxDBComboEdit4.SetFocus;
  end
  else begin
    if NxNotebook61.ActivePageIndex=0 then
      DBEdit5.SetFocus;
    if NxNotebook61.ActivePageIndex=1 then
      DBEdit66.SetFocus;
  end;
end;

procedure TCadastroMovimentosf.RxDBComboEdit9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  {
  if key=vk_return then begin
    DBEdit5.SetFocus;
  end;
  }
  if key=vk_f3 then
    Pesquisa;
end;

procedure TCadastroMovimentosf.ConsultaEstatica;
begin
  ConsultaProdutos;
  if NxNotebook61.ActivePageIndex=10 then begin
    if CodigoConsulta<>'' then begin
      DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      Edit3.Text:=CodigoConsulta;
    end;
  end;
  if NxNotebook61.ActivePageIndex=11 then begin
    if CodigoConsulta<>'' then begin
      DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      ComboEdit2.Text:=CodigoConsulta;
    end;
  end;
  if NxNotebook61.ActivePageIndex=12 then begin
    if CodigoConsulta<>'' then begin
      DADOSMOVIMENTOF.ITEVENDAS.FieldByName('CODIGO').AsString:=CodigoConsulta;
      ComboEdit1.Text:=CodigoConsulta;
    end;
  end;
  if NxNotebook61.ActivePageIndex=13 then begin
    if CodigoConsulta<>'' then begin
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('CODIGO').AsString:=CodigoConsulta;
      ComboEdit3.Text:=CodigoConsulta;
    end;
  end;
end;

procedure TCadastroMovimentosf.EntraItem;
begin
  AppendEdit:='A';
  if NxNotebook61.ActivePageIndex=0 then begin
    // DADOSMOVIMENTOF.ITECOMPRAS.Append;
    CadastroAlteraItens;
    Button80.SetFocus;
    TotalNota;
    Button30.Click;
  end;
  if NxNotebook61.ActivePageIndex=1 then begin
    // DADOSMOVIMENTOF.ITEPEDIDOS.Append;
    CadastroAlteraItens;
    Button7.SetFocus;
    TotalPedido;
  end;
  if NxNotebook61.ActivePageIndex=2 then begin
    // DADOSMOVIMENTOF.ITEVENDAS.Append;
    CadastroAlteraItens;
    Button14.SetFocus;
    TotalNotaSaida;
  end;
  if NxNotebook61.ActivePageIndex=3 then begin
    // DADOSMOVIMENTOF.ITEPEDIDOSCLI.Append;
    CadastroAlteraItens;
    Button21.SetFocus;
    TotalPedidoCliente;
  end;
end;


procedure TCadastroMovimentosf.CancelaLancamenteos;
begin
  if NxNotebook61.ActivePageIndex=0 then begin
    DADOSMOVIMENTOF.COMPRAS.Cancel;
    DADOSMOVIMENTOF.COMPRAS.CancelUpdates;
    DADOSMOVIMENTOF.ITECOMPRAS.CancelUpdates;
  end;
  if NxNotebook61.ActivePageIndex=1 then begin
    DADOSMOVIMENTOF.PEDIDOS.Cancel;
    DADOSMOVIMENTOF.PEDIDOS.CancelUpdates;
    DADOSMOVIMENTOF.ITEPEDIDOS.CancelUpdates;
  end;
  // if NxNotebook61.ActivePageIndex=3 then
  //   DADOSMOVIMENTOF.VENDAS_ECF.Cancel;
  if NxNotebook61.ActivePageIndex=2 then begin
    DADOSMOVIMENTOF.VENDAS.Cancel;
    DADOSMOVIMENTOF.VENDAS.CancelUpdates;
    DADOSMOVIMENTOF.ITEVENDAS.CancelUpdates;
  end;
  if NxNotebook61.ActivePageIndex=3 then begin
    DADOSMOVIMENTOF.PED_CLI.Cancel;
    DADOSMOVIMENTOF.PED_CLI.CancelUpdates;
    DADOSMOVIMENTOF.ITEPEDIDOSCLI.CancelUpdates;
  end;
end;

procedure TCadastroMovimentosf.EntSai;
var
  Pag,nLin:Integer;
  Tipo,EnSai,Ordem,Documento, NotaCupom, IDCodigox, DataEmissao, ForCli, PrecoEntSai :String;
  Total,Valor,QuaTot,VlCusto, TotalNota, Custo, Venda, Lucro, TotalCuto:Double;
  Traco, Espaco, Espaco2, QuaLInha: integer;
  EntraSaidas,FornecedorCliente:TUniQuery;
  procedure Cabecalho;
  begin
    if SomenteEntradas.Checked=true then
      EnSai:='ENTRADAS'
    else if SomenteSaidas.Checked=true then
      EnSai:='SAIDAS';
    // else if RadioButton3.Checked=true then
    //   EnSai:='ENTRADAS/SAIDAS';
    if OrdemCodigoi.Checked=true then
      Ordem:='DE CODIGO'
    else if OrdemData.Checked=true then
      Ordem:='DE DATA'
    else if OrdemLancamento.Checked=true then
      Ordem:='DE LANCAMENTO';
    Definevarpubl();
    Imp_InicializaPagina;
    DADOS_CADASTROSf.EMITENTE.Open;
    Imp_Linha(01, 00, ACondensa5+DADOS_CADASTROSf.EMITENTE.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString , 6, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
    Imp_Linha(00, 01, TimetoStr(Time), 8, 'E');
    Imp_Linha(00, 104+Espaco, 'Folha', 06, 'E');
    Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
    Imp_Linha(01, 36+Espaco2, UpperCase('RELATORIO DE MOVIMENTACAO DE '+EnSai+' POR ORDEM '+Ordem) , 42, 'E');
    Imp_Linha(01, 00, StringOfChar('-', Traco), Traco, 'E');
    if (SomenteSaidas.Checked) and (DiferencaCustoVenda.Checked) then
      Imp_Linha(01, 00, 'LANC.*  *COD.P *--------------DESCRICAO---------------* NUM.D. *DT.EMIS.* C.'+Copy(ForCli,1,3)+' UNI *QUANTIDADE* *-----VALOR-----* *--VALOR TOTAL--* *--CUSTO TOTAL--* *---DIFERENÇA---*', 160, 'E')
    else
      Imp_Linha(01, 00, 'LANC.*  *COD.P *-------------DESCRICAO-------------* *-NUM.D.* *DT.EMIS.* C.'+Copy(ForCli,1,3)+' UNI *QUANTIDADE* *-----VALOR-----* *--VALOR TOTAL--*', 160, 'E');
    // Imp_Linha(01, 00, StringOfChar('-', 132), 132, 'E');
    Imp_Linha(01, 00, StringOfChar('-', Traco), Traco, 'E');
    nLin := nLin + 6;
  end;
begin
  // if (SomenteSaidas.Checked) and (DiferencaCustoVenda.Checked) then begin
  if (SomenteSaidas.Checked) and (DiferencaCustoVenda.Checked) then begin
    tamanhofonte:=9;
    // tamanhofonte:=5;
    Traco:=168;
    Espaco:=36;
    Espaco2:=18;
    QuaLInha:=48;
  end
  else if SomenteSaidas.Checked then begin
    tamanhofonte:=9;
    Traco:=168;
    Espaco:=36;
    Espaco2:=18;
    QuaLInha:=50;
  end
  else begin
    tamanhofonte:=11;
    Traco:=132;
    Espaco:=0;
    Espaco2:=0;
    QuaLInha:=41;
  end;

  if MaskEdit2.Text<>'' then begin
    if SomenteEntradas.Checked then begin
      if OrdemCodigoi.Checked=true then
        FiltroItensCompra2(ComboEdit4.text,ComboEdit5.text,MaskEdit1.text,MaskEdit2.text,'CODIGO',DateEdit4.date,DateEdit5.date);
      if OrdemData.Checked=true then
        FiltroItensCompra2(ComboEdit4.text,ComboEdit5.text,MaskEdit1.text,MaskEdit2.text,'EMISSAO',DateEdit4.date,DateEdit5.date);
      if OrdemLancamento.Checked=true then
        FiltroItensCompra2(ComboEdit4.text,ComboEdit5.text,MaskEdit1.text,MaskEdit2.text,'ID',DateEdit4.date,DateEdit5.date);
    end;
    if SomenteSaidas.Checked then begin
      if OrdemCodigoi.Checked=true then
        FiltroItensVenda(ComboEdit4.text,ComboEdit5.text,MaskEdit1.text,'CODIGO',DateEdit4.date,DateEdit5.date);
      if OrdemData.Checked=true then
        FiltroItensVenda(ComboEdit4.text,ComboEdit5.text,MaskEdit1.text,'DATA',DateEdit4.date,DateEdit5.date);
      if OrdemLancamento.Checked=true then
        FiltroItensVenda(ComboEdit4.text,ComboEdit5.text,MaskEdit1.text,'CODIGOX',DateEdit4.date,DateEdit5.date);
    end;
  end
  else begin
    if SomenteEntradas.Checked then begin
      if OrdemCodigoi.Checked=true then
        FiltroItensCompra(ComboEdit4.text,ComboEdit5.text,MaskEdit1.text,'CODIGO',DateEdit4.date,DateEdit5.date);
      if OrdemData.Checked=true then
        FiltroItensCompra(ComboEdit4.text,ComboEdit5.text,MaskEdit1.text,'EMISSAO',DateEdit4.date,DateEdit5.date);
      if OrdemLancamento.Checked=true then
        FiltroItensCompra(ComboEdit4.text,ComboEdit5.text,MaskEdit1.text,'ID',DateEdit4.date,DateEdit5.date);
    end;
    if SomenteSaidas.Checked then begin
      if OrdemCodigoi.Checked=true then
        FiltroItensVenda(ComboEdit4.text,ComboEdit5.text,MaskEdit1.text,'CODIGO',DateEdit4.date,DateEdit5.date);
      if OrdemData.Checked=true then
        FiltroItensVenda(ComboEdit4.text,ComboEdit5.text,MaskEdit1.text,'DATA',DateEdit4.date,DateEdit5.date);
      if OrdemLancamento.Checked=true then
        FiltroItensVenda(ComboEdit4.text,ComboEdit5.text,MaskEdit1.text,'CODIGOX',DateEdit4.date,DateEdit5.date);
    end;
  end;
  DADOSMOVIMENTOF.CLIENTES_REL.Open;
  DADOSMOVIMENTOF.FORNECEDORES_REL.Open;
  DADOSMOVIMENTOF.PRODUTOS_REL.Close;
  DADOSMOVIMENTOF.PRODUTOS_REL.SQL.Clear;
  DADOSMOVIMENTOF.PRODUTOS_REL.SQL.Add('select codigo,NOME,UND_C from PRODUTOS order by codigo');
  DADOSMOVIMENTOF.PRODUTOS_REL.Open;

  if SomenteEntradas.Checked then begin
    EntraSaidas:=DADOSMOVIMENTOF.ITECOMPRAS_REL;
    FornecedorCliente:=DADOSMOVIMENTOF.FORNECEDORES_REL;
    NotaCupom:='NOTA';
    IDCodigox:='ID';
    DataEmissao:='EMISSAO';
    ForCli:='Fornecedor';
    PrecoEntSai:='PRECO';
  end;
  if SomenteSaidas.Checked then begin
    EntraSaidas:=DADOSFRENTEf.ITEVENDAS_ECF2_Rel;
    FornecedorCliente:=DADOSMOVIMENTOF.CLIENTES_REL;
    NotaCupom:='CUPOM';
    IDCodigox:='CODIGOX';
    DataEmissao:='DATA';
    ForCli:='Cliente';
    PrecoEntSai:='PRECORAT';
  end;

  Tipo := 'RAW';   // Dica: Imprime com matricial Epson mais rápido
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    nLin := 0;
    Pag  := 1;
    EntraSaidas.First;
    TotalNota:=0;
    while not EntraSaidas.Eof do begin
      if nLin = 0 then
        Cabecalho;
      Valor:=EntraSaidas.FieldByName(PrecoEntSai).AsFloat;
      VlCusto:=Valor;
      TotalNota:=TotalNota+(EntraSaidas.FieldByName('QTD').AsFloat*Valor);
      DADOSMOVIMENTOF.PRODUTOS_REL.Close;
      DADOSMOVIMENTOF.PRODUTOS_REL.SQL.Clear;
      DADOSMOVIMENTOF.PRODUTOS_REL.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(EntraSaidas.FieldByName('CODIGO').AsString));
      DADOSMOVIMENTOF.PRODUTOS_REL.Open;
      if not DADOSMOVIMENTOF.PRODUTOS_REL.IsEmpty then begin
        Imp_Linha(01, 00, DireiraEsquera(0, EntraSaidas.FieldByName(IDCodigox).AsString, 7, 'D')+' ',8, 'E');
        Imp_Linha(00, 00, DireiraEsquera(0, EntraSaidas.FieldByName('CODIGO').AsString, 6, 'D'),7, 'E');
        Imp_Linha(00, 00, Copy(DADOSMOVIMENTOF.PRODUTOS_REL.FieldByName('NOME').AsString,1,37),37, 'E');
        Imp_Linha(00, 01, EntraSaidas.FieldByName(NotaCupom).AsString+'-',7, 'E');
        Imp_Linha(00, 00, EntraSaidas.FieldByName(DataEmissao).AsString,10, 'E');
        Imp_Linha(00, 01, EntraSaidas.FieldByName(ForCli).AsString,6, 'E');
        Imp_Linha(00, 00, DADOSMOVIMENTOF.PRODUTOS_REL.FieldByName('UND_C').AsString,4, 'E');
        Imp_Linha(00, 00, FormatFloat('###,##0.00', EntraSaidas.FieldByName('QTD').AsFloat),12, 'D');
        Imp_Linha(00, 00, FormatFloat('###,###0.000', VlCusto),18, 'D');
        Imp_Linha(00, 00, FormatFloat('###,##0.00', EntraSaidas.FieldByName('QTD').AsFloat*VlCusto),18, 'D');
        if (SomenteSaidas.Checked) and (DiferencaCustoVenda.Checked) then begin
          Custo:=EntraSaidas.FieldByName('QTD').AsFloat*EntraSaidas.FieldByName('PRECO_CUSTO').AsFloat;
          Venda:=EntraSaidas.FieldByName('QTD').AsFloat*VlCusto;
          Imp_Linha(00, 00, FormatFloat('###,##0.00',Custo),18, 'D');
          Imp_Linha(00, 00, FormatFloat('###,##0.00', Venda-Custo),18, 'D');
          Lucro:=Lucro+(Venda-Custo);
        end;
        Inc( nLin );
        Total:=Total+(EntraSaidas.FieldByName('QTD').AsFloat*VlCusto);
        QuaTot:=QuaTot+EntraSaidas.FieldByName('QTD').AsFloat;
        // TotalCuto:= TotalCuto+EntraSaidas.FieldByName('QTD').AsFloat*VlCusto);
      end;
      if nLin >= QuaLInha then begin
        if TelaImpressora='I' then
          Imp_Linha(01, 15, DCondensa2+ACondensa5+ASubScript+'EJOC SISTEMAS -  TRAVESSA DA APARECIDA, 228, CENTRO, CEP 37.190-000, TRÊS PONTAS, MG - FONE/FAX: 35-98849-1204'+DCondensa5+DSupScript, 6, 'E');
        Imp_Ejeta;
        nLin := 0;
        Pag  := Pag+1;
        Cabecalho;
      end;
      Documento:=EntraSaidas.FieldByName(NotaCupom).AsString+EntraSaidas.FieldByName(ForCli).AsString;
      EntraSaidas.Next;
      if (ClientesFornecedores.Checked) and (Documento<>EntraSaidas.FieldByName(NotaCupom).AsString+EntraSaidas.FieldByName(ForCli).AsString) or (EntraSaidas.Eof) then begin
        if ClientesFornecedores.Checked=true then begin
          FornecedorCliente.Close;
          FornecedorCliente.SQL.Clear;
          FornecedorCliente.SQL.Add('Select * from '+ForCli+' where CODIGO='+QuotedStr(EntraSaidas.FieldByName(ForCli).AsString));
          FornecedorCliente.Open;
          Imp_Linha(01, 00, ForCli+'.: '+FornecedorCliente.FieldByName('CODIGO').AsString+'-'+FornecedorCliente.FieldByName('NOME').AsString,60, 'E');
          Imp_Linha(00, 00, 'Total.: '+FormatFloat('###,##0.00', TotalNota),72, 'D');
          TotalNota:=0;
          Inc( nLin );
        end;
      end;
      if nLin >= QuaLInha then begin
        if TelaImpressora='I' then
          Imp_Linha(01, 15, DCondensa2+ACondensa5+ASubScript+'EJOC SISTEMAS -  TRAVESSA DA APARECIDA, 228, CENTRO, CEP 37.190-000, TRÊS PONTAS, MG - FONE/FAX: 35-98849-1204'+DCondensa5+DSupScript, 6, 'E');
        Imp_Ejeta;
        nLin := 0;
        Pag  := Pag+1;
      end;
    end;
    if (SomenteSaidas.Checked) and (DiferencaCustoVenda.Checked) then begin
      Imp_Linha(02, 46, 'QUANTIDADE TOTAL DO PERIODO -> '+ FormatFloat('###,##0.00', QuaTot),50, 'D');
      Imp_Linha(00, 00, 'TOTAL DO PERIODO -> '+ FormatFloat('###,##0.00', Total),36, 'D');
      if (SomenteSaidas.Checked) and (DiferencaCustoVenda.Checked) then
        Imp_Linha(00, 00, 'TOTAL DA DIFERENÇA -> '+ FormatFloat('###,##0.00', Lucro),36, 'D');

    end
    else begin
      Imp_Linha(02, 46, 'QUANTIDADE TOTAL DO PERIODO -> '+ FormatFloat('###,##0.00', QuaTot),50, 'D');
      Imp_Linha(00, 00, 'TOTAL DO PERIODO -> '+ FormatFloat('###,##0.00', Total),36, 'D');
      // if (SomenteSaidas.Checked) and (DiferencaCustoVenda.Checked) then
      //   Imp_Linha(00, 00, 'TOTAL DA DIFERENÇA -> '+ FormatFloat('###,##0.00', Lucro),36, 'D');
    end;
    Imp_Ejeta;
    Imp_Fim
  end;
end;

procedure TCadastroMovimentosf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CadastroMovimentosf);
  Action:=caFree;
end;

procedure TCadastroMovimentosf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (NxNotebook61.ActivePageIndex=0) or (NxNotebook61.ActivePageIndex=1) or (NxNotebook61.ActivePageIndex=2) or (NxNotebook61.ActivePageIndex=3) then begin
    if key=vk_f5 then
      EntraItem;
    if key=vk_f6 then
      AlteraItem;
    if key=vk_f7 then
      ApagaItem;
    // if key=vk_f8 then
    //   cxButton6.Click;
   if (key=vk_f9) and (NxNotebook61.ActivePageIndex=0) then
     AcertaPreçosdosProdutos(DADOSMOVIMENTOF.ITECOMPRAS);
   if (key=vk_f9) and (NxNotebook61.ActivePageIndex=1) then
     AcertaPreçosdosProdutos(DADOSMOVIMENTOF.ITEPEDIDOS);
  end;
end;

procedure TCadastroMovimentosf.FormShow(Sender: TObject);
begin
  inherited;
  NxNotebook61.Align:=alclient;
  NxNotebook62.Align:=alclient;
  NxNotebook63.Align:=alclient;
  NxNotebook64.Align:=alclient;
  NxNotebook65.Align:=alclient;

  Panel29.BevelOuter:=bvNone;
  Panel55.BevelOuter:=bvNone;
  Panel2.BevelOuter:=bvNone;
  Panel23.BevelOuter:=bvNone;
  Panel96.BevelOuter:=bvNone;
  Panel3.BevelOuter:=bvNone;
  Panel68.BevelOuter:=bvNone;
  Panel22.BevelOuter:=bvNone;
  Panel6.BevelOuter:=bvNone;
  Panel12.BevelOuter:=bvNone;
  Panel17.BevelOuter:=bvNone;
  Panel9.BevelOuter:=bvNone;
  Panel11.BevelOuter:=bvNone;
  Panel8.BevelOuter:=bvNone;
  Panel7.BevelOuter:=bvNone;
  Panel69.BevelOuter:=bvNone;
  Panel16.BevelOuter:=bvNone;
  Panel15.BevelOuter:=bvNone;
  Panel14.BevelOuter:=bvNone;
  // Panel66.BevelOuter:=bvNone;
  Panel13.BevelOuter:=bvNone;
  Panel70.BevelOuter:=bvNone;
  Panel71.BevelOuter:=bvNone;
  Panel19.BevelOuter:=bvNone;
  Panel20.BevelOuter:=bvNone;
  Panel21.BevelOuter:=bvNone;
  Panel4.BevelOuter:=bvNone;
  Panel30.BevelOuter:=bvNone;
  Panel62.BevelOuter:=bvNone;

  Panel57.BevelOuter:=bvNone;
  Panel43.BevelOuter:=bvNone;
  Panel35.BevelOuter:=bvNone;
  Panel52.BevelOuter:=bvNone;
  Panel47.BevelOuter:=bvNone;


  Panel28.Height:=Panel28.Height-160;

  Panel25.Align:=alclient;
  Panel28.Align:=alclient;
  Panel30.Align:=alclient;
  Panel4.Align:=alclient;
  Panel7.Align:=alclient;
  Panel13.Align:=alclient;
  Panel18.Align:=alclient;
  Panel72.Align:=alclient;
  Panel73.Align:=alclient;
  Panel74.Align:=alclient;
  Panel35.Align:=alclient;
  Panel47.Align:=alclient;
  Panel52.Align:=alclient;
  Panel43.Align:=alclient;
  Panel57.Align:=alclient;
  Panel555.Align:=alclient;
  Panel97.Align:=alclient;
  Panel2.Align:=alclient;
  Panel6.Align:=alclient;
  Panel12.Align:=alclient;
  Panel17.Align:=alclient;
  Panel213.Align:=alclient;

  Panel62.Align:=alclient;
  cxGrid1.Align:=alclient;
  cxGrid2.Align:=alclient;
  cxGrid3.Align:=alclient;
  cxGrid5.Align:=alclient;
  if NxNotebook61.ActivePageIndex=0 then begin
    if DADOSMOVIMENTOF.COMPRAS.FieldByName('FORNECEDOR').AsString='' then begin
      RxDBComboEdit9.SetFocus;
      Pesquisa;
      ConsultaFORNECEDORESx(CodigoConsulta);
    end
    else begin
      ConsultaFornecedorx;
      TotalNota;
    end;
    DADOSMOVIMENTOF.FORNECEDORESx.Open;
    DADOSMOVIMENTOF.FORNECEDORESx.Refresh;
  end;

  if NxNotebook61.ActivePageIndex=1 then begin
    if DADOSMOVIMENTOF.PEDIDOS.FieldByName('FORNECEDOR').AsString='' then begin
      RxDBComboEdit4.SetFocus;
      Pesquisa;
      ConsultaFORNECEDORESx(CodigoConsulta);
    end
    else begin
      ConsultaFornecedorx;
      // TotalNota;
    end;
  end;

  if NxNotebook61.ActivePageIndex=2 then begin
    if DADOSMOVIMENTOF.VENDAS.FieldByName('CLIENTE').AsString='' then begin
      RxDBComboEdit3.SetFocus;
      Pesquisa;
      ConsultaClientesx2(CodigoConsulta);
    end
    else begin
      ConsultaClientesx;
      // TotalNota;
    end;
  end;

  if NxNotebook61.ActivePageIndex=3 then begin
    if DADOSMOVIMENTOF.PED_CLI.FieldByName('CLIENTE').AsString='' then begin
      RxDBComboEdit6.SetFocus;
      Pesquisa;
      ConsultaClientesY2(CodigoConsulta);
    end
    else begin
      ConsultaClientesY;
      // TotalNota;
    end;
  end;
  Panel10.Align:=alclient;
  DADOSMOVIMENTOF.FORNECEDORESx.Open;

  if NxNotebook61.ActivePageIndex=4 then begin
    DataOBJETOSx.CLIENTES.Open;
    DataOBJETOSx.VENDEDORES.Open;
    DataOBJETOSx.TIPOATEN.Open;
    DataOBJETOSx.Situacao.Open;
    DataOBJETOSx.PRODSERV.Open;
    FiltroOS;
    // PageControl1.TabIndex:=0;
    CodiCli.SetFocus;
  end;

  if NxNotebook61.ActivePageIndex=5 then begin
    DADOSMOVIMENTOF.PRODUTOS_REL.Close;
    DADOSMOVIMENTOF.PRODUTOS_REL.SQL.Clear;
    DADOSMOVIMENTOF.PRODUTOS_REL.SQL.Add('select first 1 codigo from PRODUTOS order by codigo');
    DADOSMOVIMENTOF.PRODUTOS_REL.Open;
    ComboEdit4.Text:=DADOSMOVIMENTOF.PRODUTOS_REL.FieldByName('codigo').AsString;

    DADOSMOVIMENTOF.PRODUTOS_REL.Close;
    DADOSMOVIMENTOF.PRODUTOS_REL.SQL.Clear;
    DADOSMOVIMENTOF.PRODUTOS_REL.SQL.Add('select first 1 codigo from PRODUTOS order by codigo desc');
    DADOSMOVIMENTOF.PRODUTOS_REL.Open;
    ComboEdit5.Text:=DADOSMOVIMENTOF.PRODUTOS_REL.FieldByName('codigo').AsString;

    DateEdit4.Date:=date-30;
    DateEdit5.Date:=date;
  end;

  if NxNotebook61.ActivePageIndex=10 then begin
    if AppendEdit='A' then
      DADOSMOVIMENTOF.ITECOMPRAS.Append
    else
      DADOSMOVIMENTOF.ITECOMPRAS.Edit;
    if DADOSMOVIMENTOF.ITECOMPRAS.FieldByName('CODIGO').AsString='' then
      cxButton72.Click
    else
      InformeCodigo;
  end;
  if NxNotebook61.ActivePageIndex=11 then begin
    if AppendEdit='A' then
      DADOSMOVIMENTOF.ITEPEDIDOS.Append
    else
      DADOSMOVIMENTOF.ITEPEDIDOS.Edit;
    if DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('CODIGO').AsString='' then
      cxButton6.Click
    else
      InformeCodigo;
  end;
  if NxNotebook61.ActivePageIndex=12 then begin
    if AppendEdit='A' then
      DADOSMOVIMENTOF.ITEVENDAS.Append
    else
      DADOSMOVIMENTOF.ITEVENDAS.Edit;
    if DADOSMOVIMENTOF.ITEVENDAS.FieldByName('CODIGO').AsString='' then
      cxButton3.Click
    else
      InformeCodigo;
  end;
  if NxNotebook61.ActivePageIndex=13 then begin
    if AppendEdit='A' then
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.Append
    else
      DADOSMOVIMENTOF.ITEPEDIDOSCLI.Edit;
    if DADOSMOVIMENTOF.ITEPEDIDOSCLI.FieldByName('CODIGO').AsString='' then
      cxButton9.Click
    else
      InformeCodigo;
  end;

  if NxNotebook61.ActivePageIndex=14 then begin
    datini.Date:=date-30;
    DatFim.Date:=date;

    if Edit10.Text<>'' then
      Panel220.Caption:=GrupodosProdutos(Edit10.Text);
  end;

  if NxNotebook61.ActivePageIndex=0 then begin
    NxNotebook62.ActivePageIndex:=0;
    DBEdit5.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=1 then begin
    NxNotebook63.ActivePageIndex:=0;
    DBEdit66.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=2 then begin
    NxNotebook64.ActivePageIndex:=0;
    DBEdit48.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=3 then begin
    NxNotebook65.ActivePageIndex:=0;
    DBEdit84.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=4 then begin
    NxNotebook66.ActivePageIndex:=0;
    CodiCli.SetFocus;
  end;
end;

function TCadastroMovimentosF.GrupodosProdutos(Codigo:string): string;
begin
  DADOS_CADASTROSf.GRUPOXXX.SQL.Clear;
  DADOS_CADASTROSf.GRUPOXXX.SQL.Add('Select * from GRUPO where codigo='+QuotedStr(Edit10.Text));
  DADOS_CADASTROSf.GRUPOXXX.Open;

  Result := DADOS_CADASTROSf.GRUPOXXX.FieldByName('nome').AsString;
end;

procedure TCadastroMovimentosF.ConsultaClientesY;
begin
  {
  DADOSMOVIMENTOF.CLIENTESPEDIDO.Close;
  DADOSMOVIMENTOF.CLIENTESPEDIDO.Open;
  DADOSMOVIMENTOF.CLIENTESPEDIDO.Refresh;
  DADOSMOVIMENTOF.CLIENTESPEDIDO.Locate('CODIGO',DADOSMOVIMENTOF.PED_CLI.FieldByName('CLIENTE').AsString,[]);
  }
  DADOSMOVIMENTOF.CLIENTESPEDIDO.Close;
  DADOSMOVIMENTOF.CLIENTESPEDIDO.SQL.Clear;
  DADOSMOVIMENTOF.CLIENTESPEDIDO.SQL.Add('Select * from CLIENTES where CODIGO='+QuotedStr(DADOSMOVIMENTOF.PED_CLI.FieldByName('CLIENTE').AsString));
  DADOSMOVIMENTOF.CLIENTESPEDIDO.Open;

  if DADOSMOVIMENTOF.CLIENTESPEDIDO.IsEmpty then begin
    ShowMessage('Cliente Inexistente !!!');
    RxDBComboEdit6.SetFocus;
  end
  else
    DBEdit84.SetFocus;
end;

procedure TCadastroMovimentosf.ConsultaClientesY2(Consulta:string);
begin
  {
  DADOSMOVIMENTOF.CLIENTESPEDIDO.Close;
  DADOSMOVIMENTOF.CLIENTESPEDIDO.Open;
  DADOSMOVIMENTOF.CLIENTESPEDIDO.Refresh;
  DADOSMOVIMENTOF.CLIENTESPEDIDO.Locate('CODIGO',Consulta,[]);
  }
  DADOSMOVIMENTOF.CLIENTESPEDIDO.Close;
  DADOSMOVIMENTOF.CLIENTESPEDIDO.SQL.Clear;
  DADOSMOVIMENTOF.CLIENTESPEDIDO.SQL.Add('Select * from CLIENTES where CODIGO='+QuotedStr(Consulta));
  DADOSMOVIMENTOF.CLIENTESPEDIDO.Open;
end;

procedure TCadastroMovimentosf.ConsultaClientesx2(Consulta:string);
begin
  {
  DADOSMOVIMENTOF.CLIENTESx.Close;
  DADOSMOVIMENTOF.CLIENTESx.Open;
  DADOSMOVIMENTOF.CLIENTESx.Refresh;
  DADOSMOVIMENTOF.CLIENTESx.Locate('CODIGO',Consulta,[]);
  }
  DADOSMOVIMENTOF.CLIENTESx.Close;
  DADOSMOVIMENTOF.CLIENTESx.SQL.Clear;
  DADOSMOVIMENTOF.CLIENTESx.SQL.Add('Select * from CLIENTES where CODIGO='+QuotedStr(Consulta));
  DADOSMOVIMENTOF.CLIENTESx.Open;
end;

procedure TCadastroMovimentosF.ConsultaClientesx;
begin
  DADOSMOVIMENTOF.CLIENTESx.Close;
  DADOSMOVIMENTOF.CLIENTESx.SQL.Clear;
  DADOSMOVIMENTOF.CLIENTESx.SQL.Add('Select * from CLIENTES where CODIGO='+QuotedStr(DADOSMOVIMENTOF.VENDAS.FieldByName('CLIENTE').AsString));
  DADOSMOVIMENTOF.CLIENTESx.Open;

  if DADOSMOVIMENTOF.CLIENTESx.IsEmpty then begin
    ShowMessage('Cliente Inexistente !!!');
    RxDBComboEdit3.SetFocus;
  end
  else
    DBEdit48.SetFocus;
end;


procedure TCadastroMovimentosf.ImpCompras;
var
  Pag,nLin:Integer;
  LinTal, xxx: Integer;
  Tipo,EnSai,Ordem, Entra:String;
  Dia , ValorJ, ProdutoIgual, TemItens :String;
  Total,Valor,QuaTot:Double;
  VlrAcum , ValDia, TotalProduto, TotalQuantidaPreco, TotalProdutoGeral, TotalProdutoGeralCusto, TotalProdutoVenda : Double;
  EntraSaidas,FornecedorCliente:TUniQuery;

  procedure Cabecalho;
  begin
    Definevarpubl();
    Imp_InicializaPagina;
    {
    if CheckBox4.Checked then begin
      Imp_Linha(01, 00, ASaltPoleg+#33+'' , 6, 'E');
      Imp_Linha(01, 00, ACondensa5+DADOS_CADASTROSf.EMITENTE.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString , 6, 'E');
      Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
      Imp_Linha(00, 01, TimetoStr(Time), 8, 'E');
      Imp_Linha(00, 64, 'Folha', 06, 'E');
      Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
      // Imp_Linha(01, 00, Padc('RELATORIO DE VENDAS POR ORDEM DE DATA DE EMISSAO',160) , 42, 'E');
      // Imp_Linha(01, 00, Padc('RELATORIO DE Monofasicos',160) , 42, 'E');
      Imp_Linha(01, 00, 'RELATORIO DE Monofasicos' , 42, 'E');
      Imp_Linha(01, 00, StringOfChar('-', 73), 73, 'E');
      Imp_Linha(01, 00, '*C.PRO *--------------DESCRICAO---------------* CFOP* *CST.* *-NCM-* Mono', 160, 'E');
      Imp_Linha(01, 00, StringOfChar('-', 73), 73, 'E');
      nLin:=nLin + 6;
    end
    else begin
    }
      // Imp_Linha(01, 00, ASaltPoleg+#33+'' , 6, 'E');
      Imp_Linha(01, 00, ACondensa5+DADOS_CADASTROSf.EMITENTE.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString , 6, 'E');
      Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
      Imp_Linha(00, 01, TimetoStr(Time), 8, 'E');
      Imp_Linha(00, 124, 'Folha', 06, 'E');
      Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
      Imp_Linha(01, 00, Padc('RELATORIO DE VENDAS POR ORDEM DE DATA DE EMISSAO',160) , 42, 'E');
      Imp_Linha(01, 00, StringOfChar('-', 152), 152, 'E');
      // Imp_Linha(01, 00, '*LANCA* *C.PRO *--------------DESCRICAO---------------*  ORÇAM* *DT.EMIS.* C.CLI  *--------------CLIENTE------------* UNI *QUANTIDADE* *-----VALOR-----* *--VALOR TOTAL--*', 160, 'E');
      Imp_Linha(01, 00, '*C.PRO *----------DESCRICAO-------* ORÇAMENTO *DT.EMIS.* C.CLI  *--------------CLIENTE------------* UNI *QUANTIDADE* *-----VALOR-----* *--VALOR TOTAL--*', 160, 'E');
      Imp_Linha(01, 00, StringOfChar('-', 152), 152, 'E');
      nLin:=nLin + 6;
    // end;
  end;
begin
  // ListBox1.Clear;
  tamanhofonte:=7;
  Tipo := 'RAW';   // Dica: Imprime com matricial Epson mais rápido
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    MENSPROCF.Panel1.Caption:='AGUARDE UM MOMENTO - GERANDO O RELATÓRIO !!!';
    MENSPROCF.Show;
    MENSPROCF.Update;
    {
    if CheckBox4.Checked then begin
      Query1.Open;
      Query1.First;
      Tipo := 'RAW';   // Dica: Imprime com matricial Epson mais rápido
        nLin:=0;
        Pag :=1;
        while not Query1.Eof do begin
          if nLin=0 then begin
            Cabecalho;
          end;
          Imp_Linha(01, 00, Query1.FieldByName('CODIGO').AsString, 6, 'E');
          Imp_Linha(00, 01, Query1.FieldByName('PRO_DESCRI').AsString, 40, 'E');
          Imp_Linha(00, 02, Query1.FieldByName('PRO_CFOPSA').AsString, 5, 'E');
          Imp_Linha(00, 01, Query1.FieldByName('PRO_SITTRI').AsString, 4, 'E');
          Imp_Linha(00, 01, Query1.FieldByName('PRO_CFMERC').AsString, 8, 'E');
          Imp_Linha(00, 01, Query1.FieldByName('PRO_MONAFAS').AsString, 2, 'E');
          Inc( nLin );
          if nLin >= 60 then begin
            Imp_Ejeta;
            nLin:=0;
            Pag :=Pag+1;
          end;
          Query1.Next;
        end;
          Imp_Ejeta;
        Imp_Fim;
      MENSPROCF.Close;
    end
    else begin
    }
      nLin:=0;
      Pag:=1;
      DADOSMOVIMENTOF.PRODUTOS_REL.Close;
      DADOSMOVIMENTOF.PRODUTOS_REL.SQL.Clear;
      DADOSMOVIMENTOF.PRODUTOS_REL.SQL.Add('select * from PRODUTOS order by codigo');
      DADOSMOVIMENTOF.PRODUTOS_REL.Open;
      DADOSMOVIMENTOF.PRODUTOS_REL.First;
      EntraSaidas:=DADOSFRENTEf.ITEVENDAS_ECF2_Rel;
      FiltroItensVenda2(datini.Date,DatFim.Date);
      while not EntraSaidas.Eof do begin
        if nLin = 0 then
          Cabecalho;
        Valor:=EntraSaidas.FieldByName('PRECORAT').AsFloat;
        if DADOSMOVIMENTOF.PRODUTOS_REL.Locate('CODIGO', EntraSaidas.FieldByName('CODIGO').AsString, []) then begin
          if Edit10.Text<>'' then begin
            if DADOSMOVIMENTOF.PRODUTOS_REL.FieldByName('GRUPO').AsString<>Edit10.Text then
              Entra:=''
            else
              Entra:='S';
          end
          else
            Entra:='S';
          if Entra='S' then begin
            DADOSMOVIMENTOF.CLIENTESx.Close;
            DADOSMOVIMENTOF.CLIENTESx.SQL.Clear;
            DADOSMOVIMENTOF.CLIENTESx.SQL.Add('Select * from CLIENTES where CODIGO='+QuotedStr(EntraSaidas.FieldByName('CLIENTE').AsString));
            DADOSMOVIMENTOF.CLIENTESx.Open;
            // Imp_Linha(01, 00, EntraSaidas.FieldByName('CODIGOX').AsString+'-',7, 'E');
            Imp_Linha(01, 00, EntraSaidas.FieldByName('CODIGO').AsString,6, 'D');
            Imp_Linha(00, 01, copy(DADOSMOVIMENTOF.PRODUTOS_REL.FieldByName('nome').AsString,1,28),28, 'E');
            Imp_Linha(00, 01, EntraSaidas.FieldByName('cupom').AsString,7, 'E');
            Imp_Linha(00, 01, EntraSaidas.FieldByName('DATA').AsString,10, 'E');
            Imp_Linha(00, 01, EntraSaidas.FieldByName('CLIENTE').AsString,6, 'D');
            Imp_Linha(00, 01, COPY(DADOSMOVIMENTOF.CLIENTESx.FieldByName('NOME').AsString,1,36),36, 'E');
            Imp_Linha(00, 00, DADOSMOVIMENTOF.PRODUTOS_REL.FieldByName('UND_V').AsString,4, 'E');
            Imp_Linha(00, 00, FormatFloat('###,##0.00', EntraSaidas.FieldByName('QTD').AsFloat),12, 'D');
            Imp_Linha(00, 00, FormatFloat('###,###0.000', Valor),18, 'D');
            Imp_Linha(00, 00, FormatFloat('###,##0.00', EntraSaidas.FieldByName('QTD').AsFloat*Valor),18, 'D');
            Inc( nLin );
            Total:=Total+(EntraSaidas.FieldByName('QTD').AsFloat*Valor);
            QuaTot:=QuaTot+EntraSaidas.FieldByName('QTD').AsFloat;
          end;
        end;
        // if nLin >= 60 then begin
        if nLin >= 90 then begin
          Imp_Ejeta;
          nLin:=0;
          Pag:=Pag+1;
          Cabecalho;
        end;
        EntraSaidas.Next;
        if nLin >= 90 then begin
          Imp_Ejeta;
          nLin:=0;
          Pag:=Pag+1;
        end;
      end;
      Imp_Linha(02, 66, 'QUANTIDADE TOTAL DO PERIODO -> '+ FormatFloat('###,##0.00', QuaTot),50, 'D');
      Imp_Linha(00, 00, 'TOTAL DO PERIODO -> '+ FormatFloat('###,##0.00', Total),36, 'D');
      // if not CONFIGF.DBCheckBox1.Checked then
      //   Imp_Ejeta;
      {
      if CheckBox1.Checked=true then begin
        ListBox1.Sorted:=true;
        ListBox1.Items.Add('FIM');
        if ListBox1.Visible then
          ListBox1.Font.Name:='LettrGoth12 BT';
        TotalProdutoGeral:=0;LinTal:=0; TotalProduto:=0;TotalQuantidaPreco:=0;TotalProdutoGeralCusto:=0;TotalProdutoVenda:=0;
        ProdutoIgual:=Copy(ListBox1.Items[LinTal],1,47);
        if fileexists('BARPED.TXT') then
          Imp_Linha(01, 00, 'QUANTIDADE DOS ITENS VENDIDOS                            QUANTIDADE   VL.VENDA   VL.CUSTO  DIFERENÇA', 47, 'E')
        else
          Imp_Linha(01, 00, 'QUANTIDADE DOS ITENS VENDIDOS                   QUANTIDADE   VL.VENDA   VL.CUSTO  DIFERENÇA', 47, 'E');
        Imp_Linha(01, 00, '', 47, 'E');
        while true do begin
          if (ProdutoIgual<>Copy(ListBox1.Items[LinTal],1,47)) or (ListBox1.Items[LinTal]='FIM') then begin
            DADOSMOVIMENTOF.PRODUTOS_REL.Locate('CODIGO', Copy(ProdutoIgual,1,6), []);
            if fileexists('BARPED.TXT') then begin
              Imp_Linha(01, 00, TiraZerosAEsquera(DADOSMOVIMENTOF.PRODUTOS_REL.FieldByName('CODBAR').AsString), 14, 'D');
              Imp_Linha(00, 00, '-'+DADOSMOVIMENTOF.PRODUTOS_REL.FieldByName('NOME').AsString, 42, 'E');
            end
            else
              Imp_Linha(01, 00, ProdutoIgual, 47, 'E');
            Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalProduto), 10, 'D');
            Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalQuantidaPreco), 10, 'D');
            Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalProduto*DADOSMOVIMENTOF.PRODUTOS_REL.FieldByName('PRECO').AsFloat), 10, 'D');
            Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalQuantidaPreco-(TotalProduto*DADOSMOVIMENTOF.PRODUTOS_REL.FieldByName('PRECO').AsFloat)), 10, 'D');
            TotalProdutoVenda:=TotalProdutoVenda+(TotalQuantidaPreco);
            TotalProdutoGeralCusto:=TotalProdutoGeralCusto+(TotalProduto*DADOSMOVIMENTOF.PRODUTOS_REL.FieldByName('PRECO').AsFloat);
            TotalProduto:=0;
            TotalQuantidaPreco:=0;
            if ListBox1.Items[LinTal]='FIM' then begin
              if fileexists('BARPED.TXT') then
                Imp_Linha(02, 00, 'Total Geral-------------------------------------------> ', 47, 'E')
              else
                Imp_Linha(02, 00, 'Total Geral----------------------------------> ', 47, 'E');
              Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalProdutoGeral), 10, 'D');
              Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalProdutoVenda), 10, 'D');
              Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalProdutoGeralCusto), 10, 'D');
              Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalProdutoVenda-TotalProdutoGeralCusto), 10, 'D');
              break;
            end;
          end;
          ProdutoIgual:=Copy(ListBox1.Items[LinTal],1,47);
          TotalProduto:=TotalProduto+StrToFloat(StringReplace(Copy(ListBox1.Items[LinTal],51,20), '.', '',[rfReplaceAll]));
          TotalQuantidaPreco:=TotalQuantidaPreco+StrToFloat(StringReplace(Copy(ListBox1.Items[LinTal],64,20), '.', '',[rfReplaceAll]));
          TotalProdutoGeral:=TotalProdutoGeral+StrToFloat(StringReplace(Copy(ListBox1.Items[LinTal],51,20), '.', '',[rfReplaceAll]));
          LinTal:=LinTal+1;
          if ListBox1.Items[LinTal]='FIM' then begin
            Imp_Linha(01, 00, ProdutoIgual, 47, 'E');
            Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalProduto), 10, 'D');
            Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalQuantidaPreco), 10, 'D');
            Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalProduto*DADOSMOVIMENTOF.PRODUTOS_REL.FieldByName('PRO_PRECO').AsFloat), 10, 'D');
            Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalQuantidaPreco-(TotalProduto*DADOSMOVIMENTOF.PRODUTOS_REL.FieldByName('PRO_PRECO').AsFloat)), 10, 'D');
            Imp_Linha(02, 00, 'Total Geral----------------------------------> ', 47, 'E');
            Imp_Linha(00, 01, FormatFloat('###,##0.00', TotalProdutoGeral), 10, 'D');
            break;
          end;
        end;
      end;
      }
    // end;
    Imp_Fim;
  end;
  MENSPROCF.Close;
end;


end.



