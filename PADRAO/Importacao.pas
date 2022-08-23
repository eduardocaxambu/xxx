unit Importacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, mestre2, Vcl.StdCtrls, Data.DB, MemDS,
  DBAccess, Uni;

type
  TImportacaof = class(Tmestre2_FRM)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button30: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button31: TButton;
    Button32: TButton;
    Button9: TButton;
    Button33: TButton;
    Button34: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Button39: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    Button45: TButton;
    Button46: TButton;
    Testa: TUniQuery;
    Button47: TButton;

    procedure AbreBancos;
    procedure AcertaTabela(Tabela, CAMPO: string);
    procedure AcertaTabelaCampo(Tabela, CAMPO, CAMPO_TROCA: string);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IdFinal(Genegator, CampoID: string; NomeQuery: TUniQuery);
    procedure Button47Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure ImportaOrigemDestino(TabelaOrige,TabelaDestino,CampoGeneretor:String);

var
  Importacaof: TImportacaof;

implementation

uses ImportaDados, FUNCOESUNIDAC, MENSPROC, DADOS_CADASTROS, FUNCOES,
  FUNCOES_DADOS;

{$R *.dfm}

procedure TImportacaof.Button10Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.EMITENTEO, ImportaDadosf.EMITENTED);
end;

procedure TImportacaof.Button11Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.HISTORICO, ImportaDadosf.HISTORICD);
end;

procedure TImportacaof.Button12Click(Sender: TObject);
begin
  inherited;
  ImportaDadosf.HISTORICD.Open;
  ImportaDadosf.HISTORICD.Last;

  ImportaDadosf.generatorx.SQL.Clear;
  ImportaDadosf.generatorx.SQL.Add('set generator gen_HISTORIC to ' + ImportaDadosf.FORNECEDORESd.FieldByName('codigo').AsString);
  ImportaDadosf.generatorx.ExecSQL;
end;

procedure TImportacaof.Button13Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.SUB_HISTO, ImportaDadosf.SUB_HISTD);
end;

procedure TImportacaof.Button14Click(Sender: TObject);
begin
  inherited;
  ImportaDadosf.SUB_HISTD.Open;
  ImportaDadosf.SUB_HISTD.Last;

  ImportaDadosf.generatorx.SQL.Clear;
  ImportaDadosf.generatorx.SQL.Add('set generator gen_SUB_HIST to ' + ImportaDadosf.FORNECEDORESd.FieldByName('codigo').AsString);
  ImportaDadosf.generatorx.ExecSQL;
end;

procedure TImportacaof.Button15Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidacCaixa(ImportaDadosf.CAIXAO, ImportaDadosf.CAIXAD);
end;

procedure TImportacaof.Button16Click(Sender: TObject);
begin
  inherited;
  ImportaDadosf.CAIXAD.Open;
  ImportaDadosf.CAIXAD.Last;

  ImportaDadosf.generatorx.SQL.Clear;
  ImportaDadosf.generatorx.SQL.Add('set generator gen_CAIXA to ' + ImportaDadosf.CAIXAD.FieldByName('codigo').AsString);
  ImportaDadosf.generatorx.ExecSQL;
end;

procedure TImportacaof.Button17Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.VENDAS_ECF2O, ImportaDadosf.VENDAS_ECF2D);
end;

procedure TImportacaof.Button18Click(Sender: TObject);
begin
  inherited;
  ImportaDadosf.VENDAS_ECF2D.Open;
  ImportaDadosf.VENDAS_ECF2D.Last;

  if ImportaDadosf.VENDAS_ECF2D.FieldByName('CUPOM').AsString<>'' then begin
    ImportaDadosf.generatorx.SQL.Clear;
    ImportaDadosf.generatorx.SQL.Add('set generator gen_VENDAS_ECF2 to ' + ImportaDadosf.VENDAS_ECF2D.FieldByName('CUPOM').AsString);
    // ImportaDadosf.generatorx.SQL.Add('set generator gen_VENDAS_ECF2 to ' + '1');
    ImportaDadosf.generatorx.ExecSQL;
  end;
