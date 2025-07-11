object Form1: TForm1
  Left = 0
  Top = 0
  ActiveControl = edtDataToSend
  Caption = 'TCPClient'
  ClientHeight = 243
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object memLog: TMemo
    AlignWithMargins = True
    Left = 5
    Top = 37
    Width = 517
    Height = 169
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
    OnKeyDown = memLogKeyDown
  end
  object pnlToolbar: TPanel
    Left = 0
    Top = 0
    Width = 527
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    FullRepaint = False
    TabOrder = 0
    object btnActivate: TButton
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 105
      Height = 27
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Start TCP Client'
      TabOrder = 0
      OnClick = btnActivateClick
    end
    object pnlAddress: TPanel
      AlignWithMargins = True
      Left = 110
      Top = 3
      Width = 417
      Height = 31
      Margins.Left = 0
      Margins.Right = 0
      Align = alClient
      BevelOuter = bvNone
      FullRepaint = False
      TabOrder = 1
      object edtHost: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 281
        Height = 21
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        TabOrder = 0
        TextHint = 'Enter host address'
        OnChange = edtHostChange
      end
      object edtPort: TSpinEdit
        AlignWithMargins = True
        Left = 291
        Top = 5
        Width = 121
        Height = 22
        Margins.Left = 0
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alRight
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 16233
        OnChange = edtPortChange
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 211
    Width = 527
    Height = 32
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alBottom
    BevelOuter = bvNone
    FullRepaint = False
    TabOrder = 2
    object btnSendData: TButton
      AlignWithMargins = True
      Left = 5
      Top = 0
      Width = 105
      Height = 27
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Send'
      Default = True
      TabOrder = 0
      OnClick = btnSendDataClick
    end
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 110
      Top = 3
      Width = 417
      Height = 26
      Margins.Left = 0
      Margins.Right = 0
      Align = alClient
      BevelOuter = bvNone
      FullRepaint = False
      TabOrder = 1
      object edtDataToSend: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 0
        Width = 407
        Height = 21
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        TabOrder = 0
        Text = 'This is some text data'
        TextHint = 'Enter data to send here'
        OnEnter = edtDataToSendEnter
        OnExit = edtDataToSendExit
      end
    end
  end
  object ncClient1: TncClient
    Left = 160
    Top = 80
  end
end
