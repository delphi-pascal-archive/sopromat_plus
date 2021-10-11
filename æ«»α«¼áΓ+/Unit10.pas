unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TForm10 = class(TForm)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    GroupBox4: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Edit9: TEdit;
    Edit15: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Panel1: TPanel;
    Panel2: TPanel;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Panel3: TPanel;
    Label41: TLabel;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Label5: TLabel;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit1, Unit11;

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
form1.Show;
form10.Visible:=false;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
form11.Show;
form10.Visible:=false;
end;

procedure TForm10.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
begin
label6.Enabled:=false;
label7.Enabled:=false;
label8.Enabled:=false;
edit4.Enabled:=false;
edit5.Enabled:=false;
end
                     else
begin
label6.Enabled:=true;
label7.Enabled:=true;
label8.Enabled:=true;
edit4.Enabled:=true;
edit5.Enabled:=true;
end;

end;

procedure TForm10.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked then
label16.Enabled:=false else label16.Enabled:=true;
if CheckBox2.Checked then
label17.Enabled:=false else label17.Enabled:=true;
if CheckBox2.Checked then
label18.Enabled:=false else label18.Enabled:=true;
if CheckBox2.Checked then
edit10.Enabled:=false else edit10.Enabled:=true;
if CheckBox2.Checked then
edit11.Enabled:=false else edit11.Enabled:=true;
end;

procedure TForm10.CheckBox3Click(Sender: TObject);
begin
if CheckBox3.Checked then
label10.Enabled:=false else label10.Enabled:=true;
if CheckBox3.Checked then
label11.Enabled:=false else label11.Enabled:=true;
if CheckBox3.Checked then
label12.Enabled:=false else label12.Enabled:=true;
if CheckBox3.Checked then
label24.Enabled:=false else label24.Enabled:=true;
if CheckBox3.Checked then
edit6.Enabled:=false else edit6.Enabled:=true;
if CheckBox3.Checked then
edit7.Enabled:=false else edit7.Enabled:=true;
if CheckBox3.Checked then
edit8.Enabled:=false else edit8.Enabled:=true;
end;

procedure TForm10.CheckBox4Click(Sender: TObject);
begin
if CheckBox4.Checked then
label19.Enabled:=false else label19.Enabled:=true;
if CheckBox4.Checked then
label20.Enabled:=false else label20.Enabled:=true;
if CheckBox4.Checked then
label21.Enabled:=false else label21.Enabled:=true;
if CheckBox4.Checked then
label25.Enabled:=false else label25.Enabled:=true;
if CheckBox4.Checked then
edit12.Enabled:=false else edit12.Enabled:=true;
if CheckBox4.Checked then
edit13.Enabled:=false else edit13.Enabled:=true;
if CheckBox4.Checked then
edit14.Enabled:=false else edit14.Enabled:=true;
end;

procedure TForm10.CheckBox9Click(Sender: TObject);
begin
if CheckBox9.Checked then
label14.Enabled:=false else label14.Enabled:=true;
if CheckBox9.Checked then
label15.Enabled:=false else label15.Enabled:=true;
if CheckBox9.Checked then
edit9.Enabled:=false else edit9.Enabled:=true;
if CheckBox9.Checked then
label41.Enabled:=false else label41.Enabled:=true;
if CheckBox9.Checked then
CheckBox5.Enabled:=false else CheckBox5.Enabled:=true;
if CheckBox9.Checked then
CheckBox6.Enabled:=false else CheckBox6.Enabled:=true;
end;

procedure TForm10.CheckBox5Click(Sender: TObject);
begin
if CheckBox5.Checked then
CheckBox6.Enabled:=false else CheckBox6.Enabled:=true;
end;

procedure TForm10.CheckBox6Click(Sender: TObject);
begin
if CheckBox6.Checked then
CheckBox5.Enabled:=false else CheckBox5.Enabled:=true;
end;

procedure TForm10.CheckBox7Click(Sender: TObject);
begin
if CheckBox7.Checked then
CheckBox8.Enabled:=false else CheckBox8.Enabled:=true;
end;

procedure TForm10.CheckBox8Click(Sender: TObject);
begin
if CheckBox8.Checked then
CheckBox7.Enabled:=false else CheckBox7.Enabled:=true;
end;

procedure TForm10.CheckBox10Click(Sender: TObject);
begin
if CheckBox10.Checked then
label22.Enabled:=false else label22.Enabled:=true;
if CheckBox10.Checked then
label23.Enabled:=false else label23.Enabled:=true;
if CheckBox10.Checked then
edit15.Enabled:=false else edit15.Enabled:=true;
if CheckBox10.Checked then
label5.Enabled:=false else label5.Enabled:=true;
if CheckBox10.Checked then
CheckBox7.Enabled:=false else CheckBox7.Enabled:=true;
if CheckBox10.Checked then
CheckBox8.Enabled:=false else CheckBox8.Enabled:=true;
end;

procedure TForm10.BitBtn2Click(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
  CheckBox1.Checked:=false;
  CheckBox2.Checked:=false;
  edit10.Clear;
  edit11.Clear;
  edit4.Clear;
  edit5.Clear;
CheckBox3.Checked:=false;
CheckBox4.Checked:=false;
edit12.Clear;
edit13.Clear;
edit14.Clear;
edit6.Clear;
edit7.Clear;
edit8.Clear;
  CheckBox10.Checked:=false;
  CheckBox5.Checked:=false;
  CheckBox6.Checked:=false;
  CheckBox7.Checked:=false;
  CheckBox8.Checked:=false;
  CheckBox9.Checked:=false;
  edit15.Clear;
  edit9.Clear;
form11.Label2.Caption:='';
form11.Label4.Caption:='';
form11.SpeedButton1.Enabled:=false;
end;

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Show;
end;

procedure TForm10.Panel4Click(Sender: TObject);
begin
form1.Show;
form10.Visible:=false;
end;

procedure TForm10.Panel5Click(Sender: TObject);
begin
form11.Show;
form10.Visible:=false;
end;

end.
