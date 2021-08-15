object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 476
  Width = 758
  object Con: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=D:\Bancos de Dados\POSTO.FDB'
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
    Active = True
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
    Active = True
    Connection = Con
    UpdateObject = updCombustiveis
    SQL.Strings = (
      'select * from tb_usuarios')
    Left = 228
    Top = 64
    object IntegerField1: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object StringField2: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 60
    end
    object StringField3: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 60
    end
    object StringField4: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
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
    Active = True
    Connection = Con
    UpdateObject = updTanques
    SQL.Strings = (
      'select * from tb_usuarios')
    Left = 228
    Top = 112
    object IntegerField2: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object StringField5: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object StringField6: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 60
    end
    object StringField7: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 60
    end
    object StringField8: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
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
    Active = True
    Connection = Con
    UpdateObject = updBombas
    SQL.Strings = (
      'select * from tb_usuarios')
    Left = 228
    Top = 168
    object IntegerField3: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object StringField9: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object StringField10: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 60
    end
    object StringField11: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 60
    end
    object StringField12: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
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
    Active = True
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
