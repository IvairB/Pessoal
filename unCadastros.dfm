object frmCadastros: TfrmCadastros
  Left = 0
  Top = 0
  Caption = 'Cadastros'
  ClientHeight = 430
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pgCadastros: TPageControl
    Left = 0
    Top = 0
    Width = 708
    Height = 430
    ActivePage = tsCombustiveis
    Align = alClient
    TabOrder = 0
    object tsUsuarios: TTabSheet
      Caption = 'Usu'#225'rios'
      ExplicitLeft = 8
      ExplicitTop = 28
      object lblIDUsuarios: TLabel
        Left = 72
        Top = 67
        Width = 15
        Height = 13
        Caption = 'ID:'
      end
      object lblNomeUsuarios: TLabel
        Left = 72
        Top = 95
        Width = 31
        Height = 13
        Caption = 'Nome:'
      end
      object lblSenha: TLabel
        Left = 72
        Top = 148
        Width = 34
        Height = 13
        Caption = 'Senha:'
      end
      object lblUsuario: TLabel
        Left = 71
        Top = 121
        Width = 40
        Height = 13
        Caption = 'Usu'#225'rio:'
      end
      object nvUsuarios: TDBNavigator
        Left = 48
        Top = 16
        Width = 240
        Height = 25
        DataSource = DM.dsUsuarios
        TabOrder = 0
      end
      object edIDUsuarios: TDBEdit
        Left = 160
        Top = 64
        Width = 65
        Height = 21
        DataField = 'ID_USUARIO'
        DataSource = DM.dsUsuarios
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object edNomeUsuarios: TDBEdit
        Left = 160
        Top = 91
        Width = 273
        Height = 21
        DataField = 'NOME'
        DataSource = DM.dsUsuarios
        TabOrder = 2
      end
      object edUsuario: TDBEdit
        Left = 160
        Top = 118
        Width = 121
        Height = 21
        DataField = 'USUARIO'
        DataSource = DM.dsUsuarios
        TabOrder = 3
      end
      object edSenha: TDBEdit
        Left = 160
        Top = 145
        Width = 121
        Height = 21
        DataField = 'SENHA'
        DataSource = DM.dsUsuarios
        PasswordChar = '*'
        TabOrder = 4
      end
      object cbAtivo: TDBCheckBox
        Left = 160
        Top = 172
        Width = 97
        Height = 17
        Caption = 'Ativo'
        DataField = 'ATIVO'
        DataSource = DM.dsUsuarios
        TabOrder = 5
      end
    end
    object tsTanques: TTabSheet
      Caption = 'Tanques'
      ImageIndex = 1
    end
    object tsCombustiveis: TTabSheet
      Caption = 'Combust'#237'veis'
      ImageIndex = 2
      ExplicitLeft = 8
      ExplicitTop = 28
      object lblIDCombustiveis: TLabel
        Left = 80
        Top = 75
        Width = 15
        Height = 13
        Caption = 'ID:'
      end
      object lblNomeCombustiveis: TLabel
        Left = 80
        Top = 103
        Width = 31
        Height = 13
        Caption = 'Nome:'
      end
      object nvCombustiveis: TDBNavigator
        Left = 56
        Top = 24
        Width = 240
        Height = 25
        DataSource = DM.dsUsuarios
        TabOrder = 0
      end
      object edIDCombustiveis: TDBEdit
        Left = 168
        Top = 72
        Width = 65
        Height = 21
        DataField = 'ID_USUARIO'
        DataSource = DM.dsUsuarios
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object edNomeCombustiveis: TDBEdit
        Left = 168
        Top = 99
        Width = 273
        Height = 21
        DataField = 'NOME'
        DataSource = DM.dsUsuarios
        TabOrder = 2
      end
    end
    object tsBombas: TTabSheet
      Caption = 'Bombas'
      ImageIndex = 3
    end
  end
end