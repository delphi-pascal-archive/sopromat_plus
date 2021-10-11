unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm20 = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Edit27: TEdit;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    GroupBox3: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label35: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edit11: TEdit;
    Edit14: TEdit;
    Edit19: TEdit;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Edit7: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    Label22: TLabel;
    Label27: TLabel;
    GroupBox4: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Edit21: TEdit;
    Edit24: TEdit;
    CheckBox9: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    Image2: TImage;
    GroupBox6: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Panel1: TPanel;
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
    procedure Button3Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
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
  Form20: TForm20;

implementation

uses Unit21, Unit22, Unit1;

{$R *.dfm}

procedure TForm20.Button1Click(Sender: TObject);
begin
form1.Show;
form20.Visible:=false;
end;

procedure TForm20.Button2Click(Sender: TObject);
begin
form21.Show;
form20.Visible:=false;
end;

procedure TForm20.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then CheckBox2.Enabled:=false
                     else CheckBox2.Enabled:=true;
end;

procedure TForm20.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked then CheckBox1.Enabled:=false
                     else Checkbox1.Enabled:=true;
end;

procedure TForm20.CheckBox3Click(Sender: TObject);
begin
if CheckBox3.Checked then CheckBox4.Enabled:=false
                     else Checkbox4.Enabled:=true;
end;

procedure TForm20.CheckBox4Click(Sender: TObject);
begin
if CheckBox4.Checked then CheckBox3.Enabled:=false
                     else Checkbox3.Enabled:=true;
end;

procedure TForm20.CheckBox5Click(Sender: TObject);
begin
if CheckBox5.Checked then CheckBox6.Enabled:=false
                     else Checkbox6.Enabled:=true;
end;

procedure TForm20.CheckBox6Click(Sender: TObject);
begin
if CheckBox6.Checked then CheckBox5.Enabled:=false
                     else Checkbox5.Enabled:=true;
end;

procedure TForm20.CheckBox7Click(Sender: TObject);
begin
if CheckBox7.Checked then CheckBox8.Enabled:=false
                     else Checkbox8.Enabled:=true;
end;

procedure TForm20.CheckBox8Click(Sender: TObject);
begin
if CheckBox8.Checked then CheckBox7.Enabled:=false
                     else Checkbox7.Enabled:=true;
end;

procedure TForm20.Button3Click(Sender: TObject);
begin


Image2.Visible:=false;
end;

procedure TForm20.CheckBox9Click(Sender: TObject);
begin
if CheckBox9.Checked then CheckBox10.Enabled:=false
                     else Checkbox10.Enabled:=true;
end;

procedure TForm20.CheckBox10Click(Sender: TObject);
begin
if CheckBox10.Checked then CheckBox9.Enabled:=false
                      else Checkbox9.Enabled:=true;
end;

procedure TForm20.CheckBox11Click(Sender: TObject);
begin
if CheckBox11.Checked then CheckBox12.Enabled:=false
                      else Checkbox12.Enabled:=true;
end;

procedure TForm20.CheckBox12Click(Sender: TObject);
begin
if CheckBox12.Checked then CheckBox11.Enabled:=false
                      else Checkbox11.Enabled:=true;
end;

procedure TForm20.CheckBox14Click(Sender: TObject);
begin
if checkbox14.Checked then
label11.Enabled:=false else label11.Enabled:=true;
if checkbox14.Checked then
label49.Enabled:=false else label49.Enabled:=true;
if checkbox14.Checked then
label51.Enabled:=false else label51.Enabled:=true;
if checkbox14.Checked then
edit5.Enabled:=false else edit5.Enabled:=true;
if checkbox14.Checked then
edit6.Enabled:=false else edit6.Enabled:=true;
if checkbox14.Checked then
checkbox1.Enabled:=false else checkbox1.Enabled:=true;
if checkbox14.Checked then
checkbox2.Enabled:=false else checkbox2.Enabled:=true;
end;

procedure TForm20.CheckBox13Click(Sender: TObject);
begin
if checkbox13.Checked then
label16.Enabled:=false else label16.Enabled:=true;
if checkbox13.Checked then
label50.Enabled:=false else label50.Enabled:=true;
if checkbox13.Checked then
label52.Enabled:=false else label52.Enabled:=true;
if checkbox13.Checked then
edit8.Enabled:=false else edit8.Enabled:=true;
if checkbox13.Checked then
edit27.Enabled:=false else edit27.Enabled:=true;
if checkbox13.Checked then
checkbox3.Enabled:=false else checkbox3.Enabled:=true;
if checkbox13.Checked then
checkbox4.Enabled:=false else checkbox4.Enabled:=true;
end;

