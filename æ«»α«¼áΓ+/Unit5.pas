unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons;

type
  TForm5 = class(TForm)
    Memo1: TMemo;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1, Unit15;

{$R *.dfm}

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
form1.Visible:=true;
close;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
form15.Show;
close;
end;

procedure TForm5.Label1Click(Sender: TObject);
begin
form15.Visible:=true;
close;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
form1.Show;
close;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Show;
end;

end.
