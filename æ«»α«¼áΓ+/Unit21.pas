unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm21 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Bevel1: TBevel;
    Panel5: TPanel;
    Panel4: TPanel;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation

uses Unit20, Unit1;

{$R *.dfm}

procedure TForm21.Button3Click(Sender: TObject);
begin
form20.Show;
form21.Visible:=false;
end;

procedure TForm21.Button4Click(Sender: TObject);
var
Ax,Ay,Bx,By:real; //Kooр-ты опор
P1,P1y,P1x,P2,P2y,P2x,Pk1,Pk2:real; // относительно силы Р
q1,q1y,q1x,q2,q2y,q2x,qn1,qk1,qn2,qk2,qk1sr,qk2sr:real; // что касается распред.нагр. q
m1,m2:real; // моменты
mm1,mm2,MP1B,MP1B2,MP2B,MP2B2,Mq1B,Mq1B2,Mq2B,Mq2B2:real; //моменты от сил P и q и (глупость какая то) от моментов M
Rbx,Rby,Ra:real; // реакции в опорах
begin
Ax:=strtofloat(form20.Edit1.Text);
Ay:=strtofloat(form20.Edit2.Text);
Bx:=strtofloat(form20.Edit3.Text);
By:=strtofloat(form20.Edit4.Text);
if form20.CheckBox14.Checked then Pk1:=0 else
          Pk1:=strtofloat(form20.Edit6.Text);
if form20.CheckBox14.Checked then P1:=0 else
          P1:=strtofloat(form20.edit5.Text);
if form20.CheckBox1.Checked then P1y:=P1;
if form20.CheckBox1.Checked then P1x:=0;
if form20.CheckBox2.Checked then P1x:=P1;
if form20.CheckBox2.Checked then P1y:=0;

if form20.CheckBox13.Checked then Pk2:=0 else
          Pk2:=strtofloat(form20.Edit27.Text);
if form20.CheckBox13.Checked then P2:=0 else
          P2:=strtofloat(form20.Edit8.Text);
if form20.CheckBox3.Checked then P2y:=P2;
if form20.CheckBox3.Checked then P2x:=0;
if form20.CheckBox4.Checked then P2x:=P2;
if form20.CheckBox4.Checked then P2y:=0;

if form20.CheckBox15.Checked then q1:=0 else
          q1:=strtofloat(form20.Edit11.Text);
if form20.CheckBox15.Checked then qn1:=0 else
          qn1:=strtofloat(form20.Edit7.Text);
if form20.CheckBox15.Checked then qk1:=0 else
          qk1:=strtofloat(form20.Edit19.Text);
if form20.CheckBox5.Checked then q1y:=q1;
if form20.CheckBox5.Checked then q1x:=0;
if form20.CheckBox6.Checked then q1x:=q1;
if form20.CheckBox6.Checked then q1y:=0;

if form20.CheckBox16.Checked then q2:=0 else
          q2:=strtofloat(form20.Edit14.Text);
if form20.CheckBox16.Checked then qn2:=0 else
          qn2:=strtofloat(form20.Edit10.Text);
if form20.CheckBox16.Checked then qk2:=0 else
          qk2:=strtofloat(form20.Edit9.Text);
if form20.CheckBox7.Checked then q2y:=q2;
if form20.CheckBox7.Checked then q2x:=0;
if form20.CheckBox8.Checked then q2x:=q2;
if form20.CheckBox8.Checked then q2y:=0;

if form20.CheckBox17.Checked then m1:=0 else
        m1:=strtofloat(form20.Edit21.Text);
if form20.CheckBox18.Checked then m2:=0 else
        m2:=strtofloat(form20.Edit24.Text);

if form20.CheckBox10.Checked then mm1:=m1;
if form20.CheckBox9.Checked then mm1:=-m1;

if form20.CheckBox12.Checked then mm2:=m2;
if form20.CheckBox11.Checked then mm2:=-m2;


MP1B:=P1x*(By-Pk1);
MP1B2:=P1y*(Bx-Pk1);

MP2B:=P2x*(By-Pk2);
MP2B2:=P2y*(Bx-Pk2);

qk1sr:=(qk1+qn1)/2;
qk2sr:=(qk2+qn2)/2;

Mq1B:=q1x*(qk1-qn1)*(By-qk1sr);
Mq1B2:=q1y*(qk1-qn1)*(Bx-qk1sr);

Mq2B:=q2x*(qk2-qn2)*(By-qk2sr);
Mq2B2:=q2y*(qk2-qn2)*(Bx-qk2sr);


if form20.RadioButton1.Checked then
   begin
   Rbx:=P1x+P2x+q1x*(qk1-qn1)+q2x*(qk2-qn2);
   Ra:=(MP1B+MP1B2+MP2B+MP2B2+Mq1B+Mq1B2+Mq2B+Mq2B2+mm1+mm2)/(Bx-Ax);
   Rby:=P1y+P2y+q1y*(qk1-qn1)+q2y*(qk2-qn2)-Ra;
   end;


if form20.RadioButton2.Checked then
   begin
   Rby:=P1y+P2y+q1y*(qk1-qn1)+q2y*(qk2-qn2);
   Ra:=(MP1B+MP1B2+MP2B+MP2B2+Mq1B+Mq1B2+Mq2B+Mq2B2+mm1+mm2)/(By-Ay);
   Rbx:=P1x+P2x+q1x*(qk1-qn1)+q2x*(qk2-qn2)-Ra;  //чтото с моментами блин
   end;

   label3.Caption:=floattostr(Rbx);
   label13.Caption:=floattostr(Ra);
   label16.Caption:=floattostr(Rby);
