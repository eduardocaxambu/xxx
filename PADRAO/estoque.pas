unit estoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, MemDS, DBAccess, Uni, Mask,
  rxToolEdit, DAScript, UniScript;

type
  Testoquef = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button1: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid3: TDBGrid;
    DataSource3: TDataSource;
    Button2: TButton;
    DBGrid5: TDBGrid;
    DataSource5: TDataSource;
    ESTOQUE: TUniTable;
    ITECOMPRAS: TUniTable;
    ITEVENDAS_ECF2: TUniTable;
    ITEVENDAS: TUniTable;
    DateEdit1: TDateEdit;
    Label1: TLabel;
    ESTOQUE_SIMOLADO: TUniTable;
    DataSource4: TDataSource;
    DBGrid4: TDBGrid;
    UniScript1: TUniScript;
    Button3: TButton;
    UniScript2: TUniScript;
    Button4: TButton;
    Button5: TButton;
    Filtro: TButton;
    Button6: TButton;
    DBGrid6: TDBGrid;
    Button7: TButton;
    UniQuery1: TUniQuery;
    procedure Button6Click(Sender: TObject);
    procedure FiltroClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  estoquef: Testoquef;

implementation

// uses DADOS, FUNCOESUNIDAC, VISUALIZACAO, FUNCOES, FUNCOESGERAL, RELATORIOS,
uses FUNCOESUNIDAC, VISUALIZACAO, FUNCOES, RELATORIOS,
     DADOSFRENTE, DADOS_CADASTROS;

{$R *.dfm}

procedure Testoquef.Button1Click(Sender: TObject);
var item:integer;
begin
  ESTOQUE.Open;
  ITECOMPRAS.Open;
  ITEVENDAS_ECF2.Open;
  ITEVENDAS.Open;

  if fileexists('C:\DigiSat\GG4\DADOS\CAIXA.FDB')  then
    DADOSFRENTEf.ITEVENDAS_ECF2_ACERTO.Open;

  ESTOQUE.Open;
  ESTOQUE.First;
  while not ESTOQUE.Eof do begin
    ESTOQUE.Edit;
    ESTOQUE.FieldByName('QTD').AsFloat:=0;
    ESTOQUE.Post;
    ESTOQUE.Next;
  end;
  ESTOQUE.First;
end;

procedure Testoquef.Button2Click(Sender: TObject);
var quantidade:double;
    codigo:string;
    valor: double;
