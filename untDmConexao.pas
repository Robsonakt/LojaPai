unit untDmConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tdmconexoes = class(TDataModule)
    conRobson: TADOConnection;
    qrEstoque: TADOQuery;
    qrCliente: TADOQuery;
    vwGerarNumCliente: TADOQuery;
    qrcomando: TADOQuery;
    qrVendas: TADOQuery;
    qrItensVenda: TADOQuery;
    qrEstoquecodigo: TAutoIncField;
    qrEstoquequantidade: TIntegerField;
    qrEstoquedescricao: TWideStringField;
    qrEstoquedata: TDateTimeField;
    qrEstoquevalorproduto: TBCDField;
    dsEstoque: TDataSource;
    dsCliente: TDataSource;
    qrClientenome: TWideStringField;
    qrClienteendereco: TWideStringField;
    qrClientevalor: TIntegerField;
    qrClientecpf: TStringField;
    qrClienterg: TStringField;
    qrClienteproduto: TWideStringField;
    qrClientecodigo: TAutoIncField;
    qrClientetelefone: TStringField;
    qrClientedatacadastrocliente: TDateTimeField;
    qrClientenumeroresidencia: TIntegerField;
    qrClientevalorfiado: TBCDField;
    qrVendasCodCli: TIntegerField;
    qrVendasData: TWideStringField;
    qrVendasValorTotal: TBCDField;
    qrVendasValorRestante: TBCDField;
    qrVendasValorPago: TBCDField;
    qrVendasDataVenda: TDateTimeField;
    qrVendasCodVenda: TIntegerField;
    qrVendasDescriProd: TStringField;
    qrVendasQuantidade: TIntegerField;
    qrVendasValorProdUni: TBCDField;
    qrItensVendaCodigo: TIntegerField;
    qrItensVendaCodItem: TIntegerField;
    qrItensVendaCodVenda: TIntegerField;
    qrItensVendaDescricao: TStringField;
    qrItensVendaValorTotal: TBCDField;
    qrItensVendaQuantidade: TIntegerField;
    qrItensVendaValorProdUni: TBCDField;
    qrItensVendaDataVenda: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmconexoes: Tdmconexoes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
