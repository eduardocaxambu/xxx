unit Cadastros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Mestre_Filho, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxContainer, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, MemDS, DBAccess, Uni,
  dxPSCore, dxPScxCommon, cxClasses, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, RxToolEdit, Vcl.Mask,
  cxGridDBChartView, cxGridDBCardView, cxGridDBBandedTableView, cxGridChartView,
  cxGridCustomLayoutView, cxGridCardView, cxGridBandedTableView, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, NxNotebook6, NxControls6, NxCollection6, dxPScxExtComCtrlsLnk,
  Vcl.Menus, cxButtons, ComObj, Vcl.Buttons;

type
  TCadastros_FRM = class(TMestre_Filho_FRM)
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    dxComponentPrinter1: TdxComponentPrinter;
    UniQuery1: TUniQuery;
    NxNotebook61: TNxNotebook6;
    ClientesNote: TNxNotebookSheet6;
    FornecedoresNote: TNxNotebookSheet6;
    ProdutosNote: TNxNotebookSheet6;
    VendedorNote: TNxNotebookSheet6;
    NxNotebook62: TNxNotebook6;
    NxNotebookSheet65: TNxNotebookSheet6;
    NxNotebookSheet66: TNxNotebookSheet6;
    NxNotebookSheet67: TNxNotebookSheet6;
    NxNotebookSheet68: TNxNotebookSheet6;
    Panel9: TPanel;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    NxNotebook63: TNxNotebook6;
    NxNotebookSheet69: TNxNotebookSheet6;
    NxNotebookSheet610: TNxNotebookSheet6;
    NxNotebookSheet611: TNxNotebookSheet6;
    NxNotebookSheet612: TNxNotebookSheet6;
    NxNotebook64: TNxNotebook6;
    NxNotebookSheet613: TNxNotebookSheet6;
    Panel10: TPanel;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    NxNotebookSheet614: TNxNotebookSheet6;
    NxNotebookSheet615: TNxNotebookSheet6;
    NxNotebookSheet616: TNxNotebookSheet6;
    Button23: TButton;
    Button24: TButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBTableView7CODIGO: TcxGridDBColumn;
    cxGridDBTableView7NOME: TcxGridDBColumn;
    cxGridDBTableView7CNPJ: TcxGridDBColumn;
    cxGridDBTableView7IE: TcxGridDBColumn;
    cxGridDBTableView7ENDERECO: TcxGridDBColumn;
    cxGridDBTableView7BAIRRO: TcxGridDBColumn;
    cxGridDBTableView7CEP: TcxGridDBColumn;
    cxGridDBTableView7CIDADE: TcxGridDBColumn;
    cxGridDBTableView7UF: TcxGridDBColumn;
    cxGridDBTableView7CPF: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2CODIGO: TcxGridDBColumn;
    cxGridDBTableView2BARRAS: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView2NOME: TcxGridDBColumn;
    cxGridDBTableView2UND_C: TcxGridDBColumn;
    cxGridDBTableView2UND_V: TcxGridDBColumn;
    cxGridDBTableView2Column3: TcxGridDBColumn;
    cxGridDBTableView2Column4: TcxGridDBColumn;
    cxGridDBTableView2QTD: TcxGridDBColumn;
    cxGridDBTableView2PRECO_CONS: TcxGridDBColumn;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel8: TPanel;
    Panel7: TPanel;
    Panel11: TPanel;
    Panel13: TPanel;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Label4: TLabel;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button38: TButton;
    MaskEdit2: TMaskEdit;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Button37: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    cxCalcEdit2: TcxCalcEdit;
    Label2: TLabel;
    Button39: TButton;
    Button43: TButton;
    Button45: TButton;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    Button44: TButton;
    CheckBox2: TCheckBox;
    RadioButton3: TRadioButton;
    Normal: TRadioButton;
    RadioButton1: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton5: TRadioButton;
    CheckBox5: TCheckBox;
    Button49: TButton;
    Label3: TLabel;
    OperadorNote: TNxNotebookSheet6;
    EmitenteNote: TNxNotebookSheet6;
    Historicos: TNxNotebookSheet6;
    Panel12: TPanel;
    Button20: TButton;
    x: TNxNotebookSheet6;
    OS: TNxNotebookSheet6;
    Cartoes: TNxNotebookSheet6;
    NxNotebook65: TNxNotebook6;
    NxNotebookSheet61: TNxNotebookSheet6;
    NxNotebookSheet62: TNxNotebookSheet6;
    NxNotebookSheet63: TNxNotebookSheet6;
    Panel15: TPanel;
    Button21: TButton;
    Button22: TButton;
    Button50: TButton;
    Panel16: TPanel;
    Panel17: TPanel;
    Button51: TButton;
    Button52: TButton;
    Button53: TButton;
    Button57: TButton;
    Button58: TButton;
    Button59: TButton;
    cxGrid26: TcxGrid;
    cxGridDBTableView33: TcxGridDBTableView;
    cxGridDBTableView33CODIGO: TcxGridDBColumn;
    cxGridDBTableView33DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView33IDENTIFIC1: TcxGridDBColumn;
    cxGridDBTableView33IDENTIFIC2: TcxGridDBColumn;
    cxGridDBTableView33IDENTIFIC3: TcxGridDBColumn;
    cxGridLevel26: TcxGridLevel;
    cxGrid27: TcxGrid;
    cxGridDBTableView34: TcxGridDBTableView;
    cxGridDBColumn80: TcxGridDBColumn;
    cxGridDBColumn81: TcxGridDBColumn;
    cxGridLevel27: TcxGridLevel;
    Panel19: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button60: TButton;
    Button61: TButton;
    Panel20: TPanel;
    Button62: TButton;
    Button63: TButton;
    Button64: TButton;
    Panel21: TPanel;
    Button65: TButton;
    Button66: TButton;
    Button67: TButton;
    Panel22: TPanel;
    Button68: TButton;
    Button69: TButton;
    Button70: TButton;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBTableView3CODIGO: TcxGridDBColumn;
    cxGridDBTableView3NOME: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGrid21: TcxGrid;
    cxGridDBTableView28: TcxGridDBTableView;
    cxGridDBTableView28CODIGO: TcxGridDBColumn;
    cxGridDBTableView28NOME: TcxGridDBColumn;
    cxGridDBTableView28CLIENTE: TcxGridDBColumn;
    cxGridDBTableView28DescricaoCliente: TcxGridDBColumn;
    cxGridLevel21: TcxGridLevel;
    cxGrid16: TcxGrid;
    cxGridDBTableView35: TcxGridDBTableView;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridLevel28: TcxGridLevel;
    NxNotebookSheet617: TNxNotebookSheet6;
    Panel23: TPanel;
    Button71: TButton;
    Button72: TButton;
    Button73: TButton;
    cxGrid17: TcxGrid;
    cxGridDBTableView19: TcxGridDBTableView;
    cxGridDBTableView19Column1: TcxGridDBColumn;
    cxGridDBTableView19Column2: TcxGridDBColumn;
    cxGridDBTableView19VEICULO: TcxGridDBColumn;
    cxGridDBTableView19VeiculoOleo: TcxGridDBColumn;
    cxGridDBTableView19CLIENTE: TcxGridDBColumn;
    cxGridDBTableView19DescricaoOleo: TcxGridDBColumn;
    cxGridDBTableView19PLACA: TcxGridDBColumn;
    cxGridDBTableView19DATA: TcxGridDBColumn;
    cxGridDBTableView19HORA: TcxGridDBColumn;
    cxGridDBTableView19KM_INICIO: TcxGridDBColumn;
    cxGridDBTableView19KM_FIM: TcxGridDBColumn;
    cxGridBandedTableView3: TcxGridBandedTableView;
    cxGridBandedColumn5: TcxGridBandedColumn;
    cxGridBandedColumn6: TcxGridBandedColumn;
    cxGridCardView3: TcxGridCardView;
    cxGridChartView3: TcxGridChartView;
    cxGridTableView3: TcxGridTableView;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridDBCardView3: TcxGridDBCardView;
    cxGridDBChartView3: TcxGridDBChartView;
    cxGridDBTableView21: TcxGridDBTableView;
    cxGridLevel17: TcxGridLevel;
    Label8: TLabel;
    DateEdit4: TDateEdit;
    Panel6: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    NxNotebookSheet618: TNxNotebookSheet6;
    Panel24: TPanel;
    Button74: TButton;
    Button75: TButton;
    Button76: TButton;
    cxGrid28: TcxGrid;
    cxGridDBTableView20: TcxGridDBTableView;
    cxGridDBTableView20ID: TcxGridDBColumn;
    cxGridDBTableView20DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView20DIAS: TcxGridDBColumn;
    cxGridDBTableView20VALORTAXA: TcxGridDBColumn;
    cxGridDBTableView20DEBITOCREDITO: TcxGridDBColumn;
    cxGridLevel16: TcxGridLevel;
    NxNotebook66: TNxNotebook6;
    NxNotebookSheet64: TNxNotebookSheet6;
    NxNotebookSheet619: TNxNotebookSheet6;
    cxGrid14: TcxGrid;
    cxGridDBTableView17: TcxGridDBTableView;
    cxGridDBTableView16CODIGO: TcxGridDBColumn;
    cxGridDBTableView16NOME: TcxGridDBColumn;
    cxGridLevel14: TcxGridLevel;
    cxGrid15: TcxGrid;
    cxGridDBTableView18: TcxGridDBTableView;
    cxGridDBTableView18CODIGO: TcxGridDBColumn;
    cxGridDBTableView18NOME: TcxGridDBColumn;
    cxGridDBTableView18HISTORIC: TcxGridDBColumn;
    cxGridDBTableView18DescricaoHistorico: TcxGridDBColumn;
    cxGridLevel15: TcxGridLevel;
    Panel25: TPanel;
    Button77: TButton;
    Button79: TButton;
    Panel26: TPanel;
    Button80: TButton;
    Button81: TButton;
    Button82: TButton;
    Panel27: TPanel;
    Button83: TButton;
    Button84: TButton;
    Button85: TButton;
    Panel28: TPanel;
    Button86: TButton;
    Button87: TButton;
    Button88: TButton;
    Panel29: TPanel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Button78: TButton;
    Button55: TButton;
    Button56: TButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    Button93: TButton;
    Button94: TButton;
    cxGridDBTableView35Column1: TcxGridDBColumn;
    cxGridDBTableView35Column2: TcxGridDBColumn;
    cxGrid11: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridLevel11: TcxGridLevel;
    Panel37: TPanel;
    Button95: TButton;
    Button96: TButton;
    Button97: TButton;
    cxGrid8: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    Panel38: TPanel;
    Button98: TButton;
    Button99: TButton;
    Button100: TButton;
    cxGrid9: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBTableView5UND: TcxGridDBColumn;
    cxGridDBTableView5NOME: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    Panel39: TPanel;
    Button101: TButton;
    Button102: TButton;
    Button103: TButton;
    CheckBox1: TCheckBox;
    MaskEdit5: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit6: TMaskEdit;
    MaskEdit4: TMaskEdit;
    Button104: TButton;
    Button105: TButton;
    Button106: TButton;
    Button107: TButton;
    Panel101: TPanel;
    Panel14: TPanel;
    Panel102: TPanel;
    Panel5: TPanel;
    Panel18: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;
    Panel49: TPanel;
    Panel51: TPanel;
    Panel52: TPanel;
    Panel53: TPanel;
    Panel54: TPanel;
    Panel55: TPanel;
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
    Panel50: TPanel;
    CheckBox3: TCheckBox;
    Label62: TLabel;
    cxButton19: TcxButton;
    cxCalcEdit1: TcxCalcEdit;
    dxComponentPrinter1Link1: TdxGridReportLink;
    Button54: TButton;
    Button108: TButton;
    dxComponentPrinter1Link2: TdxGridReportLink;
    dxComponentPrinter1Link3: TdxGridReportLink;
    cxGrid10: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    Button109: TButton;
    cxGridDBTableView10Column1: TcxGridDBColumn;
    dxComponentPrinter1Link4: TdxGridReportLink;
    CheckBox6: TCheckBox;
    Label9: TLabel;
    Button110: TButton;
    dxComponentPrinter1Link5: TdxGridReportLink;
    Comissão: TLabel;
    DBEdit3: TDBEdit;
    Button111: TButton;
    Button112: TButton;
    cxGridDBTableView7Column1: TcxGridDBColumn;
    cxGridDBTableView7Column2: TcxGridDBColumn;
    cxGridDBTableView7Column4: TcxGridDBColumn;
    cxGridDBTableView7Column3: TcxGridDBColumn;
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
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Image2: TImage;
    RadioButton7: TRadioButton;
    Panel30: TPanel;
    Button89: TButton;
    Button90: TButton;
    Button91: TButton;
    CheckBox4: TCheckBox;
    Button92: TButton;
    Panel68: TPanel;
    cxGridDBTableView2Column5: TcxGridDBColumn;
    Label7: TLabel;
    MaskEdit8: TMaskEdit;
    MaskEdit7: TMaskEdit;
    Button113: TButton;
    cxGridDBTableView10Column2: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button23Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure cxGridDBTableView7DblClick(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button24Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button62Click(Sender: TObject);
    procedure Button63Click(Sender: TObject);
    procedure Button65Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button58Click(Sender: TObject);
    procedure Button59Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure Button89Click(Sender: TObject);
    procedure Button91Click(Sender: TObject);
    procedure Button92Click(Sender: TObject);
    procedure Edit6Click(Sender: TObject);
    procedure Edit7Click(Sender: TObject);
    procedure Edit8Click(Sender: TObject);
    procedure Edit9Click(Sender: TObject);
    procedure Button90Click(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Button20Click(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure Button77Click(Sender: TObject);
    procedure Button78Click(Sender: TObject);
    procedure Button80Click(Sender: TObject);
    procedure Button81Click(Sender: TObject);
    procedure Button86Click(Sender: TObject);
    procedure Button83Click(Sender: TObject);
    procedure Button84Click(Sender: TObject);
    procedure Button87Click(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure Button56Click(Sender: TObject);
    procedure Button66Click(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button93Click(Sender: TObject);
    procedure Button94Click(Sender: TObject);
    procedure Button69Click(Sender: TObject);
    procedure Button68Click(Sender: TObject);
    procedure cxGridDBTableView35DblClick(Sender: TObject);
    procedure cxGridDBTableView28DblClick(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button74Click(Sender: TObject);
    procedure Button75Click(Sender: TObject);
    procedure Button57Click(Sender: TObject);
    procedure cxGridDBTableView5DblClick(Sender: TObject);
    procedure cxGridDBTableView6DblClick(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button95Click(Sender: TObject);
    procedure Button96Click(Sender: TObject);
    procedure Button98Click(Sender: TObject);
    procedure Button99Click(Sender: TObject);
    procedure Button101Click(Sender: TObject);
    procedure Button102Click(Sender: TObject);
    procedure cxGridDBTableView8DblClick(Sender: TObject);
    procedure cxGridDBTableView9DblClick(Sender: TObject);
    procedure MaskEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button106Click(Sender: TObject);
    procedure Button104Click(Sender: TObject);
    procedure Button105Click(Sender: TObject);
    procedure Button107Click(Sender: TObject);
    procedure cxGridDBTableView17DblClick(Sender: TObject);
    procedure cxGridDBTableView20DblClick(Sender: TObject);
    procedure cxGridDBTableView33DblClick(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure Button60Click(Sender: TObject);
    procedure Button61Click(Sender: TObject);
    procedure cxGridDBTableView18DblClick(Sender: TObject);
    procedure Button54Click(Sender: TObject);
    procedure Button108Click(Sender: TObject);
    procedure Button109Click(Sender: TObject);
    procedure Button110Click(Sender: TObject);
    procedure Button111Click(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure Button112Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure MaskEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button113Click(Sender: TObject);
  private
    procedure DescricaoPesquisa;
    procedure FiltroSqlX;
    procedure PegaFoco;

    procedure RelCardex(Tipo: string);
    procedure EscolheGrade;
    { Private declarations }
  public
    { Public declarations }
  end;
  procedure ChamaCadastro;

var
  Cadastros_FRM: TCadastros_FRM;
  CampoConsulta, Tabela, DESCRICAO, opcao, ConsutaCodigo,
  GeralTodosCadastro, MostraMensagem, NomeDaConsulta : string;

  FiltraSemBarra, NovoEditaX, NovoEdita, Operador,
  MesAnoRelatorio,
  DescricaoEstaticaX, CodigoDoCliente, CodigoGrade, TelaImpressora,
  CampoJaExiste, TipoConsulta,
  escricaoConsulta, Modalidade, senha2 , senha3,
  senha4, senha5 , senha6, OpSangSupr,
  NumeroCaixa, ClienteFornecedor,
  CodigoEntrada, FechamentoCaixa, ConsultaStatica,
  DescricaoEstatica, Estatica, FrenteRetaguarda, FiltroInicio,
  ProdServi, FiltroVeiculo, CupomVeiculo, PlacaVeiculo,
  FiltroClienteVeiculo, FormaAvistaPrazo, ConfirmaItemVenda,
  FiltroRecebimentoConta,
  VamosVerLucro : string;

  DataVeiculo: TDateTime;

  CodigoClienteCaderneta, CodigoClientePedidoOS: integer;

  HprevHist : HWND;

  // TabelaEstoque: TUniQuery;
  // EntradasCaixa, SaidasCAixa, PrazoCaixa, TotaldasParecelas,
  // QuantidadePassada,PrecoPassado : double;

  // TamanhoFonte:integer;

  Queere: TUniQuery;
  Queere2: TUniQuery;


implementation

{$R *.dfm}

uses DADOS_CADASTROS, FUNCAORELATORIOS, FUNCOES, FUNCOESUNIDAC, DADOS_CONSULTAS,
     FUNCOESGERAIS, GERAL, GERAL2, GERAL3, CAD_MANUTENCAO, dadosOBJETOS,
  DADOSFRENTE, dadosFinaceiro, MENSPROC, DADOSMOVIMENTO, VISUALIZACAO, estoque,
  Relatorios, GERALFRENTE, FrentredeCaixa;

procedure TCadastros_FRM.Button101Click(Sender: TObject);
begin
  inherited;
  CadastrodeUNIDADES;
  PegaFoco;
end;

procedure TCadastros_FRM.Button102Click(Sender: TObject);
begin
  inherited;
  with TCAD_MANUTENCAOf.Create(Self) do begin
    Width:=Panel12.Width;
    Height:=Panel12.Height+50;
    NxNotebook62.ActivePageIndex:=6;
    DADOS_CADASTROSf.UNIDADES.Edit;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button104Click(Sender: TObject);
begin
  inherited;
  RelFORNE(DADOS_CONSULTASF.VENDEDORES);
  PegaFoco;
end;

procedure TCadastros_FRM.Button105Click(Sender: TObject);
begin
  inherited;
  RelFORNE(DADOS_CONSULTASF.OPERADOR);
  PegaFoco;
end;

procedure TCadastros_FRM.Button106Click(Sender: TObject);
begin
  inherited;
  RelFORNE(DADOS_CONSULTASF.emitente);
  PegaFoco;
end;

procedure TCadastros_FRM.Button107Click(Sender: TObject);
begin
  inherited;
  with TGERAL3F.Create(Self) do begin
    Width:=Panel21.Width;
    Height:=Panel21.Height;
    NxNotebook61.ActivePageIndex:=6;
    // DADOS_CADASTROSf.vendedores.Edit;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button108Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link3;
  dxComponentPrinter1.Preview();
  PegaFoco;
end;

procedure TCadastros_FRM.Button109Click(Sender: TObject);
begin
  inherited;
  if Button109.Caption='Tela Normal dos Produtos' then begin
    Button109.Caption:='Tela de Balanço';
    cxGrid3.Visible:=true;
    cxGrid10.Visible:=false;
  end
  else if Button109.Caption='Tela de Balanço' then begin
    Button109.Caption:='Tela Normal dos Produtos';
    cxGrid10.Visible:=true;
    cxGrid3.Visible:=false;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.EscolheGrade;
begin
  if Button109.Caption='Tela Normal dos Produtos' then begin
    // Button109.Caption:='Tela de Balanço';
    cxGrid3.Visible:=true;
    cxGrid10.Visible:=false;
  end
  else if Button109.Caption='Tela de Balanço' then begin
    // Button109.Caption:='Tela Normal dos Produtos';
    cxGrid10.Visible:=true;
    cxGrid3.Visible:=false;
  end;
end;


procedure TCadastros_FRM.Button10Click(Sender: TObject);
begin
  inherited;
  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='NOME';
  NxNotebook61.ActivePageIndex:=6;
  NxNotebook66.ActivePageIndex:=0;
  PegaFoco;
  Queere:=DADOS_CADASTROSf.HISTORIC;
  Tabela:='HISTORIC';
  FiltroSqlX;
end;

procedure TCadastros_FRM.Button110Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link5;
  dxComponentPrinter1.Preview();
  PegaFoco;
end;

procedure TCadastros_FRM.Button111Click(Sender: TObject);
begin
  inherited;
  if DADOSFRENTEf.CONF_PADRAO.Active=true then
    DADOSFRENTEf.CONF_PADRAO.Post;
end;

procedure TCadastros_FRM.Button112Click(Sender: TObject);
var DescricaoTopo:string;
begin
  inherited;
  DescricaoTopo:=Button112.Caption+' em '+DateEdit4.Text;
  FiltroContasReceberINADIMPLENTESDia('RV', DateEdit4.Date);
  with TGERAL3F.Create(Self) do begin
    Width:=Panel96.Width;
    Height:=Panel96.Height;
    NxNotebook61.ActivePageIndex:=10;
    Panel97.Caption:=DescricaoTopo;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button113Click(Sender: TObject);
begin
  inherited;
  DADOS_CADASTROSf.PRODUTOS.Open;
  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='NOME';
  Queere:=DADOS_CADASTROSf.PRODUTOS;
  Tabela:='PRODUTOS_DELETADOS';
  FiltroSqlX;
  PegaFoco;
end;

procedure TCadastros_FRM.Button11Click(Sender: TObject);
begin
  inherited;
  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='DESCRICAO';
  Queere:=DataFinanceiro.CARTOES;
  Tabela:='CARTOES';
  NxNotebook61.ActivePageIndex:=9;
  FiltroSqlX;
  PegaFoco;
end;

procedure TCadastros_FRM.Button12Click(Sender: TObject);
begin
  inherited;
  TelaSenha;
  if senha='MASTER' then begin
    with TGeral2f.Create(Self) do begin
      Width:=Panel6.Width;
      Height:=Panel6.Height+40;
      NxNotebook61.ActivePageIndex:=4;
      DADOSFRENTEf.CONF_PADRAO.Open;
      if DADOSFRENTEf.CONF_PADRAO.IsEmpty then
        DADOSFRENTEf.CONF_PADRAO.Append
      else
        DADOSFRENTEf.CONF_PADRAO.Edit;
      ShowModal;
    end;
  end;
end;

procedure TCadastros_FRM.Button13Click(Sender: TObject);
begin
  inherited;
  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='DESCRICAO';
  Queere:=DataOBJETOSx.OBJETOS;
  Tabela:='OBJETOS';
  NxNotebook61.ActivePageIndex:=8;
  NxNotebook65.ActivePageIndex:=0;
  DataOBJETOSx.OBJETOS.Open;
  FiltroSqlX;
  PegaFoco;
  // Button57.Click;
end;

procedure TCadastros_FRM.Button14Click(Sender: TObject);
begin
  inherited;
  CadastrodeClientes;
end;

procedure TCadastros_FRM.Button15Click(Sender: TObject);
begin
  inherited;
  EditCadastroClientes;
  PegaFoco;
end;

procedure TCadastros_FRM.Button16Click(Sender: TObject);
begin
  inherited;
  if not DADOS_CADASTROSf.Clientes.IsEmpty then begin
    if Application.MessageBox('Confirma a exclusão do registro ?','Confirmação de exclusão',MB_YESNO + MB_ICONERROR)= ID_YES then
      Queere.Delete;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button17Click(Sender: TObject);
begin
  inherited;
  CadastrodeProdutos;
  PegaFoco;
end;

procedure TCadastros_FRM.Button18Click(Sender: TObject);
begin
  inherited;
  if RadioButton3.Checked=true then begin
    opcao:='A';
    ChamaCadastro;
  end
  else if RadioButton5.Checked=true then begin
    if CheckBox5.Checked then
      MostraMensagem:='N'
    else
      MostraMensagem:='';
    opcao:='E';
    ChamaCadastro;
  end
  else if RadioButton1.Checked=true then begin
    opcao:='P';
    ChamaCadastro;
  end
  else if RadioButton2.Checked=true then begin
    opcao:='D';
    ChamaCadastro;
  end
  else if RadioButton4.Checked=true then begin
    opcao:='U';
    ChamaCadastro;
  end
  else if RadioButton6.Checked=true then begin
    opcao:='G';
    ChamaCadastro;
  end
  else if RadioButton7.Checked=true then begin
    opcao:='L';
    ChamaCadastro;
  end
  else begin
    EditCadastroProdutos;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button19Click(Sender: TObject);
begin
  inherited;
  if CheckBox2.Checked then begin
    DADOS_CADASTROSf.PRODUTOS.Delete;
  end
  else begin
    if not DADOS_CADASTROSf.PRODUTOS.IsEmpty then begin
      if Application.MessageBox('Confirma a exclusão do registro ?','Confirmação de exclusão',MB_YESNO + MB_ICONERROR)= ID_YES then
        DADOS_CADASTROSf.PRODUTOS.Delete;
    end;
  end;
  PegaFoco;
end;

procedure ChamaCadastro;
begin
  with TCAD_MANUTENCAOf.Create(nil) do begin
    Width:=Panel34.Width;
    Height:=Panel34.Height;
    NxNotebook62.ActivePageIndex:=14;
    NovoEdita:='Edita';
    DADOS_CADASTROSf.PRODUTOS.Edit;
    ShowModal;
  end;
end;


procedure TCadastros_FRM.Button1Click(Sender: TObject);
begin
  inherited;
  CadastrodeFornecedores;
  PegaFoco;
end;

procedure TCadastros_FRM.Button20Click(Sender: TObject);
begin
  inherited;
  DADOS_CADASTROSf.emitente.Open;
  if DADOS_CADASTROSf.emitente.IsEmpty then
    DADOS_CADASTROSf.emitente.Append
  else
    DADOS_CADASTROSf.emitente.Edit;

  with TCAD_MANUTENCAOf.Create(Self) do begin
    Width:=Panel14.Width;
    Height:=Panel14.Height+40;
    NxNotebook62.ActivePageIndex:=8;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button21Click(Sender: TObject);
begin
  inherited;
  CadastrodeObjetos;
  PegaFoco;
end;

procedure TCadastros_FRM.Button22Click(Sender: TObject);
begin
  inherited;
  EditCadastroObjetos;
  PegaFoco;
end;

procedure TCadastros_FRM.Button23Click(Sender: TObject);
begin
  inherited;
  if Button23.Caption='Inicio' then
    Button23.Caption:='Meio'
  else
    Button23.Caption:='Inicio';
  PegaFoco;
end;

procedure TCadastros_FRM.Button24Click(Sender: TObject);
begin
  inherited;
  if (NxNotebook61.ActivePageIndex=0) and (NxNotebook62.ActivePageIndex=0) then
    Button4.Click;

  if (NxNotebook61.ActivePageIndex=1) and (NxNotebook63.ActivePageIndex=0) then
    Button5.Click;


  with TGERAL3F.Create(nil) do begin
    Width:=Panel7.Width;
    Height:=Panel7.Height;
    NxNotebook61.ActivePageIndex:=9;
    ShowModal;
  end;

  Button24.Caption:=NomeDaConsulta;
  CampoConsulta:=Button24.Caption;
end;

procedure TCadastros_FRM.PegaFoco;
begin
   if (NxNotebook61.ActivePageIndex=0) and (NxNotebook62.ActivePageIndex=0) or
     (NxNotebook61.ActivePageIndex=1) and (NxNotebook63.ActivePageIndex=0) then
   begin
    // Label7.Visible:=true;
    Button24.Visible:=true;
    Button24.Caption:='Nome';
    CampoConsulta:='NOME';
  end
  else begin
    Button24.Visible:=false;
    // Label7.Visible:=false;
  end;
  if (NxNotebook61.ActivePageIndex=0) and (NxNotebook62.ActivePageIndex=1) then
    cxGrid5.setfocus;
  if (NxNotebook61.ActivePageIndex=0) and (NxNotebook62.ActivePageIndex=2) then
    cxGrid21.setfocus;
  if (NxNotebook61.ActivePageIndex=0) and (NxNotebook62.ActivePageIndex=3) then
    cxGrid16.setfocus;

  if (NxNotebook61.ActivePageIndex=0) and (NxNotebook62.ActivePageIndex=0) then
    cxGrid1.setfocus;
  if (NxNotebook61.ActivePageIndex=1) and (NxNotebook63.ActivePageIndex=0) then
    cxGrid2.setfocus;
  if (NxNotebook61.ActivePageIndex=1) and (NxNotebook63.ActivePageIndex=1) then
    cxGrid11.setfocus;
  if (NxNotebook61.ActivePageIndex=2) and (NxNotebook64.ActivePageIndex=0) then begin
    EscolheGrade;
    if cxGrid3.Visible=true then
      cxGrid3.setfocus;
    if cxGrid10.Visible=true then
      cxGrid10.setfocus;
  end;

  if (NxNotebook61.ActivePageIndex=2) and (NxNotebook64.ActivePageIndex=1) then
    cxGrid8.setfocus;
  if (NxNotebook61.ActivePageIndex=2) and (NxNotebook64.ActivePageIndex=2) then
    cxGrid9.setfocus;

  if (NxNotebook61.ActivePageIndex=3) then
    cxGrid6.setfocus;
  if (NxNotebook61.ActivePageIndex=4) then
    cxGrid7.setfocus;
  if (NxNotebook61.ActivePageIndex=5) then
    cxGrid4.setfocus;
  if (NxNotebook61.ActivePageIndex=9) then
    cxGrid28.setfocus;

  if (NxNotebook61.ActivePageIndex=8) and (NxNotebook65.ActivePageIndex=0)  then
    cxGrid26.setfocus;

  if (NxNotebook61.ActivePageIndex=6) and (NxNotebook66.ActivePageIndex=0)  then
    cxGrid14.setfocus;
  if (NxNotebook61.ActivePageIndex=6) and (NxNotebook66.ActivePageIndex=1)  then
    cxGrid15.setfocus;
  if (NxNotebook61.ActivePageIndex=7) and (NxNotebook65.ActivePageIndex=0)  then
    cxGrid26.setfocus;
  if (NxNotebook61.ActivePageIndex=7) and (NxNotebook65.ActivePageIndex=1)  then
    cxGrid27.setfocus;
  if (NxNotebook61.ActivePageIndex=7) and (NxNotebook65.ActivePageIndex=2)  then
    DBEdit1.setfocus;
  if (NxNotebook61.ActivePageIndex=8) and (NxNotebook65.ActivePageIndex=0) then
    cxGrid26.setfocus;


end;

procedure TCadastros_FRM.Button25Click(Sender: TObject);
begin
  inherited;
  RelFORNE(DADOS_CONSULTASF.Clientes);
end;

procedure TCadastros_FRM.Button26Click(Sender: TObject);
begin
  inherited;
  // NxPanel2.Visible:=true;
  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='NOME';
  NxNotebook62.ActivePageIndex:=2;
  Queere:=DADOS_CADASTROSf.PORTADOR;
  Queere.Open;
  Tabela:='PORTADOR';
  FiltroSqlX;
  PegaFoco;
end;

procedure TCadastros_FRM.Button27Click(Sender: TObject);
begin
  inherited;
  // NxPanel2.Visible:=true;
  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='NOME';
  NxNotebook62.ActivePageIndex:=1;
  DADOS_CADASTROSf.GRUPOCLI.Open;
  Queere:=DADOS_CADASTROSf.GRUPOCLI;
  Tabela:='GRUPOCLI';
  FiltroSqlX;
  PegaFoco;
end;

procedure TCadastros_FRM.Button28Click(Sender: TObject);
begin
  inherited;
  with TGERAL3F.Create(nil) do begin
    Width:=Panel13.Width;
    Height:=Panel13.Height;
    NxNotebook61.ActivePageIndex:=11;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button29Click(Sender: TObject);
begin
  inherited;
  RelFORNE(DADOS_CADASTROSf.Clientes);
end;

procedure TCadastros_FRM.Button2Click(Sender: TObject);
begin
  inherited;
  if ConsutaCodigo='' then begin
    EditCadastroFornecedor;
    PegaFoco;
  end;
end;

procedure TCadastros_FRM.Button30Click(Sender: TObject);
begin
  inherited;
  with TGERAL3F.Create(Self) do begin
    Width:=Panel16.Width;
    Height:=Panel16.Height;
    NxNotebook61.ActivePageIndex:=17;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button31Click(Sender: TObject);
begin
  inherited;
  ConsultaClientes;
  if CodigoConsulta<>'' then begin
    DADOS_CADASTROSf.VEICULOS.Close;
    DADOS_CADASTROSf.VEICULOS.SQL.Clear;
    DADOS_CADASTROSf.VEICULOS.SQL.Add('Select * from VEICULOS where CLIENTE='+CodigoConsulta+' order by nome');
    DESCRICAO:='';
    DescricaoPesquisa;
    CampoConsulta:='NOME';
    Queere:=DADOS_CADASTROSf.VEICULOS;
    Tabela:='VEICULOS';
    Queere.Open;
    NxNotebook62.ActivePageIndex:=3;
  end
  else
    ShowMessage('Cliente não Informado !!!');
  PegaFoco;
end;

procedure TCadastros_FRM.Button32Click(Sender: TObject);
begin
  inherited;
  FiltroContasReceber( DADOS_CADASTROSf.Clientes.FieldByName('CODIGO').AsString, 'E' );
  // DADOSFRENTEf.DiversasFormas.FieldByName('CODIGO').AsString:=DADOSFRENTEf.CADASTRO_CLIENTES.FieldByName('CODIGO').AsString;
  FiltroDiversasFormas( DADOS_CADASTROSf.Clientes.FieldByName('CODIGO').AsString );
  with TGERAL3F.Create(Self) do begin
    Width:=Panel1.Width;
    Height:=Panel1.Height;
    NxNotebook61.ActivePageIndex:=0;
    Panel81.Caption:=DADOS_CADASTROSf.Clientes.FieldByName('NOME').AsString;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button33Click(Sender: TObject);
begin
  inherited;
  FiltroContasReceber( DADOS_CADASTROSf.Clientes.FieldByName('CODIGO').AsString, 'R' );
  with TGERAL3F.Create(Self) do begin
    Width:=Panel1.Width;
    Height:=Panel1.Height;
    NxNotebook61.ActivePageIndex:=0;
    Panel81.Caption:=DADOS_CADASTROSf.Clientes.FieldByName('NOME').AsString;
    Panel25.Visible:=false;
    Panel88.Visible:=false;
    Panel79.Visible:=false;
    Panel80.Visible:=false;
    Panel2.Align:=alclient;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button34Click(Sender: TObject);
begin
  inherited;
  with TGERAL3F.Create(Self) do begin
    Width:=Panel5.Width;
    Height:=Panel5.Height;
    NxNotebook61.ActivePageIndex:=2;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button35Click(Sender: TObject);
var DescricaoTopo:string;
begin
  inherited;
  DescricaoTopo:=Button35.Caption+' '+DateEdit4.Text;
  FiltroContasReceberDia('E', DateEdit4.Date);
  with TGERAL3F.Create(Self) do begin
    Width:=Panel3.Width;
    Height:=Panel3.Height;
    NxNotebook61.ActivePageIndex:=1;
    Panel4.Caption:=DescricaoTopo;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button36Click(Sender: TObject);
var DescricaoTopo:string;
begin
  inherited;
  DescricaoTopo:=Button36.Caption+' '+DateEdit4.Text;
  FiltroContasReceberDia('R', DateEdit4.Date);
  with TGERAL3F.Create(Self) do begin
    Width:=Panel3.Width;
    Height:=Panel3.Height;
    NxNotebook61.ActivePageIndex:=1;
    Panel4.Caption:=DescricaoTopo;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button37Click(Sender: TObject);
begin
  inherited;
  RelFORNE(DADOS_CONSULTASF.fornecedores);
  PegaFoco;
end;

procedure TCadastros_FRM.Button38Click(Sender: TObject);
var DescricaoTopo:string;
begin
  inherited;
  DescricaoTopo:=Button38.Caption+' em '+DateEdit4.Text;
  FiltroContasReceberDia('RV', DateEdit4.Date);
  with TGERAL3F.Create(Self) do begin
    Width:=Panel3.Width;
    Height:=Panel3.Height;
    NxNotebook61.ActivePageIndex:=1;
    Panel4.Caption:=DescricaoTopo;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button39Click(Sender: TObject);
begin
  inherited;
  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='NOME';
  NxNotebook64.ActivePageIndex:=2;
  DADOS_CADASTROSf.UNIDADES.Open;
  Queere:=DADOS_CADASTROSf.UNIDADES;
  Tabela:='UNIDADES';
  FiltroSqlX;
  PegaFoco;
end;

procedure TCadastros_FRM.Button40Click(Sender: TObject);
begin
  inherited;
  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='NOME';
  NxNotebook63.ActivePageIndex:=1;
  DADOS_CADASTROSf.GRUPOFOR.Open;
  Queere:=DADOS_CADASTROSf.GRUPOFOR;
  Tabela:='GRUPOFOR';
  FiltroSqlX;
  PegaFoco;
end;

procedure TCadastros_FRM.Button41Click(Sender: TObject);
begin
  inherited;
  with TGERAL3F.Create(Self) do begin
    Width:=Panel8.Width;
    Height:=Panel8.Height;
    NxNotebook61.ActivePageIndex:=3;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button42Click(Sender: TObject);
begin
  inherited;
  if cxCalcEdit2.Value=0 then begin
    ShowMessage('Imforme o valor total dos Vencimentos !!!');
    cxCalcEdit2.SetFocus;
  end
  else begin
    ContaPagarReceber:='Pagar';
    DuplicatasRecberPagar:='DuplicatasPagar';
    ClienteComprax:='Fornecedor';
    with TGERALFRENTEF.Create(Self) do begin
      Width:=Panel24.Width;
      Height:=Panel24.Height;
      Button11.Visible:=false;
      Button12.Visible:=false;
      NxNotebook61.ActivePageIndex:=6;
      TotaldasParecelas:=cxCalcEdit2.Value;
      Panel37.Caption:=FormatFloat('###,##0.00',cxCalcEdit2.Value);
      cxCalcEdit1.Value:=cxCalcEdit2.Value;
      ShowModal;
    end;
  end;
  ContaPagarReceber:='';
  AbreContasaPagar;
  PegaFoco;
end;

procedure TCadastros_FRM.Button43Click(Sender: TObject);
begin
  inherited;
  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='NOME';
  NxNotebook64.ActivePageIndex:=1;
  DADOS_CADASTROSf.GRUPO.Open;
  Queere:=DADOS_CADASTROSf.GRUPO;
  Tabela:='GRUPO';
  FiltroSqlX;
  PegaFoco;
end;

procedure TCadastros_FRM.Button44Click(Sender: TObject);
var i:integer;
begin
  inherited;
  if not DADOS_CADASTROSf.PRODUTOS.IsEmpty then begin
    {
    DADOS_CADASTROSf.PRODUTOS_CONSULTA.Close;
    DADOS_CADASTROSf.PRODUTOS_CONSULTA.Open;
    DADOS_CADASTROSf.PRODUTOS_CONSULTA.Refresh;
    DADOS_CADASTROSf.PRODUTOS_CONSULTA.Locate('codigo',DADOS_CADASTROSf.PRODUTOS.FieldByName('codigo').AsString,[]);
    }
    DADOS_CADASTROSf.PRODUTOS_CONSULTA.Close;
    DADOS_CADASTROSf.PRODUTOS_CONSULTA.SQL.Clear;
    DADOS_CADASTROSf.PRODUTOS_CONSULTA.SQL.Add('Select * from PRODUTOS where codigo='+DADOS_CADASTROSf.PRODUTOS.FieldByName('codigo').AsString);
    DADOS_CADASTROSf.PRODUTOS_CONSULTA.Open;

    DADOS_CADASTROSf.PRODUTOS.Append;

    for i:=1 to DADOS_CADASTROSf.PRODUTOS_CONSULTA.FieldCount -1 do begin
      if (DADOS_CADASTROSf.PRODUTOS_CONSULTA.Fields[i].DataType<>ftAutoInc) or (DADOS_CADASTROSf.PRODUTOS.Fields[i].DataType<>ftAutoInc) then begin
        if DADOS_CADASTROSf.PRODUTOS.Fields.FindField(DADOS_CADASTROSf.PRODUTOS_CONSULTA.Fields[i].FieldName)<>nil then
          DADOS_CADASTROSf.PRODUTOS.FieldByName(DADOS_CADASTROSf.PRODUTOS_CONSULTA.Fields[i].FieldName).Value:=DADOS_CADASTROSf.PRODUTOS_CONSULTA.Fields[i].Value;
      end;
    end;
    DADOS_CADASTROSf.PRODUTOS.FieldByName('BARRAS').AsString:='';
    DADOS_CADASTROSf.PRODUTOS.FieldByName('QTD').AsFloat:=0;

    DADOS_CADASTROSf.UNIDADES.Open;
    DADOS_CADASTROSf.GRUPO.Open;
    with TCAD_MANUTENCAOf.Create(Self) do begin
      Width:=Panel5.Width;
      Height:=Panel5.Height+40;
      NxNotebook62.ActivePageIndex:=2;
      NovoEdita:='Novo';
      ShowModal;
    end;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button45Click(Sender: TObject);
begin
  inherited;
  with TGERAL3F.Create(Self) do begin
    Width:=Panel11.Width;
    Height:=Panel11.Height;
    NxNotebook61.ActivePageIndex:=4;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button46Click(Sender: TObject);
begin
  inherited;
  if CheckBox1.Checked=true then begin
    MENSPROCF.Panel1.Caption:='AGUARDE UM MOMENTO - PROCESSANDO ENTRADAS E SAÍDAS !!!';
    MENSPROCF.Show;
    MENSPROCF.Update;
    with Testoquef.Create(Self) do begin
      Button1.Click;
      Button2.Click;
    end;
    MENSPROCF.Close;
  end;

  with TRelatoriosf.Create(Self) do begin
    Width:=Panel1.Width;
    Height:=Panel1.Height;
    NxNotebook61.ActivePageIndex:=2;

    if CheckBox1.Checked=false then begin
      ChecEntradasSaidas.Visible:=false;
      ZeradasNegativas.Visible:=false;
    end;
    // NxNotebook1.ActivePageIndex:=2;
    // NxNotebook4.ActivePageIndex:=1;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button47Click(Sender: TObject);
begin
  inherited;
  if Button109.Caption='Tela de Balanço' then begin
    dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link4;
  end
  else begin
    dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link1;
  end;

  dxComponentPrinter1.Preview();
  PegaFoco;
end;

procedure TCadastros_FRM.Button48Click(Sender: TObject);
begin
  inherited;
  with TGERAL3F.Create(Self) do begin
    Width:=Panel17.Width;
    Height:=Panel17.Height;
    NxNotebook61.ActivePageIndex:=5;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button49Click(Sender: TObject);
begin
  inherited;
  DADOS_CADASTROSf.EntradaSaida.Open;
  DADOS_CADASTROSf.EntradaSaida.First;
  MostraMensagem:='ENTRADASESAIDAS';
  with TCAD_MANUTENCAOf.Create(nil) do begin
    opcao:='';
    Panel34.Visible:=false;
    Panel37.Visible:=true;
    Width:=Panel37.Width;
    Height:=Panel37.Height;
    NxNotebook62.ActivePageIndex:=14;
    ShowModal;
  end;
  PegaFoco;

end;

procedure TCadastros_FRM.Button4Click(Sender: TObject);
begin
  inherited;
  DADOS_CADASTROSf.Clientes.FieldByName('CNPJ').EditMask:=Mascara('CNPJ');
  DADOS_CADASTROSf.Clientes.FieldByName('CPF').EditMask:=Mascara('CPF');
  DADOS_CADASTROSf.Clientes.FieldByName('CEP').EditMask:=Mascara('CEP');
  DADOS_CADASTROSf.Clientes.FieldByName('CEP_COB').EditMask:=Mascara('CEP');
  DADOS_CADASTROSf.Clientes.FieldByName('CEP_ENT').EditMask:=Mascara('CEP');
  DADOS_CADASTROSf.Clientes.Open;
  NxNotebook61.ActivePageIndex:=0;
  NxNotebook62.ActivePageIndex:=0;
  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='NOME';
  Queere:=DADOS_CADASTROSf.CLIENTES;
  Tabela:='CLIENTES';
  FiltroSqlX;
  PegaFoco;
end;

procedure TCadastros_FRM.Button54Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link2;
  dxComponentPrinter1.Preview();
  PegaFoco;
end;

procedure TCadastros_FRM.Button55Click(Sender: TObject);
begin
  inherited;
  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='NOME';
  NxNotebook61.ActivePageIndex:=6;
  NxNotebook66.ActivePageIndex:=1;
  PegaFoco;
  Queere:=DADOS_CADASTROSf.SUB_HIST;
  Tabela:='SUB_HIST';
  FiltroSqlX;
end;

procedure TCadastros_FRM.Button56Click(Sender: TObject);
begin
  inherited;
  with TGERAL3F.Create(Self) do begin
    Width:=Panel51.Width;
    Height:=Panel51.Height;
    NxNotebook61.ActivePageIndex:=7;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button57Click(Sender: TObject);
begin
  inherited;
  Button13.Click;
end;

procedure TCadastros_FRM.Button58Click(Sender: TObject);
begin
  inherited;
  NxNotebook65.ActivePageIndex:=2;
  DataOBJETOSx.TIPOATEN.Open;
  DataOBJETOSx.Situacao.Open;
end;

procedure TCadastros_FRM.Button59Click(Sender: TObject);
begin
  inherited;
  NxNotebook65.ActivePageIndex:=2;
end;

procedure TCadastros_FRM.Button5Click(Sender: TObject);
begin
  inherited;
  DADOS_CADASTROSf.FORNECEDORES.FieldByName('CNPJ').EditMask:=Mascara('CNPJ');
  DADOS_CADASTROSf.FORNECEDORES.FieldByName('CPF').EditMask:=Mascara('CPF');
  DADOS_CADASTROSf.FORNECEDORES.FieldByName('CEP').EditMask:=Mascara('CEP');
  DADOS_CADASTROSf.FORNECEDORES.FieldByName('CEP_COB').EditMask:=Mascara('CEP');
  DADOS_CADASTROSf.FORNECEDORES.FieldByName('CEP_ENT').EditMask:=Mascara('CEP');
  DADOS_CADASTROSf.FORNECEDORES.Open;
  // NxPanel2.Visible:=true;
  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='NOME';
  NxNotebook61.ActivePageIndex:=1;
  NxNotebook63.ActivePageIndex:=0;
  DADOS_CADASTROSf.GRUPOFOR.Open;
  Queere:=DADOS_CADASTROSf.FORNECEDORES;
  Tabela:='FORNECEDORES';
  FiltroSqlX;
  PegaFoco;

  {
  NxNotebook61.ActivePageIndex:=1;

  DADOS_CADASTROSf.FORNECEDORES.Open;

  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='NOME';

  Queere:=DADOS_CADASTROSf.FORNECEDORES;
  Tabela:='FORNECEDORES';
  FiltroSqlX;
  PegaFoco;
  }
end;

procedure TCadastros_FRM.Button60Click(Sender: TObject);
begin
  inherited;
  DataOBJETOSx.TIPOATEN.Append;
  DBEdit1.SetFocus;
end;

procedure TCadastros_FRM.Button61Click(Sender: TObject);
begin
  inherited;
  DataOBJETOSx.Situacao.Append;
  DBEdit2.SetFocus;
end;

procedure TCadastros_FRM.Button62Click(Sender: TObject);
begin
  inherited;
  CadastrodeGRUPOCLI;
  PegaFoco;
end;

procedure TCadastros_FRM.Button63Click(Sender: TObject);
begin
  inherited;
  if not Queere.IsEmpty then begin
    with TCAD_MANUTENCAOf.Create(Self) do begin
      Width:=Panel7.Width;
      Height:=Panel7.Height+50;
      NxNotebook62.ActivePageIndex:=3;
      Queere.Edit;
      ShowModal;
    end;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button65Click(Sender: TObject);
begin
  inherited;
  with TCAD_MANUTENCAOf.Create(Self) do begin
    Width:=Panel43.Width;
    Height:=Panel43.Height+50;
    NxNotebook62.ActivePageIndex:=17;
    Queere.Append;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button66Click(Sender: TObject);
begin
  inherited;
  // portadores
  if not DADOS_CADASTROSf.Portador.IsEmpty then begin
    with TCAD_MANUTENCAOf.Create(Self) do begin
      Width:=Panel43.Width;
      Height:=Panel43.Height+50;
      NxNotebook62.ActivePageIndex:=17;
      Queere.Open;
      Queere.Edit;
      ShowModal;
    end;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button68Click(Sender: TObject);
begin
  inherited;
  CadastrodeVeiculos;
  PegaFoco;
end;

procedure TCadastros_FRM.Button69Click(Sender: TObject);
begin
  inherited;
  if not DADOS_CADASTROSf.VEICULOS.IsEmpty then begin
    with TCAD_MANUTENCAOf.Create(Self) do begin
      Width:=Panel53.Width;
      Height:=Panel53.Height+50;
      NxNotebook62.ActivePageIndex:=23;
      DADOS_CADASTROSf.VEICULOS.Open;
      DADOS_CADASTROSf.VEICULOS.Edit;
      ShowModal;
    end;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button6Click(Sender: TObject);
begin
  inherited;
  Panel29.Visible:=false;
  NxNotebook61.ActivePageIndex:=2;
  NxNotebook64.ActivePageIndex:=0;
  DADOS_CADASTROSf.PRODUTOS.Open;
  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='NOME';
  Queere:=DADOS_CADASTROSf.PRODUTOS;
  Tabela:='PRODUTOS';
  FiltroSqlX;
  PegaFoco;
end;

procedure TCadastros_FRM.Button74Click(Sender: TObject);
begin
  inherited;
  CadastroCartoes;
  PegaFoco;
end;

procedure TCadastros_FRM.Button75Click(Sender: TObject);
begin
  inherited;
  EditCadastroCARTOES;
  PegaFoco;
end;

procedure TCadastros_FRM.Button77Click(Sender: TObject);
begin
  inherited;
  with TCAD_MANUTENCAOf.Create(Self) do begin
    Width:=Panel13.Width;
    Height:=Panel13.Height+50;
    NxNotebook62.ActivePageIndex:=7;
    Queere.Append;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button78Click(Sender: TObject);
begin
  inherited;
  if not DADOS_CADASTROSf.vendedores.IsEmpty then begin
    with TCAD_MANUTENCAOf.Create(Self) do begin
      Width:=Panel13.Width;
      Height:=Panel13.Height+50;
      NxNotebook62.ActivePageIndex:=7;
      DADOS_CADASTROSf.vendedores.Edit;
      ShowModal;
    end;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button7Click(Sender: TObject);
begin
  inherited;
  DADOS_CADASTROSf.vendedores.FieldByName('CNPJ').EditMask:=Mascara('CNPJ');
  DADOS_CADASTROSf.vendedores.FieldByName('CPF').EditMask:=Mascara('CPF');
  DADOS_CADASTROSf.vendedores.FieldByName('CEP').EditMask:=Mascara('CEP');
  DADOS_CADASTROSf.vendedores.FieldByName('CEP_COB').EditMask:=Mascara('CEP');
  DADOS_CADASTROSf.vendedores.FieldByName('CEP_ENT').EditMask:=Mascara('CEP');
  DADOSFRENTEf.CONF_PADRAO.Open;
  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='NOME';
  NxNotebook61.ActivePageIndex:=3;
  Queere:=DADOS_CADASTROSf.vendedores;
  Tabela:='vendedores';
  FiltroSqlX;
  PegaFoco;
end;

procedure TCadastros_FRM.Button80Click(Sender: TObject);
begin
  inherited;
  with TCAD_MANUTENCAOf.Create(Self) do begin
    Width:=Panel15.Width;
    Height:=Panel15.Height+40;
    NxNotebook62.ActivePageIndex:=9;
    DADOS_CADASTROSf.operador.Append;
    ShowModal;
  end;
  PegaFoco;
  end;

procedure TCadastros_FRM.Button81Click(Sender: TObject);
begin
  inherited;
  if not DADOS_CADASTROSf.operador.IsEmpty then begin
    with TCAD_MANUTENCAOf.Create(Self) do begin
      Width:=Panel15.Width;
      Height:=Panel15.Height+40;
      NxNotebook62.ActivePageIndex:=9;
      DADOS_CADASTROSf.operador.Edit;
      ShowModal;
    end;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button83Click(Sender: TObject);
begin
  inherited;
  with TCAD_MANUTENCAOf.Create(Self) do begin
    Width:=Panel49.Width;
    Height:=Panel49.Height+50;
    NxNotebook62.ActivePageIndex:=22;
    DADOS_CADASTROSf.SUB_HIST.Open;
    DADOS_CADASTROSf.SUB_HIST.Append;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button84Click(Sender: TObject);
begin
  inherited;
  with TCAD_MANUTENCAOf.Create(Self) do begin
    Width:=Panel49.Width;
    Height:=Panel49.Height+50;
    NxNotebook62.ActivePageIndex:=22;
    DADOS_CADASTROSf.SUB_HIST.Open;
    DADOS_CADASTROSf.SUB_HIST.Edit;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button86Click(Sender: TObject);
begin
  inherited;
  with TCAD_MANUTENCAOf.Create(Self) do begin
    Width:=Panel50.Width;
    Height:=Panel50.Height+50;
    NxNotebook62.ActivePageIndex:=21;
    DADOS_CADASTROSf.HISTORIC.Open;
    DADOS_CADASTROSf.HISTORIC.Append;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button87Click(Sender: TObject);
begin
  inherited;
  if not DADOS_CADASTROSf.HISTORIC.IsEmpty then begin
    with TCAD_MANUTENCAOf.Create(Self) do begin
      Width:=Panel50.Width;
      Height:=Panel50.Height+50;
      NxNotebook62.ActivePageIndex:=21;
      DADOS_CADASTROSf.HISTORIC.Open;
      DADOS_CADASTROSf.HISTORIC.Edit;
      ShowModal;
    end;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button89Click(Sender: TObject);
begin
  inherited;
  MENSPROCF.Panel1.Caption :='AGUARDE UM MOMENTO - GERANDO A MOVIMENTAÇÃO !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;
  DADOSMOVIMENTOF.EntrSaid.Close;
  DADOSMOVIMENTOF.EntrSaid.CachedUpdates:=true;
  DADOSMOVIMENTOF.EntrSaid.SQL.Clear;
  DADOSMOVIMENTOF.EntrSaid.SQL.Add('SELECT * FROM ENTRSAID');
  DADOSMOVIMENTOF.EntrSaid.Open;
  DADOSMOVIMENTOF.EntrSaid.First;
  while not DADOSMOVIMENTOF.EntrSaid.Eof do
    DADOSMOVIMENTOF.EntrSaid.Delete;
  DADOSMOVIMENTOF.EntrSaid.ApplyUpdates();
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.Open;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.SQL.Clear;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.SQL.Add('SELECT * FROM ITEVENDAS_ECF2 WHERE ' +
    'CODIGO='+DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsString);
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.Open;
  DADOSMOVIMENTOF.ITEVENDAS_ECF2.First;

  DADOSMOVIMENTOF.ITECOMPRASR.Open;
  DADOSMOVIMENTOF.ITECOMPRASR.SQL.Clear;
  DADOSMOVIMENTOF.ITECOMPRASR.SQL.Add('SELECT * FROM ITECOMPRAS WHERE ' +
    'CODIGO='+DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsString);
  DADOSMOVIMENTOF.ITECOMPRASR.Open;
  DADOSMOVIMENTOF.ITECOMPRASR.First;

  DADOSMOVIMENTOF.ITEVENDASR.Open;
  DADOSMOVIMENTOF.ITEVENDASR.SQL.Clear;
  DADOSMOVIMENTOF.ITEVENDASR.SQL.Add('SELECT * FROM ITEVENDAS WHERE ' +
    'CODIGO='+DADOS_CADASTROSf.PRODUTOS.FieldByName('CODIGO').AsString);
  DADOSMOVIMENTOF.ITEVENDASR.Open;
  DADOSMOVIMENTOF.ITEVENDASR.First;

  if not DADOSMOVIMENTOF.ITEVENDAS_ECF2.IsEmpty then begin
    while not DADOSMOVIMENTOF.ITEVENDAS_ECF2.Eof do begin
      DADOSMOVIMENTOF.EntrSaid.Append;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('CODIGO').AsString:=DADOSMOVIMENTOF.ITEVENDAS_ECF2.FieldByName('CODIGO').AsString;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('DATA').AsDateTime:=DADOSMOVIMENTOF.ITEVENDAS_ECF2.FieldByName('DATA').AsDateTime;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('DESCRICAO').AsString:=DADOSMOVIMENTOF.ITEVENDAS_ECF2.FieldByName('DESCRICAO').AsString;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('QTD').AsFloat:=DADOSMOVIMENTOF.ITEVENDAS_ECF2.FieldByName('QTD').AsFloat;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('PRECO').AsFloat:=DADOSMOVIMENTOF.ITEVENDAS_ECF2.FieldByName('PRECO').AsFloat;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('TOTAL').AsFloat:=DADOSMOVIMENTOF.ITEVENDAS_ECF2.FieldByName('TOTAL').AsFloat;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('PERCENTUAL').AsFloat:=2;
      DADOSMOVIMENTOF.EntrSaid.Post;
      DADOSMOVIMENTOF.ITEVENDAS_ECF2.Next;
    end;
  end;
  if not DADOSMOVIMENTOF.ITECOMPRASR.IsEmpty then begin
    while not DADOSMOVIMENTOF.ITECOMPRASR.Eof do begin
      DADOSMOVIMENTOF.EntrSaid.Append;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('CODIGO').AsString:=DADOSMOVIMENTOF.ITECOMPRASR.FieldByName('CODIGO').AsString;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('DATA').AsDateTime:=DADOSMOVIMENTOF.ITECOMPRASR.FieldByName('EMISSAO').AsDateTime;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('DESCRICAO').AsString:=DADOS_CADASTROSf.PRODUTOS.FieldByName('NOME').AsString;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('QTD').AsFloat:=DADOSMOVIMENTOF.ITECOMPRASR.FieldByName('QTD').AsFloat;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('PRECO').AsFloat:=DADOSMOVIMENTOF.ITECOMPRASR.FieldByName('PRECO').AsFloat;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('TOTAL').AsFloat:=DADOSMOVIMENTOF.ITECOMPRASR.FieldByName('TOTAL').AsFloat;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('PERCENTUAL').AsFloat:=1;
      DADOSMOVIMENTOF.EntrSaid.Post;
      DADOSMOVIMENTOF.ITECOMPRASR.Next;
    end;
  end;
  if not DADOSMOVIMENTOF.ITEVENDASR.IsEmpty then begin
    while not DADOSMOVIMENTOF.ITEVENDASR.Eof do begin
      DADOSMOVIMENTOF.EntrSaid.Append;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('CODIGO').AsString:=DADOSMOVIMENTOF.ITEVENDASR.FieldByName('CODIGO').AsString;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('DATA').AsDateTime:=DADOSMOVIMENTOF.ITEVENDASR.FieldByName('EMISSAO').AsDateTime;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('DESCRICAO').AsString:=DADOS_CADASTROSf.PRODUTOS.FieldByName('NOME').AsString;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('QTD').AsFloat:=DADOSMOVIMENTOF.ITEVENDASR.FieldByName('QTD').AsFloat;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('PRECO').AsFloat:=DADOSMOVIMENTOF.ITEVENDASR.FieldByName('PRECO').AsFloat;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('TOTAL').AsFloat:=DADOSMOVIMENTOF.ITEVENDASR.FieldByName('TOTAL').AsFloat;
      DADOSMOVIMENTOF.EntrSaid.FieldByName('PERCENTUAL').AsFloat:=3;
      DADOSMOVIMENTOF.EntrSaid.Post;
      DADOSMOVIMENTOF.ITEVENDASR.Next;
    end;
  end;
  RelCardex('');
  MENSPROCF.Close;
  cxGrid3.SetFocus;
end;


Procedure TCadastros_FRM.RelCardex(Tipo:string);
var VenEntSai:string;
    Quantidade:integer;
    Saldo,TotValo,TotPerc,TotalCurvas:double;
begin
  with TVISUALIZACAOF.Create(Self) do begin
    // DADOSMOVIMENTOF.EntrSaid.Open;
    DADOSMOVIMENTOF.EntrSaid.ApplyUpdates();
    DADOSMOVIMENTOF.EntrSaid.Close;
    DADOSMOVIMENTOF.EntrSaid.SQL.Clear;
    DADOSMOVIMENTOF.EntrSaid.SQL.Add('SELECT * FROM ENTRSAID order by DATA,PERCENTUAL');
    DADOSMOVIMENTOF.EntrSaid.Open;

    DADOSMOVIMENTOF.EntrSaid.First;
    Quantidade:=0;
    while not DADOSMOVIMENTOF.EntrSaid.Eof do  begin
      Quantidade:=Quantidade+1;
      DADOSMOVIMENTOF.EntrSaid.Next;
    end;
    DADOSMOVIMENTOF.EntrSaid.First;
    TextListBox1.Items.Add('Relatorio Cardex');
    TextListBox1.Items.Add('---------------------------------------------------------------------------------');
    TextListBox1.Items.Add(DireiraEsquera(0, 'Código.: '+DADOSMOVIMENTOF.EntrSaid.FieldByName('CODIGO').AsString, 6,'D')
    +' '+DireiraEsquera(0, 'Descrição.: '+DADOSMOVIMENTOF.EntrSaid.FieldByName('DESCRICAO').AsString, 50,'E'));
    TextListBox1.Items.Add('---------------------------------------------------------------------------------');
    TextListBox1.Items.Add('*--Data--* *--Qtd--* *-Valor-* *-Vl Total-* *--Saldo--* *Entrada, Saída ou Venda*');
    TextListBox1.Items.Add('---------------------------------------------------------------------------------');
    while not DADOSMOVIMENTOF.EntrSaid.Eof do  begin
      TotPerc:=TotPerc+DADOSMOVIMENTOF.EntrSaid.FieldByName('PERCENTUAL').AsFloat;
      TotValo:=TotValo+(DADOSMOVIMENTOF.EntrSaid.FieldByName('QTD').AsFloat*DADOSMOVIMENTOF.EntrSaid.FieldByName('PRECO').AsFloat);
      TotalCurvas:=TotalCurvas+(DADOSMOVIMENTOF.EntrSaid.FieldByName('QTD').AsFloat*DADOSMOVIMENTOF.EntrSaid.FieldByName('PRECO').AsFloat);
      if DADOSMOVIMENTOF.EntrSaid.FieldByName('PERCENTUAL').AsFloat=1 then begin
        VenEntSai:='Entrada';
        Saldo:=Saldo+DADOSMOVIMENTOF.EntrSaid.FieldByName('QTD').AsFloat;
      end
      else if DADOSMOVIMENTOF.EntrSaid.FieldByName('PERCENTUAL').AsFloat=2 then begin
        VenEntSai:='Venda Caixa';
        Saldo:=Saldo-DADOSMOVIMENTOF.EntrSaid.FieldByName('QTD').AsFloat;
      end
      else if DADOSMOVIMENTOF.EntrSaid.FieldByName('PERCENTUAL').AsFloat=3 then begin
        VenEntSai:='Saída Manual';
        Saldo:=Saldo-DADOSMOVIMENTOF.EntrSaid.FieldByName('QTD').AsFloat;
      end;
      TextListBox1.Items.Add(DireiraEsquera(0, DADOSMOVIMENTOF.EntrSaid.FieldByName('DATA').AsString, 10,'D')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', DADOSMOVIMENTOF.EntrSaid.FieldByName('QTD').AsFloat), 8, 'D')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', DADOSMOVIMENTOF.EntrSaid.FieldByName('PRECO').AsFloat), 10, 'D')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', DADOSMOVIMENTOF.EntrSaid.FieldByName('QTD').AsFloat*DADOSMOVIMENTOF.EntrSaid.FieldByName('PRECO').AsFloat), 12, 'D')
      +' '+DireiraEsquera(0, FormatFloat('###,##0.00', Saldo), 11, 'D')
      +' '+DireiraEsquera(0, VenEntSai, 25, 'D'));
      TextListBox1.Items.Add('---------------------------------------------------------------------------------');
      DADOSMOVIMENTOF.EntrSaid.Next;
    end;
    show;
    Button1.Click;
    close;
    if CheckBox4.Checked=true then begin
      DADOS_CADASTROSf.PRODUTOS.Edit;
      DADOS_CADASTROSf.PRODUTOS.FieldByName('QTD').AsFloat:=Saldo;
      DADOS_CADASTROSf.PRODUTOS.Post;
    end;

  end;
  MENSPROCF.Close;
  DADOSMOVIMENTOF.EntrSaid.Close;
end;


procedure TCadastros_FRM.Button8Click(Sender: TObject);
begin
  inherited;
  DADOS_CADASTROSf.operador.FieldByName('CNPJ').EditMask:=Mascara('CNPJ');
  DADOS_CADASTROSf.operador.FieldByName('CPF').EditMask:=Mascara('CPF');
  DADOS_CADASTROSf.operador.FieldByName('CEP').EditMask:=Mascara('CEP');
  DADOS_CADASTROSf.operador.FieldByName('CEP_COB').EditMask:=Mascara('CEP');
  DADOS_CADASTROSf.operador.FieldByName('CEP_ENT').EditMask:=Mascara('CEP');

  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='NOME';
  NxNotebook61.ActivePageIndex:=4;
  PegaFoco;
  Queere:=DADOS_CADASTROSf.operador;
  Tabela:='operador';
  FiltroSqlX;
end;

procedure TCadastros_FRM.Button90Click(Sender: TObject);
begin
  inherited;
  Panel29.Visible:=true;
  cxGrid3.SetFocus;
end;

procedure TCadastros_FRM.Button91Click(Sender: TObject);
begin
  inherited;
  with TGERAL3F.Create(nil) do begin
    Width:=Panel10.Width;
    Height:=Panel10.Height;
    NxNotebook61.ActivePageIndex:=8;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button92Click(Sender: TObject);
begin
  inherited;
  RelCardex('');
end;

procedure TCadastros_FRM.Button93Click(Sender: TObject);
begin
  inherited;
  RelVeiculos2;
end;

procedure TCadastros_FRM.Button94Click(Sender: TObject);
begin
  inherited;
  with TGeral3f.Create(Self) do begin
    Width:=Panel16.Width;
    Height:=Panel16.Height;
    NxNotebook61.ActivePageIndex:=17;
    if (DADOS_CADASTROSf.VEICULOS.Active=true) and not (DADOS_CADASTROSf.VEICULOS.IsEmpty) then begin
      ComboEdit9.Text:=DADOS_CADASTROSf.VEICULOS.FieldByName('PLACA').AsString;
    end;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button95Click(Sender: TObject);
begin
  inherited;
  CadastrodeGRUPOFOR;
  PegaFoco;
end;

procedure TCadastros_FRM.Button96Click(Sender: TObject);
begin
  inherited;
  if not DADOS_CADASTROSf.GRUPOFOR.IsEmpty then begin
    with TCAD_MANUTENCAOf.Create(Self) do begin
      Width:=Panel8.Width;
      Height:=Panel8.Height+40;
      NxNotebook62.ActivePageIndex:=4;
      DADOS_CADASTROSf.GRUPOFOR.Edit;
      ShowModal;
    end;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button98Click(Sender: TObject);
begin
  inherited;
  CadastrodeGRUPO;
  PegaFoco;
end;

procedure TCadastros_FRM.Button99Click(Sender: TObject);
begin
  inherited;
  with TCAD_MANUTENCAOf.Create(Self) do begin
    Width:=Panel11.Width;
    Height:=Panel11.Height+50;
    NxNotebook62.ActivePageIndex:=5;
    DADOS_CADASTROSf.GRUPO.Edit;
    ShowModal;
  end;
  PegaFoco;
end;

procedure TCadastros_FRM.Button9Click(Sender: TObject);
begin
  inherited;
  DADOS_CADASTROSf.emitente.FieldByName('CNPJ').EditMask:=Mascara('CNPJ');
  DADOS_CADASTROSf.emitente.FieldByName('CPF').EditMask:=Mascara('CPF');
  DADOS_CADASTROSf.emitente.FieldByName('CEP').EditMask:=Mascara('CEP');
  DADOS_CADASTROSf.emitente.FieldByName('CEP_COB').EditMask:=Mascara('CEP');
  DADOS_CADASTROSf.emitente.FieldByName('CEP_ENT').EditMask:=Mascara('CEP');

  DESCRICAO:='';
  DescricaoPesquisa;
  CampoConsulta:='NOME';
  NxNotebook61.ActivePageIndex:=5;
  PegaFoco;
  Queere:=DADOS_CADASTROSf.emitente;
  Tabela:='emitente';
  FiltroSqlX;
end;

procedure TCadastros_FRM.cxButton19Click(Sender: TObject);
var linha, coluna, QuaCol : integer;
var planilha : variant;
var valorcampo : string;
begin
  planilha:= CreateoleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do dbGrid para o Excel';
  planilha.visible := true;

  QuaCol:=StrToInt(cxCalcEdit1.Text);
  if QuaCol=0 then
    QuaCol:=Queere.FieldCount;

  Queere.First;
  for linha := 0 to Queere.RecordCount - 1 do begin
   for coluna := 1 to QuaCol do begin
     valorcampo := Queere.Fields[coluna - 1].AsString;
     planilha.cells[linha + 2,coluna] := valorCampo;
   end;
   Queere.Next;
  end;
  for coluna := 1 to QuaCol do begin
    valorcampo := Queere.Fields[coluna - 1].DisplayLabel;
    planilha.cells[1,coluna] := valorcampo;
  end;
  planilha.columns.Autofit;
end;

procedure TCadastros_FRM.cxGridDBTableView17DblClick(Sender: TObject);
begin
  inherited;
  Button87.Click;
end;

procedure TCadastros_FRM.cxGridDBTableView18DblClick(Sender: TObject);
begin
  inherited;
  Button84.Click;
end;

procedure TCadastros_FRM.cxGridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  Button2.Click;
end;

procedure TCadastros_FRM.cxGridDBTableView20DblClick(Sender: TObject);
begin
  inherited;
  Button75.Click;
end;

procedure TCadastros_FRM.cxGridDBTableView28DblClick(Sender: TObject);
begin
  inherited;
  Button66.Click;
end;

procedure TCadastros_FRM.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var marca:string;
begin
  inherited;
  if Panel29.Visible=true then begin
     marca:='';
    if not AViewInfo.Selected then  begin
       marca := VarAsType( cxGridDBTableView2.ViewData.Records[AViewInfo.GridRecord.Index].Values[cxGridDBTableView2QTD.Index], varString );
       if marca > '0' then begin
          ACanvas.Font.Color  := clCaptionText;
          ACanvas.Brush.Color  := clMoneyGreen;
       end
       else if marca = '0' then begin
          ACanvas.Font.Color  := clCaptionText;
          ACanvas.Brush.Color  := clYellow;
       end
       else if marca < '0' then begin
          ACanvas.Font.Color  := clCaptionText;
          ACanvas.Brush.Color  := clRed;
       end;
       marca:='';
    end;
  end;

end;

procedure TCadastros_FRM.cxGridDBTableView2DblClick(Sender: TObject);
begin
  inherited;
  Button18.Click;
end;

procedure TCadastros_FRM.cxGridDBTableView33DblClick(Sender: TObject);
begin
  inherited;
  Button22.Click;
end;

procedure TCadastros_FRM.cxGridDBTableView35DblClick(Sender: TObject);
begin
  inherited;
  Button69.Click;
end;

procedure TCadastros_FRM.cxGridDBTableView3DblClick(Sender: TObject);
begin
  inherited;
  Button20.Click;
end;

procedure TCadastros_FRM.cxGridDBTableView5DblClick(Sender: TObject);
begin
  inherited;
  Button78.Click;
end;

procedure TCadastros_FRM.cxGridDBTableView6DblClick(Sender: TObject);
begin
  inherited;
  Button81.Click;
end;

procedure TCadastros_FRM.cxGridDBTableView7DblClick(Sender: TObject);
begin
  inherited;
  Button15.Click;
end;

procedure TCadastros_FRM.cxGridDBTableView8DblClick(Sender: TObject);
begin
  inherited;
  Button99.Click;
end;

procedure TCadastros_FRM.cxGridDBTableView9DblClick(Sender: TObject);
begin
  inherited;
  Button102.Click;
end;

procedure TCadastros_FRM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(Cadastros_FRM);
  Action:=caFree;
end;

procedure TCadastros_FRM.MaskEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  CodigoConsulta:=MaskEdit7.Text;
  if key=vk_return then begin
  // if key=40 then begin
    Queere.Close;
    Queere.SQL.Clear;
    Queere.SQL.Add('Select * from PRODUTOS where LOCALIZACAO='+QuotedStr(CodigoConsulta));
    Queere.Open;
    MaskEdit7.SetFocus;
  end;
end;

procedure TCadastros_FRM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if (key=vk_return) and (NxNotebook61.ActivePageIndex=2) and (NxNotebook64.ActivePageIndex=0) then begin
      if (ConsutaCodigo='') and (MaskEdit6.Focused=false) and (ConsutaCodigo='') and (MaskEdit8.Focused=false) then begin
        Button18.Click;
        key:=40;
        PegaFoco;
      end;
    end;
  if (key=vk_return) and (NxNotebook61.ActivePageIndex=0) and (NxNotebook62.ActivePageIndex=0) then
    if MaskEdit2.Focused=false then
      Button15.Click;

  if (key=vk_return) and (NxNotebook61.ActivePageIndex=0) and (NxNotebook62.ActivePageIndex=1) then
    Button63.Click;
  if (key=vk_return) and (NxNotebook61.ActivePageIndex=0) and (NxNotebook62.ActivePageIndex=2) then
    Button66.Click;
  if (key=vk_return) and (NxNotebook61.ActivePageIndex=0) and (NxNotebook62.ActivePageIndex=3) then
    Button69.Click;
  if (key=vk_return) and (NxNotebook61.ActivePageIndex=1) and (NxNotebook63.ActivePageIndex=0) then
    if MaskEdit5.Focused=false then
      Button2.Click;

  if (key=vk_return) and (NxNotebook61.ActivePageIndex=2) and (NxNotebook64.ActivePageIndex=0) then
    if (MaskEdit6.Focused=false) and (MaskEdit8.Focused=false) then
      Button18.Click;
  if (key=vk_return) and (NxNotebook61.ActivePageIndex=2) and (NxNotebook64.ActivePageIndex=1) then
    Button99.Click;
  if (key=vk_return) and (NxNotebook61.ActivePageIndex=2) and (NxNotebook64.ActivePageIndex=2) then
    Button102.Click;
  if (key=vk_return) and (NxNotebook61.ActivePageIndex=3) then
    Button78.Click;
  if (key=vk_return) and (NxNotebook61.ActivePageIndex=4) then
    Button78.Click;
  if (key=vk_return) and (NxNotebook61.ActivePageIndex=5) then
    Button20.Click;
  if (key=vk_return) and (NxNotebook61.ActivePageIndex=6)  and (NxNotebook66.ActivePageIndex=0)then
    Button87.Click;
  if (key=vk_return) and (NxNotebook61.ActivePageIndex=6)  and (NxNotebook66.ActivePageIndex=1)then
    Button84.Click;
  {
  if (key=vk_return) and (NxNotebook61.ActivePageIndex=7) and (NxNotebook66.ActivePageIndex=0)then
    Button87.Click;}
  if (key=vk_return) and (NxNotebook61.ActivePageIndex=8) and (NxNotebook65.ActivePageIndex=0)then
    Button22.Click;
  if key=vk_f1 then
    Button4.Click;
  if key=vk_f2 then
    Button5.Click;
  if key=vk_f3 then
    Button6.Click;
  if key=vk_f4 then
    Button7.Click;
  if key=vk_f6 then
    Button8.Click;
  if key=vk_f7 then
    Button10.Click;
  if key=vk_f8 then
    Button11.Click;
  if key=vk_f9 then
    Button13.Click;
  if (NxNotebook61.ActivePageIndex=0) and (NxNotebook62.ActivePageIndex=0) and (key=vk_F5) then
    MaskEdit1.SetFocus;
  if (NxNotebook61.ActivePageIndex=1) and (NxNotebook63.ActivePageIndex=0) and (key=vk_F5) then
    MaskEdit3.SetFocus;
  if (NxNotebook61.ActivePageIndex=2) and (NxNotebook64.ActivePageIndex=0) and (key=vk_F5) then
    MaskEdit4.SetFocus;
  // if (key=vk_F10) and (Button24.Visible=true) then
  //   Button24.Click;
  if Key=vk_f11 then
  begin
    if CheckBox3.Checked=true then
      CheckBox3.Checked:=false
    else
      CheckBox3.Checked:=true;
  end;
  if Key=vk_f10 then
  begin
    if Panel4.Visible=true then
      Panel4.Visible:=false
    else if Panel4.Visible=false then
      Panel4.Visible:=true;
  end;
end;

procedure TCadastros_FRM.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (MaskEdit1.Focused=False) and (MaskEdit3.Focused=False) and (MaskEdit4.Focused=False) and (cxCalcEdit2.Focused=False) and
     (DBEdit1.Focused=False) and (DBEdit2.Focused=False) and (DateEdit4.Focused=False) and (DBEdit3.Focused=False) and
     (MaskEdit7.Focused=False)
     then begin
    if (Key<>#13) and (Key<>#27)
      then begin
      if NxNotebook62.ActivePageIndex<>3 then begin
      end;
      if Key=#8 then begin
        Delete(DESCRICAO,length(DESCRICAO),1);
        FiltroSqlX;
      end
      else begin
        DESCRICAO:=UpperCase(DESCRICAO+KEY);
        FiltroSqlX;
        if not Queere.IsEmpty then begin
        end
        else begin
          Delete(DESCRICAO,length(DESCRICAO),1);
          FiltroSqlX;
          ShowMessage('Descrição Inexistente - ('+DESCRICAO+KEY+') !!!');
        end;
      end;
      DescricaoPesquisa;
    end;
  end;
end;

procedure TCadastros_FRM.FiltroSqlX;
var QuaRec:integer;
begin
  if CheckBox3.Checked=true then
    GeralTodosCadastro:='S'
  else
    GeralTodosCadastro:='';

  if Button23.Caption='Inicio' then
    FiltroSql ( CampoConsulta,Tabela,DESCRICAO,'1')
  else if Button23.Caption='Meio' then
    FiltroSql ( CampoConsulta,Tabela,DESCRICAO,'2');

  if FiltraSemBarra<>'' then begin
    while not Queere.Eof do
      QuaRec:=QuaRec+1;
    if QuaRec=1 then
      close
    else
      Queere.First;
  end;
end;

procedure TCadastros_FRM.DBEdit3Enter(Sender: TObject);
begin
  inherited;
  DADOSFRENTEf.CONF_PADRAO.Open;
  DADOSFRENTEf.CONF_PADRAO.Edit;
end;

procedure TCadastros_FRM.DescricaoPesquisa;
begin
  Panel1.Caption:='Pesquisa -> ('+DESCRICAO+') <- Pesquisa';
end;

procedure TCadastros_FRM.Edit6Click(Sender: TObject);
begin
  inherited;
  Queere.Filtered:=false;
  Queere.Filter:='QTD>0';
  Queere.Filtered:=true;
  cxGrid3.SetFocus;
end;

procedure TCadastros_FRM.Edit7Click(Sender: TObject);
begin
  inherited;
  Queere.Filtered:=false;
  Queere.Filter:='QTD=0';
  Queere.Filtered:=true;
  cxGrid3.SetFocus;
end;

procedure TCadastros_FRM.Edit8Click(Sender: TObject);
begin
  inherited;
  Queere.Filtered:=false;
  Queere.Filter:='QTD<0';
  Queere.Filtered:=true;
  cxGrid3.SetFocus;
end;

procedure TCadastros_FRM.Edit9Click(Sender: TObject);
begin
  inherited;
  Queere.Filtered:=false;
  Queere.First;
  cxGrid3.SetFocus;
end;

procedure TCadastros_FRM.FormShow(Sender: TObject);
begin
  inherited;
  if DADOSFRENTEf.CONF_PADRAO.FieldByName('OS').AsString='N' then begin
    Button13.Visible:=false;
    Button30.Visible:=false;
    Button30.Visible:=false;
  end;
  if DADOSFRENTEf.CONF_PADRAO.FieldByName('OLEO').AsString='N' then begin
    Button30.Visible:=false;
    Button30.Visible:=false;
  end;


  DateEdit4.Date:=date;
  Panel2.Align:=alclient;
  NxNotebook61.Align:=alclient;
  NxNotebook62.Align:=alclient;
  NxNotebook63.Align:=alclient;
  NxNotebook64.Align:=alclient;
  NxNotebook65.Align:=alclient;
  NxNotebook66.Align:=alclient;
  cxGrid1.Align:=alclient;
  cxGrid2.Align:=alclient;
  cxGrid3.Align:=alclient;
  cxGrid4.Align:=alclient;
  cxGrid5.Align:=alclient;
  cxGrid6.Align:=alclient;
  cxGrid7.Align:=alclient;
  cxGrid14.Align:=alclient;
  cxGrid15.Align:=alclient;
  cxGrid16.Align:=alclient;
  cxGrid17.Align:=alclient;
  cxGrid21.Align:=alclient;
  cxGrid26.Align:=alclient;
  cxGrid27.Align:=alclient;
  cxGrid28.Align:=alclient;
  cxGrid11.Align:=alclient;
  cxGrid8.Align:=alclient;
  cxGrid9.Align:=alclient;
  cxGrid10.Align:=alclient;

  Button4.Click;
end;

procedure TCadastros_FRM.Image2Click(Sender: TObject);
begin
  inherited;
  if Panel4.Visible=true then
    Panel4.Visible:=false
  else if Panel4.Visible=false then
    Panel4.Visible:=true;
end;

procedure TCadastros_FRM.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then begin
    FiltroSqlCodigo ( 'codigo','Clientes', MaskEdit1.Text );
    MaskEdit1.SetFocus;
  end;
end;

procedure TCadastros_FRM.MaskEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then begin
    FiltroSqlCodigo ( 'codigo','FORNECEDORES', MaskEdit3.Text );
    MaskEdit3.SetFocus;
  end;
end;

procedure TCadastros_FRM.MaskEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  {
  if key=vk_return then begin
    FiltroSqlCodigo ( 'codigo','produtos', MaskEdit4.Text );
    if Queere.IsEmpty then
      FiltroSqlCodigo ( 'BARRAS','produtos', MaskEdit4.Text );
    if Queere.IsEmpty then
      FiltroSqlCodigo ( 'APELIDO','produtos', MaskEdit4.Text );
    if Queere.IsEmpty then
      ShowMessage('Código Inexistente !!!');
    if CheckBox6.Checked=true then
      Button18.Click;
    MaskEdit4.SetFocus;
  end;
  }
  CodigoConsulta:=MaskEdit4.Text;
  if key=vk_return then begin
    Queere.Close;
    Queere.SQL.Clear;
    Queere.SQL.Add('Select * from PRODUTOS where barras='+QuotedStr(CodigoConsulta));
    Queere.Open;
    if Queere.IsEmpty then begin
      Queere.Close;
      Queere.SQL.Clear;
      Queere.SQL.Add('Select * from PRODUTOS where codigo like '+QuotedStr(CodigoConsulta));
      Queere.Open;
    end;
    if Queere.IsEmpty then begin
      DADOS_CADASTROSf.Grade.Close;
      DADOS_CADASTROSf.Grade.SQL.Clear;
      DADOS_CADASTROSf.Grade.SQL.Add('Select * from Grade where BARRAS like '+QuotedStr(CodigoConsulta));
      DADOS_CADASTROSf.Grade.Open;
      if not DADOS_CADASTROSf.Grade.IsEmpty then begin
        Queere.Close;
        Queere.SQL.Clear;
        Queere.SQL.Add('Select * from PRODUTOS where codigo like '+QuotedStr(DADOS_CADASTROSf.Grade.FieldByName('codigo').AsString));
        Queere.Open;
        CodigoGrade:=CodigoConsulta;
      end;
    end;
    if Queere.IsEmpty then begin
      Queere.Close;
      Queere.SQL.Clear;
      Queere.SQL.Add('Select * from PRODUTOS where APELIDO like '+QuotedStr(CodigoConsulta));
      Queere.Open;
      {
      if not Queere.IsEmpty then begin
        XQRegistros:=0;
        Queere.First;
        while not Queere.Eof do begin
          XQRegistros:=XQRegistros+1;
          Queere.Next;
        end;
        if XQRegistros=1 then begin
          CodigoConsulta:=Queere.FieldByName('APELIDO').AsString;
        end
        else begin
          if not Queere.IsEmpty then begin
            FiltraCampo:='APELIDO='+QuotedStr(CodigoConsulta);
            ConsultaProdutos;
            CodigodeBarras:=CodigoConsulta;
            FiltraCampo:='';
          end;
        end;
      end;
      }
    end;
    if Queere.IsEmpty then
      ShowMessage('Código Inexistente !!!');
    if CheckBox6.Checked=true then
      Button18.Click;
    MaskEdit4.SetFocus;
  end;
end;

end.



