unit Unit26;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm26 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form26: TForm26;

implementation

uses Unit10;

{$R *.dfm}

procedure TForm26.Button1Click(Sender: TObject);
begin
form10.Show;
close;
end;

procedure TForm26.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form10.Show;
close;
end;

end.