begin
  ESTOQUE.Open;
  ITECOMPRAS.Open;
  ITEVENDAS_ECF2.Open;
  ITEVENDAS.Open;

  // if fileexists('C:\DigiSat\GG4\DADOS\CAIXA.FDB')  then
  //   DADOSFRENTEf.ITEVENDAS_ECF2_ACERTO.Open;


  DBGrid2.Visible:=false;
  DBGrid3.Visible:=false;
  DBGrid5.Visible:=false;

  if not ITECOMPRAS.IsEmpty then begin
    ITECOMPRAS.First;
    while true do begin
      quantidade:=quantidade+ITECOMPRAS.FieldByName('QTD').AsFloat;
      codigo:=ITECOMPRAS.FieldByName('CODIGO').AsString;
      valor:=ITECOMPRAS.FieldByName('QTD').AsFloat;
      {
      ITECOMPRAS.Edit;
      ITECOMPRAS.FieldByName('QTD').AsFloat:=valor;
      ITECOMPRAS.Post;
      }

      ITECOMPRAS.Next;
      if (codigo<>ITECOMPRAS.FieldByName('CODIGO').AsString) or (ITECOMPRAS.Eof)
      then begin
        ESTOQUE.Open;
        ESTOQUE.Locate('CODIGO',codigo,[]);
        if ESTOQUE.FieldByName('UND_V').AsString<>'SER' then begin
          ESTOQUE.Edit;
          ESTOQUE.FieldByName('QTD').AsFloat:=quantidade;
          ESTOQUE.FieldByName('PRECO_CONS1').AsFloat:=quantidade;
          ESTOQUE.Post;
        end;
        quantidade:=0;
        if ITECOMPRAS.Eof then
          break;
      end;
    end;
  end;

  if not ITEVENDAS_ECF2.IsEmpty then begin
    ITEVENDAS_ECF2.First;
    while true do begin
      if ITEVENDAS_ECF2.FieldByName('CANCELADO').AsInteger<>1 then
        quantidade:=quantidade+ITEVENDAS_ECF2.FieldByName('QTD').AsFloat;
      codigo:=ITEVENDAS_ECF2.FieldByName('CODIGO').AsString;

      valor:=ITEVENDAS_ECF2.FieldByName('QTD').AsFloat;
      {
      ITEVENDAS_ECF2.Edit;
      ITEVENDAS_ECF2.FieldByName('QTD').AsFloat:=valor;
      ITEVENDAS_ECF2.Post;
      }

      ITEVENDAS_ECF2.Next;
      if (codigo<>ITEVENDAS_ECF2.FieldByName('CODIGO').AsString) or (ITEVENDAS_ECF2.Eof) then begin
        ESTOQUE.Open;
        ESTOQUE.Locate('CODIGO',codigo,[]);
        // if ESTOQUE.FieldByName('TIPO').AsInteger<>5 then begin
        if ESTOQUE.FieldByName('UND_V').AsString<>'SER' then begin
          ESTOQUE.Edit;
          ESTOQUE.FieldByName('QTD').AsFloat:=ESTOQUE.FieldByName('QTD').AsFloat-quantidade;
          ESTOQUE.FieldByName('PRECO_CONS2').AsFloat:=quantidade;
          ESTOQUE.Post;
        end;
        quantidade:=0;
        if ITEVENDAS_ECF2.Eof then
          break;
      end;
    end;
  end;

  if not ITEVENDAS.IsEmpty then begin
    ITEVENDAS.First;
    while true do begin
      //if ITEVENDAS.FieldByName('CFOP').AsString='5102' then
      quantidade:=quantidade+ITEVENDAS.FieldByName('QTD').AsFloat;
      codigo:=ITEVENDAS.FieldByName('CODIGO').AsString;

      valor:=ITEVENDAS.FieldByName('QTD').AsFloat;
      {
      ITEVENDAS.Edit;
      ITEVENDAS.FieldByName('QTD').AsFloat:=valor;
      ITEVENDAS.Post;
      }

      ITEVENDAS.Next;
      if (codigo<>ITEVENDAS.FieldByName('CODIGO').AsString) or (ITEVENDAS.Eof) then begin
        ESTOQUE.Open;
        ESTOQUE.Locate('CODIGO',codigo,[]);
        // if ESTOQUE.FieldByName('TIPO').AsInteger<>5 then begin
        if ESTOQUE.FieldByName('UND_V').AsString<>'SER' then begin
          ESTOQUE.Edit;
          ESTOQUE.FieldByName('QTD').AsFloat:=ESTOQUE.FieldByName('QTD').AsFloat-quantidade;
          ESTOQUE.FieldByName('PRECO_CONS3').AsFloat:=quantidade;
          ESTOQUE.Post;
        end;
        quantidade:=0;
        if ITEVENDAS.Eof then
          break;
      end;
    end;
  end;

  {
  if fileexists('C:\DigiSat\GG4\DADOS\CAIXA.FDB')  then begin
    if not DADOSFRENTEf.ITEVENDAS_ECF2_ACERTO.IsEmpty then begin
      DADOSFRENTEf.ITEVENDAS_ECF2_ACERTO.First;
      while true do begin
        if DADOSFRENTEf.ITEVENDAS_ECF2_ACERTO.FieldByName('CANCELADO').AsInteger<>1 then
          quantidade:=quantidade+DADOSFRENTEf.ITEVENDAS_ECF2_ACERTO.FieldByName('QTD').AsFloat;
        codigo:=DADOSFRENTEf.ITEVENDAS_ECF2_ACERTO.FieldByName('CODIGO').AsString;
        DADOSFRENTEf.ITEVENDAS_ECF2_ACERTO.Next;
        if (codigo<>DADOSFRENTEf.ITEVENDAS_ECF2_ACERTO.FieldByName('CODIGO').AsString) or (DADOSFRENTEf.ITEVENDAS_ECF2_ACERTO.Eof) then begin
          ESTOQUE.Open;
          ESTOQUE.Locate('CODIGO',codigo,[]);
          // if ESTOQUE.FieldByName('TIPO').AsInteger<>5 then begin
          if ESTOQUE.FieldByName('UND_V').AsString<>'SER' then begin
            ESTOQUE.Edit;
            ESTOQUE.FieldByName('QTD').AsFloat:=ESTOQUE.FieldByName('QTD').AsFloat-quantidade;
            ESTOQUE.Post;
          end;
          quantidade:=0;
          if DADOSFRENTEf.ITEVENDAS_ECF2_ACERTO.Eof then
            break;
        end;
      end;
    end;
  end;
  }

  DBGrid2.Visible:=true;
  DBGrid3.Visible:=true;
  DBGrid5.Visible:=true;
  ESTOQUE.First;
