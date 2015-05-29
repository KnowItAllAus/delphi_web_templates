object FormPasswd: TFormPasswd
  Left = 0
  Top = 0
  Width = 1028
  Height = 675
  HorzScrollBar.Visible = False
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
  OnDefaultAction = UpdateBtnClick
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1028
    Height = 118
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1028
    ExplicitHeight = 118
    inherited IWFrameRegion: TIWRegion
      Width = 1028
      Height = 118
      TabOrder = 5
      ExplicitWidth = 1028
      ExplicitHeight = 118
      inherited titleimage: TIWImageFile
        Width = 453
        ImageFile.Filename = 'E:\delphi\delphi_web\files\admin.GIF'
        ExplicitWidth = 453
      end
      inherited IWRectangle1: TIWRectangle
        Top = 93
        Width = 1028
        ExplicitTop = 93
        ExplicitWidth = 1028
      end
      inherited IWRectangle3: TIWRectangle
        Top = 98
        Width = 1028
        ExplicitTop = 98
        ExplicitWidth = 1028
      end
      inherited IWImageFile3: TIWImageFile
        Left = 693
        ExplicitLeft = 693
      end
      inherited langlink: TIWSiLink
        Left = 686
        ExplicitLeft = 686
      end
      inherited Smalltitle: TIWLabel
        Left = 908
        ExplicitLeft = 908
      end
      inherited HideBox: TIWImageFile
        Left = 1012
        Top = 100
        ExplicitLeft = 1012
        ExplicitTop = 100
      end
      inherited TitleLabel: TIWLabel
        Width = 486
        Caption = 'administration'
        ExplicitWidth = 486
      end
    end
    inherited silink: TsiLangLinked
      Left = 504
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 643
    Width = 1028
    Height = 32
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 643
    ExplicitWidth = 1028
    ExplicitHeight = 32
    inherited IWRegion1: TIWRegion
      Width = 1028
      Height = 32
      TabOrder = 4
      ExplicitWidth = 1028
      ExplicitHeight = 32
      inherited IWRectangle1: TIWRectangle
        Left = 612
        Width = 416
        ExplicitLeft = 612
        ExplicitWidth = 416
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1644
        ExplicitWidth = 1644
      end
      inherited IWRectangle6: TIWRectangle
        Width = 570
        ExplicitWidth = 570
      end
      inherited Cancel: TIWButton
        Left = 941
        OnClick = userfooter1CancelClick
        ExplicitLeft = 941
      end
      inherited Extra1: TIWButton
        Left = 853
        ExplicitLeft = 853
      end
      inherited Extra2: TIWButton
        Left = 765
        ExplicitLeft = 765
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 685
        ExplicitLeft = 685
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1028
    Height = 525
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
      1028
      525)
    object IWRegion2: TIWRegion
      Left = 305
      Top = 68
      Width = 401
      Height = 273
      Cursor = crAuto
      HorzScrollBar.Visible = False
      RenderInvisibleControls = False
      Anchors = []
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsNone
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      DesignSize = (
        401
        273)
      object IWLabel4: TIWLabel
        Left = 56
        Top = 82
        Width = 129
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
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
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Current Password'
        RawText = False
      end
      object IWSiLink1: TIWSiLink
        Left = 327
        Top = 48
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
        TabOrder = 0
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'password.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWLabel2: TIWLabel
        Left = 15
        Top = 8
        Width = 378
        Height = 22
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
        Alignment = taCenter
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel2'
        Caption = 'Change Password'
        RawText = False
      end
      object CurrentEdit: TIWEdit
        Left = 200
        Top = 80
        Width = 121
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
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
        FriendlyName = 'ConfEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 1
        PasswordPrompt = True
      end
      object IWLabel3: TIWLabel
        Left = 57
        Top = 114
        Width = 136
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
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
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel3'
        Caption = 'New Password'
        RawText = False
      end
      object PassEdit: TIWEdit
        Left = 200
        Top = 112
        Width = 121
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
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
        FriendlyName = 'IWEdit1'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 2
        PasswordPrompt = True
      end
      object IWLabel1: TIWLabel
        Left = 57
        Top = 146
        Width = 136
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
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
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Confirm'
        RawText = False
      end
      object ConfEdit: TIWEdit
        Left = 200
        Top = 144
        Width = 121
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
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
        FriendlyName = 'ConfEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 3
        PasswordPrompt = True
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 270
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
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 401
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
      object UpdateBtn: TIWButton
        Left = 176
        Top = 186
        Width = 169
        Height = 31
        Cursor = crAuto
        Anchors = [akTop, akRight]
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
        Caption = 'Update'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'UpdateBtn'
        ScriptEvents = <>
        TabOrder = 6
        OnClick = UpdateBtnClick
      end
    end
  end
  object siLangLinked1: TsiLangLinked
    Version = '6.5.4.7'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'IWLabel3.Hint'
      'IWLabel3.Caption')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'FriendlyName'
      'StatusText'
      'Text'
      'Confirmation'
      'HotKey'
      'Title'
      'LangFile')
    Left = 432
    Top = 80
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00490057004C006100620065006C003100010043006F006E00
      6600690072006D0001000D000A00490057004C006100620065006C0032000100
      4300680061006E00670065002000500061007300730077006F00720064000100
      0D000A00490057004C006100620065006C003400010043007500720072006500
      6E0074002000500061007300730077006F007200640001000D000A0073007400
      480069006E00740073005F0055006E00690063006F00640065000D000A005400
      46006F0072006D00500061007300730077006400010001000D000A0050006100
      730073004500640069007400010001000D000A00490057004C00610062006500
      6C003100010001000D000A0043006F006E006600450064006900740001000100
      0D000A00490057004C006100620065006C003200010001000D000A0049005700
      530069004C0069006E006B003100010001000D000A00490057004C0061006200
      65006C003400010001000D000A00430075007200720065006E00740045006400
      69007400010001000D000A004600720061006D00650042006100720065005400
      690074006C0065003100010001000D000A00750073006500720066006F006F00
      7400650072003100010001000D000A004900570052006500670069006F006E00
      3100010001000D000A004900570052006500670069006F006E00320001000100
      0D000A0049005700520065006300740061006E0067006C006500310001000100
      0D000A0049005700520065006300740061006E0067006C006500320001000100
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A00730074004D007500
      6C00740069004C0069006E00650073005F0055006E00690063006F0064006500
      0D000A00490057004C006100620065006C0033002E0045007800740072006100
      54006100670050006100720061006D007300010001000D000A00500061007300
      730045006400690074002E004500780074007200610054006100670050006100
      720061006D007300010001000D000A00490057004C006100620065006C003100
      2E004500780074007200610054006100670050006100720061006D0073000100
      01000D000A0043006F006E00660045006400690074002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0049005700
      4C006100620065006C0032002E00450078007400720061005400610067005000
      6100720061006D007300010001000D000A0049005700530069004C0069006E00
      6B0031002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A00490057004C006100620065006C0034002E0045007800
      74007200610054006100670050006100720061006D007300010001000D000A00
      430075007200720065006E00740045006400690074002E004500780074007200
      610054006100670050006100720061006D007300010001000D000A0049005700
      52006500670069006F006E0031002E0045007800740072006100540061006700
      50006100720061006D007300010001000D000A00490057005200650067006900
      6F006E0032002E00450078007400720061005400610067005000610072006100
      6D007300010001000D000A0049005700520065006300740061006E0067006C00
      650031002E004500780074007200610054006100670050006100720061006D00
      7300010001000D000A0049005700520065006300740061006E0067006C006500
      32002E004500780074007200610054006100670050006100720061006D007300
      010001000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A0043006F006E006600690072006D0054006500
      780074000100500061007300730077006F0072006400200063006F006E006600
      690072006D006100740069006F006E0020006500720072006F0072002E002000
      50006C0065006100730065002000520065002D0065006E007400650072002E00
      01000D000A004C0065006E006700740068005400650078007400010050006100
      7300730077006F007200640020006D0075007300740020006200650020006100
      740020006C006500610073007400200034002000630068006100720061006300
      74006500720073002E00200050006C0065006100730065002000520065002D00
      65006E007400650072002E0001000D000A004500720072006F00720054006500
      780074000100500061007300730077006F007200640020006500720072006F00
      720001000D000A00550070006400610074006500640054006500780074000100
      500061007300730077006F007200640020005500700064006100740065006400
      01000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A00540046006F0072006D00
      5000610073007300770064002E00480065006C0070004B006500790077006F00
      72006400010001000D000A00490057004C006100620065006C0033002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0050006100
      7300730045006400690074002E00480065006C0070004B006500790077006F00
      72006400010001000D000A00490057004C006100620065006C0031002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0043006F00
      6E00660045006400690074002E00480065006C0070004B006500790077006F00
      72006400010001000D000A00490057004C006100620065006C0032002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0049005700
      530069004C0069006E006B0031002E00480065006C0070004B00650079007700
      6F0072006400010001000D000A00490057004C006100620065006C0034002E00
      480065006C0070004B006500790077006F0072006400010001000D000A004300
      75007200720065006E00740045006400690074002E00480065006C0070004B00
      6500790077006F0072006400010001000D000A004600720061006D0065004200
      6100720065005400690074006C00650031002E00480065006C0070004B006500
      790077006F0072006400010001000D000A00750073006500720066006F006F00
      74006500720031002E00480065006C0070004B006500790077006F0072006400
      010001000D000A004900570052006500670069006F006E0031002E0048006500
      6C0070004B006500790077006F0072006400010001000D000A00490057005200
      6500670069006F006E0032002E00480065006C0070004B006500790077006F00
      72006400010001000D000A0049005700520065006300740061006E0067006C00
      650031002E00480065006C0070004B006500790077006F007200640001000100
      0D000A0049005700520065006300740061006E0067006C00650032002E004800
      65006C0070004B006500790077006F0072006400010001000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A0073007400430068006100720053006500740073005F00
      55006E00690063006F00640065000D000A00}
  end
end
