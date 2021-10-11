unit Unit23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm23 = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label16: TLabel;
    Label17: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    Edit8: TEdit;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Edit27: TEdit;
    GroupBox3: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Edit11: TEdit;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Label29: TLabel;
    Edit7: TEdit;
    Label35: TLabel;
    Edit19: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label15: TLabel;
    Edit14: TEdit;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Label18: TLabel;
    Edit10: TEdit;
    Label19: TLabel;
    Edit9: TEdit;
    GroupBox4: TGroupBox;
    Label39: TLabel;
    Edit21: TEdit;
    Label40: TLabel;
    Label41: TLabel;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Edit24: TEdit;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    Image2: TImage;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    Panel1: TPanel;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
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
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure CheckBox15Click(Sender: TObject);
    procedure CheckBox16Click(Sender: TObject);
    procedure CheckBox17Click(Sender: TObject);
    procedure CheckBox18Click(Sender: TObject);
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
  Form23: TForm23;

implementation

uses Unit22, Unit24, Unit1;


{$R *.dfm}

procedure TForm23.Button1Click(Sender: TObject);
begin
form1.Show;
form23.Visible:=false;
end;

procedure TForm23.Button2Click(Sender: TObject);
begin
form24.Label15.Caption:='';
form24.Show;
form23.Visible:=false;
end;

procedure TForm23.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then CheckBox2.Enabled:=false
                     else CheckBox2.Enabled:=true;
end;

procedure TForm23.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked then CheckBox1.Enabled:=false
                     else Checkbox1.Enabled:=true;
end;

procedure TForm23.CheckBox3Click(Sender: TObject);
begin
if CheckBox3.Checked then CheckBox4.Enabled:=false
                     else Checkbox4.Enabled:=true;
end;

procedure TForm23.CheckBox4Click(Sender: TObject);
begin
if CheckBox4.Checked then CheckBox3.Enabled:=false
                     else Checkbox3.Enabled:=true;
end;

procedure TForm23.CheckBox5Click(Sender: TObject);
begin
if CheckBox5.Checked then CheckBox6.Enabled:=false
                     else Checkbox6.Enabled:=true;
end;

procedure TForm23.CheckBox6Click(Sender: TObject);
begin
if CheckBox6.Checked then CheckBox5.Enabled:=false
                     else Checkbox5.Enabled:=true;
end;

procedure TForm23.CheckBox7Click(Sender: TObject);
begin
if CheckBox7.Checked then CheckBox8.Enabled:=false
                     else Checkbox8.Enabled:=true;
end;

procedure TForm23.CheckBox8Click(Sender: TObject);
begin
if CheckBox8.Checked then CheckBox7.Enabled:=false
                     else Checkbox7.Enabled:=true;
end;

procedure TForm23.CheckBox9Click(Sender: TObject);
begin
if CheckBox9.Checked then CheckBox10.Enabled:=false
                     else Checkbox10.Enabled:=true;
end;

procedure TForm23.CheckBox10Click(Sender: TObject);
begin
if CheckBox10.Checked then CheckBox9.Enabled:=false
                      else Checkbox9.Enabled:=true;
end;

procedure TForm23.CheckBox11Click(Sender: TObject);
begin
if CheckBox11.Checked then CheckBox12.Enabled:=false
                      else Checkbox12.Enabled:=true;
end;

procedure TForm23.CheckBox12Click(Sender: TObject);
begin
if CheckBox12.Checked then CheckBox11.Enabled:=false
                      else Checkbox11.Enabled:=true;
end;

procedure TForm23.CheckBox13Click(Sender: TObject);
begin
if CheckBox13.Checked then
label11.Enabled:=false else label11.Enabled:=true;
if CheckBox13.Checked then
label49.Enabled:=false else label49.Enabled:=true;
if CheckBox13.Checked then
label51.Enabled:=false else label51.Enabled:=true;
if CheckBox13.Checked then
edit5.Enabled:=false else edit5.Enabled:=true;
if CheckBox13.Checked then
edit6.Enabled:=false else edit6.Enabled:=true;
if CheckBox13.Checked then
CheckBox1.Enabled:=false else CheckBox1.Enabled:=true;
if CheckBox13.Checked then
CheckBox2.Enabled:=false else CheckBox2.Enabled:=true;
end;

procedure TForm23.CheckBox14Click(Sender: TObject);
begin
if CheckBox14.Checked then
label16.Enabled:=false else label16.Enabled:=true;
if CheckBox14.Checked then
label50.Enabled:=false else label50.Enabled:=true;
if CheckBox14.Checked then
label52.Enabled:=false else label52.Enabled:=true;
if CheckBox14.Checked then
edit8.Enabled:=false else edit8.Enabled:=true;
if CheckBox14.Checked then
edit27.Enabled:=false else edit27.Enabled:=true;
if CheckBox14.Checked then
CheckBox3.Enabled:=false else CheckBox3.Enabled:=true;
if CheckBox14.Checked then
CheckBox4.Enabled:=false else CheckBox4.Enabled:=true;
end;

