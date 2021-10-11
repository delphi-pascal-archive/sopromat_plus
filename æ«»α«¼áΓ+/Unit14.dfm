object Form14: TForm14
  Left = 293
  Top = 220
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
  ClientHeight = 120
  ClientWidth = 210
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 31
    Width = 8
    Height = 13
    Caption = 'R'
    Transparent = True
  end
  object Label2: TLabel
    Left = 34
    Top = 31
    Width = 3
    Height = 13
    Transparent = True
  end
  object Label3: TLabel
    Left = 8
    Top = 55
    Width = 9
    Height = 13
    Caption = 'M'
    Transparent = True
  end
  object Label4: TLabel
    Left = 34
    Top = 55
    Width = 3
    Height = 13
    Transparent = True
  end
  object Label5: TLabel
    Left = 8
    Top = 10
    Width = 93
    Height = 13
    Caption = #1056#1077#1072#1082#1094#1080#1080' '#1074' '#1086#1087#1086#1088#1072#1093':'
    Transparent = True
  end
  object Label6: TLabel
    Left = 8
    Top = 71
    Width = 3
    Height = 13
    Transparent = True
  end
  object Label7: TLabel
    Left = 121
    Top = 83
    Width = 90
    Height = 13
    Caption = 'R[kH]     M[kH*'#1084']  '
    Transparent = True
  end
  object Label8: TLabel
    Left = 15
    Top = 37
    Width = 6
    Height = 10
    Caption = #1040
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 21
    Top = 31
    Width = 6
    Height = 13
    Caption = '='
    Transparent = True
  end
  object Label10: TLabel
    Left = 16
    Top = 61
    Width = 6
    Height = 10
    Caption = #1040
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 22
    Top = 55
    Width = 6
    Height = 13
    Caption = '='
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 210
    Height = 120
    Align = alClient
    Shape = bsFrame
  end
  object Panel6: TPanel
    Left = 59
    Top = 97
    Width = 74
    Height = 20
    BevelInner = bvLowered
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 0
    OnClick = Panel6Click
  end
  object Panel5: TPanel
    Left = 133
    Top = 97
    Width = 74
    Height = 20
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Caption = #1056#1072#1089#1095#1077#1090
    TabOrder = 1
    OnClick = Panel5Click
  end
end
