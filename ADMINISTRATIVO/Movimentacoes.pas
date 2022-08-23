unit Movimentacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Mestre_Filho, Vcl.ExtCtrls, NxNotebook6,
  NxControls6, NxCollection6, cxStyles, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxGridLevel, cxGridDBChartView,
  cxGridDBCardView, cxGridDBBandedTableView, cxGridChartView,
  cxGridCustomLayoutView, cxGridCardView, cxGridBandedTableView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, Vcl.StdCtrls, MemDS, DBAccess, Uni, cxContainer, RxCtrls, cxTextEdit,
  cxMemo, cxRichEdit, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxExtComCtrlsLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPSRELnk,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TMovimentacoes_FRM = class(TMestre_Filho_FRM)
    NxNotebook62: TNxNotebook6;
    Entradas: TNxNotebookSheet6;
    PededosEntradas: TNxNotebookSheet6;
    Saidas: TNxNotebookSheet6;
    PedidosSaidas: TNxNotebookSheet6;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    Panel26: TPanel;
    Button80: TButton;
    Button81: TButton;
    Button82: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1NOTA: TcxGridDBColumn;
    cxGridDBTableView1MODELO: TcxGridDBColumn;
    cxGridDBTableView1SERIE: TcxGridDBColumn;
    cxGridDBTableView1EMISSAO: TcxGridDBColumn;
    cxGridDBTableView1FORNECEDOR: TcxGridDBColumn;
    cxGridDBTableView1Descriao: TcxGridDBColumn;
    cxGridDBTableView1HORA: TcxGridDBColumn;
    cxGridDBTableView1CFOPS: TcxGridDBColumn;
    cxGridDBTableView1TOTAL: TcxGridDBColumn;
    cxGridDBTableView1CHAVE_NFE: TcxGridDBColumn;
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
    cxGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3NOTA: TcxGridDBColumn;
    cxGridDBTableView3ITEM: TcxGridDBColumn;
    cxGridDBTableView3CODIGO: TcxGridDBColumn;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3BARRAS: TcxGridDBColumn;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    cxGridDBTableView3QTD: TcxGridDBColumn;
    cxGridDBTableView3PRECO: TcxGridDBColumn;
    cxGridDBTableView3TOTAL: TcxGridDBColumn;
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
    os: TNxNotebookSheet6;
    NxNotebookSheet62: TNxNotebookSheet6;
    NxNotebook61: TNxNotebook6;
    Panel7: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    cxGrid6: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
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
    cxGrid4: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBTableView7Column2: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridBandedTableView4: TcxGridBandedTableView;
    cxGridBandedColumn7: TcxGridBandedColumn;
    cxGridBandedColumn8: TcxGridBandedColumn;
    cxGridCardView4: TcxGridCardView;
    cxGridChartView4: TcxGridChartView;
    cxGridTableView4: TcxGridTableView;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBCardView4: TcxGridDBCardView;
    cxGridDBChartView4: TcxGridDBChartView;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
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
    cxGrid3: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
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
    cxGrid7: TcxGrid;
    cxGridDBTableView13: TcxGridDBTableView;
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
    cxGrid8: TcxGrid;
    cxGridDBTableView15: TcxGridDBTableView;
    cxGridDBTableView15Column1: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridBandedTableView8: TcxGridBandedTableView;
    cxGridBandedColumn15: TcxGridBandedColumn;
    cxGridBandedColumn16: TcxGridBandedColumn;
    cxGridCardView8: TcxGridCardView;
    cxGridChartView8: TcxGridChartView;
    cxGridTableView8: TcxGridTableView;
    cxGridDBBandedTableView8: TcxGridDBBandedTableView;
    cxGridDBCardView8: TcxGridDBCardView;
    cxGridDBChartView8: TcxGridDBChartView;
    cxGridDBTableView16: TcxGridDBTableView;
    cxGridLevel8: TcxGridLevel;
    cxGrid10: TcxGrid;
    cxGridDBTableView19: TcxGridDBTableView;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridBandedTableView10: TcxGridBandedTableView;
    cxGridBandedColumn19: TcxGridBandedColumn;
    cxGridBandedColumn20: TcxGridBandedColumn;
    cxGridCardView10: TcxGridCardView;
    cxGridChartView10: TcxGridChartView;
    cxGridTableView10: TcxGridTableView;
    cxGridDBBandedTableView10: TcxGridDBBandedTableView;
    cxGridDBCardView10: TcxGridDBCardView;
    cxGridDBChartView10: TcxGridDBChartView;
    cxGridDBTableView20: TcxGridDBTableView;
    cxGridDBTableView21: TcxGridDBTableView;
    cxGridDBColumn69: TcxGridDBColumn;
    cxGridDBColumn70: TcxGridDBColumn;
    cxGridDBColumn71: TcxGridDBColumn;
    cxGridDBColumn72: TcxGridDBColumn;
    cxGridDBColumn73: TcxGridDBColumn;
    cxGridDBColumn74: TcxGridDBColumn;
    cxGridDBColumn75: TcxGridDBColumn;
    cxGridDBColumn76: TcxGridDBColumn;
    cxGridDBColumn77: TcxGridDBColumn;
    cxGridDBColumn78: TcxGridDBColumn;
    cxGridDBColumn79: TcxGridDBColumn;
    cxGridDBTableView22: TcxGridDBTableView;
    cxGridDBColumn80: TcxGridDBColumn;
    cxGridDBColumn81: TcxGridDBColumn;
    cxGridDBColumn82: TcxGridDBColumn;
    cxGridDBColumn83: TcxGridDBColumn;
    cxGridDBColumn84: TcxGridDBColumn;
    cxGridDBColumn85: TcxGridDBColumn;
    cxGridDBColumn86: TcxGridDBColumn;
    cxGridDBColumn87: TcxGridDBColumn;
    cxGridDBColumn88: TcxGridDBColumn;
    cxGridDBColumn89: TcxGridDBColumn;
    cxGridDBColumn90: TcxGridDBColumn;
    cxGridDBColumn91: TcxGridDBColumn;
    cxGridDBColumn92: TcxGridDBColumn;
    cxGridDBColumn93: TcxGridDBColumn;
    cxGridDBColumn94: TcxGridDBColumn;
    cxGridDBColumn95: TcxGridDBColumn;
    cxGridDBColumn96: TcxGridDBColumn;
    cxGridDBColumn97: TcxGridDBColumn;
    cxGridDBColumn98: TcxGridDBColumn;
    cxGridDBColumn99: TcxGridDBColumn;
    cxGridDBColumn100: TcxGridDBColumn;
    cxGridDBColumn101: TcxGridDBColumn;
    cxGridDBColumn102: TcxGridDBColumn;
    cxGridDBTableView23: TcxGridDBTableView;
    cxGridDBColumn103: TcxGridDBColumn;
    cxGridDBColumn104: TcxGridDBColumn;
    cxGridDBColumn105: TcxGridDBColumn;
    cxGridDBColumn106: TcxGridDBColumn;
    cxGridDBColumn107: TcxGridDBColumn;
    cxGridDBColumn108: TcxGridDBColumn;
    cxGridDBColumn109: TcxGridDBColumn;
    cxGridDBColumn110: TcxGridDBColumn;
    cxGridDBColumn111: TcxGridDBColumn;
    cxGridDBColumn112: TcxGridDBColumn;
    cxGridDBColumn113: TcxGridDBColumn;
    cxGridDBColumn114: TcxGridDBColumn;
    cxGridDBColumn115: TcxGridDBColumn;
    cxGridDBColumn116: TcxGridDBColumn;
    cxGridDBColumn117: TcxGridDBColumn;
    cxGridDBColumn118: TcxGridDBColumn;
    cxGridDBColumn119: TcxGridDBColumn;
    cxGridDBColumn120: TcxGridDBColumn;
    cxGridDBColumn121: TcxGridDBColumn;
    cxGridDBColumn122: TcxGridDBColumn;
    cxGridDBColumn123: TcxGridDBColumn;
    cxGridDBTableView24: TcxGridDBTableView;
    cxGridDBColumn124: TcxGridDBColumn;
    cxGridDBColumn125: TcxGridDBColumn;
    cxGridDBColumn126: TcxGridDBColumn;
    cxGridDBColumn127: TcxGridDBColumn;
    cxGridDBColumn128: TcxGridDBColumn;
    cxGridDBColumn129: TcxGridDBColumn;
    cxGridDBColumn130: TcxGridDBColumn;
    cxGridDBTableView25: TcxGridDBTableView;
    cxGridDBColumn131: TcxGridDBColumn;
    cxGridDBColumn132: TcxGridDBColumn;
    cxGridDBColumn133: TcxGridDBColumn;
    cxGridDBColumn134: TcxGridDBColumn;
    cxGridDBColumn135: TcxGridDBColumn;
    cxGridDBColumn136: TcxGridDBColumn;
    cxGridDBColumn137: TcxGridDBColumn;
    cxGridDBColumn138: TcxGridDBColumn;
    cxGridDBColumn139: TcxGridDBColumn;
    cxGridDBTableView26: TcxGridDBTableView;
    cxGridDBColumn140: TcxGridDBColumn;
    cxGridDBColumn141: TcxGridDBColumn;
    cxGridDBColumn142: TcxGridDBColumn;
    cxGridDBColumn143: TcxGridDBColumn;
    cxGridDBColumn144: TcxGridDBColumn;
    cxGridDBColumn145: TcxGridDBColumn;
    cxGridDBColumn146: TcxGridDBColumn;
    cxGridDBTableView27: TcxGridDBTableView;
    cxGridDBColumn147: TcxGridDBColumn;
    cxGridDBColumn148: TcxGridDBColumn;
    cxGridDBColumn149: TcxGridDBColumn;
    cxGridDBColumn150: TcxGridDBColumn;
    cxGridDBColumn151: TcxGridDBColumn;
    cxGridDBColumn152: TcxGridDBColumn;
    cxGridDBColumn153: TcxGridDBColumn;
    cxGridDBColumn154: TcxGridDBColumn;
    cxGridDBColumn155: TcxGridDBColumn;
    cxGridDBColumn156: TcxGridDBColumn;
    cxGridDBColumn157: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    cxGridLevel11: TcxGridLevel;
    cxGridLevel12: TcxGridLevel;
    cxGrid9: TcxGrid;
    cxGridDBTableView17: TcxGridDBTableView;
    cxGridDBTableView17NUMERO: TcxGridDBColumn;
    cxGridDBTableView17DATA: TcxGridDBColumn;
    cxGridDBTableView17HORA: TcxGridDBColumn;
    cxGridDBTableView17CODCLI: TcxGridDBColumn;
    cxGridDBTableView17CLIENTE: TcxGridDBColumn;
    cxGridDBTableView17VLRTOTSERV: TcxGridDBColumn;
    cxGridDBTableView17VLRTOTPECA: TcxGridDBColumn;
    cxGridDBTableView17VLRFRETE: TcxGridDBColumn;
    cxGridDBTableView17TIPO_ATEND: TcxGridDBColumn;
    cxGridDBTableView17DATAPREENT: TcxGridDBColumn;
    cxGridDBTableView17HORAPREENT: TcxGridDBColumn;
    cxGridDBTableView17DATAENTREG: TcxGridDBColumn;
    cxGridDBTableView17HORAENTREG: TcxGridDBColumn;
    cxGridDBTableView17STATUS: TcxGridDBColumn;
    cxGridDBTableView17ATENDENTES: TcxGridDBColumn;
    cxGridDBTableView17CONTATO: TcxGridDBColumn;
    cxGridBandedTableView9: TcxGridBandedTableView;
    cxGridBandedColumn17: TcxGridBandedColumn;
    cxGridBandedColumn18: TcxGridBandedColumn;
    cxGridCardView9: TcxGridCardView;
    cxGridChartView9: TcxGridChartView;
    cxGridTableView9: TcxGridTableView;
    cxGridDBBandedTableView9: TcxGridDBBandedTableView;
    cxGridDBCardView9: TcxGridDBCardView;
    cxGridDBChartView9: TcxGridDBChartView;
    cxGridDBTableView18: TcxGridDBTableView;
    cxGrid9DBTableView1: TcxGridDBTableView;
    cxGrid9DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid9DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid9DBTableView1IDENTIFIC1: TcxGridDBColumn;
    cxGrid9DBTableView1IDENTIFIC2: TcxGridDBColumn;
    cxGrid9DBTableView1IDENTIFIC3: TcxGridDBColumn;
    cxGrid9DBTableView1PROBLEMA: TcxGridDBColumn;
    cxGrid9DBTableView1PRISMA: TcxGridDBColumn;
    cxGrid9DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid9DBTableView1VALOR: TcxGridDBColumn;
    cxGrid9DBTableView1REVGARAN: TcxGridDBColumn;
    cxGrid9DBTableView1ATIVO: TcxGridDBColumn;
    cxGrid9DBTableView2: TcxGridDBTableView;
    cxGrid9DBTableView2CODIGOX: TcxGridDBColumn;
    cxGrid9DBTableView2CUPOM: TcxGridDBColumn;
    cxGrid9DBTableView2N_CAIXA: TcxGridDBColumn;
    cxGrid9DBTableView2DATA: TcxGridDBColumn;
    cxGrid9DBTableView2HORA: TcxGridDBColumn;
    cxGrid9DBTableView2OPERADOR: TcxGridDBColumn;
    cxGrid9DBTableView2ITEM: TcxGridDBColumn;
    cxGrid9DBTableView2CODIGO: TcxGridDBColumn;
    cxGrid9DBTableView2BARRAS: TcxGridDBColumn;
    cxGrid9DBTableView2DESCRICAO: TcxGridDBColumn;
    cxGrid9DBTableView2QTD: TcxGridDBColumn;
    cxGrid9DBTableView2PRECO: TcxGridDBColumn;
    cxGrid9DBTableView2TOTAL: TcxGridDBColumn;
    cxGrid9DBTableView2DESCONTO: TcxGridDBColumn;
    cxGrid9DBTableView2ACRESCIMO: TcxGridDBColumn;
    cxGrid9DBTableView2RECEBIDO: TcxGridDBColumn;
    cxGrid9DBTableView2VENCIMENTO: TcxGridDBColumn;
    cxGrid9DBTableView2PAGAMENTO: TcxGridDBColumn;
    cxGrid9DBTableView2PROSER: TcxGridDBColumn;
    cxGrid9DBTableView2CODOBJ: TcxGridDBColumn;
    cxGrid9DBTableView2NUMERO: TcxGridDBColumn;
    cxGrid9DBTableView2CLIENTE: TcxGridDBColumn;
    cxGrid9DBTableView2Descrio: TcxGridDBColumn;
    cxGrid9DBTableView3: TcxGridDBTableView;
    cxGrid9DBTableView3NUMERO: TcxGridDBColumn;
    cxGrid9DBTableView3DATA: TcxGridDBColumn;
    cxGrid9DBTableView3HORA: TcxGridDBColumn;
    cxGrid9DBTableView3CODCLI: TcxGridDBColumn;
    cxGrid9DBTableView3CLIENTE: TcxGridDBColumn;
    cxGrid9DBTableView3CONTATO: TcxGridDBColumn;
    cxGrid9DBTableView3VLRTOTSERV: TcxGridDBColumn;
    cxGrid9DBTableView3VLRTOTPECA: TcxGridDBColumn;
    cxGrid9DBTableView3VLRFRETE: TcxGridDBColumn;
    cxGrid9DBTableView3VLRTOTALOS: TcxGridDBColumn;
    cxGrid9DBTableView3OBSERVACAO: TcxGridDBColumn;
    cxGrid9DBTableView3TIPO_ATEND: TcxGridDBColumn;
    cxGrid9DBTableView3PRISMA: TcxGridDBColumn;
    cxGrid9DBTableView3DATAPREENT: TcxGridDBColumn;
    cxGrid9DBTableView3HORAPREENT: TcxGridDBColumn;
    cxGrid9DBTableView3DATAENTREG: TcxGridDBColumn;
    cxGrid9DBTableView3HORAENTREG: TcxGridDBColumn;
    cxGrid9DBTableView3STATUS: TcxGridDBColumn;
    cxGrid9DBTableView3SITUACOES: TcxGridDBColumn;
    cxGrid9DBTableView3ATENDENTES: TcxGridDBColumn;
    cxGrid9DBTableView3Descrio: TcxGridDBColumn;
    cxGrid9DBTableView4: TcxGridDBTableView;
    cxGrid9DBTableView4ID: TcxGridDBColumn;
    cxGrid9DBTableView4NUMERO: TcxGridDBColumn;
    cxGrid9DBTableView4CODIGO: TcxGridDBColumn;
    cxGrid9DBTableView4IDENTIFIC1: TcxGridDBColumn;
    cxGrid9DBTableView4IDENTIFIC2: TcxGridDBColumn;
    cxGrid9DBTableView4IDENTIFIC3: TcxGridDBColumn;
    cxGrid9DBTableView4DESCRICAO: TcxGridDBColumn;
    cxGrid9DBTableView5: TcxGridDBTableView;
    cxGrid9DBTableView5CUPOM: TcxGridDBColumn;
    cxGrid9DBTableView5DATA: TcxGridDBColumn;
    cxGrid9DBTableView5HORA: TcxGridDBColumn;
    cxGrid9DBTableView5OPERADOR: TcxGridDBColumn;
    cxGrid9DBTableView5CODIGO: TcxGridDBColumn;
    cxGrid9DBTableView5DESCRICAO: TcxGridDBColumn;
    cxGrid9DBTableView5QTD: TcxGridDBColumn;
    cxGrid9DBTableView5PRECO: TcxGridDBColumn;
    cxGrid9DBTableView5TOTAL: TcxGridDBColumn;
    cxGrid9DBTableView6: TcxGridDBTableView;
    cxGrid9DBTableView6ID: TcxGridDBColumn;
    cxGrid9DBTableView6NUMERO: TcxGridDBColumn;
    cxGrid9DBTableView6CODIGO: TcxGridDBColumn;
    cxGrid9DBTableView6IDENTIFIC1: TcxGridDBColumn;
    cxGrid9DBTableView6IDENTIFIC2: TcxGridDBColumn;
    cxGrid9DBTableView6IDENTIFIC3: TcxGridDBColumn;
    cxGrid9DBTableView6DESCRICAO: TcxGridDBColumn;
    cxGrid9DBTableView7: TcxGridDBTableView;
    cxGrid9DBTableView7CUPOM: TcxGridDBColumn;
    cxGrid9DBTableView7DATA: TcxGridDBColumn;
    cxGrid9DBTableView7HORA: TcxGridDBColumn;
    cxGrid9DBTableView7OPERADOR: TcxGridDBColumn;
    cxGrid9DBTableView7ITEM: TcxGridDBColumn;
    cxGrid9DBTableView7CODIGO: TcxGridDBColumn;
    cxGrid9DBTableView7BARRAS: TcxGridDBColumn;
    cxGrid9DBTableView7DESCRICAO: TcxGridDBColumn;
    cxGrid9DBTableView7QTD: TcxGridDBColumn;
    cxGrid9DBTableView7PRECO: TcxGridDBColumn;
    cxGrid9DBTableView7TOTAL: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label3: TLabel;
    Panel22: TPanel;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Panel23: TPanel;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Panel24: TPanel;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    UniQuery1: TUniQuery;
    Panel6: TPanel;
    CheckBox2: TCheckBox;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    NxNotebookSheet61: TNxNotebookSheet6;
    cxRichEdit1: TcxRichEdit;
    TextListBox1: TTextListBox;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxRichEditReportLink;
    Panel13: TPanel;
    Panel101: TPanel;
    Panel102: TPanel;
    Panel5: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    CheckBox3: TCheckBox;
    cxGridDBTableView17Column1: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView11Column1: TcxGridDBColumn;
    cxGridDBTableView5Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    dxComponentPrinter1Link2: TcxRichEditReportLink;
    Button27: TButton;
    CheckBox1: TCheckBox;
    Button28: TButton;
    CheckBox4: TCheckBox;
    Button29: TButton;
    Button30: TButton;
    Image2: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridDBTableView1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxGridDBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView11KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView11MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxGridDBTableView5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxGridDBTableView5KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView15MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxGridDBTableView15KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button82Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button80Click(Sender: TObject);
    procedure Button81Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView11DblClick(Sender: TObject);
    procedure cxGridDBTableView5DblClick(Sender: TObject);
    procedure cxGridDBTableView15DblClick(Sender: TObject);
    procedure cxGridDBTableView17DblClick(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    procedure Filtro;
    procedure NotaFornecedor;
    procedure NotaFornecedorPedido;
    procedure PegaFoco;
    procedure RelEntradasSaidasPedidos(Tipo: string);
    procedure NotaCliente;
    procedure PegaFocoPedidoClientes;
    procedure NotaClientePed_cli;
    { Private declarations }
  public
    { Public declarations }
  end;
  // procedure Filtro;
  // procedure PegaFoco;
  // procedure NotaFornecedor;
  // procedure RelEntradasSaidasPedidos(Tipo: string);
  procedure GeraContasPagar;

var
  Movimentacoes_FRM: TMovimentacoes_FRM;
  // TabelaEstoque: TUniQuery;
  // TipodePesquisa, Nota, Fornecedor, Cliente, PedidoCompra, CampoFiltro,
  // COVEPEGE, COVEPE, PrecoCustoVenda, descricaodamodalidade:string;
  COMSAIPED: TUniQuery;
  FORCLI: TUniQuery;


implementation

{$R *.dfm}

uses DADOSMOVIMENTO, dadosOBJETOS, FUNCOESGERAIS, Principal, CAD_MANUTENCAO,
  CadastroMovimentos, FUNCOESUNIDAC, VISUALIZACAO, FUNCOES, GERALFRENTE,
  FUNCAORELATORIOS, Cadastros, DADOS_CADASTROS, FrentredeCaixa;

procedure TMovimentacoes_FRM.Button10Click(Sender: TObject);
begin
  inherited;
  if not DADOSMOVIMENTOF.vendas.IsEmpty then begin
    NovoEdita:='EditaSaidas';
    FiltroItensVendas2;
    DADOSMOVIMENTOF.vendas.Edit;
    NotaCliente;
    with TCadastroMovimentosf.Create(nil) do begin
      Panel70.caption:=descricaodamodalidade;
      Width:=Panel73.Width;
      Height:=Panel73.Height;
      // caption:=Panel1.Caption;
      NxNotebook61.ActivePageIndex:=2;
      NxNotebook64.ActivePageIndex:=0;
      ShowModal;
    end;
    FiltroItensVendas;
  end;
  cxGrid3.SetFocus;
end;

procedure TMovimentacoes_FRM.Button11Click(Sender: TObject);
begin
  inherited;
  if not DADOSMOVIMENTOF.vendas.IsEmpty then begin
    if Application.MessageBox('Confirma a exclusão da Movimentação de Saída ?','Confirmação de exclusão',MB_YESNO + MB_ICONERROR)= ID_YES then begin
      NovoEdita:='DeletaSaidas';
      TabelaEstoque:=DADOSMOVIMENTOF.ITEVENDAS;
      DADOSMOVIMENTOF.ESTOQUEEntrada.Open;
      ApagaSaidas;
      // FiltroVendas( TipodePesquisa, ComboEdit2.Text, MaskEdit2.Text);
      FiltroItensVendas;
    end;
  end;
  // cxGrid3.SetFocus;
  PegaFoco;
end;

procedure TMovimentacoes_FRM.Button12Click(Sender: TObject);
begin
  inherited;
  // NovoEdita:='NovoPED_CLI';
  DADOSMOVIMENTOF.PED_CLI.Append;
  DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString:='999999999';
  DADOSMOVIMENTOF.PED_CLI.FieldByName('CLIENTE').AsString:='999999';
  NotaCliente;
  Filtro;
  DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString:='';
  DADOSMOVIMENTOF.PED_CLI.FieldByName('CLIENTE').AsString:='';
  with TCadastroMovimentosf.Create(nil) do begin
    Panel71.caption:=descricaodamodalidade;
    Width:=Panel74.Width;
    Height:=Panel74.Height;
    DADOSMOVIMENTOF.PED_CLI.FieldByName('MODELO').AsString:='55';
    DADOSMOVIMENTOF.PED_CLI.FieldByName('SERIE').AsString:='001';
    DADOSMOVIMENTOF.PED_CLI.FieldByName('SUBSERIE').AsString:='01';
    DADOSMOVIMENTOF.PED_CLI.FieldByName('CFOPS').AsString:='5403';
    DADOSMOVIMENTOF.PED_CLI.FieldByName('EMISSAO').AsDateTime:=DATE;
    DADOSMOVIMENTOF.PED_CLI.FieldByName('DATA_SAIDA').AsDateTime:=DATE;
    DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString:=DADOSMOVIMENTOF.PED_CLI.FieldByName('ID').AsString;
    NxNotebook61.ActivePageIndex:=3;
    NxNotebook65.ActivePageIndex:=0;
    ShowModal;
  end;
  FiltroItensPedidoClientes;
  PegaFocoPedidoClientes;
  DADOSMOVIMENTOF.PED_CLI.First;
  cxGrid8.SetFocus;
end;

procedure TMovimentacoes_FRM.PegaFocoPedidoClientes;
begin
  NxNotebook61.ActivePageIndex:=3;
  cxGrid8.SetFocus;
end;

procedure TMovimentacoes_FRM.Button13Click(Sender: TObject);
begin
  inherited;
  // NovoEdita:='EditaSaidas';
  if not DADOSMOVIMENTOF.PED_CLI.IsEmpty then begin
    FiltroItensPedidoCliente2;
    DADOSMOVIMENTOF.PED_CLI.Edit;
    NotaClientePed_cli;
    with TCadastroMovimentosf.Create(nil) do begin
      Panel71.caption:=descricaodamodalidade;
      Width:=Panel74.Width;
      Height:=Panel74.Height;
      caption:=Panel1.Caption;
      NxNotebook61.ActivePageIndex:=3;
      NxNotebook65.ActivePageIndex:=0;
      ShowModal;
    end;
    FiltroItensPedidoClentes;
  end;
  cxGrid8.SetFocus;
end;

procedure TMovimentacoes_FRM.NotaClientePed_cli;
begin
  Nota:=DADOSMOVIMENTOF.PED_CLI.FieldByName('NOTA').AsString;
  Fornecedor:=DADOSMOVIMENTOF.PED_CLI.FieldByName('CLIENTE').AsString;
end;

procedure TMovimentacoes_FRM.Button14Click(Sender: TObject);
begin
  inherited;
  if not DADOSMOVIMENTOF.PED_CLI.IsEmpty then begin
    if Application.MessageBox('Confirma a exclusão do Pedido de Saída ?','Confirmação de exclusão',MB_YESNO + MB_ICONERROR)= ID_YES then begin
      NovoEdita:='DeletaSaidas';
      // TabelaEstoque:=DADOSMOVIMENTOF.ITEPEDIDOSCLI;
      ApagaPedidoCliente;
      // FiltroVendas( TipodePesquisa, ComboEdit2.Text, MaskEdit2.Text);
      FiltroItensPedidoClentes;
    end;
  end;
  // cxGrid8.SetFocus;
  PegaFoco;
end;

procedure TMovimentacoes_FRM.Button15Click(Sender: TObject);
begin
  inherited;
  with TCadastroMovimentosf.Create(nil) do begin
    Panel23.caption:=descricaodamodalidade;
    Width:=Panel97.Width;
    Height:=Panel97.Height;
    DataOBJETOSx.ORDENS.Open;
    DataOBJETOSx.ORDENS.Append;
    DataOBJETOSx.ORDENS.FieldByName('DATA').AsDateTime:=date;
    DataOBJETOSx.ORDENS.FieldByName('HORA').Asstring:=TimeToStr(Time());
    NxNotebook61.ActivePageIndex:=4;
    NxNotebook66.ActivePageIndex:=0;
    ShowModal;
  end;
  Button8.Click;
  cxGrid9.SetFocus;
end;

procedure TMovimentacoes_FRM.Button16Click(Sender: TObject);
begin
  inherited;
  if not DataOBJETOSx.ORDENS.IsEmpty then begin
    with TCadastroMovimentosf.Create(nil) do begin
      Panel23.caption:=descricaodamodalidade;
      Width:=Panel97.Width;
      Height:=Panel97.Height;
      NxNotebook61.ActivePageIndex:=4;
      NxNotebook66.ActivePageIndex:=0;
      DataOBJETOSx.ORDENS.Open;
      DataOBJETOSx.ORDENS.Edit;
      ShowModal;
    end;
  end;
  cxGrid9.SetFocus;
end;

procedure TMovimentacoes_FRM.Button17Click(Sender: TObject);
begin
  inherited;
  if not DataOBJETOSx.ORDENS.IsEmpty then begin
    if Application.MessageBox('Confirma a exclusão da Ordem de Serviço ?','Confirmação de exclusão',MB_YESNO + MB_ICONERROR)= ID_YES then begin
      FiltroOS;
      while not DataOBJETOSx.PRODSERV.Eof do
        DataOBJETOSx.PRODSERV.Delete;
      while not DataOBJETOSx.ITEMOBJE.Eof do
        DataOBJETOSx.ITEMOBJE.Delete;
      DataOBJETOSx.ORDENS.Delete;
      DataOBJETOSx.ITEMOBJE.ApplyUpdates;
      DataOBJETOSx.PRODSERV.ApplyUpdates;
    end;
  end;
  cxGrid9.SetFocus;
end;

procedure TMovimentacoes_FRM.Button18Click(Sender: TObject);
begin
  inherited;
  if not DADOSMOVIMENTOF.COMPRAS.IsEmpty then
    RelEntradasSaidasPedidos('E');
end;

Procedure TMovimentacoes_FRM.RelEntradasSaidasPedidos(Tipo:string);
var VendaCompra,TotValo,TotPerc,TotalCurvas:double;
    CliForPed,NotaPedido:string;
begin
  TextListBox1.Font.Name:='LettrGoth12 BT';
  TextListBox1.Align:=AlClient;
  TextListBox1.Visible:=false;
  TextListBox1.Visible:=true;
  TextListBox1.Clear;
  if Tipo='E' then begin
    FORCLI:=DADOSMOVIMENTOF.COMPRAS;
    COMSAIPED:=DADOSMOVIMENTOF.ITECOMPRAS;
    CliForPed:='Fornecedor';
    NotaPedido:='Nota';
  end;
  if Tipo='S' then begin
    FORCLI:=DADOSMOVIMENTOF.VENDAS;
    COMSAIPED:=DADOSMOVIMENTOF.ITEVENDAS;
    CliForPed:='Cliente';
    NotaPedido:='Nota';
  end;
  if Tipo='P' then begin
    FORCLI:=DADOSMOVIMENTOF.PEDIDOS;
    COMSAIPED:=DADOSMOVIMENTOF.ITEPEDIDOS;
    CliForPed:='Fornecedor';
    NotaPedido:='Pedido';
  end;
  if Tipo='C' then begin
    FORCLI:=DADOSMOVIMENTOF.PED_CLI;
    COMSAIPED:=DADOSMOVIMENTOF.ITEPEDIDOSCLI;
    CliForPed:='Cliente';
    NotaPedido:='Pedido';
  end;
  TextListBox1.Items.Add(DireiraEsquera(0, NotaPedido+'.: '+FORCLI.FieldByName('NOTA').AsString, 6,'D')
  +' '+DireiraEsquera(0, 'Data.: '+FORCLI.FieldByName('EMISSAO').AsString, 17,'E'));
  TextListBox1.Items.Add(DireiraEsquera(0, 'Codi.: '+FORCLI.FieldByName(CliForPed).AsString, 10,'E')
  +' '+DireiraEsquera(0, CliForPed+'.: '+Copy(FORCLI.FieldByName('Descrição').AsString,1,30), 43,'E'));
  COMSAIPED.First;
  TextListBox1.Items.Add('------------------------------------------------------------------------------');
  TextListBox1.Items.Add('Item *Cod.* *-------Descrição------* *--Qtd--* *-Valor* *-Vl Total-* *Tot.Acu*');
  TextListBox1.Items.Add('------------------------------------------------------------------------------');
  while not COMSAIPED.Eof do  begin
    if Tipo='E' then begin
      if CheckBox2.Checked then begin
        DADOSMOVIMENTOF.PRODUTOS.Close;
        DADOSMOVIMENTOF.PRODUTOS.SQL.Clear;
        DADOSMOVIMENTOF.PRODUTOS.SQL.Add('Select * from PRODUTOS where codigo like '+QuotedStr(COMSAIPED.FieldByName('CODIGO').AsString));
        DADOSMOVIMENTOF.PRODUTOS.Open;
        VendaCompra:=DADOSMOVIMENTOF.PRODUTOS.FieldByName('PRECO_CONS').AsFloat;
      end
      else begin
        VendaCompra:=COMSAIPED.FieldByName('PRECO').AsFloat;
      end;
    end
    else begin
      VendaCompra:=COMSAIPED.FieldByName('PRECO').AsFloat;
    end;
    TotValo:=TotValo+(COMSAIPED.FieldByName('QTD').AsFloat*VendaCompra);
    TotalCurvas:=TotalCurvas+(COMSAIPED.FieldByName('QTD').AsFloat*VendaCompra);
    TextListBox1.Items.Add(DireiraEsquera(0, COMSAIPED.FieldByName('ITEM').AsString, 4,'D')
    +' '+DireiraEsquera(0, COMSAIPED.FieldByName('CODIGO').AsString, 6,'D')
    +' '+DireiraEsquera(0, Copy(COMSAIPED.FieldByName('Descrição').AsString,1,25), 25,'E')
    +' '+DireiraEsquera(0, FormatFloat('###,##0.00', COMSAIPED.FieldByName('QTD').AsFloat), 8, 'D')
    +' '+DireiraEsquera(0, FormatFloat('###,##0.00', VendaCompra), 9, 'D')
    +' '+DireiraEsquera(0, FormatFloat('###,##0.00', COMSAIPED.FieldByName('QTD').AsFloat*VendaCompra), 10, 'D')
    +' '+DireiraEsquera(0, FormatFloat('###,##0.00', TotValo), 10, 'D'));
    COMSAIPED.Next;
  end;
  cxRichEdit1.Style.Font.Name:='LettrGoth12 BT';
  cxRichEdit1.Style.Font:=TextListBox1.Font;
  cxRichEdit1.Style.Font.Color:=clWindowText;
  cxRichEdit1.Style.Font.Size:=14;
  cxRichEdit1.Lines.Clear;
  cxRichEdit1.Lines.Text:=TextListBox1.Items.Text;
  // dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link1;
  dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link2;
  dxComponentPrinter1.Preview();
end;

procedure TMovimentacoes_FRM.Button19Click(Sender: TObject);
begin
  inherited;
  if not DADOSMOVIMENTOF.COMPRAS.IsEmpty then begin
    with TCadastroMovimentosf.Create(Self) do begin
      Width:=Panel25.Width;
      Height:=Panel25.Height;
      NxNotebook61.ActivePageIndex:=5;
      // DataModule1.vendedores.Edit;
      ShowModal;
    end;
  end;
end;

procedure TMovimentacoes_FRM.Button1Click(Sender: TObject);
begin
  inherited;
  NovoEdita:='NovoEntradaPedido';
  DADOSMOVIMENTOF.PEDIDOS.Append;
  DADOSMOVIMENTOF.PEDIDOS.FieldByName('NOTA').AsString:='999999999';
  DADOSMOVIMENTOF.PEDIDOS.FieldByName('FORNECEDOR').AsString:='999999';
  NotaFornecedorPedido;
  Filtro;
  DADOSMOVIMENTOF.PEDIDOS.FieldByName('NOTA').AsString:='';
  DADOSMOVIMENTOF.PEDIDOS.FieldByName('FORNECEDOR').AsString:='';
  with TCadastroMovimentosf.Create(nil) do begin
    // caption:=Panel1.Caption;
    Panel69.caption:=descricaodamodalidade;
    Width:=Panel72.Width;
    Height:=Panel72.Height;
    DADOSMOVIMENTOF.PEDIDOS.FieldByName('MODELO').AsString:='55';
    DADOSMOVIMENTOF.PEDIDOS.FieldByName('SERIE').AsString:='001';
    DADOSMOVIMENTOF.PEDIDOS.FieldByName('SUBSERIE').AsString:='01';
    DADOSMOVIMENTOF.PEDIDOS.FieldByName('CFOPS').AsString:='1403';
    DADOSMOVIMENTOF.PEDIDOS.FieldByName('EMISSAO').AsDateTime:=DATE;
    DADOSMOVIMENTOF.PEDIDOS.FieldByName('SAIDA').AsDateTime:=DATE;
    NxNotebook61.ActivePageIndex:=1;
    NxNotebook63.ActivePageIndex:=0;
    ShowModal;
  end;
  FiltroItensPedidos;
  DADOSMOVIMENTOF.PEDIDOS.First;
  cxGrid6.SetFocus;
end;

procedure TMovimentacoes_FRM.NotaFornecedorPedido;
begin
  Nota:=DADOSMOVIMENTOF.PEDIDOS.FieldByName('NOTA').AsString;
  Fornecedor:=DADOSMOVIMENTOF.PEDIDOS.FieldByName('FORNECEDOR').AsString;
end;

procedure TMovimentacoes_FRM.Button20Click(Sender: TObject);
begin
  inherited;
  if not DADOSMOVIMENTOF.COMPRAS.IsEmpty then begin
    GeraContasPagar;
    AbreContasaPagar;
  end;
end;

procedure GeraContasPagar;
begin
  ContaPagarReceber:='Pagar';
  DuplicatasRecberPagar:='DuplicatasPagar';
  ClienteComprax:='Compra';
  with TGERALFRENTEF.Create(nil) do begin
    Width:=Panel24.Width;
    Height:=Panel24.Height;
    Button11.Visible:=false;
    Button12.Visible:=false;
    NxNotebook61.ActivePageIndex:=6;
    TotaldasParecelas:=DADOSMOVIMENTOF.COMPRAS.FieldByName('TOTAL').AsFloat;
    Panel37.Caption:=FormatFloat('###,##0.00',DADOSMOVIMENTOF.COMPRAS.FieldByName('TOTAL').AsFloat);
    cxCalcEdit1.Value:=DADOSMOVIMENTOF.COMPRAS.FieldByName('TOTAL').AsFloat;
    ShowModal;
  end;
  ContaPagarReceber:='';
end;

procedure TMovimentacoes_FRM.Button21Click(Sender: TObject);
begin
  inherited;
  if not DADOSMOVIMENTOF.PEDIDOS.IsEmpty then
    RelEntradasSaidasPedidos('P');
end;

procedure TMovimentacoes_FRM.Button22Click(Sender: TObject);
begin
  inherited;
  if not DADOSMOVIMENTOF.vendas.IsEmpty then
    RelEntradasSaidasPedidos('S');
end;

procedure TMovimentacoes_FRM.Button23Click(Sender: TObject);
begin
  inherited;
  if not DADOSMOVIMENTOF.PED_CLI.IsEmpty then
    RelEntradasSaidasPedidos('C');
end;

procedure TMovimentacoes_FRM.Button24Click(Sender: TObject);
begin
  inherited;
  if not DataOBJETOSx.ORDENS.IsEmpty then begin
    FiltroOS;
    ImpriOS();
    cxGrid9.SetFocus;
  end;
end;

procedure TMovimentacoes_FRM.Button25Click(Sender: TObject);
var fornecedor:string;
begin
  inherited;
  if not DADOSMOVIMENTOF.PEDIDOS.IsEmpty then begin
    fornecedor:=DADOSMOVIMENTOF.PEDIDOS.FieldByName('FORNECEDOR').AsString;
    FiltroItensPedidos2;
    NovoEdita:='NovoEntradaPedido';
    DADOSMOVIMENTOF.PEDIDOS.Append;
    DADOSMOVIMENTOF.PEDIDOS.FieldByName('NOTA').AsString:='999999999';
    DADOSMOVIMENTOF.PEDIDOS.FieldByName('FORNECEDOR').AsString:='999999';
    NotaFornecedorPedido;
    Filtro;
    DADOSMOVIMENTOF.PEDIDOS.FieldByName('NOTA').AsString:='';
    DADOSMOVIMENTOF.PEDIDOS.FieldByName('FORNECEDOR').AsString:=fornecedor;
    DADOSMOVIMENTOF.PEDIDOS.FieldByName('EMISSAO').AsDateTime:=date;
    with TCadastroMovimentosf.Create(nil) do begin
      OrigemDestinoUnidacID(DADOSMOVIMENTOF.ITEPEDIDOS2, DADOSMOVIMENTOF.ITEPEDIDOS);
      // OrigemDestinoUnidac(DADOSMOVIMENTOF.ITEPEDIDOS2, DADOSMOVIMENTOF.ITEPEDIDOS);
      DADOSMOVIMENTOF.ITEPEDIDOS.First;
      while not DADOSMOVIMENTOF.ITEPEDIDOS.Eof do begin
        DADOSMOVIMENTOF.ITEPEDIDOS.Edit;
        DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('NOTA').AsString:='999999999';
        DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('FORNECEDOR').AsString:='999999';
        DADOSMOVIMENTOF.ITEPEDIDOS.Post;
        DADOSMOVIMENTOF.PEDIDOS.FieldByName('TOTAL').AsFloat:=DADOSMOVIMENTOF.PEDIDOS.FieldByName('TOTAL').AsFloat+DADOSMOVIMENTOF.ITEPEDIDOS.FieldByName('TOTAL').AsFloat;
        DADOSMOVIMENTOF.PEDIDOS.FieldByName('TOT_PRODUTOS').AsFloat:=DADOSMOVIMENTOF.PEDIDOS.FieldByName('TOTAL').AsFloat;
        DADOSMOVIMENTOF.ITEPEDIDOS.Next;
      end;
      DADOSMOVIMENTOF.ITEPEDIDOS.First;
      OrigemDestinoUnidacID(DADOSMOVIMENTOF.ITEPEDIDOS, DADOSMOVIMENTOF.ITEPEDIDOS4);
      NxNotebook61.ActivePageIndex:=1;
      ShowModal;
    end;
    FiltroItensPedidos;
    DADOSMOVIMENTOF.PEDIDOS.First;
  end;
  cxGrid6.SetFocus;
end;

procedure TMovimentacoes_FRM.Button26Click(Sender: TObject);
begin
  inherited;
  if not DADOSMOVIMENTOF.PEDIDOS.IsEmpty then begin
    PedidoCompra:='S';
    Button4.Click;
    Button80.Click;
  end;
end;

procedure TMovimentacoes_FRM.Button27Click(Sender: TObject);
begin
  inherited;
  if CheckBox1.Checked=true then
    BobinaFormulario:='B'
  else
    BobinaFormulario:='F';
  EscolheaImpressora;
  ImprPedido(DADOSMOVIMENTOF.CLIENTESPEDIDO,DADOSMOVIMENTOF.PED_CLI,DADOSMOVIMENTOF.ITEPEDIDOSCLI);
end;

procedure TMovimentacoes_FRM.Button28Click(Sender: TObject);
begin
  inherited;
  if CheckBox4.Checked=true then
    BobinaFormulario:='B'
  else
    BobinaFormulario:='F';
  ImpressoraEscolhida:='';
  {
  with TGERALFRENTEF.Create(Self) do begin
    Width:=Panel58.Width;
    Height:=Panel58.Height;
    NxNotebook61.ActivePageIndex:=16;
    ShowModal;
  end;
  }
  EscolheaImpressora;
  ImprPedido(DADOSMOVIMENTOF.FORNECEDORESx,DADOSMOVIMENTOF.PEDIDOS,DADOSMOVIMENTOF.ITEPEDIDOS);
end;

procedure TMovimentacoes_FRM.Button29Click(Sender: TObject);
begin
  inherited;
  if not DADOSMOVIMENTOF.COMPRAS.IsEmpty then begin
    with TCadastroMovimentosf.Create(Self) do begin
      Width:=Panel25.Width;
      Height:=Panel25.Height;
      NxNotebook61.ActivePageIndex:=5;
      SomenteSaidas.Checked:=true;
      // DataModule1.vendedores.Edit;
      ShowModal;
    end;
  end;
end;

procedure TMovimentacoes_FRM.Button2Click(Sender: TObject);
begin
  inherited;
  if not DADOSMOVIMENTOF.PEDIDOS.IsEmpty then begin
    NovoEdita:='EditaEntradaPedidos';
    FiltroItensPedidos2;
    DADOSMOVIMENTOF.PEDIDOS.Edit;
    NotaFornecedorPedido;
    with TCadastroMovimentosf.Create(nil) do begin
      // caption:=Panel1.Caption;
      Panel69.caption:=descricaodamodalidade;
      Width:=Panel72.Width;
      Height:=Panel72.Height;
      NxNotebook61.ActivePageIndex:=1;
      NxNotebook63.ActivePageIndex:=0;
      ShowModal;
    end;
    FiltroItensPedidos;
  end;
  cxGrid6.SetFocus;
end;

procedure TMovimentacoes_FRM.Button30Click(Sender: TObject);
begin
  inherited;
    with TCadastroMovimentosf.Create(Self) do begin
      Width:=Panel213.Width;
      Height:=Panel213.Height;
      NxNotebook61.ActivePageIndex:=14;
      // SomenteSaidas.Checked:=true;
      // DataModule1.vendedores.Edit;
      ShowModal;
    end;
end;

procedure TMovimentacoes_FRM.Button3Click(Sender: TObject);
begin
  inherited;
  if not DADOSMOVIMENTOF.PEDIDOS.IsEmpty then begin
    if Application.MessageBox('Confirma a exclusão do Pedido ?','Confirmação de exclusão',MB_YESNO + MB_ICONERROR)= ID_YES then begin
      NovoEdita:='DeletaEntradaPedido';
      TabelaEstoque:=DADOSMOVIMENTOF.ITEPEDIDOS;
      ApagaPedido;
      cxGrid6.SetFocus;
      FiltroItensPedidos;
    end;
  end;
  // cxGrid6.SetFocus;
  PegaFoco;
end;

procedure TMovimentacoes_FRM.Button4Click(Sender: TObject);
begin
  inherited;
  NxNotebook62.ActivePageIndex:=0;
  Queere:=DADOS_CADASTROSf.FORNECEDORES;
  Panel1.Caption:='Entradas no Estoque';
  DADOSMOVIMENTOF.COMPRAS.Close;
  DADOSMOVIMENTOF.COMPRAS.SQL.Clear;
  if CheckBox3.Checked=true then
    // DADOSMOVIMENTOF.COMPRAS.SQL.Add('SELECT * FROM COMPRAS ORDER BY EMISSAO+HORA desc')
    DADOSMOVIMENTOF.COMPRAS.SQL.Add('SELECT * FROM COMPRAS ORDER BY ID desc')
  else
    // DADOSMOVIMENTOF.COMPRAS.SQL.Add('SELECT first 100 * FROM COMPRAS ORDER BY EMISSAO+HORA desc');
    DADOSMOVIMENTOF.COMPRAS.SQL.Add('SELECT first 100 * FROM COMPRAS ORDER BY ID desc');
  DADOSMOVIMENTOF.COMPRAS.Open;
  Filtro;
  PegaFoco;
end;

procedure TMovimentacoes_FRM.PegaFoco;
begin
   if NxNotebook62.ActivePageIndex=0 then
     cxGrid2.SetFocus;
   if NxNotebook62.ActivePageIndex=1 then
     cxGrid6.SetFocus;
   if NxNotebook62.ActivePageIndex=2 then
     cxGrid3.SetFocus;
   if NxNotebook62.ActivePageIndex=3 then
     cxGrid8.SetFocus;
   if NxNotebook62.ActivePageIndex=4 then
     cxGrid9.SetFocus;
   descricaodamodalidade:=Panel1.Caption;
end;

procedure TMovimentacoes_FRM.Button5Click(Sender: TObject);
begin
  inherited;
  NxNotebook62.ActivePageIndex:=1;
  Queere:=DADOS_CADASTROSf.FORNECEDORES;
  DADOSMOVIMENTOF.PEDIDOS.Close;
  DADOSMOVIMENTOF.PEDIDOS.SQL.Clear;
  if CheckBox3.Checked=true then
    // DADOSMOVIMENTOF.PEDIDOS.SQL.Add('SELECT * FROM PEDIDOS ORDER BY EMISSAO desc')
    DADOSMOVIMENTOF.PEDIDOS.SQL.Add('SELECT * FROM PEDIDOS ORDER BY ID desc')
  else
    // DADOSMOVIMENTOF.PEDIDOS.SQL.Add('SELECT first 100 * FROM PEDIDOS ORDER BY EMISSAO desc');
    DADOSMOVIMENTOF.PEDIDOS.SQL.Add('SELECT first 100 * FROM PEDIDOS ORDER BY ID desc');

  DADOSMOVIMENTOF.PEDIDOS.Open;
  Panel1.Caption:='Lançamento de Pedidos de Entradas (Fornecedores) !!!';
  FiltroItensPedidos;
  PegaFoco;
end;

procedure TMovimentacoes_FRM.Button6Click(Sender: TObject);
begin
  inherited;
  NxNotebook62.ActivePageIndex:=2;
  Queere:=DADOS_CADASTROSf.Clientes;
  DADOSMOVIMENTOF.VENDAS.Close;
  DADOSMOVIMENTOF.VENDAS.SQL.Clear;
  if CheckBox3.Checked=true then
    // DADOSMOVIMENTOF.VENDAS.SQL.Add('SELECT * FROM VENDAS ORDER BY EMISSAO+HORA desc')
    DADOSMOVIMENTOF.VENDAS.SQL.Add('SELECT * FROM VENDAS ORDER BY ID desc')
  else
    // DADOSMOVIMENTOF.VENDAS.SQL.Add('SELECT first 100 * FROM VENDAS ORDER BY EMISSAO+HORA desc');
    DADOSMOVIMENTOF.VENDAS.SQL.Add('SELECT first 100 * FROM VENDAS ORDER BY ID desc');
  DADOSMOVIMENTOF.VENDAS.Open;
  Panel1.Caption:='Saídas no Estoque';
  // NxPanel2.Visible:=true;
  // TipodePesquisa:='';
  FiltroItensSaidas;
  PegaFoco;
end;

procedure TMovimentacoes_FRM.Button7Click(Sender: TObject);
begin
  inherited;
  NxNotebook62.ActivePageIndex:=3;
  Queere:=DADOS_CADASTROSf.Clientes;
  DADOSMOVIMENTOF.PED_CLI.Close;
  DADOSMOVIMENTOF.PED_CLI.SQL.Clear;
  if CheckBox3.Checked=true then
    // DADOSMOVIMENTOF.PED_CLI.SQL.Add('SELECT * FROM PED_CLI ORDER BY EMISSAO+HORA desc')
    DADOSMOVIMENTOF.PED_CLI.SQL.Add('SELECT * FROM PED_CLI ORDER BY ID desc')
  else
    // DADOSMOVIMENTOF.PED_CLI.SQL.Add('SELECT first 100 * FROM PED_CLI ORDER BY EMISSAO+HORA desc');
    DADOSMOVIMENTOF.PED_CLI.SQL.Add('SELECT first 100 * FROM PED_CLI ORDER BY ID desc');
  DADOSMOVIMENTOF.PED_CLI.Open;
  Panel1.Caption:='Lançamento de Pedidos de Saídas (Clientes) !!!';
  // TipodePesquisa:='';
  FiltroItensPedidoClientes;
  PegaFoco;
end;

procedure TMovimentacoes_FRM.Button80Click(Sender: TObject);
begin
  inherited;
  NovoEdita:='NovoEntrada';
  DADOSMOVIMENTOF.COMPRAS.Append;
  DADOSMOVIMENTOF.COMPRAS.FieldByName('NOTA').AsString:='999999999';
  DADOSMOVIMENTOF.COMPRAS.FieldByName('FORNECEDOR').AsString:='999999';
  NotaFornecedor;
  Filtro;
  DADOSMOVIMENTOF.COMPRAS.FieldByName('NOTA').AsString:='';
  DADOSMOVIMENTOF.COMPRAS.FieldByName('FORNECEDOR').AsString:='';
  with TCadastroMovimentosf.Create(nil) do begin
    Panel29.caption:=descricaodamodalidade;
    Width:=Panel28.Width;
    Height:=Panel28.Height;

    if PedidoCompra='S' then begin
      OrigemDestinoUnidacChave(DADOSMOVIMENTOF.ITEPEDIDOS, DADOSMOVIMENTOF.ITECOMPRAS);
      DADOSMOVIMENTOF.ITEPEDIDOS.First;
      OrigemDestinoUnidacChave(DADOSMOVIMENTOF.ITEPEDIDOS, DADOSMOVIMENTOF.ITECOMPRAS4);
      OrigemDestinoEditaChave(DADOSMOVIMENTOF.PEDIDOS, DADOSMOVIMENTOF.COMPRAS);
      DADOSMOVIMENTOF.COMPRAS.FieldByName('NOTA').AsString:='';
      DADOSMOVIMENTOF.COMPRAS.FieldByName('TOT_PRODUTOS').AsFloat:=0;
      DADOSMOVIMENTOF.COMPRAS.FieldByName('TOTAL').AsFloat:=0;
    end;
    DADOSMOVIMENTOF.COMPRAS.FieldByName('MODELO').AsString:='55';
    DADOSMOVIMENTOF.COMPRAS.FieldByName('SERIE').AsString:='001';
    DADOSMOVIMENTOF.COMPRAS.FieldByName('SUBSERIE').AsString:='01';
    DADOSMOVIMENTOF.COMPRAS.FieldByName('CFOPS').AsString:='1403';
    DADOSMOVIMENTOF.COMPRAS.FieldByName('EMISSAO').AsDateTime:=DATE;
    DADOSMOVIMENTOF.COMPRAS.FieldByName('SAIDA').AsDateTime:=DATE;
    NxNotebook61.ActivePageIndex:=0;
    NxNotebook62.ActivePageIndex:=0;
    ShowModal;
  end;
  PedidoCompra:='';
  FiltroItensCompras;
  DADOSMOVIMENTOF.COMPRAS.First;
  cxGrid2.SetFocus;
  DADOSMOVIMENTOF.FORNECEDORES.Open;
  DADOSMOVIMENTOF.FORNECEDORES.Refresh;
end;

procedure TMovimentacoes_FRM.NotaFornecedor;
begin
  Nota:=DADOSMOVIMENTOF.COMPRAS.FieldByName('NOTA').AsString;
  Fornecedor:=DADOSMOVIMENTOF.COMPRAS.FieldByName('FORNECEDOR').AsString;
end;

procedure TMovimentacoes_FRM.Button81Click(Sender: TObject);
begin
  inherited;
  if not DADOSMOVIMENTOF.COMPRAS.IsEmpty then begin
    NovoEdita:='EditaEntrada';
    FiltroItensCompras2;
    DADOSMOVIMENTOF.COMPRAS.Edit;
    NotaFornecedor;
    with TCadastroMovimentosf.Create(nil) do begin
      Panel29.caption:=descricaodamodalidade;
      Width:=Panel28.Width;
      Height:=Panel28.Height;
      NxNotebook61.ActivePageIndex:=0;
      NxNotebook62.ActivePageIndex:=0;
      ShowModal;
    end;
    FiltroItensCompras;
  end;
  cxGrid2.SetFocus;
end;

procedure TMovimentacoes_FRM.Button82Click(Sender: TObject);
begin
  inherited;
  if not DADOSMOVIMENTOF.COMPRAS.IsEmpty then begin
    if Application.MessageBox('Confirma a exclusão da Movimentação de Entrada ?','Confirmação de exclusão',MB_YESNO + MB_ICONERROR)= ID_YES then begin
      NovoEdita:='DeletaEntrada';
      TabelaEstoque:=DADOSMOVIMENTOF.ITECOMPRAS;
      ApagaEntrada;
      cxGrid2.SetFocus;
      FiltroItensCompras;
    end;
  end;
  // cxGrid2.SetFocus;
  PegaFoco;
end;

procedure TMovimentacoes_FRM.Button8Click(Sender: TObject);
begin
  inherited;
  NxNotebook62.ActivePageIndex:=4;
  DataOBJETOSx.ORDENS.Close;
  DataOBJETOSx.ORDENS.Close;
  DataOBJETOSx.ORDENS.SQL.Clear;
  if CheckBox3.Checked=true then
    DataOBJETOSx.ORDENS.SQL.Add('SELECT * FROM ORDENS order by NUMERO desc')
  else
    DataOBJETOSx.ORDENS.SQL.Add('SELECT first 100 * FROM ORDENS order by NUMERO desc');
  DataOBJETOSx.ORDENS.Open;
  DataOBJETOSx.PRODSERV2.Open;
  DataOBJETOSx.ITEMOBJE2.Open;
  Panel1.Caption:='Ordem de Serviço';
  PegaFoco;
end;

procedure TMovimentacoes_FRM.Button9Click(Sender: TObject);
begin
  inherited;
  NovoEdita:='NovoSaidas';
  DADOSMOVIMENTOF.VENDAS.Append;
  DADOSMOVIMENTOF.VENDAS.FieldByName('NOTA').AsString:='99999999';
  DADOSMOVIMENTOF.VENDAS.FieldByName('CLIENTE').AsString:='999999';
  NotaCliente;
  Filtro;
  DADOSMOVIMENTOF.VENDAS.FieldByName('NOTA').AsString:='';
  DADOSMOVIMENTOF.VENDAS.FieldByName('CLIENTE').AsString:='';
  with TCadastroMovimentosf.Create(nil) do begin
    Panel70.caption:=descricaodamodalidade;
    Width:=Panel73.Width;
    Height:=Panel73.Height;
    DADOSMOVIMENTOF.VENDAS.FieldByName('MODELO').AsString:='55';
    DADOSMOVIMENTOF.VENDAS.FieldByName('SERIE').AsString:='001';
    DADOSMOVIMENTOF.VENDAS.FieldByName('SUBSERIE').AsString:='01';
    DADOSMOVIMENTOF.VENDAS.FieldByName('CFOPS').AsString:='5403';
    DADOSMOVIMENTOF.VENDAS.FieldByName('EMISSAO').AsDateTime:=DATE;
    DADOSMOVIMENTOF.VENDAS.FieldByName('DATA_SAIDA').AsDateTime:=DATE;
    NxNotebook61.ActivePageIndex:=2;
    NxNotebook64.ActivePageIndex:=0;
    ShowModal;
  end;
  FiltroItensSaidas;
  DADOSMOVIMENTOF.VENDAS.First;
  cxGrid3.SetFocus;
end;

procedure TMovimentacoes_FRM.NotaCliente;
begin
  Nota:=DADOSMOVIMENTOF.VENDAS.FieldByName('NOTA').AsString;
  Fornecedor:=DADOSMOVIMENTOF.VENDAS.FieldByName('CLIENTE').AsString;
end;

procedure TMovimentacoes_FRM.cxGridDBTableView11DblClick(Sender: TObject);
begin
  inherited;
  Button2.Click;
end;

procedure TMovimentacoes_FRM.cxGridDBTableView11KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  Filtro;
end;

procedure TMovimentacoes_FRM.cxGridDBTableView11MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Filtro;
end;

procedure TMovimentacoes_FRM.cxGridDBTableView15DblClick(Sender: TObject);
begin
  inherited;
  Button13.Click;
end;

procedure TMovimentacoes_FRM.cxGridDBTableView15KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  Filtro;
end;

procedure TMovimentacoes_FRM.cxGridDBTableView15MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Filtro;
end;

procedure TMovimentacoes_FRM.cxGridDBTableView17DblClick(Sender: TObject);
begin
  inherited;
  Button16.Click;
end;

procedure TMovimentacoes_FRM.cxGridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  Button81.Click;
end;

procedure TMovimentacoes_FRM.cxGridDBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  Filtro;
end;

procedure TMovimentacoes_FRM.cxGridDBTableView1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Filtro;
end;

procedure TMovimentacoes_FRM.cxGridDBTableView5DblClick(Sender: TObject);
begin
  inherited;
  Button10.Click;
end;

procedure TMovimentacoes_FRM.cxGridDBTableView5KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  Filtro;
end;

procedure TMovimentacoes_FRM.cxGridDBTableView5MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Filtro;
end;

procedure TMovimentacoes_FRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(Movimentacoes_FRM);
  Action:=caFree;
end;

procedure TMovimentacoes_FRM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f1 then
    Button4.Click;
  if key=vk_f2 then
    Button5.Click;
  if key=vk_f3 then
    Button6.Click;
  if key=vk_f4 then
    Button7.Click;
  if key=vk_f5 then
    Button8.Click;

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

  if (key=vk_return) and (NxNotebook62.ActivePageIndex=0) then
  begin
    Button81.Click;
    cxGrid2.SetFocus;
  end;

  if (key=vk_return) and (NxNotebook62.ActivePageIndex=1) then
  begin
    Button2.Click;
    cxGrid6.SetFocus;
  end;

  if (key=vk_return) and (NxNotebook62.ActivePageIndex=2) then
  begin
    Button10.Click;
    cxGrid3.SetFocus;
  end;

  if (key=vk_return) and (NxNotebook62.ActivePageIndex=3) then
  begin
    Button13.Click;
    cxGrid8.SetFocus;
  end;

  if (key=vk_return) and (NxNotebook62.ActivePageIndex=3) then
  begin
    Button16.Click;
    cxGrid9.SetFocus;
  end;
end;

procedure TMovimentacoes_FRM.FormShow(Sender: TObject);
begin
  inherited;
  NxNotebook62.Align:=alclient;
  Panel2.Align:=alclient;
  cxGrid9.Align:=alclient;
  cxGrid1.Align:=alclient;
  cxGrid4.Align:=alclient;
  cxGrid5.Align:=alclient;
  cxGrid7.Align:=alclient;
  Button4.Click;
end;

procedure TMovimentacoes_FRM.Image2Click(Sender: TObject);
begin
  inherited;
  if Panel4.Visible=true then
    Panel4.Visible:=false
  else if Panel4.Visible=false then
    Panel4.Visible:=true;
end;

procedure TMovimentacoes_FRM.Filtro;
begin
  if NxNotebook62.ActivePageIndex=0 then
    FiltroItensCompras;
  if NxNotebook62.ActivePageIndex=1 then
    FiltroItensPedidos;
  if NxNotebook62.ActivePageIndex=2 then
    FiltroItensSaidas;
  if NxNotebook62.ActivePageIndex=3 then
    FiltroItensPedidoClientes;
end;


end.
