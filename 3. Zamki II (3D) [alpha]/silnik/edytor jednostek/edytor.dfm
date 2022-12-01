object Form1: TForm1
  Left = 1282
  Top = 222
  Width = 580
  Height = 413
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Rasa: TGroupBox
    Left = 248
    Top = 0
    Width = 169
    Height = 169
    Caption = 'Rasa'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 103
      Height = 13
      Caption = 'Rodzaj nacji jednostki'
    end
    object pole_nacja: TComboBox
      Left = 8
      Top = 32
      Width = 145
      Height = 21
      Enabled = False
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Nekropolia'
        'Elfy'
        'Stwory'
        'Piek'#322'o'
        'Krasnoludy'
        'Neutralny')
    end
    object pole_lista: TListBox
      Left = 8
      Top = 64
      Width = 145
      Height = 97
      ItemHeight = 13
      TabOrder = 1
      OnClick = pole_listaClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 168
    Top = 176
    Width = 393
    Height = 193
    Caption = 'Statystyki'
    TabOrder = 1
    object Label3: TLabel
      Left = 264
      Top = 120
      Width = 113
      Height = 65
      AutoSize = False
      Caption = 
        'Czy czar/atak dzia'#322'a na wrogie jednostki, w przeciwnym wypadku c' +
        'elem s'#261' sojusznicze jednostki'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -5
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object pole_koszt: TLabeledEdit
      Left = 8
      Top = 40
      Width = 121
      Height = 21
      EditLabel.Width = 26
      EditLabel.Height = 13
      EditLabel.Caption = 'Koszt'
      TabOrder = 0
    end
    object pole_koszt_ulepszenia: TLabeledEdit
      Left = 136
      Top = 40
      Width = 121
      Height = 21
      EditLabel.Width = 79
      EditLabel.Height = 13
      EditLabel.Caption = 'Koszt ulepszenia'
      TabOrder = 1
    end
    object pole_szykosc: TLabeledEdit
      Left = 264
      Top = 40
      Width = 97
      Height = 21
      EditLabel.Width = 40
      EditLabel.Height = 13
      EditLabel.Caption = 'Szyko'#347#263
      TabOrder = 2
    end
    object pole_zasieg: TLabeledEdit
      Left = 136
      Top = 80
      Width = 73
      Height = 21
      EditLabel.Width = 32
      EditLabel.Height = 13
      EditLabel.Caption = 'Zasi'#281'g'
      Enabled = False
      TabOrder = 3
    end
    object pole_walka1: TRadioButton
      Left = 8
      Top = 64
      Width = 129
      Height = 17
      Caption = 'Walka bezpo'#347'rednia'
      TabOrder = 4
      OnClick = pole_walka1Click
    end
    object pole_walka2: TRadioButton
      Left = 8
      Top = 80
      Width = 113
      Height = 17
      Caption = 'Atak Strzelecki'
      TabOrder = 5
      OnClick = pole_walka2Click
    end
    object pole_wyglad_poc: TLabeledEdit
      Left = 216
      Top = 80
      Width = 121
      Height = 21
      EditLabel.Width = 76
      EditLabel.Height = 13
      EditLabel.Caption = 'Wygl'#261'd pocisku'
      Enabled = False
      TabOrder = 6
    end
    object pole_walka3: TRadioButton
      Left = 8
      Top = 96
      Width = 113
      Height = 17
      Caption = 'Magia'
      TabOrder = 7
      OnClick = pole_walka3Click
    end
    object pole_zycie: TLabeledEdit
      Left = 8
      Top = 128
      Width = 121
      Height = 21
      EditLabel.Width = 65
      EditLabel.Height = 13
      EditLabel.Caption = 'Punkty '#379'ycia '
      TabOrder = 8
    end
    object pole_atak: TLabeledEdit
      Left = 8
      Top = 168
      Width = 121
      Height = 21
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = 'Si'#322'a ataku '
      TabOrder = 9
    end
    object pole_czas_atak: TLabeledEdit
      Left = 136
      Top = 168
      Width = 121
      Height = 21
      EditLabel.Width = 79
      EditLabel.Height = 13
      EditLabel.Caption = 'Czas ataku (sec)'
      TabOrder = 10
    end
    object pole_czar: TLabeledEdit
      Left = 136
      Top = 128
      Width = 121
      Height = 21
      EditLabel.Width = 62
      EditLabel.Height = 13
      EditLabel.Caption = 'Rodzaj czaru'
      Enabled = False
      TabOrder = 11
    end
    object pole_cel: TCheckBox
      Left = 264
      Top = 104
      Width = 97
      Height = 17
      Caption = 'Cel: wr'#243'g'
      TabOrder = 12
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 176
    Width = 161
    Height = 193
    Caption = 'Szczeg'#243#322'y'
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 144
      Width = 85
      Height = 13
      Caption = 'Rodzaj chodzenia'
    end
    object pole_nazwa: TLabeledEdit
      Left = 8
      Top = 40
      Width = 121
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Nazwa'
      TabOrder = 0
    end
    object pole_code: TLabeledEdit
      Left = 8
      Top = 120
      Width = 65
      Height = 21
      EditLabel.Width = 19
      EditLabel.Height = 13
      EditLabel.Caption = 'Kod'
      TabOrder = 1
    end
    object pole_graf: TLabeledEdit
      Left = 8
      Top = 80
      Width = 121
      Height = 21
      EditLabel.Width = 89
      EditLabel.Height = 13
      EditLabel.Caption = 'Nazwa pliku grafiki'
      TabOrder = 2
    end
    object pole_chodzenie: TComboBox
      Left = 8
      Top = 160
      Width = 145
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Pieszo'
      Items.Strings = (
        'Pieszo'
        'Lewitacja')
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 169
    Caption = ' '
    TabOrder = 3
    object PaintBox1: TPaintBox
      Left = 0
      Top = 0
      Width = 241
      Height = 129
    end
    object Image1: TImage
      Left = 56
      Top = 0
      Width = 128
      Height = 128
    end
    object Button1: TButton
      Left = 160
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Atak'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 88
      Top = 136
      Width = 65
      Height = 25
      Caption = 'Chodzenie'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 8
      Top = 136
      Width = 73
      Height = 25
      Caption = 'Animacja'
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 424
    Top = 0
    Width = 137
    Height = 169
    Caption = 'Menu'
    TabOrder = 4
    object but_zapisz: TButton
      Left = 8
      Top = 48
      Width = 121
      Height = 25
      Caption = 'ZAPISZ'
      TabOrder = 0
      OnClick = but_zapiszClick
    end
    object but_wyjscie: TButton
      Left = 8
      Top = 136
      Width = 121
      Height = 25
      Caption = 'KONIEC'
      TabOrder = 1
      OnClick = but_wyjscieClick
    end
    object Button4: TButton
      Left = 8
      Top = 16
      Width = 121
      Height = 25
      Caption = 'Nowa posta'#263
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 8
      Top = 104
      Width = 121
      Height = 25
      Caption = 'Button5'
      TabOrder = 3
      OnClick = Button5Click
    end
  end
end