end;

procedure TForm21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Show;
end;

procedure TForm21.Panel4Click(Sender: TObject);
begin
form20.Show;
form21.Visible:=false;
end;

procedure TForm21.Panel5Click(Sender: TObject);
var
Ax,Ay,Bx,By:real; //Kooр-ты опор
P1,P1y,P1x,P2,P2y,P2x,Pk1,Pk2:real; // относительно силы Р
q1,q1y,q1x,q2,q2y,q2x,qn1,qk1,qn2,qk2,qk1sr,qk2sr:real; // что касается распред.нагр. q
m1,m2:real; // моменты
mm1,mm2,MP1B,MP1B2,MP2B,MP2B2,Mq1B,Mq1B2,Mq2B,Mq2B2:real; //моменты от сил P и q и (глупость какая то) от моментов M
Rbx,Rby,Ra:real; // реакции в опорах
begin
Ax:=strtofloat(form20.Edit1.Text);
Ay:=strtofloat(form20.Edit2.Text);
Bx:=strtofloat(form20.Edit3.Text);
By:=strtofloat(form20.Edit4.Text);
if form20.CheckBox14.Checked then Pk1:=0 else
          Pk1:=strtofloat(form20.Edit6.Text);
if form20.CheckBox14.Checked then P1:=0 else
          P1:=strtofloat(form20.edit5.Text);
if form20.CheckBox1.Checked then P1y:=P1;
if form20.CheckBox1.Checked then P1x:=0;
if form20.CheckBox2.Checked then P1x:=P1;
if form20.CheckBox2.Checked then P1y:=0;

if form20.CheckBox13.Checked then Pk2:=0 else
          Pk2:=strtofloat(form20.Edit27.Text);
if form20.CheckBox13.Checked then P2:=0 else
          P2:=strtofloat(form20.Edit8.Text);
if form20.CheckBox3.Checked then P2y:=P2;
if form20.CheckBox3.Checked then P2x:=0;
if form20.CheckBox4.Checked then P2x:=P2;
if form20.CheckBox4.Checked then P2y:=0;

if form20.CheckBox15.Checked then q1:=0 else
          q1:=strtofloat(form20.Edit11.Text);
if form20.CheckBox15.Checked then qn1:=0 else
          qn1:=strtofloat(form20.Edit7.Text);
if form20.CheckBox15.Checked then qk1:=0 else
          qk1:=strtofloat(form20.Edit19.Text);
if form20.CheckBox5.Checked then q1y:=q1;
if form20.CheckBox5.Checked then q1x:=0;
if form20.CheckBox6.Checked then q1x:=q1;
if form20.CheckBox6.Checked then q1y:=0;

if form20.CheckBox16.Checked then q2:=0 else
          q2:=strtofloat(form20.Edit14.Text);
if form20.CheckBox16.Checked then qn2:=0 else
          qn2:=strtofloat(form20.Edit10.Text);
if form20.CheckBox16.Checked then qk2:=0 else
          qk2:=strtofloat(form20.Edit9.Text);
if form20.CheckBox7.Checked then q2y:=q2;
if form20.CheckBox7.Checked then q2x:=0;
if form20.CheckBox8.Checked then q2x:=q2;
if form20.CheckBox8.Checked then q2y:=0;

if form20.CheckBox17.Checked then m1:=0 else
        m1:=strtofloat(form20.Edit21.Text);
if form20.CheckBox18.Checked then m2:=0 else
        m2:=strtofloat(form20.Edit24.Text);

if form20.CheckBox10.Checked then mm1:=m1;
if form20.CheckBox9.Checked then mm1:=-m1;

if form20.CheckBox12.Checked then mm2:=m2;
if form20.CheckBox11.Checked then mm2:=-m2;


MP1B:=P1x*(By-Pk1);
MP1B2:=P1y*(Bx-Pk1);

MP2B:=P2x*(By-Pk2);
MP2B2:=P2y*(Bx-Pk2);

qk1sr:=(qk1+qn1)/2;
qk2sr:=(qk2+qn2)/2;

Mq1B:=q1x*(qk1-qn1)*(By-qk1sr);
Mq1B2:=q1y*(qk1-qn1)*(Bx-qk1sr);

Mq2B:=q2x*(qk2-qn2)*(By-qk2sr);
Mq2B2:=q2y*(qk2-qn2)*(Bx-qk2sr);


if form20.RadioButton1.Checked then
   begin
   Rbx:=P1x+P2x+q1x*(qk1-qn1)+q2x*(qk2-qn2);
   Ra:=(MP1B+MP1B2+MP2B+MP2B2+Mq1B+Mq1B2+Mq2B+Mq2B2+mm1+mm2)/(Bx-Ax);
   Rby:=P1y+P2y+q1y*(qk1-qn1)+q2y*(qk2-qn2)-Ra;
   end;


if form20.RadioButton2.Checked then
   begin
   Rby:=P1y+P2y+q1y*(qk1-qn1)+q2y*(qk2-qn2);
   Ra:=(MP1B+MP1B2+MP2B+MP2B2+Mq1B+Mq1B2+Mq2B+Mq2B2+mm1+mm2)/(By-Ay);
   Rbx:=P1x+P2x+q1x*(qk1-qn1)+q2x*(qk2-qn2)-Ra;  //чтото с моментами блин
   end;

   label3.Caption:=floattostr(Rbx);
   label13.Caption:=floattostr(Ra);
   label16.Caption:=floattostr(Rby);
end;

end.

