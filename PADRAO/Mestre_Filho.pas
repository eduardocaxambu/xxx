unit Mestre_Filho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Mestre, Vcl.ExtCtrls, Vcl.StdCtrls,
  cxClasses;

type
  TMestre_Filho_FRM = class(TMestre_FRM)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Mestre_Filho_FRM: TMestre_Filho_FRM;

implementation

{$R *.dfm}

end.
