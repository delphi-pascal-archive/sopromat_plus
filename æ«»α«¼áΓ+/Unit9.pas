unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm9 = class(TForm)
    GroupBox1: TGroupBox;
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
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    GroupBox2: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    GroupBox3: TGroupBox;
    Label57: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Image1: TImage;
    Image2: TImage;
    Bevel1: TBevel;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit8, Unit7, Unit1;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
form8.Show;
form9.Visible:=false;
end;

procedure TForm9.Button2Click(Sender: TObject);
var
l1,l2,l3,l4,l5,l6,l7,   // длины
q1,q2,q3,q4,q5,q6,q7,   // распред.нагр
mp1,mp3,mp4,mp6,mp7,mp9,mp10,
mp12,mp13,mp15,mp16,mp18,mp19,mp21,  // мом-ты рабочие
me1,me3,me4,me6,me7,me9,me10,
me12,me13,me15,me16,me18,me19,me21,  // мом-ты 1-е ед.сост.
mv1,mv3,mv4,mv6,mv7,mv9,mv10,
mv12,mv13,mv15,mv16,mv18,mv19,mv21,  // мом-ты 2-е ед.сост.
ms1,ms3,ms4,ms6,ms7,ms9,ms10,
ms12,ms13,ms15,ms16,ms18,ms19,ms21,  // мом-ты сумарные
R1,R3,R4,R6,R7,R9,R10,
R12,R13,R15,R16,R18,R19,R21,         // реакции
RS1,RS3,RS4,RS6,RS7,RS9,RS10,
RS12,RS13,RS15,RS16,RS18,RS19,RS21:real;
deltaP1,zu11,x1:real;                // определение x1
begin
l1:=strtofloat(form7.Edit1.Text);
l2:=strtofloat(form7.Edit2.Text);
l3:=strtofloat(form7.Edit3.Text);
l4:=strtofloat(form7.Edit4.Text);
l5:=strtofloat(form7.Edit5.Text);
l6:=strtofloat(form7.Edit6.Text);
l7:=strtofloat(form7.Edit7.Text);
 q1:=strtofloat(form7.Edit8.Text);
 q2:=strtofloat(form7.Edit9.Text);
 q3:=strtofloat(form7.Edit10.Text);
 q4:=strtofloat(form7.Edit11.Text);
 q5:=strtofloat(form7.Edit12.Text);
 q6:=strtofloat(form7.Edit13.Text);
 q7:=strtofloat(form7.Edit14.Text);
  mp1:=strtofloat(form8.Edit1.Text);
  mp3:=strtofloat(form8.Edit2.Text);
  mp4:=strtofloat(form8.Edit3.Text);
  mp6:=strtofloat(form8.Edit4.Text);
  mp7:=strtofloat(form8.Edit5.Text);
  mp9:=strtofloat(form8.Edit6.Text);
  mp10:=strtofloat(form8.Edit7.Text);
  mp12:=strtofloat(form8.Edit8.Text);
  mp13:=strtofloat(form8.Edit9.Text);
  mp15:=strtofloat(form8.Edit10.Text);
  mp16:=strtofloat(form8.Edit11.Text);
  mp18:=strtofloat(form8.Edit12.Text);
  mp19:=strtofloat(form8.Edit13.Text);
  mp21:=strtofloat(form8.Edit14.Text);
   me1:=strtofloat(form8.Edit15.Text);
   me3:=strtofloat(form8.Edit16.Text);
   me4:=strtofloat(form8.Edit17.Text);
   me6:=strtofloat(form8.Edit18.Text);
   me7:=strtofloat(form8.Edit19.Text);
   me9:=strtofloat(form8.Edit20.Text);
   me10:=strtofloat(form8.Edit21.Text);
   me12:=strtofloat(form8.Edit22.Text);
   me13:=strtofloat(form8.Edit23.Text);
   me15:=strtofloat(form8.Edit24.Text);
   me16:=strtofloat(form8.Edit25.Text);
   me18:=strtofloat(form8.Edit26.Text);
   me19:=strtofloat(form8.Edit27.Text);
   me21:=strtofloat(form8.Edit28.Text);
    mv1:=strtofloat(form8.Edit29.Text);
    mv3:=strtofloat(form8.Edit30.Text);
    mv4:=strtofloat(form8.Edit31.Text);
    mv6:=strtofloat(form8.Edit32.Text);
    mv7:=strtofloat(form8.Edit33.Text);
    mv9:=strtofloat(form8.Edit34.Text);
    mv10:=strtofloat(form8.Edit35.Text);
    mv12:=strtofloat(form8.Edit36.Text);
    mv13:=strtofloat(form8.Edit37.Text);
    mv15:=strtofloat(form8.Edit38.Text);
    mv16:=strtofloat(form8.Edit39.Text);
    mv18:=strtofloat(form8.Edit40.Text);
    mv19:=strtofloat(form8.Edit41.Text);
    mv21:=strtofloat(form8.Edit42.Text);

 if l1=0 then R1:=0 else               // собственно решение
