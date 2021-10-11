unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, jpeg, ExtCtrls;

type
  TForm13 = class(TForm)
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    GroupBox2: TGroupBox;
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
    GroupBox3: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Edit9: TEdit;
    Edit15: TEdit;
    CheckBox1: TCheckBox;
    Panel1: TPanel;
    CheckBox2: TCheckBox;
    Panel2: TPanel;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Panel3: TPanel;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    GroupBox4: TGroupBox;
    RadioButton1: TRadioButton;
    Image2: TImage;
    RadioButton2: TRadioButton;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Image1: TImage;
    Panel4: TPanel;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    Panel5: TPanel;
    Panel6: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel6Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

uses {Unit12,} Unit14, Unit1;

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
begin
form1.Show;
form13.Visible:=false;
end;

procedure TForm13.Button2Click(Sender: TObject);
begin
form14.Show;
form13.Visible:=false;
end;

procedure TForm13.BitBtn1Click(Sender: TObject);
begin


Panel1.Visible:=true;
end;

procedure TForm13.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
label6.Enabled:=false else label6.Enabled:=true;
if CheckBox1.Checked then
label7.Enabled:=false else label7.Enabled:=true;
if CheckBox1.Checked then
edit4.Enabled:=false else edit4.Enabled:=true;
if CheckBox1.Checked then
edit5.Enabled:=false else edit5.Enabled:=true;
end;

procedure TForm13.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked then
label16.Enabled:=false else label16.Enabled:=true;
if CheckBox2.Checked then
label17.Enabled:=false else label17.Enabled:=true;
if CheckBox2.Checked then
edit10.Enabled:=false else edit10.Enabled:=true;
if CheckBox2.Checked then
edit11.Enabled:=false else edit11.Enabled:=true;
end;

procedure TForm13.CheckBox3Click(Sender: TObject);
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

procedure TForm13.CheckBox4Click(Sender: TObject);
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

procedure TForm13.CheckBox5Click(Sender: TObject);
begin
if CheckBox5.Checked then
label14.Enabled:=false else label14.Enabled:=true;
if CheckBox5.Checked then
label15.Enabled:=false else label15.Enabled:=true;
if CheckBox5.Checked then
edit9.Enabled:=false else edit9.Enabled:=true;
if CheckBox5.Checked then
CheckBox7.Enabled:=false else CheckBox7.Enabled:=true;
if CheckBox5.Checked then
CheckBox8.Enabled:=false else CheckBox8.Enabled:=true;
end;

procedure TForm13.CheckBox6Click(Sender: TObject);
begin
if CheckBox6.Checked then
label22.Enabled:=false else label22.Enabled:=true;
if CheckBox6.Checked then
label23.Enabled:=false else label23.Enabled:=true;
if CheckBox6.Checked then
edit15.Enabled:=false else edit15.Enabled:=true;
if CheckBox6.Checked then
CheckBox9.Enabled:=false else CheckBox9.Enabled:=true;
if CheckBox6.Checked then
CheckBox10.Enabled:=false else CheckBox10.Enabled:=true;
end;

procedure TForm13.Image1Click(Sender: TObject);
begin
RadioButton1.Checked:=true;
end;

procedure TForm13.Image2Click(Sender: TObject);
begin
RadioButton2.Checked:=true;
end;

procedure TForm13.CheckBox7Click(Sender: TObject);
begin
if CheckBox7.Checked then
CheckBox8.Enabled:=false else CheckBox8.Enabled:=true;
end;

procedure TForm13.CheckBox8Click(Sender: TObject);
begin
if CheckBox8.Checked then
CheckBox7.Enabled:=false else CheckBox7.Enabled:=true;
end;

procedure TForm13.CheckBox9Click(Sender: TObject);
begin
if CheckBox9.Checked then
CheckBox10.Enabled:=false else CheckBox10.Enabled:=true;
end;

procedure TForm13.CheckBox10Click(Sender: TObject);
begin
if CheckBox10.Checked then
CheckBox9.Enabled:=false else CheckBox9.Enabled:=true;
end;

procedure TForm13.BitBtn2Click(Sender: TObject);
begin
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
   RadioButton1.Checked:=false;
   RadioButton2.Checked:=false;
    edit1.Clear;
end;

procedure TForm13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Show;
end;

procedure TForm13.Panel6Click(Sender: TObject);
begin
form1.Show;
form13.Visible:=false;
end;

procedure TForm13.Panel5Click(Sender: TObject);
begin
form14.Show;
form13.Visible:=false;
end;

end.
