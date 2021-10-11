unit Unit25;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm25 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form25: TForm25;

implementation

uses Unit13;

{$R *.dfm}

procedure TForm25.Button1Click(Sender: TObject);
begin
form13.Show;
close;
end;

procedure TForm25.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form13.Show;
close;
end;

end.
