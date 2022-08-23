unit TrocaPreco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, mestre2, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.ExtCtrls;

type
  TTrocaPrecof = class(Tmestre2_FRM)
    Panel48: TPanel;
    Label35: TLabel;
    Label30: TLabel;
    Label21: TLabel;
    RealEdit2: TCurrencyEdit;
    CurrencyEdit18: TCurrencyEdit;
    RealEdit6: TCurrencyEdit;
    Panel27: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel137: TPanel;
    Panel138: TPanel;
    Panel139: TPanel;
    Panel140: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    procedure RealEdit6Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit18Exit(Sender: TObject);
    procedure RealEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrocaPrecof: TTrocaPrecof;

implementation

{$R *.dfm}

uses FrentredeCaixa;

procedure TTrocaPrecof.CurrencyEdit18Exit(Sender: TObject);
begin
  inherited;
  if (PrecoaVista>0) and  (PrecoaPrazo>0) then begin
     with TTrocaPrecof.Create(Self) do begin
      Panel48.Visible:=false;
      Panel1.Visible:=true;
      Width:=Panel1.Width;
      Height:=Panel1.Height;
      ShowModal;
    end;
    if PrecoVistaPrazo='V' then
      RealEdit2.Value:=PrecoaVista
    else
      RealEdit2.Value:=PrecoaPrazo;
  end;
end;

procedure TTrocaPrecof.FormShow(Sender: TObject);
begin
  inherited;
  Panel48.Align:=alclient;
  Panel1.Align:=alclient;
end;

procedure TTrocaPrecof.RealEdit2Exit(Sender: TObject);
begin
  inherited;
  RealEdit6.Value:=CurrencyEdit18.Value*RealEdit2.Value;
end;

procedure TTrocaPrecof.RealEdit6Exit(Sender: TObject);
begin
  inherited;
  ConfirmaItemVenda:='S';
  QuantidadePassada:=CurrencyEdit18.Value;
  PrecoPassado:=RealEdit2.Value;
  close;
end;

end.
