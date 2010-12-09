object su_coForm: Tsu_coForm
  Left = 0
  Top = 0
  Width = 1024
  Height = 774
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
  DesignLeft = 212
  DesignTop = 187
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 745
    Width = 1024
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 0
    inherited IWRegion1: TIWRegion
      Width = 1024
      Height = 29
      TabOrder = 15
      inherited IWRectangle1: TIWRectangle
        Left = 646
        Width = 416
      end
      inherited IWRectangle4: TIWRectangle
        Width = 1638
      end
      inherited IWRectangle6: TIWRectangle
        Width = 604
      end
      inherited Cancel: TIWButton
        Left = 936
        OnClick = CancelBtnClick
      end
      inherited Extra1: TIWButton
        Left = 848
        Visible = True
        Caption = 'Delete'
        Confirmation = 'Delete this record?'
        OnClick = DelBtnClick
      end
      inherited Extra2: TIWButton
        Left = 760
        Visible = True
        Caption = 'Save'
        OnClick = PostButtonClick
      end
      inherited fiwSiLink1: TIWSiLink
        Left = 680
      end
      inherited navcombo: TIWComboBox
        Visible = False
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
        64010D0A536176650153415645010D0A4261636B014261636B010D0A44424572
        726F7201556E61626C6520746F207361766520646174612E010D0A73744F7468
        6572537472696E67730D0A7374436F6C6C656374696F6E730D0A737443686172
        536574730D0A5475736572666F6F7465720144454641554C545F434841525345
        54010D0A}
    end
  end
  object IWRegion1: TIWRegion
    Left = 0
    Top = 115
    Width = 1024
    Height = 630
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
      1024
      630)
    object IWRegion2: TIWRegion
      Left = 185
      Top = 23
      Width = 671
      Height = 594
      Cursor = crAuto
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
        671
        594)
      object IWLabel1: TIWLabel
        Left = 159
        Top = 24
        Width = 377
        Height = 41
        Cursor = crAuto
        Anchors = [akTop]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taCenter
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'arial'
        Font.Size = 20
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Company Administration'
        RawText = False
      end
      object IWSiLink1: TIWSiLink
        Left = 9
        Top = 8
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
        SiLangLinked = silink1
        LangFile = 'coadmin.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 671
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
        Height = 591
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
      object VEdit: TIWEdit
        Left = 160
        Top = 136
        Width = 65
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
        FriendlyName = 'CoEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 5
        PasswordPrompt = False
        Text = 'VEdit'
      end
      object IWLabel7: TIWLabel
        Left = 64
        Top = 136
        Width = 89
        Height = 21
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
        Caption = 'Journal Vend.'
        RawText = False
      end
      object UserGrid: TIWGrid
        Left = 162
        Top = 195
        Width = 390
        Height = 329
        Cursor = crAuto
        Anchors = [akTop, akBottom]
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
        OnRenderCell = UserGridRenderCell
        UseFrame = True
        UseSize = True
        FriendlyName = 'UserGrid'
        ColumnCount = 4
        OnCellClick = UserGridCellClick
        RowCount = 1
        TabOrder = -1
        ShowEmptyCells = True
        ScrollToCurrentRow = False
      end
      object IWLabel8: TIWLabel
        Left = 234
        Top = 136
        Width = 89
        Height = 21
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
        Caption = 'Journal Prod.'
        RawText = False
      end
      object PEdit: TIWEdit
        Left = 320
        Top = 136
        Width = 65
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
        FriendlyName = 'CoEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 6
        PasswordPrompt = False
        Text = 'PEdit'
      end
      object CoEdit: TIWEdit
        Left = 160
        Top = 104
        Width = 265
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
        FriendlyName = 'CoEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 3
        PasswordPrompt = False
        Text = 'CoEdit'
      end
      object IWLabel2: TIWLabel
        Left = 64
        Top = 104
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
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        AutoSize = False
        FriendlyName = 'IWLabel1'
        Caption = 'Company'
        RawText = False
      end
      object IWLabel3: TIWLabel
        Left = 64
        Top = 72
        Width = 25
        Height = 21
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
        Caption = 'ID'
        RawText = False
      end
      object IDEdit: TIWEdit
        Left = 160
        Top = 72
        Width = 65
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Alignment = taLeftJustify
        BGColor = clBtnFace
        FocusColor = clNone
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'CoEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        TabOrder = 1
        PasswordPrompt = False
        Text = 'IdEdit'
      end
      object IWLabel6: TIWLabel
        Left = 27
        Top = 532
        Width = 72
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
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
        FriendlyName = 'IWLabel4'
        Caption = 'Add User'
        RawText = False
      end
      object IWLabel4: TIWLabel
        Left = 115
        Top = 532
        Width = 41
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
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
        FriendlyName = 'IWLabel4'
        Caption = 'Name'
        RawText = False
      end
      object unameedit: TIWEdit
        Left = 162
        Top = 532
        Width = 97
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
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
        FriendlyName = 'unameedit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 7
        PasswordPrompt = False
      end
      object IWLabel5: TIWLabel
        Left = 275
        Top = 532
        Width = 171
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
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
        FriendlyName = 'IWLabel4'
        Caption = 'Password (new users only)'
        RawText = False
      end
      object pwdedit: TIWEdit
        Left = 452
        Top = 532
        Width = 89
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
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
        FriendlyName = 'IWEdit1'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 8
        PasswordPrompt = True
      end
      object CreateUserBtn: TIWButton
        Left = 557
        Top = 531
        Width = 75
        Height = 25
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        Caption = 'Create'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'CreateUserBtn'
        ScriptEvents = <>
        TabOrder = 9
        OnClick = CreateUserClick
      end
      object IWLabel9: TIWLabel
        Left = 64
        Top = 198
        Width = 65
        Height = 21
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
        FriendlyName = 'IWLabel3'
        Caption = 'Users'
        RawText = False
      end
      object IWLabel10: TIWLabel
        Left = 224
        Top = 72
        Width = 89
        Height = 21
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
        Caption = 'Time Offset'
        RawText = False
      end
      object TimeEdit: TIWEdit
        Left = 312
        Top = 71
        Width = 41
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
        FriendlyName = 'CoEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 2
        PasswordPrompt = False
        Text = 'Time'
      end
      object IWLabel11: TIWLabel
        Left = 432
        Top = 106
        Width = 41
        Height = 21
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
        Caption = 'Alias'
        RawText = False
      end
      object AliasEdit: TIWEdit
        Left = 480
        Top = 104
        Width = 73
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
        FriendlyName = 'CoEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 4
        PasswordPrompt = False
        Text = 'AliasEdit'
      end
      object IWLabel12: TIWLabel
        Left = 24
        Top = 563
        Width = 121
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
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
        Caption = 'Notify status email'
        RawText = False
      end
      object NotifyEdit: TIWEdit
        Left = 160
        Top = 563
        Width = 377
        Height = 21
        Cursor = crAuto
        Anchors = [akLeft, akBottom]
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
        FriendlyName = 'CoEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 10
        PasswordPrompt = False
        Text = 'NotifyEdit'
      end
      object TimezoneBox: TIWComboBox
        Left = 360
        Top = 72
        Width = 257
        Height = 21
        Cursor = crAuto
        Visible = False
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
        UseSize = True
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        TabOrder = 12
        ItemIndex = -1
        Sorted = True
        FriendlyName = 'TimezoneBox'
      end
      object IWLabel13: TIWLabel
        Left = 404
        Top = 136
        Width = 89
        Height = 21
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
        Caption = 'Notify Class'
        RawText = False
      end
      object NClassCombo: TIWComboBox
        Left = 485
        Top = 137
        Width = 66
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
        TabOrder = 13
        ItemIndex = 0
        Items.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
        Sorted = False
        FriendlyName = 'TimezoneBox'
      end
      object StrictBox: TIWCheckBox
        Left = 160
        Top = 165
        Width = 156
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Caption = 'Strict Change Control'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 14
        Checked = False
        FriendlyName = 'StrictBox'
      end
      object NewBox: TIWCheckBox
        Left = 395
        Top = 165
        Width = 156
        Height = 21
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        Caption = 'New Transaction DB'
        Editable = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        DoSubmitValidation = True
        Style = stNormal
        TabOrder = 16
        Checked = False
        FriendlyName = 'StrictBox'
      end
    end
  end
  inline FrameBareTitle1: TFrameBareTitle
    Left = 0
    Top = 0
    Width = 1024
    Height = 115
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    inherited IWFrameRegion: TIWRegion
      Width = 1024
      Height = 115
      TabOrder = 11
      inherited titleimage: TIWImageFile
        Width = 453
        ImageFile.Filename = 'E:\delphi\delphi_web\files\admin.GIF'
      end
      inherited IWRectangle1: TIWRectangle
        Top = 90
        Width = 1024
      end
      inherited IWRectangle3: TIWRectangle
        Top = 95
      end
      inherited IWImageFile3: TIWImageFile
        Left = 689
      end
      inherited TitleLabel: TIWLabel
        Width = 486
        Caption = 'administration'
      end
      inherited langlink: TIWSiLink
        Left = 625
      end
      inherited Smalltitle: TIWLabel
        Left = 902
      end
      inherited HideBox: TIWImageFile
        Left = 1008
      end
    end
    inherited silink: TsiLangLinked
      Left = 520
    end
  end
  object silink1: TsiLangLinked
    Version = '5.3.1.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    SmartExcludeProps.Strings = (
      'UserLabel.Caption'
      'Extra1.Caption'
      'Extra2.Caption'
      'Extra3.Caption'
      'CancelLnk.Caption'
      'UserGrid.Caption')
    LangDispatcher = RcDataMod.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'English')
    Language = 'English'
    CommonContainer = RcDataMod.siLang1
    ExcludedProperties.Strings = (
      'Hint'
      'FriendlyName'
      'HelpKeyword'
      'StatusText'
      'ExtraTagParams')
    Left = 272
    Top = 144
    TranslationData = {
      737443617074696F6E730D0A49574C6162656C3101436F6D70616E792041646D
      696E697374726174696F6E010D0A49574C6162656C37014A6F75726E616C2056
      656E642E010D0A49574C6162656C38014A6F75726E616C2050726F642E010D0A
      49574C6162656C3201436F6D70616E79010D0A49574C6162656C33014944010D
      0A49574C6162656C36014164642055736572010D0A49574C6162656C34014E61
      6D65010D0A49574C6162656C350150617373776F7264010D0A43726561746555
      73657242746E01437265617465010D0A49574C6162656C39015573657273010D
      0A49574C6162656C31300154696D65204F6666736574010D0A49574C6162656C
      313101416C696173010D0A49574C6162656C3132014E6F746966792073746174
      757320656D61696C010D0A49574C6162656C3133014E6F7469667920436C6173
      73010D0A537472696374426F7801537472696374204368616E676520436F6E74
      726F6C010D0A737448696E74730D0A7374446973706C61794C6162656C730D0A
      7374466F6E74730D0A5475736572666F6F746572014D532053616E7320536572
      6966010D0A73744D756C74694C696E65730D0A54696D657A6F6E65426F782E49
      74656D7301010D0A4E436C617373436F6D626F2E4974656D7301302C312C322C
      332C342C352C362C372C382C392C3130010D0A7374537472696E67730D0A7374
      4F74686572537472696E67730D0A5473755F636F466F726D2E5469746C650101
      0D0A495753694C696E6B312E436F6E6669726D6174696F6E01010D0A49575369
      4C696E6B312E4C616E6746696C6501636F61646D696E2E73696C010D0A495752
      656374616E676C65322E5465787401010D0A495752656374616E676C65312E54
      65787401010D0A56456469742E54657874015645646974010D0A557365724772
      69642E53756D6D61727901010D0A50456469742E54657874015045646974010D
      0A436F456469742E5465787401436F45646974010D0A4944456469742E546578
      7401496445646974010D0A756E616D65656469742E5465787401010D0A707764
      656469742E5465787401010D0A4372656174655573657242746E2E436F6E6669
      726D6174696F6E01010D0A4372656174655573657242746E2E486F744B657901
      010D0A54696D65456469742E546578740154696D65010D0A416C696173456469
      742E5465787401416C69617345646974010D0A4E6F74696679456469742E5465
      7874014E6F7469667945646974010D0A54696D657A6F6E65426F782E4E6F5365
      6C656374696F6E54657874012D2D204E6F2053656C656374696F6E202D2D010D
      0A4E436C617373436F6D626F2E4E6F53656C656374696F6E54657874012D2D20
      4E6F2053656C656374696F6E202D2D010D0A537472696374426F782E436F6E66
      69726D6174696F6E01010D0A7374436F6C6C656374696F6E730D0A7374436861
      72536574730D0A5475736572666F6F7465720144454641554C545F4348415253
      4554010D0A}
  end
end
