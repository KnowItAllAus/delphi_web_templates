object ParamForm: TParamForm
  Left = 0
  Top = 0
  Width = 983
  Height = 721
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
  DesignLeft = 63
  DesignTop = 133
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 983
    Height = 118
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 983
      Height = 118
      TabOrder = 21
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 93
        Width = 1496
      end
      inherited IWRectangle3: TIWRectangle
        Top = 98
      end
      inherited IWImageFile3: TIWImageFile
        Left = 648
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'promotions'
      end
      inherited langlink: TIWSiLink
        Left = 577
      end
      inherited Smalltitle: TIWLabel
        Left = 863
        Top = 102
      end
      inherited HideBox: TIWImageFile
        Left = 966
        Top = 99
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 118
    Width = 983
    Height = 574
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
      983
      574)
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
      SiLangLinked = userfooter1.silink_footer
      LangFile = 'overrides.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object BodyRegion: TIWRegion
      Left = 179
      Top = 60
      Width = 647
      Height = 361
      Cursor = crAuto
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
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 647
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
        Height = 358
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
      object JobLabel: TIWLabel
        Left = 23
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
      object IWLabel3: TIWLabel
        Left = 23
        Top = 29
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
        Caption = 'Overrides'
        RawText = False
      end
      object templatelbl: TIWLabel
        Left = 23
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
      object ActiveHLbl: TIWLabel
        Left = 33
        Top = 139
        Width = 99
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
        FriendlyName = 'ActiveHLbl'
        Caption = 'Active Hours'
        RawText = False
      end
      object ActiveHLblFrom: TIWLabel
        Left = 47
        Top = 172
        Width = 34
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
        FriendlyName = 'ActiveHLblFrom'
        Caption = 'From'
        RawText = False
      end
      object FromEdit: TIWEdit
        Left = 97
        Top = 171
        Width = 153
        Height = 20
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clWebSILVER
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = False
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 5
        PasswordPrompt = False
        Text = 'FromEdit'
      end
      object ToEdit: TIWEdit
        Left = 97
        Top = 195
        Width = 153
        Height = 20
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clWebSILVER
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = False
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 9
        PasswordPrompt = False
        Text = 'ToEdit'
      end
      object ActiveHLblTo: TIWLabel
        Left = 47
        Top = 196
        Width = 18
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
        FriendlyName = 'ActiveHLblTo'
        Caption = 'To'
        RawText = False
      end
      object ActivePeriodLbl: TIWLabel
        Left = 289
        Top = 139
        Width = 102
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
        FriendlyName = 'ActivePeriodLbl'
        Caption = 'Active Period'
        RawText = False
      end
      object ActivePeriodLblFrom: TIWLabel
        Left = 303
        Top = 173
        Width = 29
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
        FriendlyName = 'ActivePeriodLblFrom'
        Caption = 'Start'
        RawText = False
      end
      object PeriodStartEdit: TIWEdit
        Left = 353
        Top = 172
        Width = 153
        Height = 20
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clWebSILVER
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = False
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 7
        PasswordPrompt = False
        Text = 'PeriodStartEdit'
      end
      object PeriodEndEdit: TIWEdit
        Left = 353
        Top = 196
        Width = 153
        Height = 20
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clWebSILVER
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = False
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 11
        PasswordPrompt = False
        Text = 'PeriodEndEdit'
      end
      object ActivePeriodLblTo: TIWLabel
        Left = 303
        Top = 197
        Width = 38
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
        FriendlyName = 'ActivePeriodLblTo'
        Caption = 'Finish'
        RawText = False
      end
      object IWLabel8: TIWLabel
        Left = 50
        Top = 102
        Width = 28
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
        FriendlyName = 'IWLabel8'
        Caption = 'Text'
        RawText = False
      end
      object TrigLabel: TIWLabel
        Left = 33
        Top = 80
        Width = 99
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
        FriendlyName = 'IWLabel5'
        Caption = 'Trigger Text'
        RawText = False
      end
      object IWLabel2: TIWLabel
        Left = 140
        Top = 56
        Width = 253
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
        FriendlyName = 'IWLabel5'
        Caption = 'Template Field Name References'
        RawText = False
      end
      object DaysLbl: TIWLabel
        Left = 289
        Top = 80
        Width = 102
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
        FriendlyName = 'IWLabel17'
        Caption = 'Active Days'
        RawText = False
      end
      object IWLabel6: TIWLabel
        Left = 303
        Top = 102
        Width = 48
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
        FriendlyName = 'IWLabel18'
        Caption = 'Days'
        RawText = False
      end
      object DaysEdit: TIWEdit
        Left = 353
        Top = 101
        Width = 153
        Height = 20
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clWebSILVER
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = False
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 3
        PasswordPrompt = False
        Text = 'DaysEdit'
      end
      object VStartedit: TIWEdit
        Left = 97
        Top = 264
        Width = 153
        Height = 20
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clWebSILVER
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = False
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 13
        PasswordPrompt = False
        Text = 'VStartEdit'
      end
      object VEndEdit: TIWEdit
        Left = 98
        Top = 289
        Width = 153
        Height = 20
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clWebSILVER
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = False
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 15
        PasswordPrompt = False
        Text = 'VEndEdit'
      end
      object ValueLblFrom: TIWLabel
        Left = 47
        Top = 267
        Width = 34
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
        FriendlyName = 'IWLabel13'
        Caption = 'From'
        RawText = False
      end
      object ValueLblTo: TIWLabel
        Left = 47
        Top = 291
        Width = 18
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
        FriendlyName = 'IWLabel14'
        Caption = 'To'
        RawText = False
      end
      object ValueLbl: TIWLabel
        Left = 33
        Top = 234
        Width = 99
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
        FriendlyName = 'IWLabel5'
        Caption = 'Value'
        RawText = False
      end
      object NewTrigEdit: TIWEdit
        Left = 93
        Top = 101
        Width = 153
        Height = 20
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clWebSILVER
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = False
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 1
        PasswordPrompt = False
        Text = 'NewTrigEdit'
      end
      object IWButton1: TIWButton
        Tag = 1
        Left = 250
        Top = 101
        Width = 21
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = '...'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton1'
        ScriptEvents = <>
        TabOrder = 2
        OnClick = IWButton1Click
      end
      object IWButton2: TIWButton
        Tag = 6
        Left = 509
        Top = 196
        Width = 21
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = '...'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton1'
        ScriptEvents = <>
        TabOrder = 12
        OnClick = IWButton1Click
      end
      object IWButton3: TIWButton
        Tag = 5
        Left = 509
        Top = 172
        Width = 21
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = '...'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton1'
        ScriptEvents = <>
        TabOrder = 8
        OnClick = IWButton1Click
      end
      object IWButton4: TIWButton
        Tag = 2
        Left = 510
        Top = 101
        Width = 21
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = '...'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton1'
        ScriptEvents = <>
        TabOrder = 4
        OnClick = IWButton1Click
      end
      object IWButton5: TIWButton
        Tag = 8
        Left = 254
        Top = 289
        Width = 21
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = '...'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton1'
        ScriptEvents = <>
        TabOrder = 16
        OnClick = IWButton1Click
      end
      object IWButton6: TIWButton
        Tag = 7
        Left = 254
        Top = 264
        Width = 21
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = '...'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton1'
        ScriptEvents = <>
        TabOrder = 14
        OnClick = IWButton1Click
      end
      object IWButton7: TIWButton
        Tag = 3
        Left = 253
        Top = 171
        Width = 21
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = '...'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton1'
        ScriptEvents = <>
        TabOrder = 6
        OnClick = IWButton1Click
      end
      object IWButton8: TIWButton
        Tag = 4
        Left = 253
        Top = 196
        Width = 21
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = '...'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWButton1'
        ScriptEvents = <>
        TabOrder = 10
        OnClick = IWButton1Click
      end
      object EditRegion: TIWRegion
        Left = 295
        Top = 240
        Width = 326
        Height = 101
        Cursor = crAuto
        Visible = False
        BorderOptions.NumericWidth = 2
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsSolid
        BorderOptions.Color = clWebYELLOW
        Color = 13150098
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1000
        Splitter = False
        object FieldCombo: TIWComboBox
          Left = 150
          Top = 35
          Width = 156
          Height = 21
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
          NoSelectionText = 'XXXXX'
          Required = False
          RequireSelection = True
          ScriptEvents = <>
          UseSize = True
          Style = stNormal
          ButtonColor = clBtnFace
          DoSubmitValidation = True
          Editable = True
          NonEditableAsLabel = False
          TabOrder = 17
          ItemIndex = 0
          Items.Strings = (
            '- - - - - - - - -')
          Sorted = False
          FriendlyName = 'FieldCombo'
        end
        object IWLabel11: TIWLabel
          Left = 20
          Top = 36
          Width = 114
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
          FriendlyName = 'IWLabel11'
          Caption = 'Select Parameter'
          RawText = False
        end
        object ModBtn: TIWButton
          Left = 185
          Top = 65
          Width = 75
          Height = 25
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = True
          Caption = 'Modify'
          DoSubmitValidation = True
          Color = clBtnFace
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          FriendlyName = 'ModBtn'
          ScriptEvents = <>
          TabOrder = 18
          OnClick = ModBtnClick
        end
        object ParamName: TIWLabel
          Left = 20
          Top = 11
          Width = 128
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
          Font.Style = [fsBold]
          NoWrap = False
          ConvertSpaces = False
          FriendlyName = 'IWLabel11'
          Caption = 'Parameter Name'
          RawText = False
        end
        object CancelBtn: TIWButton
          Left = 50
          Top = 65
          Width = 75
          Height = 25
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = True
          Caption = 'Cancel'
          DoSubmitValidation = True
          Color = clBtnFace
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          FriendlyName = 'IWButton9'
          ScriptEvents = <>
          TabOrder = 19
          OnClick = CancelBtnClick
        end
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 692
    Width = 983
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 2
    inherited IWRegion1: TIWRegion
      Width = 983
      Height = 29
      TabOrder = 20
      inherited IWRectangle1: TIWRectangle
        Left = 607
        Width = 416
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1599
      end
      inherited IWRectangle6: TIWRectangle
        Width = 565
      end
      inherited Cancel: TIWButton
        Left = 897
        Caption = 'Back'
        OnClick = userfooter1CancelClick
      end
      inherited Extra1: TIWButton
        Left = 809
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
      end
      inherited Extra2: TIWButton
        Left = 721
        Caption = 'Save'
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 353
      end
      inherited navcombo: TIWComboBox
        Visible = False
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
      'HelpKeyword'
      'FriendlyName'
      'StatusText'
      'Text'
      'LangFile'
      'Confirmation'
      'Hint'
      'ExtraTagParams')
    Top = 135
    TranslationData = {
      737443617074696F6E730D0A4A6F624C6162656C014A6F62010D0A49574C6162
      656C33014F7665727269646573010D0A74656D706C6174656C626C0154454D50
      4C415445010D0A416374697665484C626C0141637469766520486F757273010D
      0A416374697665484C626C46726F6D0146726F6D010D0A416374697665484C62
      6C546F01546F010D0A416374697665506572696F644C626C0141637469766520
      506572696F64010D0A416374697665506572696F644C626C46726F6D01537461
      7274010D0A416374697665506572696F644C626C546F0146696E697368010D0A
      49574C6162656C380154657874010D0A547269674C6162656C01547269676765
      722054657874010D0A49574C6162656C320154656D706C617465204669656C64
      204E616D65205265666572656E636573010D0A446179734C626C014163746976
      652044617973010D0A49574C6162656C360144617973010D0A56616C75654C62
      6C46726F6D0146726F6D010D0A56616C75654C626C546F01546F010D0A56616C
      75654C626C0156616C7565010D0A4957427574746F6E31012E2E2E010D0A4957
      427574746F6E32012E2E2E010D0A4957427574746F6E33012E2E2E010D0A4957
      427574746F6E34012E2E2E010D0A4957427574746F6E35012E2E2E010D0A4957
      427574746F6E36012E2E2E010D0A4957427574746F6E37012E2E2E010D0A4957
      427574746F6E38012E2E2E010D0A49574C6162656C31310153656C6563742050
      6172616D65746572010D0A4D6F6442746E014D6F64696679010D0A506172616D
      4E616D6501506172616D65746572204E616D65010D0A43616E63656C42746E01
      43616E63656C010D0A737448696E74730D0A7374446973706C61794C6162656C
      730D0A7374466F6E74730D0A73744D756C74694C696E65730D0A4669656C6443
      6F6D626F2E4974656D73012254686973207468696E6722010D0A737453747269
      6E67730D0A4E6F4669656C64014E6F206D61746368696E67204669656C647301
      0D0A73744F74686572537472696E67730D0A54506172616D466F726D2E546974
      6C6501010D0A4957427574746F6E312E486F744B657901010D0A495742757474
      6F6E322E486F744B657901010D0A4957427574746F6E332E486F744B65790101
      0D0A4957427574746F6E342E486F744B657901010D0A4957427574746F6E352E
      486F744B657901010D0A4957427574746F6E362E486F744B657901010D0A4957
      427574746F6E372E486F744B657901010D0A4957427574746F6E382E486F744B
      657901010D0A4669656C64436F6D626F2E4E6F53656C656374696F6E54657874
      012D202D202D202D202D202D202D20010D0A4D6F6442746E2E486F744B657901
      010D0A43616E63656C42746E2E486F744B657901010D0A7374436F6C6C656374
      696F6E730D0A737443686172536574730D0A}
  end
end
