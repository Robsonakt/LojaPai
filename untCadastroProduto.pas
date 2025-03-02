unit untCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmProduto = class(TForm)
    edtCodProd: TEdit;
    LbCodProd: TLabel;
    edtDescricaoProd: TEdit;
    Lbnomeproduto: TLabel;
    Lbdatacadastroproduto: TLabel;
    edtDataProd: TMaskEdit;
    lbQuant: TLabel;
    edtQuantProd: TEdit;
    btnSalvar: TButton;
    lbvalorproduto: TLabel;
    edtValorProduto: TEdit;
    edtTipo: TEdit;
    lbTipo: TLabel;
    btnSalva: TBitBtn;
    procedure edtCodProdKeyPress(Sender: TObject; var Key: Char);
    procedure edtQuantProdKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescricaoProdKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataProdKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtValorProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto: TfrmProduto;

implementation

uses
untDmConexao;

{$R *.dfm}

procedure TfrmProduto.btnSalvaClick(Sender: TObject);
begin
 with dmconexoes do
 begin




            qrEstoque.close;
            qrEstoque.sql.clear;
            qrEstoque.sql.Add('SELECT * FROM [ROBSON].[dbo].[PRODUTO]');
            qrEstoque.open;
            qrEstoque.First;


            qrEstoque.Insert;
            qrEstoque.fieldbyname('quantidade').asinteger                       := strtoint(edtQuantProd.text);
            qrEstoque.fieldbyname('descricao').asstring                         := trim(edtDescricaoProd.text);
            qrEstoque.FieldByName('data').AsDateTime                            := StrToDateTime(edtDataProd.Text);
            qrEstoque.FieldByName('valorproduto').AsFloat                       := StrToFloat (edtValorProduto.Text);
            qrEstoque.post;

            application.MessageBox('Produto Cadastrado com Sucesso','Cadastro  ',mb_ok+MB_ICONINFORMATION);

            qrcomando.close;
            qrcomando.sql.clear;
            qrcomando.sql.Add('SELECT MAX(codigo) AS ULTIMOCODIGO FROM [ROBSON].[dbo].[PRODUTO]');
            qrcomando.open;

            edtCodProd.TEXT := Inttostr(qrcomando.FieldByName('ULTIMOCODIGO').AsINTEGER +1);
            edtDescricaoProd.Clear;
            edtQuantProd.Clear;
            edtValorProduto.Clear;
            edtDataProd.clear;

 end;
end;

procedure TfrmProduto.btnSalvarClick(Sender: TObject);
 begin
  with dmconexoes do
 begin




            qrEstoque.close;
            qrEstoque.sql.clear;
            qrEstoque.sql.Add('SELECT * FROM [ROBSON].[dbo].[PRODUTO]');
            qrEstoque.open;
            qrEstoque.First;


            qrEstoque.Insert;
            qrEstoque.fieldbyname('quantidade').asinteger                       := strtoint(edtQuantProd.text);
            qrEstoque.fieldbyname('descricao').asstring                         := trim(edtDescricaoProd.text);
            qrEstoque.FieldByName('data').AsDateTime                            := StrToDateTime(edtDataProd.Text);
            qrEstoque.FieldByName('valorproduto').AsFloat                       := StrToFloat (edtValorProduto.Text);
            qrEstoque.post;

            application.MessageBox('Produto Cadastrado com Sucesso','Cadastro  ',mb_ok+MB_ICONINFORMATION);

            qrcomando.close;
            qrcomando.sql.clear;
            qrcomando.sql.Add('SELECT MAX(codigo) AS ULTIMOCODIGO FROM [ROBSON].[dbo].[PRODUTO]');
            qrcomando.open;

            edtCodProd.TEXT := Inttostr(qrcomando.FieldByName('ULTIMOCODIGO').AsINTEGER +1);
            edtDescricaoProd.Clear;
            edtQuantProd.Clear;
            edtValorProduto.Clear;
            edtDataProd.clear;

 end;
 end;

procedure TfrmProduto.edtCodProdKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 edtQuantProd.SetFocus;
end;

procedure TfrmProduto.edtDataProdKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #32 then
 begin
   edtDataProd.Text := FormatDateTime('dd/mm/yyyy',Date);
   btnSalva.SetFocus;
 end;
end;

procedure TfrmProduto.edtDescricaoProdKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 edtQuantProd.SetFocus;
end;

procedure TfrmProduto.edtQuantProdKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 edtValorProduto.SetFocus;
end;

procedure TfrmProduto.edtValorProdutoKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 edtDataProd.SetFocus;
end;

procedure TfrmProduto.FormShow(Sender: TObject);

begin
with dmConexoes do
begin
qrcomando.close;
            qrcomando.sql.clear;
            qrcomando.sql.Add('SELECT MAX(codigo) AS ULTIMOCODIGO FROM [ROBSON].[dbo].[PRODUTO]');
            qrcomando.open;

            edtCodProd.TEXT := Inttostr(qrcomando.FieldByName('ULTIMOCODIGO').AsINTEGER +1);
end;
end;

end.
