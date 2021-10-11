unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, Menus, ComCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    TreeView1: TTreeView;
    Splitter1: TSplitter;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    Bevel1: TBevel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit5, Unit6, Unit7, Unit8, Unit10, Unit12,
    Unit20, Unit15, Unit13, Unit23, Unit16, Unit17, Unit18, Unit19, Unit22;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
form5.Show;
form1.Visible:=false;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
form5.Visible:=true;
form1.Visible:=false;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
Form15.ShowModal;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
Form2.Show;
Form1.Visible:=false;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
Form7.Show;
Form1.Visible:=false;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
Form10.Show;
Form1.Visible:=false;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
Form13.Show;
Form1.Visible:=false;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
Form20.Show;
Form1.Visible:=false;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
Form23.Show;
Form1.Visible:=false;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
StatusBar1.SimpleText:='Выберите интересующий Вас раздел';
{form12.Close;
form16.Close;
form17.Close;
form18.Close;
form19.Close;
form22.Close;
form6.Close;}
end;

procedure TForm1.N8Click(Sender: TObject);
begin
StatusBar1.SimpleText:='Сведения о программе и авторе';
end;

procedure TForm1.N1Click(Sender: TObject);
begin
StatusBar1.SimpleText:='Выберите интересующий Вас тип задачи';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
{form6.Close;
form12.Close;
form16.Close;
form17.Close;
form18.Close;
form19.Close;
form22.Close;}

end;

procedure TForm1.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
if TreeView1.Items[0].Selected then
begin
memo1.Visible:=false;
memo2.Visible:=false;
memo3.Visible:=false;
memo4.Visible:=false;
StatusBar1.SimpleText:='Выберите интересующий Вас раздел';
end;

if TreeView1.Items[1].Selected then
begin
memo1.Visible:=true;
memo2.Visible:=false;
memo3.Visible:=false;
memo4.Visible:=false;
StatusBar1.SimpleText:='Балка';
end;

if TreeView1.Items[2].Selected then
begin
memo2.Visible:=true;
memo1.Visible:=false;
memo3.Visible:=false;
memo4.Visible:=false;
StatusBar1.SimpleText:='Рама';
end;

if TreeView1.Items[3].Selected then
begin
memo3.Visible:=true;
memo1.Visible:=false;
memo2.Visible:=false;
memo4.Visible:=false;
StatusBar1.SimpleText:='Косой изгиб';
end;

if TreeView1.Items[4].Selected then
begin
memo4.Visible:=true;
memo1.Visible:=false;
memo2.Visible:=false;
memo3.Visible:=false;
StatusBar1.SimpleText:='Статически неопределимые системы';
end;

end;

procedure TForm1.TreeView1DblClick(Sender: TObject);
begin
if TreeView1.Items[0].Selected then
   form1.Show;

if TreeView1.Items[1].Selected then
   begin
   form10.Show;
   form1.Visible:=false;
   end;

if TreeView1.Items[2].Selected then
   begin
   form20.Show;
   form1.Visible:=false;
   end;

if TreeView1.Items[3].Selected then
   begin
   form2.Show;
   form1.Visible:=false;
   end;

if TreeView1.Items[4].Selected then
   begin
   form7.Show;
   form1.Visible:=false;
   end;
   
end;

end.
