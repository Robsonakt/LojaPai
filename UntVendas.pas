unit UntVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.pngimage;

type
  TCaixaVendas = class(TForm)
    pnbotvenda: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    EdtNameCliente: TEdit;
    Label1: TLabel;
    lbNomeCli: TLabel;
    DBGrid1: TDBGrid;
    DSItensVenda: TDataSource;
    lbNomeProd: TLabel;
    edtprod: TLabel;
    edtCodProd: TEdit;
    edtQuant: TEdit;
    btnConfirma: TButton;
    edtValorTotal: TEdit;
    edtValorProd: TDBEdit;
    lbValorUni: TLabel;
    lbquant: TLabel;
    lbValTotal: TLabel;
    fdProduto: TFDMemTable;
    BtnFiado: TButton;
    fdProdutoQuantidade: TIntegerField;
    fdProdutoValorUni: TCurrencyField;
    fdProdutoValorTotal: TCurrencyField;
    btnVenda: TButton;
    lbTotalVend: TLabel;
    lbvalorDinheiro: TLabel;
    fdProdutoCodVenda: TIntegerField;
    fdProdutoCodCli: TStringField;
    edtDataVenda: TMaskEdit;
    lbDataVenda: TLabel;
    Image1: TImage;
    procedure EdtNameClienteKeyPress(Sender: TObject; var Key: Char);
    procedure EdtNameClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodProdKeyPress(Sender: TObject; var Key: Char);
    procedure edtQuantKeyPress(Sender: TObject; var Key: Char);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtValorTotalKeyPress(Sender: TObject; var Key: Char);
    procedure EdtNameClienteChange(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnFiadoClick(Sender: TObject);
    procedure btnVendaClick(Sender: TObject);
    procedure edtDataVendaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCaixaVendas: TCaixaVendas;

  totalvalor: Currency ;

implementation

{$R *.dfm}

uses untDmConexao, Principal_main, untCadastroCliente, untCadastroProduto,
  untConsultaCliente, untConsultaProdutos, UntExibeCadastroCliente,
  UntExibeCadastroProduto, UntFiadoCli, UntFuncoes, Venda_Itens;

procedure TCaixaVendas.btnConfirmaClick(Sender: TObject);
begin
    begin

      fdProduto.Active := true

    end;
  fdproduto.Insert;
  fdproduto.fieldbyname('valorUni').asstring                                := edtValorProd.Text;
  fdproduto.fieldbyname('Quantidade').asstring                              := edtQuant.Text;
  fdproduto.fieldbyname('ValorTotal').asstring                              := edtValorTotal.Text;
  fdproduto.Post;


  Totalvalor := Totalvalor + StrToCurr(edtValorTotal.text);
  lbvalorDinheiro.Caption := FormatFloat('R$ 0.00',Totalvalor);        // colocando formatação direto na variavel

end;

procedure TCaixaVendas.BtnFiadoClick(Sender: TObject);
var soma : Currency ;
begin
      with dmconexoes do
  begin
      qrCliente.Close;
      qrCliente.SQL.clear;
      qrCliente.sql.Add('SELECT * FROM [ROBSON].[dbo].[Cadastro] where codigo = :pcod');
      qrCliente.Parameters.ParamByName('pcod').Value := EdtNameCliente.Text ;
      qrCliente.open;
      qrCliente.First;




      if not  qrCliente.IsEmpty then
      begin

        soma := 0;
        soma := dmconexoes.qrCliente.FieldByName('Valorfiado').AsCurrency + StrToCurr(copy(lbvalorDinheiro.Caption,3,10)) ; //pegando apartir do $ e fazendo a copia

        qrCliente.Edit;
        qrCliente.FieldByName('Valorfiado').value                            := soma ;
        qrCliente.post;


      end;




      application.MessageBox('Venda Feita','Venda  ',mb_ok+MB_ICONINFORMATION);

      EdtNameCliente.clear;
      edtCodProd.Clear;
      edtValorProd.Clear;
      edtQuant.Clear;
      edtValorTotal.Clear;
      edtDataVenda.Clear;
      lbvalorDinheiro.Caption := '';
      lbNomeCli.caption  := '';
      lbNomeProd.caption := '';


      edtNameCliente.SetFocus;

      fdProduto.Close ;
      fdProduto.Open;

  end;

end;

procedure TCaixaVendas.btnVendaClick(Sender: TObject);


begin

  with dmconexoes do
  begin



      qrVendas.close;
      qrVendas.sql.clear;
      qrVendas.sql.Add('SELECT * FROM [ROBSON].[dbo].[VENDAS]');
      qrVendas.open;
      qrVendas.First;


      qrItensVenda.Close;
      qrItensVenda.sql.clear;
      qrItensVenda.sql.Add('SELECT * FROM [ROBSON].[dbo].[ITENSVENDAS]');
      qrItensVenda.open;
      qrItensVenda.First;





           qrVendas.Insert;
            qrVendas.FieldByName('CodVenda').AsString                              := qrVendas.fieldbyname('Codvenda').AsString;
            qrVendas.FieldByName('ValorTotal').AsString                            := Trim(fdProduto.fieldbyname('ValorTotal').asstring);
            qrVendas.FieldByName('CodCli').asstring                                := Trim(EdtNameCliente.Text);
            qrVendas.FieldByName('DataVenda').AsDateTime                           := StrToDateTime(edtDataVenda.Text);
            qrVendas.post;



           // pegar campos da qrItensVenda que tem aque atribuir tb




      application.MessageBox('Venda Feita com Sucesso','Venda  ',mb_ok+MB_ICONINFORMATION);

      EdtNameCliente.clear;
      edtCodProd.Clear;
      edtValorProd.Clear;
      edtQuant.Clear;
      edtValorTotal.Clear;
      edtDataVenda.Clear;
      lbvalorDinheiro.Caption := '';
      lbNomeCli.caption  := '';
      lbNomeProd.caption := '';


      edtNameCliente.SetFocus;



      fdProduto.Close;
      fdProduto.Open;

  end;


end;

procedure TCaixaVendas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DELETE then
  begin
    if Application.MessageBox('Deseja deletar o produto?','Atenção',MB_ICONQUESTION+mb_yesno) = idYes then
      begin
        fdProduto.Delete;
      end;
  end;
end;

procedure TCaixaVendas.edtCodProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f2 then
      begin

      frmConsultaProduto.ShowModal;

      edtCodProd.text :=  LocalizaCodigoCli;
      edtCodProdKeyPress(self,keyEnter);


      end;
end;

procedure TCaixaVendas.edtCodProdKeyPress(Sender: TObject; var Key: Char);
begin
       if key = #13 then
     begin
     with dmconexoes do
     begin
       qrcliente.Close  ;
       qrcliente.SQL.Clear;
       qrcliente.SQL.Add('SELECT * FROM CADASTRO WHERE CODIGO = :pcod')  ;
       qrcliente.Parameters.ParamByName('pcod').Value :=  edtCodProd.Text ;
       qrcliente.Open;

                           lbNomeProd.Caption := qrEstoque.FieldByName('descricao').AsString;

      end;
      end;

      if Key = #13 then

      edtQuant.SetFocus;
end;

procedure TCaixaVendas.edtDataVendaKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #32 then
 begin
   edtDataVenda.Text := FormatDateTime('dd/mm/yyyy',Date);
   edtCodProd.SetFocus;
 end;
end;

procedure TCaixaVendas.EdtNameClienteChange(Sender: TObject);
begin

      edtValorProd.Clear;

end;

procedure TCaixaVendas.EdtNameClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

with dmconexoes do

  if key = vk_f2 then
      begin

      frmConsultaCliente.ShowModal;

      EdtNameCliente.text :=  LocalizaCodigoCli;
      EdtNameClienteKeyPress(self,keyEnter);


      end;

end;

procedure TCaixaVendas.EdtNameClienteKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
     with dmconexoes do
     begin
       qrcliente.Close  ;
       qrcliente.SQL.Clear;
       qrcliente.SQL.Add('SELECT * FROM CADASTRO WHERE CODIGO = :pcod')  ;
       qrcliente.Parameters.ParamByName('pcod').Value :=  EdtNameCliente.Text ;
       qrcliente.Open;

        lbNomeCli.Caption := qrCliente.FieldByName('nome').AsString ; //exibe noem que esta na label

      end;
      end;

      if Key = #13 then
      edtDataVenda.SetFocus;
end;


procedure TCaixaVendas.edtQuantKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    edtValorTotal.Text :=  floattostr(strtofloat(edtValorProd.Text) * strtofloat(edtQuant.Text));        //calculo de multiplicação
    edtValorTotal.SetFocus;
  end;




end;

procedure TCaixaVendas.edtValorTotalKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  btnConfirma.SetFocus;
end;

procedure TCaixaVendas.FormShow(Sender: TObject);
begin
  pnbotvenda.Color := color_01;
  pnbotvenda.Font.Color := color_02;
end;

end.
