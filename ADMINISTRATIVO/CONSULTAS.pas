unit CONSULTAS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Mestre, NxNotebook6, NxControls6,
  NxCollection6, cxStyles, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxGridDBChartView, cxGridDBCardView, cxGridDBBandedTableView, cxGridChartView,
  cxGridCustomLayoutView, cxGridCardView, cxGridBandedTableView, MemDS,
  DBAccess, Uni;

type
  TCONSULTASF = class(TMestre_FRM)
    Panel5: TPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    Panel8: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    NxNotebook61: TNxNotebook6;
    ClientesNote: TNxNotebookSheet6;
    FornecedorNote: TNxNotebookSheet6;
    ProdutosNote: TNxNotebookSheet6;
    Panel7: TPanel;
    CheckBox1: TCheckBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2CODIGO: TcxGridDBColumn;
    cxGridDBTableView2BARRAS: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView2NOME: TcxGridDBColumn;
    cxGridDBTableView2QTD: TcxGridDBColumn;
    cxGridDBTableView2PRECO_CUSTO: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    EstadosNote: TNxNotebookSheet6;
    cxGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxGridDBTableView1NOME: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    GrupoProduNote: TNxNotebookSheet6;
    cxGrid4: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBTableView3CODIGO: TcxGridDBColumn;
    cxGridDBTableView3NOME: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    GruposClienNote: TNxNotebookSheet6;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBTableView4CODIGO: TcxGridDBColumn;
    cxGridDBTableView4NOME: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    GruposFornNote: TNxNotebookSheet6;
    cxGrid6: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    UnidadeNote: TNxNotebookSheet6;
    cxGrid7: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBTableView6UND: TcxGridDBColumn;
    cxGridDBTableView6NOME: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    VendedorNote: TNxNotebookSheet6;
    OperadorNote: TNxNotebookSheet6;
    CENTROCUSTOS: TNxNotebookSheet6;
    cxGrid10: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridDBTableView8CODIGO: TcxGridDBColumn;
    cxGridDBTableView8CUSTO: TcxGridDBColumn;
    cxGridDBTableView8DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView8VALOR: TcxGridDBColumn;
    cxGridBandedTableView4: TcxGridBandedTableView;
    cxGridBandedColumn7: TcxGridBandedColumn;
    cxGridBandedColumn8: TcxGridBandedColumn;
    cxGridCardView4: TcxGridCardView;
    cxGridChartView4: TcxGridChartView;
    cxGridTableView4: TcxGridTableView;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBCardView4: TcxGridDBCardView;
    cxGridDBChartView4: TcxGridDBChartView;
    cxGridDBTableView14: TcxGridDBTableView;
    cxGridLevel12: TcxGridLevel;
    CONTAS: TNxNotebookSheet6;
    cxGrid11: TcxGrid;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridDBColumn75: TcxGridDBColumn;
    cxGridDBTableView1CONTA: TcxGridDBColumn;
    cxGridDBTableView1DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1RESULTADO: TcxGridDBColumn;
    cxGridDBTableView1VALOR: TcxGridDBColumn;
    cxGridBandedTableView1: TcxGridBandedTableView;
    cxGridBandedColumn1: TcxGridBandedColumn;
    cxGridBandedColumn2: TcxGridBandedColumn;
    cxGridCardView1: TcxGridCardView;
    cxGridChartView1: TcxGridChartView;
    cxGridTableView1: TcxGridTableView;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridDBChartView1: TcxGridDBChartView;
    cxGridDBTableView13: TcxGridDBTableView;
    cxGridLevel11: TcxGridLevel;
    Bancosx: TNxNotebookSheet6;
    cxGrid12: TcxGrid;
    cxGridDBTableView15: TcxGridDBTableView;
    cxGridDBTableView5BANCO: TcxGridDBColumn;
    cxGridDBTableView5NOME_BANCO: TcxGridDBColumn;
    cxGridBandedTableView2: TcxGridBandedTableView;
    cxGridBandedColumn3: TcxGridBandedColumn;
    cxGridBandedColumn4: TcxGridBandedColumn;
    cxGridCardView2: TcxGridCardView;
    cxGridChartView2: TcxGridChartView;
    cxGridTableView2: TcxGridTableView;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBCardView2: TcxGridDBCardView;
    cxGridDBChartView2: TcxGridDBChartView;
    cxGridDBTableView16: TcxGridDBTableView;
    cxGridLevel13: TcxGridLevel;
    Historico: TNxNotebookSheet6;
    cxGrid13: TcxGrid;
    cxGridDBTableView17: TcxGridDBTableView;
    cxGridDBTableView16CODIGO: TcxGridDBColumn;
    cxGridDBTableView16NOME: TcxGridDBColumn;
    cxGridDBTableView16CONTA: TcxGridDBColumn;
    cxGridDBTableView16CUSTO: TcxGridDBColumn;
    cxGridDBTableView16ATIVO: TcxGridDBColumn;
    cxGridLevel14: TcxGridLevel;
    SubHistorico: TNxNotebookSheet6;
    cxGrid14: TcxGrid;
    cxGridDBTableView18: TcxGridDBTableView;
    cxGridDBTableView17CODIGO: TcxGridDBColumn;
    cxGridDBTableView17NOME: TcxGridDBColumn;
    cxGridDBTableView17HISTORIC: TcxGridDBColumn;
    cxGridLevel15: TcxGridLevel;
    Portador: TNxNotebookSheet6;
    cxGrid15: TcxGrid;
    cxGridDBTableView19: TcxGridDBTableView;
    cxGridDBTableView18CODIGO: TcxGridDBColumn;
    cxGridDBTableView18NOME: TcxGridDBColumn;
    cxGridDBTableView18CLIENTE: TcxGridDBColumn;
    cxGridDBTableView18DadosClientes: TcxGridDBColumn;
    cxGridLevel16: TcxGridLevel;
    VeiculosX: TNxNotebookSheet6;
    cxGrid16: TcxGrid;
    cxGridDBTableView20: TcxGridDBTableView;
    cxGridDBTableView20NOME: TcxGridDBColumn;
    cxGridDBTableView20PLACA: TcxGridDBColumn;
    cxGridDBTableView20MARCA_M: TcxGridDBColumn;
    cxGridDBTableView20COR: TcxGridDBColumn;
    cxGridDBTableView20ANO: TcxGridDBColumn;
    cxGridLevel17: TcxGridLevel;
    OBJETOS: TNxNotebookSheet6;
    cxGrid17: TcxGrid;
    cxGridDBTableView21: TcxGridDBTableView;
    cxGridDBTableView21CODIGO: TcxGridDBColumn;
    cxGridDBTableView21DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView21IDENTIFIC1: TcxGridDBColumn;
    cxGridDBTableView21IDENTIFIC2: TcxGridDBColumn;
    cxGridDBTableView21IDENTIFIC3: TcxGridDBColumn;
    cxGridLevel18: TcxGridLevel;
    Cartoes: TNxNotebookSheet6;
    cxGrid28: TcxGrid;
    cxGridDBTableView22: TcxGridDBTableView;
    cxGridDBTableView20ID: TcxGridDBColumn;
    cxGridDBTableView20DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView20DIAS: TcxGridDBColumn;
    cxGridDBTableView20VALORTAXA: TcxGridDBColumn;
    cxGridDBTableView20DEBITOCREDITO: TcxGridDBColumn;
    cxGridLevel19: TcxGridLevel;
    Panel1: TPanel;
    Label1: TLabel;
    Button23: TButton;
    Button1: TButton;
    Panel2: TPanel;
    Panel103: TPanel;
    Panel102: TPanel;
    Panel101: TPanel;
    Panel104: TPanel;
    Panel10: TPanel;
    Panel6: TPanel;
    cxGrid2: TcxGrid;
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
    cxGrid17x: TcxGrid;
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
    cxGridLevel1: TcxGridLevel;
    cxGrid8: TcxGrid;
    cxGridDBTableView23: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn76: TcxGridDBColumn;
    cxGridDBColumn77: TcxGridDBColumn;
    cxGridDBColumn78: TcxGridDBColumn;
    cxGridDBColumn79: TcxGridDBColumn;
    cxGridDBColumn80: TcxGridDBColumn;
    cxGridDBColumn81: TcxGridDBColumn;
    cxGridDBColumn82: TcxGridDBColumn;
    cxGridDBColumn83: TcxGridDBColumn;
    cxGridLevel20: TcxGridLevel;
    cxGrid9: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button23Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure FiltroSqlX;
    procedure PegaFoco;
    procedure DescricaoPesquisa;
    procedure FechaConsulta;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CONSULTASF: TCONSULTASF;
  QRegistros:integer;
  // CampoConsulta, Tabela, DESCRICAO: string;
  QueereConsulta: TUniQuery;

