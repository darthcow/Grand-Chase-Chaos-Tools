object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 
    'Grand Chase Chaos - Tool                                        ' +
    '                        By TheHero'
  ClientHeight = 276
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 521
    Height = 281
    ActivePage = ConectarDB
    TabOrder = 0
    object ConectarDB: TTabSheet
      Caption = 'ConectarDB'
      object Label1: TLabel
        Left = 190
        Top = 10
        Width = 97
        Height = 13
        Caption = 'Server Name(HOST)'
      end
      object Label2: TLabel
        Left = 176
        Top = 101
        Width = 40
        Height = 13
        Caption = 'Usuario'
      end
      object Label3: TLabel
        Left = 176
        Top = 146
        Width = 32
        Height = 13
        Caption = 'Senha'
      end
      object Label4: TLabel
        Left = 176
        Top = 56
        Width = 48
        Height = 13
        Caption = 'Database'
      end
      object Button1: TButton
        Left = 212
        Top = 208
        Width = 75
        Height = 25
        Caption = 'Conectar'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Edit3: TEdit
        Left = 190
        Top = 165
        Width = 121
        Height = 21
        PasswordChar = '*'
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 189
        Top = 114
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'sa'
      end
      object Edit1: TEdit
        Left = 190
        Top = 29
        Width = 121
        Height = 21
        TabOrder = 3
        Text = '\SQLEXPRESS'
      end
      object Edit5: TEdit
        Left = 190
        Top = 74
        Width = 121
        Height = 21
        TabOrder = 4
        Text = 'gc'
      end
    end
    object AddUsers: TTabSheet
      Caption = 'AddUsers'
      ImageIndex = 1
      object Label5: TLabel
        Left = 16
        Top = 13
        Width = 29
        Height = 13
        Caption = 'Login'
      end
      object Label6: TLabel
        Left = 16
        Top = 80
        Width = 24
        Height = 13
        Caption = 'Sexo'
      end
      object Panel2: TPanel
        Left = 3
        Top = -1
        Width = 271
        Height = 251
        TabOrder = 7
        object Label7: TLabel
          Left = 133
          Top = 14
          Width = 32
          Height = 13
          Caption = 'Senha'
        end
        object Label8: TLabel
          Left = 136
          Top = 80
          Width = 14
          Height = 13
          Caption = 'GP'
        end
        object Edit9: TEdit
          Left = 133
          Top = 97
          Width = 105
          Height = 21
          TabOrder = 0
          Text = '0'
        end
      end
      object Panel1: TPanel
        Left = 280
        Top = 3
        Width = 230
        Height = 247
        TabOrder = 6
        object Label9: TLabel
          Left = 40
          Top = 55
          Width = 29
          Height = 13
          Caption = 'Login'
        end
      end
      object Edit4: TEdit
        Left = 16
        Top = 32
        Width = 105
        Height = 21
        TabOrder = 0
      end
      object Button2: TButton
        Left = 32
        Top = 136
        Width = 193
        Height = 49
        Caption = 'Criar Usuario'
        TabOrder = 1
        OnClick = Button2Click
      end
      object Edit6: TEdit
        Left = 16
        Top = 96
        Width = 105
        Height = 21
        TabOrder = 2
        Text = '0'
      end
      object Edit7: TEdit
        Left = 136
        Top = 32
        Width = 105
        Height = 21
        TabOrder = 3
      end
      object Edit8: TEdit
        Left = 320
        Top = 77
        Width = 166
        Height = 21
        TabOrder = 4
      end
      object Button3: TButton
        Left = 320
        Top = 132
        Width = 166
        Height = 57
        Caption = 'Remover Usuario'
        TabOrder = 5
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'NewCharacters'
      ImageIndex = 2
      object Label10: TLabel
        Left = 48
        Top = 61
        Width = 38
        Height = 13
        Caption = 'Char ID'
      end
      object Label11: TLabel
        Left = 266
        Top = 61
        Width = 30
        Height = 13
        Caption = 'Nome'
      end
      object Edit10: TEdit
        Left = 48
        Top = 80
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '0'
      end
      object Edit11: TEdit
        Left = 264
        Top = 80
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'Elesis'
      end
      object Button4: TButton
        Left = 144
        Top = 152
        Width = 161
        Height = 49
        Caption = 'Criar Personagem'
        TabOrder = 2
        OnClick = Button4Click
      end
    end
  end
  object MySQL: TFDConnection
    Params.Strings = (
      'DriverID=MySQL'
      'User_Name=root')
    LoginPrompt = False
    Left = 32
    Top = 224
  end
  object Query: TFDQuery
    Connection = MySQL
    Top = 224
  end
  object Script: TFDScript
    SQLScripts = <>
    Connection = MySQL
    Params = <>
    Macros = <>
    Left = 71
    Top = 223
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 476
    Top = 232
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 476
    Top = 192
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=msg123;Persist Security Info=True;U' +
      'ser ID=sa;Initial Catalog=gc;Data Source=PC-USER\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 476
    Top = 152
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 476
    Top = 104
  end
end
