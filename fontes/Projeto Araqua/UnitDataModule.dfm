object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 376
  Width = 575
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=dbaraqua'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object FDTableAgro: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'dbaraqua.agrotoxico'
    TableName = 'dbaraqua.agrotoxico'
    Left = 40
    Top = 88
    object FDTableAgroid: TFDAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object FDTableAgrodose: TSingleField
      FieldName = 'dose'
      Required = True
    end
    object FDTableAgrocoeficienteSorcaoCam1: TSingleField
      FieldName = 'coeficienteSorcaoCam1'
      Required = True
    end
    object FDTableAgrocoeficienteSorcaoCam2: TSingleField
      FieldName = 'coeficienteSorcaoCam2'
    end
    object FDTableAgrocoeficienteSorcaoCam3: TSingleField
      FieldName = 'coeficienteSorcaoCam3'
    end
    object FDTableAgrocoeficienteSorcaoCam4: TSingleField
      FieldName = 'coeficienteSorcaoCam4'
    end
    object FDTableAgromeiaVidaCam1: TIntegerField
      FieldName = 'meiaVidaCam1'
      Required = True
    end
    object FDTableAgromeiaVidaCam2: TIntegerField
      FieldName = 'meiaVidaCam2'
    end
    object FDTableAgromeiaVidaCam3: TIntegerField
      FieldName = 'meiaVidaCam3'
    end
    object FDTableAgromeiaVidaCam4: TIntegerField
      FieldName = 'meiaVidaCam4'
    end
    object FDTableAgroprincipioAtivo: TStringField
      FieldName = 'principioAtivo'
      Required = True
      Size = 60
    end
  end
  object FDQueryAgro: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from agrotoxico')
    Left = 40
    Top = 152
  end
  object FDQueryUsuario: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from usuario')
    Left = 120
    Top = 152
  end
  object FDTableUsuario: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'dbaraqua.usuario'
    TableName = 'dbaraqua.usuario'
    Left = 120
    Top = 88
    object FDTableUsuarioid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTableUsuarionome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 40
    end
    object FDTableUsuariologin: TStringField
      FieldName = 'login'
      Origin = 'login'
      Required = True
      Size = 40
    end
    object FDTableUsuariosenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 10
    end
    object FDTableUsuarioacesso: TIntegerField
      FieldName = 'acesso'
      Origin = 'acesso'
      Required = True
    end
  end
  object FDQueryLocalidade: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from localidade')
    Left = 208
    Top = 152
  end
  object FDTableLocalidade: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'dbaraqua.localidade'
    TableName = 'dbaraqua.localidade'
    Left = 208
    Top = 88
    object FDTableLocalidadeid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTableLocalidadeprecipitacao: TSingleField
      FieldName = 'precipitacao'
      Origin = 'precipitacao'
      Required = True
    end
    object FDTableLocalidadeevapotranspiracao: TSingleField
      FieldName = 'evapotranspiracao'
      Origin = 'evapotranspiracao'
      Required = True
    end
    object FDTableLocalidadeirrigacao: TSingleField
      FieldName = 'irrigacao'
      Origin = 'irrigacao'
      Required = True
    end
    object FDTableLocalidadeporosidadeAquifero: TSingleField
      FieldName = 'porosidadeAquifero'
      Origin = 'porosidadeAquifero'
      Required = True
    end
    object FDTableLocalidadeprofundidadeAquifero: TSingleField
      FieldName = 'profundidadeAquifero'
      Origin = 'profundidadeAquifero'
      Required = True
    end
    object FDTableLocalidadedescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 100
    end
  end
end
