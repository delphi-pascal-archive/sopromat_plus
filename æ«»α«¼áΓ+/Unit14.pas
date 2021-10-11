unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm14 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Bevel1: TBevel;
    Panel6: TPanel;
    Panel5: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel6Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses Unit13, Unit25, Unit1;

{$R *.dfm}

procedure TForm14.Button1Click(Sender: TObject);
begin
form13.Show;
form14.Visible:=false;
end;

procedure TForm14.Button2Click(Sender: TObject);
var
l,p1,p2,p1l,p2l,qn1,qk1,q1,qn2,qk2,q2,m1,m2,mm1,mm2,Ma_na_ekran:real;
Ra,Ma:real;
begin
l:=strtofloat(form13.Edit1.Text);
 if form13.CheckBox1.Checked then
p1l:=0 else p1l:=strtofloat(form13.Edit4.Text);
 if form13.CheckBox1.Checked then
p1:=0 else p1:=strtofloat(form13.Edit5.Text);

 if form13.CheckBox2.Checked then
p2l:=0 else p2l:=strtofloat(form13.Edit10.Text);
 if form13.CheckBox2.Checked then
p2:=0 else p2:=strtofloat(form13.Edit11.Text);

 if form13.CheckBox3.Checked then
qn1:=0 else qn1:=strtofloat(form13.Edit6.Text);
 if form13.CheckBox3.Checked then
qk1:=0 else qk1:=strtofloat(form13.Edit7.Text);
 if form13.CheckBox3.Checked then
q1:=0 else q1:=strtofloat(form13.Edit8.Text);

 if form13.CheckBox4.Checked then
qn2:=0 else qn2:=strtofloat(form13.Edit12.Text);
 if form13.CheckBox4.Checked then
qk2:=0 else qk2:=strtofloat(form13.Edit13.Text);
 if form13.CheckBox4.Checked then
q2:=0 else q2:=strtofloat(form13.Edit14.Text);

 if form13.CheckBox5.Checked then
m1:=0 else m1:=strtofloat(form13.Edit9.Text);

 if form13.CheckBox6.Checked then
m2:=0 else m2:=strtofloat(form13.Edit15.Text);

Ra:=p1+p2+q1*(qk1-qn1)+q2*(qk2-qn2);


 if form13.CheckBox7.Checked then
mm1:=-m1;
 if form13.CheckBox8.Checked then
mm1:=m1;

 if form13.CheckBox9.Checked then
mm2:=-m2;
 if form13.CheckBox10.Checked then
mm2:=m2;

if form13.RadioButton1.Checked then
  begin
Ma:=-p1*p1l-p2*p2l+mm1+mm2-q1*(sqr(qk1)/2-sqr(qn1)/2)-q2*(sqr(qk2)/2-sqr(qn2)/2);
Ma_na_ekran:=sqrt(sqr(Ma));
 if Ma>0 then label6.Caption:='по часовой стрелке';
 if Ma<0 then label6.Caption:='против часовой стрелки';
 if Ma=0 then label6.Caption:='';
  end;

if form13.RadioButton2.Checked then
  begin
Ma:=-p1*p1l-p2*p2l-mm1-mm2-q1*(sqr(qk1)/2-sqr(qn1)/2)-q2*(sqr(qk2)/2-sqr(qn2)/2);
Ma_na_ekran:=sqrt(sqr(Ma));
 if Ma>0 then label6.Caption:='против часовой стрелки';
 if Ma<0 then label6.Caption:='по часовой стрелке';
 if Ma=0 then label6.Caption:='';
  end;

label4.Caption:=floattostr(Ma_na_ekran);
label2.Caption:=floattostr(Ra);

if
(l<p1l) or (l<p2l) or (l<qn1) or (l<qk1) or (l<qn2) or(l<qk2) then
  begin
  label4.Caption:='';
  label2.Caption:='';
  label6.Caption:='';
form25.ShowModal;
  end;

end;

procedure TForm14.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Show;
end;

procedure TForm14.Panel6Click(Sender: TObject);
begin
form13.Show;
form14.Visible:=false;
end;

procedure TForm14.Panel5Click(Sender: TObject);
var
l,p1,p2,p1l,p2l,qn1,qk1,q1,qn2,qk2,q2,m1,m2,mm1,mm2,Ma_na_ekran:real;
Ra,Ma:real;
begin
l:=strtofloat(form13.Edit1.Text);
 if form13.CheckBox1.Checked then
p1l:=0 else p1l:=strtofloat(form13.Edit4.Text);
 if form13.CheckBox1.Checked then
p1:=0 else p1:=strtofloat(form13.Edit5.Text);

 if form13.CheckBox2.Checked then
p2l:=0 else p2l:=strtofloat(form13.Edit10.Text);
 if form13.CheckBox2.Checked then
p2:=0 else p2:=strtofloat(form13.Edit11.Text);

 if form13.CheckBox3.Checked then
qn1:=0 else qn1:=strtofloat(form13.Edit6.Text);
 if form13.CheckBox3.Checked then
qk1:=0 else qk1:=strtofloat(form13.Edit7.Text);
 if form13.CheckBox3.Checked then
q1:=0 else q1:=strtofloat(form13.Edit8.Text);

 if form13.CheckBox4.Checked then
qn2:=0 else qn2:=strtofloat(form13.Edit12.Text);
 if form13.CheckBox4.Checked then
qk2:=0 else qk2:=strtofloat(form13.Edit13.Text);
 if form13.CheckBox4.Checked then
q2:=0 else q2:=strtofloat(form13.Edit14.Text);

 if form13.CheckBox5.Checked then
m1:=0 else m1:=strtofloat(form13.Edit9.Text);

 if form13.CheckBox6.Checked then
m2:=0 else m2:=strtofloat(form13.Edit15.Text);

Ra:=p1+p2+q1*(qk1-qn1)+q2*(qk2-qn2);


 if form13.CheckBox7.Checked then
mm1:=-m1;
 if form13.CheckBox8.Checked then
mm1:=m1;

 if form13.CheckBox9.Checked then
mm2:=-m2;
 if form13.CheckBox10.Checked then
mm2:=m2;

if form13.RadioButton1.Checked then
  begin
Ma:=-p1*p1l-p2*p2l+mm1+mm2-q1*(sqr(qk1)/2-sqr(qn1)/2)-q2*(sqr(qk2)/2-sqr(qn2)/2);
Ma_na_ekran:=sqrt(sqr(Ma));
 if Ma>0 then label6.Caption:='по часовой стрелке';
 if Ma<0 then label6.Caption:='против часовой стрелки';
 if Ma=0 then label6.Caption:='';
  end;

if form13.RadioButton2.Checked then
  begin
Ma:=-p1*p1l-p2*p2l-mm1-mm2-q1*(sqr(qk1)/2-sqr(qn1)/2)-q2*(sqr(qk2)/2-sqr(qn2)/2);
Ma_na_ekran:=sqrt(sqr(Ma));
 if Ma>0 then label6.Caption:='против часовой стрелки';
 if Ma<0 then label6.Caption:='по часовой стрелке';
 if Ma=0 then label6.Caption:='';
  end;

label4.Caption:=floattostr(Ma_na_ekran);
label2.Caption:=floattostr(Ra);

if
(l<p1l) or (l<p2l) or (l<qn1) or (l<qk1) or (l<qn2) or(l<qk2) then
  begin
  label4.Caption:='';
  label2.Caption:='';
  label6.Caption:='';
form25.ShowModal;
end;
end;

end.