R1:=(mp3-mp1+q1*l1*l1/2)/l1;
 if l1=0 then R3:=0 else
R3:=(mp3-mp1-q1*l1*l1/2)/l1;
 if l2=0 then R4:=0 else             
R4:=(mp6-mp4+q2*l2*l2/2)/l2;
 if l2=0 then R6:=0 else
R6:=(mp6-mp4-q2*l2*l2/2)/l2;
 if l3=0 then R7:=0 else
R7:=(mp9-mp7+q3*l3*l3/2)/l3;
 if l3=0 then R9:=0 else
R9:=(mp9-mp7-q3*l3*l3/2)/l3;
 if l4=0 then R10:=0 else
R10:=(mp12-mp10+q4*l4*l4/2)/l4;
 if l4=0 then R12:=0 else
R12:=(mp12-mp10-q4*l4*l4/2)/l4;
 if l5=0 then R13:=0 else
R13:=(mp15-mp13+q5*l5*l5/2)/l5;
 if l5=0 then R15:=0 else
R15:=(mp15-mp13-q5*l5*l5/2)/l5;
 if l6=0 then R16:=0 else
R16:=(mp18-mp16+q6*l6*l6/2)/l6;
 if l6=0 then R18:=0 else
R18:=(mp18-mp16-q6*l6*l6/2)/l6;
 if l7=0 then R19:=0 else
R19:=(mp21-mp19+q7*l7*l7/2)/l7;
 if l7=0 then R21:=0 else
R21:=(mp21-mp19-q7*l7*l7/2)/l7;
deltaP1:=l1*(me1*mp1+2*(me1+me3)*(R1*l1/2+mp1-q1*l1*l1/8)+me3*mp3)+
         l2*(me4*mp4+2*(me4+me6)*(R4*l2/2+mp4-q2*l2*l2/8)+me6*mp6)+
         l3*(me7*mp7+2*(me7+me9)*(R7*l3/2+mp7-q3*l3*l3/8)+me9*mp9)+
         l4*(me10*mp10+2*(me10+me12)*(R10*l4/2+mp10-q4*l4*l4/8)+me12*mp12)+
         l5*(me13*mp13+2*(me13+me15)*(R13*l5/2+mp13-q5*l5*l5/8)+me15*mp15)+
         l6*(me16*mp16+2*(me16+me18)*(R16*l6/2+mp16-q6*l6*l6/8)+me18*mp18)+
         l7*(me19*mp19+2*(me19+me21)*(R19*l7/2+mp19-q7*l7*l7/8)+me21*mp21);
         label63.Caption:=floattostr(deltaP1);
