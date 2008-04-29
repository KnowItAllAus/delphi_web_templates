object form_login: Tform_login
  Left = 0
  Top = 0
  Width = 1087
  Height = 777
  ConnectionMode = cmAny
  SupportedBrowsers = [brUnknown, brIE, brNetscape7, brOpera, brNetscape6]
  OnCreate = IWAppFormCreate
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 151
  DesignTop = 176
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 1087
    Height = 663
    Cursor = crAuto
    Align = alClient
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsNone
    BorderOptions.Color = clNone
    Color = 15456976
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    Splitter = False
    DesignSize = (
      1087
      663)
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
      RenderSize = False
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'IWSiLink1'
      TabOrder = 8
      RawText = False
      SiLangLinked = silink
      LangFile = 'langlogin.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 312
      Top = 133
      Width = 440
      Height = 223
      Cursor = crAuto
      Anchors = [akTop]
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      object IWRectangle2: TIWRectangle
        Left = 1
        Top = 1
        Width = 438
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
        Left = 1
        Top = 4
        Width = 3
        Height = 218
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
      object CoEdit: TIWEdit
        Left = 200
        Top = 32
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
        FriendlyName = 'CoEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 3
        PasswordPrompt = False
      end
      object UserEdit: TIWEdit
        Left = 200
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
        TabOrder = 4
        PasswordPrompt = False
      end
      object PassEdit: TIWEdit
        Left = 201
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
        FriendlyName = 'IWEdit1'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 5
        OnSubmit = LoginBtnClick
        PasswordPrompt = True
      end
      object CoRect: TIWRectangle
        Left = 32
        Top = 32
        Width = 145
        Height = 22
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Text = 'Company'
        Font.Color = clWebWHITE
        Font.FontName = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        BorderOptions.Color = 11100191
        BorderOptions.Width = 0
        FriendlyName = 'CoRect'
        Color = 11100191
        Alignment = taRightJustify
        VAlign = vaMiddle
      end
      object UserRect: TIWRectangle
        Left = 32
        Top = 64
        Width = 145
        Height = 22
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Text = 'Username'
        Font.Color = clWebWHITE
        Font.FontName = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        BorderOptions.Color = 11100191
        BorderOptions.Width = 0
        FriendlyName = 'IWRectangle3'
        Color = 11100191
        Alignment = taRightJustify
        VAlign = vaMiddle
      end
      object PassRect: TIWRectangle
        Left = 32
        Top = 96
        Width = 145
        Height = 22
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Text = 'Password'
        Font.Color = clWebWHITE
        Font.FontName = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        BorderOptions.Color = 11100191
        BorderOptions.Width = 0
        FriendlyName = 'IWRectangle3'
        Color = 11100191
        Alignment = taRightJustify
        VAlign = vaMiddle
      end
      object LoginBtn: TIWButton
        Left = 224
        Top = 144
        Width = 75
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        Caption = 'Login'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'LoginBtn'
        ScriptEvents = <>
        TabOrder = 6
        OnClick = LoginBtnClick
      end
      object IWButton1: TIWButton
        Left = 24
        Top = 144
        Width = 75
        Height = 25
        Cursor = crAuto
        Visible = False
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        Caption = 'dummy'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'LoginBtn'
        ScriptEvents = <>
        TabOrder = 0
        OnClick = LoginBtnClick
      end
      object IWButton2: TIWButton
        Left = 32
        Top = 152
        Width = 75
        Height = 25
        Cursor = crAuto
        Visible = False
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        Caption = 'dummy'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'LoginBtn'
        ScriptEvents = <>
        TabOrder = 1
        OnClick = LoginBtnClick
      end
      object IWButton3: TIWButton
        Left = 40
        Top = 160
        Width = 75
        Height = 25
        Cursor = crAuto
        Visible = False
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        Caption = 'dummy'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'LoginBtn'
        ScriptEvents = <>
        TabOrder = 2
        OnClick = LoginBtnClick
      end
    end
    object IWRegion2: TIWRegion
      Left = 0
      Top = 628
      Width = 1087
      Height = 35
      Cursor = crAuto
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      TabOrder = 201
      Align = alBottom
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsNone
      BorderOptions.Color = clNone
      Color = clNone
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      DesignSize = (
        1087
        35)
      object IWRectangle3: TIWRectangle
        Left = 0
        Top = 29
        Width = 2564
        Height = 3
        Cursor = crAuto
        Anchors = [akLeft, akTop, akRight]
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
      object IWRectangle4: TIWRectangle
        Left = 0
        Top = 0
        Width = 2564
        Height = 26
        Cursor = crAuto
        Anchors = [akLeft, akTop, akRight]
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
        FriendlyName = 'IWRectangle3'
        Color = 10526880
        Alignment = taLeftJustify
        VAlign = vaMiddle
      end
      object langcombo: TIWComboBox
        Left = 28
        Top = 2
        Width = 133
        Height = 22
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FocusColor = clNone
        AutoHideOnMenuActivation = False
        ItemsHaveValues = False
        NoSelectionText = '-- No Selection --'
        Required = False
        RequireSelection = True
        ScriptEvents = <>
        OnChange = langcomboChange
        UseSize = True
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        TabOrder = 7
        ItemIndex = -1
        Sorted = False
        FriendlyName = 'langcombo'
      end
      object IWImage1: TIWImage
        Left = 6
        Top = 3
        Width = 19
        Height = 19
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        AutoSize = False
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        DoSubmitValidation = True
        ScriptEvents = <>
        TabOrder = 9
        UseSize = True
        Picture.Data = {
          07544269746D617036030000424D360300000000000036000000280000001000
          0000100000000100180000000000000300000000000000000000000000000000
          0000A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0000000A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0000000A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0000000A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0000000A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0000000A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0000000A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0000000000000000000A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0000000A0A0A0A0A0A0A0A0A0A0A0A000000000FF00
          00FF00000000A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A00000000000
          00000000000000000000FF000000FF0000FF00000000A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A000000000FFFF00FFFF00FFFFFF0000FF0000FF0000
          00FF00000000A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A00000000000
          FF00FFFF00FFFF00FFFFFF0000FF0000000000000000A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A00000000000FF0000FF00FFFF00FFFF000000A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A00000000000
          00000000000000000000A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0}
        FriendlyName = 'IWImage1'
        TransparentColor = clNone
        JpegOptions.CompressionQuality = 90
        JpegOptions.Performance = jpBestSpeed
        JpegOptions.ProgressiveEncoding = False
        JpegOptions.Smoothing = True
        OutputType = ioJPEG
      end
    end
  end
  object IWRegion3: TIWRegion
    Left = 0
    Top = 0
    Width = 1087
    Height = 114
    Cursor = crAuto
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    BorderOptions.NumericWidth = 0
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = clNone
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    Splitter = False
    DesignSize = (
      1087
      114)
    object IWRectangle5: TIWRectangle
      Left = 0
      Top = 94
      Width = 1580
      Height = 20
      Cursor = crAuto
      Anchors = [akLeft, akTop, akRight]
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
      FriendlyName = 'IWRectangle3'
      Color = 10526880
      Alignment = taLeftJustify
      VAlign = vaMiddle
    end
    object IWRectangle6: TIWRectangle
      Left = 0
      Top = 88
      Width = 1580
      Height = 3
      Cursor = crAuto
      Anchors = [akLeft, akRight]
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
    object IWImageFile1: TIWImageFile
      Left = 0
      Top = 24
      Width = 1600
      Height = 37
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = 10
      UseSize = False
      Cacheable = True
      FriendlyName = 'IWImageFile1'
      ImageFile.Filename = 'E:\delphi\delphi_web\Files\Dots Graphic.GIF'
    end
    object IWImageFile3: TIWImageFile
      Left = 752
      Top = 0
      Width = 300
      Height = 86
      Cursor = crAuto
      Anchors = [akTop, akRight]
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      AutoSize = False
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      Enabled = False
      ScriptEvents = <>
      TabOrder = 11
      UseSize = False
      Cacheable = True
      FriendlyName = 'IWImageFile3'
      ImageFile.Filename = 'E:\delphi\delphi_web\Files\recast logo.gif'
    end
    object titleimage: TIWImageFile
      Left = 36
      Top = 11
      Width = 149
      Height = 77
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      AutoSize = False
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      Enabled = False
      ScriptEvents = <>
      TabOrder = 12
      UseSize = False
      Cacheable = True
      FriendlyName = 'titleimage'
      ImageFile.Filename = 'E:\delphi\delphi_web\Files\login.GIF'
    end
    object TitleLabel: TIWLabel
      Left = 35
      Top = -2
      Width = 168
      Height = 75
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1
      RenderSize = False
      Alignment = taLeftJustify
      BGColor = clWebWHITE
      Font.Color = clWebBLACK
      Font.FontName = 'Arial'
      Font.Size = 48
      Font.Style = [fsBold]
      NoWrap = False
      ConvertSpaces = False
      FriendlyName = 'TitleLabel'
      Caption = 'login'
      RawText = False
    end
  end
  object silink: TsiLangLinked
    Version = '5.3.1.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'IWButton1.Caption'
      'IWButton2.Caption'
      'IWButton3.Caption')
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
      737443617074696F6E730D0A4C6F67696E42746E014C6F67696E010D0A546974
      6C654C6162656C016C6F67696E010D0A737448696E74730D0A7374446973706C
      61794C6162656C730D0A7374466F6E74730D0A73744D756C74694C696E65730D
      0A4957526567696F6E312E4578747261546167506172616D7301010D0A426F64
      79526567696F6E2E4578747261546167506172616D7301010D0A495752656374
      616E676C65322E4578747261546167506172616D7301010D0A49575265637461
      6E676C65312E4578747261546167506172616D7301010D0A436F456469742E45
      78747261546167506172616D7301010D0A55736572456469742E457874726154
      6167506172616D7301010D0A50617373456469742E4578747261546167506172
      616D7301010D0A436F526563742E4578747261546167506172616D7301010D0A
      55736572526563742E4578747261546167506172616D7301010D0A5061737352
      6563742E4578747261546167506172616D7301010D0A495753694C696E6B312E
      4578747261546167506172616D7301010D0A4C6F67696E42746E2E4578747261
      546167506172616D7301010D0A4957427574746F6E312E457874726154616750
      6172616D7301010D0A4957427574746F6E322E4578747261546167506172616D
      7301010D0A4957427574746F6E332E4578747261546167506172616D7301010D
      0A4957526567696F6E322E4578747261546167506172616D7301010D0A495752
      656374616E676C65332E4578747261546167506172616D7301010D0A49575265
      6374616E676C65342E4578747261546167506172616D7301010D0A6C616E6763
      6F6D626F2E4578747261546167506172616D7301010D0A6C616E67636F6D626F
      2E4974656D7301010D0A4957496D616765312E4578747261546167506172616D
      7301010D0A495754696D6572312E4578747261546167506172616D7301010D0A
      4957526567696F6E332E4578747261546167506172616D7301010D0A49575265
      6374616E676C65352E4578747261546167506172616D7301010D0A4957526563
      74616E676C65362E4578747261546167506172616D7301010D0A5469746C654C
      6162656C2E4578747261546167506172616D7301010D0A4957496D6167654669
      6C65312E4578747261546167506172616D7301010D0A4957496D61676546696C
      65332E4578747261546167506172616D7301010D0A7374537472696E67730D0A
      436F6D70616E7901436F6D70616E79010D0A557365726E616D6501557365726E
      616D65010D0A50617373776F72640150617373776F7264010D0A73744F746865
      72537472696E67730D0A54666F726D5F6C6F67696E2E48656C704B6579776F72
      6401010D0A54666F726D5F6C6F67696E2E5469746C6501010D0A495752656769
      6F6E312E48656C704B6579776F726401010D0A426F6479526567696F6E2E4865
      6C704B6579776F726401010D0A495752656374616E676C65322E467269656E64
      6C794E616D6501495752656374616E676C6531010D0A495752656374616E676C
      65322E48656C704B6579776F726401010D0A495752656374616E676C65322E53
      74617475735465787401010D0A495752656374616E676C65322E546578740101
      0D0A495752656374616E676C65312E467269656E646C794E616D650149575265
      6374616E676C6531010D0A495752656374616E676C65312E48656C704B657977
      6F726401010D0A495752656374616E676C65312E537461747573546578740101
      0D0A495752656374616E676C65312E5465787401010D0A436F456469742E4672
      69656E646C794E616D6501436F45646974010D0A436F456469742E48656C704B
      6579776F726401010D0A436F456469742E5374617475735465787401010D0A43
      6F456469742E5465787401010D0A55736572456469742E467269656E646C794E
      616D650149574564697431010D0A55736572456469742E48656C704B6579776F
      726401010D0A55736572456469742E5374617475735465787401010D0A557365
      72456469742E5465787401010D0A50617373456469742E467269656E646C794E
      616D650149574564697431010D0A50617373456469742E48656C704B6579776F
      726401010D0A50617373456469742E5374617475735465787401010D0A506173
      73456469742E5465787401010D0A436F526563742E467269656E646C794E616D
      6501436F52656374010D0A436F526563742E48656C704B6579776F726401010D
      0A436F526563742E5374617475735465787401010D0A436F526563742E546578
      7401436F6D70616E79010D0A55736572526563742E467269656E646C794E616D
      6501495752656374616E676C6533010D0A55736572526563742E48656C704B65
      79776F726401010D0A55736572526563742E5374617475735465787401010D0A
      55736572526563742E5465787401557365726E616D65010D0A50617373526563
      742E467269656E646C794E616D6501495752656374616E676C6533010D0A5061
      7373526563742E48656C704B6579776F726401010D0A50617373526563742E53
      74617475735465787401010D0A50617373526563742E54657874015061737377
      6F7264010D0A495753694C696E6B312E436F6E6669726D6174696F6E01010D0A
      495753694C696E6B312E467269656E646C794E616D6501495753694C696E6B31
      010D0A495753694C696E6B312E48656C704B6579776F726401010D0A49575369
      4C696E6B312E4C616E6746696C65016C616E676C6F67696E2E73696C010D0A49
      5753694C696E6B312E5374617475735465787401010D0A4C6F67696E42746E2E
      436F6E6669726D6174696F6E01010D0A4C6F67696E42746E2E467269656E646C
      794E616D65014C6F67696E42746E010D0A4C6F67696E42746E2E48656C704B65
      79776F726401010D0A4C6F67696E42746E2E486F744B657901010D0A4C6F6769
      6E42746E2E5374617475735465787401010D0A4957427574746F6E312E436F6E
      6669726D6174696F6E01010D0A4957427574746F6E312E467269656E646C794E
      616D65014C6F67696E42746E010D0A4957427574746F6E312E48656C704B6579
      776F726401010D0A4957427574746F6E312E486F744B657901010D0A49574275
      74746F6E312E5374617475735465787401010D0A4957427574746F6E322E436F
      6E6669726D6174696F6E01010D0A4957427574746F6E322E467269656E646C79
      4E616D65014C6F67696E42746E010D0A4957427574746F6E322E48656C704B65
      79776F726401010D0A4957427574746F6E322E486F744B657901010D0A495742
      7574746F6E322E5374617475735465787401010D0A4957427574746F6E332E43
      6F6E6669726D6174696F6E01010D0A4957427574746F6E332E467269656E646C
      794E616D65014C6F67696E42746E010D0A4957427574746F6E332E48656C704B
      6579776F726401010D0A4957427574746F6E332E486F744B657901010D0A4957
      427574746F6E332E5374617475735465787401010D0A4957526567696F6E322E
      48656C704B6579776F726401010D0A495752656374616E676C65332E46726965
      6E646C794E616D6501495752656374616E676C6531010D0A495752656374616E
      676C65332E48656C704B6579776F726401010D0A495752656374616E676C6533
      2E5374617475735465787401010D0A495752656374616E676C65332E54657874
      01010D0A495752656374616E676C65342E467269656E646C794E616D65014957
      52656374616E676C6533010D0A495752656374616E676C65342E48656C704B65
      79776F726401010D0A495752656374616E676C65342E53746174757354657874
      01010D0A495752656374616E676C65342E5465787401010D0A6C616E67636F6D
      626F2E467269656E646C794E616D65016C616E67636F6D626F010D0A6C616E67
      636F6D626F2E48656C704B6579776F726401010D0A6C616E67636F6D626F2E4E
      6F53656C656374696F6E54657874012D2D204E6F2053656C656374696F6E202D
      2D010D0A6C616E67636F6D626F2E5374617475735465787401010D0A4957496D
      616765312E416C745465787401010D0A4957496D616765312E436F6E6669726D
      6174696F6E01010D0A4957496D616765312E467269656E646C794E616D650149
      57496D61676531010D0A4957496D616765312E48656C704B6579776F72640101
      0D0A4957496D616765312E5374617475735465787401010D0A4957526567696F
      6E332E48656C704B6579776F726401010D0A495752656374616E676C65352E46
      7269656E646C794E616D6501495752656374616E676C6533010D0A4957526563
      74616E676C65352E48656C704B6579776F726401010D0A495752656374616E67
      6C65352E5374617475735465787401010D0A495752656374616E676C65352E54
      65787401010D0A495752656374616E676C65362E467269656E646C794E616D65
      01495752656374616E676C6531010D0A495752656374616E676C65362E48656C
      704B6579776F726401010D0A495752656374616E676C65362E53746174757354
      65787401010D0A495752656374616E676C65362E5465787401010D0A5469746C
      654C6162656C2E467269656E646C794E616D65015469746C654C6162656C010D
      0A5469746C654C6162656C2E48656C704B6579776F726401010D0A5469746C65
      4C6162656C2E5374617475735465787401010D0A4957496D61676546696C6531
      2E416C745465787401010D0A4957496D61676546696C65312E436F6E6669726D
      6174696F6E01010D0A4957496D61676546696C65312E467269656E646C794E61
      6D65014957496D61676546696C6531010D0A4957496D61676546696C65312E48
      656C704B6579776F726401010D0A4957496D61676546696C65312E5374617475
      735465787401010D0A4957496D61676546696C65332E416C745465787401010D
      0A4957496D61676546696C65332E436F6E6669726D6174696F6E01010D0A4957
      496D61676546696C65332E467269656E646C794E616D65014957496D61676546
      696C6533010D0A4957496D61676546696C65332E48656C704B6579776F726401
      010D0A4957496D61676546696C65332E5374617475735465787401010D0A7374
      436F6C6C656374696F6E730D0A737443686172536574730D0A}
  end
  object IWTimer1: TIWTimer
    Enabled = False
    Interval = 1
    OnTimer = IWTimer1Timer
    Left = 32
    Top = 136
  end
end
