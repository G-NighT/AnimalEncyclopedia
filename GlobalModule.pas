unit GlobalModule;

interface

uses
  SysUtils, Classes, DB, Menus, ADODB;

type
  TModule = class(TDataModule)
    ADOConnection1: TADOConnection;
    TableType: TADOTable;
    TableClass: TADOTable;
    TableSquad: TADOTable;
    TableAnimals: TADOTable;
    TableHabitat: TADOTable;
    MainMenu: TMainMenu;
    A1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
    PopupMenu: TPopupMenu;
    DataType: TDataSource;
    DataClass: TDataSource;
    DataSquad: TDataSource;
    DataAnimals: TDataSource;
    DataHabitat: TDataSource;
    TableTypeDSDesigner: TWideStringField;
    TableTypeDSDesigner2: TWideStringField;
    TableSquadDSDesigner: TWideStringField;
    TableSquadDSDesigner2: TWideStringField;
    TableSquadDSDesigner3: TWideStringField;
    TableAnimalsDSDesigner2: TWideStringField;
    TableAnimalsDSDesigner3: TWideStringField;
    TableAnimalsDSDesigner4: TWideStringField;
    TableAnimalsDSDesigner5: TMemoField;
    TableAnimalsDSDesigner6: TWideStringField;
    TableHabitatDSDesigner2: TWideStringField;
    TableHabitatDSDesigner3: TWideStringField;
    TableHabitatDSDesigner22: TWideStringField;
    TableHabitatDSDesigner4: TWideStringField;
    TableClassDSDesigner: TWideStringField;
    TableClassDSDesigner2: TWideStringField;
    TableClassDSDesigner3: TWideStringField;
    ForQuery1: TADOQuery;
    ForQuery2: TADOQuery;
    ForQ1: TDataSource;
    ForQ2: TDataSource;
    ADOConnection2: TADOConnection;
    ForQuery3: TADOQuery;
    ForQ3: TDataSource;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MainMenu2: TMainMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MainMenu3: TMainMenu;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MainMenu4: TMainMenu;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MainMenu5: TMainMenu;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
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
    N15: TMenuItem;
    SQL1: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure SQL1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Module: TModule;

implementation

uses Table1, Main, Table2, Query1, Query2, AboutProgramm;

{$R *.dfm}


procedure TModule.N2Click(Sender: TObject);
begin
About.Show;
end;

procedure TModule.N1Click(Sender: TObject);
begin
MainForm.ExitButtonClick(Sender);
end;

procedure TModule.N3Click(Sender: TObject);
begin
MainForm.BitBtn1Click(Sender);
end;

procedure TModule.N7Click(Sender: TObject);
begin
About.Show;
end;

procedure TModule.N12Click(Sender: TObject);
begin
MainForm.TCSClick(Sender);
end;

procedure TModule.N13Click(Sender: TObject);
begin
MainForm.AHClick(Sender);
end;

procedure TModule.N14Click(Sender: TObject);
begin
MainForm.Button1Click(Sender);
end;

procedure TModule.N15Click(Sender: TObject);
begin
MainForm.Button3Click(Sender);
end;

procedure TModule.SQL1Click(Sender: TObject);
begin
MainForm.Button2Click(Sender);
end;

procedure TModule.N5Click(Sender: TObject);
begin
MainForm.ExitButtonClick(Sender);
end;

end.