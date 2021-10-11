unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TForm6 = class(TForm)
    Label6: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button3: TButton;
    Bevel1: TBevel;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Image3: TImage;
    Label3: TLabel;
    Image4: TImage;
    Image5: TImage;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
var
lambda,lambda1,lambda2,fi1,fi2,fiItogovoe:real;
begin
lambda:=strtofloat(edit1.Text);
lambda1:=strtofloat(edit2.Text);
lambda2:=strtofloat(edit3.Text);
fi1:=strtofloat(edit4.Text);
fi2:=strtofloat(edit5.Text);
fiItogovoe:=fi1-(fi1-fi2)*(lambda-lambda1)/(lambda2-lambda1);
label6.Caption:=floattostr(fiItogovoe);
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
label6.Caption:='';
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
form1.Show;
close;
end;

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
label6.Caption:='';
end;

end.
