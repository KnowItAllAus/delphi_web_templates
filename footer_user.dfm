object userfooter: Tuserfooter
  Left = 0
  Top = 0
  Width = 1016
  Height = 28
  HorzScrollBar.Visible = False
  Anchors = [akLeft, akRight, akBottom]
  TabOrder = 0
  object IWRegion1: TIWRegion
    Left = 0
    Top = 0
    Width = 1016
    Height = 28
    Cursor = crAuto
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    TabOrder = 0
    Align = alClient
    BorderOptions.NumericWidth = 0
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsNone
    BorderOptions.Color = clNone
    Color = clNone
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    OnCreate = IWRegion1Create
    Splitter = False
    DesignSize = (
      1016
      28)
    object IWRectangle1: TIWRectangle
      Left = 640
      Top = 0
      Width = 377
      Height = 23
      Cursor = crAuto
      Anchors = [akTop, akRight]
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1
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
    object IWRectangle4: TIWRectangle
      Left = 0
      Top = 24
      Width = 1632
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
    object IWRectangle5: TIWRectangle
      Left = 0
      Top = 0
      Width = 38
      Height = 23
      Cursor = crAuto
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
    object IWImage1: TIWImage
      Left = 9
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
      TabOrder = 0
      UseSize = True
      OnClick = IWImage1Click
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
    object IWRectangle6: TIWRectangle
      Left = 40
      Top = 0
      Width = 598
      Height = 23
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
    object UserLabel: TIWLabel
      Left = 238
      Top = 3
      Width = 50
      Height = 19
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 100
      RenderSize = False
      Alignment = taLeftJustify
      BGColor = clNone
      Font.Color = clWebWHITE
      Font.FontName = 'arial'
      Font.Size = 13
      Font.Style = [fsBold]
      NoWrap = False
      ConvertSpaces = False
      FriendlyName = 'User'
      Caption = 'USER'
      RawText = False
    end
    object Cancel: TIWButton
      Left = 930
      Top = 2
      Width = 83
      Height = 21
      Cursor = crAuto
      Anchors = [akTop, akRight]
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 2
      RenderSize = True
      Caption = 'Cancel'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'Cancel'
      ScriptEvents = <>
      TabOrder = 1
    end
    object Extra1: TIWButton
      Left = 842
      Top = 2
      Width = 83
      Height = 21
      Cursor = crAuto
      Visible = False
      Anchors = [akTop, akRight]
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 2
      RenderSize = True
      Caption = 'Extra1'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'Extra1'
      ScriptEvents = <>
      TabOrder = 2
    end
    object Extra2: TIWButton
      Left = 754
      Top = 2
      Width = 83
      Height = 21
      Cursor = crAuto
      Visible = False
      Anchors = [akTop, akRight]
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 2
      RenderSize = True
      Caption = 'Extra2'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'Extra2'
      ScriptEvents = <>
      TabOrder = 3
    end
    object fiwSiLink1: TIWSiLink
      Left = 386
      Top = 9
      Width = 65
      Height = 17
      Cursor = crAuto
      Anchors = [akTop, akRight]
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 2
      RenderSize = False
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'fiwSiLink1'
      TabOrder = 4
      RawText = False
      SiLangLinked = silink_footer
      LangFile = 'footer.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object navcombo: TIWComboBox
      Left = 46
      Top = 0
      Width = 181
      Height = 21
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1
      RenderSize = True
      BGColor = clNone
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FocusColor = clNone
      AutoHideOnMenuActivation = False
      ItemsHaveValues = False
      NoSelectionText = '-- Go to ... --'
      Required = False
      RequireSelection = True
      ScriptEvents = <>
      OnChange = navcomboChange
      UseSize = True
      Style = stNormal
      ButtonColor = clBtnFace
      DoSubmitValidation = True
      Editable = True
      NonEditableAsLabel = True
      TabOrder = 5
      ItemIndex = -1
      Items.Strings = (
        'Jobs'
        'Job Distribution'
        'Journal'
        'System'
        'Overview'
        'Publish'
        'Status'
        '- - - - - - -'
        'Logout')
      Sorted = False
      FriendlyName = 'navcombo'
    end
  end
  object silink_footer: TsiLangLinked
    Version = '5.3.1.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'UserLabel.Caption'
      'Cancel.Caption'
      'Extra1.Caption'
      'Extra2.Caption')
    LangDispatcher = RcDataMod.siLangDispatcher1
    OnChangeLanguage = silink_footerChangeLanguage
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Hint')
    Left = 72
    TranslationData = {
      737443617074696F6E730D0A737448696E74730D0A7374446973706C61794C61
      62656C730D0A7374466F6E74730D0A5475736572666F6F746572014D53205361
      6E73205365726966010D0A73744D756C74694C696E65730D0A7374537472696E
      67730D0A557365720155534552010D0A4C6F676F7574014C4F474F4646010D0A
      41636365707401414343455054010D0A43616E63656C0143414E43454C010D0A
      44656C6574650144454C455445010D0A50617373776F72640150617373776F72
      64010D0A536176650153415645010D0A4261636B014261636B010D0A44656C65
      746550726F6D70740144656C6574652074686973207265636F72643F010D0A44
      424572726F72014572726F7220736176696E672064617461010D0A4D656E7501
      4D656E75010D0A6E6176636F6D626F2E300150726F6D6F74696F6E73010D0A6E
      6176636F6D626F2E3101446973747269627574696F6E010D0A6E6176636F6D62
      6F2E32015265706F727473010D0A6E6176636F6D626F2E330141646D696E6973
      74726174696F6E010D0A6E6176636F6D626F2E34014F76657276696577010D0A
      6E6176636F6D626F2E37012D2D2D2D2D2D2D2D2D2D2D2D2D2D010D0A6E617663
      6F6D626F2E38014C6F676F7574010D0A6E6176636F6D626F73656C656374012D
      2D20476F20746F202E2E2E202D2D010D0A6E6176636F6D626F2E35015075626C
      697368010D0A6E6176636F6D626F2E3601537461747573010D0A437265617465
      01435245415445010D0A73744F74686572537472696E67730D0A7374436F6C6C
      656374696F6E730D0A737443686172536574730D0A5475736572666F6F746572
      0144454641554C545F43484152534554010D0A}
  end
end
