unit Table1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB,
  acPNG;

type
  TTypeClassSquad = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBGrid3: TDBGrid;
    DBNavigator3: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Image5: TImage;
    AH: TButton;
    procedure Button1Click(Sender: TObject);
    procedure AHClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TypeClassSquad: TTypeClassSquad;

implementation

uses Main, GlobalModule, Table2;

{$R *.dfm}

procedure TTypeClassSquad.Button1Click(Sender: TObject);
begin
MainForm.ClientHeight:=TypeClassSquad.ClientHeight;
MainForm.ClientWidth:=TypeClassSquad.ClientWidth;
MainForm.Height:=TypeClassSquad.Height;
MainForm.Width:=TypeClassSquad.Width;
MainForm.Top:=TypeClassSquad.Top;
MainForm.Left:=TypeClassSquad.Left;
MainForm.Show;
TypeClassSquad.Close;
end;          

procedure TTypeClassSquad.AHClick(Sender: TObject);
begin
AnimalHabitat.ClientHeight:=TypeClassSquad.ClientHeight;
AnimalHabitat.ClientWidth:=TypeClassSquad.ClientWidth;
AnimalHabitat.Height:=TypeClassSquad.Height;
AnimalHabitat.Width:=TypeClassSquad.Width;
AnimalHabitat.Top:=TypeClassSquad.Top;
AnimalHabitat.Left:=TypeClassSquad.Left;
AnimalHabitat.Show;
TypeClassSquad.Close;
end;

end.
