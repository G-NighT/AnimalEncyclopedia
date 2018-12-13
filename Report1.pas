unit Report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, Grids, DBGrids, DB, ADODB, jpeg;

type
  TReport01 = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    ADOTable1: TADOTable;
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report01: TReport01;

implementation

uses GlobalModule;

{$R *.dfm}

end.
