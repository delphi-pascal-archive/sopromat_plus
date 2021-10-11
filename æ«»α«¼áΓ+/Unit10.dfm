object Form10: TForm10
  Left = 200
  Top = 124
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
  ClientHeight = 345
  ClientWidth = 535
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
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 535
    Height = 345
    Align = alClient
    Shape = bsFrame
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 4
    Width = 211
    Height = 73
    Caption = #1050#1086#1086#1088#1076#1080#1085#1072#1090#1099' '#1086#1087#1086#1088':'
    TabOrder = 0
    object Label3: TLabel
      Left = 2
      Top = 33
      Width = 154
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1086#1088#1076#1080#1085#1072#1090#1099' '#1086#1087#1086#1088#1099' A:'
    end
    object Label4: TLabel
      Left = 2
      Top = 53
      Width = 154
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1086#1088#1076#1080#1085#1072#1090#1099' '#1086#1087#1086#1088#1099' B:'
    end
    object Label1: TLabel
      Left = 2
      Top = 13
      Width = 113
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1083#1080#1085#1091' '#1073#1072#1083#1082#1080': '
    end
    object Edit2: TEdit
      Left = 158
      Top = 32
      Width = 33
      Height = 17
      Constraints.MaxHeight = 17
      Constraints.MinHeight = 17
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 158
      Top = 52
      Width = 33
      Height = 17
      Constraints.MaxHeight = 17
      Constraints.MinHeight = 17
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 114
      Top = 12
      Width = 33
      Height = 17
      Constraints.MaxHeight = 17
      Constraints.MinHeight = 17
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 2
    Top = 110
    Width = 407
    Height = 71
    Caption = #1044#1072#1085#1085#1099#1077' '#1086#1090#1085#1086#1089#1080#1090#1077#1083#1100#1085#1086' '#1089#1086#1089#1088#1077#1076#1086#1090#1086#1095#1077#1085#1085#1086#1081' '#1089#1080#1083#1099' '#1056':'
    TabOrder = 1
    object Label6: TLabel
      Left = 2
      Top = 16
      Width = 125
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1086#1088#1076#1080#1085#1072#1090#1099' P1:'
    end
    object Label7: TLabel
      Left = 2
      Top = 34
      Width = 111
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' P1:'
    end
    object Label8: TLabel
      Left = 147
      Top = 33
      Width = 14
      Height = 13
      Caption = 'kH'
    end
    object Label16: TLabel
      Left = 242
      Top = 16
      Width = 125
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1086#1088#1076#1080#1085#1072#1090#1099' P2:'
    end
    object Label17: TLabel
      Left = 242
      Top = 34
      Width = 111
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' P2:'
    end
    object Label18: TLabel
      Left = 387
      Top = 33
      Width = 14
      Height = 13
      Caption = 'kH'
    end
    object Edit4: TEdit
      Left = 128
      Top = 13
      Width = 33
      Height = 17
      Constraints.MaxHeight = 17
      Constraints.MinHeight = 17
      TabOrder = 0
    end
    object Edit5: TEdit
      Left = 114
      Top = 31
      Width = 33
      Height = 17
      Constraints.MaxHeight = 17
      Constraints.MinHeight = 17
      TabOrder = 1
    end
    object Edit10: TEdit
      Left = 368
      Top = 12
      Width = 33
      Height = 17
      Constraints.MaxHeight = 17
      Constraints.MinHeight = 17
      TabOrder = 2
    end
    object Edit11: TEdit
      Left = 354
      Top = 31
      Width = 33
      Height = 17
      Constraints.MaxHeight = 17
      Constraints.MinHeight = 17
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 2
      Top = 50
      Width = 97
      Height = 17
      Caption = 'P1 '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 4
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 242
      Top = 52
      Width = 97
      Height = 17
      Caption = 'P2 '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 5
      OnClick = CheckBox2Click
    end
    object Panel1: TPanel
      Left = 203
      Top = 13
      Width = 2
      Height = 53
      TabOrder = 6
    end
  end
  object GroupBox3: TGroupBox
    Left = 2
    Top = 184
    Width = 407
    Height = 93
    Caption = #1044#1072#1085#1085#1099#1077' '#1086#1090#1085#1086#1089#1080#1090#1077#1083#1100#1085#1086' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1085#1086#1081' '#1085#1072#1075#1088#1091#1079#1082#1080' q:'
    TabOrder = 2
    object Label10: TLabel
      Left = 2
      Top = 17
      Width = 162
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1086#1088#1076#1080#1085#1072#1090#1099' '#1085#1072#1095#1072#1083#1072' q1:'
    end
    object Label11: TLabel
      Left = 2
      Top = 36
      Width = 163
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077'  '#1082#1086#1086#1088#1076#1080#1085#1072#1090#1099'  '#1082#1086#1085#1094#1072' q1:'
    end
    object Label12: TLabel
      Left = 2
      Top = 55
      Width = 110
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' q1:'
    end
    object Label19: TLabel
      Left = 208
      Top = 17
      Width = 162
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1086#1088#1076#1080#1085#1072#1090#1099' '#1085#1072#1095#1072#1083#1072' q2:'
    end
    object Label20: TLabel
      Left = 208
      Top = 36
      Width = 163
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077'  '#1082#1086#1086#1088#1076#1080#1085#1072#1090#1099'  '#1082#1086#1085#1094#1072' q2:'
    end
    object Label21: TLabel
      Left = 208
      Top = 55
      Width = 110
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' q2:'
    end
    object Label24: TLabel
      Left = 150
      Top = 55
      Width = 27
      Height = 13
      Caption = 'kH/'#1084
    end
    object Label25: TLabel
      Left = 355
      Top = 55
      Width = 27
      Height = 13
      Caption = 'kH/'#1084
    end
    object Edit6: TEdit
      Left = 165
      Top = 14
      Width = 33
      Height = 17
      Constraints.MaxHeight = 17
      Constraints.MinHeight = 17
      TabOrder = 0
    end
    object Edit7: TEdit
      Left = 165
      Top = 33
      Width = 33
      Height = 17
      Constraints.MaxHeight = 17
      Constraints.MinHeight = 17
      TabOrder = 1
    end
    object Edit8: TEdit
      Left = 114
      Top = 54
      Width = 33
      Height = 17
      Constraints.MaxHeight = 17
      Constraints.MinHeight = 17
      TabOrder = 2
    end
    object Edit12: TEdit
      Left = 371
      Top = 12
      Width = 33
      Height = 17
      Constraints.MaxHeight = 17
      Constraints.MinHeight = 17
      TabOrder = 3
    end
    object Edit13: TEdit
      Left = 371
      Top = 31
      Width = 33
      Height = 17
      Constraints.MaxHeight = 17
      Constraints.MinHeight = 17
      TabOrder = 4
    end
    object Edit14: TEdit
      Left = 319
      Top = 54
      Width = 33
      Height = 17
      Constraints.MaxHeight = 17
      Constraints.MinHeight = 17
      TabOrder = 5
    end
    object Panel2: TPanel
      Left = 203
      Top = 13
      Width = 2
      Height = 75
      TabOrder = 6
    end
    object CheckBox3: TCheckBox
      Left = 2
      Top = 73
      Width = 97
      Height = 17
      Caption = 'q1 '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 7
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 208
      Top = 73
      Width = 97
      Height = 17
      Caption = 'q2 '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 8
      OnClick = CheckBox4Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 2
    Top = 277
    Width = 382
    Height = 66
    Caption = #1044#1072#1085#1085#1099#1077' '#1086#1090#1085#1086#1089#1080#1090#1077#1083#1100#1085#1086' '#1080#1079#1075#1080#1073#1072#1102#1097#1077#1075#1086' '#1084#1086#1084#1077#1085#1090#1072' M:'
    TabOrder = 3
    object Label14: TLabel
      Left = 2
      Top = 16
      Width = 113
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' M1:'
    end
    object Label15: TLabel
      Left = 153
      Top = 16
      Width = 26
      Height = 13
      Caption = 'kH*'#1084
    end
    object Label22: TLabel
      Left = 194
      Top = 16
      Width = 113
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' M2:'
    end
    object Label23: TLabel
      Left = 346
      Top = 16
      Width = 26
      Height = 13
      Caption = 'kH*'#1084
    end
    object Label41: TLabel
      Left = 2
      Top = 33
      Width = 51
      Height = 13
      Caption = #1042#1088#1072#1097#1072#1077#1090' :'
    end
    object Label5: TLabel
      Left = 194
      Top = 33
      Width = 51
      Height = 13
      Caption = #1042#1088#1072#1097#1072#1077#1090' :'
    end
    object Edit9: TEdit
      Left = 116
      Top = 13
      Width = 33
      Height = 17
      Constraints.MaxHeight = 17
      Constraints.MinHeight = 17
      TabOrder = 0
    end
    object Edit15: TEdit
      Left = 309
      Top = 14
      Width = 33
      Height = 17
      Constraints.MaxHeight = 17
      Constraints.MinHeight = 17
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 192
      Top = 14
      Width = 2
      Height = 48
      TabOrder = 2
    end
    object CheckBox5: TCheckBox
      Left = 54
      Top = 31
      Width = 75
      Height = 17
      Caption = #1087#1086' '#1095#1072#1089#1086#1074#1086#1081
      TabOrder = 3
      OnClick = CheckBox5Click
    end
    object CheckBox6: TCheckBox
      Left = 135
      Top = 31
      Width = 56
      Height = 17
      Caption = #1087#1088#1086#1090#1080#1074
      TabOrder = 4
      OnClick = CheckBox6Click
    end
    object CheckBox7: TCheckBox
      Left = 246
      Top = 31
      Width = 74
      Height = 17
      Caption = #1087#1086' '#1095#1072#1089#1086#1074#1086#1081
      TabOrder = 5
      OnClick = CheckBox7Click
    end
    object CheckBox8: TCheckBox
      Left = 326
      Top = 31
      Width = 54
      Height = 17
      Caption = #1087#1088#1086#1090#1080#1074
      TabOrder = 6
      OnClick = CheckBox8Click
    end
    object CheckBox9: TCheckBox
      Left = 3
      Top = 49
      Width = 101
      Height = 14
      Caption = #1052'1 '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 7
      OnClick = CheckBox9Click
    end
    object CheckBox10: TCheckBox
      Left = 196
      Top = 49
      Width = 101
      Height = 15
      Caption = #1052'2 '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 8
      OnClick = CheckBox10Click
    end
  end
  object BitBtn2: TBitBtn
    Left = 385
    Top = 284
    Width = 24
    Height = 24
    Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1089#1090#1088#1086#1082#1080' '#1074#1074#1086#1076#1072
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
      555557777F777555F55500000000555055557777777755F75555005500055055
      555577F5777F57555555005550055555555577FF577F5FF55555500550050055
      5555577FF77577FF555555005050110555555577F757777FF555555505099910
      555555FF75777777FF555005550999910555577F5F77777775F5500505509990
      3055577F75F77777575F55005055090B030555775755777575755555555550B0
      B03055555F555757575755550555550B0B335555755555757555555555555550
      BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
      50BB555555555555575F555555555555550B5555555555555575}
    NumGlyphs = 2
  end
  object Panel4: TPanel
    Left = 384
    Top = 322
    Width = 74
    Height = 20
    BevelInner = bvLowered
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 5
    OnClick = Panel4Click
  end
  object Panel5: TPanel
    Left = 458
    Top = 322
    Width = 74
    Height = 20
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Caption = #1044#1072#1083#1100#1096#1077
    TabOrder = 6
    OnClick = Panel5Click
  end
end
