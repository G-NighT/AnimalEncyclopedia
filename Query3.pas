unit Query3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TQuery03 = class(TForm)
    SQLcode: TMemo;
    Label2: TLabel;
    ExitButton: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Query03: TQuery03;

implementation

uses Main, GlobalModule;

{$R *.dfm}

procedure TQuery03.Button2Click(Sender: TObject);
begin
MainForm.ClientHeight:=Query03.ClientHeight;
MainForm.ClientWidth:=Query03.ClientWidth;
MainForm.Height:=Query03.Height;
MainForm.Width:=Query03.Width;
MainForm.Top:=Query03.Top;
MainForm.Left:=Query03.Left;
MainForm.Show;
Query03.Close;
end;

procedure TQuery03.Button4Click(Sender: TObject);
begin
if OpenDialog1.Execute then
SQLcode.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TQuery03.Button3Click(Sender: TObject);
begin
if SaveDialog1.Execute then
SQLcode.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TQuery03.ExitButtonClick(Sender: TObject);
begin
SQLcode.Clear;
end;

procedure TQuery03.Button1Click(Sender: TObject);
begin
if SQLcode.Text<>'' then
begin
  with Module.ForQuery3 do
  begin
    Close;
    Sql.Clear;
    Sql:=SQLcode.Lines;
    Open;
  end;
end
else showmessage('Не заполнено поле'+#13+'редактора SQL-кода');
end;

end.
