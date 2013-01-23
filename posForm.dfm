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
  DesignLeft = 8
  DesignTop = -273
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
      TabOrder = 41
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
        Top = 521
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
        Top = 158
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
        Top = 515
        Width = 609
        Height = 86
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
          Left = 426
          Top = 33
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
          FriendlyName = 'IWLabel12'
          Caption = 'Output Prefix'
          RawText = False
        end
        object ScanOutEdit: TIWEdit
          Left = 523
          Top = 31
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
          TabOrder = 37
          PasswordPrompt = False
        end
        object IWLabel30: TIWLabel
          Left = 28
          Top = 31
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
          Left = 123
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
          TabOrder = 36
          PasswordPrompt = False
        end
        object OtherWindowEdit: TIWEdit
          Left = 123
          Top = 57
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
          TabOrder = 38
          PasswordPrompt = False
        end
        object IWLabel31: TIWLabel
          Left = 27
          Top = 59
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
          Caption = 'Other Window'
          RawText = False
        end
      end
      object IWRegion4: TIWRegion
        Left = 120
        Top = 150
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
          TabOrder = 42
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
          TabOrder = 43
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
          TabOrder = 44
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
          TabOrder = 45
          Checked = False
          FriendlyName = 'Signbox'
        end
      end
      object IWRegion5: TIWRegion
        Left = 120
        Top = 55
        Width = 609
        Height = 90
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
          Left = 75
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
          Left = 392
          Top = 9
          Width = 81
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
          FriendlyName = 'IWLabel28'
          Caption = 'First Copy'
          RawText = False
        end
        object DetectBtn: TIWRadioButton
          Left = 472
          Top = 9
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
          Left = 472
          Top = 31
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
          Left = 472
          Top = 53
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
            '1'
            '2')
          Sorted = False
          FriendlyName = 'DiscCombo'
        end
        object DiscLabel: TIWLabel
          Left = 224
          Top = 61
          Width = 121
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
    ExplicitTop = 776
    ExplicitWidth = 1028
    ExplicitHeight = 29
    inherited IWRegion1: TIWRegion
      Width = 1028
      Height = 29
      TabOrder = 39
      ExplicitWidth = 1028
      ExplicitHeight = 29
      inherited IWRectangle1: TIWRectangle
        Left = 652
        ExplicitLeft = 652
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1644
        ExplicitWidth = 1644
      end
      inherited IWRectangle6: TIWRectangle
        Width = 610
        ExplicitWidth = 610
      end
      inherited Cancel: TIWButton
        Left = 937
        OnClick = CancelBtnClick
        ExplicitLeft = 937
      end
      inherited Extra1: TIWButton
        Left = 761
        Visible = True
        Caption = 'Save'
        OnClick = PostButtonClick
        ExplicitLeft = 761
      end
      inherited Extra2: TIWButton
        Left = 849
        Visible = True
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        OnClick = DelBtnClick
        ExplicitLeft = 849
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 681
        ExplicitLeft = 681
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
    ExplicitWidth = 1028
    ExplicitHeight = 115
    inherited IWFrameRegion: TIWRegion
      Width = 1028
      Height = 115
      TabOrder = 40
      ExplicitWidth = 1028
      ExplicitHeight = 115
      inherited titleimage: TIWImageFile
        Width = 461
        ImageFile.Filename = 'E:\delphi\delphi_web\files\admin.GIF'
        ExplicitWidth = 461
      end
      inherited IWRectangle1: TIWRectangle
        Top = 90
        Width = 1028
        ExplicitTop = 90
        ExplicitWidth = 1028
      end
      inherited IWRectangle3: TIWRectangle
        Top = 95
        Width = 1028
        ExplicitTop = 95
      end
      inherited IWImageFile3: TIWImageFile
        Left = 322
        ExplicitLeft = 322
      end
      inherited langlink: TIWSiLink
        Left = 626
        ExplicitLeft = 626
      end
      inherited Smalltitle: TIWLabel
        Left = 911
        ExplicitLeft = 911
      end
      inherited HideBox: TIWImageFile
        Left = 1013
        Top = 98
        Width = 12
        Height = 14
        ExplicitLeft = 1013
        ExplicitTop = 98
        ExplicitWidth = 12
        ExplicitHeight = 14
      end
      inherited TitleLabel: TIWLabel
        Width = 486
        Caption = 'administration'
        ExplicitWidth = 486
      end
    end
    inherited silink: TsiLangLinked
      Left = 544
      Top = 24
    end
  end
  object siLangLinked1: TsiLangLinked
    Version = '6.5.4.7'
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
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00490057004C006100620065006C0032003000010053006300
      61006E006E006500720001000D000A00490057004C006100620065006C003100
      3100010043006F006E00740065006E00740001000D000A00490057004C006100
      620065006C00320001004900740065006D00200046006F0072006D0061007400
      01000D000A00490057004C006100620065006C00310001004E0061006D006500
      01000D000A0050006F0073004C006100620065006C00010050004F0053002000
      4300680061007200610063007400650072006900730074006900630073000100
      0D000A00490057004C006100620065006C00350001004900440001000D000A00
      490057004C006100620065006C0032003500010049006E007000750074002000
      5000610074007400650072006E00730001000D000A00490057004C0061006200
      65006C003200360001004F007500740070007500740020005000720065006600
      6900780001000D000A00490057004C006100620065006C003100320001004400
      750070006C0069006300610074006500200049006E0064002E0001000D000A00
      490057004C006100620065006C00310033000100520065007100750069007200
      6500640001000D000A00490057004C006100620065006C003100340001004500
      780063006C00750064006500640001000D000A00490057004C00610062006500
      6C003100350001004D00650072006300680061006E007400200063006F007000
      790001000D000A00490057004C006100620065006C0031003600010045006E00
      640001000D000A00490057004C006100620065006C0031003700010050007200
      6F00640075006300740001000D000A00490057004C006100620065006C003200
      3100010045006E006400200046006F006C006C006F007700730001000D000A00
      490057004C006100620065006C00320032000100530074006100720074000100
      0D000A00490057004C006100620065006C00340001004C006F0067006F002000
      50006F0069006E00740001000D000A00490057004C006100620065006C003600
      010056006F0075006300680065007200200050006F0069006E00740001000D00
      0A00490057004C006100620065006C003700010044006F006300200053007400
      61007200740001000D000A00490057004C006100620065006C00380001004400
      6F006300200045006E00640001000D000A00490057004C006100620065006C00
      31003800010056006F006900640001000D000A00490057004C00610062006500
      6C00310039000100430061006E00630065006C0001000D000A00490057004C00
      6100620065006C00320033000100450078006300650070007400200077006800
      65006E00200001000D000A00490057004C006100620065006C00320034000100
      4F006600660073006500740001000D000A0045006F00700042006F0078000100
      45004F00500001000D000A00490057004C006100620065006C00390001004400
      6500630069006D0061006C00200050006F0069006E00740001000D000A004900
      57004C006100620065006C00310030000100540068006F007500730061006E00
      64007300200053006500700061007200610074006F00720001000D000A004900
      57004C006100620065006C0033000100500072006F0064007500630074002000
      46006F0072006D0061007400730001000D000A005300690067006E0062006F00
      7800010046006F0072006300650020005300690067006E00730001000D000A00
      490057004C006100620065006C003300320001004E006F002000530075007000
      7000720065007300730069006F006E0001000D000A00540069006D0065006F00
      75007400420074006E000100540069006D0065006F007500740001000D000A00
      53006D00610072007400430075007400420074006E00010053006D0061007200
      7400200043007500740001000D000A00450078007400720061006C0061006200
      65006C0001004500780074007200610020005400720069006700670065007200
      730001000D000A004E006F0072006D00420074006E0001004E006F0072006D00
      61006C0001000D000A005300430054006500780074004C0062006C0001002700
      53006D0061007200740020004300750074002000540065007800740027000100
      0D000A0044006F0063004C0069006E00650073004C0062006C0001004D006900
      6E00200064006F00630020006C0069006E006500730001000D000A0049006E00
      630042006F007800010049006E006300720065006D0065006E00740061006C00
      01000D000A004300750074004C0062006C00010043007500740001000D000A00
      490057004C006100620065006C0032003700010050006100720061006D007300
      01000D000A00490057004C006100620065006C00320038000100460069007200
      73007400200043006F007000790001000D000A00440065007400650063007400
      420074006E00010044006500740065006300740001000D000A00530075007000
      70007200650073007300420074006E0001005300750070007000720065007300
      730001000D000A0041007300730075006D006500420074006E00010041006C00
      7700610079007300200041007300730075006D00650001000D000A0054007200
      61006E00490044004C0062006C0001005400720061006E002000490044000100
      0D000A004500780063006C004B006500650070004100730079006E0063006800
      42006F00780001004B0065006500700020004100730079006E00630068000100
      0D000A00490057004C006100620065006C003200390001005000720069006E00
      740065007200200045007200720061007400610001000D000A00500072006500
      7300650072007600650042006F00780001005000720065007300650072007600
      65002000530070006100630069006E00670001000D000A00490057004C006100
      620065006C003300300001004100630074006900760065002000570069006E00
      64006F00770001000D000A0044006900730063004C006100620065006C000100
      44006900730063006F0075006E007400200050006F006C006900630079000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00730074004D00
      75006C00740069004C0069006E00650073005F0055006E00690063006F006400
      65000D000A00500072006F00640053006500700042006F0078002E0049007400
      65006D007300010022004E006F00200053006500700061007200610074006900
      6F006E0022002C0053006500700061007200610074006F0072002C0042006C00
      61006E006B002C00220053006500700061007200610074006F00720020006F00
      7200200042006C0061006E006B00220001000D000A0044006900730063004300
      6F006D0062006F002E004900740065006D007300010001000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00440065006C0043006F006E0066000100440065006C006500740065002000
      5400680069007300200050004F0053003F0001000D000A0049006E0076006100
      6C0069006400530043005400650078007400010049006E00760061006C006900
      6400200053006D00610072007400200043007500740020007400650078007400
      20002D002000750073006500200023006E002700740065007800740027002000
      6E006F0074006100740069006F006E002E0001000D000A0049006E0076006100
      6C0069006400450072007200610074006100010049006E00760061006C006900
      640020006500720072006100740061002000740065007800740020002D002000
      750073006500200023006E0027007400650078007400270020006E006F007400
      6100740069006F006E002C002000730065007000610072006100740065002000
      65006E007400720069006500730020007700690074006800200063006F006C00
      6F006E00730020006F0072002000730065006D00690063006F006C006F006E00
      73002E0001000D000A00440069007300630043006F006D0062006F002E003000
      01004D00410047004E004900540055004400450001000D000A00440069007300
      630043006F006D0062006F002E00310001004C00490054004500520041004C00
      01000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A00500072006F0064005300
      6500700042006F0078002E004E006F00530065006C0065006300740069006F00
      6E00540065007800740001002D002D0020004E006F002000530065006C006500
      6300740069006F006E0020002D002D0001000D000A0045006F00700042006F00
      78002E0043006F006E006600690072006D006100740069006F006E0001000100
      0D000A0049005700530069004C0069006E006B0031002E0043006F006E006600
      690072006D006100740069006F006E00010001000D000A005300690067006E00
      62006F0078002E0043006F006E006600690072006D006100740069006F006E00
      010001000D000A00540069006D0065006F0075007400420074006E002E004700
      72006F007500700001006E006F002000670072006F007500700001000D000A00
      540069006D0065006F0075007400420074006E002E00560061006C0075006500
      0100540069006D0065006F0075007400420074006E0001000D000A0053006D00
      610072007400430075007400420074006E002E00470072006F00750070000100
      6E006F002000670072006F007500700001000D000A0053006D00610072007400
      430075007400420074006E002E00560061006C0075006500010053006D006100
      72007400430075007400420074006E0001000D000A004E006F0072006D004200
      74006E002E00470072006F007500700001006E006F002000670072006F007500
      700001000D000A004E006F0072006D00420074006E002E00560061006C007500
      650001004E006F0072006D00420074006E0001000D000A0049006E0063004200
      6F0078002E0043006F006E006600690072006D006100740069006F006E000100
      01000D000A00440065007400650063007400420074006E002E00470072006F00
      7500700001006600690072007300740001000D000A0044006500740065006300
      7400420074006E002E00560061006C0075006500010044006500740065006300
      7400420074006E0001000D000A00530075007000700072006500730073004200
      74006E002E00470072006F007500700001006600690072007300740001000D00
      0A0053007500700070007200650073007300420074006E002E00560061006C00
      75006500010053007500700070007200650073007300420074006E0001000D00
      0A0041007300730075006D006500420074006E002E00470072006F0075007000
      01006600690072007300740001000D000A0041007300730075006D0065004200
      74006E002E00560061006C0075006500010041007300730075006D0065004200
      74006E0001000D000A004500780063006C004B00650065007000410073007900
      6E006300680042006F0078002E0043006F006E006600690072006D0061007400
      69006F006E00010001000D000A00540046006F0072006D0050004F0053002E00
      5400680065006D006500010001000D000A0049005700530069004C0069006E00
      6B0031002E00430073007300010001000D000A0049005700530069004C006900
      6E006B0031002E0053006B0069006E0049006400010001000D000A0049005700
      4C006100620065006C00320030002E00430073007300010001000D000A004900
      57004C006100620065006C00320030002E0053006B0069006E00490064000100
      01000D000A00490057004C006100620065006C00310031002E00430073007300
      010001000D000A00490057004C006100620065006C00310031002E0053006B00
      69006E0049006400010001000D000A00490057004C006100620065006C003200
      2E00430073007300010001000D000A00490057004C006100620065006C003200
      2E0053006B0069006E0049006400010001000D000A00490057004C0061006200
      65006C0031002E00430073007300010001000D000A00490057004C0061006200
      65006C0031002E0053006B0069006E0049006400010001000D000A004E006500
      77004E0061006D00650045006400690074002E00430073007300010001000D00
      0A004E00650077004E0061006D00650045006400690074002E0053006B006900
      6E0049006400010001000D000A0050006F0073004C006100620065006C002E00
      430073007300010001000D000A0050006F0073004C006100620065006C002E00
      53006B0069006E0049006400010001000D000A00490057004C00610062006500
      6C0035002E00430073007300010001000D000A00490057004C00610062006500
      6C0035002E0053006B0069006E0049006400010001000D000A004E0065007700
      4900440045006400690074002E00430073007300010001000D000A004E006500
      77004900440045006400690074002E0053006B0069006E004900640001000100
      0D000A0049005700520065006300740061006E0067006C00650032002E004300
      73007300010001000D000A0049005700520065006300740061006E0067006C00
      650032002E0053006B0069006E0049006400010001000D000A00490057005200
      65006300740061006E0067006C00650031002E00430073007300010001000D00
      0A0049005700520065006300740061006E0067006C00650031002E0053006B00
      69006E0049006400010001000D000A00490057004C006100620065006C003200
      35002E00430073007300010001000D000A00490057004C006100620065006C00
      320035002E0053006B0069006E0049006400010001000D000A00530063006100
      6E005000610074007400650072006E0045006400690074002E00430073007300
      010001000D000A005300630061006E005000610074007400650072006E004500
      6400690074002E0053006B0069006E0049006400010001000D000A0049005700
      4C006100620065006C00320036002E00430073007300010001000D000A004900
      57004C006100620065006C00320036002E0053006B0069006E00490064000100
      01000D000A005300630061006E004F007500740045006400690074002E004300
      73007300010001000D000A005300630061006E004F0075007400450064006900
      74002E0053006B0069006E0049006400010001000D000A004400750070004500
      6400690074002E00430073007300010001000D000A0044007500700045006400
      690074002E0053006B0069006E0049006400010001000D000A00490057004C00
      6100620065006C00310032002E00430073007300010001000D000A0049005700
      4C006100620065006C00310032002E0053006B0069006E004900640001000100
      0D000A00490057004C006100620065006C00310033002E004300730073000100
      01000D000A00490057004C006100620065006C00310033002E0053006B006900
      6E0049006400010001000D000A0052006500710045006400690074002E004300
      73007300010001000D000A0052006500710045006400690074002E0053006B00
      69006E0049006400010001000D000A00490057004C006100620065006C003100
      34002E00430073007300010001000D000A00490057004C006100620065006C00
      310034002E0053006B0069006E0049006400010001000D000A00450078006300
      6C0045006400690074002E00430073007300010001000D000A00450078006300
      6C0045006400690074002E0053006B0069006E0049006400010001000D000A00
      490057004C006100620065006C00310035002E00430073007300010001000D00
      0A00490057004C006100620065006C00310035002E0053006B0069006E004900
      6400010001000D000A004D00650072006300680045006400690074002E004300
      73007300010001000D000A004D00650072006300680045006400690074002E00
      53006B0069006E0049006400010001000D000A00490057004C00610062006500
      6C00310036002E00430073007300010001000D000A00490057004C0061006200
      65006C00310036002E0053006B0069006E0049006400010001000D000A005000
      72006F00640045006E00640045006400690074002E0043007300730001000100
      0D000A00500072006F00640045006E00640045006400690074002E0053006B00
      69006E0049006400010001000D000A00500072006F0064005300740061007200
      740045006400690074002E00430073007300010001000D000A00500072006F00
      64005300740061007200740045006400690074002E0053006B0069006E004900
      6400010001000D000A00490057004C006100620065006C00310037002E004300
      73007300010001000D000A00490057004C006100620065006C00310037002E00
      53006B0069006E0049006400010001000D000A00500072006F00640053006500
      700042006F0078002E00430073007300010001000D000A00500072006F006400
      53006500700042006F0078002E0053006B0069006E0049006400010001000D00
      0A00490057004C006100620065006C00320031002E0043007300730001000100
      0D000A00490057004C006100620065006C00320031002E0053006B0069006E00
      49006400010001000D000A00490057004C006100620065006C00320032002E00
      430073007300010001000D000A00490057004C006100620065006C0032003200
      2E0053006B0069006E0049006400010001000D000A004C006F0067006F004500
      6400690074002E00430073007300010001000D000A004C006F0067006F004500
      6400690074002E0053006B0069006E0049006400010001000D000A0049005700
      4C006100620065006C0034002E00430073007300010001000D000A0049005700
      4C006100620065006C0034002E0053006B0069006E0049006400010001000D00
      0A0056006F007500630068006500720045006400690074002E00430073007300
      010001000D000A0056006F007500630068006500720045006400690074002E00
      53006B0069006E0049006400010001000D000A00490057004C00610062006500
      6C0036002E00430073007300010001000D000A00490057004C00610062006500
      6C0036002E0053006B0069006E0049006400010001000D000A00490057004C00
      6100620065006C0037002E00430073007300010001000D000A00490057004C00
      6100620065006C0037002E0053006B0069006E0049006400010001000D000A00
      5300740061007200740045006400690074002E00430073007300010001000D00
      0A005300740061007200740045006400690074002E0053006B0069006E004900
      6400010001000D000A00490057004C006100620065006C0038002E0043007300
      7300010001000D000A00490057004C006100620065006C0038002E0053006B00
      69006E0049006400010001000D000A0045006E00640045006400690074002E00
      430073007300010001000D000A0045006E00640045006400690074002E005300
      6B0069006E0049006400010001000D000A00490057004C006100620065006C00
      310038002E00430073007300010001000D000A00490057004C00610062006500
      6C00310038002E0053006B0069006E0049006400010001000D000A0056006F00
      6900640045006400690074002E00430073007300010001000D000A0056006F00
      6900640045006400690074002E0053006B0069006E0049006400010001000D00
      0A00490057004C006100620065006C00310039002E0043007300730001000100
      0D000A00490057004C006100620065006C00310039002E0053006B0069006E00
      49006400010001000D000A00430061006E00630065006C004500640069007400
      2E00430073007300010001000D000A00430061006E00630065006C0045006400
      690074002E0053006B0069006E0049006400010001000D000A00490057004C00
      6100620065006C00320033002E00430073007300010001000D000A0049005700
      4C006100620065006C00320033002E0053006B0069006E004900640001000100
      0D000A0045007800630065007000740045006400690074002E00430073007300
      010001000D000A0045007800630065007000740045006400690074002E005300
      6B0069006E0049006400010001000D000A00490057004C006100620065006C00
      320034002E00430073007300010001000D000A00490057004C00610062006500
      6C00320034002E0053006B0069006E0049006400010001000D000A004F006600
      660073006500740045006400690074002E00430073007300010001000D000A00
      4F006600660073006500740045006400690074002E0053006B0069006E004900
      6400010001000D000A0045006F00700042006F0078002E004300730073000100
      01000D000A0045006F00700042006F0078002E0053006B0069006E0049006400
      010001000D000A00490057004C006100620065006C00330032002E0043007300
      7300010001000D000A00490057004C006100620065006C00330032002E005300
      6B0069006E0049006400010001000D000A005300750070007000720065007300
      730045006400690074002E00430073007300010001000D000A00530075007000
      7000720065007300730045006400690074002E0053006B0069006E0049006400
      010001000D000A00540069006D0065006F0075007400420074006E002E004300
      73007300010001000D000A00540069006D0065006F0075007400420074006E00
      2E0053006B0069006E0049006400010001000D000A0053006D00610072007400
      430075007400420074006E002E00430073007300010001000D000A0053006D00
      610072007400430075007400420074006E002E0053006B0069006E0049006400
      010001000D000A00450078007400720061006C006100620065006C002E004300
      73007300010001000D000A00450078007400720061006C006100620065006C00
      2E0053006B0069006E0049006400010001000D000A0045007800740072006100
      45006400690074002E00430073007300010001000D000A004500780074007200
      610045006400690074002E0053006B0069006E0049006400010001000D000A00
      4E006F0072006D00420074006E002E00430073007300010001000D000A004E00
      6F0072006D00420074006E002E0053006B0069006E0049006400010001000D00
      0A005300430054006500780074004C0062006C002E0043007300730001000100
      0D000A005300430054006500780074004C0062006C002E0053006B0069006E00
      49006400010001000D000A005300430054007200690067004500640069007400
      2E00430073007300010001000D000A0053004300540072006900670045006400
      690074002E0053006B0069006E0049006400010001000D000A0044006F006300
      4C0069006E00650073004C0062006C002E00430073007300010001000D000A00
      44006F0063004C0069006E00650073004C0062006C002E0053006B0069006E00
      49006400010001000D000A0044006F0063004C0069006E006500730045006400
      690074002E00430073007300010001000D000A0044006F0063004C0069006E00
      6500730045006400690074002E0053006B0069006E0049006400010001000D00
      0A0049006E00630042006F0078002E00430073007300010001000D000A004900
      6E00630042006F0078002E0053006B0069006E0049006400010001000D000A00
      4300750074004C0062006C002E00430073007300010001000D000A0043007500
      74004C0062006C002E0053006B0069006E0049006400010001000D000A004900
      57004C006100620065006C00320037002E00430073007300010001000D000A00
      490057004C006100620065006C00320037002E0053006B0069006E0049006400
      010001000D000A0050006100720061006D0045006400690074002E0043007300
      7300010001000D000A0050006100720061006D0045006400690074002E005300
      6B0069006E0049006400010001000D000A005400720061006E00490044004C00
      62006C002E00430073007300010001000D000A005400720061006E0049004400
      4C0062006C002E0053006B0069006E0049006400010001000D000A0054007200
      61006E004900440045006400690074002E00430073007300010001000D000A00
      5400720061006E004900440045006400690074002E0053006B0069006E004900
      6400010001000D000A004500780063006C004B00650065007000410073007900
      6E006300680042006F0078002E00430073007300010001000D000A0045007800
      63006C004B006500650070004100730079006E006300680042006F0078002E00
      53006B0069006E0049006400010001000D000A00490057004C00610062006500
      6C00320039002E00430073007300010001000D000A00490057004C0061006200
      65006C00320039002E0053006B0069006E0049006400010001000D000A006500
      7200720061007400610065006400690074002E00430073007300010001000D00
      0A0065007200720061007400610065006400690074002E0053006B0069006E00
      49006400010001000D000A005000720065007300650072007600650042006F00
      78002E0043006F006E006600690072006D006100740069006F006E0001000100
      0D000A005000720065007300650072007600650042006F0078002E0043007300
      7300010001000D000A005000720065007300650072007600650042006F007800
      2E0053006B0069006E0049006400010001000D000A00490057004C0061006200
      65006C0039002E00430073007300010001000D000A00490057004C0061006200
      65006C0039002E0053006B0069006E0049006400010001000D000A0044006500
      630045006400690074002E00430073007300010001000D000A00440065006300
      45006400690074002E0053006B0069006E0049006400010001000D000A004900
      57004C006100620065006C00310030002E00430073007300010001000D000A00
      490057004C006100620065006C00310030002E0053006B0069006E0049006400
      010001000D000A00540068006F00750045006400690074002E00430073007300
      010001000D000A00540068006F00750045006400690074002E0053006B006900
      6E0049006400010001000D000A00490057004C006100620065006C0033002E00
      430073007300010001000D000A00490057004C006100620065006C0033002E00
      53006B0069006E0049006400010001000D000A0046006F0072006D0045006400
      690074002E00430073007300010001000D000A0046006F0072006D0045006400
      690074002E0053006B0069006E0049006400010001000D000A00530069006700
      6E0062006F0078002E00430073007300010001000D000A005300690067006E00
      62006F0078002E0053006B0069006E0049006400010001000D000A0049005700
      4C006100620065006C00320038002E00430073007300010001000D000A004900
      57004C006100620065006C00320038002E0053006B0069006E00490064000100
      01000D000A00440065007400650063007400420074006E002E00430073007300
      010001000D000A00440065007400650063007400420074006E002E0053006B00
      69006E0049006400010001000D000A0053007500700070007200650073007300
      420074006E002E00430073007300010001000D000A0053007500700070007200
      650073007300420074006E002E0053006B0069006E0049006400010001000D00
      0A0041007300730075006D006500420074006E002E0043007300730001000100
      0D000A0041007300730075006D006500420074006E002E0053006B0069006E00
      49006400010001000D000A00490057004C006100620065006C00330030002E00
      430073007300010001000D000A00490057004C006100620065006C0033003000
      2E0053006B0069006E0049006400010001000D000A0041006300740069007600
      6500570069006E0064006F00770045006400690074002E004300730073000100
      01000D000A00410063007400690076006500570069006E0064006F0077004500
      6400690074002E0053006B0069006E0049006400010001000D000A0044006900
      7300630043006F006D0062006F002E00430073007300010001000D000A004400
      69007300630043006F006D0062006F002E004E006F00530065006C0065006300
      740069006F006E00540065007800740001002D002D0020004E006F0020005300
      65006C0065006300740069006F006E0020002D002D0001000D000A0044006900
      7300630043006F006D0062006F002E0053006B0069006E004900640001000100
      0D000A0044006900730063004C006100620065006C002E004300730073000100
      01000D000A0044006900730063004C006100620065006C002E0053006B006900
      6E0049006400010001000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A00}
  end
end
