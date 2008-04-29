object supwdform: Tsupwdform
  Left = 0
  Top = 0
  Width = 1017
  Height = 650
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 675
  DesignTop = 382
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1017
    Height = 111
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Height = 111
      TabOrder = 7
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\admin.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 86
        Width = 1017
      end
      inherited IWRectangle3: TIWRectangle
        Top = 91
      end
      inherited TitleLabel: TIWLabel
        Width = 486
        Caption = 'administration'
      end
      inherited langlink: TIWSiLink
        Left = 692
      end
      inherited Smalltitle: TIWLabel
        Left = 896
        Top = 94
      end
      inherited HideBox: TIWImageFile
        Width = 12
        Height = 14
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 618
    Width = 1017
    Height = 32
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1017
      Height = 32
      TabOrder = 4
      inherited IWRectangle1: TIWRectangle
        Left = 601
        Width = 418
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1633
      end
      inherited IWRectangle6: TIWRectangle
        Width = 559
      end
      inherited Cancel: TIWButton
        Left = 929
        OnClick = IWCancelButtonClick
      end
      inherited Extra1: TIWButton
        Visible = True
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        OnClick = IWDelButtonClick
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 682
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 111
    Width = 1017
    Height = 507
    Cursor = crAuto
    Align = alClient
    BorderOptions.NumericWidth = 0
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsNone
    BorderOptions.Color = clNone
    Color = 15456976
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    Splitter = False
    DesignSize = (
      1017
      507)
    object IWSiLink1: TIWSiLink
      Left = 1
      Top = 3
      Width = 64
      Height = 17
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1
      RenderSize = False
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'IWSiLink1'
      TabOrder = 9
      RawText = False
      SiLangLinked = silink_footer
      LangFile = 'footer.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object IWRegion2: TIWRegion
      Left = 284
      Top = 50
      Width = 465
      Height = 319
      Cursor = crAuto
      Anchors = [akTop]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsNone
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      object IWLabel4: TIWLabel
        Left = 49
        Top = 181
        Width = 80
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Privileges'
        RawText = False
      end
      object IWLabel1: TIWLabel
        Left = 49
        Top = 98
        Width = 57
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Confirm'
        RawText = False
      end
      object IWLabel3: TIWLabel
        Left = 49
        Top = 66
        Width = 112
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel3'
        Caption = 'New Password'
        RawText = False
      end
      object PassEdit: TIWEdit
        Left = 176
        Top = 64
        Width = 121
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWEdit1'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 0
        PasswordPrompt = True
      end
      object ConfEdit: TIWEdit
        Left = 176
        Top = 96
        Width = 121
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'ConfEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 1
        PasswordPrompt = True
      end
      object UpdateBtn: TIWButton
        Left = 176
        Top = 136
        Width = 161
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Update Password'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'UpdateBtn'
        ScriptEvents = <>
        TabOrder = 2
        OnClick = UpdateBtnClick
      end
      object LangBox: TIWCheckBox
        Left = 176
        Top = 182
        Width = 129
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Caption = 'Language Editor'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 3
        Checked = False
        FriendlyName = 'LangBox'
      end
      object PrivUpdateBtn: TIWButton
        Left = 176
        Top = 288
        Width = 161
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Update Privilege'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'UpdateBtn'
        ScriptEvents = <>
        TabOrder = 8
        OnClick = PrivUpdateBtnClick
      end
      object CoLabel: TIWLabel
        Left = 48
        Top = 40
        Width = 18
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        FriendlyName = 'CoLabel'
        Caption = 'Co'
        RawText = False
      end
      object UserLabel: TIWLabel
        Left = 48
        Top = 16
        Width = 47
        Height = 22
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        FriendlyName = 'UserLabel'
        Caption = 'User'
        RawText = False
      end
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 465
        Height = 3
        Cursor = crAuto
        Align = alTop
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        FriendlyName = 'IWRectangle1'
        Color = 11100191
        Alignment = taLeftJustify
        VAlign = vaMiddle
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 316
        Cursor = crAuto
        Align = alLeft
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        FriendlyName = 'IWRectangle1'
        Color = 11100191
        Alignment = taLeftJustify
        VAlign = vaMiddle
      end
      object AdminBox: TIWCheckBox
        Left = 176
        Top = 206
        Width = 129
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Caption = 'Administrator'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 5
        Checked = False
        FriendlyName = 'LangBox'
      end
      object LiveBox: TIWCheckBox
        Left = 176
        Top = 230
        Width = 129
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Caption = 'Live Content'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 6
        Checked = False
        FriendlyName = 'LangBox'
      end
      object EditBox: TIWCheckBox
        Left = 176
        Top = 254
        Width = 129
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Caption = 'Edit Content'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 10
        Checked = False
        FriendlyName = 'LangBox'
      end
    end
  end
  object silink_footer: TsiLangLinked
    Version = '5.3.1.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'UserLabel.Caption'
      'Extra1.Caption'
      'Extra2.Caption'
      'Extra3.Caption'
      'Cancel.Caption')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Hint')
    Top = 136
    TranslationData = {
      737443617074696F6E730D0A737448696E74730D0A7374446973706C61794C61
      62656C730D0A7374466F6E74730D0A5475736572666F6F746572014D53205361
      6E73205365726966010D0A73744D756C74694C696E65730D0A7374537472696E
      67730D0A557365720155534552010D0A4C6F676F6666014C4F474F4646010D0A
      41636365707401414343455054010D0A43616E63656C0143414E43454C010D0A
      44656C6574650144454C455445010D0A50617373776F72640150617373776F72
      64010D0A536176650153415645010D0A73744F74686572537472696E67730D0A
      7374436F6C6C656374696F6E730D0A737443686172536574730D0A5475736572
      666F6F7465720144454641554C545F43484152534554010D0A}
  end
end
