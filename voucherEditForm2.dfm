object FormVoucherEdit2: TFormVoucherEdit2
  Left = 0
  Top = 0
  Width = 1014
  Height = 719
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'Recast Control'
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  OnDefaultAction = IWAppFormDefaultAction
  XPTheme = True
  DesignLeft = -127
  DesignTop = 185
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1014
    Height = 117
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 1014
      Height = 117
      TabOrder = 29
      DesignSize = (
        1014
        117)
      inherited titleimage: TIWImageFile
        ImageFile.Filename = 'E:\delphi\delphi_web\files\promotions.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 92
        Width = 1014
      end
      inherited IWRectangle3: TIWRectangle
        Top = 97
      end
      inherited IWImageFile3: TIWImageFile
        Left = 679
      end
      inherited langlink: TIWSiLink
        Left = 581
      end
      inherited Smalltitle: TIWLabel
        Left = 942
        Top = 101
        Width = 52
      end
      inherited HideBox: TIWImageFile
        Top = 99
      end
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'promotions'
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 690
    Width = 1014
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1014
      Height = 29
      TabOrder = 30
      DesignSize = (
        1014
        29)
      inherited IWRectangle1: TIWRectangle
        Left = 598
        Width = 417
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1630
      end
      inherited IWRectangle6: TIWRectangle
        Width = 556
      end
      inherited Cancel: TIWButton
        Left = 928
        OnClick = CancelBtnClick
      end
      inherited Extra1: TIWButton
        Left = 840
        Visible = True
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        OnClick = DelBtnClick
      end
      inherited Extra2: TIWButton
        Left = 752
        Visible = True
        Caption = 'Save'
        OnClick = PostButtonClick
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 628
      end
      inherited navcombo: TIWComboBox
        Visible = False
        Anchors = [akLeft, akTop, akRight]
      end
    end
    inherited silink_footer: TsiLangLinked
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
  object IWRegion1: TIWRegion
    Left = 0
    Top = 117
    Width = 1014
    Height = 573
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
      1014
      573)
    object FormatBox: TIWCheckBox
      Left = 7
      Top = 6
      Width = 97
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
      Caption = 'New'
      Editable = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      SubmitOnAsyncEvent = True
      ScriptEvents = <>
      DoSubmitValidation = True
      Style = stNormal
      TabOrder = 36
      OnClick = FormatBoxClick
      Checked = False
      FriendlyName = 'DupBox'
    end
    object IWRegion2: TIWRegion
      Left = 136
      Top = 8
      Width = 765
      Height = 558
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akTop, akBottom]
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
        765
        558)
      object NewNameEdit: TIWEdit
        Left = 81
        Top = 32
        Width = 230
        Height = 20
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
        FriendlyName = 'NewNameEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 0
        PasswordPrompt = False
        Text = 'NewNameEdit'
      end
      object IWLabel1: TIWLabel
        Left = 13
        Top = 33
        Width = 40
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
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Name'
        RawText = False
      end
      object VoucherLabel: TIWLabel
        Left = 276
        Top = 8
        Width = 225
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
        FriendlyName = 'VoucherLabel'
        Caption = 'Rules - Events and Actions'
        RawText = False
      end
      object IWLabel3: TIWLabel
        Left = 509
        Top = 33
        Width = 27
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
        AutoSize = False
        FriendlyName = 'IWLabel3'
        Caption = 'Tag'
        RawText = False
      end
      object NewVendLabel: TIWLabel
        Left = 543
        Top = 58
        Width = 33
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
        AutoSize = False
        FriendlyName = 'IWLabel3'
        Caption = 'Vend.'
        RawText = False
      end
      object NewVendEdit: TIWEdit
        Left = 583
        Top = 57
        Width = 57
        Height = 20
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
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 3
        PasswordPrompt = False
        Text = 'NewVendEdit'
      end
      object NewProdLabel: TIWLabel
        Left = 655
        Top = 58
        Width = 33
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
        AutoSize = False
        FriendlyName = 'IWLabel3'
        Caption = 'Prod.'
        RawText = False
      end
      object NewTagEdit: TIWEdit
        Left = 549
        Top = 32
        Width = 81
        Height = 20
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
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 1
        PasswordPrompt = False
        Text = 'NewTagEdit'
      end
      object IWLabel2: TIWLabel
        Left = 653
        Top = 31
        Width = 14
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
        AutoSize = False
        FriendlyName = 'IWLabel2'
        Caption = 'ID'
        RawText = False
      end
      object NewIDEdit: TIWEdit
        Left = 677
        Top = 30
        Width = 73
        Height = 20
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
        BGColor = clBtnFace
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 2
        PasswordPrompt = False
        Text = 'NewIDEdit'
      end
      object NewProdEdit: TIWEdit
        Left = 695
        Top = 57
        Width = 57
        Height = 20
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
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        SubmitOnAsyncEvent = True
        TabOrder = 4
        PasswordPrompt = False
        Text = 'NewProdEdit'
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 555
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
        Width = 765
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
      object PurposeCombo: TIWComboBox
        Left = 80
        Top = 54
        Width = 233
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
        OnChange = PurposeComboChange
        UseSize = False
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 32
        ItemIndex = -1
        Items.Strings = (
          'Print: Logo'
          'Print: Text'
          'Print: Product'
          'Print: Stock'
          'Scan'
          'Card')
        Sorted = False
        FriendlyName = 'PurposeCombo'
      end
      object IWLabel27: TIWLabel
        Left = 13
        Top = 56
        Width = 63
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
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel9'
        Caption = 'Event'
        RawText = False
      end
      object IWLabel6: TIWLabel
        Left = 320
        Top = 57
        Width = 63
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
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel9'
        Caption = 'Priority'
        RawText = False
      end
      object PriorityCombo: TIWComboBox
        Left = 387
        Top = 54
        Width = 137
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
        UseSize = False
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = 33
        ItemIndex = -1
        Items.Strings = (
          'First'
          'High'
          'Normal'
          'Low 1'
          'Low 2'
          'Low 3'
          'Low 4'
          'Low 5'
          'Last')
        Sorted = False
        FriendlyName = 'PurposeCombo'
      end
      object IWRegion3: TIWRegion
        Left = 18
        Top = 80
        Width = 733
        Height = 89
        Cursor = crAuto
        RenderInvisibleControls = False
        TabOrder = 9
        BorderOptions.NumericWidth = 0
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsSolid
        BorderOptions.Color = clNone
        Color = clWebSILVER
        ParentShowHint = False
        ShowHint = True
        ZIndex = -1
        Splitter = False
        object OutputCombo: TIWComboBox
          Left = 80
          Top = 37
          Width = 266
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
          UseSize = False
          Style = stNormal
          ButtonColor = clBtnFace
          DoSubmitValidation = True
          Editable = True
          NonEditableAsLabel = True
          SubmitOnAsyncEvent = True
          TabOrder = 5
          ItemIndex = -1
          Items.Strings = (
            'No action'
            'Footer Block'
            'Multi-Footer Block'
            'Inline append'
            'Inline overwrite'
            'Inline prepend')
          Sorted = False
          FriendlyName = 'OutputCombo'
        end
        object IWLabel28: TIWLabel
          Left = 8
          Top = 38
          Width = 47
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
          Font.Style = [fsBold]
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel6'
          Caption = 'Action'
          RawText = False
        end
        object vlabelfrom: TIWLabel
          Left = 80
          Top = 65
          Width = 73
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
          AutoSize = False
          FriendlyName = 'IWLabel3'
          Caption = 'Value from'
          RawText = False
        end
        object VStartedit: TIWEdit
          Left = 155
          Top = 64
          Width = 81
          Height = 20
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          SubmitOnAsyncEvent = True
          TabOrder = 8
          PasswordPrompt = False
          Text = 'VStartEdit'
        end
        object VEndEdit: TIWEdit
          Left = 266
          Top = 64
          Width = 81
          Height = 20
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          SubmitOnAsyncEvent = True
          TabOrder = 9
          PasswordPrompt = False
          Text = 'VEndEdit'
        end
        object vLabelTo: TIWLabel
          Left = 244
          Top = 65
          Width = 14
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
          AutoSize = False
          FriendlyName = 'IWLabel2'
          Caption = 'to'
          RawText = False
        end
        object DupBox: TIWCheckBox
          Left = 467
          Top = 60
          Width = 129
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
          Caption = 'Inhibit Duplicates'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          SubmitOnAsyncEvent = True
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 7
          Checked = False
          FriendlyName = 'DupBox'
        end
        object PassthroughBox: TIWCheckBox
          Left = 467
          Top = 36
          Width = 97
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
          Caption = 'Passthrough'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          SubmitOnAsyncEvent = True
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 6
          Checked = False
          FriendlyName = 'DupBox'
        end
        object IWRadioGroup1: TIWRadioGroup
          Left = 625
          Top = 20
          Width = 76
          Height = 61
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
          SubmitOnAsyncEvent = True
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          FriendlyName = 'IWRadioGroup1'
          ItemIndex = 0
          Items.Strings = (
            'Normal'
            'Rnd Qty'
            'Customer.')
          Layout = glVertical
          ScriptEvents = <>
          TabOrder = 31
        end
        object IWLabel8: TIWLabel
          Left = 5
          Top = 7
          Width = 41
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
          Font.Style = [fsBold]
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel8'
          Caption = 'Text'
          RawText = False
        end
        object IWComboBox1: TIWComboBox
          Left = 81
          Top = 6
          Width = 100
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
          UseSize = True
          Style = stNormal
          ButtonColor = clBtnFace
          DoSubmitValidation = True
          Editable = True
          NonEditableAsLabel = True
          SubmitOnAsyncEvent = True
          TabOrder = 34
          ItemIndex = 0
          Items.Strings = (
            'Simple'
            'Expression')
          Sorted = False
          FriendlyName = 'IWComboBox1'
        end
        object NewTrigEdit: TIWEdit
          Left = 191
          Top = 6
          Width = 375
          Height = 20
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          SubmitOnAsyncEvent = True
          TabOrder = 35
          PasswordPrompt = False
          Text = 'NewTrigEdit'
        end
      end
      object IWRegion5: TIWRegion
        Left = 401
        Top = 172
        Width = 350
        Height = 294
        Cursor = crAuto
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        RenderInvisibleControls = False
        TabOrder = 18
        Anchors = [akLeft, akTop, akBottom]
        BorderOptions.NumericWidth = 0
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsSolid
        BorderOptions.Color = clNone
        Color = clWebSILVER
        ParentShowHint = False
        ShowHint = True
        ZIndex = -1
        Splitter = False
        DesignSize = (
          350
          294)
        object IWLabel11: TIWLabel
          Left = 8
          Top = 4
          Width = 57
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
          AutoSize = False
          FriendlyName = 'IWLabel11'
          Caption = 'Rule'
          RawText = False
        end
        object DepGrid: TIWGrid
          Left = 2
          Top = 72
          Width = 346
          Height = 220
          Cursor = crAuto
          Anchors = [akLeft, akTop, akBottom]
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
          OnRenderCell = ImageGridRenderCell
          UseFrame = True
          UseSize = True
          FriendlyName = 'DepGrid'
          ColumnCount = 4
          OnCellClick = DepGridCellClick
          RowCount = 1
          ShowEmptyCells = True
          ShowInvisibleRows = True
          ScrollToCurrentRow = False
        end
        object IWButton2: TIWButton
          Left = 218
          Top = 24
          Width = 41
          Height = 25
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
          Caption = 'Add'
          DoSubmitValidation = True
          Color = clBtnFace
          Font.Color = clWebBLACK
          Font.Size = 10
          Font.Style = []
          FriendlyName = 'IWButton2'
          ScriptEvents = <>
          TabOrder = 16
          OnClick = IWButton2Click
        end
        object TrigCombo: TIWComboBox
          Left = 72
          Top = 3
          Width = 229
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
          UseSize = False
          Style = stNormal
          ButtonColor = clBtnFace
          DoSubmitValidation = True
          Editable = True
          NonEditableAsLabel = True
          SubmitOnAsyncEvent = True
          TabOrder = 14
          ItemIndex = -1
          Sorted = False
          FriendlyName = 'TrigCombo'
        end
        object IWLabel10: TIWLabel
          Left = 8
          Top = 31
          Width = 42
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
          AutoSize = False
          FriendlyName = 'IWLabel10'
          Caption = 'Sense'
          RawText = False
        end
        object SenseCombo: TIWComboBox
          Left = 72
          Top = 27
          Width = 144
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
          UseSize = False
          Style = stNormal
          ButtonColor = clBtnFace
          DoSubmitValidation = True
          Editable = True
          NonEditableAsLabel = True
          SubmitOnAsyncEvent = True
          TabOrder = 15
          ItemIndex = -1
          Items.Strings = (
            'Require'
            'Exclude'
            'Credit')
          Sorted = False
          FriendlyName = 'SenseCombo'
        end
        object IWLabel22: TIWLabel
          Left = 6
          Top = 51
          Width = 52
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
          AutoSize = False
          FriendlyName = 'IWLabel22'
          Caption = 'Quantity'
          RawText = False
        end
        object QtyEdit: TIWEdit
          Left = 72
          Top = 50
          Width = 41
          Height = 20
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          SubmitOnAsyncEvent = True
          TabOrder = 17
          PasswordPrompt = False
          Text = 'QtyEdit'
        end
      end
      object ImageRegion: TIWRegion
        Left = 18
        Top = 172
        Width = 378
        Height = 294
        Cursor = crAuto
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        RenderInvisibleControls = False
        TabOrder = 14
        Anchors = [akLeft, akTop, akBottom]
        BorderOptions.NumericWidth = 0
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsSolid
        BorderOptions.Color = clNone
        Color = clWebSILVER
        ParentShowHint = False
        ShowHint = True
        ZIndex = -1
        Splitter = False
        DesignSize = (
          378
          294)
        object IWLabel7: TIWLabel
          Left = 8
          Top = 9
          Width = 49
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
          AutoSize = False
          FriendlyName = 'IWLabel7'
          Caption = 'Outputs'
          RawText = False
        end
        object SelGrid: TIWGrid
          Left = 2
          Top = 56
          Width = 374
          Height = 236
          Cursor = crAuto
          Anchors = [akLeft, akTop, akBottom]
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
          OnRenderCell = ImageGridRenderCell
          UseFrame = True
          UseSize = True
          FriendlyName = 'SelGrid'
          ColumnCount = 5
          OnCellClick = SelGridCellClick
          RowCount = 1
          ShowEmptyCells = True
          ShowInvisibleRows = True
          ScrollToCurrentRow = False
        end
        object DataCombo: TIWComboBox
          Left = 72
          Top = 5
          Width = 301
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
          UseSize = False
          Style = stNormal
          ButtonColor = clBtnFace
          DoSubmitValidation = True
          Editable = True
          NonEditableAsLabel = True
          SubmitOnAsyncEvent = True
          TabOrder = 10
          ItemIndex = -1
          Sorted = False
          FriendlyName = 'DataCombo'
        end
        object IWButton1: TIWButton
          Left = 284
          Top = 27
          Width = 41
          Height = 25
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
          Caption = 'Add'
          DoSubmitValidation = True
          Color = clBtnFace
          Font.Color = clWebBLACK
          Font.Size = 10
          Font.Style = []
          FriendlyName = 'IWButton1'
          ScriptEvents = <>
          TabOrder = 12
          OnClick = IWButton1Click
        end
        object IWLabel4: TIWLabel
          Left = 8
          Top = 31
          Width = 40
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
          AutoSize = False
          FriendlyName = 'IWLabel4'
          Caption = 'Status'
          RawText = False
        end
        object StatCombo: TIWComboBox
          Left = 72
          Top = 27
          Width = 204
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
          UseSize = False
          Style = stNormal
          ButtonColor = clBtnFace
          DoSubmitValidation = True
          Editable = True
          NonEditableAsLabel = True
          SubmitOnAsyncEvent = True
          TabOrder = 11
          ItemIndex = -1
          Items.Strings = (
            'Always'
            'Stock Ok'
            'Stock Fail'
            'Out Of Stock'
            'Stock Declined'
            'Loyalty Fail'
            'Loyalty Ok'
            'Loyalty Invalid'
            'Voucher Ok'
            'Voucher Invalid'
            'Voucher Used'
            'Voucher Fail'
            'Stock Reissue'
            'Stock Not Found'
            'Script Ok'
            'Script Fail'
            'Redeem Ok'
            'Redeem Fail'
            'Redeem Points Reqd'
            'Redeem Invalid'
            'Random 1'
            'Random 2'
            'Random 3'
            'Random 4'
            'Random 5')
          Sorted = False
          FriendlyName = 'StatCombo'
        end
        object NewBtn: TIWButton
          Left = 332
          Top = 27
          Width = 41
          Height = 25
          Cursor = crAuto
          Visible = False
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
          Caption = 'New'
          DoSubmitValidation = True
          Color = clBtnFace
          Font.Color = clWebBLACK
          Font.Size = 10
          Font.Style = []
          FriendlyName = 'IWButton1'
          ScriptEvents = <>
          TabOrder = 13
          OnClick = NewBtnClick
        end
      end
      object AvailRegion: TIWRegion
        Left = 18
        Top = 469
        Width = 733
        Height = 84
        Cursor = crAuto
        RenderInvisibleControls = False
        TabOrder = 23
        Anchors = [akLeft, akBottom]
        BorderOptions.NumericWidth = 0
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsSolid
        BorderOptions.Color = clNone
        Color = clWebSILVER
        ParentShowHint = False
        ShowHint = True
        ZIndex = -1
        Splitter = False
        object IWLabel5: TIWLabel
          Left = 8
          Top = 4
          Width = 99
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
          Font.Style = [fsBold]
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel5'
          Caption = 'Active Hours'
          RawText = False
        end
        object IWLabel13: TIWLabel
          Left = 22
          Top = 22
          Width = 34
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
          AutoSize = False
          FriendlyName = 'IWLabel13'
          Caption = 'From'
          RawText = False
        end
        object FromEdit: TIWEdit
          Left = 72
          Top = 21
          Width = 49
          Height = 20
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          SubmitOnAsyncEvent = True
          TabOrder = 18
          PasswordPrompt = False
          Text = 'FromEdit'
        end
        object ToEdit: TIWEdit
          Left = 72
          Top = 45
          Width = 49
          Height = 20
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          SubmitOnAsyncEvent = True
          TabOrder = 19
          PasswordPrompt = False
          Text = 'ToEdit'
        end
        object IWLabel14: TIWLabel
          Left = 22
          Top = 46
          Width = 18
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
          AutoSize = False
          FriendlyName = 'IWLabel14'
          Caption = 'To'
          RawText = False
        end
        object IWLabel16: TIWLabel
          Left = 72
          Top = 68
          Width = 58
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
          AutoSize = False
          FriendlyName = 'IWLabel16'
          Caption = '(HH:MM)'
          RawText = False
        end
        object IWLabel17: TIWLabel
          Left = 224
          Top = 4
          Width = 102
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
          Font.Style = [fsBold]
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel17'
          Caption = 'Active Period'
          RawText = False
        end
        object IWLabel18: TIWLabel
          Left = 238
          Top = 23
          Width = 29
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
          AutoSize = False
          FriendlyName = 'IWLabel18'
          Caption = 'Start'
          RawText = False
        end
        object IWLabel19: TIWLabel
          Left = 238
          Top = 47
          Width = 38
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
          AutoSize = False
          FriendlyName = 'IWLabel19'
          Caption = 'Finish'
          RawText = False
        end
        object PeriodEndEdit: TIWEdit
          Left = 288
          Top = 46
          Width = 137
          Height = 20
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          SubmitOnAsyncEvent = True
          TabOrder = 21
          PasswordPrompt = False
          Text = 'PeriodEndEdit'
        end
        object PeriodStartEdit: TIWEdit
          Left = 288
          Top = 22
          Width = 137
          Height = 20
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          SubmitOnAsyncEvent = True
          TabOrder = 20
          PasswordPrompt = False
          Text = 'PeriodStartEdit'
        end
        object IWLabel21: TIWLabel
          Left = 288
          Top = 68
          Width = 145
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
          AutoSize = False
          FriendlyName = 'IWLabel21'
          Caption = '(DD/MM/YY HH:MM)'
          RawText = False
        end
        object monbox: TIWCheckBox
          Left = 472
          Top = 12
          Width = 49
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
          Caption = 'Mon'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          SubmitOnAsyncEvent = True
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 22
          Checked = False
          FriendlyName = 'monbox'
        end
        object tuebox: TIWCheckBox
          Left = 535
          Top = 12
          Width = 49
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
          Caption = 'Tue'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          SubmitOnAsyncEvent = True
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 23
          Checked = False
          FriendlyName = 'tuebox'
        end
        object wedbox: TIWCheckBox
          Left = 597
          Top = 12
          Width = 49
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
          Caption = 'Wed'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          SubmitOnAsyncEvent = True
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 24
          Checked = False
          FriendlyName = 'wedbox'
        end
        object thubox: TIWCheckBox
          Left = 471
          Top = 36
          Width = 49
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
          Caption = 'Thu'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          SubmitOnAsyncEvent = True
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 25
          Checked = False
          FriendlyName = 'thubox'
        end
        object fribox: TIWCheckBox
          Left = 534
          Top = 36
          Width = 49
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
          Caption = 'Fri'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          SubmitOnAsyncEvent = True
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 26
          Checked = False
          FriendlyName = 'fribox'
        end
        object satbox: TIWCheckBox
          Left = 596
          Top = 36
          Width = 49
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
          Caption = 'Sat'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          SubmitOnAsyncEvent = True
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 27
          Checked = False
          FriendlyName = 'satbox'
        end
        object sunbox: TIWCheckBox
          Left = 470
          Top = 60
          Width = 49
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
          Caption = 'Sun'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          SubmitOnAsyncEvent = True
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 28
          Checked = False
          FriendlyName = 'sunbox'
        end
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
    DoNotTranslate.Strings = (
      'TFormVoucherEdit2')
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Text'
      'StatusText'
      'FriendlyName'
      'Confirmation'
      'HotKey'
      'HelpKeyword'
      'Hint'
      'ExtraTagParams'
      'LangFile')
    Left = 8
    Top = 120
    TranslationData = {
      737443617074696F6E730D0A49574C6162656C31014E616D65010D0A566F7563
      6865724C6162656C0152756C6573202D204576656E747320616E642041637469
      6F6E73010D0A49574C6162656C3301546167010D0A4E657756656E644C616265
      6C0156656E642E010D0A4E657750726F644C6162656C0150726F642E010D0A49
      574C6162656C32014944010D0A49574C6162656C323801416374696F6E010D0A
      766C6162656C66726F6D0156616C75652066726F6D010D0A764C6162656C546F
      01746F010D0A49574C6162656C31310152756C65010D0A446570477269640101
      0D0A4957427574746F6E3201416464010D0A49574C6162656C31300153656E73
      65010D0A49574C6162656C3232015175616E74697479010D0A49574C6162656C
      37014F757470757473010D0A53656C4772696401010D0A4957427574746F6E31
      01416464010D0A49574C6162656C3401537461747573010D0A4E657742746E01
      4E6577010D0A49574C6162656C350141637469766520486F757273010D0A4957
      4C6162656C31330146726F6D010D0A49574C6162656C313401546F010D0A4957
      4C6162656C3136012848483A4D4D29010D0A49574C6162656C31370141637469
      766520506572696F64010D0A49574C6162656C3138015374617274010D0A4957
      4C6162656C31390146696E697368010D0A49574C6162656C3231012844442F4D
      4D2F59592048483A4D4D29010D0A6D6F6E626F78014D6F6E010D0A747565626F
      7801547565010D0A776564626F7801576564010D0A746875626F780154687501
      0D0A667269626F7801467269010D0A736174626F7801536174010D0A73756E62
      6F780153756E010D0A447570426F7801496E6869626974204475706C69636174
      6573010D0A506173737468726F756768426F7801506173737468726F75676801
      0D0A49574C6162656C3237014576656E74010D0A49574C6162656C3601507269
      6F72697479010D0A49574C6162656C380154657874010D0A737448696E74730D
      0A7374446973706C61794C6162656C730D0A7374466F6E74730D0A73744D756C
      74694C696E65730D0A4F7574707574436F6D626F2E4974656D7301224E6F2061
      6374696F6E222C22466F6F74657220426C6F636B222C224D756C74692D466F6F
      74657220426C6F636B222C22496E6C696E6520617070656E64222C22496E6C69
      6E65206F7665727772697465222C22496E6C696E652070726570656E6422010D
      0A54726967436F6D626F2E4974656D7301010D0A53656E7365436F6D626F2E49
      74656D7301526571756972652C4578636C7564652C437265646974010D0A4461
      7461436F6D626F2E4974656D7301010D0A53746174436F6D626F2E4974656D73
      01416C776179732C2253746F636B204F6B222C2253746F636B204661696C222C
      224F7574204F662053746F636B222C2253746F636B204465636C696E6564222C
      224C6F79616C7479204661696C222C224C6F79616C7479204F6B222C224C6F79
      616C747920496E76616C6964222C22566F7563686572204F6B222C22566F7563
      68657220496E76616C6964222C22566F75636865722055736564222C22566F75
      63686572204661696C222C2253746F636B2052656973737565222C2253746F63
      6B204E6F7420466F756E64222C22536372697074204F6B222C22536372697074
      204661696C222C2252656465656D204F6B222C2252656465656D204661696C22
      2C2252656465656D20506F696E74732052657164222C2252656465656D20496E
      76616C6964222C2252616E646F6D2031222C2252616E646F6D2032222C225261
      6E646F6D2033222C2252616E646F6D2034222C2252616E646F6D203522010D0A
      4957526164696F47726F7570312E4974656D73014E6F726D616C2C22526E6420
      517479222C5472616E73616374696F6E2C437573746F6D65722E010D0A507572
      706F7365436F6D626F2E4974656D7301225072696E743A204C6F676F222C2250
      72696E743A2054657874222C225072696E743A2050726F64756374222C225072
      696E743A2053746F636B222C225363616E3A204C6F79616C7479222C22536361
      6E3A20566F7563686572222C225363616E3A2047656E6572616C222C22436172
      643A204C6F79616C7479222C22436172643A2047656E6572616C22010D0A5072
      696F72697479436F6D626F2E4974656D730146697273742C486967682C4E6F72
      6D616C2C224C6F772031222C224C6F772032222C224C6F772033222C224C6F77
      2034222C224C6F772035222C4C617374010D0A4957436F6D626F426F78312E49
      74656D730153696D706C652C45787072657373696F6E010D0A7374537472696E
      67730D0A507572706F7365436F6D626F2E300147656E6572616C205465787401
      0D0A507572706F7365436F6D626F2E3101496E64656E7469666965732050726F
      64756374010D0A507572706F7365436F6D626F2E31300147656E6572616C2053
      63616E010D0A507572706F7365436F6D626F2E31310147656E6572616C204D61
      67010D0A507572706F7365436F6D626F2E31320147656E6572616C204B626401
      0D0A507572706F7365436F6D626F2E32014964656E746966696573205472616E
      73616374696F6E010D0A507572706F7365436F6D626F2E33014964656E746966
      6965732053746F636B010D0A507572706F7365436F6D626F2E34014C6F79616C
      7479205363616E010D0A507572706F7365436F6D626F2E3501566F7563686572
      205363616E010D0A507572706F7365436F6D626F2E360152616E646F6D203020
      3D3C20517479203C20313030010D0A507572706F7365436F6D626F2E37014C6F
      79616C7479204B6264010D0A507572706F7365436F6D626F2E3801566F756368
      6572204B6264010D0A507572706F7365436F6D626F2E39014C6F79616C747920
      4D6167010D0A53656E7365436F6D626F2E300152657175697265010D0A53656E
      7365436F6D626F2E31014578636C756465010D0A53656E7365436F6D626F2E32
      01437265646974010D0A53746174436F6D626F2E3001416C77617973010D0A53
      746174436F6D626F2E310153746F636B204F6B010D0A53746174436F6D626F2E
      320153746F636B204661696C010D0A53746174436F6D626F2E33014F7574204F
      662053746F636B010D0A53746174436F6D626F2E340153746F636B204465636C
      696E6564010D0A53746174436F6D626F2E35014C6F79616C7479204661696C01
      0D0A53746174436F6D626F2E36014C6F79616C7479204F6B010D0A5374617443
      6F6D626F2E37014C6F79616C747920496E76616C6964010D0A53746174436F6D
      626F2E3801566F7563686572204F6B010D0A53746174436F6D626F2E3901566F
      756368657220496E76616C6964010D0A53746174436F6D626F2E313001566F75
      636865722055736564010D0A53746174436F6D626F2E313101566F7563686572
      204661696C010D0A53746174436F6D626F2E31320153746F636B205265697373
      7565010D0A53746174436F6D626F2E31330153746F636B204E6F7420466F756E
      64010D0A4F7574707574436F6D626F2E30014E6F20416374696F6E010D0A4F75
      74707574436F6D626F2E3101566F75636865722028626F74746F6D206F662070
      6167652C206F6E6520636F7079206F6E6C7929010D0A4F7574707574436F6D62
      6F2E32014D756C74692D566F75636865722028626F74746F6D206F6620706167
      652C206F6E6520636F707920706572206974656D29010D0A4F7574707574436F
      6D626F2E33014C6F676F2028746F70206F66207061676529010D0A4F75747075
      74436F6D626F2E3401496E6C696E652F496E7365727420286166746572207468
      652074726967676572206C696E6529010D0A4F7574707574436F6D626F2E3501
      496E6C696E652F4F76657277726974652028696E7374656164206F6620746865
      2074726967676572206C696E6529010D0A4F7574707574436F6D626F2E360149
      6E6C696E652F4265666F726520286265666F7265207468652074726967676572
      206C696E6529010D0A4F7574707574436F6D626F2E37014C6F79616C74792028
      626F74746F6D206F6620706167652C206F6E6520636F70792C206C6F79616C74
      79206461746120696E70757429010D0A4F7574707574436F6D626F2E38014D75
      6C74692D4C6F79616C74792028626F74746F6D206F6620706167652C20636F70
      7920706572206974656D2C206C6F79616C7479206461746120696E7075742901
      0D0A477269642E4E616D65014E616D65010D0A477269642E5374617475730153
      7461747573010D0A477269642E51747901517479010D0A477269642E53656E73
      650153656E7365010D0A477269642E5570015570010D0A477269642E446F776E
      01446F776E010D0A477269642E44656C0144656C010D0A44656C436F6E660144
      656C6574652074686973207265636F72643F010D0A53746174436F6D626F2E31
      360152656465656D204F6B010D0A53746174436F6D626F2E3137015265646565
      6D204661696C010D0A53746174436F6D626F2E31380152656465656D20507473
      2052657164010D0A53746174436F6D626F2E313401536372697074204F6B010D
      0A53746174436F6D626F2E313501536372697074204661696C010D0A50757270
      6F7365436F6D626F2E3133014964656E74696669657320437573746F6D657201
      0D0A53746174436F6D626F2E31390152656465656D20496E76616C6964010D0A
      5072696F72697479436F6D626F2E30014669727374010D0A5072696F72697479
      436F6D626F2E310148696768010D0A5072696F72697479436F6D626F2E32014E
      6F726D616C010D0A5072696F72697479436F6D626F2E33014C6F772031010D0A
      5072696F72697479436F6D626F2E34014C6F772032010D0A5072696F72697479
      436F6D626F2E35014C6F772033010D0A5072696F72697479436F6D626F2E3601
      4C6F772034010D0A5072696F72697479436F6D626F2E37014C617374010D0A53
      746174436F6D626F2E32300152616E646F6D2031010D0A53746174436F6D626F
      2E32310152616E646F6D2032010D0A53746174436F6D626F2E32320152616E64
      6F6D2033010D0A53746174436F6D626F2E32330152616E646F6D2034010D0A53
      746174436F6D626F2E32340152616E646F6D2035010D0A73744F746865725374
      72696E67730D0A4F7574707574436F6D626F2E4E6F53656C656374696F6E5465
      7874012D2D204E6F2053656C656374696F6E202D2D010D0A446570477269642E
      53756D6D61727901010D0A54726967436F6D626F2E4E6F53656C656374696F6E
      54657874012D2D204E6F2053656C656374696F6E202D2D010D0A53656E736543
      6F6D626F2E4E6F53656C656374696F6E54657874012D2D204E6F2053656C6563
      74696F6E202D2D010D0A53656C477269642E53756D6D61727901010D0A446174
      61436F6D626F2E4E6F53656C656374696F6E54657874012D2D204E6F2053656C
      656374696F6E202D2D010D0A53746174436F6D626F2E4E6F53656C656374696F
      6E54657874012D2D204E6F2053656C656374696F6E202D2D010D0A507572706F
      7365436F6D626F2E4E6F53656C656374696F6E54657874012D2D204E6F205365
      6C656374696F6E202D2D010D0A5072696F72697479436F6D626F2E4E6F53656C
      656374696F6E54657874012D2D204E6F2053656C656374696F6E202D2D010D0A
      4957436F6D626F426F78312E4E6F53656C656374696F6E54657874012D2D204E
      6F2053656C656374696F6E202D2D010D0A7374436F6C6C656374696F6E730D0A
      737443686172536574730D0A}
  end
end
