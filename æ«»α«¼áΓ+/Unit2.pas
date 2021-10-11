unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image10: TImage;
    Bevel1: TBevel;
    Panel5: TPanel;
    Panel4: TPanel;
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
  Form2: TForm2;

implementation

uses Unit1, Unit3, Unit4, Unit16;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
form1.Show;
form2.Visible:=false;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
form3.Show;
form2.Visible:=false;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Show;
end;

procedure TForm2.Panel4Click(Sender: TObject);
begin
form1.Show;
form2.Visible:=false;
end;

procedure TForm2.Panel5Click(Sender: TObject);
begin
form3.Show;
form2.Visible:=false;
end;

end.
 