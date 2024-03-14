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
  UntRelatorioProdutos in 'UntRelatorioProdutos.pas' {frmRelatorio},
  untCupom in 'untCupom.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(Tdmconexoes, dmconexoes);
  Application.CreateForm(TfrmProduto, frmProduto);
  Application.CreateForm(TfrmConsultaProduto, frmConsultaProduto);
  Application.CreateForm(TfrmCliente, frmCliente);
  Application.CreateForm(TfrmConsultaCliente, frmConsultaCliente);
  Application.CreateForm(TExibeCadastroProduto, ExibeCadastroProduto);
  Application.CreateForm(TfrmExibeCadastroCliente, frmExibeCadastroCliente);
  Application.CreateForm(TfrmVendaItens, frmVendaItens);
  Application.CreateForm(TFiadosCli, FiadosCli);
  Application.CreateForm(TFrmCaixaVendas, FrmCaixaVendas);
  Application.CreateForm(TfrmRelatorio, frmRelatorio);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
