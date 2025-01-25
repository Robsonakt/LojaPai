program Principal;

uses
  Vcl.Forms,
  Principal_main in 'Principal_main.pas' {frmMain},
  untCadastroProduto in 'untCadastroProduto.pas' {frmProduto},
  untCadastroCliente in 'untCadastroCliente.pas' {frmCliente},
  untDmConexao in 'untDmConexao.pas' {dmconexoes: TDataModule},
  untConsultaCliente in 'untConsultaCliente.pas' {frmConsultaCliente},
  untConsultaProdutos in 'untConsultaProdutos.pas' {frmConsultaProduto},
  UntExibeCadastroProduto in 'UntExibeCadastroProduto.pas' {ExibeCadastroProduto},
  UntExibeCadastroCliente in 'UntExibeCadastroCliente.pas' {frmExibeCadastroCliente},
  UntFuncoes in 'UntFuncoes.pas',
  Venda_Itens in 'Venda_Itens.pas' {frmVendaItens},
  UntFiadoCli in 'UntFiadoCli.pas' {FiadosCli},
  UntVendas in 'UntVendas.pas' {frmCaixaVendas},
  UntRelatorioProdutos in 'UntRelatorioProdutos.pas' {frmRelatorioProd},
  untCupom in 'untCupom.pas' {frmCupom},
  UntRelatorioCliente in 'UntRelatorioCliente.pas' {frmRelatorioCli},
  UntRelatorioVendas in 'UntRelatorioVendas.pas' {frmRelatorioVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(Tdmconexoes, dmconexoes);
  Application.CreateForm(TfrmProduto, frmProduto);
  Application.CreateForm(TfrmConsultaProduto, frmConsultaProduto);
  Application.CreateForm(TfrmCliente, frmCliente);
  Application.CreateForm(TExibeCadastroProduto, ExibeCadastroProduto);
  Application.CreateForm(TfrmExibeCadastroCliente, frmExibeCadastroCliente);
  Application.CreateForm(TfrmVendaItens, frmVendaItens);
  Application.CreateForm(TFiadosCli, FiadosCli);
  Application.CreateForm(TFrmCaixaVendas, FrmCaixaVendas);
  Application.CreateForm(TfrmRelatorioProd, frmRelatorioProd);
  Application.CreateForm(TfrmCupom, frmCupom);
  Application.CreateForm(TfrmRelatorioCli, frmRelatorioCli);
  Application.CreateForm(TfrmRelatorioVendas, frmRelatorioVendas);
  Application.Run;
end.
