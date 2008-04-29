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
  DesignLeft = 106
  DesignTop = 103
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
      TabOrder = 8
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
      TabOrder = 2
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
      TabOrder = 0
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
        ColumnCount = 3
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
        TabOrder = 1
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
        TabOrder = 9
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
      657720466F726D6174010D0A737448696E74730D0A7374446973706C61794C61
      62656C730D0A7374466F6E74730D0A5475736572666F6F746572014D53205361
      6E73205365726966010D0A73744D756C74694C696E65730D0A4957526567696F
      6E312E4578747261546167506172616D7301010D0A495753694C696E6B312E45
      78747261546167506172616D7301010D0A426F6479526567696F6E2E45787472
      61546167506172616D7301010D0A495752656374616E676C65322E4578747261
      546167506172616D7301010D0A495752656374616E676C65312E457874726154
      6167506172616D7301010D0A566F7563686572477269642E4578747261546167
      506172616D7301010D0A496E7365727442746E2E457874726154616750617261
      6D7301010D0A4A6F624C6162656C2E4578747261546167506172616D7301010D
      0A4E6F74654C6162656C2E4578747261546167506172616D7301010D0A4E6F74
      65456469742E4578747261546167506172616D7301010D0A456469744A6F6252
      657642746E2E4578747261546167506172616D7301010D0A496D616765477269
      642E4578747261546167506172616D7301010D0A49574C6162656C332E457874
      7261546167506172616D7301010D0A49574C6162656C342E4578747261546167
      506172616D7301010D0A496D61676542746E2E4578747261546167506172616D
      7301010D0A41757468426F782E4578747261546167506172616D7301010D0A50
      726F64426F782E4578747261546167506172616D7301010D0A54657374426F78
      2E4578747261546167506172616D7301010D0A466F726D6174426F782E457874
      7261546167506172616D7301010D0A7374537472696E67730D0A477269642E4E
      616D65014E616D65010D0A477269642E54616701546167010D0A477269642E54
      7269676765720154726967676572010D0A477269642E47554944014755494401
      0D0A477269642E44657363014465736372697074696F6E010D0A477269642E50
      726F706572746965730150726F70657274696573010D0A477269642E54797065
      0154797065010D0A73744F74686572537472696E67730D0A54466F726D566F75
      636865722E48656C704B6579776F726401010D0A54466F726D566F7563686572
      2E5469746C650152656361737420436F6E74726F6C010D0A4672616D65426172
      655469746C65312E48656C704B6579776F726401010D0A75736572666F6F7465
      72312E48656C704B6579776F726401010D0A4957526567696F6E312E48656C70
      4B6579776F726401010D0A495753694C696E6B312E436F6E6669726D6174696F
      6E01010D0A495753694C696E6B312E467269656E646C794E616D650149575369
      4C696E6B31010D0A495753694C696E6B312E48656C704B6579776F726401010D
      0A495753694C696E6B312E4C616E6746696C650172756C65732E73696C010D0A
      495753694C696E6B312E5374617475735465787401010D0A426F647952656769
      6F6E2E48656C704B6579776F726401010D0A495752656374616E676C65322E46
      7269656E646C794E616D6501495752656374616E676C6531010D0A4957526563
      74616E676C65322E48656C704B6579776F726401010D0A495752656374616E67
      6C65322E5374617475735465787401010D0A495752656374616E676C65322E54
      65787401010D0A495752656374616E676C65312E467269656E646C794E616D65
      01495752656374616E676C6531010D0A495752656374616E676C65312E48656C
      704B6579776F726401010D0A495752656374616E676C65312E53746174757354
      65787401010D0A495752656374616E676C65312E5465787401010D0A566F7563
      686572477269642E467269656E646C794E616D6501566F756368657247726964
      010D0A566F7563686572477269642E48656C704B6579776F726401010D0A566F
      7563686572477269642E5374617475735465787401010D0A566F756368657247
      7269642E53756D6D61727901010D0A496E7365727442746E2E436F6E6669726D
      6174696F6E01010D0A496E7365727442746E2E467269656E646C794E616D6501
      496E7365727442746E010D0A496E7365727442746E2E48656C704B6579776F72
      6401010D0A496E7365727442746E2E486F744B657901010D0A496E7365727442
      746E2E5374617475735465787401010D0A4A6F624C6162656C2E467269656E64
      6C794E616D650153746F72654C6162656C010D0A4A6F624C6162656C2E48656C
      704B6579776F726401010D0A4A6F624C6162656C2E5374617475735465787401
      010D0A4E6F74654C6162656C2E467269656E646C794E616D650149574C616265
      6C31010D0A4E6F74654C6162656C2E48656C704B6579776F726401010D0A4E6F
      74654C6162656C2E5374617475735465787401010D0A4E6F7465456469742E46
      7269656E646C794E616D650149574564697431010D0A4E6F7465456469742E48
      656C704B6579776F726401010D0A4E6F7465456469742E537461747573546578
      7401010D0A4E6F7465456469742E54657874014E6F746545646974010D0A4564
      69744A6F6252657642746E2E436F6E6669726D6174696F6E01010D0A45646974
      4A6F6252657642746E2E467269656E646C794E616D6501496E7365727442746E
      010D0A456469744A6F6252657642746E2E48656C704B6579776F726401010D0A
      456469744A6F6252657642746E2E486F744B657901010D0A456469744A6F6252
      657642746E2E5374617475735465787401010D0A496D616765477269642E4672
      69656E646C794E616D6501566F756368657247726964010D0A496D6167654772
      69642E48656C704B6579776F726401010D0A496D616765477269642E53746174
      75735465787401010D0A496D616765477269642E53756D6D61727901010D0A49
      574C6162656C332E467269656E646C794E616D650149574C6162656C31010D0A
      49574C6162656C332E48656C704B6579776F726401010D0A49574C6162656C33
      2E5374617475735465787401010D0A49574C6162656C342E467269656E646C79
      4E616D650149574C6162656C31010D0A49574C6162656C342E48656C704B6579
      776F726401010D0A49574C6162656C342E5374617475735465787401010D0A49
      6D61676542746E2E436F6E6669726D6174696F6E01010D0A496D61676542746E
      2E467269656E646C794E616D6501496E7365727442746E010D0A496D61676542
      746E2E48656C704B6579776F726401010D0A496D61676542746E2E486F744B65
      7901010D0A496D61676542746E2E5374617475735465787401010D0A41757468
      426F782E436F6E6669726D6174696F6E01010D0A41757468426F782E46726965
      6E646C794E616D650141757468426F78010D0A41757468426F782E48656C704B
      6579776F726401010D0A41757468426F782E5374617475735465787401010D0A
      50726F64426F782E436F6E6669726D6174696F6E01010D0A50726F64426F782E
      467269656E646C794E616D650150726F64426F78010D0A50726F64426F782E48
      656C704B6579776F726401010D0A50726F64426F782E53746174757354657874
      01010D0A54657374426F782E436F6E6669726D6174696F6E01010D0A54657374
      426F782E467269656E646C794E616D650154657374426F78010D0A5465737442
      6F782E48656C704B6579776F726401010D0A54657374426F782E537461747573
      5465787401010D0A466F726D6174426F782E436F6E6669726D6174696F6E0101
      0D0A466F726D6174426F782E467269656E646C794E616D650154657374426F78
      010D0A466F726D6174426F782E48656C704B6579776F726401010D0A466F726D
      6174426F782E5374617475735465787401010D0A7374436F6C6C656374696F6E
      730D0A737443686172536574730D0A5475736572666F6F746572014445464155
      4C545F43484152534554010D0A}
  end
end
