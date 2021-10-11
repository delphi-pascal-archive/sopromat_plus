unit Unit24;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm24 = class(TForm)
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
  Form24: TForm24;

implementation

uses Unit23, Unit1;

{$R *.dfm}

procedure TForm24.Button3Click(Sender: TObject);
begin
form23.Show;
form24.Visible:=false;
end;

procedure TForm24.Button4Click(Sender: TObject);
var
Ax,Ay:real; //Kooр-ты опор
P1,P1y,P1x,P2,P2y,P2x,Pk1,Pk2:real; // относительно силы Р
q1,q1y,q1x,q2,q2y,q2x,qn1,qk1,qn2,qk2,qk1sr,qk2sr:real; // что касается распред.нагр. q
m1,m2:real; // моменты
mm1,mm2,MP1A,MP1A2,MP2A,MP2A2,Mq1A,Mq1A2,Mq2A,Mq2A2:real; //моменты от сил P и q и (глупость какая то) от моментов M
Rax,Ray,Ma,Ma_na_ekran:real; // реакции в защемлении
begin
Ax:=strtofloat(form23.Edit1.Text);
Ay:=strtofloat(form23.Edit2.Text);

if form23.CheckBox13.Checked then Pk1:=0 else
   Pk1:=strtofloat(form23.Edit6.Text);
if form23.CheckBox13.Checked then P1:=0 else
   P1:=strtofloat(form23.edit5.Text);

if form23.CheckBox14.Checked then P2:=0
   else P2:=strtofloat(form23.Edit8.Text);
if form23.CheckBox14.Checked then Pk2:=0
   else Pk2:=strtofloat(form23.Edit27.Text);

if form23.CheckBox1.Checked then P1y:=P1;
if form23.CheckBox1.Checked then P1x:=0;
if form23.CheckBox2.Checked then P1x:=P1;
if form23.CheckBox2.Checked then P1y:=0;


if form23.CheckBox3.Checked then P2y:=P2;
if form23.CheckBox3.Checked then P2x:=0;
if form23.CheckBox4.Checked then P2x:=P2;
if form23.CheckBox4.Checked then P2y:=0;

if form23.CheckBox15.Checked then q1:=0 else
   q1:=strtofloat(form23.Edit11.Text);
if form23.CheckBox15.Checked then qn1:=0 else
   qn1:=strtofloat(form23.Edit7.Text);
if form23.CheckBox15.Checked then qk1:=0 else
   qk1:=strtofloat(form23.Edit19.Text);
if form23.CheckBox5.Checked then q1y:=q1;
if form23.CheckBox5.Checked then q1x:=0;
if form23.CheckBox6.Checked then q1x:=q1;
if form23.CheckBox6.Checked then q1y:=0;

if form23.CheckBox16.Checked then q2:=0 else
   q2:=strtofloat(form23.Edit14.Text);
if form23.CheckBox16.Checked then qn2:=0 else
   qn2:=strtofloat(form23.Edit10.Text);
if form23.CheckBox16.Checked then qk2:=0 else
   qk2:=strtofloat(form23.Edit9.Text);
if form23.CheckBox7.Checked then q2y:=q2;
if form23.CheckBox7.Checked then q2x:=0;
if form23.CheckBox8.Checked then q2x:=q2;
if form23.CheckBox8.Checked then q2y:=0;

if form23.CheckBox17.Checked then m1:=0 else
   m1:=strtofloat(form23.Edit21.Text);
if form23.CheckBox18.Checked then m2:=0 else
   m2:=strtofloat(form23.Edit24.Text);

  Rax:=P1x+P2x+q1x*(qk1-qn1)+q2x*(qk2-qn2);
   label13.Caption:=floattostr(Rax);

  Ray:=P1y+P2y+q1y*(qk1-qn1)+q2y*(qk2-qn2);
   label14.Caption:=floattostr(Ray);

MP1A:=P1x*(Ay-Pk1);
MP1A2:=P1y*(Ax-Pk1);

MP2A:=P2x*(Ay-Pk2);
MP2A2:=P2y*(Ax-Pk2);

qk1sr:=(qk1+qn1)/2;
qk2sr:=(qk2+qn2)/2;

Mq1A:=q1x*(qk1-qn1)*(Ay-qk1sr);
Mq1A2:=q1y*(qk1-qn1)*(Ax-qk1sr);

Mq2A:=q2x*(qk2-qn2)*(Ay-qk2sr);
Mq2A2:=q2y*(qk2-qn2)*(Ax-qk2sr);

if form23.CheckBox10.Checked then mm1:=m1;
if form23.CheckBox9.Checked then mm1:=-m1;

if form23.CheckBox12.Checked then mm2:=m2;
if form23.CheckBox11.Checked then mm2:=-m2;

Ma:=MP1A+MP1A2+MP2A+MP2A2+Mq1A+Mq1A2+Mq2A+Mq2A2+mm1+mm2;

if Ma>0 then
        label15.Caption:='по часовой стрелке';
if Ma<0 then
        label15.Caption:='против часовой стрелки';
if Ma=0 then
        label15.Caption:='';
