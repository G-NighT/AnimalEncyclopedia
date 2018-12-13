unit Add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons;

type
  TAddAnimal = class(TForm)
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBMemo2: TDBMemo;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    Button6: TButton;
    Button1: TButton;
    Button2: TButton;
    DBText1: TDBText;
    Button3: TButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddAnimal: TAddAnimal;

implementation

uses GlobalModule, Table2, Table1;

{$R *.dfm}

procedure TAddAnimal.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TAddAnimal.Button6Click(Sender: TObject);
begin
if DBEdit1.Text<>'' then
  begin
  if DBMemo1.Text<>'' then
    begin
    if DBMemo2.Text<>'' then
      begin
      DBMemo2.Text:='#'+DBMemo2.Text;
      if DBEdit3.Text<>'' then
        begin
        Module.TableAnimals.Post;
        close;
        end else showmessage('Не заполнено поле:'+#13+'Длина жизни животного');
      end else showmessage('Не заполнено поле:'+#13+'Изображение животного');
    end else showmessage('Не заполнено поле:'+#13+'Характеристика животного');
  end else showmessage('Не заполнено поле:'+#13+'Название животного');
end;

procedure TAddAnimal.Button2Click(Sender: TObject);
var buttonSelected : Integer;
begin
if DBText1.DataField<>'' then
begin
if DBEdit1.Text<>'' then
  begin
  if DBMemo1.Text<>'' then
    begin
    if DBMemo2.Text<>'' then
      begin
      if DBEdit3.Text<>'' then
        begin
        DBMemo2.Text:='#'+DBMemo2.Text;
        Module.TableAnimals.Post;
        Module.TableAnimals.Insert;
        DBEdit1.Clear;
        DBMemo1.Clear;
        DBMemo2.Clear;
        DBEdit3.Clear;
        end else showmessage('Не заполнено поле:'+#13+'Длина жизни животного');
      end else showmessage('Не заполнено поле:'+#13+'Изображение животного');
    end else showmessage('Не заполнено поле:'+#13+'Характеристика животного');
  end else showmessage('Не заполнено поле:'+#13+'Название животного');
end else
        begin
        buttonSelected:=MessageDlg('Не указаны: Тип, Класс, Отряд'+#13+' для добавление нового животного.'+#13+'Сейчас вы будете перенаправлены на форму для их указания',mtError, mbOKCancel, 0);
        if buttonSelected = mrOK then
          begin
          AnimalHabitat.Close;
          TypeClassSquad.Show;
          end;
       if buttonSelected = mrCancel then close;
       end;
end;


procedure TAddAnimal.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TAddAnimal.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#44,#8,#13]) then key:=#0;
if key=#13 then Button6Click(Sender);
end;

procedure TAddAnimal.Button3Click(Sender: TObject);
begin
AnimalHabitat.Close;
TypeClassSquad.Show;
end;

procedure TAddAnimal.DBMemo2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then Button6Click(Sender);
end;

procedure TAddAnimal.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then Button6Click(Sender);
end;

procedure TAddAnimal.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then Button6Click(Sender);
end;

end.
