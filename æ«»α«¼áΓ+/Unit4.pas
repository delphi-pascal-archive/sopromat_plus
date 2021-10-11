unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, jpeg, ExtCtrls;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Panel4: TPanel;
    Label26: TLabel;
    Label8: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Panel5: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label14: TLabel;
    Label29: TLabel;
    Panel6: TPanel;
    Label7: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    Image1: TImage;
    Label31: TLabel;
    Image2: TImage;
    Label9: TLabel;
    Label32: TLabel;
    Image3: TImage;
    Label33: TLabel;
    Label34: TLabel;
    Image4: TImage;
    Label10: TLabel;
    Label35: TLabel;
    Label30: TLabel;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Bevel1: TBevel;
    Panel7: TPanel;
    Panel8: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel7Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit3, Unit2, Unit1;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
form3.Show;
form4.Visible:=false;
end;

procedure TForm4.Button2Click(Sender: TObject);
var
E,G,a,b,h,l1,l2,l3,l4,l5:real;
sigma1,sigma2,sigma3,sigma4:real;
drob1,drob2:real;
Vy,Vz,V:real;
Wz,Wy,h1,b1,Iz,Iy,beta,fi:real;
M,M1,M2,M3,M4,M5,M6,M7,M8,M9,M10,M11,M12,M13,M14,M15,Me1,Me2,Me3,Me4,Me5,Me6,Me7,Me8,Me9,Me10,Me11,Me12,Me13,Me14,Me15:real;
i:integer;
begin
E:=strtofloat(form2.Edit1.Text);
G:=strtofloat(form2.edit2.Text);
a:=strtofloat(form2.edit3.Text);
b:=strtofloat(form2.edit4.Text);
h:=strtofloat(form2.edit5.Text);
l1:=strtofloat(form2.edit6.Text);
l2:=strtofloat(form2.edit7.Text);
l3:=strtofloat(form2.edit8.Text);
l4:=strtofloat(form2.edit9.Text);
l5:=strtofloat(form2.edit10.Text);
M:=strtofloat(form3.edit1.Text);
M1:=strtofloat(form3.edit2.Text);
M2:=strtofloat(form3.edit3.Text);
M3:=strtofloat(form3.edit4.Text);
M4:=strtofloat(form3.edit5.Text);
M5:=strtofloat(form3.edit6.Text);
M6:=strtofloat(form3.edit7.Text);
M7:=strtofloat(form3.edit8.Text);
M8:=strtofloat(form3.edit9.Text);
M9:=strtofloat(form3.edit10.Text);
M10:=strtofloat(form3.edit11.Text);
M11:=strtofloat(form3.edit12.Text);
M12:=strtofloat(form3.edit13.Text);
M13:=strtofloat(form3.edit14.Text);
M14:=strtofloat(form3.edit15.Text);
M15:=strtofloat(form3.edit16.Text);
Me1:=strtofloat(form3.edit17.Text);
Me2:=strtofloat(form3.edit18.Text);
Me3:=strtofloat(form3.edit19.Text);
Me4:=strtofloat(form3.edit20.Text);
Me5:=strtofloat(form3.edit21.Text);
Me6:=strtofloat(form3.edit22.Text);
Me7:=strtofloat(form3.edit23.Text);
Me8:=strtofloat(form3.edit24.Text);
Me9:=strtofloat(form3.edit25.Text);
Me10:=strtofloat(form3.edit26.Text);
Me11:=strtofloat(form3.edit27.Text);
Me12:=strtofloat(form3.edit28.Text);
Me13:=strtofloat(form3.edit29.Text);
Me14:=strtofloat(form3.edit30.Text);
Me15:=strtofloat(form3.edit31.Text);