zu11:=l1*(sqr(me1)+4*sqr(me1/2+me3/2)+sqr(me3))+
      l2*(sqr(me4)+4*sqr(me4/2+me6/2)+sqr(me6))+
      l3*(sqr(me7)+4*sqr(me7/2+me9/2)+sqr(me9))+
      l4*(sqr(me10)+4*sqr((me10+me12)/2)+sqr(me12))+
      l5*(sqr(me13)+4*sqr((me13+me15)/2)+sqr(me15))+
      l6*(sqr(me16)+4*sqr((me16+me18)/2)+sqr(me18))+
      l7*(sqr(me19)+4*sqr((me19+me21)/2)+sqr(me21));
         label64.Caption:=floattostr(zu11);
         x1:=-deltaP1/zu11;
         label65.Caption:=floattostr(x1);
   ms1:=mp1+me1*x1;
   ms3:=mp3+me3*x1;
   ms4:=mp4+me4*x1;
   ms6:=mp6+me6*x1;
   ms7:=mp7+me7*x1;
   ms9:=mp9+me9*x1;
   ms10:=mp10+me10*x1;
   ms12:=mp12+me12*x1;
   ms13:=mp13+me13*x1;
   ms15:=mp15+me15*x1;
   ms16:=mp16+me16*x1;
   ms18:=mp18+me18*x1;
   ms19:=mp19+me19*x1;
   ms21:=mp21+me21*x1;
   label43.Caption:=floattostr(ms1);
   label44.Caption:=floattostr(ms3);
   label45.Caption:=floattostr(ms4);
   label46.Caption:=floattostr(ms6);
   label47.Caption:=floattostr(ms7);
   label48.Caption:=floattostr(ms9);
   label49.Caption:=floattostr(ms10);
   label50.Caption:=floattostr(ms12);
   label51.Caption:=floattostr(ms13);
   label52.Caption:=floattostr(ms15);
   label53.Caption:=floattostr(ms16);
   label54.Caption:=floattostr(ms18);
   label55.Caption:=floattostr(ms19);
   label56.Caption:=floattostr(ms21);
  if l1=0 then Rs1:=0 else
 RS1:=(ms3-ms1+q1*l1*l1/2)/l1;
  if l1=0 then Rs3:=0 else
 RS3:=(ms3-ms1-q1*l1*l1/2)/l1;
  if l2=0 then Rs4:=0 else
 RS4:=(ms6-ms4+q2*l2*l2/2)/l2;
  if l2=0 then Rs6:=0 else
 RS6:=(ms6-ms4-q2*l2*l2/2)/l2;
  if l3=0 then Rs7:=0 else
 RS7:=(ms9-ms7+q3*l3*l3/2)/l3;
  if l3=0 then Rs9:=0 else
 RS9:=(ms9-ms7-q3*l3*l3/2)/l3;
  if l4=0 then Rs10:=0 else
 RS10:=(ms12-ms10+q4*l4*l4/2)/l4;
  if l4=0 then Rs12:=0 else
 RS12:=(ms12-ms10-q4*l4*l4/2)/l4;
  if l5=0 then Rs13:=0 else
 RS13:=(ms15-ms13+q5*l5*l5/2)/l5;
  if l5=0 then Rs15:=0 else
 RS15:=(ms15-ms13-q5*l5*l5/2)/l5;
  if l6=0 then Rs16:=0 else
 RS16:=(ms18-ms16+q6*l6*l6/2)/l6;
  if l6=0 then Rs18:=0 else
 RS18:=(ms18-ms16-q6*l6*l6/2)/l6;
  if l7=0 then Rs19:=0 else
 RS19:=(ms21-ms19+q7*l7*l7/2)/l7;
  if l7=0 then Rs21:=0 else
 RS21:=(ms21-ms19-q7*l7*l7/2)/l7;
 
     label15.Caption:=floattostr(Rs1);
     label16.Caption:=floattostr(Rs3);
     label17.Caption:=floattostr(Rs4);
     label18.Caption:=floattostr(Rs6);
     label19.Caption:=floattostr(Rs7);
     label20.Caption:=floattostr(Rs9);
     label21.Caption:=floattostr(Rs10);
     label22.Caption:=floattostr(Rs12);
     label23.Caption:=floattostr(Rs13);
     label24.Caption:=floattostr(Rs15);
     label25.Caption:=floattostr(Rs16);
     label26.Caption:=floattostr(Rs18);
     label27.Caption:=floattostr(Rs19);
     label28.Caption:=floattostr(Rs21);

