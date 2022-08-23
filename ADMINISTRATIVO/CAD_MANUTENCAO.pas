unit CAD_MANUTENCAO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Mestre, NxNotebook6, NxControls6,
  NxCollection6, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, RxToolEdit, RxDBCtrl, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxDBEdit, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, cxMemo,
  cxDropDownEdit, cxCalc, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, MemDS, DBAccess, Uni, Vcl.ComCtrls;

type
  TCAD_MANUTENCAOf = class(TMestre_FRM)
    NxNotebook62: TNxNotebook6;
    ClientesNote: TNxNotebookSheet6;
    FornecedoresNote: TNxNotebookSheet6;
    ProdutosNote: TNxNotebookSheet6;
    GrupoCliente: TNxNotebookSheet6;
    NxNotebook63: TNxNotebook6;
    Principal: TNxNotebookSheet6;
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label186: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    cxDBButtonEdit1: TcxDBButtonEdit;
    DBEdit40: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit58: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    ReferênciaComercial: TNxNotebookSheet6;
    Panel1: TPanel;
    Label188: TLabel;
    Label189: TLabel;
    Label190: TLabel;
    Label191: TLabel;
    Label192: TLabel;
    Label193: TLabel;
    Label194: TLabel;
    Label195: TLabel;
    Label196: TLabel;
    Label197: TLabel;
    Label198: TLabel;
    Label199: TLabel;
    Label200: TLabel;
    Label201: TLabel;
    GroupBox1: TGroupBox;
    Label202: TLabel;
    Label203: TLabel;
    Label204: TLabel;
    Label209: TLabel;
    Label210: TLabel;
    Label211: TLabel;
    Label212: TLabel;
    Label213: TLabel;
    Label214: TLabel;
    Label215: TLabel;
    Label220: TLabel;
    DBEdit182: TDBEdit;
    DBEdit183: TDBEdit;
    DBEdit184: TDBEdit;
    DBEdit189: TDBEdit;
    DBEdit190: TDBEdit;
    DBEdit191: TDBEdit;
    DBEdit193: TDBEdit;
    DBEdit192: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    DBEdit194: TDBEdit;
    DBEdit173: TDBEdit;
    DBEdit174: TDBEdit;
    DBEdit175: TDBEdit;
    DBEdit176: TDBEdit;
    DBEdit177: TDBEdit;
    DBEdit178: TDBEdit;
    DBEdit179: TDBEdit;
    DBEdit180: TDBEdit;
    DBEdit181: TDBEdit;
    DBEdit185: TDBEdit;
    DBEdit186: TDBEdit;
    DBEdit187: TDBEdit;
    DBEdit188: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    cxDBButtonEdit4: TcxDBButtonEdit;
    dblkcbbUFCARTEIRATRABALHO: TDBLookupComboBox;
    Dadosadicionais: TNxNotebookSheet6;
    Panel2: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label162: TLabel;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    cxDBButtonEdit2: TcxDBButtonEdit;
    cxDBButtonEdit3: TcxDBButtonEdit;
    DBLookupComboBox16: TDBLookupComboBox;
    cxDBButtonEdit16: TcxDBButtonEdit;
    Observações: TNxNotebookSheet6;
    NxNotebookSheet612: TNxNotebookSheet6;
    Panel9: TPanel;
    Button14: TButton;
    Button15: TButton;
    NxNotebook61: TNxNotebook6;
    NxNotebookSheet62: TNxNotebookSheet6;
    NxNotebookSheet63: TNxNotebookSheet6;
    Panel3: TPanel;
    Panel4: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    cxDBButtonEdit5: TcxDBButtonEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    Panel5: TPanel;
    Panel7: TPanel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label161: TLabel;
    DBEdit71: TDBEdit;
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
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    cxDBButtonEdit7: TcxDBButtonEdit;
    cxDBButtonEdit8: TcxDBButtonEdit;
    DBLookupComboBox15: TDBLookupComboBox;
    cxDBButtonEdit15: TcxDBButtonEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label135: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label206: TLabel;
    Label207: TLabel;
    Label208: TLabel;
    Label112: TLabel;
    Label160: TLabel;
    Label26: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit145: TDBEdit;
    DBEdit146: TDBEdit;
    DBEdit147: TDBEdit;
    cxCalcEdit6: TcxCalcEdit;
    DBLookupComboBox10: TDBLookupComboBox;
    cxDBButtonEdit10: TcxDBButtonEdit;
    DBLookupComboBox12: TDBLookupComboBox;
    cxDBButtonEdit12: TcxDBButtonEdit;
    DBLookupComboBox14: TDBLookupComboBox;
    cxDBButtonEdit14: TcxDBButtonEdit;
    cxDBMemo1: TcxDBMemo;
    DBEdit25: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit26: TDBEdit;
    Label205: TLabel;
    Panel10: TPanel;
    GrupoFornecedor: TNxNotebookSheet6;
    GrupoProduto: TNxNotebookSheet6;
    Panel8: TPanel;
    Panel11: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Unidades: TNxNotebookSheet6;
    VendedorNote: TNxNotebookSheet6;
    EmitenteNote: TNxNotebookSheet6;
    OperadorNote: TNxNotebookSheet6;
    Contas: TNxNotebookSheet6;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    CentrodeCustosz: TNxNotebookSheet6;
    Bancos: TNxNotebookSheet6;
    Grade: TNxNotebookSheet6;
    NxTabSheet5: TNxNotebookSheet6;
    S: TNxNotebookSheet6;
    Cartoes: TNxNotebookSheet6;
    Panel17: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel19: TPanel;
    Button5: TButton;
    Button6: TButton;
    Panel20: TPanel;
    Button7: TButton;
    Button8: TButton;
    Panel21: TPanel;
    Button9: TButton;
    Button10: TButton;
    Panel22: TPanel;
    Button11: TButton;
    Button12: TButton;
    Panel23: TPanel;
    Button13: TButton;
    Button16: TButton;
    Panel24: TPanel;
    Button17: TButton;
    Button18: TButton;
    Panel25: TPanel;
    Button19: TButton;
    Button20: TButton;
    Panel26: TPanel;
    Button21: TButton;
    Button22: TButton;
    Panel27: TPanel;
    Button23: TButton;
    Button24: TButton;
    Panel28: TPanel;
    Button25: TButton;
    Button26: TButton;
    Panel29: TPanel;
    Button27: TButton;
    Button28: TButton;
    Panel30: TPanel;
    Button29: TButton;
    Button30: TButton;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    Label185: TLabel;
    DBEdit168: TDBEdit;
    DBEdit169: TDBEdit;
    DBEdit170: TDBEdit;
    DBEdit171: TDBEdit;
    DBEdit172: TDBEdit;
    Label176: TLabel;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    DBEdit164: TDBEdit;
    DBEdit165: TDBEdit;
    DBEdit166: TDBEdit;
    DBEdit167: TDBEdit;
    Panel37: TPanel;
    Label184: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    Label24: TLabel;
    Label187: TLabel;
    Label216: TLabel;
    Label217: TLabel;
    DBEdit163: TDBEdit;
    DBEdit155: TDBEdit;
    DBEdit156: TDBEdit;
    DBEdit157: TDBEdit;
    DBEdit158: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit195: TDBEdit;
    MaskEdit1: TcxCalcEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    cxDBButtonEdit6: TcxDBButtonEdit;
    Panel38: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1QTD: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Button31: TButton;
    Panel39: TPanel;
    Panel40: TPanel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2BARRAS: TcxGridDBColumn;
    cxGridDBTableView2NOME: TcxGridDBColumn;
    cxGridDBTableView2COR: TcxGridDBColumn;
    cxGridDBTableView2TAMANHO: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Label173: TLabel;
    Label174: TLabel;
    Label172: TLabel;
    DBEdit160: TDBEdit;
    DBEdit161: TDBEdit;
    DBEdit162: TDBEdit;
    DBEdit159: TDBEdit;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Label165: TLabel;
    Label166: TLabel;
    DBEdit152: TDBEdit;
    DBEdit153: TDBEdit;
    Label163: TLabel;
    Label164: TLabel;
    DBEdit150: TDBEdit;
    DBEdit151: TDBEdit;
    Label62: TLabel;
    Label76: TLabel;
    Label167: TLabel;
    DBEdit148: TDBEdit;
    DBEdit149: TDBEdit;
    DBEdit154: TDBEdit;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
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
    DBEdit124: TDBEdit;
    DBEdit125: TDBEdit;
    DBEdit126: TDBEdit;
    DBEdit127: TDBEdit;
    DBEdit128: TDBEdit;
    DBEdit129: TDBEdit;
    DBEdit130: TDBEdit;
    DBEdit131: TDBEdit;
    DBEdit132: TDBEdit;
    DBEdit133: TDBEdit;
    DBEdit134: TDBEdit;
    DBEdit135: TDBEdit;
    DBEdit136: TDBEdit;
    DBEdit137: TDBEdit;
    DBEdit138: TDBEdit;
    DBEdit139: TDBEdit;
    DBEdit140: TDBEdit;
    DBEdit141: TDBEdit;
    DBLookupComboBox13: TDBLookupComboBox;
    cxDBButtonEdit13: TcxDBButtonEdit;
    DBEdit142: TDBEdit;
    DBEdit143: TDBEdit;
    DBEdit144: TDBEdit;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
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
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    DBEdit103: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit105: TDBEdit;
    DBEdit106: TDBEdit;
    DBEdit107: TDBEdit;
    DBEdit108: TDBEdit;
    DBEdit109: TDBEdit;
    DBEdit110: TDBEdit;
    DBEdit111: TDBEdit;
    DBEdit112: TDBEdit;
    DBEdit113: TDBEdit;
    DBEdit114: TDBEdit;
    DBEdit115: TDBEdit;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit118: TDBEdit;
    DBEdit119: TDBEdit;
    DBEdit120: TDBEdit;
    DBLookupComboBox11: TDBLookupComboBox;
    cxDBButtonEdit11: TcxDBButtonEdit;
    DBEdit121: TDBEdit;
    DBEdit122: TDBEdit;
    DBEdit123: TDBEdit;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
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
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    DBEdit99: TDBEdit;
    DBLookupComboBox9: TDBLookupComboBox;
    cxDBButtonEdit9: TcxDBButtonEdit;
    DBEdit100: TDBEdit;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    Panel42: TPanel;
    Button38: TButton;
    Button39: TButton;
    Button40: TButton;
    Portador: TNxNotebookSheet6;
    Panel43: TPanel;
    NxNotebookSheet65: TNxNotebookSheet6;
    NxNotebookSheet66: TNxNotebookSheet6;
    Panel44: TPanel;
    Panel45: TPanel;
    Label175: TLabel;
    Label218: TLabel;
    DBText1: TDBText;
    DBEdit196: TDBEdit;
    RxDBComboEdit1: TRxDBComboEdit;
    Panel46: TPanel;
    Button41: TButton;
    Button42: TButton;
    Panel47: TPanel;
    Button43: TButton;
    Button45: TButton;
    NxNotebookSheet64: TNxNotebookSheet6;
    Panel48: TPanel;
    Historico: TNxNotebookSheet6;
    SubHistorico: TNxNotebookSheet6;
    Panel49: TPanel;
    Panel50: TPanel;
    Label219: TLabel;
    Label221: TLabel;
    DBText3: TDBText;
    DBEdit197: TDBEdit;
    RxDBComboEdit3: TRxDBComboEdit;
    Panel51: TPanel;
    Button44: TButton;
    Button46: TButton;
    Panel52: TPanel;
    Button47: TButton;
    Button48: TButton;
    Label222: TLabel;
    DBEdit198: TDBEdit;
    Button49: TButton;
    Veiculos: TNxNotebookSheet6;
    Panel53: TPanel;
    Panel55: TPanel;
    Button50: TButton;
    Button51: TButton;
    Label223: TLabel;
    Label224: TLabel;
    Label225: TLabel;
    Label226: TLabel;
    Label227: TLabel;
    Label228: TLabel;
    Label229: TLabel;
    Label230: TLabel;
    Label231: TLabel;
    Label232: TLabel;
    Label233: TLabel;
    DBText4: TDBText;
    DBEdit199: TDBEdit;
    RxDBComboEdit6: TRxDBComboEdit;
    DBEdit200: TDBEdit;
    DBEdit201: TDBEdit;
    DBEdit202: TDBEdit;
    DBEdit203: TDBEdit;
    DBEdit204: TDBEdit;
    DBEdit205: TDBEdit;
    DBEdit206: TDBEdit;
    DBEdit207: TDBEdit;
    DBEdit208: TDBEdit;
    Panel101: TPanel;
    Panel54: TPanel;
    Panel102: TPanel;
    Panel104: TPanel;
    Panel56: TPanel;
    Panel57: TPanel;
    Panel58: TPanel;
    Panel59: TPanel;
    Panel60: TPanel;
    Panel61: TPanel;
    Panel62: TPanel;
    Panel63: TPanel;
    Panel64: TPanel;
    Panel65: TPanel;
    Panel66: TPanel;
    Panel67: TPanel;
    Panel68: TPanel;
    Panel69: TPanel;
    Panel70: TPanel;
    Panel71: TPanel;
    Panel72: TPanel;
    Panel73: TPanel;
    Panel74: TPanel;
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
    Panel91: TPanel;
    Panel92: TPanel;
    Panel93: TPanel;
    Panel94: TPanel;
    Panel95: TPanel;
    Panel96: TPanel;
    Panel97: TPanel;
    Panel98: TPanel;
    Panel99: TPanel;
    Panel100: TPanel;
    Panel103: TPanel;
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
    Panel117: TPanel;
    Panel118: TPanel;
    Panel119: TPanel;
    Panel120: TPanel;
    Panel121: TPanel;
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
    Panel149: TPanel;
    Panel150: TPanel;
    Panel151: TPanel;
    Panel152: TPanel;
    Panel153: TPanel;
    Panel154: TPanel;
    Panel155: TPanel;
    Panel156: TPanel;
    Panel157: TPanel;
    Panel158: TPanel;
    Panel18: TPanel;
    Button3: TButton;
    Button4: TButton;
    Panel159: TPanel;
    Panel160: TPanel;
    Panel161: TPanel;
    Panel162: TPanel;
    Panel163: TPanel;
    Panel164: TPanel;
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
    Panel213: TPanel;
    Panel214: TPanel;
    Panel215: TPanel;
    Panel216: TPanel;
    Panel217: TPanel;
    Panel218: TPanel;
    Panel219: TPanel;
    Panel220: TPanel;
    Panel221: TPanel;
    Panel222: TPanel;
    Panel224: TPanel;
    Panel225: TPanel;
    Panel226: TPanel;
    Panel228: TPanel;
    Panel41: TPanel;
    Button52: TButton;
    Panel223: TPanel;
    Panel227: TPanel;
    Panel229: TPanel;
    Panel230: TPanel;
    Panel231: TPanel;
    GroupBox3: TGroupBox;
    DBRichEdit1: TDBRichEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    Label234: TLabel;
    DBComboBox1: TDBComboBox;
    Label235: TLabel;
    Label236: TLabel;
    Label237: TLabel;
    DBEdit209: TDBEdit;
    DBEdit210: TDBEdit;
    Label238: TLabel;
    Label239: TLabel;
    DBEdit211: TDBEdit;
    DBEdit212: TDBEdit;
    Button53: TButton;
    Label240: TLabel;
    DBEdit213: TDBEdit;
    Label241: TLabel;
    DBEdit214: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBEdit194Exit(Sender: TObject);
    procedure DBLookupComboBox16Exit(Sender: TObject);
    procedure cxDBButtonEdit1Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure DBLookupComboBox15Exit(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure RxDBComboEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboEdit1ButtonClick(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure DBEdit163Exit(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit20Enter(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure cxCalcEdit6Exit(Sender: TObject);
    procedure cxCalcEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit145Exit(Sender: TObject);
    procedure DBEdit146Exit(Sender: TObject);
    procedure DBEdit160Exit(Sender: TObject);
    procedure RxDBComboEdit6ButtonClick(Sender: TObject);
    procedure RxDBComboEdit6Enter(Sender: TObject);
    procedure RxDBComboEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboEdit3ButtonClick(Sender: TObject);
    procedure Button52Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure RxDBComboEdit3Exit(Sender: TObject);
    procedure DBEdit210Exit(Sender: TObject);
    procedure DBEdit212Exit(Sender: TObject);
    procedure Button53Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
  private
    procedure estados;
    procedure ChamaPesquisa;
    procedure PercentualDeLucro;
    procedure ChamaGrade;
    function EhNumero(S: string): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_MANUTENCAOf: TCAD_MANUTENCAOf;
  senha, DuplicatasRecberPagar, CodigoConsulta, PlacaVeiculo,CodigoBarra, DescricaoEstatica,
  APPLAUDATES, NovoLancamento, DIAX, DescProd, FiltroCartoesVenciddos,
  AnaliticoSintetico, FotoPaisagengem, DescricaoConsulta  : string;

  TamanhoFonte: integer;

  ReferenteDuplicata, FiltPortador ,vMenRec: string;

  CondicaoAceita, Nota, Fornecedor, AppendEdit, descricaodamodalidade,
  PedidoCompra, Vendedorxyz,
  FiltroRecebimentoConta, ContaPagarReceber, ClienteComprax, Operador,
  ImprimePaisagem ,BaixaContasAReceberNumedor :string;

  vMesAno, FiltraCampo, FiltroClienteVeiculo, FiltroVeiculo, TelaImpressora,
  ServicoProduto, TrodadeGeradordeImpressao, BobinaFormulario,
  TipodeImpressao, ImpressoraEscolhida, RetornaVendas:string;

  BarraAntigo, FrenteRetaguarda, BarraAntigox, OPTCREDITORECEBIMENTO,
  OptConta, QuantidadeParcelas, MeiosdeRecebimento, ContaVendas,
  OBSERVACAOClientePedidoOS, DataSimulado: string;

  HprevHist: HWND;
  HMutex: THandle;

  // DescProd, Primeira, DIAX, FiltroCartoesVenciddos :string;

  TabelaEstoque, Queere2: TUniQuery;

  TotalGeralConta, TotalGeralContaBaixar, SomaGeral, Credito,
  SomaAnterior, VencimentosAtrazados, CreditoCapitado,
  TotalGeral, TotalGeralX :double;


  EntradasCaixa, SaidasCAixa, PrazoCaixa, TotaldasParecelas,
  TotalParcelamento, TotaldasParecelasReceberPagar, TotalParcelas,
  QuantidadePassada,PrecoPassado, JurosDescontos : double;

  // Credito :double;

  Ref : array[0..200] of string;

  idNovo: integer;
  bloqueiadia, UltimoItem, CodigoClientePedidoOS,
  QuantidadedeParcelasdaForma:integer;

implementation

{$R *.dfm}

uses DADOS_CADASTROS, FUNCOESGERAIS, Principal, Cadastros, dadosOBJETOS,
  FUNCOES, FUNCOESUNIDAC;

procedure TCAD_MANUTENCAOf.Button14Click(Sender: TObject);
begin
  inherited;
  DADOS_CADASTROSf.Clientes.Post;
  close;
end;

procedure TCAD_MANUTENCAOf.Button15Click(Sender: TObject);
begin
  inherited;
  DADOS_CADASTROSf.Clientes.Cancel;
  close;
end;

procedure TCAD_MANUTENCAOf.Button1Click(Sender: TObject);
begin
  inherited;
  NxNotebook63.ActivePageIndex:=0;
  DBDateEdit1.SetFocus;
end;

procedure TCAD_MANUTENCAOf.Button2Click(Sender: TObject);
begin
  inherited;
  NxNotebook63.ActivePageIndex:=1;
  DBEdit173.SetFocus;
end;

procedure TCAD_MANUTENCAOf.Button31Click(Sender: TObject);
begin
  inherited;
  if not DADOS_CADASTROSf.EntradaSaida.IsEmpty then begin
    DADOS_CADASTROSf.EntradaSaida.Delete;
    cxGrid1.SetFocus;
  end;
end;

procedure TCAD_MANUTENCAOf.Button32Click(Sender: TObject);
begin
  inherited;
  DADOS_CADASTROSf.Grade.Cancel;
  Button35.SetFocus;
end;

procedure TCAD_MANUTENCAOf.Button33Click(Sender: TObject);
begin
  inherited;
  DADOS_CADASTROSf.Grade.Post;
  Button35.SetFocus;
end;

procedure TCAD_MANUTENCAOf.Button34Click(Sender: TObject);
begin
  inherited;
  if not DADOS_CADASTROSf.Grade.IsEmpty then begin
    NovoEditaX:='Edita';
    DADOS_CADASTROSf.Grade.Edit;
    DBEdit160.SetFocus;
    BarraAntigox:=DADOS_CADASTROSf.Grade.FieldByName('BARRAS').AsString;
  end;
end;

procedure TCAD_MANUTENCAOf.Button35Click(Sender: TObject);
begin
  inherited;
  NovoEditaX:='Novo';
  DADOS_CADASTROSf.Grade.Append;
  DADOS_CADASTROSf.Grade.FieldByName('ATIVO').AsString:='1';
  DADOS_CADASTROSf.Grade.FieldByName('CODIGO').AsString:=DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsString;
  DADOS_CADASTROSf.Grade.FieldByName('Nome').AsString:=DADOS_CADASTROSf.PRODUTOS.FieldByName('Nome').AsString;
  DBEdit160.SetFocus;
end;

procedure TCAD_MANUTENCAOf.Button36Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TCAD_MANUTENCAOf.Button37Click(Sender: TObject);
begin
  inherited;
  if not DADOS_CADASTROSf.Grade.IsEmpty then begin
    DADOS_CADASTROSf.Grade.Delete;
    Button35.SetFocus;
  end;
end;

procedure TCAD_MANUTENCAOf.Button38Click(Sender: TObject);
begin
  inherited;
  NxNotebook63.ActivePageIndex:=0;
  DBDateEdit1.SetFocus;
end;

procedure TCAD_MANUTENCAOf.Button39Click(Sender: TObject);
begin
  inherited;
  NxNotebook63.ActivePageIndex:=1;
  DBEdit173.SetFocus;
end;

procedure TCAD_MANUTENCAOf.Button3Click(Sender: TObject);
begin
  inherited;
  // NxNotebook63.ActivePageIndex:=2;
  // DBEdit44.SetFocus;
  if DADOS_CADASTROSf.PRODUTOS.FieldByName('NOME').AsString='' then begin
    ShowMessage('Pelo menos o nome deve ser informado !!!');
    DBEdit23.SetFocus;
  end
  else if DADOS_CADASTROSf.PRODUTOS.FieldByName('PRECO_CONS').AsFloat=0 then begin
    ShowMessage('Pelo menos o valor de venda deve ser informado !!!');
    DBEdit146.SetFocus;
  end
  else begin
    DADOS_CADASTROSf.PRODUTOS.FieldByName('DESCRICAO').AsString:=DADOS_CADASTROSf.PRODUTOS.FieldByName('NOME').AsString;
    if DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString='' then
      DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString:=DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsString;
    CodigoEntrada:=DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsString;
    CodigoConsulta:=DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsString;
    DADOS_CADASTROSf.PRODUTOS.Post;
    close;
  end;
end;

procedure TCAD_MANUTENCAOf.Button40Click(Sender: TObject);
begin
  inherited;
  NxNotebook63.ActivePageIndex:=2;
  DBEdit44.SetFocus;
end;

procedure TCAD_MANUTENCAOf.Button43Click(Sender: TObject);
begin
  inherited;
  NxNotebook61.ActivePageIndex:=0;
  DBEdit11.SetFocus;
end;

procedure TCAD_MANUTENCAOf.Button44Click(Sender: TObject);
begin
  inherited;
  if Queere.FieldByName('HISTORIC').AsString<>'' then begin
    Queere.Post;
    close;
  end
  else begin
    ShowMessage('Informe o Histório do SubHistórico !!!');
    RxDBComboEdit3.SetFocus;
  end;
end;

procedure TCAD_MANUTENCAOf.Button45Click(Sender: TObject);
begin
  inherited;
  NxNotebook61.ActivePageIndex:=1;
  DBEdit71.SetFocus;
end;

procedure TCAD_MANUTENCAOf.Button47Click(Sender: TObject);
begin
  inherited;
  DADOS_CADASTROSf.HISTORIC.FieldByName('ATIVO').AsString:='0';
  DADOS_CADASTROSf.HISTORIC.Post;
  close;
end;

procedure TCAD_MANUTENCAOf.Button48Click(Sender: TObject);
begin
  inherited;
  Queere.Cancel;
  close;
end;

procedure TCAD_MANUTENCAOf.Button49Click(Sender: TObject);
begin
  inherited;
  ChamaGrade;
end;

procedure TCAD_MANUTENCAOf.ChamaGrade;
begin
  with TCAD_MANUTENCAOf.Create(nil) do begin
    Width:=Panel33.Width;
    Height:=Panel33.Height+50;
    NxNotebook62.ActivePageIndex:=13;
    DADOS_CADASTROSf.Grade.Close;
    DADOS_CADASTROSf.Grade.SQL.Clear;
    DADOS_CADASTROSf.Grade.SQL.Add('Select * from Grade where codigo='+DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsString);
    DADOS_CADASTROSf.Grade.Open;
    NovoEditaX:='Novo';
    DADOS_CADASTROSf.Grade.Append;
    DADOS_CADASTROSf.Grade.FieldByName('CODIGO').AsString:=DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsString;
    DADOS_CADASTROSf.Grade.FieldByName('Nome').AsString:=DADOS_CADASTROSf.PRODUTOS.FieldByName('Nome').AsString;
    DADOS_CADASTROSf.Grade.FieldByName('ATIVO').AsString:='1';
    ShowModal;
  end;
end;

procedure TCAD_MANUTENCAOf.Button52Click(Sender: TObject);
begin
  inherited;
  NxNotebook63.ActivePageIndex:=3;
  DBRichEdit1.SetFocus;
end;

procedure TCAD_MANUTENCAOf.Button53Click(Sender: TObject);
begin
  inherited;
  TelaSenha;
  if senha='MANAGER' then begin
    DBEdit185.Enabled:=true;
    DBEdit186.Enabled:=true;
    DBCheckBox1.Enabled:=true;
    DBCheckBox2.Enabled:=true;
    DBEdit187.Enabled:=true;
    DBEdit188.Enabled:=true;
    DBEdit185.SetFocus;
  end;
end;

procedure TCAD_MANUTENCAOf.Button5Click(Sender: TObject);
begin
  inherited;
  Queere.Post;
  close;
end;

procedure TCAD_MANUTENCAOf.Button6Click(Sender: TObject);
begin
  inherited;
  Queere.Cancel;
  close;
end;

procedure TCAD_MANUTENCAOf.DBEdit145Exit(Sender: TObject);
begin
  inherited;
  PercentualDeLucro;
end;

procedure TCAD_MANUTENCAOf.DBEdit146Exit(Sender: TObject);
begin
  inherited;
  PercentualDeLucro;
end;

procedure TCAD_MANUTENCAOf.PercentualDeLucro;
var Lucro,PerLucro:double;
begin
  if DADOS_CADASTROSf.PRODUTOS.FieldByName('PRECO_CONS').AsFloat>0 then begin
    if (DADOS_CADASTROSf.PRODUTOS.FieldByName('ULTIMO_PRECO').AsFloat>0) and (DADOS_CADASTROSf.PRODUTOS.FieldByName('PRECO_CONS').AsFloat>0) then begin
      Lucro:=DADOS_CADASTROSf.PRODUTOS.FieldByName('PRECO_CONS').AsFloat-DADOS_CADASTROSf.PRODUTOS.FieldByName('ULTIMO_PRECO').AsFloat;
      PerLucro:=(Lucro/DADOS_CADASTROSf.PRODUTOS.FieldByName('ULTIMO_PRECO').AsFloat)*100;
      Label205.Caption:='Percentual de Lucro '+FormatFloat('###,##0.00',PerLucro)+'%';
    end;
  end;
end;

procedure TCAD_MANUTENCAOf.DBEdit160Exit(Sender: TObject);
begin
  inherited;
  DADOS_CADASTROSf.PRODUTOS_CONSULTA.Close;
  DADOS_CADASTROSf.PRODUTOS_CONSULTA.Open;
  DADOS_CADASTROSf.PRODUTOS_CONSULTA.Refresh;
  DADOS_CADASTROSf.Grade_CONSULTA.Close;
  DADOS_CADASTROSf.Grade_CONSULTA.Open;
  DADOS_CADASTROSf.Grade_CONSULTA.Refresh;
  if NovoEditaX='Novo' then begin
    if DADOS_CADASTROSf.Grade.FieldByName('BARRAS').AsString<>'' then begin
      if (DADOS_CADASTROSf.PRODUTOS_CONSULTA.Locate('BARRAS',DADOS_CADASTROSf.Grade.FieldByName('BARRAS').AsString,[])) or
         (DADOS_CADASTROSf.PRODUTOS_CONSULTA.Locate('CODIGO',DADOS_CADASTROSf.Grade.FieldByName('BARRAS').AsString,[])) or
         (DADOS_CADASTROSf.Grade_CONSULTA.Locate('BARRAS',DADOS_CADASTROSf.Grade.FieldByName('BARRAS').AsString,[]))
         then begin
        if DADOS_CADASTROSf.Grade_CONSULTA.Locate('BARRAS',DADOS_CADASTROSf.Grade.FieldByName('BARRAS').AsString,[]) then begin
          ShowMessage('Código já Existente na Grade !!!'+#13+#13+
          'Id.: '+DADOS_CADASTROSf.Grade_CONSULTA.FieldByName('ID').AsString+#13+#13+
          ' Descrição.: '+DADOS_CADASTROSf.Grade_CONSULTA.FieldByName('NOME').AsString);
          DADOS_CADASTROSf.Grade.FieldByName('BARRAS').AsString:='';
        end
        else if DADOS_CADASTROSf.PRODUTOS_CONSULTA.Locate('BARRAS',DADOS_CADASTROSf.Grade.FieldByName('BARRAS').AsString,[]) then begin
          ShowMessage('Código já Existente !!!'+#13+#13+
          'Código.: '+DADOS_CADASTROSf.PRODUTOS_CONSULTA.FieldByName('CODIGO').AsString+#13+#13+
          ' Descrição.: '+DADOS_CADASTROSf.PRODUTOS_CONSULTA.FieldByName('NOME').AsString);
          DADOS_CADASTROSf.Grade.FieldByName('BARRAS').AsString:='';
        end
        else if DADOS_CADASTROSf.PRODUTOS_CONSULTA.Locate('CODIGO',DADOS_CADASTROSf.Grade.FieldByName('BARRAS').AsString,[]) then begin
          ShowMessage('Código já Existente !!!'+#13+#13+
          'Código.: '+DADOS_CADASTROSf.PRODUTOS_CONSULTA.FieldByName('CODIGO').AsString+#13+#13+
          ' Descrição.: '+DADOS_CADASTROSf.PRODUTOS_CONSULTA.FieldByName('NOME').AsString);
          DADOS_CADASTROSf.Grade.FieldByName('BARRAS').AsString:='';
        end;
        if (DADOS_CADASTROSf.Grade_CONSULTA.Locate('BARRAS',DADOS_CADASTROSf.Grade.FieldByName('BARRAS').AsString,[]))
            then begin
          ShowMessage('Código já Existente !!!'+#13+#13+
          'Código.: '+DADOS_CADASTROSf.Grade.FieldByName('CODIGO').AsString+'  -GRADE- '+#13+#13+
          ' Descrição.: '+DADOS_CADASTROSf.Grade.FieldByName('NOME').AsString);
          DBEdit160.SetFocus;
        end;
        DBEdit160.SetFocus;
      end;
    end;
  end;
end;

procedure TCAD_MANUTENCAOf.DBEdit163Exit(Sender: TObject);
begin
  inherited;
  Button3.Click;
end;

procedure TCAD_MANUTENCAOf.DBEdit194Exit(Sender: TObject);
begin
  inherited;
  Button40.SetFocus;
end;

procedure TCAD_MANUTENCAOf.DBEdit20Enter(Sender: TObject);
begin
  inherited;
  BarraAntigo:=DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString;
end;

procedure TCAD_MANUTENCAOf.DBEdit20Exit(Sender: TObject);
begin
  inherited;
  // DADOS_CADASTROSf.PRODUTOS_CONSULTA.Close;
  // DADOS_CADASTROSf.PRODUTOS_CONSULTA.Open;
  // DADOS_CADASTROSf.PRODUTOS_CONSULTA.Refresh;
  if NovoEdita='Novo' then begin
    if DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString<>'' then begin
      {
      DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.Close;
      DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.SQL.Clear;
      DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.SQL.Add('Select * from PRODUTOS where codigo='+DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString);
      DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.Open;
      }
      DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.Close;
      DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.SQL.Clear;
      if EhNumero(DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString)=false then
        DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.SQL.Add('Select * from PRODUTOS where codigo='+'1111111111111111111')
      else
        DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.SQL.Add('Select * from PRODUTOS where codigo='+DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString);
      DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.Open;


      if not DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.IsEmpty then begin
        ShowMessage('Código já Existente !!!'+#13+#13+
        'Código.: '+DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.FieldByName('CODIGO').AsString+#13+#13+
        ' Descrição.: '+DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.FieldByName('NOME').AsString);
        DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString:='';
        DBEdit20.SetFocus;
      end
      else begin
        DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.Close;
        DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.SQL.Clear;
        DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.SQL.Add('Select * from PRODUTOS where BARRAS='+QuotedStr(DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString));
        DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.Open;
        if not DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.IsEmpty then begin
          ShowMessage('Código já Existente !!!'+#13+#13+
          'Código.: '+DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.FieldByName('CODIGO').AsString+#13+#13+
          ' Descrição.: '+DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.FieldByName('NOME').AsString);
          DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString:='';
          DBEdit20.SetFocus;
        end;
      end;

      {
      if (DADOS_CADASTROSf.PRODUTOS_CONSULTA.Locate('BARRAS',DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString,[])) or (DADOS_CADASTROSf.PRODUTOS_CONSULTA.Locate('CODIGO',DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString,[])) then begin
        ShowMessage('Código já Existente !!!'+#13+#13+
        'Código.: '+DADOS_CADASTROSf.PRODUTOS_CONSULTA.FieldByName('CODIGO').AsString+#13+#13+
        ' Descrição.: '+DADOS_CADASTROSf.PRODUTOS_CONSULTA.FieldByName('NOME').AsString);
        DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString:='';
        DBEdit20.SetFocus;
      end;
      }
    end;
  end;

  if NovoEdita='Edita' then begin
    {
    DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.Close;
    DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.SQL.Clear;
    DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.SQL.Add('Select codigo where codigo='+DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString);
    DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.Open;
    }

    // DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.Open;

    {
    if (DADOS_CADASTROSf.PRODUTOS_CONSULTA.Locate('BARRAS',DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString,[])) and (DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsString<>DADOS_CADASTROSf.PRODUTOS_CONSULTA.FieldByName('CODIGO').AsString) or
    (DADOS_CADASTROSf.PRODUTOS_CONSULTA.Locate('codigo',DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString,[])) and (DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsString<>DADOS_CADASTROSf.PRODUTOS_CONSULTA.FieldByName('CODIGO').AsString)
    then begin
      ShowMessage('Código já Existente !!!'+#13+#13+
      'Código.: '+DADOS_CADASTROSf.PRODUTOS_CONSULTA.FieldByName('CODIGO').AsString+#13+#13+
      ' Descrição.: '+DADOS_CADASTROSf.PRODUTOS_CONSULTA.FieldByName('NOME').AsString);
      DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString:=BarraAntigo;
      DBEdit20.SetFocus;
    end;
    }

    if DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString<>'' then begin
      DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.Close;
      DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.SQL.Clear;
      if EhNumero(DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString)=false then
        DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.SQL.Add('Select * from PRODUTOS where codigo='+'1111111111111111111')
      else
        DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.SQL.Add('Select * from PRODUTOS where codigo='+DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString);
      DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.Open;
      if not (DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.IsEmpty) and (DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsString<>DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.FieldByName('CODIGO').AsString) then begin
        ShowMessage('Código já Existente !!!'+#13+#13+
        'Código.: '+DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.FieldByName('CODIGO').AsString+#13+#13+
        ' Descrição.: '+DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.FieldByName('NOME').AsString);
        DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString:='';
        DBEdit20.SetFocus;
      end
      else begin
        DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.Close;
        DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.SQL.Clear;
        DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.SQL.Add('Select * from PRODUTOS where BARRAS='+QuotedStr(DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString));
        DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.Open;
        if not (DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.IsEmpty) and (DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsString<>DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.FieldByName('CODIGO').AsString) then begin
          ShowMessage('Código já Existente !!!'+#13+#13+
          'Código.: '+DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.FieldByName('CODIGO').AsString+#13+#13+
          ' Descrição.: '+DADOS_CADASTROSf.PRODUTOS_CONSULTAQ.FieldByName('NOME').AsString);
          DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString:='';
          DBEdit20.SetFocus;
        end;
      end;

    end;

  end;
end;

procedure TCAD_MANUTENCAOf.DBEdit210Exit(Sender: TObject);
begin
  inherited;
  Button39.SetFocus;
end;

procedure TCAD_MANUTENCAOf.DBEdit212Exit(Sender: TObject);
begin
  inherited;
  Button45.SetFocus;
end;

function TCAD_MANUTENCAOf.EhNumero(S: string): Boolean;
var
  I: Integer;
begin
  Result := True;
  // for I := 1 to Lenght(S) do begin
  for I := 1 to length(S) do begin
    if not (S[I] in ['0'..'9']) then begin
      Result := False;
      Break;
    end;
  end;
end;

procedure TCAD_MANUTENCAOf.DBLookupComboBox15Exit(Sender: TObject);
begin
  inherited;
  Button43.SetFocus;
end;

procedure TCAD_MANUTENCAOf.DBLookupComboBox16Exit(Sender: TObject);
begin
  inherited;
  Button52.SetFocus;
end;

procedure TCAD_MANUTENCAOf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_MANUTENCAOf);
  Action:=caFree;
end;

procedure TCAD_MANUTENCAOf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    ChamaPesquisa;
  if key=vk_f5 then begin
    if cxDBButtonEdit10.Focused=true then begin
      CadastrodeGRUPO;
    end;
    if (cxDBButtonEdit12.Focused=true) or (cxDBButtonEdit14.Focused=true) then begin
      with TCAD_MANUTENCAOf.Create(Self) do begin
        CadastrodeUNIDADES;
      end;
    end;
    if cxDBButtonEdit16.Focused=true then begin
      CadastrodeGRUPOCLI;
    end;
    if cxDBButtonEdit15.Focused=true then begin
      CadastrodeGRUPOFOR;
    end;
  end;
end;

procedure TCAD_MANUTENCAOf.FormShow(Sender: TObject);
var QuaBaixa,QuaEntrada:integer;
begin
  inherited;
  Panel40.BevelOuter:=bvNone;
  Panel39.BevelOuter:=bvNone;
  Panel33.BevelOuter:=bvNone;
  Panel10.BevelOuter:=bvNone;
  Panel5.BevelOuter:=bvNone;
  Panel50.BevelOuter:=bvNone;

  Panel1.Align:=alclient;
  Panel2.Align:=alclient;
  Panel3.Align:=alclient;
  Panel4.Align:=alclient;
  Panel6.Align:=alclient;
  Panel7.Align:=alclient;
  Panel8.Align:=alclient;
  Panel5.Align:=alclient;
  Panel14.Align:=alclient;
  Panel15.Align:=alclient;
  Panel34.Align:=alclient;
  Panel35.Align:=alclient;
  Panel37.Align:=alclient;
  Panel43.Align:=alclient;
  Panel53.Align:=alclient;
  Panel36.Align:=alclient;
  Panel11.Align:=alclient;
  Panel12.Align:=alclient;
  Panel13.Align:=alclient;
  Panel49.Align:=alclient;
  Panel50.Align:=alclient;
  Panel33.Align:=alclient;
  Panel223.Align:=alclient;

  NxNotebook61.Align:=alclient;
  NxNotebook62.Align:=alclient;
  NxNotebook63.Align:=alclient;
  NxNotebook61.Align:=alclient;

  cxGrid3.Align:=alclient;

  // DBDateEdit1.SetFocus;
  if NxNotebook62.ActivePageIndex=14 then begin
    if MostraMensagem='ENTRADASESAIDAS' then
    begin
      DADOS_CADASTROSf.EntradaSaida.Open;
      DADOS_CADASTROSf.EntradaSaida.First;
      QuaBaixa:=0;QuaEntrada:=0;
      while not DADOS_CADASTROSf.EntradaSaida.Eof do begin
        if DADOS_CADASTROSf.EntradaSaida.FieldByName('QTD').AsFloat>0 then
          QuaEntrada:=QuaEntrada+1
        else
          QuaBaixa:=QuaBaixa+1;

        DADOS_CADASTROSf.EntradaSaida.Next;
      end;
      Panel38.Caption:='O movimento de entrada terá '+IntToStr(QuaEntrada)+' itens ';
      Panel38.Caption:=Panel38.Caption+' - O movimento de saída terá '+IntToStr(QuaBaixa)+' itens';
      MostraMensagem:='';
    end;
    if opcao='A' then
      DBEdit163.SetFocus;
    if opcao='E' then
      MaskEdit1.SetFocus;
    if opcao='P' then
      DBEdit157.SetFocus;
    if opcao='D' then
      DBEdit155.SetFocus;
    if opcao='U' then
      DBEdit24.SetFocus;
    if opcao='G' then
      cxDBButtonEdit6.SetFocus;
    if opcao='L' then
      DBEdit214.SetFocus;
  end;

  estados;
  DADOS_CADASTROSf.GRUPOCLI.Open;
  DADOS_CADASTROSf.GRUPO.Open;

  if NxNotebook62.ActivePageIndex=13 then
    DBEdit160.SetFocus;
end;

procedure TCAD_MANUTENCAOf.MaskEdit1Exit(Sender: TObject);
var BaixaEntrada:double;
begin
  inherited;
  if MaskEdit1.Text<>'' then begin
    BaixaEntrada:=StrToFloat(MaskEdit1.Text)-DADOS_CADASTROSf.PRODUTOS.FieldByName('QTD').asfloat;
    if MostraMensagem<>'N' then begin
      if BaixaEntrada<0 then begin
        ShowMessage('Estoque dara uma baixa de '+FloatToStr(BaixaEntrada*-1));
      end;
      if BaixaEntrada>0 then begin
        ShowMessage('Estoque dara uma entrada de '+FloatToStr(BaixaEntrada));
      end;
    end;
    if BaixaEntrada<>0 then begin
      DADOS_CADASTROSf.EntradaSaida.Open;
      if DADOS_CADASTROSf.EntradaSaida.Locate('CODIGO',DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsInteger,[]) then
        DADOS_CADASTROSf.EntradaSaida.Edit
      else
        DADOS_CADASTROSf.EntradaSaida.Append;
      DADOS_CADASTROSf.EntradaSaida.FieldByName('CODIGO').AsInteger:=DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsInteger;
      DADOS_CADASTROSf.EntradaSaida.FieldByName('BARRAS').AsString:=DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString;
      DADOS_CADASTROSf.EntradaSaida.FieldByName('QTD').asfloat:=BaixaEntrada;
      if BaixaEntrada<0 then
        DADOS_CADASTROSf.EntradaSaida.FieldByName('COMPRA_VENDA').asfloat:=DADOS_CADASTROSf.PRODUTOS.FieldByName('PRECO_CONS').asfloat;
      if BaixaEntrada>0 then
        DADOS_CADASTROSf.EntradaSaida.FieldByName('COMPRA_VENDA').asfloat:=DADOS_CADASTROSf.PRODUTOS.FieldByName('ULTIMO_PRECO').asfloat;
      DADOS_CADASTROSf.EntradaSaida.Post;
    end;
  end;
  close;
end;


procedure TCAD_MANUTENCAOf.RxDBComboEdit1ButtonClick(Sender: TObject);
begin
  inherited;
  ChamaPesquisa;
end;

procedure TCAD_MANUTENCAOf.RxDBComboEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    ChamaPesquisa;
end;

procedure TCAD_MANUTENCAOf.RxDBComboEdit3ButtonClick(Sender: TObject);
begin
  inherited;
  ChamaPesquisa;
end;

procedure TCAD_MANUTENCAOf.RxDBComboEdit3Exit(Sender: TObject);
begin
  inherited;
  DADOS_CADASTROSf.HISTORICS.Refresh;
  FiltraQuery(DADOS_CADASTROSf.HISTORICPESQUISA,'HISTORIC',Queere.FieldByName('HISTORIC').AsString);
  if DADOS_CADASTROSf.HISTORICPESQUISA.IsEmpty then begin
    ShowMessage('Histório Inexistente !!!');
    Queere.FieldByName('HISTORIC').AsString:='';
    RxDBComboEdit3.SetFocus;
  end
  else
    DBEdit197.SetFocus;
end;

procedure TCAD_MANUTENCAOf.RxDBComboEdit6ButtonClick(Sender: TObject);
begin
  inherited;
  ChamaPesquisa
end;

procedure TCAD_MANUTENCAOf.RxDBComboEdit6Enter(Sender: TObject);
begin
  inherited;
  if (CodigoConsulta<>'') and (DADOS_CADASTROSf.VEICULOS.FieldByName('CLIENTE').AsString='') then
    DADOS_CADASTROSf.VEICULOS.FieldByName('CLIENTE').AsString:=CodigoConsulta;
end;

procedure TCAD_MANUTENCAOf.RxDBComboEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f3 then
    ChamaPesquisa;
  if key=vk_f5 then
    CadastrodeClientes;
end;

procedure TCAD_MANUTENCAOf.estados;
begin
  DADOS_CADASTROSf.ESTADOS.Open;
  if DADOS_CADASTROSf.ESTADOS.IsEmpty then begin
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='MG';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='MINAS GERAIS';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='SP';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='SAO PAULO';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='RJ';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='RIO DE JANEIRO';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='AC';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='ACRE';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='AL';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='ALAGOAS';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='AP';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='AMAPA';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='AM';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='AMAZONAS';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='BA';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='BAHIA';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='CE';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='CEARA';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='DF';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='DISTRITO FEDERAL';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='ES';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='ESPIRITO SANTO';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='EX';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='EXTERIOR';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='GO';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='GOIAS';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='MA';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='MARANHAO';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='MT';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='MATO GROSSO';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='MS';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='MATO GROSSO DO SUL';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='PA';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='PARA';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='PB';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='PARAIBA';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='PR';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='PARANA';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='PE';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='PERNAMBUCO';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='PI';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='PIAUI';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='RN';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='RIO GRANDE DO NORTE';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='RS';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='RIO GRANDE DO SUL';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='RO';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='RONDONIA';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='RR';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='RORAIMA';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='SC';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='SANTA CATARINA';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='SE';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='SERGIPE';
    DADOS_CADASTROSf.ESTADOS.Append;
    DADOS_CADASTROSf.ESTADOS.FieldByName('CODIGO').AsString:='TO';
    DADOS_CADASTROSf.ESTADOS.FieldByName('NOME').AsString:='TOCANTINS';
    DADOS_CADASTROSf.ESTADOS.Post;
  end;
end;

procedure TCAD_MANUTENCAOf.ChamaPesquisa;
begin
  if (cxDBButtonEdit1.Focused=true) or  (cxDBButtonEdit2.Focused=true) or  (cxDBButtonEdit3.Focused=true) or
     (cxDBButtonEdit5.Focused=true) or  (cxDBButtonEdit7.Focused=true) or  (cxDBButtonEdit8.Focused=true) or
     (cxDBButtonEdit9.Focused=true) or (cxDBButtonEdit11.Focused=true) or (cxDBButtonEdit13.Focused=true) or
     (cxDBButtonEdit4.Focused=true)
  then begin
    ConsultaESTADOS;
  end;
  if cxDBButtonEdit16.Focused=true then begin
    ConsultaGRUPOCLI;
  end;
  if cxDBButtonEdit15.Focused=true then begin
    ConsultaGRUPOFOR;
  end;
  if cxDBButtonEdit10.Focused=true then begin
    ConsultaGRUPO;
  end;
  if cxDBButtonEdit6.Focused=true then begin
    ConsultaGRUPO;
  end;

  if cxDBButtonEdit14.Focused=true then begin
    ConsultaUNIDADES;
  end;
  if cxDBButtonEdit12.Focused=true then begin
    ConsultaUNIDADES;
  end;

  if cxDBButtonEdit12.Focused=true then begin
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


  if CodigoConsulta<>'' then begin
    if cxDBButtonEdit1.Focused=true then
      DADOS_CADASTROSf.Clientes.FieldByName('UF').AsString:=CodigoConsulta;
    if cxDBButtonEdit4.Focused=true then
      DADOS_CADASTROSf.Clientes.FieldByName('UFCARTEIRATRABALHO').AsString:=CodigoConsulta;
    if cxDBButtonEdit2.Focused=true then
      DADOS_CADASTROSf.Clientes.FieldByName('UF_ENT').AsString:=CodigoConsulta;
    if cxDBButtonEdit3.Focused=true then
      DADOS_CADASTROSf.Clientes.FieldByName('UF_COB').AsString:=CodigoConsulta;
    if cxDBButtonEdit5.Focused=true then
      DADOS_CADASTROSf.FORNECEDORES.FieldByName('UF').AsString:=CodigoConsulta;
    if cxDBButtonEdit7.Focused=true then
      DADOS_CADASTROSf.FORNECEDORES.FieldByName('UF_ENT').AsString:=CodigoConsulta;
    if cxDBButtonEdit8.Focused=true then
      DADOS_CADASTROSf.FORNECEDORES.FieldByName('UF_COB').AsString:=CodigoConsulta;
    if cxDBButtonEdit9.Focused=true then
      DADOS_CADASTROSf.VENDEDORES.FieldByName('UF').AsString:=CodigoConsulta;
    if cxDBButtonEdit11.Focused=true then
      DADOS_CADASTROSf.emitente.FieldByName('UF').AsString:=CodigoConsulta;
    if cxDBButtonEdit13.Focused=true then
      DADOS_CADASTROSf.OPERADOR.FieldByName('UF').AsString:=CodigoConsulta;
    if cxDBButtonEdit16.Focused=true then
      DADOS_CADASTROSf.Clientes.FieldByName('GRUPO').AsString:=CodigoConsulta;
    if cxDBButtonEdit15.Focused=true then
      DADOS_CADASTROSf.FORNECEDORES.FieldByName('GRUPO').AsString:=CodigoConsulta;
    if cxDBButtonEdit10.Focused=true then
      DADOS_CADASTROSf.PRODUTOS.FieldByName('GRUPO').AsString:=CodigoConsulta;
    if cxDBButtonEdit6.Focused=true then
      DADOS_CADASTROSf.PRODUTOS.FieldByName('GRUPO').AsString:=CodigoConsulta;
    if cxDBButtonEdit14.Focused=true then
      DADOS_CADASTROSf.PRODUTOS.FieldByName('UND_C').AsString:=CodigoConsulta;
    if cxDBButtonEdit12.Focused=true then
      DADOS_CADASTROSf.PRODUTOS.FieldByName('UND_v').AsString:=CodigoConsulta;
    if RxDBComboEdit1.Focused=true then
      DADOS_CADASTROSf.PORTADOR.FieldByName('CLIENTE').AsString:=CodigoConsulta;
  end;

  if RxDBComboEdit3.Focused=true then begin
    ConsultaHISTORIC;
    if CodigoConsulta<>'' then
      DADOS_CADASTROSf.SUB_HIST.FieldByName('HISTORIC').AsString:=CodigoConsulta;
  end;

end;

procedure TCAD_MANUTENCAOf.cxCalcEdit6Exit(Sender: TObject);
begin
  inherited;
  if cxCalcEdit6.Value>0 then
     DADOS_CADASTROSf.PRODUTOS.FieldByName('PRECO_CONS').AsFloat:=DADOS_CADASTROSf.PRODUTOS.FieldByName('ULTIMO_PRECO').AsFloat+
    ((cxCalcEdit6.Value*DADOS_CADASTROSf.PRODUTOS.FieldByName('ULTIMO_PRECO').AsFloat)/100);
end;

procedure TCAD_MANUTENCAOf.cxCalcEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // if Key='.' then key:=DecimalSeparator;
end;

procedure TCAD_MANUTENCAOf.cxDBButtonEdit1Click(Sender: TObject);
begin
  inherited;
  ChamaPesquisa;
end;

procedure TCAD_MANUTENCAOf.cxDBMemo1Exit(Sender: TObject);
begin
  inherited;
  DBEdit20.SetFocus;
end;

end.


