unit Venda_Itens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmVendaItens = class(TForm)
    pnFrontal: TPanel;
    pnSuperior: TPanel;
    pnInferior: TPanel;
    dbProdutos: TDBGrid;
    dsVenda: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendaItens: TfrmVendaItens;

implementation

{$R *.dfm}

uses Principal_main, untCadastroCliente, untCadastroProduto, untConsultaCliente,
  untConsultaProdutos, untDmConexao, UntExibeCadastroCliente,
  UntExibeCadastroProduto, UntFiadoCli, UntFuncoes, UntVendas;




  procedure TfrmVendaItens.FormShow(Sender: TObject);
begin
  with dmconexoes do

  begin
    qrVendas.Close;
    qrVendas.sql.clear;
    qrVendas.SQL.Add('select * from vendas order by datavenda desc') ;
    qrvendas.Open;

  end;


end;

end.
