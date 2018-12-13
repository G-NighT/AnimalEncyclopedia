unit Report3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, QRCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TReport03 = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    ADOTable2: TADOTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report03: TReport03;

implementation

uses GlobalModule;

{$R *.dfm}

end.
