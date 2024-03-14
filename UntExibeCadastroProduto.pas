unit UntExibeCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TExibeCadastroProduto = class(TForm)
    LbCodProd: TLabel;
    Lbnomeproduto: TLabel;
    Lbdatacadastroproduto: TLabel;
    lbQuant: TLabel;
    edtCodProd: TEdit;
    edtDataProd: TMaskEdit;
    valor: TLabel;
    btnEditaCadProd: TButton;
    btnExcluiCadProd: TButton;
    btnSalvar: TBitBtn;
    edtValorProduto: TEdit;
    edtQuantidade: TEdit;
    edtNomeProd: TEdit;
    btnRelatorio: TButton;
    procedure edtCodProdKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnExcluiCadProdClick(Sender: TObject);
    procedure btnEditaCadProdClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExibeCadastroProduto: TExibeCadastroProduto;
  LocalizacodProduto : string;

implementation

 uses  untDmConexao,principal_main,untConsultaProdutos , UntRelatorioProdutos;
{$R *.dfm}

procedure TExibeCadastroProduto.btnEditaCadProdClick(Sender: TObject);
begin
edtNomeProd.Enabled := not edtNomeProd.Enabled ;
edtQuantidade.Enabled := not edtQuantidade.Enabled ;
edtValorProduto.Enabled := not edtValorProduto.Enabled ;


btnEditaCadProd.Enabled := false ;
end;

procedure TExibeCadastroProduto.btnExcluiCadProdClick(Sender: TObject);
begin
       with dmconexoes do
       begin
       qrEstoque.Close  ;
       qrEstoque.SQL.Clear;
       qrEstoque.SQL.text := 'delete FROM PRODUTO WHERE CODIGO = :pcod'  ;
       qrEstoque.Parameters.ParamByName('pcod').Value :=  edtCodProd.Text ;
       qrEstoque.ExecSQL;

       edtDataProd.clear;
       end;
end;

procedure TExibeCadastroProduto.btnRelatorioClick(Sender: TObject);
begin

with dmconexoes do
  begin
   qrEstoque.Close  ;
   qrEstoque.SQL.Clear;
   qrEstoque.SQL.Add('SELECT * FROM PRODUTO WHERE CODIGO = 0')  ;
   qrEstoque.Open;

   frmRelatorio := TfrmRelatorio.Create(self);
   frmRelatorio.rlr_RelatorioProdutos.Preview();
  end;


//          Application.CreateForm(TfrmRelatorio,frmRelatorio);  //CRIA A TELA
//          frmRelatorio.showmodal;                           //CHAMA O FORMULARIO
//          frmRelatorio.Free;                                //LIBERA A MEMORIA NO FORMULARIO
end;

procedure TExibeCadastroProduto.btnSalvarClick(Sender: TObject);
begin

  with dmconexoes do
  begin
  qrEstoque.Close  ;
  qrEstoque.SQL.Clear;
  qrEstoque.SQL.text := 'UPDATE  PRODUTO SET quantidade = :PQTD, descricao = :PDESC, valorproduto = :PVALOR  WHERE CODIGO = :pcod';
  qrEstoque.Parameters.ParamByName('PQTD').Value    :=  edtQuantidade.Text ;
  qrEstoque.Parameters.ParamByName('PDESC').Value   :=  edtNomeProd.Text ;
  qrEstoque.Parameters.ParamByName('PVALOR').Value  :=  edtValorProduto.Text ;
  qrEstoque.Parameters.ParamByName('pcod').Value    :=  edtCodProd.Text ;
  qrEstoque.ExecSQL;

   Application.MessageBox('Produto Gravado com Sucesso!!','Aviso',mb_ok+MB_ICONINFORMATION) ;
   btnEditaCadProd.Enabled := true ;


   edtNomeProd.Enabled      := not edtNomeProd.Enabled ;
   edtQuantidade.Enabled    := not edtQuantidade.Enabled ;
   edtValorProduto.Enabled  := not edtValorProduto.Enabled ;
  end;

end;

procedure TExibeCadastroProduto.edtCodProdKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
with dmconexoes do

   if key = vk_f2 then
      begin

      frmConsultaProduto.ShowModal;

      edtCodProd.text :=  LocalizacodProduto;
      edtCodProdKeyPress(self,keyEnter);


      end;


end;

procedure TExibeCadastroProduto.edtCodProdKeyPress(Sender: TObject;
  var Key: Char);
begin


            if key = #13 then
       begin
            with dmconexoes do
       begin
             qrEstoque.Close  ;
             qrEstoque.SQL.Clear;
             qrEstoque.SQL.Add('SELECT * FROM produto WHERE CODIGO = :pcod')  ;
             qrEstoque.Parameters.ParamByName('pcod').Value :=  edtCodProd.Text ;
             qrEstoque.Open;

             edtDataProd.Text     := FormatDateTime('dd/mm/yyyy',qrEstoque.FieldByName('data').AsDateTime);
             edtValorProduto.Text := qrEstoque.FieldByName('valorproduto').asstring ;
             edtNomeProd.Text     := qrEstoque.FieldByName('descricao').asstring ;
             edtQuantidade.Text   := qrEstoque.FieldByName('quantidade').asstring ;

          end;
          end;
end;

procedure TExibeCadastroProduto.FormShow(Sender: TObject);
begin
  begin
   with dmConexoes do
   begin
   qrEstoque.Close  ;
   qrEstoque.SQL.Clear;
   qrEstoque.SQL.Add('SELECT * FROM PRODUTO WHERE CODIGO = 0')  ;
   qrEstoque.Open;

   edtCodProd.Text := '';
   edtDataProd.Text := '';
   end;
  end;
end;

end.
