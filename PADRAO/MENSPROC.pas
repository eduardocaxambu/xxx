unit MENSPROC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TMENSPROCF = class(TForm)
    Panel8X: TPanel;
    Panel1X: TPanel;
    Panel1: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MENSPROCF: TMENSPROCF;

implementation

uses FUNCOES;

{$R *.dfm}

procedure TMENSPROCF.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Panel1X.Left:=(ClientWidth-Panel1X.Width) div 2;
  Panel1X.Top:=(ClientHeight-Panel1X.Height) div 2;
end;

procedure TMENSPROCF.FormShow(Sender: TObject);
begin
  Panel1.BevelInner:=bvNone;
  Panel2.BevelInner:=bvNone;
  Panel3.BevelInner:=bvNone;
  Panel4.BevelInner:=bvNone;
  Panel5.BevelInner:=bvNone;
  Panel6.BevelInner:=bvNone;
  Panel7.BevelInner:=bvNone;
  Panel8.BevelInner:=bvNone;
  Panel9.BevelInner:=bvNone;
  Panel10.BevelInner:=bvNone;
  {if cor<>'' then
    Color:=StringToColor(cor);}
end;

end.
