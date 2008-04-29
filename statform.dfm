object formStats: TformStats
  Left = 0
  Top = 0
  Width = 1086
  Height = 948
  ConnectionMode = cmAny
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
  DesignLeft = 75
  DesignTop = 133
  inline FrameTitle1: TStatsFrameTitle
    Left = 0
    Top = 0
    Width = 1086
    Height = 114
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      TabOrder = 7
      inherited IWRectangle1: TIWRectangle
        Left = 152
        Width = 2535
      end
      inherited IWRectangle2: TIWRectangle
        Left = 152
      end
      inherited IWRectangle3: TIWRectangle
        Width = 1954
      end
      inherited IWImageFile3: TIWImageFile
        Left = 750
      end
      inherited langlink: TIWSiLink
        Left = 680
      end
      inherited IWRegion1: TIWRegion
        Color = 10526880
        inherited JournalLink: TIWLink
          OnClick = FrameTitle1JournalLinkClick
        end
      end
      inherited PromoReg: TIWRegion
        Color = 11100191
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 114
    Width = 1086
    Height = 805
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
      1086
      805)
    object IWRegion2: TIWRegion
      Left = 40
      Top = 16
      Width = 1004
      Height = 769
      Cursor = crAuto
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
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
        1004
        769)
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 1004
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
        Height = 766
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
      object VoucherLabel: TIWLabel
        Left = 264
        Top = 8
        Width = 122
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
        FriendlyName = 'VoucherLabel'
        Caption = 'View Statistics'
        RawText = False
      end
      object IWLabel1: TIWLabel
        Left = 96
        Top = 48
        Width = 64
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
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Start Date'
        RawText = False
      end
      object StartEdit: TIWEdit
        Left = 168
        Top = 46
        Width = 81
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
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
        FriendlyName = 'StartEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 0
        PasswordPrompt = False
        Text = 'StartEdit'
      end
      object IWLabel2: TIWLabel
        Left = 288
        Top = 48
        Width = 61
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
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel2'
        Caption = 'End Date'
        RawText = False
      end
      object EndEdit: TIWEdit
        Left = 360
        Top = 46
        Width = 81
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
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
        FriendlyName = 'EndEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 1
        PasswordPrompt = False
        Text = 'EndEdit'
      end
      object IWRadioGroup1: TIWRadioGroup
        Left = 472
        Top = 16
        Width = 65
        Height = 57
        Cursor = crAuto
        Visible = False
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWRadioGroup1'
        ItemIndex = 1
        Items.Strings = (
          '1 hour'
          '2 hour'
          '4 hour')
        Layout = glVertical
        ScriptEvents = <>
        TabOrder = 2
      end
      object DisplayBtn: TIWButton
        Left = 568
        Top = 40
        Width = 75
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Display'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clWebBLUE
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'DisplayBtn'
        ScriptEvents = <>
        TabOrder = 3
        OnClick = DisplayBtnClick
      end
      object IWSiLink1: TIWSiLink
        Left = 576
        Top = 16
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
        TabOrder = 4
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'stats.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object NextLink: TIWLink
        Left = 903
        Top = 750
        Width = 65
        Height = 17
        Cursor = crAuto
        Anchors = [akRight, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Alignment = taLeftJustify
        Color = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = False
        FriendlyName = 'NextLink'
        OnClick = NextLinkClick
        TabOrder = 5
        RawText = False
        Caption = 'Next >>'
      end
      object PrevLink: TIWLink
        Left = 823
        Top = 750
        Width = 65
        Height = 17
        Cursor = crAuto
        Anchors = [akRight, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Alignment = taLeftJustify
        Color = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = False
        FriendlyName = 'PrevLink'
        OnClick = PrevLinkClick
        TabOrder = 6
        RawText = False
        Caption = '<< Prev'
      end
      object StatGrid: TIWGrid
        Left = 33
        Top = 81
        Width = 938
        Height = 663
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
        Font.Color = clWebWHITE
        Font.Size = 10
        Font.Style = []
        FrameBuffer = 40
        Lines = tlAll
        OnRenderCell = StatGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'StatGrid'
        ColumnCount = 5
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
        ScrollToCurrentRow = False
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 919
    Width = 1086
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    inherited IWRegion1: TIWRegion
      Width = 1086
      Height = 29
      TabOrder = 8
      inherited IWRectangle1: TIWRectangle
        Left = 670
        Width = 418
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1702
      end
      inherited IWRectangle6: TIWRectangle
        Width = 628
      end
      inherited Cancel: TIWButton
        Left = 999
        Caption = 'Menu'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 911
      end
      inherited Extra2: TIWButton
        Left = 823
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 751
      end
    end
  end
  object siLangLinked1: TsiLangLinked
    Version = '5.3.1.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Hint'
      'FriendlyName'
      'StatusText'
      'Confirmation'
      'HotKey'
      'Text'
      'LangFile'
      'Title'
      'Summary')
    Left = 672
    Top = 344
    TranslationData = {
      737443617074696F6E730D0A737448696E74730D0A7374446973706C61794C61
      62656C730D0A7374466F6E74730D0A73744D756C74694C696E65730D0A737453
      7472696E67730D0A477269642E5374617274015374617274010D0A477269642E
      456E6401456E64010D0A477269642E537461740153746174010D0A477269642E
      54616701546167010D0A477269642E436F756E7401436F756E74010D0A73744F
      74686572537472696E67730D0A7374436F6C6C656374696F6E730D0A73744368
      6172536574730D0A}
  end
end
