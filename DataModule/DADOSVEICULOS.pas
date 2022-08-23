unit DADOSVEICULOS;

interface

uses
  System.SysUtils, System.Classes, Uni, Data.DB, MemDS, DBAccess;

type
  TDADOSVEICULOSf = class(TDataModule)
    VEICULOS: TUniQuery;
    VEICULOSCODIGO: TIntegerField;
    VEICULOSCLIENTE: TIntegerField;
    VEICULOSEMPRESA: TIntegerField;
    VEICULOSNOME: TStringField;
    VEICULOSMODELO: TStringField;
    VEICULOSVEICULO: TStringField;
    VEICULOSTIPO: TStringField;
    VEICULOSPLACA: TStringField;
    VEICULOSCHASSIS: TStringField;
    VEICULOSRENAVAM: TStringField;
    VEICULOSMARCA_M: TStringField;
    VEICULOSCOR: TStringField;
    VEICULOSANO: TStringField;
    VEICULOSANO_MOD: TStringField;
    VEICULOSOBSERV: TStringField;
    VEICULOSDescricao: TStringField;
    ABASTECI: TUniQuery;
    ABASTECICODIGO: TIntegerField;
    ABASTECIVEICULO: TIntegerField;
    ABASTECICLIENTE: TIntegerField;
    ABASTECIVENDEDOR: TIntegerField;
    ABASTECIEMPRESA: TIntegerField;
    ABASTECIPLACA: TStringField;
    ABASTECIDATA: TDateField;
    ABASTECIHORA: TTimeField;
    ABASTECIKM_INICIO: TFloatField;
    ABASTECIKM_FIM: TFloatField;
    ABASTECILITROS: TFloatField;
    ABASTECIVALOR: TFloatField;
    ABASTECIDescVend: TStringField;
    ABASTECIDescVeic: TStringField;
    MANUTEM: TUniQuery;
    MANUTEMCODIGO: TIntegerField;
    MANUTEMVEICULO: TIntegerField;
    MANUTEMVENDEDOR: TIntegerField;
    MANUTEMEMPRESA: TIntegerField;
    MANUTEMSERVICO: TStringField;
    MANUTEMPLACA: TStringField;
    MANUTEMDATA: TDateField;
    MANUTEMHORA: TTimeField;
    MANUTEMVALOR: TFloatField;
    MANUTEMDescVend: TStringField;
    MANUTEMDescVeic: TStringField;
    OLEO: TUniQuery;
    OLEOCODIGO: TIntegerField;
    OLEOVEICULO: TIntegerField;
    OLEOCLIENTE: TIntegerField;
    OLEOEMPRESA: TIntegerField;
    OLEOPLACA: TStringField;
    OLEODATA: TDateField;
    OLEOHORA: TTimeField;
    OLEOKM_INICIO: TFloatField;
    OLEOKM_FIM: TFloatField;
    OLEODescVeic: TStringField;
    XCLIENTES: TUniTable;
    VENDEDORx: TUniTable;
    VENDEDORxCODIGO: TIntegerField;
    VENDEDORxNOME: TStringField;
    VENDEDORxENDERECO: TStringField;
    VENDEDORxNUMERO: TStringField;
    VENDEDORxBAIRRO: TStringField;
    VENDEDORxCEP: TStringField;
    VENDEDORxCIDADE: TStringField;
    VENDEDORxUF: TStringField;
    VENDEDORxCPF: TStringField;
    VENDEDORxRG: TStringField;
    VENDEDORxTELEFONE: TStringField;
    VENDEDORxCELULAR: TStringField;
    VENDEDORxEMAIL: TStringField;
    VENDEDORxOBSERVACAO: TStringField;
    VEICULOSx: TUniTable;
    VEICULOSxCODIGO: TIntegerField;
    VEICULOSxCLIENTE: TIntegerField;
    VEICULOSxEMPRESA: TIntegerField;
    VEICULOSxNOME: TStringField;
    VEICULOSxMODELO: TStringField;
    VEICULOSxVEICULO: TStringField;
    VEICULOSxTIPO: TStringField;
    VEICULOSxPLACA: TStringField;
    VEICULOSxCHASSIS: TStringField;
    VEICULOSxRENAVAM: TStringField;
    VEICULOSxMARCA_M: TStringField;
    VEICULOSxCOR: TStringField;
    VEICULOSxANO: TStringField;
    VEICULOSxANO_MOD: TStringField;
    VEICULOSxOBSERV: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DADOSVEICULOSf: TDADOSVEICULOSf;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
