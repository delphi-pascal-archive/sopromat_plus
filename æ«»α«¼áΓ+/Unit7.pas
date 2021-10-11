unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TForm7 = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Image1: TImage;
    Bevel1: TBevel;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel5Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1, Unit8, Unit17;

{$R *.dfm}

procedure TForm7.BitBtn2Click(Sender: TObject);
begin
form1.Show;
form7.Visible:=false;
end;

procedure TForm7.BitBtn3Click(Sender: TObject);
begin
form8.Show;
form7.Visible:=false;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Show;
end;

procedure TForm7.Panel5Click(Sender: TObject);
begin
form8.Show;
form7.Visible:=false;
end;

procedure TForm7.Panel4Click(Sender: TObject);
begin
form1.Show;
form7.Visible:=false;
end;

end.