procedure TForm20.CheckBox15Click(Sender: TObject);
begin
if checkbox15.Checked then
label24.Enabled:=false else label24.Enabled:=true;
if checkbox15.Checked then
label22.Enabled:=false else label22.Enabled:=true;
if checkbox15.Checked then
label29.Enabled:=false else label29.Enabled:=true;
if checkbox15.Checked then
label35.Enabled:=false else label35.Enabled:=true;
if checkbox15.Checked then
edit11.Enabled:=false else edit11.Enabled:=true;
if checkbox15.Checked then
edit7.Enabled:=false else edit7.Enabled:=true;
if checkbox15.Checked then
edit19.Enabled:=false else edit19.Enabled:=true;
if checkbox15.Checked then
checkbox5.Enabled:=false else checkbox5.Enabled:=true;
if checkbox15.Checked then
checkbox6.Enabled:=false else checkbox6.Enabled:=true;
end;

procedure TForm20.CheckBox16Click(Sender: TObject);
begin
if checkbox16.Checked then
label27.Enabled:=false else label27.Enabled:=true;
if checkbox16.Checked then
label15.Enabled:=false else label15.Enabled:=true;
if checkbox16.Checked then
label18.Enabled:=false else label18.Enabled:=true;
if checkbox16.Checked then
label19.Enabled:=false else label19.Enabled:=true;
if checkbox16.Checked then
edit14.Enabled:=false else edit14.Enabled:=true;
if checkbox16.Checked then
edit10.Enabled:=false else edit10.Enabled:=true;
if checkbox16.Checked then
edit9.Enabled:=false else edit9.Enabled:=true;
if checkbox16.Checked then
checkbox7.Enabled:=false else checkbox7.Enabled:=true;
if checkbox16.Checked then
checkbox8.Enabled:=false else checkbox8.Enabled:=true;
end;

procedure TForm20.CheckBox17Click(Sender: TObject);
begin
if CheckBox17.Checked then
label39.Enabled:=false else label39.Enabled:=true;
if CheckBox17.Checked then
label40.Enabled:=false else label40.Enabled:=true;
if CheckBox17.Checked then
label41.Enabled:=false else label41.Enabled:=true;
if CheckBox17.Checked then
checkbox9.Enabled:=false else checkbox9.Enabled:=true;
if CheckBox17.Checked then
checkbox10.Enabled:=false else checkbox10.Enabled:=true;
if CheckBox17.Checked then
edit21.Enabled:=false else edit21.Enabled:=true;
end;

procedure TForm20.CheckBox18Click(Sender: TObject);
begin
if CheckBox18.Checked then
label44.Enabled:=false else label44.Enabled:=true;
if CheckBox18.Checked then
label45.Enabled:=false else label45.Enabled:=true;
if CheckBox18.Checked then
label46.Enabled:=false else label46.Enabled:=true;
if CheckBox18.Checked then
checkbox11.Enabled:=false else checkbox11.Enabled:=true;
if CheckBox18.Checked then
checkbox12.Enabled:=false else checkbox12.Enabled:=true;
if CheckBox18.Checked then
edit24.Enabled:=false else edit24.Enabled:=true;
end;

procedure TForm20.BitBtn2Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit8.Clear;
Edit27.Clear;
Edit11.Clear;
Edit7.Clear;
Edit19.Clear;
Edit14.Clear;
Edit10.Clear;
Edit9.Clear;
Edit21.Clear;
Edit24.Clear;
RadioButton1.Checked:=false;
RadioButton2.Checked:=false;
CheckBox14.Checked:=false;
CheckBox1.Checked:=false;
CheckBox2.Checked:=false;
CheckBox13.Checked:=false;
CheckBox3.Checked:=false;
CheckBox4.Checked:=false;
CheckBox15.Checked:=false;
CheckBox16.Checked:=false;
CheckBox5.Checked:=false;
CheckBox6.Checked:=false;
CheckBox7.Checked:=false;
CheckBox8.Checked:=false;
CheckBox9.Checked:=false;
CheckBox10.Checked:=false;
CheckBox11.Checked:=false;
CheckBox12.Checked:=false;
CheckBox17.Checked:=false;
CheckBox18.Checked:=false;

end;

procedure TForm20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Show;
end;

procedure TForm20.Panel4Click(Sender: TObject);
begin
form1.Show;
form20.Visible:=false;
end;

procedure TForm20.Panel5Click(Sender: TObject);
begin
form21.Show;
form20.Visible:=false;
end;

end.

