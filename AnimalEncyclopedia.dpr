program AnimalEncyclopedia;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  Table1 in 'Table1.pas' {TypeClassSquad},
  Table2 in 'Table2.pas' {AnimalHabitat},
  GlobalModule in 'GlobalModule.pas' {Module: TDataModule},
  Add in 'Add.pas' {AddAnimal},
  AddH in 'AddH.pas' {AddHabitat},
  Query1 in 'Query1.pas' {Query01},
  Query2 in 'Query2.pas' {Query02},
  Query3 in 'Query3.pas' {Query03},
  AboutProgramm in 'AboutProgramm.pas' {About},
  Report1 in 'Report1.pas' {Report01},
  Report2 in 'Report2.pas' {Report02},
  Report3 in 'Report3.pas' {Report03};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Animal encyclopedia';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TTypeClassSquad, TypeClassSquad);
  Application.CreateForm(TAnimalHabitat, AnimalHabitat);
  Application.CreateForm(TModule, Module);
  Application.CreateForm(TAddAnimal, AddAnimal);
  Application.CreateForm(TAddHabitat, AddHabitat);
  Application.CreateForm(TQuery01, Query01);
  Application.CreateForm(TQuery02, Query02);
  Application.CreateForm(TQuery03, Query03);
  Application.CreateForm(TAbout, About);
  Application.CreateForm(TReport01, Report01);
  Application.CreateForm(TReport02, Report02);
  Application.CreateForm(TReport03, Report03);
  Application.Run;
end.
