object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 224
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 183
    Width = 423
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      423
      41)
    object Button3: TButton
      Left = 8
      Top = 8
      Width = 57
      Height = 25
      Caption = 'Encrypt'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 69
      Top = 8
      Width = 60
      Height = 25
      Caption = 'Decrypt'
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 134
      Top = 8
      Width = 60
      Height = 25
      Caption = 'Get State'
      TabOrder = 2
      OnClick = Button5Click
    end
    object Button2: TButton
      Left = 249
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Disconnect'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 335
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Connect'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 423
    Height = 150
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 150
    Width = 423
    Height = 33
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 2
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 40
    Top = 24
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Database=TESTDB'
      'Protocol=TCPIP'
      'Password=masterkey'
      'Server=localhost'
      'User_Name=SYSDBA')
    LoginPrompt = False
    Left = 144
    Top = 24
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 232
    Top = 24
  end
  object FDTable1: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'T_1'
    TableName = 'T_1'
    Left = 304
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 304
    Top = 96
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 96
  end
end
