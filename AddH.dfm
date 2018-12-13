object AddHabitat: TAddHabitat
  Left = 414
  Top = 383
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089#1088#1077#1076#1099' '#1086#1073#1080#1090#1072#1085#1080#1103
  ClientHeight = 217
  ClientWidth = 409
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 16
    Top = 20
    Width = 102
    Height = 13
    Caption = #1057#1088#1077#1076#1072' '#1086#1073#1080#1090#1072#1085#1080#1103' '#1076#1083#1103
  end
  object Label2: TLabel
    Left = 16
    Top = 44
    Width = 135
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1088#1077#1076#1099' '#1086#1073#1080#1090#1072#1085#1080#1103
  end
  object Label4: TLabel
    Left = 16
    Top = 102
    Width = 96
    Height = 13
    Caption = #1055#1083#1086#1097#1072#1076#1100', '#1084#1083#1085' '#1082#1084'2'
  end
  object Label5: TLabel
    Left = 16
    Top = 126
    Width = 123
    Height = 13
    Caption = #1050#1083#1080#1084#1072#1090' '#1089#1088#1077#1076#1099' '#1086#1073#1080#1090#1072#1085#1080#1103
  end
  object DBText1: TDBText
    Left = 168
    Top = 18
    Width = 225
    Height = 17
    DataField = #1046#1080#1074#1086#1090#1085#1086#1077
    DataSource = Module.DataHabitat
  end
  object DBMemo1: TDBMemo
    Left = 168
    Top = 40
    Width = 225
    Height = 49
    DataField = #1057#1090#1072#1085#1076#1072#1088#1090#1085#1072#1103' '#1089#1088#1077#1076#1072' '#1086#1073#1080#1090#1072#1085#1080#1103
    DataSource = Module.DataHabitat
    TabOrder = 0
    OnKeyPress = DBMemo1KeyPress
  end
  object Button6: TButton
    Left = 16
    Top = 178
    Width = 169
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1074#1099#1081#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    WordWrap = True
    OnClick = Button6Click
  end
  object Button1: TButton
    Left = 320
    Top = 178
    Width = 73
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    WordWrap = True
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 178
    Width = 121
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1077#1097#1105
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    WordWrap = True
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 168
    Top = 96
    Width = 225
    Height = 21
    DataField = #1055#1083#1086#1097#1072#1076#1100', '#1084#1083#1085' '#1082#1084'2'
    DataSource = Module.DataHabitat
    TabOrder = 1
    OnKeyPress = DBEdit1KeyPress
  end
  object DBMemo2: TDBMemo
    Left = 168
    Top = 120
    Width = 225
    Height = 49
    DataField = #1050#1083#1080#1084#1072#1090
    DataSource = Module.DataHabitat
    TabOrder = 2
    OnKeyPress = DBMemo2KeyPress
  end
end
