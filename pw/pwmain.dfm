object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Config Server Password Reset'
  ClientHeight = 168
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    553
    168)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 13
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 70
    Height = 13
    Caption = 'New Password'
  end
  object Memo1: TMemo
    Left = 160
    Top = 32
    Width = 385
    Height = 128
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object Nameedit: TEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button2: TButton
    Left = 24
    Top = 112
    Width = 121
    Height = 25
    Caption = 'Reset Password'
    TabOrder = 2
    OnClick = Button2Click
  end
  object passedit: TEdit
    Left = 24
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object sha: TDCP_sha256
    Id = 28
    Algorithm = 'SHA256'
    HashSize = 256
    Left = 176
    Top = 65528
  end
  object Trans: TIBTransaction
    DefaultDatabase = RecastDB
    DefaultAction = TARollback
    Params.Strings = (
      'concurrency'
      'nowait')
    Left = 97
    Top = 65533
  end
  object RecastDB: TIBDatabase
    Connected = True
    DatabaseName = '192.168.0.23:recast-config.fdb'
    Params.Strings = (
      'user_name=webapp'
      'PASSWORD=recastweb'
      'lc_ctype=UTF8')
    LoginPrompt = False
    Left = 48
    Top = 65528
  end
  object update: TIBSQL
    Database = RecastDB
    SQL.Strings = (
      'update users'
      'set pass=:pass '
      'where userid=:userid')
    Transaction = Trans
    Left = 136
    Top = 65528
  end
end