Wz:=(M*1000/G)*(sin(a*pi/180)+(h/b)*cos(a*pi/180));
label16.Caption:=floattostr(Wz);
Wy:=Wz*b/h;
label17.Caption:=floattostr(Wy);
h1:=exp(ln(Wz*6*(h/b))*(1/3));
label19.Caption:=floattostr(h1);
b1:=h1*(b/h);
label18.Caption:=floattostr(b1);
Iz:=(b1*h1*sqr(h1))/12;
label20.Caption:=floattostr(Iz);
Iy:=h1*b1*b1*b1/12;
label21.Caption:=floattostr(Iy);
beta:=(180/pi)*arctan((-Iz/Iy)*cos(a*pi/180)/sin(a*pi/180));
label22.Caption:=floattostr(beta);
fi:=(180/pi)*arctan((Iy/Iz)*sin(a*pi/180)/cos(a*pi/180));
label30.Caption:=floattostr(fi);
sigma1:=1000*(-M)*(sin(a*pi/180)*(-h1/2)/Iz+cos(a*pi/180)*(-b1/2)/Iy);
label23.Caption:=floattostr(sigma1);
sigma2:=1000*(-M)*(sin(a*pi/180)*(h1/2)/Iz+cos(a*pi/180)*(-b1/2)/Iy);
label24.Caption:=floattostr(sigma2);
sigma3:=1000*(-M)*(sin(a*pi/180)*(h1/2)/Iz+cos(a*pi/180)*(b1/2)/Iy);
label25.Caption:=floattostr(sigma3);
sigma4:=sigma2*(-1);
label26.Caption:=floattostr(sigma4);
drob1:=1000*sin(a*pi/180)/(6*E*Iz);
drob2:=1000*cos(a*pi/180)/(6*E*Iy);
Vy:=drob1*(l1*(M1*Me1+4*M2*Me2+M3*Me3)+l2*(M4*Me4+4*M5*Me5+M6*Me6)+l3*(M7*Me7+4*M8*Me8+M9*Me9)+l4*(M10*Me10+4*M11*Me11+M12*Me12)+l5*(M13*Me13+4*M14*Me14+M15*Me15));
label27.Caption:=floattostr(Vy);
Vz:=drob2*(l1*(M1*Me1+4*M2*Me2+M3*Me3)+l2*(M4*Me4+4*M5*Me5+M6*Me6)+l3*(M7*Me7+4*M8*Me8+M9*Me9)+l4*(M10*Me10+4*M11*Me11+M12*Me12)+l5*(M13*Me13+4*M14*Me14+M15*Me15));
label28.Caption:=floattostr(Vz);
V:=sqrt(sqr(Vy)+sqr(Vz));
label29.Caption:=floattostr(V);
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Show;
end;

procedure TForm4.Panel7Click(Sender: TObject);
begin
form3.Show;
form4.Visible:=false;
end;

procedure TForm4.Panel8Click(Sender: TObject);
var
E,G,a,b,h,l1,l2,l3,l4,l5:real;
sigma1,sigma2,sigma3,sigma4:real;
drob1,drob2:real;
Vy,Vz,V:real;
Wz,Wy,h1,b1,Iz,Iy,beta,fi:real;
M,M1,M2,M3,M4,M5,M6,M7,M8,M9,M10,M11,M12,M13,M14,M15,Me1,Me2,Me3,Me4,Me5,Me6,Me7,Me8,Me9,Me10,Me11,Me12,Me13,Me14,Me15:real;
i:integer;
begin
E:=strtofloat(form2.Edit1.Text);
G:=strtofloat(form2.edit2.Text);
a:=strtofloat(form2.edit3.Text);
b:=strtofloat(form2.edit4.Text);
h:=strtofloat(form2.edit5.Text);
l1:=strtofloat(form2.edit6.Text);
l2:=strtofloat(form2.edit7.Text);
l3:=strtofloat(form2.edit8.Text);
l4:=strtofloat(form2.edit9.Text);
l5:=strtofloat(form2.edit10.Text);
M:=strtofloat(form3.edit1.Text);
M1:=strtofloat(form3.edit2.Text);
M2:=strtofloat(form3.edit3.Text);
M3:=strtofloat(form3.edit4.Text);
M4:=strtofloat(form3.edit5.Text);
M5:=strtofloat(form3.edit6.Text);
M6:=strtofloat(form3.edit7.Text);
M7:=strtofloat(form3.edit8.Text);
M8:=strtofloat(form3.edit9.Text);
M9:=strtofloat(form3.edit10.Text);
M10:=strtofloat(form3.edit11.Text);
M11:=strtofloat(form3.edit12.Text);
M12:=strtofloat(form3.edit13.Text);
M13:=strtofloat(form3.edit14.Text);
M14:=strtofloat(form3.edit15.Text);
M15:=strtofloat(form3.edit16.Text);
Me1:=strtofloat(form3.edit17.Text);
Me2:=strtofloat(form3.edit18.Text);
Me3:=strtofloat(form3.edit19.Text);
Me4:=strtofloat(form3.edit20.Text);
Me5:=strtofloat(form3.edit21.Text);
Me6:=strtofloat(form3.edit22.Text);
Me7:=strtofloat(form3.edit23.Text);
Me8:=strtofloat(form3.edit24.Text);
Me9:=strtofloat(form3.edit25.Text);
Me10:=strtofloat(form3.edit26.Text);
Me11:=strtofloat(form3.edit27.Text);
Me12:=strtofloat(form3.edit28.Text);
Me13:=strtofloat(form3.edit29.Text);
Me14:=strtofloat(form3.edit30.Text);
Me15:=strtofloat(form3.edit31.Text);