end;

procedure TImportacaof.Button19Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidacITEVENDAS_ECF2(ImportaDadosf.ITEVENDAS_ECF2O, ImportaDadosf.ITEVENDAS_ECF2D);
end;

procedure TImportacaof.Button1Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.CLIENTESO, ImportaDadosf.CLIENTESD);
end;

procedure TImportacaof.Button20Click(Sender: TObject);
begin
  inherited;
  ImportaDadosf.ITEVENDAS_ECF2D.Open;
  ImportaDadosf.ITEVENDAS_ECF2D.Last;
  if ImportaDadosf.ITEVENDAS_ECF2D.FieldByName('codigoX').AsString<>'' then begin
    ImportaDadosf.generatorx.SQL.Clear;
    ImportaDadosf.generatorx.SQL.Add('set generator gen_ITEVENDAS_ECF2 to ' + ImportaDadosf.ITEVENDAS_ECF2D.FieldByName('codigoX').AsString);
    ImportaDadosf.generatorx.ExecSQL;
  end;
end;

procedure TImportacaof.Button21Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.COMPRASO, ImportaDadosf.COMPRAS);
  IdFinal('GEN_COMPRAS','id',ImportaDadosf.COMPRAS)
end;

procedure TImportacaof.Button30Click(Sender: TObject);
begin
  inherited;
  MENSPROCF.Panel1.Caption:='AGUARDE UM MOMENTO - IMPORTANDO OS DADOS !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;

  Button1.Click;
  Button5.Click;
  Button2.Click;
  Button6.Click;
  Button3.Click;
  Button7.Click;
  Button4.Click;
  Button8.Click;
  Button10.Click;
  Button11.Click;
  Button12.Click;
  Button35.Click;
  Button13.Click;
  Button14.Click;
  Button15.Click;
  Button16.Click;
  Button17.Click;
  Button18.Click;
  Button19.Click;
  Button20.Click;
  Button21.Click;
  Button22.Click;
  Button23.Click;
  Button24.Click;
  Button25.Click;
  Button26.Click;
  Button28.Click;
  Button29.Click;
  Button31.Click;
  Button32.Click;
  Button33.Click;
  Button9.Click;
  Button36.Click;
  Button37.Click;
  Button40.Click;
  Button46.Click;


  MENSPROCF.Close;
end;

procedure TImportacaof.Button31Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.OPERADORo, ImportaDadosf.OPERADORd);
end;

procedure TImportacaof.Button32Click(Sender: TObject);
begin
  inherited;
  ImportaDadosf.OPERADORd.Open;
  ImportaDadosf.OPERADORd.Last;

  ImportaDadosf.generatorx.SQL.Clear;
  ImportaDadosf.generatorx.SQL.Add('set generator gen_OPERADOR to ' + ImportaDadosf.OPERADORd.FieldByName('codigo').AsString);
  ImportaDadosf.generatorx.ExecSQL;
end;

procedure TImportacaof.Button33Click(Sender: TObject);
begin
  inherited;
  ImportaOrigemDestino('PED_CLI','PED_CLI','ID');
  ImportaOrigemDestino('ITEPEDIDOSCLI','ITEPEDIDOSCLI','ID');
end;

procedure TImportacaof.Button34Click(Sender: TObject);
begin
  inherited;
  // ImportaOrigemDestino('CONF_PADRAO','CONF_PADRAO','');
  AbreBancos;
  ImportaOrigemDestino(Edit3.Text,Edit4.Text,'');
end;

procedure TImportacaof.Button35Click(Sender: TObject);
begin
  inherited;
  ImportaOrigemDestino('VEICULOS','VEICULOS','CODIGO');
end;

procedure TImportacaof.Button36Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.OPEDIDOS, ImportaDadosf.PEDIDOS);
  IdFinal('GEN_PEDIDOS','id',ImportaDadosf.PEDIDOS)
end;