end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Show;
end;

procedure TForm9.Panel4Click(Sender: TObject);
begin
form8.Show;
form9.Visible:=false;
end;

procedure TForm9.Panel5Click(Sender: TObject);
var
l1,l2,l3,l4,l5,l6,l7,   // длины
q1,q2,q3,q4,q5,q6,q7,   // распред.нагр
mp1,mp3,mp4,mp6,mp7,mp9,mp10,
mp12,mp13,mp15,mp16,mp18,mp19,mp21,  // мом-ты рабочие
me1,me3,me4,me6,me7,me9,me10,
me12,me13,me15,me16,me18,me19,me21,  // мом-ты 1-е ед.сост.
mv1,mv3,mv4,mv6,mv7,mv9,mv10,
mv12,mv13,mv15,mv16,mv18,mv19,mv21,  // мом-ты 2-е ед.сост.
ms1,ms3,ms4,ms6,ms7,ms9,ms10,
ms12,ms13,ms15,ms16,ms18,ms19,ms21,  // мом-ты сумарные
R1,R3,R4,R6,R7,R9,R10,
R12,R13,R15,R16,R18,R19,R21,         // реакции
RS1,RS3,RS4,RS6,RS7,RS9,RS10,
RS12,RS13,RS15,RS16,RS18,RS19,RS21:real;
deltaP1,zu11,x1:real;
begin
l1:=strtofloat(form7.Edit1.Text);
l2:=strtofloat(form7.Edit2.Text);
l3:=strtofloat(form7.Edit3.Text);
l4:=strtofloat(form7.Edit4.Text);
l5:=strtofloat(form7.Edit5.Text);
l6:=strtofloat(form7.Edit6.Text);
l7:=strtofloat(form7.Edit7.Text);
 q1:=strtofloat(form7.Edit8.Text);
 q2:=strtofloat(form7.Edit9.Text);
 q3:=strtofloat(form7.Edit10.Text);
 q4:=strtofloat(form7.Edit11.Text);
 q5:=strtofloat(form7.Edit12.Text);
 q6:=strtofloat(form7.Edit13.Text);
 q7:=strtofloat(form7.Edit14.Text);
  mp1:=strtofloat(form8.Edit1.Text);
  mp3:=strtofloat(form8.Edit2.Text);
  mp4:=strtofloat(form8.Edit3.Text);
  mp6:=strtofloat(form8.Edit4.Text);
  mp7:=strtofloat(form8.Edit5.Text);
  mp9:=strtofloat(form8.Edit6.Text);
  mp10:=strtofloat(form8.Edit7.Text);
  mp12:=strtofloat(form8.Edit8.Text);
  mp13:=strtofloat(form8.Edit9.Text);
  mp15:=strtofloat(form8.Edit10.Text);
  mp16:=strtofloat(form8.Edit11.Text);
  mp18:=strtofloat(form8.Edit12.Text);
  mp19:=strtofloat(form8.Edit13.Text);
  mp21:=strtofloat(form8.Edit14.Text);
   me1:=strtofloat(form8.Edit15.Text);
   me3:=strtofloat(form8.Edit16.Text);
   me4:=strtofloat(form8.Edit17.Text);
   me6:=strtofloat(form8.Edit18.Text);
   me7:=strtofloat(form8.Edit19.Text);
   me9:=strtofloat(form8.Edit20.Text);
   me10:=strtofloat(form8.Edit21.Text);
   me12:=strtofloat(form8.Edit22.Text);
   me13:=strtofloat(form8.Edit23.Text);
   me15:=strtofloat(form8.Edit24.Text);
   me16:=strtofloat(form8.Edit25.Text);
   me18:=strtofloat(form8.Edit26.Text);
   me19:=strtofloat(form8.Edit27.Text);
   me21:=strtofloat(form8.Edit28.Text);
    mv1:=strtofloat(form8.Edit29.Text);
    mv3:=strtofloat(form8.Edit30.Text);
    mv4:=strtofloat(form8.Edit31.Text);
    mv6:=strtofloat(form8.Edit32.Text);
    mv7:=strtofloat(form8.Edit33.Text);
    mv9:=strtofloat(form8.Edit34.Text);
    mv10:=strtofloat(form8.Edit35.Text);
    mv12:=strtofloat(form8.Edit36.Text);
    mv13:=strtofloat(form8.Edit37.Text);
    mv15:=strtofloat(form8.Edit38.Text);
    mv16:=strtofloat(form8.Edit39.Text);
    mv18:=strtofloat(form8.Edit40.Text);
    mv19:=strtofloat(form8.Edit41.Text);
    mv21:=strtofloat(form8.Edit42.Text);

 if l1=0 then R1:=0 else               // собственно решение
