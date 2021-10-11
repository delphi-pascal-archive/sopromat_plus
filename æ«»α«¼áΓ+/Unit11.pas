unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons;

type
  TForm11 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label15: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel1: TBevel;
    SpeedButton1: TSpeedButton;
    Panel5: TPanel;
    Panel4: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit10, Unit26, Unit1;

{$R *.dfm}

procedure TForm11.Button1Click(Sender: TObject);
begin
form10.Show;
form11.Visible:=false;
end;

procedure TForm11.Button2Click(Sender: TObject);
var
l,la,lb,p1,p2,p1l,p2l,qn1,qk1,q1,qn2,qk2,q2,m1,m2,mm1,mm2:real;
Ra,Rb:real;
begin
l:=strtofloat(form10.Edit1.Text);
la:=strtofloat(form10.Edit2.Text);
lb:=strtofloat(form10.Edit3.Text);

 if form10.CheckBox1.Checked then p1l:=0
else p1l:=strtofloat(form10.Edit4.Text);
 if form10.CheckBox1.Checked then p1:=0
else p1:=strtofloat(form10.Edit5.Text);

 if form10.CheckBox2.Checked then p2l:=0
else p2l:=strtofloat(form10.Edit10.Text);
 if form10.CheckBox2.Checked then p2:=0
else p2:=strtofloat(form10.Edit11.Text);

 if form10.CheckBox3.Checked then qn1:=0
else qn1:=strtofloat(form10.Edit6.Text);
 if form10.CheckBox3.Checked then qk1:=0
else qk1:=strtofloat(form10.Edit7.Text);
 if form10.CheckBox3.Checked then q1:=0
else q1:=strtofloat(form10.Edit8.Text);

 if form10.CheckBox4.Checked then qn2:=0
else qn2:=strtofloat(form10.Edit12.Text);
 if form10.CheckBox4.Checked then qk2:=0
else qk2:=strtofloat(form10.Edit13.Text);
 if form10.CheckBox4.Checked then q2:=0
else q2:=strtofloat(form10.Edit14.Text);

 if form10.CheckBox9.Checked then m1:=0
else m1:=strtofloat(form10.Edit9.Text);

 if form10.CheckBox10.Checked then m2:=0
else m2:=strtofloat(form10.Edit15.Text);

 if form10.CheckBox6.Checked then mm1:=m1;
 if form10.CheckBox5.Checked then mm1:=-m1;

 if form10.CheckBox8.Checked then mm2:=m2;
 if form10.CheckBox7.Checked then mm2:=-m2;

Ra:=(p1*(lb-p1l)+p2*(lb-p2l)+q1*(qk1-qn1)*((qk1-qn1)/2+(lb-qk1))+q2*(qk2-qn2)*((qk2-qn2)/2+(lb-qk2))+mm1+mm2)/(lb-la);
Rb:=q1*(qk1-qn1)+q2*(qk2-qn2)+p1+p2-Ra;
label2.Caption:=floattostr(Ra);
label4.Caption:=floattostr(Rb);

if (l<p1l) or (l<p2l) or (l<qn1) or (l<qk1) or (l<qn2) or(l<qk2) or (l<la) or (l<lb) then
  begin
  label2.Caption:='';
  label4.Caption:='';
form26.ShowModal;
  end;
SpeedButton1.Enabled:=true;
end;

procedure TForm11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Show;
end;

