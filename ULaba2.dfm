object FMain: TFMain
  Left = 260
  Top = 149
  Width = 1292
  Height = 711
  Align = alClient
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1090#1077#1082#1089#1090#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object split: TSplitter
    Left = 265
    Top = 0
    Width = 8
    Height = 652
  end
  object grp1: TGroupBox
    Left = 0
    Top = 0
    Width = 265
    Height = 652
    Align = alLeft
    Caption = #1048#1089#1093#1086#1076#1085#1099#1081' '#1092#1072#1081#1083
    TabOrder = 0
    object redactor: TMemo
      Left = 2
      Top = 16
      Width = 261
      Height = 634
      Align = alBottom
      BorderStyle = bsNone
      Constraints.MinHeight = 100
      Constraints.MinWidth = 100
      TabOrder = 0
      OnKeyPress = redactorKeyPress
    end
  end
  object grp2: TGroupBox
    Left = 273
    Top = 0
    Width = 1003
    Height = 652
    Align = alClient
    Caption = #1054#1090#1074#1077#1090' '#1085#1072' '#1079#1072#1076#1072#1095#1091
    TabOrder = 1
    object otvet: TMemo
      Left = 2
      Top = 16
      Width = 999
      Height = 634
      Align = alBottom
      BorderStyle = bsNone
      Constraints.MinHeight = 100
      Constraints.MinWidth = 100
      TabOrder = 0
    end
  end
  object menu1: TMainMenu
    Left = 232
    Top = 152
    object N1: TMenuItem
      Caption = #1052#1077#1085#1102
      object Open: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100'...'
        OnClick = OpenClick
      end
      object Save: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        OnClick = SaveClick
      end
      object mniSaveKak: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
        OnClick = mniSaveKakClick
      end
      object exit: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = exitClick
      end
    end
    object N7: TMenuItem
      Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072
      object Run: TMenuItem
        Caption = #1056#1077#1096#1080#1090#1100' '#1086#1089#1085#1086#1074#1085#1091#1102' '#1079#1072#1076#1072#1095#1091
        OnClick = RunClick
      end
    end
  end
  object OpenFile: TOpenDialog
    Filter = '*.txt|*.txt'
    Left = 152
    Top = 152
  end
  object SaveFile: TSaveDialog
    DefaultExt = '*.txt'
    Filter = '*.txt|*.txt'
    Left = 200
    Top = 152
  end
end
