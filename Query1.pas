unit Query1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, ComCtrls, acPNG;

type
  TQuery01 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    Image1: TImage;
    Image5: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Query01: TQuery01;

implementation

uses Main, GlobalModule;

{$R *.dfm}

procedure TQuery01.Button1Click(Sender: TObject);
begin
MainForm.ClientHeight:=Query01.ClientHeight;
MainForm.ClientWidth:=Query01.ClientWidth;
MainForm.Height:=Query01.Height;
MainForm.Width:=Query01.Width;
MainForm.Top:=Query01.Top;
MainForm.Left:=Query01.Left;
MainForm.Show;
Query01.Close;
end;

procedure TQuery01.Button2Click(Sender: TObject);
begin
with Module.ForQuery1 do
  begin
  Close;
  Sql.Clear;
  Sql.Add('SELECT [1_Type].[Название типа], [2_Class].[Название класса], [3_Squad].[Название отряда], [4_Animals].[Название животного], [4_Animals].[Длина жизни], [5_Habitat].Климат');
  Sql.Add('FROM (((1_Type INNER JOIN 2_Class ON [1_Type].[Название типа] = [2_Class].Тип) INNER JOIN 3_Squad ON [2_Class].[Название класса] = [3_Squad].Класс) INNER JOIN 4_Animals ON '+
          '[3_Squad].[Название отряда] = [4_Animals].Отряд) INNER JOIN 5_Habitat ON [4_Animals].[Название животного] = [5_Habitat].Животное');
  Sql.Add('WHERE (([4_Animals].[Длина жизни])>='+#34+Query01.Edit1.Text+#34+' And ([4_Animals].[Длина жизни])<='+#34+Query01.Edit2.Text+#34+')');
  Open;
  end;
end;

procedure TQuery01.FormActivate(Sender: TObject);
begin
Button2Click(Sender);
end;

procedure TQuery01.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
{if Column.FieldName='Длина жизни' then
begin
DBGrid1.Canvas.Font.Color := clBlack;
DBGrid1.Canvas.Brush.Color := clGradientInactiveCaption;
DBGrid1.Canvas.FillRect(Rect);
end;}
end;

procedure TQuery01.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13]) then Key:=#0;
if key=#13 then Button2Click(Sender);
end;

procedure TQuery01.Edit2Change(Sender: TObject);
begin
if Edit2.Text<>'' then
if StrToInt(Edit2.Text)>1000 then Edit2.Text:='999';
end;

procedure TQuery01.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13]) then Key:=#0;
if key=#13 then Button2Click(Sender);
end;

procedure TQuery01.Edit1Change(Sender: TObject);
begin
if Edit1.Text<>'' then
if StrToInt(Edit1.Text)>100 then Edit1.Text:='99';
end;

end.

