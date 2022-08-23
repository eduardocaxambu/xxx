unit mapas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Mestre, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxMapControlTypes, dxMapControl, dxMapControlOpenStreetMapImageryDataProvider,
  cxClasses, dxMapLayer, dxMapImageTileLayer, dxMapItem, dxCustomMapItemLayer,
  dxMapItemLayer;

type
  Tmapas_FRM = class(TMestre_FRM)
    dxMapControl1: TdxMapControl;
    dxMapControl1ImageTileLayer1: TdxMapImageTileLayer;
    dxMapControl1ItemLayer1: TdxMapItemLayer;
    dxMapControl1ItemLayer1CustomElement1: TdxMapCustomElement;
    dxMapControl1ItemLayer1CustomElement2: TdxMapCustomElement;
    dxMapControl1ItemLayer1CustomElement3: TdxMapCustomElement;
    dxMapControl1ItemLayer1CustomElement4: TdxMapCustomElement;
    dxMapControl1ItemLayer1CustomElement5: TdxMapCustomElement;
    dxMapControl1ItemLayer1CustomElement6: TdxMapCustomElement;
    dxMapControl1ItemLayer1CustomElement7: TdxMapCustomElement;
    dxMapControl1ItemLayer1CustomElement8: TdxMapCustomElement;
    dxMapControl1ItemLayer1CustomElement9: TdxMapCustomElement;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mapas_FRM: Tmapas_FRM;

implementation

{$R *.dfm}

procedure Tmapas_FRM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(mapas_FRM);
  Action:=caFree;
end;

end.