procedure TForm23.CheckBox15Click(Sender: TObject);
begin
if CheckBox15.Checked then
label22.Enabled:=false else label22.Enabled:=true;
if CheckBox15.Checked then
label24.Enabled:=false else label24.Enabled:=true;
if CheckBox15.Checked then
label29.Enabled:=false else label29.Enabled:=true;
if CheckBox15.Checked then
label35.Enabled:=false else label35.Enabled:=true;
if CheckBox15.Checked then
edit11.Enabled:=false else edit11.Enabled:=true;
if CheckBox15.Checked then
edit7.Enabled:=false else edit7.Enabled:=true;
if CheckBox15.Checked then
edit19.Enabled:=false else edit19.Enabled:=true;
if CheckBox15.Checked then
checkbox5.Enabled:=false else checkbox5.Enabled:=true;
if CheckBox15.Checked then
checkbox6.Enabled:=false else checkbox6.Enabled:=true;
end;

procedure TForm23.CheckBox16Click(Sender: TObject);
begin
if CheckBox16.Checked then
label27.Enabled:=false else label27.Enabled:=true;
if CheckBox16.Checked then
label15.Enabled:=false else label15.Enabled:=true;
if CheckBox16.Checked then
label18.Enabled:=false else label18.Enabled:=true;
if CheckBox16.Checked then
label19.Enabled:=false else label19.Enabled:=true;
if CheckBox16.Checked then
edit14.Enabled:=false else edit14.Enabled:=true;
if CheckBox16.Checked then
edit9.Enabled:=false else edit9.Enabled:=true;
if CheckBox16.Checked then
edit10.Enabled:=false else edit10.Enabled:=true;
if CheckBox16.Checked then
checkbox7.Enabled:=false else checkbox7.Enabled:=true;
if CheckBox16.Checked then
checkbox8.Enabled:=false else checkbox8.Enabled:=true;
end;

procedure TForm23.CheckBox17Click(Sender: TObject);
begin
if CheckBox17.Checked then
label39.Enabled:=false else label39.Enabled:=true;
if CheckBox17.Checked then
label41.Enabled:=false else label41.Enabled:=true;
if CheckBox17.Checked then
edit21.Enabled:=false else edit21.Enabled:=true;
if CheckBox17.Checked then
checkBox9.Enabled:=false else checkBox9.Enabled:=true;
if CheckBox17.Checked then
checkBox10.Enabled:=false else checkBox10.Enabled:=true;
end;

procedure TForm23.CheckBox18Click(Sender: TObject);
begin
if CheckBox18.Checked then
label44.Enabled:=false else label44.Enabled:=true;
if CheckBox18.Checked then
label46.Enabled:=false else label46.Enabled:=true;
if CheckBox18.Checked then
edit24.Enabled:=false else edit24.Enabled:=true;
if CheckBox18.Checked then
checkBox11.Enabled:=false else checkBox11.Enabled:=true;
if CheckBox18.Checked then
checkBox12.Enabled:=false else checkBox12.Enabled:=true;
end;

procedure TForm23.BitBtn2Click(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
edit5.Clear;
edit6.Clear;
edit8.Clear;
edit27.Clear;
edit11.Clear;
edit7.Clear;
edit19.Clear;
edit14.Clear;
edit10.Clear;
edit9.Clear;
edit21.Clear;
edit24.Clear;
CheckBox1.Checked:=false;
CheckBox2.Checked:=false;
CheckBox3.Checked:=false;
CheckBox4.Checked:=false;
CheckBox5.Checked:=false;
CheckBox6.Checked:=false;
CheckBox7.Checked:=false;
CheckBox8.Checked:=false;
CheckBox9.Checked:=false;
CheckBox10.Checked:=false;
CheckBox11.Checked:=false;
CheckBox12.Checked:=false;
CheckBox13.Checked:=false;
CheckBox14.Checked:=false;
CheckBox15.Checked:=false;
CheckBox16.Checked:=false;
CheckBox17.Checked:=false;
CheckBox18.Checked:=false;

end;

procedure TForm23.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Show;
end;

procedure TForm23.Panel4Click(Sender: TObject);
begin
form1.Show;
form23.Visible:=false;
end;

procedure TForm23.Panel5Click(Sender: TObject);
begin
form24.Label15.Caption:='';
form24.Show;
form23.Visible:=false;
end;

end.