implementation

{$R *.dfm}

uses Principal, FUNCOESUNIDAC, DADOS_CONSULTAS, FUNCOESGERAIS, CAD_MANUTENCAO;

procedure TCONSULTASF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (ParamStr(1)='') or (ParamStr(1)='Pedido') or (ParamStr(1)='Pedido2') then begin
    if CheckBox1.Checked=true then begin
      Estatica:='S';
      DescricaoEstatica:=DESCRICAO;
    end
    else if CheckBox1.Checked=false then begin
      Estatica:='';
      DescricaoEstatica:='';
    end;
  end;
  DescricaoEstaticaX:=DESCRICAO;

  if CodigoConsulta<>'XXXXX' then begin
    if Tabela<>'CARTOES' then begin
      if NxNotebook61.ActivePageIndex=7 then
        CodigoConsulta:=QueereConsulta.FieldByName('UND').AsString
      else if NxNotebook61.ActivePageIndex=2 then begin
        CodigoConsulta:=QueereConsulta.FieldByName('CODIGO').AsString;
        CodigoBarra:=QueereConsulta.FieldByName('BARRAS').AsString;
      end
      else
        CodigoConsulta:=QueereConsulta.FieldByName('CODIGO').AsString;
    end
    else if Tabela='CARTOES' then
      CodigoConsulta:=QueereConsulta.FieldByName('ID').AsString;
  end
  else
    CodigoConsulta:='';

  if (FiltroVeiculo<>'') and (Tabela='VEICULOS') then
    PlacaVeiculo:=QueereConsulta.FieldByName('PLACA').AsString;

  QueereConsulta.Close;


  FreeAndNil(CONSULTASF);
  Action:=caFree;

