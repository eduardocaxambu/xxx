unit DADOS_CRIA;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, DAScript,
  UniScript, UniProvider, InterBaseUniProvider;

type
  TDataModule2 = class(TDataModule)
    UniConnection1: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    UniScript1: TUniScript;
    UniQuery1: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