Ma_na_ekran:=sqrt(sqr(Ma));
label3.Caption:=floattostr(Ma_na_ekran);
end;

procedure TForm24.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Show;
end;

procedure TForm24.Panel4Click(Sender: TObject);
begin
form23.Show;
form24.Visible:=false;
end;

procedure TForm24.Panel5Click(Sender: TObject);
var
Ax,Ay:real; //Kooр-ты опор
P1,P1y,P1x,P2,P2y,P2x,Pk1,Pk2:real; // относительно силы Р
q1,q1y,q1x,q2,q2y,q2x,qn1,qk1,qn2,qk2,qk1sr,qk2sr:real; // что касается распред.нагр. q
m1,m2:real; // моменты
mm1,mm2,MP1A,MP1A2,MP2A,MP2A2,Mq1A,Mq1A2,Mq2A,Mq2A2:real; //моменты от сил P и q и (глупость какая то) от моментов M
Rax,Ray,Ma,Ma_na_ekran:real; // реакции в защемлении
begin
Ax:=strtofloat(form23.Edit1.Text);
Ay:=strtofloat(form23.Edit2.Text);

if form23.CheckBox13.Checked then Pk1:=0 else
   Pk1:=strtofloat(form23.Edit6.Text);
if form23.CheckBox13.Checked then P1:=0 else
   P1:=strtofloat(form23.edit5.Text);

if form23.CheckBox14.Checked then P2:=0
   else P2:=strtofloat(form23.Edit8.Text);
if form23.CheckBox14.Checked then Pk2:=0
   else Pk2:=strtofloat(form23.Edit27.Text);

if form23.CheckBox1.Checked then P1y:=P1;
if form23.CheckBox1.Checked then P1x:=0;
if form23.CheckBox2.Checked then P1x:=P1;
if form23.CheckBox2.Checked then P1y:=0;


if form23.CheckBox3.Checked then P2y:=P2;
if form23.CheckBox3.Checked then P2x:=0;
if form23.CheckBox4.Checked then P2x:=P2;
if form23.CheckBox4.Checked then P2y:=0;

if form23.CheckBox15.Checked then q1:=0 else
   q1:=strtofloat(form23.Edit11.Text);
if form23.CheckBox15.Checked then qn1:=0 else
   qn1:=strtofloat(form23.Edit7.Text);
if form23.CheckBox15.Checked then qk1:=0 else
   qk1:=strtofloat(form23.Edit19.Text);
if form23.CheckBox5.Checked then q1y:=q1;
if form23.CheckBox5.Checked then q1x:=0;
if form23.CheckBox6.Checked then q1x:=q1;
if form23.CheckBox6.Checked then q1y:=0;

if form23.CheckBox16.Checked then q2:=0 else
   q2:=strtofloat(form23.Edit14.Text);
if form23.CheckBox16.Checked then qn2:=0 else
   qn2:=strtofloat(form23.Edit10.Text);
if form23.CheckBox16.Checked then qk2:=0 else
   qk2:=strtofloat(form23.Edit9.Text);
if form23.CheckBox7.Checked then q2y:=q2;
if form23.CheckBox7.Checked then q2x:=0;
if form23.CheckBox8.Checked then q2x:=q2;
if form23.CheckBox8.Checked then q2y:=0;

if form23.CheckBox17.Checked then m1:=0 else
   m1:=strtofloat(form23.Edit21.Text);
if form23.CheckBox18.Checked then m2:=0 else
   m2:=strtofloat(form23.Edit24.Text);

  Rax:=P1x+P2x+q1x*(qk1-qn1)+q2x*(qk2-qn2);
   label13.Caption:=floattostr(Rax);

  Ray:=P1y+P2y+q1y*(qk1-qn1)+q2y*(qk2-qn2);
   label14.Caption:=floattostr(Ray);

MP1A:=P1x*(Ay-Pk1);
MP1A2:=P1y*(Ax-Pk1);

MP2A:=P2x*(Ay-Pk2);
MP2A2:=P2y*(Ax-Pk2);

qk1sr:=(qk1+qn1)/2;
qk2sr:=(qk2+qn2)/2;

Mq1A:=q1x*(qk1-qn1)*(Ay-qk1sr);
Mq1A2:=q1y*(qk1-qn1)*(Ax-qk1sr);

Mq2A:=q2x*(qk2-qn2)*(Ay-qk2sr);
Mq2A2:=q2y*(qk2-qn2)*(Ax-qk2sr);

if form23.CheckBox10.Checked then mm1:=m1;
if form23.CheckBox9.Checked then mm1:=-m1;

if form23.CheckBox12.Checked then mm2:=m2;
if form23.CheckBox11.Checked then mm2:=-m2;

Ma:=MP1A+MP1A2+MP2A+MP2A2+Mq1A+Mq1A2+Mq2A+Mq2A2+mm1+mm2;

if Ma>0 then
        label15.Caption:='по часовой стрелке';
if Ma<0 then
        label15.Caption:='против часовой стрелки';
if Ma=0 then
        label15.Caption:='';
Ma_na_ekran:=sqrt(sqr(Ma));
label3.Caption:=floattostr(Ma_na_ekran);
end;

end.