procedure TForm11.SpeedButton1Click(Sender: TObject);
var
mytxt:textfile;
s:String;
begin
 AssignFile(mytxt,'Результат_балка.txt');
 Rewrite(mytxt);
 try
 s:='Длина балки: '+form10.Edit1.Text+' м';
  writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:='Координата опоры A: '+form10.Edit2.Text+' м';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:='Координата опоры B: '+form10.Edit3.Text+' м';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:='';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:='Данные относительно сосредоточенной силы Р:';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:=' Координата Р1: '+form10.Edit4.Text+' м';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:=' Значение Р1: '+form10.Edit5.Text+' кН';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:='   Координата Р2: '+form10.Edit10.Text+' м';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:='   Значение Р2: '+form10.Edit11.Text+' кН';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:='';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:='Данные относительно распределенной нагрузки q:';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:=' Координата начала q1: '+form10.Edit6.Text+' м';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:=' Координата конца q1: '+form10.Edit7.Text+' м';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:=' Значение q1: '+form10.Edit8.Text+' м';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:='   Координата начала q2: '+form10.Edit12.Text+' м';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:='   Координата конца q2: '+form10.Edit13.Text+' м';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:='   Значение q2: '+form10.Edit14.Text+' кН';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:='';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:='Данные относительно изгибающего момента M:';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:=' Значение М1: '+form10.Edit9.Text+' кН/м';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 if form10.CheckBox9.Checked then s:=''
                             else
 begin
 if form10.CheckBox5.Checked then
 s:=' Вращает по часовой стрелке';
 if form10.CheckBox6.Checked then
 s:=' Вращает против часовой стрелки';
 end;
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:='   Значение М2: '+form10.Edit15.Text+' кН/м';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 if form10.CheckBox10.Checked then s:=''
                              else
 begin
 if form10.CheckBox7.Checked then
 s:='   Вращает по часовой стрелке';
 if form10.CheckBox8.Checked then
 s:='   Вращает против часовой стрелки';
 end;
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:='';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:='Результаты: ';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:=' Реакция опоры А: '+label2.Caption+' кН';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
 AssignFile(mytxt,'Результат_балка.txt');
 Append(mytxt);
 try
 s:=' Реакция опоры B: '+ label4.Caption+' кН';
 writeln(mytxt,s);
 finally;
CloseFile(mytxt);
end;
end;

procedure TForm11.Panel4Click(Sender: TObject);
begin
form10.Show;
form11.Visible:=false;
end;

procedure TForm11.Panel5Click(Sender: TObject);
var
l,la,lb,p1,p2,p1l,p2l,qn1,qk1,q1,qn2,qk2,q2,m1,m2,mm1,mm2:real;
Ra,Rb:real;
begin
l:=strtofloat(form10.Edit1.Text);
la:=strtofloat(form10.Edit2.Text);
lb:=strtofloat(form10.Edit3.Text);

 if form10.CheckBox1.Checked then p1l:=0
else p1l:=strtofloat(form10.Edit4.Text);
 if form10.CheckBox1.Checked then p1:=0
else p1:=strtofloat(form10.Edit5.Text);

 if form10.CheckBox2.Checked then p2l:=0
else p2l:=strtofloat(form10.Edit10.Text);
 if form10.CheckBox2.Checked then p2:=0
else p2:=strtofloat(form10.Edit11.Text);

 if form10.CheckBox3.Checked then qn1:=0
else qn1:=strtofloat(form10.Edit6.Text);
 if form10.CheckBox3.Checked then qk1:=0
else qk1:=strtofloat(form10.Edit7.Text);
 if form10.CheckBox3.Checked then q1:=0
else q1:=strtofloat(form10.Edit8.Text);

 if form10.CheckBox4.Checked then qn2:=0
else qn2:=strtofloat(form10.Edit12.Text);
 if form10.CheckBox4.Checked then qk2:=0
else qk2:=strtofloat(form10.Edit13.Text);
 if form10.CheckBox4.Checked then q2:=0
else q2:=strtofloat(form10.Edit14.Text);

 if form10.CheckBox9.Checked then m1:=0
else m1:=strtofloat(form10.Edit9.Text);

 if form10.CheckBox10.Checked then m2:=0
else m2:=strtofloat(form10.Edit15.Text);

 if form10.CheckBox6.Checked then mm1:=m1;
 if form10.CheckBox5.Checked then mm1:=-m1;

 if form10.CheckBox8.Checked then mm2:=m2;
 if form10.CheckBox7.Checked then mm2:=-m2;

Ra:=(p1*(lb-p1l)+p2*(lb-p2l)+q1*(qk1-qn1)*((qk1-qn1)/2+(lb-qk1))+q2*(qk2-qn2)*((qk2-qn2)/2+(lb-qk2))+mm1+mm2)/(lb-la);
Rb:=q1*(qk1-qn1)+q2*(qk2-qn2)+p1+p2-Ra;
label2.Caption:=floattostr(Ra);
label4.Caption:=floattostr(Rb);

if (l<p1l) or (l<p2l) or (l<qn1) or (l<qk1) or (l<qn2) or(l<qk2) or (l<la) or (l<lb) then
  begin
  label2.Caption:='';
  label4.Caption:='';
form26.ShowModal;
  end;
SpeedButton1.Enabled:=true;
end;

end.
