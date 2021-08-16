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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pgCadastros: TPageControl
    Left = 0
    Top = 0
    Width = 708
    Height = 430
    ActivePage = tsTanques
    Align = alClient
    TabOrder = 0
    object tsUsuarios: TTabSheet
      Caption = 'Usu'#225'rios'
      OnShow = tsUsuariosShow
      object lblIDUsuarios: TLabel
        Left = 70
        Top = 67
        Width = 15
        Height = 13
        Caption = 'ID:'
      end
      object lblNomeUsuarios: TLabel
        Left = 70
        Top = 95
        Width = 31
        Height = 13
        Caption = 'Nome:'
      end
      object lblSenha: TLabel
        Left = 70
        Top = 148
        Width = 34
        Height = 13
        Caption = 'Senha:'
      end
      object lblUsuario: TLabel
        Left = 69
        Top = 121
        Width = 40
        Height = 13
        Caption = 'Usu'#225'rio:'
      end
      object nvUsuarios: TDBNavigator
        Left = 70
        Top = 16
        Width = 220
        Height = 25
        DataSource = DM.dsUsuarios
        TabOrder = 0
      end
      object edIDUsuarios: TDBEdit
        Left = 158
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
        Left = 158
        Top = 91
        Width = 273
        Height = 21
        DataField = 'NOME'
        DataSource = DM.dsUsuarios
        TabOrder = 2
      end
      object edUsuario: TDBEdit
        Left = 158
        Top = 118
        Width = 121
        Height = 21
        DataField = 'USUARIO'
        DataSource = DM.dsUsuarios
        TabOrder = 3
      end
      object edSenha: TDBEdit
        Left = 158
        Top = 145
        Width = 121
        Height = 21
        DataField = 'SENHA'
        DataSource = DM.dsUsuarios
        PasswordChar = '*'
        TabOrder = 4
      end
      object cbAtivo: TDBCheckBox
        Left = 158
        Top = 172
        Width = 97
        Height = 17
        Caption = 'Ativo'
        DataField = 'ATIVO'
        DataSource = DM.dsUsuarios
        TabOrder = 5
      end
      object grdUsuarios: TDBGrid
        Left = 70
        Top = 200
        Width = 593
        Height = 153
        DataSource = DM.dsUsuarios
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_USUARIO'
            Title.Caption = 'ID'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 309
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Width = 174
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SENHA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ATIVO'
            Visible = True
          end>
      end
    end
    object tsCombustiveis: TTabSheet
      Caption = 'Combust'#237'veis'
      ImageIndex = 2
      OnShow = tsCombustiveisShow
      object lblIDCombustiveis: TLabel
        Left = 70
        Top = 67
        Width = 15
        Height = 13
        Caption = 'ID:'
      end
      object lblTipoCombustiveis: TLabel
        Left = 70
        Top = 93
        Width = 24
        Height = 13
        Caption = 'Tipo:'
      end
      object lblPercImposto: TLabel
        Left = 70
        Top = 119
        Width = 57
        Height = 13
        Caption = '% Imposto:'
      end
      object lblValorCompra: TLabel
        Left = 70
        Top = 145
        Width = 83
        Height = 13
        Caption = 'Valor de Compra:'
      end
      object lblValorVenda: TLabel
        Left = 70
        Top = 171
        Width = 76
        Height = 13
        Caption = 'Valor de Venda:'
      end
      object nvCombustiveis: TDBNavigator
        Left = 70
        Top = 16
        Width = 240
        Height = 25
        DataSource = DM.dsCombustiveis
        TabOrder = 0
      end
      object edIDCombustiveis: TDBEdit
        Left = 158
        Top = 64
        Width = 65
        Height = 21
        DataField = 'ID_COMBUSTIVEL'
        DataSource = DM.dsCombustiveis
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object edNomeCombustiveis: TDBEdit
        Left = 158
        Top = 90
        Width = 273
        Height = 21
        DataField = 'TIPO'
        DataSource = DM.dsCombustiveis
        TabOrder = 2
      end
      object grdCombustiveis: TDBGrid
        Left = 70
        Top = 196
        Width = 611
        Height = 153
        DataSource = DM.dsCombustiveis
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_COMBUSTIVEL'
            Title.Caption = 'ID'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Width = 224
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERC_IMPOSTO'
            Title.Caption = '% IMPOSTO'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_COMPRA'
            Title.Caption = 'VALOR DE COMPRA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_VENDA'
            Title.Caption = 'VALOR DE VENDA'
            Visible = True
          end>
      end
      object edPerc_Imposto: TDBEdit
        Left = 158
        Top = 116
        Width = 119
        Height = 21
        DataField = 'PERC_IMPOSTO'
        DataSource = DM.dsCombustiveis
        TabOrder = 3
      end
      object edValorCompra: TDBEdit
        Left = 158
        Top = 142
        Width = 119
        Height = 21
        DataField = 'VALOR_COMPRA'
        DataSource = DM.dsCombustiveis
        TabOrder = 4
      end
      object edValorVenda: TDBEdit
        Left = 158
        Top = 168
        Width = 119
        Height = 21
        DataField = 'VALOR_VENDA'
        DataSource = DM.dsCombustiveis
        TabOrder = 5
      end
    end
    object tsTanques: TTabSheet
      Caption = 'Tanques'
      ImageIndex = 1
      OnShow = tsTanquesShow
      object lblIdTanques: TLabel
        Left = 70
        Top = 67
        Width = 15
        Height = 13
        Caption = 'ID:'
      end
      object lblNumero: TLabel
        Left = 70
        Top = 93
        Width = 41
        Height = 13
        Caption = 'N'#250'mero:'
      end
      object lblCapacidade: TLabel
        Left = 70
        Top = 119
        Width = 57
        Height = 13
        Caption = '% Imposto:'
      end
      object lblCombustivel: TLabel
        Left = 70
        Top = 145
        Width = 62
        Height = 13
        Caption = 'Combust'#237'vel:'
      end
      object DBNavigator1: TDBNavigator
        Left = 70
        Top = 16
        Width = 240
        Height = 25
        DataSource = DM.dsTanques
        TabOrder = 0
      end
      object edIdTanques: TDBEdit
        Left = 158
        Top = 64
        Width = 65
        Height = 21
        DataField = 'ID_COMBUSTIVEL'
        DataSource = DM.dsTanques
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object edNumero: TDBEdit
        Left = 158
        Top = 90
        Width = 273
        Height = 21
        DataField = 'NUMERO'
        DataSource = DM.dsTanques
        TabOrder = 2
      end
      object DBGrid1: TDBGrid
        Left = 70
        Top = 172
        Width = 611
        Height = 153
        DataSource = DM.dsTanques
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_TANQUE'
            Title.Caption = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_COMBUSTIVEL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CAPACIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMBUSTIVEL'
            Visible = True
          end>
      end
      object edCapacidade: TDBEdit
        Left = 158
        Top = 116
        Width = 119
        Height = 21
        DataField = 'CAPACIDADE'
        DataSource = DM.dsTanques
        TabOrder = 4
      end
      object cbCombustivel: TDBLookupComboBox
        Left = 158
        Top = 142
        Width = 145
        Height = 21
        DataField = 'ID_COMBUSTIVEL'
        DataSource = DM.dsTanques
        ListSource = DM.dsCombustiveis
        TabOrder = 5
      end
    end
    object tsBombas: TTabSheet
      Caption = 'Bombas'
      ImageIndex = 3
      OnShow = tsBombasShow
    end
  end
end