Wz:=(M*1000/G)*(sin(a*pi/180)+(h/b)*cos(a*pi/180));
label16.Caption:=floattostr(Wz);
Wy:=Wz*b/h;
label17.Caption:=floattostr(Wy);
h1:=exp(ln(Wz*6*(h/b))*(1/3));
label19.Caption:=floattostr(h1);
b1:=h1*(b/h);
label18.Caption:=floattostr(b1);
Iz:=(b1*h1*sqr(h1))/12;
label20.Caption:=floattostr(Iz);
Iy:=h1*b1*b1*b1/12;
label21.Caption:=floattostr(Iy);
beta:=(180/pi)*arctan((-Iz/Iy)*cos(a*pi/180)/sin(a*pi/180));
label22.Caption:=floattostr(beta);
fi:=(180/pi)*arctan((Iy/Iz)*sin(a*pi/180)/cos(a*pi/180));
label30.Caption:=floattostr(fi);
sigma1:=1000*(-M)*(sin(a*pi/180)*(-h1/2)/Iz+cos(a*pi/180)*(-b1/2)/Iy);
label23.Caption:=floattostr(sigma1);
sigma2:=1000*(-M)*(sin(a*pi/180)*(h1/2)/Iz+cos(a*pi/180)*(-b1/2)/Iy);
label24.Caption:=floattostr(sigma2);
sigma3:=1000*(-M)*(sin(a*pi/180)*(h1/2)/Iz+cos(a*pi/180)*(b1/2)/Iy);
label25.Caption:=floattostr(sigma3);
sigma4:=sigma2*(-1);
label26.Caption:=floattostr(sigma4);
drob1:=1000*sin(a*pi/180)/(6*E*Iz);
drob2:=1000*cos(a*pi/180)/(6*E*Iy);
Vy:=drob1*(l1*(M1*Me1+4*M2*Me2+M3*Me3)+l2*(M4*Me4+4*M5*Me5+M6*Me6)+l3*(M7*Me7+4*M8*Me8+M9*Me9)+l4*(M10*Me10+4*M11*Me11+M12*Me12)+l5*(M13*Me13+4*M14*Me14+M15*Me15));
label27.Caption:=floattostr(Vy);
Vz:=drob2*(l1*(M1*Me1+4*M2*Me2+M3*Me3)+l2*(M4*Me4+4*M5*Me5+M6*Me6)+l3*(M7*Me7+4*M8*Me8+M9*Me9)+l4*(M10*Me10+4*M11*Me11+M12*Me12)+l5*(M13*Me13+4*M14*Me14+M15*Me15));
label28.Caption:=floattostr(Vz);
V:=sqrt(sqr(Vy)+sqr(Vz));
label29.Caption:=floattostr(V);
end;

end.
