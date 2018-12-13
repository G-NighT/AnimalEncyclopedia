unit AddH;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask;

type
  TAddHabitat = class(TForm)
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    Button6: TButton;
    Button1: TButton;
    Button2: TButton;
    DBEdit1: TDBEdit;
    DBMemo2: TDBMemo;
    DBText1: TDBText;
    procedure Button6Click(Sender: TObject);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddHabitat: TAddHabitat;

implementation

uses GlobalModule, Table2;

{$R *.dfm}

procedure TAddHabitat.Button6Click(Sender: TObject);
begin
  if DBMemo1.Text<>'' then
    if DBEdit1.Text<>'' then
      if DBMemo2.Text<>'' then
        begin
        Module.TableHabitat.Post;
        close;
        end
      else showmessage('�� ��������� ����:'+#13+'������')
    else showmessage('�� ��������� ����:'+#13+'�������, ��� ��2')
  else showmessage('�� ��������� ����:'+#13+'����������� ����� ��������');
end;

procedure TAddHabitat.DBMemo2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then Button6Click(Sender);
end;

procedure TAddHabitat.Button2Click(Sender: TObject);
begin
  if DBMemo1.Text<>'' then
    if DBEdit1.Text<>'' then
      if DBMemo2.Text<>'' then
        begin
        Module.TableHabitat.Post;
        Module.TableHabitat.Insert;
        DBEdit1.Clear;
        DBMemo1.Clear;
        DBMemo2.Clear;
        end
      else showmessage('�� ��������� ����:'+#13+'������ ����� ��������')
    else showmessage('�� ��������� ����:'+#13+'�������, ��� ��2')
  else showmessage('�� ��������� ����:'+#13+'�������� ����� ��������');
end;

procedure TAddHabitat.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TAddHabitat.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
key:=#0;
end;

procedure TAddHabitat.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then Button6Click(Sender);
end;

procedure TAddHabitat.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#44,#8,#13]) then key:=#0;
if key=#13 then Button6Click(Sender);
end;

end.
