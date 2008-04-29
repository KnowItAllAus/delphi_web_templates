object FormVoucherNewEdit: TFormVoucherNewEdit
  Left = 0
  Top = 0
  Width = 1014
  Height = 698
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
  OnDefaultAction = IWAppFormDefaultAction
  XPTheme = True
  UpdateMode = umPartial
  DesignLeft = 400
  DesignTop = 252
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
      TabOrder = 32
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
      inherited TitleLabel: TIWLabel
        Width = 387
        Caption = 'promotions'
      end
      inherited langlink: TIWSiLink
        Left = 581
      end
      inherited Smalltitle: TIWLabel
        Top = 99
      end
      inherited HideBox: TIWImageFile
        Top = 100
        Width = 12
        Height = 14
      end
    end
  end
  inline userfooter1: Tuserfooter
    Left = 0
    Top = 669
    Width = 1014
    Height = 29
    HorzScrollBar.Visible = False
    Align = alBottom
    TabOrder = 1
    inherited IWRegion1: TIWRegion
      Width = 1014
      Height = 29
      TabOrder = 31
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
    Height = 552
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
      1014
      552)
    object IWRegion2: TIWRegion
      Left = 136
      Top = 8
      Width = 825
      Height = 537
      Cursor = crAuto
      Anchors = [akLeft, akTop, akBottom]
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
        825
        537)
      object IWLabel8: TIWLabel
        Left = 50
        Top = 57
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
      object NewTrigEdit: TIWEdit
        Left = 96
        Top = 56
        Width = 177
        Height = 20
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
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 1
        PasswordPrompt = False
        Text = 'NewTrigEdit'
      end
      object NewNameEdit: TIWEdit
        Left = 96
        Top = 32
        Width = 225
        Height = 20
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
        FriendlyName = 'NewNameEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 0
        PasswordPrompt = False
        Text = 'NewNameEdit'
      end
      object IWLabel1: TIWLabel
        Left = 48
        Top = 33
        Width = 40
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
        Caption = 'Name'
        RawText = False
      end
      object VoucherLabel: TIWLabel
        Left = 256
        Top = 8
        Width = 225
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
        Caption = 'Rules - Events and Actions'
        RawText = False
      end
      object IWLabel3: TIWLabel
        Left = 464
        Top = 32
        Width = 27
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
        FriendlyName = 'IWLabel3'
        Caption = 'Tag'
        RawText = False
      end
      object NewTagEdit: TIWEdit
        Left = 504
        Top = 31
        Width = 81
        Height = 20
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
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = False
        Required = False
        ScriptEvents = <>
        TabOrder = 2
        PasswordPrompt = False
        Text = 'NewTagEdit'
      end
      object IWLabel2: TIWLabel
        Left = 608
        Top = 31
        Width = 14
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
        Caption = 'ID'
        RawText = False
      end
      object NewIDEdit: TIWEdit
        Left = 632
        Top = 30
        Width = 73
        Height = 20
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
        FriendlyName = 'NewIDEdit'
        MaxLength = 0
        ReadOnly = True
        Required = False
        ScriptEvents = <>
        TabOrder = 3
        PasswordPrompt = False
        Text = 'NewIDEdit'
      end
      object IWSiLink1: TIWSiLink
        Left = 8
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
        TabOrder = 30
        RawText = False
        SiLangLinked = siLangLinked1
        LangFile = 'ruleedit.sil'
        LangControl = RcDataMod.LangEditControl1
      end
      object IWRectangle1: TIWRectangle
        Left = 0
        Top = 3
        Width = 3
        Height = 534
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
      object IWRectangle2: TIWRectangle
        Left = 0
        Top = 0
        Width = 825
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
      object IWRegion3: TIWRegion
        Left = 48
        Top = 80
        Width = 705
        Height = 89
        Cursor = crAuto
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
        object PurposeCombo: TIWComboBox
          Left = 80
          Top = 8
          Width = 209
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
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
          TabOrder = 4
          ItemIndex = -1
          Items.Strings = (
            'Text Printed'
            'Line Item - Description'
            'Line Item - Stock Code'
            'Scan Data'
            'Mag Card Data'
            'Keyboard Data')
          Sorted = False
          FriendlyName = 'PurposeCombo'
        end
        object IWLabel27: TIWLabel
          Left = 8
          Top = 8
          Width = 63
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
          FriendlyName = 'IWLabel9'
          Caption = 'Event'
          RawText = False
        end
        object OutputCombo: TIWComboBox
          Left = 80
          Top = 37
          Width = 209
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
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
          TabOrder = 6
          ItemIndex = -1
          Items.Strings = (
            'Voucher (bottom of page, one copy only)'
            'Multi-Voucher (bottom of page, one copy per item)'
            'Logo (top of page)'
            'Inline/After '
            'Inline/Overwrite '
            'Inline/Before ')
          Sorted = False
          FriendlyName = 'OutputCombo'
        end
        object IWLabel28: TIWLabel
          Left = 8
          Top = 38
          Width = 65
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
          FriendlyName = 'IWLabel6'
          Caption = 'Position'
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
          Alignment = taLeftJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          AutoSize = False
          FriendlyName = 'IWLabel3'
          Caption = 'Value from'
          RawText = False
        end
        object VStartedit: TIWEdit
          Left = 160
          Top = 64
          Width = 81
          Height = 20
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          TabOrder = 9
          PasswordPrompt = False
          Text = 'VStartEdit'
        end
        object VEndEdit: TIWEdit
          Left = 296
          Top = 64
          Width = 81
          Height = 20
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          TabOrder = 10
          PasswordPrompt = False
          Text = 'VEndEdit'
        end
        object vLabelTo: TIWLabel
          Left = 264
          Top = 65
          Width = 14
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
          Caption = 'to'
          RawText = False
        end
        object DupBox: TIWCheckBox
          Left = 552
          Top = 40
          Width = 129
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
          Caption = 'Inhibit Duplicates'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 8
          Checked = False
          FriendlyName = 'DupBox'
        end
        object PassthroughBox: TIWCheckBox
          Left = 552
          Top = 11
          Width = 97
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
          Caption = 'Passthrough'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 7
          Checked = False
          FriendlyName = 'DupBox'
        end
        object IWLabel6: TIWLabel
          Left = 320
          Top = 8
          Width = 63
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
          FriendlyName = 'IWLabel9'
          Caption = 'Priority'
          RawText = False
        end
        object PriorityCombo: TIWComboBox
          Left = 392
          Top = 8
          Width = 137
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
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
          TabOrder = 5
          ItemIndex = -1
          Items.Strings = (
            'First'
            'High'
            'Normal'
            'Low'
            'Last')
          Sorted = False
          FriendlyName = 'PurposeCombo'
        end
      end
      object IWRegion5: TIWRegion
        Left = 416
        Top = 172
        Width = 337
        Height = 273
        Cursor = crAuto
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
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
          337
          273)
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
          Alignment = taLeftJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          AutoSize = False
          FriendlyName = 'IWLabel11'
          Caption = 'Rule'
          RawText = False
        end
        object DepGrid: TIWGrid
          Left = 2
          Top = 72
          Width = 335
          Height = 199
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
          OnRenderCell = ImageGridRenderCell
          UseFrame = True
          UseSize = True
          FriendlyName = 'DepGrid'
          ColumnCount = 4
          OnCellClick = DepGridCellClick
          RowCount = 1
          TabOrder = -1
          ShowEmptyCells = True
          ScrollToCurrentRow = False
        end
        object IWButton2: TIWButton
          Left = 208
          Top = 24
          Width = 41
          Height = 25
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = True
          Caption = 'Add'
          DoSubmitValidation = True
          Color = clBtnFace
          Font.Color = clWebBLACK
          Font.Size = 10
          Font.Style = []
          FriendlyName = 'IWButton2'
          ScriptEvents = <>
          TabOrder = 17
          OnClick = IWButton2Click
        end
        object TrigCombo: TIWComboBox
          Left = 72
          Top = 3
          Width = 177
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
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
          TabOrder = 15
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
          Alignment = taLeftJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          AutoSize = False
          FriendlyName = 'IWLabel10'
          Caption = 'Sense'
          RawText = False
        end
        object SenseCombo: TIWComboBox
          Left = 72
          Top = 27
          Width = 121
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
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
          TabOrder = 16
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
          Alignment = taLeftJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
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
          TabOrder = 18
          PasswordPrompt = False
          Text = 'QtyEdit'
        end
      end
      object ImageRegion: TIWRegion
        Left = 48
        Top = 172
        Width = 365
        Height = 273
        Cursor = crAuto
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
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
          365
          273)
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
          Alignment = taLeftJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          AutoSize = False
          FriendlyName = 'IWLabel7'
          Caption = 'Outputs'
          RawText = False
        end
        object SelGrid: TIWGrid
          Left = 2
          Top = 56
          Width = 359
          Height = 215
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
          OnRenderCell = ImageGridRenderCell
          UseFrame = True
          UseSize = True
          FriendlyName = 'SelGrid'
          ColumnCount = 5
          OnCellClick = SelGridCellClick
          RowCount = 1
          TabOrder = -1
          ShowEmptyCells = True
          ScrollToCurrentRow = False
        end
        object DataCombo: TIWComboBox
          Left = 72
          Top = 5
          Width = 289
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
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
          TabOrder = 11
          ItemIndex = -1
          Sorted = False
          FriendlyName = 'DataCombo'
        end
        object IWButton1: TIWButton
          Left = 264
          Top = 27
          Width = 41
          Height = 25
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = True
          Caption = 'Add'
          DoSubmitValidation = True
          Color = clBtnFace
          Font.Color = clWebBLACK
          Font.Size = 10
          Font.Style = []
          FriendlyName = 'IWButton1'
          ScriptEvents = <>
          TabOrder = 13
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
          Alignment = taLeftJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          NoWrap = False
          ConvertSpaces = False
          AutoSize = False
          FriendlyName = 'IWLabel4'
          Caption = 'Status'
          RawText = False
        end
        object StatCombo: TIWComboBox
          Left = 72
          Top = 27
          Width = 177
          Height = 21
          Cursor = crAuto
          IW50Hint = False
          ParentShowHint = False
          ShowHint = True
          ZIndex = 0
          RenderSize = False
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
          TabOrder = 12
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
            'Redeem Invalid')
          Sorted = False
          FriendlyName = 'StatCombo'
        end
        object NewBtn: TIWButton
          Left = 312
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
          Caption = 'New'
          DoSubmitValidation = True
          Color = clBtnFace
          Font.Color = clWebBLACK
          Font.Size = 10
          Font.Style = []
          FriendlyName = 'IWButton1'
          ScriptEvents = <>
          TabOrder = 14
          OnClick = NewBtnClick
        end
      end
      object AvailRegion: TIWRegion
        Left = 49
        Top = 448
        Width = 704
        Height = 84
        Cursor = crAuto
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
          Alignment = taLeftJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = [fsBold]
          NoWrap = False
          ConvertSpaces = False
          AutoSize = False
          FriendlyName = 'IWLabel5'
          Caption = 'Active Times'
          RawText = False
        end
        object IWLabel13: TIWLabel
          Left = 22
          Top = 25
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
        object FromEdit: TIWEdit
          Left = 72
          Top = 24
          Width = 49
          Height = 20
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          TabOrder = 19
          PasswordPrompt = False
          Text = 'FromEdit'
        end
        object ToEdit: TIWEdit
          Left = 72
          Top = 48
          Width = 49
          Height = 20
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          TabOrder = 20
          PasswordPrompt = False
          Text = 'ToEdit'
        end
        object IWLabel14: TIWLabel
          Left = 22
          Top = 49
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
        object IWLabel15: TIWLabel
          Left = 152
          Top = 28
          Width = 58
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
          FriendlyName = 'IWLabel15'
          Caption = '(HH:MM)'
          RawText = False
        end
        object IWLabel16: TIWLabel
          Left = 152
          Top = 52
          Width = 58
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
          Alignment = taLeftJustify
          BGColor = clNone
          Font.Color = clNone
          Font.Size = 10
          Font.Style = [fsBold]
          NoWrap = False
          ConvertSpaces = False
          AutoSize = False
          FriendlyName = 'IWLabel17'
          Caption = 'Active Period'
          RawText = False
        end
        object IWLabel18: TIWLabel
          Left = 238
          Top = 25
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
          FriendlyName = 'IWLabel18'
          Caption = 'Start'
          RawText = False
        end
        object IWLabel19: TIWLabel
          Left = 238
          Top = 49
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
          FriendlyName = 'IWLabel19'
          Caption = 'Finish'
          RawText = False
        end
        object PeriodEndEdit: TIWEdit
          Left = 288
          Top = 48
          Width = 65
          Height = 20
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          TabOrder = 22
          PasswordPrompt = False
          Text = 'PeriodEndEdit'
        end
        object PeriodStartEdit: TIWEdit
          Left = 288
          Top = 24
          Width = 65
          Height = 20
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
          FriendlyName = 'NewIDEdit'
          MaxLength = 0
          ReadOnly = False
          Required = False
          ScriptEvents = <>
          TabOrder = 21
          PasswordPrompt = False
          Text = 'PeriodStartEdit'
        end
        object IWLabel20: TIWLabel
          Left = 368
          Top = 28
          Width = 83
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
          FriendlyName = 'IWLabel20'
          Caption = '(DD/MM/YY)'
          RawText = False
        end
        object IWLabel21: TIWLabel
          Left = 368
          Top = 52
          Width = 83
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
          FriendlyName = 'IWLabel21'
          Caption = '(DD/MM/YY)'
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
          RenderSize = False
          Caption = 'Mon'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 23
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
          RenderSize = False
          Caption = 'Tue'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 24
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
          RenderSize = False
          Caption = 'Wed'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 25
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
          RenderSize = False
          Caption = 'Thu'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 26
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
          RenderSize = False
          Caption = 'Fri'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 27
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
          RenderSize = False
          Caption = 'Sat'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 28
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
          RenderSize = False
          Caption = 'Sun'
          Editable = True
          Font.Color = clNone
          Font.Size = 10
          Font.Style = []
          ScriptEvents = <>
          DoSubmitValidation = True
          Style = stNormal
          TabOrder = 29
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
      'TFormVoucherEdit')
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
      'ExtraTagParams')
    Left = 8
    Top = 120
    TranslationData = {
      737443617074696F6E730D0A49574C6162656C380154657874010D0A49574C61
      62656C31014E616D65010D0A566F75636865724C6162656C0152756C6573202D
      204576656E747320616E6420416374696F6E73010D0A49574C6162656C330154
      6167010D0A49574C6162656C32014944010D0A49574C6162656C323701507572
      706F7365010D0A49574C6162656C323801416374696F6E010D0A766C6162656C
      66726F6D0156616C75652066726F6D010D0A764C6162656C546F01746F010D0A
      49574C6162656C31310152756C65010D0A4465704772696401010D0A49574275
      74746F6E3201416464010D0A49574C6162656C31300153656E7365010D0A4957
      4C6162656C3232015175616E74697479010D0A49574C6162656C37014F757470
      757473010D0A53656C4772696401010D0A4957427574746F6E3101416464010D
      0A49574C6162656C3401537461747573010D0A4E657742746E014E6577010D0A
      49574C6162656C35014163746976652054696D6573010D0A49574C6162656C31
      330146726F6D010D0A49574C6162656C313401546F010D0A49574C6162656C31
      35012848483A4D4D29010D0A49574C6162656C3136012848483A4D4D29010D0A
      49574C6162656C31370141637469766520506572696F64010D0A49574C616265
      6C3138015374617274010D0A49574C6162656C31390146696E697368010D0A49
      574C6162656C3230012844442F4D4D2F595929010D0A49574C6162656C323101
      2844442F4D4D2F595929010D0A6D6F6E626F78014D6F6E010D0A747565626F78
      01547565010D0A776564626F7801576564010D0A746875626F7801546875010D
      0A667269626F7801467269010D0A736174626F7801536174010D0A73756E626F
      780153756E010D0A447570426F7801496E6869626974204475706C6963617465
      73010D0A506173737468726F756768426F7801506173737468726F756768010D
      0A49574C6162656C36015072696F72697479010D0A737448696E74730D0A7374
      446973706C61794C6162656C730D0A7374466F6E74730D0A73744D756C74694C
      696E65730D0A507572706F7365436F6D626F2E4974656D73012247656E657261
      6C2054657874222C224964656E7469666965732050726F64756374222C224964
      656E746966696573205472616E73616374696F6E222C224964656E7469666965
      732053746F636B222C224C6F79616C7479205363616E222C22566F7563686572
      205363616E222C2252616E646F6D2030203D3C20517479203C20313030222C22
      4C6F79616C7479204B6264222C22566F7563686572204B6264222C224C6F7961
      6C7479204D6167222C2247656E6572616C205363616E222C2247656E6572616C
      204D6167222C2247656E6572616C204B6264222C224964656E74696669657320
      437573746F6D657222010D0A4F7574707574436F6D626F2E4974656D7301224E
      6F20616374696F6E222C22566F75636865722028626F74746F6D206F66207061
      67652C206F6E6520636F7079206F6E6C7929222C224D756C74692D566F756368
      65722028626F74746F6D206F6620706167652C206F6E6520636F707920706572
      206974656D29222C224C6F676F2028746F70206F66207061676529222C22496E
      6C696E652F496E7365727420286166746572207468652074726967676572206C
      696E6529222C22496E6C696E652F4F76657277726974652028696E7374656164
      206F66207468652074726967676572206C696E6529222C22496E6C696E652F42
      65666F726520286265666F7265207468652074726967676572206C696E652922
      2C224C6F79616C74792028626F74746F6D206F6620706167652C206F6E652063
      6F70792C206C6F79616C7479206461746120696E70757429222C224D756C7469
      2D4C6F79616C74792028626F74746F6D206F6620706167652C20636F70792070
      6572206974656D2C206C6F79616C7479206461746120696E7075742922010D0A
      54726967436F6D626F2E4974656D7301010D0A53656E7365436F6D626F2E4974
      656D7301526571756972652C4578636C7564652C437265646974010D0A446174
      61436F6D626F2E4974656D7301010D0A53746174436F6D626F2E4974656D7301
      416C776179732C2253746F636B204F6B222C2253746F636B204661696C222C22
      4F7574204F662053746F636B222C2253746F636B204465636C696E6564222C22
      4C6F79616C7479204661696C222C224C6F79616C7479204F6B222C224C6F7961
      6C747920496E76616C6964222C22566F7563686572204F6B222C22566F756368
      657220496E76616C6964222C22566F75636865722055736564222C22566F7563
      686572204661696C222C2253746F636B2052656973737565222C2253746F636B
      204E6F7420466F756E64222C22536372697074204F6B222C2253637269707420
      4661696C222C2252656465656D204F6B222C2252656465656D204661696C222C
      2252656465656D20506F696E74732052657164222C2252656465656D20496E76
      616C696422010D0A5072696F72697479436F6D626F2E4974656D730146697273
      742C486967682C4E6F726D616C2C4C6F772C4C617374010D0A7374537472696E
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
      6F726D616C010D0A5072696F72697479436F6D626F2E33014C6F77010D0A5072
      696F72697479436F6D626F2E34014C617374010D0A73744F7468657253747269
      6E67730D0A495753694C696E6B312E4C616E6746696C650172756C6565646974
      2E73696C010D0A507572706F7365436F6D626F2E4E6F53656C656374696F6E54
      657874012D2D204E6F2053656C656374696F6E202D2D010D0A4F757470757443
      6F6D626F2E4E6F53656C656374696F6E54657874012D2D204E6F2053656C6563
      74696F6E202D2D010D0A446570477269642E53756D6D61727901010D0A547269
      67436F6D626F2E4E6F53656C656374696F6E54657874012D2D204E6F2053656C
      656374696F6E202D2D010D0A53656E7365436F6D626F2E4E6F53656C65637469
      6F6E54657874012D2D204E6F2053656C656374696F6E202D2D010D0A53656C47
      7269642E53756D6D61727901010D0A44617461436F6D626F2E4E6F53656C6563
      74696F6E54657874012D2D204E6F2053656C656374696F6E202D2D010D0A5374
      6174436F6D626F2E4E6F53656C656374696F6E54657874012D2D204E6F205365
      6C656374696F6E202D2D010D0A5072696F72697479436F6D626F2E4E6F53656C
      656374696F6E54657874012D2D204E6F2053656C656374696F6E202D2D010D0A
      7374436F6C6C656374696F6E730D0A737443686172536574730D0A}
  end
end
