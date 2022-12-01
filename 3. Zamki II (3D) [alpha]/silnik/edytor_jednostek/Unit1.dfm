object Form1: TForm1
  Left = 450
  Top = 45
  Width = 873
  Height = 495
  Caption = 'Kreator jednostek '
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 417
    Width = 857
    Height = 19
    Panels = <
      item
        Text = 'Baza: '
        Width = 150
      end
      item
        Text = 'Pozycja:'
        Width = 100
      end
      item
        Text = 'Nazwa: '
        Width = 150
      end
      item
        Alignment = taCenter
        Bevel = pbNone
        Width = 200
      end>
    SimplePanel = False
  end
  object kontent_glowny: TPanel
    Left = 0
    Top = 0
    Width = 857
    Height = 417
    TabOrder = 1
    Visible = False
    object Image1: TImage
      Left = 8
      Top = 8
      Width = 128
      Height = 128
    end
    object LabeledEdit1: TLabeledEdit
      Left = 144
      Top = 24
      Width = 121
      Height = 21
      EditLabel.Width = 78
      EditLabel.Height = 13
      EditLabel.Caption = 'Nazwa jednostki'
      LabelPosition = lpAbove
      LabelSpacing = 3
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 152
      Width = 433
      Height = 201
      Caption = 'Statystyki'
      TabOrder = 1
      object LabeledEdit2: TLabeledEdit
        Left = 8
        Top = 48
        Width = 121
        Height = 21
        EditLabel.Width = 59
        EditLabel.Height = 13
        EditLabel.Caption = 'punkty '#380'ycia'
        LabelPosition = lpAbove
        LabelSpacing = 3
        TabOrder = 0
      end
      object LabeledEdit3: TLabeledEdit
        Left = 8
        Top = 88
        Width = 121
        Height = 21
        EditLabel.Width = 60
        EditLabel.Height = 13
        EditLabel.Caption = 'punkty many'
        LabelPosition = lpAbove
        LabelSpacing = 3
        TabOrder = 1
      end
      object LabeledEdit4: TLabeledEdit
        Left = 8
        Top = 128
        Width = 121
        Height = 21
        EditLabel.Width = 74
        EditLabel.Height = 13
        EditLabel.Caption = 'szybkosc ruchu'
        LabelPosition = lpAbove
        LabelSpacing = 3
        TabOrder = 2
      end
      object LabeledEdit5: TLabeledEdit
        Left = 8
        Top = 168
        Width = 121
        Height = 21
        BevelInner = bvNone
        CharCase = ecLowerCase
        EditLabel.Width = 88
        EditLabel.Height = 13
        EditLabel.Caption = 'zasi'#281'g wykrywania'
        LabelPosition = lpAbove
        LabelSpacing = 3
        TabOrder = 3
        Text = '200'
      end
      object RadioButton1: TRadioButton
        Left = 144
        Top = 8
        Width = 113
        Height = 17
        Caption = 'Atak wr'#281'cz'
        TabOrder = 4
        OnClick = RadioButton1Click
      end
      object LabeledEdit6: TLabeledEdit
        Left = 144
        Top = 48
        Width = 121
        Height = 21
        EditLabel.Width = 106
        EditLabel.Height = 13
        EditLabel.Caption = 'zasi'#281'g wykrycia wroga'
        Enabled = False
        LabelPosition = lpAbove
        LabelSpacing = 3
        TabOrder = 5
      end
      object LabeledEdit7: TLabeledEdit
        Left = 144
        Top = 88
        Width = 121
        Height = 21
        EditLabel.Width = 62
        EditLabel.Height = 13
        EditLabel.Caption = 'LabeledEdit7'
        Enabled = False
        LabelPosition = lpAbove
        LabelSpacing = 3
        TabOrder = 6
      end
      object LabeledEdit8: TLabeledEdit
        Left = 144
        Top = 128
        Width = 121
        Height = 21
        EditLabel.Width = 62
        EditLabel.Height = 13
        EditLabel.Caption = 'LabeledEdit8'
        Enabled = False
        LabelPosition = lpAbove
        LabelSpacing = 3
        TabOrder = 7
      end
    end
    object ComboBox1: TComboBox
      Left = 144
      Top = 56
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = 'rasa...'
      OnChange = ComboBox1Change
      Items.Strings = (
        'Nekropolia'
        'Elfy'
        'Stwory'
        'Piekielni'
        'Krasnoludy'
        'Neutralne')
    end
    object Edit2: TEdit
      Left = 144
      Top = 88
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 424
    Top = 296
    Width = 433
    Height = 121
    Color = clActiveCaption
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 208
      Height = 13
      Caption = 'Utw'#243'rz now'#261' baze albo edytuj ju'#380' istniej'#261'c'#261'.'
    end
    object Button1: TButton
      Left = 296
      Top = 80
      Width = 107
      Height = 33
      Caption = 'OK'
      Enabled = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 8
      Top = 24
      Width = 409
      Height = 21
      AutoSelect = False
      Enabled = False
      TabOrder = 1
      Text = '...'
    end
    object Button2: TButton
      Left = 8
      Top = 48
      Width = 97
      Height = 25
      Caption = 'Utw'#243'rz now'#261' baz'#281
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 112
      Top = 48
      Width = 99
      Height = 25
      Caption = 'Zadatuj baz'#281
      Enabled = False
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object MainMenu1: TMainMenu
    object Plik1: TMenuItem
      Caption = 'Plik'
      object Nowa1: TMenuItem
        Caption = 'Nowa baza'
      end
      object Zapiszbaze1: TMenuItem
        Caption = 'Zapisz baze'
      end
      object WYj1: TMenuItem
        Caption = 'Wyjscie'
        OnClick = WYj1Click
      end
    end
    object Edycja1: TMenuItem
      Caption = 'Edycja'
      object Nowa2: TMenuItem
        Caption = 'Nowa'
        OnClick = Nowa2Click
      end
      object Nowanapodstawie1: TMenuItem
        Caption = 'Nowa na wz'#243'r...'
      end
      object Usu1: TMenuItem
        Caption = 'Usu'#324
      end
    end
    object Ustawienia1: TMenuItem
      Caption = 'Ustawienia'
      object Opcjegeneratora1: TMenuItem
        Caption = 'Opcje generatora'
      end
      object Wersjabazy1: TMenuItem
        Caption = 'Wersja bazy'
      end
      object Rodzajgry1: TMenuItem
        Caption = 'Rodzaj gry'
        object ZamkiIIv101: TMenuItem
          Caption = 'Zamki II v1.0'
          Default = True
        end
        object inna1: TMenuItem
          Caption = 'inna...'
          Enabled = False
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Baza Zamki II (*.srt)|*srt'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofNoNetworkButton, ofEnableSizing]
    Title = 'Dodaj baze'
    Left = 24
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Baza Zamki II (*.srt)|*.srt'
    Title = 'Zapisz bez'#281' jako...'
    Left = 48
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 72
  end
end
