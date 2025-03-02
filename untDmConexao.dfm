object dmconexoes: Tdmconexoes
  OldCreateOrder = False
  Height = 335
  Width = 701
  object conRobson: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=@66E$Y$;Persist Security Info=True;' +
      'User ID=sa;Initial Catalog=ROBSON;Data Source=IMPORTACAO\SQL2019' +
      ';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=409' +
      '6;Workstation ID=DEV3;Use Encryption for Data=False;Tag with col' +
      'umn collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 464
    Top = 16
  end
  object qrEstoque: TADOQuery
    Connection = conRobson
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from PRODUTO')
    Left = 37
    Top = 16
    object qrEstoquecodigo: TAutoIncField
      FieldName = 'codigo'
      ReadOnly = True
    end
    object qrEstoquequantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object qrEstoquedescricao: TWideStringField
      FieldName = 'descricao'
      FixedChar = True
      Size = 100
    end
    object qrEstoquedata: TDateTimeField
      FieldName = 'data'
    end
    object qrEstoquevalorproduto: TBCDField
      FieldName = 'valorproduto'
      Precision = 10
      Size = 2
    end
  end
  object qrCliente: TADOQuery
    Connection = conRobson
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Cadastro WHERE (CODIGO IS NOT NULL)')
    Left = 133
    Top = 16
    object qrClientenome: TWideStringField
      FieldName = 'nome'
      FixedChar = True
      Size = 100
    end
    object qrClienteendereco: TWideStringField
      FieldName = 'endereco'
      FixedChar = True
      Size = 100
    end
    object qrClientevalor: TIntegerField
      FieldName = 'valor'
    end
    object qrClientecpf: TStringField
      FieldName = 'cpf'
      Size = 50
    end
    object qrClienterg: TStringField
      FieldName = 'rg'
      Size = 50
    end
    object qrClienteproduto: TWideStringField
      FieldName = 'produto'
      FixedChar = True
      Size = 10
    end
    object qrClientecodigo: TAutoIncField
      FieldName = 'codigo'
      ReadOnly = True
    end
    object qrClientetelefone: TStringField
      FieldName = 'telefone'
      Size = 50
    end
    object qrClientedatacadastrocliente: TDateTimeField
      FieldName = 'datacadastrocliente'
    end
    object qrClientenumeroresidencia: TIntegerField
      FieldName = 'numeroresidencia'
    end
    object qrClientevalorfiado: TBCDField
      FieldName = 'valorfiado'
      Precision = 10
      Size = 2
    end
  end
  object vwGerarNumCliente: TADOQuery
    Parameters = <>
    Left = 240
    Top = 24
  end
  object qrcomando: TADOQuery
    Connection = conRobson
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from PRODUTO')
    Left = 37
    Top = 96
  end
  object qrVendas: TADOQuery
    Connection = conRobson
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM [ROBSON].[dbo].[Vendas]')
    Left = 37
    Top = 160
    object qrVendasCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object qrVendasData: TWideStringField
      FieldName = 'Data'
      FixedChar = True
      Size = 10
    end
    object qrVendasValorTotal: TBCDField
      FieldName = 'ValorTotal'
      currency = True
      Precision = 10
      Size = 2
    end
    object qrVendasValorRestante: TBCDField
      FieldName = 'ValorRestante'
      Precision = 10
      Size = 2
    end
    object qrVendasValorPago: TBCDField
      FieldName = 'ValorPago'
      Precision = 10
      Size = 2
    end
    object qrVendasDataVenda: TDateTimeField
      FieldName = 'DataVenda'
    end
    object qrVendasCodVenda: TIntegerField
      FieldName = 'CodVenda'
    end
    object qrVendasDescriProd: TStringField
      FieldName = 'DescriProd'
      Size = 50
    end
    object qrVendasQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
    object qrVendasValorProdUni: TBCDField
      FieldName = 'ValorProdUni'
      Precision = 10
      Size = 2
    end
  end
  object qrItensVenda: TADOQuery
    Connection = conRobson
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ItensVendas')
    Left = 37
    Top = 216
    object qrItensVendaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qrItensVendaCodItem: TIntegerField
      FieldName = 'CodItem'
    end
    object qrItensVendaCodVenda: TIntegerField
      FieldName = 'CodVenda'
    end
    object qrItensVendaDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qrItensVendaValorTotal: TBCDField
      FieldName = 'ValorTotal'
      Precision = 10
      Size = 2
    end
    object qrItensVendaQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
    object qrItensVendaValorProdUni: TBCDField
      FieldName = 'ValorProdUni'
      Precision = 10
      Size = 2
    end
    object qrItensVendaDataVenda: TDateTimeField
      FieldName = 'DataVenda'
    end
  end
  object dsEstoque: TDataSource
    DataSet = qrEstoque
    Left = 248
    Top = 104
  end
  object dsCliente: TDataSource
    DataSet = qrCliente
    Left = 248
    Top = 176
  end
end
