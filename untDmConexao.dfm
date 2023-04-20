﻿object dmconexoes: Tdmconexoes
  OldCreateOrder = False
  Height = 341
  Width = 701
  object conRobson: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=@66E$Y$;Persist Security Info=True;' +
      'User ID=sa;Initial Catalog=ROBSON;Data Source=DEV3;Use Procedure' +
      ' for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ' +
      'ID=DEV3;Use Encryption for Data=False;Tag with column collation ' +
      'when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 288
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
      Size = 10
    end
    object qrClienteendereco: TWideStringField
      FieldName = 'endereco'
      FixedChar = True
      Size = 10
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
    object qrClientecodigo: TIntegerField
      FieldName = 'codigo'
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
      currency = True
      Precision = 10
      Size = 2
    end
  end
  object vwGerarNumCliente: TADOQuery
    Parameters = <>
    Left = 376
    Top = 16
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
      'select * from Vendas')
    Left = 37
    Top = 160
    object qrVendasCodVenda: TIntegerField
      FieldName = 'CodVenda'
    end
    object qrVendasCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object qrVendasValorTotal: TBCDField
      FieldName = 'ValorTotal'
      Precision = 10
      Size = 2
    end
    object qrVendasDataVenda: TDateTimeField
      FieldName = 'DataVenda'
    end
    object qrVendasValorPago: TBCDField
      FieldName = 'ValorPago'
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
    object qrItensVendaDescrição: TStringField
      FieldName = 'Descri'#231#227'o'
      Size = 50
    end
    object qrItensVendaValor: TBCDField
      FieldName = 'Valor'
      Precision = 10
      Size = 2
    end
    object qrItensVendaCodBarras: TIntegerField
      FieldName = 'CodBarras'
    end
  end
end
