object Module: TModule
  OldCreateOrder = False
  Left = 202
  Top = 432
  Height = 403
  Width = 498
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=Encyc' +
      'lopedia.mdb;Mode=Share Deny None;Persist Security Info=False;Jet' +
      ' OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:D' +
      'atabase Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database L' +
      'ocking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Glob' +
      'al Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OL' +
      'EDB:Create System Database=False;Jet OLEDB:Encrypt Database=Fals' +
      'e;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact' +
      ' Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 16
  end
  object TableType: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = '1_Type'
    Left = 48
    Top = 72
    object TableTypeDSDesigner: TWideStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1080#1087#1072
      Size = 14
    end
    object TableTypeDSDesigner2: TWideStringField
      FieldName = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072
      Size = 100
    end
  end
  object TableClass: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = #1058#1080#1087
    MasterFields = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1080#1087#1072
    MasterSource = DataType
    TableName = '2_Class'
    Left = 48
    Top = 120
    object TableClassDSDesigner2: TWideStringField
      FieldName = #1058#1080#1087
      Size = 14
    end
    object TableClassDSDesigner: TWideStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1083#1072#1089#1089#1072
      Size = 15
    end
    object TableClassDSDesigner3: TWideStringField
      FieldName = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072
      Size = 100
    end
  end
  object TableSquad: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = #1050#1083#1072#1089#1089
    MasterFields = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1083#1072#1089#1089#1072
    MasterSource = DataClass
    TableName = '3_Squad'
    Left = 48
    Top = 168
    object TableSquadDSDesigner2: TWideStringField
      FieldName = #1050#1083#1072#1089#1089
      Size = 15
    end
    object TableSquadDSDesigner: TWideStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1090#1088#1103#1076#1072
      Size = 23
    end
    object TableSquadDSDesigner3: TWideStringField
      FieldName = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072
      Size = 100
    end
  end
  object TableAnimals: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = #1054#1090#1088#1103#1076
    MasterFields = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1090#1088#1103#1076#1072
    MasterSource = DataSquad
    TableName = '4_Animals'
    Left = 48
    Top = 216
    object TableAnimalsDSDesigner2: TWideStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077' '#1078#1080#1074#1086#1090#1085#1086#1075#1086
      Size = 22
    end
    object TableAnimalsDSDesigner3: TWideStringField
      FieldName = #1054#1090#1088#1103#1076
      Size = 23
    end
    object TableAnimalsDSDesigner4: TWideStringField
      FieldName = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072
      Size = 40
    end
    object TableAnimalsDSDesigner5: TMemoField
      FieldName = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
      BlobType = ftMemo
    end
    object TableAnimalsDSDesigner6: TWideStringField
      FieldName = #1044#1083#1080#1085#1072' '#1078#1080#1079#1085#1080
      Size = 3
    end
  end
  object TableHabitat: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = #1046#1080#1074#1086#1090#1085#1086#1077
    MasterFields = #1053#1072#1079#1074#1072#1085#1080#1077' '#1078#1080#1074#1086#1090#1085#1086#1075#1086
    MasterSource = DataAnimals
    TableName = '5_Habitat'
    Left = 48
    Top = 264
    object TableHabitatDSDesigner2: TWideStringField
      FieldName = #1046#1080#1074#1086#1090#1085#1086#1077
      Size = 22
    end
    object TableHabitatDSDesigner3: TWideStringField
      FieldName = #1057#1090#1072#1085#1076#1072#1088#1090#1085#1072#1103' '#1089#1088#1077#1076#1072' '#1086#1073#1080#1090#1072#1085#1080#1103
      Size = 25
    end
    object TableHabitatDSDesigner22: TWideStringField
      FieldName = #1055#1083#1086#1097#1072#1076#1100', '#1084#1083#1085' '#1082#1084'2'
      Size = 5
    end
    object TableHabitatDSDesigner4: TWideStringField
      FieldName = #1050#1083#1080#1084#1072#1090
      Size = 100
    end
  end
  object MainMenu: TMainMenu
    Left = 216
    Top = 16
    object A1: TMenuItem
      Caption = '&'#1057#1087#1088#1072#1074#1082#1072
      object N2: TMenuItem
        Caption = '&'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = '&'#1055#1086#1084#1086#1097#1100
        OnClick = N3Click
      end
    end
    object N1: TMenuItem
      Caption = '&'#1042#1099#1093#1086#1076
      OnClick = N1Click
    end
  end
  object PopupMenu: TPopupMenu
    Left = 424
    Top = 16
    object N9: TMenuItem
      Caption = '&'#1058#1072#1073#1083#1080#1094#1099
      object N12: TMenuItem
        Caption = #1058#1080#1087' / &'#1050#1083#1072#1089#1089' / '#1054#1090#1088#1103#1076
        OnClick = N12Click
      end
      object N13: TMenuItem
        Caption = '&'#1046#1080#1074#1086#1090#1085#1099#1077' '#1080' '#1080#1093' '#1089#1088#1077#1076#1099' '#1086#1073#1080#1090#1072#1085#1080#1103
        OnClick = N13Click
      end
    end
    object N10: TMenuItem
      Caption = '&'#1047#1072#1087#1088#1086#1089#1099
      object N14: TMenuItem
        Caption = '&'#1044#1083#1080#1085#1072' '#1078#1080#1079#1085#1080' '#1086#1090' "?" '#1076#1086' "?" '#1083#1077#1090
        OnClick = N14Click
      end
      object N15: TMenuItem
        Caption = '&'#1055#1077#1088#1077#1082#1088#1105#1089#1090#1085#1099#1081' '#1079#1072#1087#1088#1086#1089' '#1078#1080#1074#1086#1090#1085#1099#1093
        OnClick = N15Click
      end
      object SQL1: TMenuItem
        Caption = '&'#1056#1077#1076#1072#1082#1090#1086#1088'  SQL-'#1082#1086#1076#1072
        OnClick = SQL1Click
      end
    end
    object N11: TMenuItem
      Caption = '&'#1054#1090#1095#1105#1090#1099
      object N16: TMenuItem
        Caption = '&'#1044#1083#1080#1085#1072' '#1078#1080#1079#1085#1080' '#1086#1090' "?" '#1076#1086' "?" '#1083#1077#1090
      end
      object N17: TMenuItem
        Caption = '&'#1057#1088#1077#1076#1072' '#1086#1073#1080#1090#1072#1085#1080#1103' '#1078#1080#1074#1086#1090#1085#1099#1093
      end
      object N18: TMenuItem
        Caption = '&'#1058#1080#1087#1099' '#1078#1080#1074#1086#1090#1085#1099#1093
      end
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = '&'#1057#1087#1088#1072#1074#1082#1072
      object N7: TMenuItem
        Caption = '&'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = '&'#1055#1086#1084#1086#1097#1100
      end
    end
    object N5: TMenuItem
      Caption = '&'#1042#1099#1093#1086#1076
      OnClick = N5Click
    end
  end
  object DataType: TDataSource
    DataSet = TableType
    Left = 136
    Top = 72
  end
  object DataClass: TDataSource
    DataSet = TableClass
    Left = 136
    Top = 120
  end
  object DataSquad: TDataSource
    DataSet = TableSquad
    Left = 136
    Top = 168
  end
  object DataAnimals: TDataSource
    DataSet = TableAnimals
    Left = 136
    Top = 216
  end
  object DataHabitat: TDataSource
    DataSet = TableHabitat
    Left = 136
    Top = 264
  end
  object ForQuery1: TADOQuery
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    Left = 296
    Top = 72
  end
  object ForQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'TRANSFORM Sum([4_Animals].['#1044#1083#1080#1085#1072' '#1078#1080#1079#1085#1080']) AS [Sum-'#1044#1083#1080#1085#1072' '#1078#1080#1079#1085#1080']'
      'SELECT [4_Animals].['#1053#1072#1079#1074#1072#1085#1080#1077' '#1078#1080#1074#1086#1090#1085#1086#1075#1086']'
      'FROM 4_Animals'
      'GROUP BY [4_Animals].['#1053#1072#1079#1074#1072#1085#1080#1077' '#1078#1080#1074#1086#1090#1085#1086#1075#1086']'
      'PIVOT [4_Animals].'#1054#1090#1088#1103#1076';')
    Left = 296
    Top = 120
  end
  object ForQ1: TDataSource
    DataSet = ForQuery1
    Left = 344
    Top = 72
  end
  object ForQ2: TDataSource
    DataSet = ForQuery2
    Left = 344
    Top = 120
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Encyclopedia.mdb;Pe' +
      'rsist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 320
    Top = 16
  end
  object ForQuery3: TADOQuery
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'TRANSFORM Sum([4_Animals].['#1044#1083#1080#1085#1072' '#1078#1080#1079#1085#1080']) AS [Sum-'#1044#1083#1080#1085#1072' '#1078#1080#1079#1085#1080']'
      'SELECT [4_Animals].['#1053#1072#1079#1074#1072#1085#1080#1077' '#1078#1080#1074#1086#1090#1085#1086#1075#1086']'
      'FROM 4_Animals'
      'GROUP BY [4_Animals].['#1053#1072#1079#1074#1072#1085#1080#1077' '#1078#1080#1074#1086#1090#1085#1086#1075#1086']'
      'PIVOT [4_Animals].'#1054#1090#1088#1103#1076';')
    Left = 296
    Top = 168
  end
  object ForQ3: TDataSource
    DataSet = ForQuery3
    Left = 344
    Top = 168
  end
  object MainMenu1: TMainMenu
    Left = 216
    Top = 72
    object MenuItem1: TMenuItem
      Caption = '&'#1057#1087#1088#1072#1074#1082#1072
      object MenuItem2: TMenuItem
        Caption = '&'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N2Click
      end
      object MenuItem3: TMenuItem
        Caption = '&'#1055#1086#1084#1086#1097#1100
        OnClick = N3Click
      end
    end
    object MenuItem4: TMenuItem
      Caption = '&'#1042#1099#1093#1086#1076
      OnClick = N1Click
    end
  end
  object MainMenu2: TMainMenu
    Left = 216
    Top = 120
    object MenuItem5: TMenuItem
      Caption = '&'#1057#1087#1088#1072#1074#1082#1072
      object MenuItem6: TMenuItem
        Caption = '&'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N2Click
      end
      object MenuItem7: TMenuItem
        Caption = '&'#1055#1086#1084#1086#1097#1100
        OnClick = N3Click
      end
    end
    object MenuItem8: TMenuItem
      Caption = '&'#1042#1099#1093#1086#1076
      OnClick = N1Click
    end
  end
  object MainMenu3: TMainMenu
    Left = 216
    Top = 168
    object MenuItem9: TMenuItem
      Caption = '&'#1057#1087#1088#1072#1074#1082#1072
      object MenuItem10: TMenuItem
        Caption = '&'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N2Click
      end
      object MenuItem11: TMenuItem
        Caption = '&'#1055#1086#1084#1086#1097#1100
        OnClick = N3Click
      end
    end
    object MenuItem12: TMenuItem
      Caption = '&'#1042#1099#1093#1086#1076
      OnClick = N1Click
    end
  end
  object MainMenu4: TMainMenu
    Left = 216
    Top = 216
    object MenuItem13: TMenuItem
      Caption = '&'#1057#1087#1088#1072#1074#1082#1072
      object MenuItem14: TMenuItem
        Caption = '&'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N2Click
      end
      object MenuItem15: TMenuItem
        Caption = '&'#1055#1086#1084#1086#1097#1100
        OnClick = N3Click
      end
    end
    object MenuItem16: TMenuItem
      Caption = '&'#1042#1099#1093#1086#1076
      OnClick = N1Click
    end
  end
  object MainMenu5: TMainMenu
    Left = 216
    Top = 264
    object MenuItem17: TMenuItem
      Caption = '&'#1057#1087#1088#1072#1074#1082#1072
      object MenuItem18: TMenuItem
        Caption = '&'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N2Click
      end
      object MenuItem19: TMenuItem
        Caption = '&'#1055#1086#1084#1086#1097#1100
        OnClick = N3Click
      end
    end
    object MenuItem20: TMenuItem
      Caption = '&'#1042#1099#1093#1086#1076
      OnClick = N1Click
    end
  end
end
