unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, acPNG, ExtCtrls, StdCtrls, Buttons, Menus, sSkinManager, ShellAPI;

type
  TMainForm = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    sSkinManager1: TsSkinManager;
    TCS: TButton;
    AH: TButton;
    Image5: TImage;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    ExitButton: TButton;
    Label3: TLabel;
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    procedure TCSClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure AHClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses Table1, Table2, GlobalModule, Add, Query1, Query2, Query3, Report1,
  AboutProgramm, Report2, Report3;

{$R *.dfm}

procedure TMainForm.TCSClick(Sender: TObject);
begin
TypeClassSquad.ClientHeight:=MainForm.ClientHeight;
TypeClassSquad.ClientWidth:=MainForm.ClientWidth;
TypeClassSquad.Height:=MainForm.Height;
TypeClassSquad.Width:=MainForm.Width;
TypeClassSquad.Top:=MainForm.Top;
TypeClassSquad.Left:=MainForm.Left;
TypeClassSquad.Show;
MainForm.Hide;
end;

procedure TMainForm.ExitButtonClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TMainForm.AHClick(Sender: TObject);
begin
AnimalHabitat.ClientHeight:=MainForm.ClientHeight;
AnimalHabitat.ClientWidth:=MainForm.ClientWidth;
AnimalHabitat.Height:=MainForm.Height;
AnimalHabitat.Width:=MainForm.Width;
AnimalHabitat.Top:=MainForm.Top;
AnimalHabitat.Left:=MainForm.Left;
AnimalHabitat.Show;
MainForm.Hide;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
Query01.ClientHeight:=MainForm.ClientHeight;
Query01.ClientWidth:=MainForm.ClientWidth;
Query01.Height:=MainForm.Height;
Query01.Width:=MainForm.Width;
Query01.Top:=MainForm.Top;
Query01.Left:=MainForm.Left;
Query01.Show;
MainForm.Hide;
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
Query02.Show;
MainForm.Hide;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
MainForm.ClientHeight:=574;
MainForm.ClientWidth:=1045;
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
Query03.ClientHeight:=MainForm.ClientHeight;
Query03.ClientWidth:=MainForm.ClientWidth;
Query03.Height:=MainForm.Height;
Query03.Width:=MainForm.Width;
Query03.Top:=MainForm.Top;
Query03.Left:=MainForm.Left;
Query03.Show;
MainForm.Hide;
end;

procedure TMainForm.Button7Click(Sender: TObject);
begin
Report01.QuickRep1.Preview;
end;

procedure TMainForm.Button8Click(Sender: TObject);
begin
Report02.QuickRep1.Preview;
end;

procedure TMainForm.Button6Click(Sender: TObject);
begin
Report03.QuickRep1.Preview;
end;

procedure TMainForm.BitBtn1Click(Sender: TObject);
begin
ShellExecute(Handle, 'open', 'c:\windows\notepad.exe', 'HELP.txt', nil, SW_SHOWNORMAL);
end;

end.
