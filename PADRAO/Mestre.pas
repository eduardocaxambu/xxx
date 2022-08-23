unit Mestre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TMestre_FRM = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Mestre_FRM: TMestre_FRM;

implementation

{$R *.dfm}

uses FUNCOES;

procedure TMestre_FRM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  MudaComEnter(key);
  if key=vk_escape then
    close;
  if key=vk_f12 then
    close;
end;

end.
