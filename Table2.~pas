unit Table2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB, Menus,
  acPNG, ComCtrls;

type
  TAnimalHabitat = class(TForm)
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBGrid3: TDBGrid;
    DBNavigator3: TDBNavigator;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Image1: TImage;
    Image5: TImage;
    TCS: TButton;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure TCSClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AnimalHabitat: TAnimalHabitat;
  Finder:string;
implementation

uses Main, GlobalModule, Add, AddH, Table1;

{$R *.dfm}

procedure TAnimalHabitat.Button1Click(Sender: TObject);
begin
MainForm.ClientHeight:=AnimalHabitat.ClientHeight;
MainForm.ClientWidth:=AnimalHabitat.ClientWidth;
MainForm.Height:=AnimalHabitat.Height;
MainForm.Width:=AnimalHabitat.Width;
MainForm.Top:=AnimalHabitat.Top;
MainForm.Left:=AnimalHabitat.Left;
MainForm.Show;
AnimalHabitat.Close;
end;

procedure TAnimalHabitat.Button2Click(Sender: TObject);
begin
Module.TableHabitat.Delete;
end;

procedure TAnimalHabitat.Button3Click(Sender: TObject);
begin
Module.TableAnimals.Delete;
end;

procedure TAnimalHabitat.Button4Click(Sender: TObject);
begin
AddAnimal.Show;
Module.TableAnimals.Insert;
end;

procedure TAnimalHabitat.Button6Click(Sender: TObject);
begin
AddHabitat.Show;
Module.TableHabitat.Insert;
end;

procedure TAnimalHabitat.Button5Click(Sender: TObject);
begin
AddAnimal.Show;
end;

procedure TAnimalHabitat.Button7Click(Sender: TObject);
begin
AddHabitat.Show;
end;

procedure TAnimalHabitat.TCSClick(Sender: TObject);
begin
TypeClassSquad.ClientHeight:=AnimalHabitat.ClientHeight;
TypeClassSquad.ClientWidth:=AnimalHabitat.ClientWidth;
TypeClassSquad.Height:=AnimalHabitat.Height;
TypeClassSquad.Width:=AnimalHabitat.Width;
TypeClassSquad.Top:=AnimalHabitat.Top;
TypeClassSquad.Left:=AnimalHabitat.Left;
TypeClassSquad.Show;
AnimalHabitat.Close;
end;

procedure TAnimalHabitat.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
Finder:=Finder+key;
DBgrid2.DataSource.DataSet.Locate('Название животного', Finder, [loPartialKey]);
StatusBar1.Panels.Items[0].Text:='Поиск в таблице "Животные" по идентификатору: '+Finder;
end;

procedure TAnimalHabitat.DBGrid2CellClick(Column: TColumn);
begin
if Finder<>'' then
StatusBar1.Panels.Items[0].Text:='Поиск в таблице "Животные" по идентификатору "'+Finder+'" отменён, либо завершён.';
Finder:='';
end;

end.
