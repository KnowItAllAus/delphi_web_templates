object FormParamCreate: TFormParamCreate
  Left = 0
  Top = 0
  Width = 1030
  Height = 655
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1030
    Height = 509
    Cursor = crAuto
    RenderInvisibleControls = False
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
      1030
      509)
    object IWSiLink1: TIWSiLink
      Left = 1
      Top = 1
      Width = 65
      Height = 17
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'IWSiLink1'
      TabOrder = 2
      RawText = False
      SiLangLinked = silanglinked1
      LangFile = 'groupnameedit.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 193
      Top = 122
      Width = 657
      Height = 167
      Cursor = crAuto
      RenderInvisibleControls = False
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
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 657
        Height = 3
        Cursor = crAuto
        Align = alTop
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
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
        Height = 164
        Cursor = crAuto
        Align = alLeft
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
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
      object ParamLabel: TIWLabel
        Left = 48
        Top = 12
        Width = 193
        Height = 19
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'StoreLabel'
        Caption = 'Parameter Name'
        RawText = False
      end
      object NameEdit: TIWEdit
        Left = 128
        Top = 57
        Width = 401
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taLeftJustify
        BGColor = clNone
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'StatEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 3
        PasswordPrompt = False
        Text = 'NameEdit'
      end
      object IWLabel3: TIWLabel
        Left = 48
        Top = 58
        Width = 36
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        FriendlyName = 'IWLabel1'
        Caption = 'Name'
        RawText = False
      end
      object ObjBtn: TIWRadioButton
        Left = 130
        Top = 90
        Width = 186
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Caption = 'Create Object (Image etc)'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Checked = True
        Group = 'no group'
        Value = 'ObjBtn'
        FriendlyName = 'ObjBtn'
        SubmitOnAsyncEvent = True
      end
      object FieldBtn: TIWRadioButton
        Left = 130
        Top = 115
        Width = 186
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Caption = 'Create Field (Date etc)'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Checked = False
        Group = 'no group'
        Value = 'FieldBtn'
        FriendlyName = 'FieldBtn'
        SubmitOnAsyncEvent = True
      end
    end
  end
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1030
    Height = 118
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1030
    ExplicitHeight = 118
    inherited IWFrameRegion: TIWRegion
      Width = 1030
      Height = 118
      TabOrder = 4
      ExplicitWidth = 1030
      ExplicitHeight = 118
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 93
        Width = 1543
        ExplicitTop = 93
        ExplicitWidth = 1543
      end
      inherited IWRectangle3: TIWRectangle
        Top = 98
        Width = 1030
        ExplicitTop = 98
      end
      inherited IWImageFile3: TIWImageFile
        Left = 695
        ExplicitLeft = 695
      end
      inherited langlink: TIWSiLink
        Left = 624
        ExplicitLeft = 624
      end
      inherited Smalltitle: TIWLabel
        Left = 918
        Top = 100
        ExplicitLeft = 918
        ExplicitTop = 100
      end
      inherited HideBox: TIWImageFile
        Left = 1013
        Top = 100
        ExplicitLeft = 1013
        ExplicitTop = 100
      end
      inherited TitleLabel: TIWLabel
        Left = 37
        Top = 10
        Width = 387
        Caption = 'distribution'
        ExplicitLeft = 37
        ExplicitTop = 10
        ExplicitWidth = 387
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 627
    Width = 1030
    Height = 28
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 627
    ExplicitWidth = 1030
    inherited IWRegion1: TIWRegion
      Width = 1030
      TabOrder = 5
      ExplicitWidth = 1030
      inherited IWRectangle1: TIWRectangle
        Left = 723
        Width = 307
        ExplicitLeft = 723
        ExplicitWidth = 307
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1346
        ExplicitWidth = 1346
      end
      inherited IWRectangle6: TIWRectangle
        Width = 681
        ExplicitWidth = 681
      end
      inherited Cancel: TIWButton
        Left = 932
        OnClick = userfooter1CancelClick
        ExplicitLeft = 932
      end
      inherited Extra1: TIWButton
        Left = 836
        ExplicitLeft = 836
      end
      inherited Extra2: TIWButton
        Left = 748
        Visible = True
        Caption = 'Create'
        OnClick = userfooter1Extra2Click
        ExplicitLeft = 748
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 100
        ExplicitLeft = 100
      end
      inherited navcombo: TIWComboBox
        Visible = False
      end
    end
  end
  object silanglinked1: TsiLangLinked
    Version = '6.5.4.7'
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
      'Hint'
      'HelpKeyword'
      'Title'
      'FriendlyName'
      'StatusText'
      'HotKey')
    Top = 136
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0050006100720061006D004C006100620065006C0001005000
      6100720061006D00650074006500720020004E0061006D00650001000D000A00
      490057004C006100620065006C00330001004E0061006D00650001000D000A00
      4F0062006A00420074006E00010043007200650061007400650020004F006200
      6A006500630074002000280049006D0061006700650020006500740063002900
      01000D000A004600690065006C006400420074006E0001004300720065006100
      7400650020004600690065006C00640020002800440061007400650020006500
      74006300290001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      7300740046006F006E00740073005F0055006E00690063006F00640065000D00
      0A005400750073006500720066006F006F0074006500720001004D0053002000
      530061006E00730020005300650072006900660001000D000A00730074004D00
      75006C00740069004C0069006E00650073005F0055006E00690063006F006400
      65000D000A004900570052006500670069006F006E0031002E00450078007400
      7200610054006100670050006100720061006D007300010001000D000A004900
      5700530069004C0069006E006B0031002E004500780074007200610054006100
      670050006100720061006D007300010001000D000A0042006F00640079005200
      6500670069006F006E002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A0049005700520065006300740061006E00
      67006C00650032002E0045007800740072006100540061006700500061007200
      61006D007300010001000D000A0049005700520065006300740061006E006700
      6C00650031002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A0050006100720061006D004C006100620065006C00
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A004E0061006D00650045006400690074002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0049005700
      4C006100620065006C0033002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A004F0062006A00420074006E002E00
      4500780074007200610054006100670050006100720061006D00730001000100
      0D000A004600690065006C006400420074006E002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00730074005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      4E006500770050006100720061006D00650074006500720001004E0065007700
      200050006100720061006D00650074006500720001000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A0049005700530069004C0069006E006B0031002E004300
      6F006E006600690072006D006100740069006F006E00010001000D000A004900
      5700530069004C0069006E006B0031002E004C0061006E006700460069006C00
      65000100670072006F00750070006E0061006D00650065006400690074002E00
      730069006C0001000D000A0049005700520065006300740061006E0067006C00
      650032002E005400650078007400010001000D000A0049005700520065006300
      740061006E0067006C00650031002E005400650078007400010001000D000A00
      4E0061006D00650045006400690074002E00540065007800740001004E006100
      6D006500450064006900740001000D000A004F0062006A00420074006E002E00
      470072006F007500700001006E006F002000670072006F007500700001000D00
      0A004F0062006A00420074006E002E00560061006C0075006500010043007200
      6500610074006500420074006E0001000D000A004600690065006C0064004200
      74006E002E00470072006F007500700001006E006F002000670072006F007500
      700001000D000A004600690065006C006400420074006E002E00560061006C00
      750065000100430072006500610074006500420074006E0001000D000A007300
      740043006F006C006C0065006300740069006F006E0073005F0055006E006900
      63006F00640065000D000A007300740043006800610072005300650074007300
      5F0055006E00690063006F00640065000D000A00540075007300650072006600
      6F006F007400650072000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00}
  end
end
