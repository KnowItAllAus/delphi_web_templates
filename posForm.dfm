object FormPOS: TFormPOS
  Left = 0
  Top = 0
  Width = 1028
  Height = 805
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  OnDefaultAction = PostButtonClick
  XPTheme = True
  DesignLeft = 587
  DesignTop = 117
  object IWRegion1: TIWRegion
    Left = 0
    Top = 115
    Width = 1028
    Height = 661
    Cursor = crAuto
    RenderInvisibleControls = False
    Align = alClient
    BorderOptions.NumericWidth = 0
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = 15456976
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    Splitter = False
    DesignSize = (
      1028
      661)
    object IWSiLink1: TIWSiLink
      Left = 0
      Top = -1
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
      TabOrder = 39
      RawText = False
      SiLangLinked = siLangLinked1
      LangFile = 'pos.sil'
      LangControl = RcDataMod.LangEditControl1
    end
    object RuleRegn: TIWRegion
      Left = 121
      Top = 18
      Width = 777
      Height = 627
      Cursor = crAuto
      RenderInvisibleControls = False
      Anchors = [akTop, akBottom]
      BorderOptions.NumericWidth = 0
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clNone
      Color = 14202786
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      object IWLabel20: TIWLabel
        Left = 51
        Top = 513
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
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel11'
        Caption = 'Scanner'
        RawText = False
      end
      object IWLabel11: TIWLabel
        Left = 51
        Top = 150
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
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel11'
        Caption = 'Content'
        RawText = False
      end
      object IWLabel2: TIWLabel
        Left = 22
        Top = 66
        Width = 89
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
        Alignment = taRightJustify
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        AutoSize = False
        FriendlyName = 'IWLabel2'
        Caption = 'Item Format'
        RawText = False
      end
      object IWLabel1: TIWLabel
        Left = 63
        Top = 32
        Width = 45
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
        Alignment = taRightJustify
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
      object NewNameEdit: TIWEdit
        Left = 120
        Top = 31
        Width = 225
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
        TabOrder = 6
        PasswordPrompt = False
        Text = 'NewNameEdit'
      end
      object PosLabel: TIWLabel
        Left = 16
        Top = 7
        Width = 168
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
        FriendlyName = 'PosLabel'
        Caption = 'POS Characteristics'
        RawText = False
      end
      object IWLabel5: TIWLabel
        Left = 424
        Top = 34
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
        FriendlyName = 'IWLabel5'
        Caption = 'ID'
        RawText = False
      end
      object NewIDEdit: TIWEdit
        Left = 456
        Top = 32
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
        TabOrder = 7
        PasswordPrompt = False
        Text = 'NewIDEdit'
      end
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 777
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
        Height = 624
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
      object IWRegion3: TIWRegion
        Left = 120
        Top = 507
        Width = 609
        Height = 59
        Cursor = crAuto
        RenderInvisibleControls = False
        TabOrder = 0
        BorderOptions.NumericWidth = 1
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsSolid
        BorderOptions.Color = clWebBLACK
        Color = 15456976
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1000
        Splitter = False
        object IWLabel25: TIWLabel
          Left = 10
          Top = 7
          Width = 103
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel12'
          Caption = 'Input Patterns'
          RawText = False
        end
        object ScanPatternEdit: TIWEdit
          Left = 123
          Top = 5
          Width = 470
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
          TabOrder = 35
          PasswordPrompt = False
        end
        object IWLabel26: TIWLabel
          Left = 10
          Top = 34
          Width = 103
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel12'
          Caption = 'Output Prefix'
          RawText = False
        end
        object ScanOutEdit: TIWEdit
          Left = 123
          Top = 32
          Width = 70
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
          TabOrder = 36
          PasswordPrompt = False
        end
        object IWLabel30: TIWLabel
          Left = 200
          Top = 33
          Width = 89
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel12'
          Caption = 'Active Window'
          RawText = False
        end
        object ActiveWindowEdit: TIWEdit
          Left = 296
          Top = 31
          Width = 297
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
          TabOrder = 44
          PasswordPrompt = False
        end
      end
      object IWRegion4: TIWRegion
        Left = 120
        Top = 142
        Width = 609
        Height = 362
        Cursor = crAuto
        RenderInvisibleControls = False
        TabOrder = 8
        BorderOptions.NumericWidth = 1
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsSolid
        BorderOptions.Color = clWebBLACK
        Color = 15456976
        ParentShowHint = False
        ShowHint = True
        ZIndex = -1
        Splitter = False
        object DupEdit: TIWEdit
          Left = 123
          Top = 24
          Width = 171
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
          TabOrder = 13
          PasswordPrompt = False
        end
        object IWLabel12: TIWLabel
          Left = 10
          Top = 28
          Width = 111
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel12'
          Caption = 'Duplicate Ind.'
          RawText = False
        end
        object IWLabel13: TIWLabel
          Left = 10
          Top = 52
          Width = 111
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel13'
          Caption = 'Required'
          RawText = False
        end
        object ReqEdit: TIWEdit
          Left = 123
          Top = 48
          Width = 171
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
          TabOrder = 14
          PasswordPrompt = False
        end
        object IWLabel14: TIWLabel
          Left = 10
          Top = 77
          Width = 111
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel14'
          Caption = 'Excluded'
          RawText = False
        end
        object ExclEdit: TIWEdit
          Left = 123
          Top = 73
          Width = 171
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
          TabOrder = 15
          PasswordPrompt = False
        end
        object IWLabel15: TIWLabel
          Left = 314
          Top = 7
          Width = 111
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel15'
          Caption = 'Merchant copy'
          RawText = False
        end
        object MerchEdit: TIWEdit
          Left = 427
          Top = 3
          Width = 171
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
          TabOrder = 23
          PasswordPrompt = False
        end
        object IWLabel16: TIWLabel
          Left = 82
          Top = 130
          Width = 39
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
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel16'
          Caption = 'End'
          RawText = False
        end
        object ProdEndEdit: TIWEdit
          Left = 123
          Top = 125
          Width = 171
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
          TabOrder = 17
          PasswordPrompt = False
        end
        object ProdStartEdit: TIWEdit
          Left = 123
          Top = 99
          Width = 171
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
          TabOrder = 16
          PasswordPrompt = False
        end
        object IWLabel17: TIWLabel
          Left = 10
          Top = 103
          Width = 55
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
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel17'
          Caption = 'Product'
          RawText = False
        end
        object ProdSepBox: TIWComboBox
          Left = 160
          Top = 154
          Width = 161
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
          StyleRenderOptions.RenderSize = False
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
          TabOrder = 18
          ItemIndex = 2
          Items.Strings = (
            'No Separation'
            'Separator'
            'Blank'
            'Separator or Blank')
          Sorted = False
          FriendlyName = 'ProdSepBox'
        end
        object IWLabel21: TIWLabel
          Left = 67
          Top = 156
          Width = 94
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
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel21'
          Caption = 'End Follows'
          RawText = False
        end
        object IWLabel22: TIWLabel
          Left = 82
          Top = 103
          Width = 39
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
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel22'
          Caption = 'Start'
          RawText = False
        end
        object LogoEdit: TIWEdit
          Left = 427
          Top = 29
          Width = 171
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
          TabOrder = 24
          PasswordPrompt = False
        end
        object IWLabel4: TIWLabel
          Left = 329
          Top = 33
          Width = 96
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel15'
          Caption = 'Logo Point'
          RawText = False
        end
        object VoucherEdit: TIWEdit
          Left = 427
          Top = 55
          Width = 171
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
          TabOrder = 25
          PasswordPrompt = False
        end
        object IWLabel6: TIWLabel
          Left = 329
          Top = 59
          Width = 96
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel15'
          Caption = 'Voucher Point'
          RawText = False
        end
        object IWLabel7: TIWLabel
          Left = 18
          Top = 186
          Width = 103
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel13'
          Caption = 'Doc Start'
          RawText = False
        end
        object StartEdit: TIWEdit
          Left = 123
          Top = 182
          Width = 171
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
          TabOrder = 19
          PasswordPrompt = False
        end
        object IWLabel8: TIWLabel
          Left = 10
          Top = 218
          Width = 111
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel14'
          Caption = 'Doc End'
          RawText = False
        end
        object EndEdit: TIWEdit
          Left = 123
          Top = 214
          Width = 171
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
          TabOrder = 20
          PasswordPrompt = False
        end
        object IWLabel18: TIWLabel
          Left = 364
          Top = 174
          Width = 61
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel14'
          Caption = 'Void'
          RawText = False
        end
        object VoidEdit: TIWEdit
          Left = 427
          Top = 171
          Width = 171
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
          TabOrder = 31
          PasswordPrompt = False
        end
        object IWLabel19: TIWLabel
          Left = 338
          Top = 226
          Width = 87
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel14'
          Caption = 'Cancel'
          RawText = False
        end
        object CancelEdit: TIWEdit
          Left = 427
          Top = 222
          Width = 171
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
          TabOrder = 33
          PasswordPrompt = False
        end
        object IWLabel23: TIWLabel
          Left = 360
          Top = 200
          Width = 97
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
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel14'
          Caption = 'Except when '
          RawText = False
        end
        object ExceptEdit: TIWEdit
          Left = 460
          Top = 196
          Width = 137
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
          TabOrder = 32
          PasswordPrompt = False
        end
        object IWLabel24: TIWLabel
          Left = 490
          Top = 86
          Width = 47
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
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel15'
          Caption = 'Offset'
          RawText = False
        end
        object OffsetEdit: TIWEdit
          Left = 438
          Top = 80
          Width = 38
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
          TabOrder = 26
          PasswordPrompt = False
        end
        object EopBox: TIWCheckBox
          Left = 544
          Top = 85
          Width = 57
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
          Caption = 'EOP'
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
          FriendlyName = 'EopBox'
        end
        object IWLabel32: TIWLabel
          Left = 10
          Top = 248
          Width = 111
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel14'
          Caption = 'No Suppression'
          RawText = False
        end
        object SuppressEdit: TIWEdit
          Left = 123
          Top = 244
          Width = 170
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
          TabOrder = 21
          PasswordPrompt = False
        end
        object TimeoutBtn: TIWRadioButton
          Left = 424
          Top = 104
          Width = 87
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
          Caption = 'Timeout'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          OnClick = SmartCutBtnClick
          Checked = False
          Group = 'no group'
          Value = 'TimeoutBtn'
          FriendlyName = 'TimeoutBtn'
          SubmitOnAsyncEvent = True
        end
        object SmartCutBtn: TIWRadioButton
          Left = 512
          Top = 104
          Width = 94
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
          Caption = 'Smart Cut'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          OnClick = SmartCutBtnClick
          Checked = False
          Group = 'no group'
          Value = 'SmartCutBtn'
          FriendlyName = 'Smart Cut'
          SubmitOnAsyncEvent = True
        end
        object Extralabel: TIWLabel
          Left = 18
          Top = 275
          Width = 103
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel14'
          Caption = 'Extra Triggers'
          RawText = False
        end
        object ExtraEdit: TIWEdit
          Left = 123
          Top = 271
          Width = 475
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
          TabOrder = 22
          PasswordPrompt = False
        end
        object NormBtn: TIWRadioButton
          Left = 344
          Top = 104
          Width = 82
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
          Caption = 'Normal'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          OnClick = SmartCutBtnClick
          Checked = False
          Group = 'no group'
          Value = 'NormBtn'
          FriendlyName = 'NormBtn'
          SubmitOnAsyncEvent = True
        end
        object SCTextLbl: TIWLabel
          Left = 308
          Top = 126
          Width = 117
          Height = 16
          Cursor = crAuto
          Visible = False
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel14'
          Caption = #39'Smart Cut Text'#39
          RawText = False
        end
        object SCTrigEdit: TIWEdit
          Left = 427
          Top = 122
          Width = 171
          Height = 22
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
          TabOrder = 28
          PasswordPrompt = False
        end
        object DocLinesLbl: TIWLabel
          Left = 324
          Top = 150
          Width = 101
          Height = 16
          Cursor = crAuto
          Visible = False
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel15'
          Caption = 'Min doc lines'
          RawText = False
        end
        object DocLinesEdit: TIWEdit
          Left = 427
          Top = 146
          Width = 38
          Height = 22
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
          TabOrder = 29
          PasswordPrompt = False
        end
        object IncBox: TIWCheckBox
          Left = 488
          Top = 151
          Width = 105
          Height = 21
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
          Caption = 'Incremental'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          SubmitOnAsyncEvent = True
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 30
          Checked = False
          FriendlyName = 'EopBox'
        end
        object CutLbl: TIWLabel
          Left = 306
          Top = 104
          Width = 39
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
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel14'
          Caption = 'Cut'
          RawText = False
        end
        object IWLabel27: TIWLabel
          Left = 18
          Top = 300
          Width = 103
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel14'
          Caption = 'Params'
          RawText = False
        end
        object ParamEdit: TIWEdit
          Left = 123
          Top = 296
          Width = 475
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
          TabOrder = 40
          PasswordPrompt = False
        end
        object TranIDLbl: TIWLabel
          Left = 338
          Top = 251
          Width = 87
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel14'
          Caption = 'Tran ID'
          RawText = False
        end
        object TranIDEdit: TIWEdit
          Left = 427
          Top = 247
          Width = 171
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
          TabOrder = 41
          PasswordPrompt = False
        end
        object ExclKeepAsynchBox: TIWCheckBox
          Left = 188
          Top = 3
          Width = 121
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
          Caption = 'Keep Asynch'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          SubmitOnAsyncEvent = True
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 42
          Checked = False
          FriendlyName = 'Signbox'
        end
        object IWLabel29: TIWLabel
          Left = 18
          Top = 335
          Width = 103
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel14'
          Caption = 'Printer Errata'
          RawText = False
        end
        object errataedit: TIWEdit
          Left = 123
          Top = 331
          Width = 475
          Height = 22
          Cursor = crAuto
          Hint = '#n'#39'text'#39' format separated by colons. Use > to replace codes.'
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
          TabOrder = 34
          PasswordPrompt = False
        end
        object PreserveBox: TIWCheckBox
          Left = 24
          Top = 3
          Width = 133
          Height = 21
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
          Caption = 'Preserve Spacing'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          SubmitOnAsyncEvent = True
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 43
          Checked = False
          FriendlyName = 'Signbox'
        end
      end
      object IWRegion5: TIWRegion
        Left = 120
        Top = 55
        Width = 609
        Height = 85
        Cursor = crAuto
        RenderInvisibleControls = False
        TabOrder = 1
        BorderOptions.NumericWidth = 1
        BorderOptions.BorderWidth = cbwNumeric
        BorderOptions.Style = cbsSolid
        BorderOptions.Color = clWebBLACK
        Color = 15456976
        ParentShowHint = False
        ShowHint = True
        ZIndex = -1
        Splitter = False
        object IWLabel9: TIWLabel
          Left = 10
          Top = 10
          Width = 119
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
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel9'
          Caption = 'Decimal Point'
          RawText = False
        end
        object DecEdit: TIWEdit
          Left = 136
          Top = 4
          Width = 17
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
          Alignment = taLeftJustify
          BGColor = clNone
          FocusColor = clNone
          DoSubmitValidation = True
          Editable = True
          NonEditableAsLabel = True
          Font.Color = clNone
          Font.FontName = 'Courier'
          Font.Size = 16
          Font.Style = [fsBold]
          FriendlyName = 'NewNameEdit'
          MaxLength = 1
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          SubmitOnAsyncEvent = True
          TabOrder = 8
          PasswordPrompt = False
          Text = '.'
        end
        object IWLabel10: TIWLabel
          Left = 168
          Top = 10
          Width = 170
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
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel10'
          Caption = 'Thousands Separator'
          RawText = False
        end
        object ThouEdit: TIWEdit
          Left = 336
          Top = 4
          Width = 17
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
          Alignment = taLeftJustify
          BGColor = clNone
          FocusColor = clNone
          DoSubmitValidation = True
          Editable = True
          NonEditableAsLabel = True
          Font.Color = clNone
          Font.FontName = 'Courier'
          Font.Size = 16
          Font.Style = [fsBold]
          FriendlyName = 'NewNameEdit'
          MaxLength = 1
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          SubmitOnAsyncEvent = True
          TabOrder = 9
          PasswordPrompt = False
          Text = ','
        end
        object IWLabel3: TIWLabel
          Left = 10
          Top = 39
          Width = 111
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
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel12'
          Caption = 'Product Formats'
          RawText = False
        end
        object FormEdit: TIWEdit
          Left = 123
          Top = 35
          Width = 338
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
          TabOrder = 10
          PasswordPrompt = False
        end
        object Signbox: TIWCheckBox
          Left = 123
          Top = 59
          Width = 121
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
          Caption = 'Force Signs'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          SubmitOnAsyncEvent = True
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 11
          Checked = False
          FriendlyName = 'Signbox'
        end
        object IWLabel28: TIWLabel
          Left = 410
          Top = 4
          Width = 66
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
          FriendlyName = 'IWLabel28'
          Caption = 'First Copy'
          RawText = False
        end
        object DetectBtn: TIWRadioButton
          Left = 480
          Top = 4
          Width = 121
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
          Caption = 'Detect'
          Editable = True
          Font.Color = clNone
          Font.Size = 9
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Checked = False
          Group = 'first'
          Value = 'DetectBtn'
          FriendlyName = 'DetectBtn'
          SubmitOnAsyncEvent = True
        end
        object SuppressBtn: TIWRadioButton
          Left = 480
          Top = 25
          Width = 124
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
          Caption = 'Suppress'
          Editable = True
          Font.Color = clNone
          Font.Size = 9
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Checked = False
          Group = 'first'
          Value = 'SuppressBtn'
          FriendlyName = 'SuppressBtn'
          SubmitOnAsyncEvent = True
        end
        object AssumeBtn: TIWRadioButton
          Left = 480
          Top = 48
          Width = 124
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
          Caption = 'Always Assume'
          Editable = True
          Font.Color = clNone
          Font.Size = 9
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Checked = False
          Group = 'first'
          Value = 'AssumeBtn'
          FriendlyName = 'AssumeBtn'
          SubmitOnAsyncEvent = True
        end
        object DiscCombo: TIWComboBox
          Left = 352
          Top = 59
          Width = 110
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
          StyleRenderOptions.RenderSize = False
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
          TabOrder = 12
          ItemIndex = -1
          Items.Strings = (
            'Magnitude'
            'Literal')
          Sorted = False
          FriendlyName = 'DiscCombo'
        end
        object DiscLabel: TIWLabel
          Left = 248
          Top = 61
          Width = 97
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
          Alignment = taRightJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          HasTabOrder = False
          AutoSize = False
          FriendlyName = 'IWLabel15'
          Caption = 'Discount Policy'
          RawText = False
        end
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 776
    Width = 1028
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1028
      Height = 29
      TabOrder = 37
      inherited IWRectangle1: TIWRectangle
        Left = 652
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1644
      end
      inherited IWRectangle6: TIWRectangle
        Width = 610
      end
      inherited Cancel: TIWButton
        Left = 937
        OnClick = CancelBtnClick
      end
      inherited Extra1: TIWButton
        Left = 761
        Visible = True
        Caption = 'Save'
        OnClick = PostButtonClick
      end
      inherited Extra2: TIWButton
        Left = 849
        Visible = True
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        OnClick = DelBtnClick
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 681
      end
      inherited navcombo: TIWComboBox
        Visible = False
      end
    end
  end
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1028
    Height = 115
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    inherited IWFrameRegion: TIWRegion
      Width = 1028
      Height = 115
      TabOrder = 38
      inherited titleimage: TIWImageFile
        Width = 461
        ImageFile.Filename = 'E:\delphi\delphi_web\files\admin.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 90
        Width = 1028
      end
      inherited IWRectangle3: TIWRectangle
        Top = 95
      end
      inherited IWImageFile3: TIWImageFile
        Left = 322
      end
      inherited langlink: TIWSiLink
        Left = 626
      end
      inherited Smalltitle: TIWLabel
        Left = 911
      end
      inherited HideBox: TIWImageFile
        Left = 1013
        Top = 98
        Width = 12
        Height = 14
      end
      inherited TitleLabel: TIWLabel
        Width = 486
        Caption = 'administration'
      end
    end
    inherited silink: TsiLangLinked
      Left = 544
      Top = 24
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
      'ExtraTagParams'
      'HelpKeyword'
      'FriendlyName'
      'StatusText'
      'Text'
      'HotKey'
      'Title'
      'LangFile')
    Top = 136
    TranslationData = {
      737443617074696F6E730D0A49574C6162656C3230015363616E6E6572010D0A
      49574C6162656C313101436F6E74656E74010D0A49574C6162656C3201497465
      6D20466F726D6174010D0A49574C6162656C31014E616D65010D0A506F734C61
      62656C01504F5320436861726163746572697374696373010D0A49574C616265
      6C35014944010D0A49574C6162656C323501496E707574205061747465726E73
      010D0A49574C6162656C3236014F757470757420507265666978010D0A49574C
      6162656C3132014475706C696361746520496E642E010D0A49574C6162656C31
      33015265717569726564010D0A49574C6162656C3134014578636C7564656401
      0D0A49574C6162656C3135014D65726368616E7420636F7079010D0A49574C61
      62656C313601456E64010D0A49574C6162656C31370150726F64756374010D0A
      49574C6162656C323101456E6420466F6C6C6F7773010D0A49574C6162656C32
      32015374617274010D0A49574C6162656C34014C6F676F20506F696E74010D0A
      49574C6162656C3601566F756368657220506F696E74010D0A49574C6162656C
      3701446F63205374617274010D0A49574C6162656C3801446F6320456E64010D
      0A49574C6162656C313801566F6964010D0A49574C6162656C31390143616E63
      656C010D0A49574C6162656C323301457863657074207768656E20010D0A4957
      4C6162656C3234014F6666736574010D0A456F70426F7801454F50010D0A4957
      4C6162656C3901446563696D616C20506F696E74010D0A49574C6162656C3130
      0154686F7573616E647320536570617261746F72010D0A49574C6162656C3301
      50726F6475637420466F726D617473010D0A5369676E626F7801466F72636520
      5369676E73010D0A49574C6162656C3332014E6F205375707072657373696F6E
      010D0A54696D656F757442746E0154696D656F7574010D0A536D617274437574
      42746E01536D61727420437574010D0A45787472616C6162656C014578747261
      205472696767657273010D0A4E6F726D42746E014E6F726D616C010D0A534354
      6578744C626C0127536D61727420437574205465787427010D0A446F634C696E
      65734C626C014D696E20646F63206C696E6573010D0A496E63426F7801496E63
      72656D656E74616C010D0A4375744C626C01437574010D0A49574C6162656C32
      3701506172616D73010D0A49574C6162656C323801466972737420436F707901
      0D0A44657465637442746E01446574656374010D0A537570707265737342746E
      015375707072657373010D0A417373756D6542746E01416C7761797320417373
      756D65010D0A5472616E49444C626C015472616E204944010D0A4578636C4B65
      65704173796E6368426F78014B656570204173796E6368010D0A49574C616265
      6C3239015072696E74657220457272617461010D0A5072657365727665426F78
      0150726573657276652053706163696E67010D0A49574C6162656C3330014163
      746976652057696E646F77010D0A446973634C6162656C01446973636F756E74
      20506F6C696379010D0A737448696E74730D0A7374446973706C61794C616265
      6C730D0A7374466F6E74730D0A73744D756C74694C696E65730D0A50726F6453
      6570426F782E4974656D7301224E6F2053657061726174696F6E222C53657061
      7261746F722C426C616E6B2C22536570617261746F72206F7220426C616E6B22
      010D0A44697363436F6D626F2E4974656D73014D61676E69747564652C4C6974
      6572616C2C010D0A7374537472696E67730D0A44656C436F6E660144656C6574
      65205468697320504F533F010D0A496E76616C696453435465787401496E7661
      6C696420536D617274204375742074657874202D2075736520236E2774657874
      27206E6F746174696F6E2E010D0A496E76616C696445727261746101496E7661
      6C6964206572726174612074657874202D2075736520236E277465787427206E
      6F746174696F6E2C20736570617261746520656E747269657320776974682063
      6F6C6F6E73206F722073656D69636F6C6F6E732E010D0A44697363436F6D626F
      2E30014D41474E4954554445010D0A44697363436F6D626F2E31014C49544552
      414C010D0A73744F74686572537472696E67730D0A50726F64536570426F782E
      4E6F53656C656374696F6E54657874012D2D204E6F2053656C656374696F6E20
      2D2D010D0A456F70426F782E436F6E6669726D6174696F6E01010D0A49575369
      4C696E6B312E436F6E6669726D6174696F6E01010D0A5369676E626F782E436F
      6E6669726D6174696F6E01010D0A54696D656F757442746E2E47726F7570016E
      6F2067726F7570010D0A54696D656F757442746E2E56616C75650154696D656F
      757442746E010D0A536D61727443757442746E2E47726F7570016E6F2067726F
      7570010D0A536D61727443757442746E2E56616C756501536D61727443757442
      746E010D0A4E6F726D42746E2E47726F7570016E6F2067726F7570010D0A4E6F
      726D42746E2E56616C7565014E6F726D42746E010D0A496E63426F782E436F6E
      6669726D6174696F6E01010D0A44657465637442746E2E47726F757001666972
      7374010D0A44657465637442746E2E56616C75650144657465637442746E010D
      0A537570707265737342746E2E47726F7570016669727374010D0A5375707072
      65737342746E2E56616C756501537570707265737342746E010D0A417373756D
      6542746E2E47726F7570016669727374010D0A417373756D6542746E2E56616C
      756501417373756D6542746E010D0A4578636C4B6565704173796E6368426F78
      2E436F6E6669726D6174696F6E01010D0A54466F726D504F532E5468656D6501
      010D0A495753694C696E6B312E43737301010D0A495753694C696E6B312E536B
      696E496401010D0A49574C6162656C32302E43737301010D0A49574C6162656C
      32302E536B696E496401010D0A49574C6162656C31312E43737301010D0A4957
      4C6162656C31312E536B696E496401010D0A49574C6162656C322E4373730101
      0D0A49574C6162656C322E536B696E496401010D0A49574C6162656C312E4373
      7301010D0A49574C6162656C312E536B696E496401010D0A4E65774E616D6545
      6469742E43737301010D0A4E65774E616D65456469742E536B696E496401010D
      0A506F734C6162656C2E43737301010D0A506F734C6162656C2E536B696E4964
      01010D0A49574C6162656C352E43737301010D0A49574C6162656C352E536B69
      6E496401010D0A4E65774944456469742E43737301010D0A4E65774944456469
      742E536B696E496401010D0A495752656374616E676C65322E43737301010D0A
      495752656374616E676C65322E536B696E496401010D0A495752656374616E67
      6C65312E43737301010D0A495752656374616E676C65312E536B696E49640101
      0D0A49574C6162656C32352E43737301010D0A49574C6162656C32352E536B69
      6E496401010D0A5363616E5061747465726E456469742E43737301010D0A5363
      616E5061747465726E456469742E536B696E496401010D0A49574C6162656C32
      362E43737301010D0A49574C6162656C32362E536B696E496401010D0A536361
      6E4F7574456469742E43737301010D0A5363616E4F7574456469742E536B696E
      496401010D0A447570456469742E43737301010D0A447570456469742E536B69
      6E496401010D0A49574C6162656C31322E43737301010D0A49574C6162656C31
      322E536B696E496401010D0A49574C6162656C31332E43737301010D0A49574C
      6162656C31332E536B696E496401010D0A526571456469742E43737301010D0A
      526571456469742E536B696E496401010D0A49574C6162656C31342E43737301
      010D0A49574C6162656C31342E536B696E496401010D0A4578636C456469742E
      43737301010D0A4578636C456469742E536B696E496401010D0A49574C616265
      6C31352E43737301010D0A49574C6162656C31352E536B696E496401010D0A4D
      65726368456469742E43737301010D0A4D65726368456469742E536B696E4964
      01010D0A49574C6162656C31362E43737301010D0A49574C6162656C31362E53
      6B696E496401010D0A50726F64456E64456469742E43737301010D0A50726F64
      456E64456469742E536B696E496401010D0A50726F645374617274456469742E
      43737301010D0A50726F645374617274456469742E536B696E496401010D0A49
      574C6162656C31372E43737301010D0A49574C6162656C31372E536B696E4964
      01010D0A50726F64536570426F782E43737301010D0A50726F64536570426F78
      2E536B696E496401010D0A49574C6162656C32312E43737301010D0A49574C61
      62656C32312E536B696E496401010D0A49574C6162656C32322E43737301010D
      0A49574C6162656C32322E536B696E496401010D0A4C6F676F456469742E4373
      7301010D0A4C6F676F456469742E536B696E496401010D0A49574C6162656C34
      2E43737301010D0A49574C6162656C342E536B696E496401010D0A566F756368
      6572456469742E43737301010D0A566F7563686572456469742E536B696E4964
      01010D0A49574C6162656C362E43737301010D0A49574C6162656C362E536B69
      6E496401010D0A49574C6162656C372E43737301010D0A49574C6162656C372E
      536B696E496401010D0A5374617274456469742E43737301010D0A5374617274
      456469742E536B696E496401010D0A49574C6162656C382E43737301010D0A49
      574C6162656C382E536B696E496401010D0A456E64456469742E43737301010D
      0A456E64456469742E536B696E496401010D0A49574C6162656C31382E437373
      01010D0A49574C6162656C31382E536B696E496401010D0A566F696445646974
      2E43737301010D0A566F6964456469742E536B696E496401010D0A49574C6162
      656C31392E43737301010D0A49574C6162656C31392E536B696E496401010D0A
      43616E63656C456469742E43737301010D0A43616E63656C456469742E536B69
      6E496401010D0A49574C6162656C32332E43737301010D0A49574C6162656C32
      332E536B696E496401010D0A457863657074456469742E43737301010D0A4578
      63657074456469742E536B696E496401010D0A49574C6162656C32342E437373
      01010D0A49574C6162656C32342E536B696E496401010D0A4F66667365744564
      69742E43737301010D0A4F6666736574456469742E536B696E496401010D0A45
      6F70426F782E43737301010D0A456F70426F782E536B696E496401010D0A4957
      4C6162656C33322E43737301010D0A49574C6162656C33322E536B696E496401
      010D0A5375707072657373456469742E43737301010D0A537570707265737345
      6469742E536B696E496401010D0A54696D656F757442746E2E43737301010D0A
      54696D656F757442746E2E536B696E496401010D0A536D61727443757442746E
      2E43737301010D0A536D61727443757442746E2E536B696E496401010D0A4578
      7472616C6162656C2E43737301010D0A45787472616C6162656C2E536B696E49
      6401010D0A4578747261456469742E43737301010D0A4578747261456469742E
      536B696E496401010D0A4E6F726D42746E2E43737301010D0A4E6F726D42746E
      2E536B696E496401010D0A5343546578744C626C2E43737301010D0A53435465
      78744C626C2E536B696E496401010D0A534354726967456469742E4373730101
      0D0A534354726967456469742E536B696E496401010D0A446F634C696E65734C
      626C2E43737301010D0A446F634C696E65734C626C2E536B696E496401010D0A
      446F634C696E6573456469742E43737301010D0A446F634C696E657345646974
      2E536B696E496401010D0A496E63426F782E43737301010D0A496E63426F782E
      536B696E496401010D0A4375744C626C2E43737301010D0A4375744C626C2E53
      6B696E496401010D0A49574C6162656C32372E43737301010D0A49574C616265
      6C32372E536B696E496401010D0A506172616D456469742E43737301010D0A50
      6172616D456469742E536B696E496401010D0A5472616E49444C626C2E437373
      01010D0A5472616E49444C626C2E536B696E496401010D0A5472616E49444564
      69742E43737301010D0A5472616E4944456469742E536B696E496401010D0A45
      78636C4B6565704173796E6368426F782E43737301010D0A4578636C4B656570
      4173796E6368426F782E536B696E496401010D0A49574C6162656C32392E4373
      7301010D0A49574C6162656C32392E536B696E496401010D0A65727261746165
      6469742E43737301010D0A657272617461656469742E536B696E496401010D0A
      5072657365727665426F782E436F6E6669726D6174696F6E01010D0A50726573
      65727665426F782E43737301010D0A5072657365727665426F782E536B696E49
      6401010D0A49574C6162656C392E43737301010D0A49574C6162656C392E536B
      696E496401010D0A446563456469742E43737301010D0A446563456469742E53
      6B696E496401010D0A49574C6162656C31302E43737301010D0A49574C616265
      6C31302E536B696E496401010D0A54686F75456469742E43737301010D0A5468
      6F75456469742E536B696E496401010D0A49574C6162656C332E43737301010D
      0A49574C6162656C332E536B696E496401010D0A466F726D456469742E437373
      01010D0A466F726D456469742E536B696E496401010D0A5369676E626F782E43
      737301010D0A5369676E626F782E536B696E496401010D0A49574C6162656C32
      382E43737301010D0A49574C6162656C32382E536B696E496401010D0A446574
      65637442746E2E43737301010D0A44657465637442746E2E536B696E49640101
      0D0A537570707265737342746E2E43737301010D0A537570707265737342746E
      2E536B696E496401010D0A417373756D6542746E2E43737301010D0A41737375
      6D6542746E2E536B696E496401010D0A49574C6162656C33302E43737301010D
      0A49574C6162656C33302E536B696E496401010D0A41637469766557696E646F
      77456469742E43737301010D0A41637469766557696E646F77456469742E536B
      696E496401010D0A44697363436F6D626F2E43737301010D0A44697363436F6D
      626F2E4E6F53656C656374696F6E54657874012D2D204E6F2053656C65637469
      6F6E202D2D010D0A44697363436F6D626F2E536B696E496401010D0A44697363
      4C6162656C2E43737301010D0A446973634C6162656C2E536B696E496401010D
      0A7374436F6C6C656374696F6E730D0A737443686172536574730D0A}
  end
end