procedure TImportacaof.Button37Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.OITEPEDIDOS, ImportaDadosf.ITEPEDIDOS);
  IdFinal('GEN_ITEPEDIDOS','id',ImportaDadosf.ITEPEDIDOS)
end;

procedure TImportacaof.Button38Click(Sender: TObject);
begin
  inherited;
  ImportaDadosf.generatorx.SQL.Clear;
  ImportaDadosf.generatorx.SQL.Add('select gen_id(GEN_VENDAS_ECF2,1) from rdb$database');
  // ImportaDadosf.generatorx.SQL.Add('SELECT gen_ID(GEN_VENDAS_ECF2, 0) AS ultimo_cod_cli FROM RDB$Database');
  ImportaDadosf.generatorx.ExecSQL;

  ShowMessage(ImportaDadosf.generatorx.Fields[0].Asstring);
  // ShowMessage('Último código: ' + ImportaDadosf.generatorx.FieldByName('GEN_VENDAS_ECF2').AsString);
end;

procedure TImportacaof.Button39Click(Sender: TObject);
begin
  inherited;
  MENSPROCF.Panel1.Caption:='AGUARDE UM MOMENTO - IMPORTANDO OS DADOS !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;

  Button1.Click;
  Button5.Click;
  Button2.Click;
  Button6.Click;
  Button3.Click;
  Button7.Click;
  Button4.Click;
  Button8.Click;
  Button10.Click;
  Button28.Click;
  Button29.Click;
  Button31.Click;
  Button32.Click;
  Button25.Click;
  Button26.Click;

  MENSPROCF.Close;
end;

procedure TImportacaof.Button22Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.ITECOMPRASO, ImportaDadosf.ITECOMPRAS);
  IdFinal('GEN_ITECOMPRAS','id',ImportaDadosf.ITECOMPRAS)
end;

procedure TImportacaof.IdFinal(Genegator,CampoID:string;NomeQuery:TUniQuery);
begin
  NomeQuery.Last;
  if not NomeQuery.IsEmpty then begin
    ImportaDadosf.generatorx.SQL.Clear;
    ImportaDadosf.generatorx.SQL.Add('set generator '+Genegator+' to ' + NomeQuery.FieldByName(CampoID).AsString);
    ImportaDadosf.generatorx.ExecSQL;
  end;
end;

procedure TImportacaof.Button23Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.VENDASO, ImportaDadosf.VENDAS);
  IdFinal('GEN_VENDAS','id',ImportaDadosf.VENDAS)
end;

procedure TImportacaof.Button24Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.ITEVENDASO, ImportaDadosf.ITEVENDAS);
  IdFinal('GEN_ITEVENDAS','id',ImportaDadosf.ITEVENDAS)
end;

procedure TImportacaof.Button25Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.CONFIGO, ImportaDadosf.CONFIG);
end;

procedure TImportacaof.Button26Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.CONF_PADRAOO, ImportaDadosf.CONF_PADRAO);
end;

procedure TImportacaof.Button27Click(Sender: TObject);
begin
  inherited;
  AbreBancos;
end;

procedure TImportacaof.Button28Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.VENDEDORESo, ImportaDadosf.VENDEDORESd);
end;

procedure TImportacaof.Button29Click(Sender: TObject);
begin
  inherited;
  ImportaDadosf.VENDEDORESd.Open;
  ImportaDadosf.VENDEDORESd.Last;

  ImportaDadosf.generatorx.SQL.Clear;
  ImportaDadosf.generatorx.SQL.Add('set generator gen_VENDEDORES to ' + ImportaDadosf.VENDEDORESd.FieldByName('codigo').AsString);
  ImportaDadosf.generatorx.ExecSQL;
end;

procedure TImportacaof.Button2Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.FORNECEDORESO, ImportaDadosf.FORNECEDORESD);
end;

procedure TImportacaof.Button3Click(Sender: TObject);
begin
  inherited;
  // OrigemDestinoUnidac(ImportaDadosf.ESTOQUE, ImportaDadosf.PRODUTOS);
  OrigemDestinoUnidac(ImportaDadosf.PRODUTOSO, ImportaDadosf.PRODUTOS);