end;

procedure TCONSULTASF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
    FechaConsulta;
  if key=vk_escape then begin
    CodigoConsulta:='XXXXX';
    close;
  end;
  if key=vk_f10 then begin
    Button1.Click;
    key:=vk_clear;
  end;
end;

procedure TCONSULTASF.FechaConsulta;
begin
  CodigoConsulta:='';
  close;
end;


procedure TCONSULTASF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // if (Key<>#13) and (Key<>#27) then begin
  if (Key<>#13) and (Key<>#27) and (FiltraCampo='') then begin
    if Key=#8 then begin
      Delete(DESCRICAO,length(DESCRICAO),1);
      FiltroSqlX;
    end
    else begin
      DESCRICAO:=UpperCase(DESCRICAO+KEY);
      FiltroSqlX;
      if not QueereConsulta.IsEmpty then begin
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

procedure TCONSULTASF.FormShow(Sender: TObject);
begin
  inherited;
  NxNotebook61.Align:=alclient;

  Panel1.BevelOuter:=bvNone;
  Panel2.BevelOuter:=bvNone;
  Panel3.BevelOuter:=bvNone;
  Panel4.BevelOuter:=bvNone;
  Panel8.BevelOuter:=bvNone;

  cxGrid1.Align:=alclient;
  cxGrid2.Align:=alclient;
  cxGrid3.Align:=alclient;
  cxGrid4.Align:=alclient;
  cxGrid5.Align:=alclient;
  cxGrid6.Align:=alclient;
  cxGrid7.Align:=alclient;
  cxGrid8.Align:=alclient;
  cxGrid9.Align:=alclient;
  cxGrid10.Align:=alclient;
  cxGrid11.Align:=alclient;
  cxGrid12.Align:=alclient;
  cxGrid13.Align:=alclient;
  cxGrid14.Align:=alclient;
  cxGrid15.Align:=alclient;
  cxGrid16.Align:=alclient;
  cxGrid28.Align:=alclient;
  cxGrid17.Align:=alclient;
  cxGrid28.Align:=alclient;
  cxGrid17x.Align:=alclient;
  Panel8.Align:=alclient;
  Panel3.Align:=alclient;
  Panel4.Align:=alclient;


  DESCRICAO:='';
  CodigoConsulta:='XXXXX';
  if NxNotebook61.ActivePageIndex=2 then begin
    if (ParamStr(1)='') or (ParamStr(1)='Pedido') or (ParamStr(1)='Pedido2') then begin
      CheckBox1.Visible:=true;
      if Estatica='S' then begin
        CheckBox1.Checked:=true;
        if DescricaoEstatica<>'' then begin
          DESCRICAO:=DescricaoEstatica;
          DescricaoPesquisa;
          FiltroSqlX;
        end;
      end;
    end;
  end;
  if FiltraCampo<>'' then
    FiltroSqlX;
  cxGrid6.Align:=alclient;
  PegaFoco;
end;

procedure TCONSULTASF.Button1Click(Sender: TObject);
begin
  inherited;
  DESCRICAO:='';
  DescricaoPesquisa;
  QueereConsulta.Close;
  PegaFoco;
end;

procedure TCONSULTASF.Button23Click(Sender: TObject);
begin
  inherited;
  if Button23.Caption='Inicio' then
    Button23.Caption:='Meio'
  else
    Button23.Caption:='Inicio';
  PegaFoco;
end;

procedure TCONSULTASF.DescricaoPesquisa;
begin
  Panel1.Caption:='Pesquisa -> ('+DESCRICAO+') <- Pesquisa';
end;

procedure TCONSULTASF.FiltroSqlX;
begin
  if Button23.Caption='Inicio' then begin
    FiltroSqlConsulta ( CampoConsulta,Tabela,DESCRICAO,'1');
    FiltroInicio:='Inicio';
  end
  else if Button23.Caption='Meio' then begin
    FiltroSqlConsulta ( CampoConsulta,Tabela,DESCRICAO,'2');
    FiltroInicio:='Meio';
  end;
end;

procedure TCONSULTASF.Panel7Click(Sender: TObject);
begin
  inherited;
  Panel7.Caption:='Preço do Último Custo.:   '+FormatFloat('###,##0.00',QueereConsulta.FieldByName('ULTIMO_PRECO').AsFloat);
  cxGrid3.SetFocus;
end;

procedure TCONSULTASF.PegaFoco;
begin
  if NxNotebook61.ActivePageIndex=0 then begin
    Panel2.Caption:='Consulta de Clientes';
    cxGrid2.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=1 then begin
    Panel2.Caption:='Consulta de Fornecedores';
    cxGrid17x.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=2 then begin
    Panel2.Caption:='Consulta de Produtos';
    cxGrid3.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=3 then begin
    cxGrid1.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=4 then begin
    cxGrid4.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=5 then begin
    cxGrid5.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=6 then begin
    cxGrid6.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=7 then begin
    cxGrid7.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=8 then begin
    cxGrid8.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=9 then begin
    cxGrid9.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=10 then begin
    cxGrid10.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=11 then begin
    cxGrid11.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=12 then begin
    cxGrid12.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=13 then begin
    cxGrid13.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=14 then begin
    cxGrid14.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=15 then begin
    cxGrid15.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=16 then begin
    cxGrid16.SetFocus;
  end;
  if NxNotebook61.ActivePageIndex=17 then begin
    cxGrid17.SetFocus;
  end;
end;

end.
