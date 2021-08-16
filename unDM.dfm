object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 476
  Width = 758
  object Con: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=As#bank.'
      'Database=D:\Posto\POSTO.FDB'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 96
    Top = 16
  end
  object DriverLink: TFDPhysADSDriverLink
    Left = 160
    Top = 16
  end
  object qryUsuarios: TFDQuery
    Connection = Con
    UpdateObject = updUsuarios
    SQL.Strings = (
      'select * from tb_usuarios')
    Left = 228
    Top = 16
    object qryUsuariosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object qryUsuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object qryUsuariosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 60
    end
    object qryUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 60
    end
    object qryUsuariosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object updUsuarios: TFDUpdateSQL
    Connection = Con
    Left = 368
    Top = 16
  end
  object dsUsuarios: TDataSource
    DataSet = qryUsuarios
    Left = 296
    Top = 16
  end
  object qryCombustiveis: TFDQuery
    Connection = Con
    UpdateObject = updCombustiveis
    SQL.Strings = (
      'select * from tb_combustiveis')
    Left = 228
    Top = 64
    object qryCombustiveisID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
      Origin = 'ID_COMBUSTIVEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCombustiveisTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 60
    end
    object qryCombustiveisVALOR_COMPRA: TBCDField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      Required = True
      Precision = 18
    end
    object qryCombustiveisVALOR_VENDA: TBCDField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Required = True
      Precision = 18
    end
    object qryCombustiveisPERC_IMPOSTO: TBCDField
      FieldName = 'PERC_IMPOSTO'
      Origin = 'PERC_IMPOSTO'
      Required = True
      Precision = 18
    end
  end
  object updCombustiveis: TFDUpdateSQL
    Connection = Con
    Left = 368
    Top = 64
  end
  object dsCombustiveis: TDataSource
    DataSet = qryCombustiveis
    Left = 296
    Top = 64
  end
  object qryTanques: TFDQuery
    Connection = Con
    UpdateObject = updTanques
    SQL.Strings = (
      'select t.*, '
      '(select tipo from tb_combustiveis c '
      'where c.id_combustivel = t.id_combustivel) Combustivel'
      ' from tb_tanques t')
    Left = 228
    Top = 112
    object qryTanquesID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTanquesNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object qryTanquesID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
      Origin = 'ID_COMBUSTIVEL'
      Required = True
    end
    object qryTanquesCAPACIDADE: TBCDField
      FieldName = 'CAPACIDADE'
      Origin = 'CAPACIDADE'
      Required = True
      Precision = 18
    end
    object qryTanquesCOMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMBUSTIVEL'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
  object updTanques: TFDUpdateSQL
    Connection = Con
    Left = 368
    Top = 112
  end
  object dsTanques: TDataSource
    DataSet = qryTanques
    Left = 296
    Top = 112
  end
  object qryBombas: TFDQuery
    Connection = Con
    UpdateObject = updBombas
    SQL.Strings = (
      'select * from tb_bombas')
    Left = 228
    Top = 168
    object qryBombasID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBombasNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object qryBombasID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Required = True
    end
  end
  object updBombas: TFDUpdateSQL
    Connection = Con
    Left = 368
    Top = 168
  end
  object dsBombas: TDataSource
    DataSet = qryBombas
    Left = 296
    Top = 168
  end
  object qryAbastecimentos: TFDQuery
    Connection = Con
    UpdateObject = updAbastecimentos
    SQL.Strings = (
      'select * from tb_usuarios')
    Left = 228
    Top = 216
    object IntegerField4: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object StringField13: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object StringField14: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 60
    end
    object StringField15: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 60
    end
    object StringField16: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object updAbastecimentos: TFDUpdateSQL
    Connection = Con
    Left = 368
    Top = 216
  end
  object dsAbastecimentos: TDataSource
    DataSet = qryAbastecimentos
    Left = 296
    Top = 216
  end
end
