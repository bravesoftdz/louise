object FrmTSeriesGraph: TFrmTSeriesGraph
  Left = 240
  Top = 114
  HelpContext = 1390
  Caption = 'Time series graph'
  ClientHeight = 338
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = IFormCreate
  OnDestroy = IFormDestroy
  OnHide = FormHide
  OnKeyDown = IFormKeyDown
  OnShow = FormShow
  DesignSize = (
    492
    338)
  PixelsPerInch = 96
  TextHeight = 14
  object chartTSGraph: TChart
    Left = -7
    Top = 33
    Width = 491
    Height = 310
    Hint = 
      'Drag with left mouse button from left to bottom right to zoom, d' +
      'rag with right button to move the graph (pan)'
    BackWall.Brush.Style = bsClear
    Gradient.EndColor = 16777088
    Legend.Alignment = laTop
    Legend.ColorWidth = 40
    Legend.Font.Charset = GREEK_CHARSET
    Legend.Font.Name = 'Microsoft Sans Serif'
    Legend.LegendStyle = lsSeries
    Legend.Symbol.Width = 40
    Title.Frame.Style = psDash
    Title.Text.Strings = (
      '')
    OnUndoZoom = chartTSGraphUndoZoom
    OnZoom = chartTSGraphZoom
    BottomAxis.DateTimeFormat = 'dd/MM/yyyy'
    BottomAxis.LabelsFormat.TextAlignment = taCenter
    BottomAxis.LabelsSeparation = 50
    BottomAxis.Title.Font.Charset = GREEK_CHARSET
    BottomAxis.Title.Font.Name = 'Tahoma'
    Chart3DPercent = 35
    DepthAxis.LabelsFormat.TextAlignment = taCenter
    DepthTopAxis.LabelsFormat.TextAlignment = taCenter
    LeftAxis.LabelsFormat.TextAlignment = taCenter
    LeftAxis.Title.Font.Charset = GREEK_CHARSET
    LeftAxis.Title.Font.Name = 'Tahoma'
    RightAxis.LabelsFormat.TextAlignment = taCenter
    TopAxis.LabelsFormat.TextAlignment = taCenter
    View3D = False
    Zoom.Animated = True
    Zoom.AnimatedSteps = 4
    Zoom.Pen.Color = clGray
    Zoom.Pen.Mode = pmNotXor
    BevelOuter = bvNone
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Anchors = [akLeft, akTop, akRight, akBottom]
    OnResize = chartTSGraphZoom
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 492
    Height = 27
    ButtonHeight = 23
    Caption = 'ToolBar'
    Images = Images
    TabOrder = 1
    Transparent = True
    object tbtnLineSeries: TToolButton
      Left = 0
      Top = 0
      Hint = 'Graph with lines'
      Caption = 'tbtnLineSeries'
      Grouped = True
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = tbtnLineSeriesClick
    end
    object tbtnSideBars: TToolButton
      Left = 23
      Top = 0
      Hint = 'Graph with side bars'
      Caption = 'tbtnSideBars'
      Grouped = True
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = tbtnLineSeriesClick
    end
    object tbtnStackedBars: TToolButton
      Left = 46
      Top = 0
      Hint = 'Graph with stacked bars'
      Caption = 'tbtnStackedBars'
      Grouped = True
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = tbtnLineSeriesClick
    end
    object ToolButton4: TToolButton
      Left = 69
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object tbtnZoomAll: TToolButton
      Left = 77
      Top = 0
      Hint = 'Zoom all'
      Caption = 'tbtnZoomAll'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = mnuRestoreZoomClick
    end
    object tbtnZoomIn: TToolButton
      Left = 100
      Top = 0
      Hint = 'Zoom in'
      Caption = 'tbtnZoomIn'
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = mnuZoomInClick
    end
    object tbtnZoomOut: TToolButton
      Left = 123
      Top = 0
      Hint = 'Zoom out'
      Caption = 'tbtnZoomOut'
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = mnuZoomOutClick
    end
    object ToolButton8: TToolButton
      Left = 146
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object tbtnThick: TToolButton
      Left = 154
      Top = 0
      Hint = 'Thicker lines / bars'
      Caption = 'tbtnThick'
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = mnuThickLinesClick
    end
    object tbtnThin: TToolButton
      Left = 177
      Top = 0
      Hint = 'Thiner lines / bars'
      Caption = 'tbtnThin'
      ImageIndex = 7
      ParentShowHint = False
      ShowHint = True
      OnClick = mnuThinLinesClick
    end
    object tbtnCycleColors: TToolButton
      Left = 200
      Top = 0
      Hint = 'Cycle colors'
      Caption = 'tbtnCycleColors'
      ImageIndex = 8
      ParentShowHint = False
      ShowHint = True
      OnClick = mnuCycleColorsClick
    end
    object ToolButton1: TToolButton
      Left = 223
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object tbtnLegent: TToolButton
      Left = 231
      Top = 0
      Hint = 'Show legent'
      Caption = 'tbtnLegent'
      Down = True
      ImageIndex = 9
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = tbtnLegentClick
    end
  end
  object MainMenu: TMainMenu
    Left = 374
    Top = 30
    object mnuFile: TMenuItem
      Caption = 'File'
      object mnuSaveAsBitmap: TMenuItem
        Caption = 'Save graph as bitmap'
        ShortCut = 16467
        OnClick = mnuSaveAsBitmapClick
      end
      object mnuSeparator1: TMenuItem
        Caption = '-'
      end
      object mnuPrint: TMenuItem
        Caption = 'Print'
        ShortCut = 16464
        OnClick = mnuPrintClick
      end
      object mnuPrintSetup: TMenuItem
        Caption = 'Print setup'
        OnClick = mnuPrintSetupClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnuExit: TMenuItem
        Caption = 'Close window'
        ShortCut = 16499
        OnClick = mnuExitClick
      end
    end
    object mnuEdit: TMenuItem
      Caption = 'Edit'
      object mnuCopyClipboard: TMenuItem
        Caption = 'Copy Clipboard'
        ShortCut = 16451
        OnClick = mnuCopyClipboardClick
      end
      object mnuClear: TMenuItem
        Caption = 'Clear Graph'
        ShortCut = 24658
        OnClick = mnuClearClick
      end
    end
    object mnuView: TMenuItem
      Caption = 'View'
      object mnuRestoreZoom: TMenuItem
        Caption = 'Undo Zoom'
        ShortCut = 16474
        OnClick = mnuRestoreZoomClick
      end
      object mnuRefresh: TMenuItem
        Caption = 'Refresh'
        ShortCut = 116
        OnClick = mnuRefreshClick
      end
      object mnuCycleColors: TMenuItem
        Caption = 'Cycle Colors'
        ShortCut = 117
        OnClick = mnuCycleColorsClick
      end
      object mnuThinLines: TMenuItem
        Caption = 'Thin lines'
        ShortCut = 118
        OnClick = mnuThinLinesClick
      end
      object mnuThickLines: TMenuItem
        Caption = 'Thick lines'
        ShortCut = 119
        OnClick = mnuThickLinesClick
      end
      object mnuSeparator2: TMenuItem
        Caption = '-'
      end
      object mnuZoomIn: TMenuItem
        Caption = 'Zoom in'
        ShortCut = 45
        OnClick = mnuZoomInClick
      end
      object mnuZoomOut: TMenuItem
        Caption = 'Zoom out'
        ShortCut = 46
        OnClick = mnuZoomOutClick
      end
      object mnuSeparator3: TMenuItem
        Caption = '-'
      end
      object mnuArrowKeysToPan: TMenuItem
        Caption = 'Arrow keys to pan'
        Enabled = False
      end
    end
    object mnuHelp: TMenuItem
      Caption = 'Help'
      object mnuTimeSeriesGraphHelp: TMenuItem
        Caption = 'Time series graph help'
        OnClick = mnuTimeSeriesGraphHelpClick
      end
    end
  end
  object PrintDialog: TPrintDialog
    Left = 401
    Top = 32
  end
  object PrinterSetupDialog: TPrinterSetupDialog
    Left = 426
    Top = 32
  end
  object Images: TImageList
    Left = 376
    Top = 64
    Bitmap = {
      494C01010A000E00080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008442210084422100844221008442210084422100844221000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008442
      210084422100C6630000C6630000C6630000C6630000C6630000C66300008442
      21008442210000000000000000000000000000000000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C4A1800C663
      0000C6630000C6630000C6630000C6630000C6630000C6630000C6630000C663
      0000C663000084422100000000000000000000000000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C4A1800C6630000C663
      0000C6630000C6630000C6630000C6630000C6630000C6630000C6630000C663
      0000C6630000C6630000844221000000000000000000A4A0A0000000FF000000
      FF000000FF00A4A0A000A4A0A00000000000A4A0A000A4A0A000A4A0A0000000
      0000A4A0A000A4A0A000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD5A0800C6630000C663
      0000C6630000C6630000C6630000C6630000C6630000C6630000C6630000C663
      0000C6630000C6630000844221000000000000000000A4A0A0000000FF000000
      FF000000FF00A4A0A000A4A0A00000000000A4A0A000A4A0A000000000000000
      0000A4A0A000A4A0A000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5521000C6630000C6630000C663
      00000000FF000000FF0000FF000000FF0000FF000000FF00000000FFFF0000FF
      FF00C6630000C6630000C66300008442210000000000A4A0A0000000FF000000
      FF000000FF00A4A0A000000000000000000000000000A4A0A000A4A0A0000000
      000000000000A4A0A000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD521000CE731800CE731800CE73
      18000000FF000000FF0000FF000000FF0000FF000000FF00000000FFFF0000FF
      FF00C6630000C6630000C66300008442210000000000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD521000D6843100D6843100CE7B
      29000000FF000000FF0000FF000000FF0000FF000000FF00000000FFFF0000FF
      FF00C6630000C6630000C66300008442210000000000A4A0A000A4A0A000FF00
      0000A4A0A000A4A0A000A4A0A00000000000A4A0A00000000000A4A0A000A4A0
      A00000000000A4A0A000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD521000DEA56300DE945200D68C
      42000000FF000000FF0000FF000000FF0000FF000000FF00000000FFFF0000FF
      FF00C6630000C6630000C66300008442210000000000A4A0A000FF000000FF00
      0000FF000000A4A0A00000000000A4A0A000A4A0A000A4A0A00000000000A4A0
      A00000000000A4A0A000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD521000E7B58400E7B57B00DE94
      52000000FF000000FF0000FF000000FF0000FF000000FF00000000FFFF0000FF
      FF00C6630000C6630000C66300008442210000000000A4A0A000A4A0A000FF00
      0000A4A0A000A4A0A000A4A0A00000000000A4A0A000A4A0A00000000000A4A0
      A0000000000000000000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD521000E7B57B00F7D6BD00E7B5
      7B000000FF000000FF0000FF000000FF0000FF000000FF00000000FFFF0000FF
      FF00C6630000C6630000C66300008442210000000000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B55A1000F7D6BD00F7D6
      BD00E7BD8C00E7A56B00DE9C5A00D68C4200D6843100D6843100CE731800C663
      0000C6630000C6630000844221000000000000000000A4A0A000008000000080
      000000800000A4A0A0000000000000000000A4A0A0000000000000000000A4A0
      A000A4A0A00000000000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD521000E7B58400F7E7
      D600F7DEC600E7BD8C00DE9C5A00D68C4200D6843100CE731800CE731800C663
      0000C6630000C6630000844221000000000000000000A4A0A000008000000080
      000000800000A4A0A00000000000A4A0A000A4A0A00000000000A4A0A0000000
      0000A4A0A00000000000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD521000E7BD
      8C00F7DEC600F7E7D600EFCEAD00E7BD8C00E7AD7300DE9C5A00D68C4200CE73
      1800C66300008C422100000000000000000000000000A4A0A000008000000080
      000000800000A4A0A00000000000A4A0A000A4A0A00000000000A4A0A0000000
      0000A4A0A00000000000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD52
      1000B55A1000E7BD8C00EFCEA500EFCEA500E7BD8C00DEA56300CE7B2900B55A
      10008442210000000000000000000000000000000000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD521000B55A1000B55A1000B55A1000B55A10009C4A18000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000064707A00BCA2A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000064707A00BF9E96000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008543220085432200854322008543220085432200854322000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008543220085432200854322008543220085432200854322000000
      0000000000000000000000000000000000006D8EC9001D55F30060758800C6A4
      9F00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000063A8F1003879F40060758800C59D
      9500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008543
      220085432200C9660100C9660100C9660100C9660100C9660100C96601008543
      2200854322000000000000000000000000000000000000000000000000008543
      220085432200C9660100C9660100C9660100C9660100C9660100C96601008543
      2200854322000000000000000000000000006FB6F3006FB6F3001D55F3006075
      8800C6A49F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000559FF500559FF5003879F4006075
      8800C59D95000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A4E1800C662
      0100C9650000C9650000C9650000C9650000C9650000C9660100C9660100C966
      0100C763010085432200000000000000000000000000000000009A4E1800C662
      0100C9650000C9650000C9650000C9650000C9650000C9660100C9660100C966
      0100C7630100854322000000000000000000000000006FB6F3006FB6F3001D55
      F30060758800CBA69D0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000559FF500559FF5003879
      F40060758800C59D950000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A4E1800C6620100C763
      0100C6620100C6620100C6620100C6620100C7630100C9640100C9660100C966
      0100C9660100C76301008543220000000000000000009A4E1800C6620100C763
      0100C6620100C6620100C6620100C6620100C7630100C9640100C9660100C966
      0100C9660100C7630100854322000000000000000000000000006FB6F3006FB6
      F3001D55F30060758800BCA2A300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000559FF500559F
      F5003879F40060758800BA9E9600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD5F0800C6620100C360
      0200C3600200C7630100C7630100FBFAF900FBFAF900C9640100C9640100C966
      0100C9660100C9660100854322000000000000000000BD5F0800C6620100C360
      0200C3600200C7630100C7630100C7630100C7630100C9640100C9640100C966
      0100C9660100C966010085432200000000000000000000000000000000006FB6
      F3006FB6F3006A93D500656F77000000000089878900C6A49F00D3B4A800CDA6
      9D0000000000000000000000000000000000000000000000000000000000559F
      F500559FF5003879F400656F7700000000009F928D00C59F9700D3B5A900CFAA
      9F0000000000000000000000000000000000A7541200C9680600C9680600C968
      0600C9680600C9680600C9680600FBFAF900FBFAF900C15F0400C6620100C964
      0100C9660100C9660100C966010085432200A7541200C9680600C9680600C968
      0600C9680600C9680600C9680600C9680600C9680600C15F0400C6620100C964
      0100C9660100C9660100C9660100854322000000000000000000000000000000
      00006FB6F3009EBBE10089878900BCA2A300EDE7D300FAF4D400FAF4D400FAF4
      D400E2DACC00D2AEA20000000000000000000000000000000000000000000000
      0000559FF500D0D0D1009F928D00AD9A9200FAEFC800FDF9DA00FDF9DA00FDF9
      DA00F4D6B200D1ADA1000000000000000000AC571100CB701500CB701500CB74
      1D00CB741D00CE7B2800CE7B2800FBFAF900FBFAF900C15F0400C3600200C763
      0100C9650000C9660100C966010085432200AC571100CB701500CB701500CB74
      1D00CB741D00CE7B2800CE7B2800CB741D00CB701500C15F0400C3600200C763
      0100C9650000C9660100C9660100854322000000000000000000000000000000
      000000000000D5B9AD00D5B9AD00FCEFC500FAF4D4009EBBE10066A3E700EDE7
      D300F9F5DB00F6F2D90089878900000000000000000000000000000000000000
      000000000000CFBDB700D6B9AB00FBEDC400FCF8D700FDF9DA00FDF9DA00FDFA
      DF00FDFAE300F4F1DF00B49C950000000000AC571100D0813100D0813100CE7B
      2800FBFAF900FBFAF900FBFAF900FBFAF900FBFAF900FBFAF900FBFAF900FBFA
      F900C9650000C9660100C966010085432200AC571100D0813100D0813100CE7B
      2800FBFAF900FBFAF900FBFAF900FBFAF900FBFAF900FBFAF900FBFAF900FBFA
      F900C9650000C9660100C9660100854322000000000000000000000000000000
      000000000000C6A49F00FCE6C200FCE6C200FCF4CB0088B9EC000734FB00DDD5
      CC00F9F5DB00F9F5DB00D8CCC500000000000000000000000000000000000000
      000000000000C59D9500F7E0B200F8E2B200FCF6D400FDF9DA00FDF9E100FDFA
      E300FDFAE300FDFAE300F2D0B40000000000AC571100DEA26500D9965200D58D
      4500FBFAF900FBFAF900FBFAF900FBFAF900FBFAF900FBFAF900FBFAF900FBFA
      F900C9650000C9660100C966010085432200AC571100DEA26500D9965200D58D
      4500FBFAF900FBFAF900FBFAF900FBFAF900FBFAF900FBFAF900FBFAF900FBFA
      F900C9650000C9660100C9660100854322000000000000000000000000000000
      000000000000D5B9AD00FCECC100B6A9B3006998D8003849F5000734FB0066A3
      E7007FB9F000E8DFCE00F3EED600C6A49F000000000000000000000000000000
      000000000000D6B9AB00F8E2B200AD9A920063A8F1004584F3004584F3004584
      F3005DA2F200DFE0D700FBF4D100C79F9600AC571100E5B58300E4B17D00D996
      5200D9965200D2863A00D2863A00FBFAF900FBFAF900CB701500C3600200C965
      0000C9650000C9660100C966010085432200AC571100E5B58300E4B17D00D996
      5200D9965200D2863A00D2863A00CE7B2800CB701500CB701500C3600200C965
      0000C9650000C9660100C9660100854322000000000000000000000000000000
      000000000000D7BFB200FCECC1006C91D0000734FB000734FB000734FB000734
      FB000734FB009EBBE100FAF4D400C6A49F000000000000000000000000000000
      000000000000F2C9B400F8E2B200356DF7002749FC002749FC002749FC002749
      FC002749FC00CBC8CC00FCF8D700CDA59A00AC571100E4B17D00F1D5B900E4B1
      7D00E0A76D00DB9B5A00DB9B5A00FBFAF900FBFAF900D0813100C9650000C965
      0000C9650000C9660100C966010085432200AC571100E4B17D00F1D5B900E4B1
      7D00E0A76D00DB9B5A00DB9B5A00D58D4500D0813100D0813100C9650000C965
      0000C9650000C9660100C9660100854322000000000000000000000000000000
      000000000000D7BFB200FCECC100CEA79D00B6A9B30064A1E2000734FB0096BB
      E600DAD1CB00F6F2D900F6F2D900C6A49F000000000000000000000000000000
      000000000000D6B9AB00F9E5B700CEA79C00D1B0A50063A8F10063A8F10063A8
      F100D0D0D100F0EFDE00FBF4D100CBA2970000000000B25B1000F2D9C000F2D9
      C000E7B98A00E0A76D00DB9B5A00FBFAF900FBFAF900D0813100CB741D00CA66
      0200C9650000C9660100854322000000000000000000B25B1000F2D9C000F2D9
      C000E7B98A00E0A76D00DB9B5A00D58D4500D0813100D0813100CB741D00CA66
      0200C9650000C966010085432200000000000000000000000000000000000000
      000000000000CBA69D00FCEFC500FCECC100FCE6C2006F88C1000734FB00DAD1
      CB00FAF4D400F9F5DB00E2DACC00000000000000000000000000000000000000
      000000000000C79F9600FBEDC400FBEDC400F4D6B200F2D0B400F9E5B700FCF6
      D400FCF6D400FDF9DA00F4D9B1000000000000000000AC571100E5B58300F6E5
      D300F4DFC900E7B98A00DC9E5F00D58D4500D0813100CB741D00CB741D00C968
      0600C9660100C7630100854322000000000000000000AC571100E5B58300F6E5
      D300F4DFC900E7B98A00DC9E5F00D58D4500D0813100CB741D00CB741D00C968
      0600C9660100C763010085432200000000000000000000000000000000000000
      00000000000000000000D7BFB200F9F5DB00F9F5DB00D3B4A800BCA2A300D7BF
      B200FCE6C200FCF4CB00BCA2A300000000000000000000000000000000000000
      00000000000000000000D6B9AB00FDFAE300FDFAE300F2C9B400F3BFBB00F2D0
      B400F9E5B700FBF3CD00BF9E9600000000000000000000000000AC571100E7B9
      8A00F4DFC900F6E5D300EECFAF00E7B98A00E2AD7700DC9E5F00D58D4500CB70
      1500C76301008E471E0000000000000000000000000000000000AC571100E7B9
      8A00F4DFC900F6E5D300EECFAF00E7B98A00E2AD7700DC9E5F00D58D4500CB70
      1500C76301008E471E0000000000000000000000000000000000000000000000
      0000000000000000000000000000D7BFB200F6F2D900FCECC100FCECC100FCEC
      C100FCDBC700D0ABA00000000000000000000000000000000000000000000000
      0000000000000000000000000000CDBFBD00F4F1DF00FBEDC400F8E2B200F9E5
      B700F5DDB100D1ADA1000000000000000000000000000000000000000000AC57
      1100B25B1000E8BC8F00ECCAA700ECCAA700E8BC8F00DEA26500CE7B2800B25B
      100088442100000000000000000000000000000000000000000000000000AC57
      1100B25B1000E8BC8F00ECCAA700ECCAA700E8BC8F00DEA26500CE7B2800B25B
      1000884421000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBA69D00D0ABA000D7BFB200D5B9
      AD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBA29700CFAA9F00D6B9AB00D6B9
      AB00000000000000000000000000000000000000000000000000000000000000
      000000000000AC571100B25B1000B25B1000B25B1000B25B10009A4E18000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AC571100B25B1000B25B1000B25B1000B25B10009A4E18000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080606000C0A080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009E522C00954A2900934927009349
      2700934927009349270093492700934927009349270093492700934927009349
      27009349270093492700974C2A009E522C009E522C00954A2900934927009349
      2700934927009349270093492700934927009349270093492700934927009349
      27009349270093492700974C2A009E522C009E522C00954A2900934927009349
      2700934927009349270093492700934927009349270093492700934927009349
      27009349270093492700974C2A009E522C0040A0E00040A0E00080808000C0A0
      A000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000085422200FEF6EE00FDF3E7008886
      8400FDECD900FEE9D30088868400FEE5CA00FEE5CA0088868400FDE2C400FDE2
      C40088868400FDE2C400FDE2C4009048260085422200FEF6EE00FDF3E7008886
      8400FDECD900FEE9D30088868400FEE5CA00FEE5CA0088868400FDE2C400FDE2
      C40088868400FDE2C400FDE2C4009048260085422200FEF6EE00FDF3E7008886
      8400FDECD900FEE9D30088868400FEE5CA00FEE5CA0088868400FDE2C400FDE2
      C40088868400FDE2C400FDE2C4009048260040A0E00040A0E00040A0E0008080
      8000C0A0A0000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000085422200FDF1E400888684008886
      8400888684008886840088868400888684008886840088868400888684008886
      84008886840088868400888684008E47230085422200FDF1E400888684008886
      8400888684008886840088868400888684008886840088868400888684008886
      84008886840088868400888684008E47230085422200FDF1E400888684008886
      8400888684008886840088868400888684008886840088868400888684008886
      84008886840088868400888684008E4723000000000040A0E00040A0E00040A0
      E00080808000C0A0A00000000000000000000000000000000000000000000000
      000000000000000000000000000000000000854222008886840088868400FEF5
      EA00FEF6EE00FEF6EE00FDEFDE00FDEFDE00FDEFDE00FEE9D3001A4AAE00FDE3
      C600FDE4C800FDE2C4001A4AAE008E472300854222008886840088868400FEF5
      EA005277D8001A4AAE00FDEFDE00198119001B661900FEE9D300C19D5D00854B
      4600FDE4C8005283DF002156A6008E472300854222008886840088868400FEF5
      EA001A4AAE001A4AAE00FDEFDE001B6619001B661900FEE9D300C19D5D00C19D
      5D00FDE4C8002156A6002156A6008E472300000000000000000040A0E00040A0
      E00040A0E00080808000C0A08000000000000000000000000000000000000000
      00000000000000000000000000000000000085422200FEF6EE00888684001E80
      1B00FEF6EE00FEF6EE00FDEFDE00FDEFDE00FDEFDE001A4AAE00FDE3C6001A4A
      AE00FDE4C8001A4AAE00FDE2C4008E47230085422200FEF6EE0088868400FEF6
      EE005277D8001A4AAE00FDEFDE00198119001B661900FEE9D300FDE3C600854B
      4600FDE4C800FDE2C4002156A6008E47230085422200FEF6EE0088868400FEF6
      EE001A4AAE001A4AAE00FDEFDE001B6619001B661900FEE9D300854B4600854B
      4600FDE4C8002156A6002156A6008E47230000000000000000000000000040A0
      E00040A0E00040A0E0008060600000000000C0808000C0A0A000C0A0A000C0A0
      800000000000000000000000000000000000854222008886840088868400FEF6
      EE001E801B001E801B00FDEFDE00FDEFDE001A4AAE00FEE9D300FDE3C600FDE3
      C6001A4AAE00FDE2C400FDE2C4008E472300854222008886840088868400FEF6
      EE005277D8001A4AAE00FDEFDE0019811900FDEFDE00FEE9D300FDE3C600FDE3
      C600FDE4C800FDE2C4002156A6008E472300854222008886840088868400FEF6
      EE005277D8005277D800FDEFDE001B6619001B661900FEE9D300FDE3C600FDE3
      C600FDE4C8005283DF005283DF008E4723000000000000000000000000000000
      000040A0E000F0FBFF00C0A0A000C0A08000F0CAA600FFFFFF00FFFFFF00FFFF
      FF00F0CAA600C0808000000000000000000085422200FEF6EE0088868400FEF6
      EE00FEF6EE00FEF6EE001E801B001A4AAE00FDEFDE00FEE9D300FDE3C600FDE3
      C600FDE4C800FDE2C400FDE2C4008E47230085422200FEF6EE0088868400FEF6
      EE00FEF6EE001A4AAE00FDEFDE001E801B00FDEFDE00FEE9D300FDE3C600FDE3
      C600FDE4C800FDE2C4002156A6008E47230085422200FEF6EE0088868400FEF6
      EE005277D8005277D800FDEFDE001981190019811900FEE9D300FDE3C600FDE3
      C600FDE4C8005283DF005283DF008E4723000000000000000000000000000000
      00000000000000000000C0A0A000F0CAA600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C080800000000000854222008886840088868400854B
      4600FEF6EE00854B46001A4AAE00854B46001E801B001E801B00FEE7CE00FEE5
      CA00FDE4C800FDE2C400FDE2C4008E472300854222008886840088868400FEF6
      EE00FEF6EE001A4AAE00FDEFDE0019811900FDEFDE00FEE9D300FEE7CE00FEE5
      CA00FDE4C800FDE2C400FDE2C4008E472300854222008886840088868400FEF6
      EE005277D8005277D800FDEFDE001981190019811900FEE9D300FEE7CE00FEE5
      CA00FDE4C800FDE2C400FDE2C4008E4723000000000000000000000000000000
      00000000000000000000C0A0A000F0CAA600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00C0A0A0000000000085422200FEF6EE0088868400FEF6
      EE00854B46001A4AAE00FDEFDE00FDEFDE00854B4600FDECD9001E801B001E80
      1B00FDE4C800FDE2C400FDE2C4008E47230085422200FEF6EE0088868400FEF6
      EE00FEF6EE00FEF5EA00FDEFDE001E801B00FDEFDE00FDECD900FEE9D300FEE7
      CE00FDE4C800FDE2C400FDE2C4008E47230085422200FEF6EE0088868400FEF6
      EE00FEF6EE00FEF5EA00FDEFDE001E801B0019811900FDECD900FEE9D300FEE7
      CE00FDE4C800FDE2C400FDE2C4008E4723000000000000000000000000000000
      000000000000C0A0A000F0CAA600F0CAA600F0CAA600FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00F0CAA600C0A08000854223008886840088868400FEF6
      EE001A4AAE00FEF5EA00FDEFDE00FDEFDE00FDEFDE00854B4600FDECD900FEE9
      D3001E801B00FDE3C600FDE2C400954A2900854223008886840088868400FEF6
      EE00FEF6EE00FEF5EA00FDEFDE00FDEFDE00FDEFDE00FDEFDE00FDECD900FEE9
      D300FEE5CA00FDE3C600FDE2C400954A2900854223008886840088868400FEF6
      EE00FEF6EE00FEF5EA00FDEFDE00FDEFDE00FDEFDE00FDEFDE00FDECD900FEE9
      D300FEE5CA00FDE3C600FDE2C400954A29000000000000000000000000000000
      000000000000C0A0A000F0CAA600F0CAA600F0CAA600FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00F0CAA600C0A08000BA6A3200D6A26200D5A36400D5A3
      6400D5A36400D5A36400D5A36400D5A36400D5A36400D5A36400D5A46600D6A2
      6200D5A46600D5A46600CCA06200BE6D3400BA6A3200D6A26200D5A36400D5A3
      6400D5A36400D5A36400D5A36400D5A36400D5A36400D5A36400D5A46600D6A2
      6200D5A46600D5A46600CCA06200BE6D3400BA6A3200D6A26200D5A36400D5A3
      6400D5A36400D5A36400D5A36400D5A36400D5A36400D5A36400D5A46600D6A2
      6200D5A46600D5A46600CCA06200BE6D34000000000000000000000000000000
      000000000000C0A08000F0CAA600F0CAA600F0CAA60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F0CAA600C0808000AC5C2C00D47F2F00D47F2F00D47F
      2F00D47F2F00D47F2F00D47F2F00D47F2F00D47F2F00D47F2F00D5A46600D47F
      2F00D5A46600B29956005377D500AF5E2D00AC5C2C00D47F2F00D47F2F00D47F
      2F00D47F2F00D47F2F00D47F2F00D47F2F00D47F2F00D47F2F00D5A46600D47F
      2F00D5A46600B29956005377D500AF5E2D00AC5C2C00D47F2F00D47F2F00D47F
      2F00D47F2F00D47F2F00D47F2F00D47F2F00D47F2F00D47F2F00D5A46600D47F
      2F00D5A46600B29956005377D500AF5E2D000000000000000000000000000000
      00000000000000000000F0CAA600FFFFFF0000000000F0CAA600F0CAA600F0CA
      A600FFFFFF00FFFFFF00C0A080000000000000000000A95A2C00A95A2C00A95A
      2C00A95A2C00A95A2C00A95A2C00A95A2C00A95A2C00A95A2C00AF5E2D00A95A
      2C00B1612E00A2552C009E522C000000000000000000A95A2C00A95A2C00A95A
      2C00A95A2C00A95A2C00A95A2C00A95A2C00A95A2C00A95A2C00AF5E2D00A95A
      2C00B1612E00A2552C009E522C000000000000000000A95A2C00A95A2C00A95A
      2C00A95A2C00A95A2C00A95A2C00A95A2C00A95A2C00A95A2C00AF5E2D00A95A
      2C00B1612E00A2552C009E522C00000000000000000000000000000000000000
      00000000000000000000C080800000000000FFFFFF00F0CAA600F0CAA600F0CA
      A600F0CAA600C0C0A000C0A08000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0808000C0A0A000F0CAA600F0CAA600F0CA
      A600C0A08000C0A0800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0A08000C0A08000C0A0
      800000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00F81FFFFF00000000E007800100000000
      C003800100000000800180010000000080018001000000000000800100000000
      0000800100000000000080010000000000008001000000000000800100000000
      000080010000000080018001000000008001800100000000C003800100000000
      E007800100000000F81FFFFF000000009FFF9FFFF81FF81F0FFF0FFFE007E007
      07FF07FFC003C00383FF83FF80018001C1FFC1FF80018001E10FE10F00000000
      F003F00300000000F801F80100000000F801F80100000000F800F80000000000
      F800F80000000000F800F80080018001F801F80180018001FC01FC01C003C003
      FE03FE03E007E007FF0FFF0FF81FF81FFFFFFFFFFFFF9FFF0000000000000FFF
      00000000000007FF00000000000083FF000000000000C1FF000000000000E10F
      000000000000F003000000000000FC01000000000000FC01000000000000F800
      000000000000F800000000000000F800000000000000FC01800180018001FC01
      FFFFFFFFFFFFFE03FFFFFFFFFFFFFF8F00000000000000000000000000000000
      000000000000}
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '*.bmp'
    Filter = 'Bitmap (*.bmp)|*.bmp|All files (*.*)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 408
    Top = 64
  end
end
