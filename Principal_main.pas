unit Principal_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Imaging.pngimage;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Consulta1: TMenuItem;
    Estoque1: TMenuItem;
    Cliente1: TMenuItem;
    Estoque2: TMenuItem;
    Cliente2: TMenuItem;
    pnBot: TPanel;
    dsCliente: TDataSource;
    fdCliente: TFDMemTable;
    fdClienteNumero: TIntegerField;
    fdClienteDataVencimento: TDateField;
    fdClienteValor: TCurrencyField;
    dsProduto: TDataSource;
    fdProduto: TFDMemTable;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    CurrencyField1: TCurrencyField;
    DataSource1: TDataSource;
    FDMemTable1: TFDMemTable;
    IntegerField2: TIntegerField;
    DateField2: TDateField;
    CurrencyField2: TCurrencyField;
    Venda1: TMenuItem;
    Image1: TImage;
    Consulta: TMenuItem;
    Venda: TMenuItem;
    procedure Estoque1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Estoque2Click(Sender: TObject);
    procedure Cliente2Click(Sender: TObject);
    procedure ConsultaClick(Sender: TObject);
    procedure VendaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  keyEnter: char = #13;

  color_01 : TColor = $00333333;
  color_02 : TColor = $00ffffff;
implementation

uses
  untDmConexao,untCadastroCliente,untCadastroProduto,untConsultaCliente,untConsultaProdutos,untExibeCadastroCliente,UntExibeCadastroProduto,
  UntVendas, Venda_Itens, UntRelatorioProdutos;

{$R *.dfm}



procedure TfrmMain.Cliente1Click(Sender: TObject);
begin
          Application.CreateForm(TfrmProduto,frmProduto);
          frmCliente.showmodal;
          frmProduto.Free;
//    if key = vk_F2 then
//       begin
//         frmCliente.showmodal;
//
//         edtCodCli.Text := sSelecionouCodEmpresa;
//         Key1 := #13;
//         edtCodEmpresaKeyPress(Sender,key1);
//        end;
//
//     if key = VK_ESCAPE then
//       close;
end;

procedure TfrmMain.Cliente2Click(Sender: TObject);
begin
  // Application.CreateForm(TfrmProduto,frmProduto);
   frmExibeCadastroCliente.showmodal;
  // frmProduto.Free;
end;

procedure TfrmMain.ConsultaClick(Sender: TObject);
begin
         Application.CreateForm(TfrmVendaItens,frmVendaItens);
      frmVendaItens.ShowModal;

end;

procedure TfrmMain.Estoque1Click(Sender: TObject);
begin
         Application.CreateForm(TfrmProduto,frmProduto);  //CRIA A TELA
          frmProduto.showmodal;                           //CHAMA O FORMULARIO
          frmProduto.Free;                                //LIBERA A MEMORIA NO FORMULARIO

end;

procedure TfrmMain.Estoque2Click(Sender: TObject);
begin
    ExibeCadastroProduto.showmodal;
end;


procedure TfrmMain.FormShow(Sender: TObject);
begin

  pnBot.Color := color_01;
  pnBot.Font.Color := color_02;

end;

procedure TfrmMain.VendaClick(Sender: TObject);
begin
  Application.CreateForm(TfrmProduto,frmProduto);
          FrmCaixaVendas.showmodal;


end;

end.