end;

procedure Testoquef.Button3Click(Sender: TObject);
begin
  UniScript1.Execute;
  ESTOQUE_SIMOLADO.Open;

  // OrigemDestinoUnidac(ESTOQUE, ESTOQUE_SIMOLADO);

  ESTOQUE_SIMOLADO.First;
  ESTOQUE.First;
end;

procedure Testoquef.Button4Click(Sender: TObject);
begin
  ESTOQUE_SIMOLADO.Close;
  Sleep(1000);
  UniScript2.Execute;
end;

procedure Testoquef.Button5Click(Sender: TObject);
begin
  Filtro.Click;
  Button3.Click;
  ESTOQUE.Close;
  ESTOQUE.TableName:='ESTOQUE_SIMOLADO';
  ESTOQUE.Open;
  Button1.Click;
  Button2.Click;
end;

procedure Testoquef.Button6Click(Sender: TObject);
begin
  // with TRELATORIOSF.Create(Self) do
  //   Inventario(ESTOQUE_SIMOLADO, DateEdit1.Text,'');
end;

procedure Testoquef.Button7Click(Sender: TObject);
begin
  UniQuery1.Close;
  UniQuery1.SQL.Clear;
  UniQuery1.SQL.Add('Delete FROM ITECOMPRAS');
  UniQuery1.Execute;

  UniQuery1.Close;
  UniQuery1.SQL.Clear;
  UniQuery1.SQL.Add('Delete FROM ITEVENDAS_ECF2');
  UniQuery1.Execute;

  UniQuery1.Close;
  UniQuery1.SQL.Clear;
  UniQuery1.SQL.Add('Delete FROM ITEVENDAS');
  UniQuery1.Execute;


end;

procedure Testoquef.FiltroClick(Sender: TObject);
begin
  ITECOMPRAS.Close;
  ITECOMPRAS.Filter:='EMISSAO<='+QuotedStr(DateEdit1.Text);
  ITECOMPRAS.Filtered:=true;
  ITECOMPRAS.Open;


  ITEVENDAS_ECF2.Close;
  ITEVENDAS_ECF2.Filter:='DATA<='+QuotedStr(DateEdit1.Text);
  ITEVENDAS_ECF2.Filtered:=true;
  ITEVENDAS_ECF2.Open;

  ITEVENDAS.Close;
  ITEVENDAS.Filter:='EMISSAO<='+QuotedStr(DateEdit1.Text);
  ITEVENDAS.Filtered:=true;
  ITEVENDAS.Open;

  if fileexists('C:\DigiSat\GG4\DADOS\CAIXA.FDB')  then begin

    DADOSFRENTEf.ITEVENDAS_ECF2_ACERTO.Close;
    DADOSFRENTEf.ITEVENDAS_ECF2_ACERTO.Filter:='EMISSAO<='+QuotedStr(DateEdit1.Text);
    DADOSFRENTEf.ITEVENDAS_ECF2_ACERTO.Filtered:=true;
    DADOSFRENTEf.ITEVENDAS_ECF2_ACERTO.Open;

  end;

end;

procedure Testoquef.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_escape then
    close;
end;

procedure Testoquef.FormShow(Sender: TObject);
begin
  ESTOQUE.Open;
end;

end.