R1:=(mp3-mp1+q1*l1*l1/2)/l1;
 if l1=0 then R3:=0 else
R3:=(mp3-mp1-q1*l1*l1/2)/l1;
 if l2=0 then R4:=0 else             
R4:=(mp6-mp4+q2*l2*l2/2)/l2;
 if l2=0 then R6:=0 else
R6:=(mp6-mp4-q2*l2*l2/2)/l2;
 if l3=0 then R7:=0 else
R7:=(mp9-mp7+q3*l3*l3/2)/l3;
 if l3=0 then R9:=0 else
R9:=(mp9-mp7-q3*l3*l3/2)/l3;
 if l4=0 then R10:=0 else
R10:=(mp12-mp10+q4*l4*l4/2)/l4;
 if l4=0 then R12:=0 else
R12:=(mp12-mp10-q4*l4*l4/2)/l4;
 if l5=0 then R13:=0 else
R13:=(mp15-mp13+q5*l5*l5/2)/l5;
 if l5=0 then R15:=0 else
R15:=(mp15-mp13-q5*l5*l5/2)/l5;
 if l6=0 then R16:=0 else
R16:=(mp18-mp16+q6*l6*l6/2)/l6;
 if l6=0 then R18:=0 else
R18:=(mp18-mp16-q6*l6*l6/2)/l6;
 if l7=0 then R19:=0 else
R19:=(mp21-mp19+q7*l7*l7/2)/l7;
 if l7=0 then R21:=0 else
R21:=(mp21-mp19-q7*l7*l7/2)/l7;
deltaP1:=l1*(me1*mp1+2*(me1+me3)*(R1*l1/2+mp1-q1*l1*l1/8)+me3*mp3)+
         l2*(me4*mp4+2*(me4+me6)*(R4*l2/2+mp4-q2*l2*l2/8)+me6*mp6)+
         l3*(me7*mp7+2*(me7+me9)*(R7*l3/2+mp7-q3*l3*l3/8)+me9*mp9)+
         l4*(me10*mp10+2*(me10+me12)*(R10*l4/2+mp10-q4*l4*l4/8)+me12*mp12)+
         l5*(me13*mp13+2*(me13+me15)*(R13*l5/2+mp13-q5*l5*l5/8)+me15*mp15)+
         l6*(me16*mp16+2*(me16+me18)*(R16*l6/2+mp16-q6*l6*l6/8)+me18*mp18)+
         l7*(me19*mp19+2*(me19+me21)*(R19*l7/2+mp19-q7*l7*l7/8)+me21*mp21);
         label63.Caption:=floattostr(deltaP1);
