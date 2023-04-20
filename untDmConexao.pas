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
    qrClientenome: TWideStringField;
    qrClienteendereco: TWideStringField;
    qrClientevalor: TIntegerField;
    qrClientecpf: TStringField;
    qrClienterg: TStringField;
    qrClienteproduto: TWideStringField;
    qrClientecodigo: TIntegerField;
    qrClientetelefone: TStringField;
    qrClientedatacadastrocliente: TDateTimeField;
    qrClientenumeroresidencia: TIntegerField;
    qrcomando: TADOQuery;
    qrVendas: TADOQuery;
    qrItensVenda: TADOQuery;
    qrVendasCodVenda: TIntegerField;
    qrVendasCodCli: TIntegerField;
    qrVendasValorTotal: TBCDField;
    qrItensVendaCodigo: TIntegerField;
    qrItensVendaCodItem: TIntegerField;
    qrItensVendaCodVenda: TIntegerField;
    qrItensVendaDescri��o: TStringField;
    qrItensVendaValor: TBCDField;
    qrItensVendaCodBarras: TIntegerField;
    qrEstoquecodigo: TAutoIncField;
    qrEstoquequantidade: TIntegerField;
    qrEstoquedescricao: TWideStringField;
    qrEstoquedata: TDateTimeField;
    qrEstoquevalorproduto: TBCDField;
    qrClientevalorfiado: TBCDField;
    qrVendasDataVenda: TDateTimeField;
    qrVendasValorPago: TBCDField;
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
