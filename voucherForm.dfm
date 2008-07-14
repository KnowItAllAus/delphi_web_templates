object FormVoucher: TFormVoucher
  Left = 0
  Top = 0
  Width = 1045
  Height = 834
  ConnectionMode = cmAny
  Title = 'Recast Control'
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 104
  DesignTop = 104
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1045
    Height = 118
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1045
      Height = 118
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 93
        Width = 1045
      end
      inherited IWRectangle3: TIWRectangle
        Top = 98
      end
      inherited IWImageFile3: TIWImageFile
        Left = 710
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'promotions'
      end
      inherited langlink: TIWSiLink
        Left = 754
      end
      inherited Smalltitle: TIWLabel
        Left = 926
        Top = 101
      end
      inherited HideBox: TIWImageFile
        Left = 1028
        Top = 100
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 805
    Width = 1045
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1045
      Height = 29
      TabOrder = 9
      inherited IWRectangle1: TIWRectangle
        Left = 629
        Width = 416
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1661
      end
      inherited IWRectangle6: TIWRectangle
        Width = 587
      end
      inherited Cancel: TIWButton
        Left = 959
        Caption = 'Back'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 871
      end
      inherited Extra2: TIWButton
        Left = 783
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 713
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 1045
    Height = 687
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
      1045
      687)
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
      TabOrder = 1
      RawText = False
      SiLangLinked = silanglinked1
      LangFile = 'rules.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 29
      Top = 10
      Width = 992
      Height = 668
      Cursor = crAuto
      Anchors = [akLeft, akTop, akRight, akBottom]
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
        992
        668)
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 992
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
        Height = 665
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
      object VoucherGrid: TIWGrid
        Left = 9
        Top = 120
        Width = 470
        Height = 542
        Cursor = crAuto
        Anchors = [akLeft, akTop, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        BorderColors.Color = clNone
        BorderColors.Light = clNone
        BorderColors.Dark = clNone
        BGColor = clNone
        BorderSize = 1
        BorderStyle = tfDefault
        CellPadding = 0
        CellSpacing = 0
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FrameBuffer = 40
        Lines = tlAll
        OnRenderCell = VoucherGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'VoucherGrid'
        ColumnCount = 2
        OnCellClick = VoucherGridCellClick
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
        ScrollToCurrentRow = False
      end
      object InsertBtn: TIWButton
        Left = 398
        Top = 88
        Width = 75
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'New'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'InsertBtn'
        ScriptEvents = <>
        TabOrder = 2
        OnClick = InsertBtnClick
      end
      object JobLabel: TIWLabel
        Left = 48
        Top = 5
        Width = 441
        Height = 19
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'StoreLabel'
        Caption = 'Job'
        RawText = False
      end
      object NoteLabel: TIWLabel
        Left = 48
        Top = 26
        Width = 31
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
        FriendlyName = 'IWLabel1'
        Caption = 'Note'
        RawText = False
      end
      object NoteEdit: TIWEdit
        Left = 128
        Top = 25
        Width = 497
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clGrayText
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWEdit1'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        TabOrder = 3
        PasswordPrompt = False
        Text = 'NoteEdit'
      end
      object EditJobRevBtn: TIWButton
        Left = 128
        Top = 51
        Width = 75
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Edit'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'InsertBtn'
        ScriptEvents = <>
        TabOrder = 4
        OnClick = EditJobRevBtnClick
      end
      object ImageGrid: TIWGrid
        Left = 488
        Top = 120
        Width = 493
        Height = 541
        Cursor = crAuto
        Anchors = [akLeft, akTop, akRight, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        BorderColors.Color = clNone
        BorderColors.Light = clNone
        BorderColors.Dark = clNone
        BGColor = clNone
        BorderSize = 1
        BorderStyle = tfDefault
        CellPadding = 0
        CellSpacing = 0
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FrameBuffer = 40
        Lines = tlAll
        OnRenderCell = VoucherGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'VoucherGrid'
        ColumnCount = 5
        OnCellClick = ImageGridCellClick
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
        ScrollToCurrentRow = False
      end
      object IWLabel3: TIWLabel
        Left = 8
        Top = 89
        Width = 137
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Rules'
        RawText = False
      end
      object IWLabel4: TIWLabel
        Left = 488
        Top = 89
        Width = 169
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Images'
        RawText = False
      end
      object ImageBtn: TIWButton
        Left = 907
        Top = 88
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = [akTop, akRight]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'New'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'InsertBtn'
        ScriptEvents = <>
        TabOrder = 5
        OnClick = ImageBtnClick
      end
      object AuthBox: TIWCheckBox
        Left = 640
        Top = 16
        Width = 177
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Caption = 'Authorised / Read Only'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 6
        OnClick = AuthBoxClick
        Checked = False
        FriendlyName = 'AuthBox'
      end
      object ProdBox: TIWCheckBox
        Left = 640
        Top = 40
        Width = 169
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Caption = 'Production'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 7
        OnClick = ProdBoxClick
        Checked = False
        FriendlyName = 'ProdBox'
      end
      object TestBox: TIWCheckBox
        Left = 640
        Top = 64
        Width = 121
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Caption = 'Test'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 8
        OnClick = TestBoxClick
        Checked = False
        FriendlyName = 'TestBox'
      end
      object FormatBox: TIWCheckBox
        Left = 255
        Top = 94
        Width = 121
        Height = 21
        Cursor = crAuto
        Visible = False
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Caption = 'New Format'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 10
        OnClick = TestBoxClick
        OnChange = FormatBoxChange
        Checked = False
        FriendlyName = 'TestBox'
      end
      object templatelbl: TIWLabel
        Left = 18
        Top = 54
        Width = 98
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clWebRED
        Font.Size = 12
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'templatelbl'
        Caption = 'TEMPLATE'
        RawText = False
      end
    end
  end
  object silanglinked1: TsiLangLinked
    Version = '5.3.1.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'UserLabel.Caption'
      'Extra1.Caption'
      'Extra2.Caption'
      'Extra3.Caption'
      'Cancel.Caption'
      'VoucherGrid.Caption')
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
      737443617074696F6E730D0A496E7365727442746E014E6577010D0A4A6F624C
      6162656C014A6F62010D0A4E6F74654C6162656C014E6F7465010D0A45646974
      4A6F6252657642746E0145646974010D0A496D6167654772696401010D0A4957
      4C6162656C330152756C6573010D0A49574C6162656C3401496D61676573010D
      0A496D61676542746E014E6577010D0A41757468426F7801417574686F726973
      6564202F2052656164204F6E6C79010D0A50726F64426F780150726F64756374
      696F6E010D0A54657374426F780154657374010D0A466F726D6174426F78014E
      657720466F726D6174010D0A74656D706C6174656C626C0154454D504C415445
      010D0A737448696E74730D0A7374446973706C61794C6162656C730D0A737446
      6F6E74730D0A5475736572666F6F746572014D532053616E7320536572696601
      0D0A73744D756C74694C696E65730D0A4957526567696F6E312E457874726154
      6167506172616D7301010D0A495753694C696E6B312E45787472615461675061
      72616D7301010D0A426F6479526567696F6E2E4578747261546167506172616D
      7301010D0A495752656374616E676C65322E4578747261546167506172616D73
      01010D0A495752656374616E676C65312E4578747261546167506172616D7301
      010D0A566F7563686572477269642E4578747261546167506172616D7301010D
      0A496E7365727442746E2E4578747261546167506172616D7301010D0A4A6F62
      4C6162656C2E4578747261546167506172616D7301010D0A4E6F74654C616265
      6C2E4578747261546167506172616D7301010D0A4E6F7465456469742E457874
      7261546167506172616D7301010D0A456469744A6F6252657642746E2E457874
      7261546167506172616D7301010D0A496D616765477269642E45787472615461
      67506172616D7301010D0A49574C6162656C332E457874726154616750617261
      6D7301010D0A49574C6162656C342E4578747261546167506172616D7301010D
      0A496D61676542746E2E4578747261546167506172616D7301010D0A41757468
      426F782E4578747261546167506172616D7301010D0A50726F64426F782E4578
      747261546167506172616D7301010D0A54657374426F782E4578747261546167
      506172616D7301010D0A466F726D6174426F782E457874726154616750617261
      6D7301010D0A74656D706C6174656C626C2E4578747261546167506172616D73
      01010D0A7374537472696E67730D0A477269642E4E616D65014E616D65010D0A
      477269642E54616701546167010D0A477269642E547269676765720154726967
      676572010D0A477269642E475549440147554944010D0A477269642E44657363
      014465736372697074696F6E010D0A477269642E50726F706572746965730150
      726F70657274696573010D0A477269642E547970650154797065010D0A477269
      642E506172616D73014F7665727269646573010D0A73744F7468657253747269
      6E67730D0A54466F726D566F75636865722E48656C704B6579776F726401010D
      0A54466F726D566F75636865722E5469746C650152656361737420436F6E7472
      6F6C010D0A4672616D65426172655469746C65312E48656C704B6579776F7264
      01010D0A75736572666F6F746572312E48656C704B6579776F726401010D0A49
      57526567696F6E312E48656C704B6579776F726401010D0A495753694C696E6B
      312E436F6E6669726D6174696F6E01010D0A495753694C696E6B312E46726965
      6E646C794E616D6501495753694C696E6B31010D0A495753694C696E6B312E48
      656C704B6579776F726401010D0A495753694C696E6B312E4C616E6746696C65
      0172756C65732E73696C010D0A495753694C696E6B312E537461747573546578
      7401010D0A426F6479526567696F6E2E48656C704B6579776F726401010D0A49
      5752656374616E676C65322E467269656E646C794E616D650149575265637461
      6E676C6531010D0A495752656374616E676C65322E48656C704B6579776F7264
      01010D0A495752656374616E676C65322E5374617475735465787401010D0A49
      5752656374616E676C65322E5465787401010D0A495752656374616E676C6531
      2E467269656E646C794E616D6501495752656374616E676C6531010D0A495752
      656374616E676C65312E48656C704B6579776F726401010D0A49575265637461
      6E676C65312E5374617475735465787401010D0A495752656374616E676C6531
      2E5465787401010D0A566F7563686572477269642E467269656E646C794E616D
      6501566F756368657247726964010D0A566F7563686572477269642E48656C70
      4B6579776F726401010D0A566F7563686572477269642E537461747573546578
      7401010D0A566F7563686572477269642E53756D6D61727901010D0A496E7365
      727442746E2E436F6E6669726D6174696F6E01010D0A496E7365727442746E2E
      467269656E646C794E616D6501496E7365727442746E010D0A496E7365727442
      746E2E48656C704B6579776F726401010D0A496E7365727442746E2E486F744B
      657901010D0A496E7365727442746E2E5374617475735465787401010D0A4A6F
      624C6162656C2E467269656E646C794E616D650153746F72654C6162656C010D
      0A4A6F624C6162656C2E48656C704B6579776F726401010D0A4A6F624C616265
      6C2E5374617475735465787401010D0A4E6F74654C6162656C2E467269656E64
      6C794E616D650149574C6162656C31010D0A4E6F74654C6162656C2E48656C70
      4B6579776F726401010D0A4E6F74654C6162656C2E5374617475735465787401
      010D0A4E6F7465456469742E467269656E646C794E616D650149574564697431
      010D0A4E6F7465456469742E48656C704B6579776F726401010D0A4E6F746545
      6469742E5374617475735465787401010D0A4E6F7465456469742E5465787401
      4E6F746545646974010D0A456469744A6F6252657642746E2E436F6E6669726D
      6174696F6E01010D0A456469744A6F6252657642746E2E467269656E646C794E
      616D6501496E7365727442746E010D0A456469744A6F6252657642746E2E4865
      6C704B6579776F726401010D0A456469744A6F6252657642746E2E486F744B65
      7901010D0A456469744A6F6252657642746E2E5374617475735465787401010D
      0A496D616765477269642E467269656E646C794E616D6501566F756368657247
      726964010D0A496D616765477269642E48656C704B6579776F726401010D0A49
      6D616765477269642E5374617475735465787401010D0A496D61676547726964
      2E53756D6D61727901010D0A49574C6162656C332E467269656E646C794E616D
      650149574C6162656C31010D0A49574C6162656C332E48656C704B6579776F72
      6401010D0A49574C6162656C332E5374617475735465787401010D0A49574C61
      62656C342E467269656E646C794E616D650149574C6162656C31010D0A49574C
      6162656C342E48656C704B6579776F726401010D0A49574C6162656C342E5374
      617475735465787401010D0A496D61676542746E2E436F6E6669726D6174696F
      6E01010D0A496D61676542746E2E467269656E646C794E616D6501496E736572
      7442746E010D0A496D61676542746E2E48656C704B6579776F726401010D0A49
      6D61676542746E2E486F744B657901010D0A496D61676542746E2E5374617475
      735465787401010D0A41757468426F782E436F6E6669726D6174696F6E01010D
      0A41757468426F782E467269656E646C794E616D650141757468426F78010D0A
      41757468426F782E48656C704B6579776F726401010D0A41757468426F782E53
      74617475735465787401010D0A50726F64426F782E436F6E6669726D6174696F
      6E01010D0A50726F64426F782E467269656E646C794E616D650150726F64426F
      78010D0A50726F64426F782E48656C704B6579776F726401010D0A50726F6442
      6F782E5374617475735465787401010D0A54657374426F782E436F6E6669726D
      6174696F6E01010D0A54657374426F782E467269656E646C794E616D65015465
      7374426F78010D0A54657374426F782E48656C704B6579776F726401010D0A54
      657374426F782E5374617475735465787401010D0A466F726D6174426F782E43
      6F6E6669726D6174696F6E01010D0A466F726D6174426F782E467269656E646C
      794E616D650154657374426F78010D0A466F726D6174426F782E48656C704B65
      79776F726401010D0A466F726D6174426F782E5374617475735465787401010D
      0A74656D706C6174656C626C2E467269656E646C794E616D650174656D706C61
      74656C626C010D0A74656D706C6174656C626C2E48656C704B6579776F726401
      010D0A74656D706C6174656C626C2E5374617475735465787401010D0A737443
      6F6C6C656374696F6E730D0A737443686172536574730D0A5475736572666F6F
      7465720144454641554C545F43484152534554010D0A}
  end
end
