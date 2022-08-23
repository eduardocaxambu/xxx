unit acessoadados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, MemDS, DBAccess, Uni, UniProvider, InterBaseUniProvider,
  Grids, DBGrids, CRGrid, ExtCtrls, DBCtrls;

type
  Tacessoadadosf = class(TForm)
    UniConnection1: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    UniTable1: TUniTable;
    DataSource1: TDataSource;
    UniQuery1: TUniQuery;
    UniQuery1RDBRELATION_NAME: TStringField;
    SQLEXECUTA: TUniQuery;
    StringField1: TStringField;
    Panel1: TPanel;
    Panel3: TPanel;
    CRDBGrid1: TCRDBGrid;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    Panel4: TPanel;
    Panel5: TPanel;
    DBNavigator2: TDBNavigator;
    Panel6: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Button4: TButton;
    ComboBox2: TComboBox;
    Edit3: TEdit;
    Button5: TButton;
    Button6: TButton;
    CRDBGrid2: TCRDBGrid;
    ComboBox3: TComboBox;
    Memo1: TMemo;
    UniConnection2: TUniConnection;
    InterBaseUniProvider2: TInterBaseUniProvider;
    DataSource2: TDataSource;
    UniTable2: TUniTable;
    UniQuery2: TUniQuery;
    StringField2: TStringField;
    SQLEXECUTA2: TUniQuery;
    StringField3: TStringField;
    Memo2: TMemo;
    Button7: TButton;
    Button8: TButton;
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure OrigemDestinoUnidac(Origem, Destino: TUniTable);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acessoadadosf: Tacessoadadosf;

implementation

{$R *.dfm}

procedure Tacessoadadosf.Button1Click(Sender: TObject);
begin
  UniQuery1.Open;

  Panel1.Align:=alTop;
  Panel4.Align:=alBottom;

  Panel3.Align:=alClient;
  Panel5.Align:=alClient;
  
  CRDBGrid1.Align:=alClient;
  CRDBGrid2.Align:=alClient;


  ComboBox1.Items.Clear;

  ComboBox1.Items.Text:='';

  UniQuery1.First;
  while not UniQuery1.Eof do begin
    if copy(UniQuery1.FieldByName('RDB$RELATION_NAME').AsString,1,2)<>'RD' then
      ComboBox1.Items.Add(UniQuery1.FieldByName('RDB$RELATION_NAME').AsString);
    UniQuery1.Next;
  end;
end;

procedure Tacessoadadosf.Button2Click(Sender: TObject);
begin
  UniConnection1.Connected:=false;
  UniConnection1.Database:=Edit1.Text;
  UniConnection1.Connected:=true;

  Button1.Click;
end;

procedure Tacessoadadosf.Button3Click(Sender: TObject);
begin
  SQLEXECUTA.Close;
  SQLEXECUTA.SQL.Clear;
  SQLEXECUTA.SQL.Add(Memo1.Text);
  SQLEXECUTA.Execute;
end;

procedure Tacessoadadosf.Button4Click(Sender: TObject);
begin
  UniQuery2.Open;

  ComboBox2.Items.Clear;
  ComboBox2.Items.Text:='';

  UniQuery2.First;
  while not UniQuery2.Eof do begin
    if copy(UniQuery2.FieldByName('RDB$RELATION_NAME').AsString,1,2)<>'RD' then
      ComboBox2.Items.Add(UniQuery2.FieldByName('RDB$RELATION_NAME').AsString);
    UniQuery2.Next;
  end;
end;

procedure Tacessoadadosf.Button5Click(Sender: TObject);
begin
  UniConnection2.Connected:=false;
  UniConnection2.Database:=Edit3.Text;
  UniConnection2.Connected:=true;

  Button4.Click;
end;

procedure Tacessoadadosf.Button6Click(Sender: TObject);
begin
  SQLEXECUTA2.Close;
  SQLEXECUTA2.SQL.Clear;
  SQLEXECUTA2.SQL.Add(Memo2.Text);
  SQLEXECUTA2.Execute;

end;

procedure Tacessoadadosf.Button7Click(Sender: TObject);
begin
  OrigemDestinoUnidac(UniTable1, UniTable2);
end;

procedure Tacessoadadosf.Button8Click(Sender: TObject);
begin
  Memo2.Clear;
  Memo2.Lines.Add('DELETE FROM estoque');
  Button6.Click;

  Memo2.Clear;
  Memo2.Lines.Add('DELETE FROM EST_ADICIONAIS');
  Button6.Click;

  Memo2.Clear;
  Memo2.Lines.Add('DELETE FROM EST_CHAVES_PAF');
  Button6.Click;

  Memo2.Clear;
  Memo2.Lines.Add('DELETE FROM EST_CONTROLE_CHAVES_PAF');
  Button6.Click;

  Memo2.Clear;
  Memo2.Lines.Add('DELETE FROM EST_TABPRECOS');
  Button6.Click;

  Memo2.Clear;
  Memo2.Lines.Add('DELETE FROM estoque');
  Button6.Click;

end;

procedure Tacessoadadosf.ComboBox1Change(Sender: TObject);
begin
  UniTable1.Close;
  UniTable1.TableName:=ComboBox1.Text;
  UniTable1.Open;

  DataSource1.DataSet:=UniTable1;
end;

procedure Tacessoadadosf.ComboBox2Change(Sender: TObject);
begin
  UniTable2.Close;
  UniTable2.TableName:=ComboBox2.Text;
  UniTable2.Open;

  DataSource2.DataSet:=UniTable2;
end;

procedure Tacessoadadosf.FormShow(Sender: TObject);
begin
  if fileexists('\DADOSFDB\X\DADOS.FDB') then begin
    UniConnection1.Connected:=false;
    UniConnection1.Database:=Edit1.Text;
    UniConnection1.Connected:=true;

    Button1.Click;
  end;
end;

procedure Tacessoadadosf.OrigemDestinoUnidac(Origem, Destino :TUniTable);
var i:integer;
begin
  Origem.Open;
  destino.Open;
  while not Origem.Eof do begin
    destino.Append;
    for i:=0 to origem.FieldCount -1 do begin
      if (origem.Fields[i].DataType<>ftAutoInc) or (destino.Fields[i].DataType<>ftAutoInc) then begin
        if destino.Fields.FindField(origem.Fields[i].FieldName)<>nil then begin
          destino.FieldByName(origem.Fields[i].FieldName).Value:=origem.Fields[i].Value;

        end;
      end;
    end;
    destino.Post;
    Origem.Next;
  end;
end;

end.