end;

procedure TImportacaof.Button40Click(Sender: TObject);
begin
  inherited;
  ImportaOrigemDestino('CARTOES','CARTOES','ID');
  ImportaOrigemDestino('CARTOESITENS','CARTOESITENS','ID');
end;

procedure TImportacaof.Button41Click(Sender: TObject);
begin
  inherited;
  MENSPROCF.Panel1.Caption:='AGUARDE UM MOMENTO - IMPORTANDO OS DADOS !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;

  Button1.Click;
  Button5.Click;
  Button2.Click;
  Button6.Click;
  Button3.Click;
  Button7.Click;
  Button4.Click;
  Button8.Click;
  Button10.Click;
  Button11.Click;
  Button12.Click;
  Button35.Click;
  Button13.Click;
  Button14.Click;
  Button15.Click;
  Button16.Click;
  Button17.Click;
  Button18.Click;
  Button19.Click;
  Button20.Click;
  Button21.Click;
  Button22.Click;
  Button23.Click;
  Button24.Click;
  Button25.Click;
  Button26.Click;
  Button28.Click;
  Button29.Click;
  Button31.Click;
  Button32.Click;
  Button33.Click;
    // Button9.Click;
  Button36.Click;
  Button37.Click;
  // Button40.Click;


  MENSPROCF.Close;
end;

procedure TImportacaof.Button42Click(Sender: TObject);
begin
  inherited;
  MENSPROCF.Panel1.Caption:='AGUARDE UM MOMENTO - PROCESSANDO OS DADOS !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;

  AcertaTabela('VENDAS_ECF2','CUPOM');
  AcertaTabela('ITEVENDAS_ECF2','CUPOM');
  AcertaTabela('RECEBER','NUMERO');
  AcertaTabela('CAIXA','DOCUMENTO');

  MENSPROCF.Close;
end;

procedure TImportacaof.Button43Click(Sender: TObject);
begin
  inherited;
  MENSPROCF.Panel1.Caption:='AGUARDE UM MOMENTO - PROCESSANDO OS DADOS !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;

  AcertaTabelaCampo('ITEVENDAS_ECF2','TOTAL','TOTALRAT');

  MENSPROCF.Close;
end;

procedure TImportacaof.Button44Click(Sender: TObject);
begin
  inherited;
  MENSPROCF.Panel1.Caption:='AGUARDE UM MOMENTO - PROCESSANDO OS DADOS !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;

  DADOS_CADASTROSf.Query_Acerto.Close;
  DADOS_CADASTROSf.Query_Acerto.SQL.Clear;
  DADOS_CADASTROSf.Query_Acerto.SQL.Add('UPDATE ITEVENDAS_ECF2 SET TOTALRAT = TOTAL');
  DADOS_CADASTROSf.Query_Acerto.ExecSQL;

  MENSPROCF.Close;
end;

procedure TImportacaof.Button45Click(Sender: TObject);
begin
  inherited;
  MENSPROCF.Panel1.Caption:='AGUARDE UM MOMENTO - PROCESSANDO OS DADOS !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;

  DADOS_CADASTROSf.Query_Acerto.Close;
  DADOS_CADASTROSf.Query_Acerto.SQL.Clear;
  DADOS_CADASTROSf.Query_Acerto.SQL.Add('UPDATE ITEVENDAS_ECF2 SET PRECOPRO = PRECO , PRECORAT = PRECO');
  DADOS_CADASTROSf.Query_Acerto.ExecSQL;

  MENSPROCF.Close;
end;

procedure TImportacaof.Button46Click(Sender: TObject);
begin
  inherited;
  // ImportaOrigemDestino('RECEBER','RECEBER','ID');
  // ImportaOrigemDestino('PAGAR','PAGAR','CONTROLE');

  OrigemDestinoUnidac(ImportaDadosf.OPAGAR, ImportaDadosf.PAGAR);
  OrigemDestinoUnidac(ImportaDadosf.ORECEBER, ImportaDadosf.RECEBER);

end;

