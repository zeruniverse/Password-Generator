object Form1: TForm1
  Left = 402
  Top = 346
  Caption = 'Password Generator'
  ClientHeight = 114
  ClientWidth = 218
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 36
    Height = 13
    Caption = 'Password 1'
  end
  object Label2: TLabel
    Left = 104
    Top = 72
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 8
    Top = 66
    Width = 42
    Height = 13
    Caption = 'Password 2'
  end
  object Label4: TLabel
    Left = 11
    Top = 16
    Width = 126
    Height = 13
    Caption = 'Your parameter (input an integer)'
  end
  object Label5: TLabel
    Left = 8
    Top = 90
    Width = 48
    Height = 13
    Caption = 'Password 3'
  end
  object Edit1: TEdit
    Left = 143
    Top = 8
    Width = 67
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Memo1: TMemo
    Left = 48
    Top = 35
    Width = 162
    Height = 22
    Lines.Strings = (
      'Input parameter')
    ReadOnly = True
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 59
    Top = 63
    Width = 151
    Height = 21
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
    Text = 'Input parameter'
  end
  object Edit3: TEdit
    Left = 62
    Top = 85
    Width = 148
    Height = 21
    ReadOnly = True
    TabOrder = 3
    Text = 'Input parameter'
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Input parameter'
    Font.Style = []
    Color = clBtnFace
    DrawMenuBar = False
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuHighlight
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clScrollBar
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    UseDimColor = False
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = False
    AutoDetect = False
    Active = False
    Left = 104
    Top = 40
  end
end
