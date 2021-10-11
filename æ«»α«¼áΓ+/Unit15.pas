unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, jpeg, ExtCtrls, Buttons;

type
  TForm15 = class(TForm)
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Image2: TImage;
    Image3: TImage;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm15.BitBtn1Click(Sender: TObject);
begin
form1.Show;
close;
end;

procedure TForm15.Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
image2.Visible:=false;
image3.Visible:=false;
image1.Visible:=true;
end;

procedure TForm15.Label6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
image1.Visible:=false;
image3.Visible:=false;
image2.Visible:=true;
end;

procedure TForm15.Label9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
image1.Visible:=false;
image2.Visible:=false;
end;

procedure TForm15.Label11MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
image1.Visible:=false;
image2.Visible:=false;
end;

procedure TForm15.Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
image1.Visible:=false;
image2.Visible:=false;
image3.Visible:=true;
end;

procedure TForm15.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Show;
end;

procedure TForm15.FormShow(Sender: TObject);
begin
{if Form15.Visible=true then
   begin
   Image2.Visible:=false;
   Image3.Visible:=false;
   Image1.Visible:=true;
   Form15.Repaint;
   sleep(50);
   Image1.Visible:=false;      Цикл показа фотографий
   Image3.Visible:=false;
   Image2.Visible:=true;
   Form15.Repaint;
   sleep(50);
   Image1.Visible:=false;
   Image2.Visible:=false;
   Image3.Visible:=true;
   Form15.Repaint;
   sleep(50);
   end;}
end;

end.