zu11:=l1*(sqr(me1)+4*sqr(me1/2+me3/2)+sqr(me3))+
      l2*(sqr(me4)+4*sqr(me4/2+me6/2)+sqr(me6))+
      l3*(sqr(me7)+4*sqr(me7/2+me9/2)+sqr(me9))+
      l4*(sqr(me10)+4*sqr((me10+me12)/2)+sqr(me12))+
      l5*(sqr(me13)+4*sqr((me13+me15)/2)+sqr(me15))+
      l6*(sqr(me16)+4*sqr((me16+me18)/2)+sqr(me18))+
      l7*(sqr(me19)+4*sqr((me19+me21)/2)+sqr(me21));
         label64.Caption:=floattostr(zu11);
         x1:=-deltaP1/zu11;
         label65.Caption:=floattostr(x1);
   ms1:=mp1+me1*x1;
   ms3:=mp3+me3*x1;
   ms4:=mp4+me4*x1;
   ms6:=mp6+me6*x1;
   ms7:=mp7+me7*x1;
   ms9:=mp9+me9*x1;
   ms10:=mp10+me10*x1;
   ms12:=mp12+me12*x1;
   ms13:=mp13+me13*x1;
   ms15:=mp15+me15*x1;
   ms16:=mp16+me16*x1;
   ms18:=mp18+me18*x1;
   ms19:=mp19+me19*x1;
   ms21:=mp21+me21*x1;
   label43.Caption:=floattostr(ms1);
   label44.Caption:=floattostr(ms3);
   label45.Caption:=floattostr(ms4);
   label46.Caption:=floattostr(ms6);
   label47.Caption:=floattostr(ms7);
   label48.Caption:=floattostr(ms9);
   label49.Caption:=floattostr(ms10);
   label50.Caption:=floattostr(ms12);
   label51.Caption:=floattostr(ms13);
   label52.Caption:=floattostr(ms15);
   label53.Caption:=floattostr(ms16);
   label54.Caption:=floattostr(ms18);
   label55.Caption:=floattostr(ms19);
   label56.Caption:=floattostr(ms21);
  if l1=0 then Rs1:=0 else
 RS1:=(ms3-ms1+q1*l1*l1/2)/l1;
  if l1=0 then Rs3:=0 else
 RS3:=(ms3-ms1-q1*l1*l1/2)/l1;
  if l2=0 then Rs4:=0 else
 RS4:=(ms6-ms4+q2*l2*l2/2)/l2;
  if l2=0 then Rs6:=0 else
 RS6:=(ms6-ms4-q2*l2*l2/2)/l2;
  if l3=0 then Rs7:=0 else
 RS7:=(ms9-ms7+q3*l3*l3/2)/l3;
  if l3=0 then Rs9:=0 else
 RS9:=(ms9-ms7-q3*l3*l3/2)/l3;
  if l4=0 then Rs10:=0 else
 RS10:=(ms12-ms10+q4*l4*l4/2)/l4;
  if l4=0 then Rs12:=0 else
 RS12:=(ms12-ms10-q4*l4*l4/2)/l4;
  if l5=0 then Rs13:=0 else
 RS13:=(ms15-ms13+q5*l5*l5/2)/l5;
  if l5=0 then Rs15:=0 else
 RS15:=(ms15-ms13-q5*l5*l5/2)/l5;
  if l6=0 then Rs16:=0 else
 RS16:=(ms18-ms16+q6*l6*l6/2)/l6;
  if l6=0 then Rs18:=0 else
 RS18:=(ms18-ms16-q6*l6*l6/2)/l6;
  if l7=0 then Rs19:=0 else
 RS19:=(ms21-ms19+q7*l7*l7/2)/l7;
  if l7=0 then Rs21:=0 else
 RS21:=(ms21-ms19-q7*l7*l7/2)/l7;
 
     label15.Caption:=floattostr(Rs1);
     label16.Caption:=floattostr(Rs3);
     label17.Caption:=floattostr(Rs4);
     label18.Caption:=floattostr(Rs6);
     label19.Caption:=floattostr(Rs7);
     label20.Caption:=floattostr(Rs9);
     label21.Caption:=floattostr(Rs10);
     label22.Caption:=floattostr(Rs12);
     label23.Caption:=floattostr(Rs13);
     label24.Caption:=floattostr(Rs15);
     label25.Caption:=floattostr(Rs16);
     label26.Caption:=floattostr(Rs18);
     label27.Caption:=floattostr(Rs19);
     label28.Caption:=floattostr(Rs21);
end;

end.