procedure TImportacaof.Button47Click(Sender: TObject);
begin
  inherited;
  CONF_PADRAOX('CONF_PADRAO');
end;

procedure TImportacaof.AcertaTabela(Tabela,CAMPO:string);
begin
  DADOS_CADASTROSf.tabelaacerto.Close;
  DADOS_CADASTROSf.tabelaacerto.TableName:=Tabela;
  DADOS_CADASTROSf.tabelaacerto.Open;
  DADOS_CADASTROSf.tabelaacerto.First;
  while not DADOS_CADASTROSf.tabelaacerto.Eof do begin
    DADOS_CADASTROSf.tabelaacerto.Edit;
    DADOS_CADASTROSf.tabelaacerto.FieldByName(CAMPO).AsString:=StrZero(DADOS_CADASTROSf.tabelaacerto.FieldByName(CAMPO).AsInteger,9,0);
    DADOS_CADASTROSf.tabelaacerto.Post;
    DADOS_CADASTROSf.tabelaacerto.Next;
  end;
end;

procedure TImportacaof.AcertaTabelaCampo(Tabela,CAMPO,CAMPO_TROCA:string);
begin
  DADOS_CADASTROSf.tabelaacerto.Close;
  DADOS_CADASTROSf.tabelaacerto.TableName:=Tabela;
  DADOS_CADASTROSf.tabelaacerto.Open;
  DADOS_CADASTROSf.tabelaacerto.First;
  while not DADOS_CADASTROSf.tabelaacerto.Eof do begin
    DADOS_CADASTROSf.tabelaacerto.Edit;
    // DADOS_CADASTROSf.tabelaacerto.FieldByName(CAMPO_TROCA).AsFloat:=DADOS_CADASTROSf.tabelaacerto.FieldByName(CAMPO).AsFloat;
    DADOS_CADASTROSf.tabelaacerto.FieldByName(CAMPO_TROCA).AsFloat:=
    DADOS_CADASTROSf.tabelaacerto.FieldByName('QTD').AsFloat*
    DADOS_CADASTROSf.tabelaacerto.FieldByName('PRECO').AsFloat;
    DADOS_CADASTROSf.tabelaacerto.Post;
    DADOS_CADASTROSf.tabelaacerto.Next;
  end;
end;

procedure TImportacaof.Button4Click(Sender: TObject);
begin
  inherited;
  OrigemDestinoUnidac(ImportaDadosf.grupoo, ImportaDadosf.grupod);
  {
  ImportaDadosf.gruposo.Open;
  ImportaDadosf.gruposo.First;
  ImportaDadosf.grupod.Open;

  while not ImportaDadosf.gruposo.Eof do begin
    ImportaDadosf.grupod.Append;
    ImportaDadosf.grupod.FieldByName('codigo').AsString:=ImportaDadosf.gruposo.FieldByName('codigo').AsString;
    ImportaDadosf.grupod.FieldByName('nome').AsString:=ImportaDadosf.gruposo.FieldByName('grupo').AsString;
    ImportaDadosf.grupod.Post;
    ImportaDadosf.gruposo.Next;
  end;
  }
end;

procedure TImportacaof.Button5Click(Sender: TObject);
begin
  inherited;
  ImportaDadosf.CLIENTESd.Open;
  ImportaDadosf.CLIENTESd.Last;

  ImportaDadosf.generatorx.SQL.Clear;
  ImportaDadosf.generatorx.SQL.Add('set generator gen_clientes to ' + ImportaDadosf.CLIENTESd.FieldByName('codigo').AsString);
  ImportaDadosf.generatorx.ExecSQL;
end;

procedure TImportacaof.Button6Click(Sender: TObject);
begin
  inherited;
  ImportaDadosf.FORNECEDORESd.Open;
  ImportaDadosf.FORNECEDORESd.Last;

  ImportaDadosf.generatorx.SQL.Clear;
  ImportaDadosf.generatorx.SQL.Add('set generator gen_FORNECEDORES to ' + ImportaDadosf.FORNECEDORESd.FieldByName('codigo').AsString);
  ImportaDadosf.generatorx.ExecSQL;
end;

procedure TImportacaof.Button7Click(Sender: TObject);
begin
  inherited;
  ImportaDadosf.PRODUTOS.Open;
  ImportaDadosf.PRODUTOS.Last;

  ImportaDadosf.generatorx.SQL.Clear;
  ImportaDadosf.generatorx.SQL.Add('set generator gen_PRODUTOS to ' + ImportaDadosf.PRODUTOS.FieldByName('codigo').AsString);
  ImportaDadosf.generatorx.ExecSQL;
end;

procedure TImportacaof.Button8Click(Sender: TObject);
begin
  inherited;
  ImportaDadosf.grupod.Open;
  ImportaDadosf.grupod.Last;

  if not ImportaDadosf.grupod.IsEmpty then begin
    ImportaDadosf.generatorx.SQL.Clear;
    ImportaDadosf.generatorx.SQL.Add('set generator gen_grupo to ' + ImportaDadosf.grupod.FieldByName('codigo').AsString);
    ImportaDadosf.generatorx.ExecSQL;
  end;
end;

procedure TImportacaof.Button9Click(Sender: TObject);
begin
  inherited;
  ImportaOrigemDestino('OBJETOS','OBJETOS','CODIGO');
  ImportaOrigemDestino('ORDENS','ORDENS','NUMERO');
  ImportaOrigemDestino('ITEMOBJE','ITEMOBJE','ID');
  ImportaOrigemDestino('PRODSERV','PRODSERV','CODIGOX');
  ImportaOrigemDestino('TIPOATEN','TIPOATEN','');
  ImportaOrigemDestino('Situacao','Situacao','');
end;

procedure TImportacaof.FormShow(Sender: TObject);
begin
  inherited;
  AbreBancos;
end;

procedure TImportacaof.AbreBancos;
begin
  ImportaDadosf.Origem.Connected:=false;
  ImportaDadosf.Origem.Database:=Edit1.Text;
  ImportaDadosf.Origem.Connected:=true;

  ImportaDadosf.Destino.Connected:=false;
  ImportaDadosf.Destino.Database:=Edit2.Text;
  ImportaDadosf.Destino.Connected:=true;

  {
  ImportaDadosf.UniConnection1.Connected:=false;
  // ImportaDadosf.Destino.Database:=Edit2.Text;
  ImportaDadosf.UniConnection1.Connected:=true;

  ImportaDadosf.UniConnection2.Connected:=false;
  ImportaDadosf.UniConnection2.Connected:=true;
  }
end;

procedure ImportaOrigemDestino(TabelaOrige,TabelaDestino,CampoGeneretor:String);
begin
  ImportaDadosf.QOrigem.Close;
  ImportaDadosf.QOrigem.SQL.Clear;
  ImportaDadosf.QOrigem.SQL.Add('Select * from '+TabelaOrige);
  ImportaDadosf.QOrigem.Open;

  ImportaDadosf.QDestino.Close;
  ImportaDadosf.QDestino.SQL.Clear;
  ImportaDadosf.QDestino.SQL.Add('Select * from '+TabelaDestino);
  ImportaDadosf.QDestino.Open;

  OrigemDestinoUnidac(ImportaDadosf.QOrigem, ImportaDadosf.QDestino);

  if CampoGeneretor<>'' then begin
    ImportaDadosf.QDestino.Open;
    if not ImportaDadosf.QDestino.IsEmpty then begin
      ImportaDadosf.QDestino.Last;
      if not ImportaDadosf.QDestino.IsEmpty then begin
        if CampoGeneretor<>'' then begin
          ImportaDadosf.generatorx.SQL.Clear;
          ImportaDadosf.generatorx.SQL.Add('set generator gen_'+TabelaDestino+' to ' + ImportaDadosf.QDestino.FieldByName(CampoGeneretor).AsString);
          ImportaDadosf.generatorx.ExecSQL;
        end;
      end;
    end;
  end;
end;

end.
