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
  TfrmCaixaVendas = class(TForm)
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
    edtQuantRest: TDBEdit;
    lbQuantRest: TLabel;
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
    procedure EdtNameClienteExit(Sender: TObject);
    procedure VerificaCliente ;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCaixaVendas: TfrmCaixaVendas;

  quantidade: Integer ;


  totalvalor: Currency ;

implementation

{$R *.dfm}

uses untDmConexao, Principal_main, untCadastroCliente, untCadastroProduto,
  untConsultaCliente, untConsultaProdutos, UntExibeCadastroCliente,
  UntExibeCadastroProduto, UntFiadoCli, UntFuncoes, Venda_Itens;

procedure TfrmCaixaVendas.btnConfirmaClick(Sender: TObject);
begin

   with dmconexoes do

    begin

     //quantidade := qrEstoque.FieldByName('quantidade').AsInteger - StrToInt(edtQuant.text); // subtrai quantidade

     if (qrEstoque.FieldByName('quantidade').AsInteger - StrToInt(edtQuant.text)) <=0   then

      if application.MessageBox('Você ficara sem estoque deste produto, Deseja continuar a venda ?','Atenção  ',MB_YESNO+MB_ICONINFORMATION)=6 then
      begin
          fdProduto.Active := true ;
          fdproduto.Insert;
          fdproduto.fieldbyname('valorUni').asstring                                := edtValorProd.Text;
          fdproduto.fieldbyname('Quantidade').asstring                              := edtQuant.Text;
          fdproduto.fieldbyname('ValorTotal').value                                 := edtValorTotal.Text;
          fdproduto.Post;

          Totalvalor := Totalvalor + StrToCurr(edtValorTotal.text);
          lbvalorDinheiro.Caption := FormatFloat('R$ 0.00',Totalvalor);        // colocando formatação direto na variavel

      end

 else
       begin
             application.MessageBox('Venda  de produto Cancelada','Atenção  ',MB_OK+MB_ICONINFORMATION);
             edtCodProd.SetFocus;
       end;

    end;

    with dmconexoes do

    quantidade := qrEstoque.FieldByName('quantidade').AsInteger - StrToInt(edtQuant.text);

    begin
      begin

          fdProduto.Active := true ;
          fdproduto.Insert;
          fdproduto.fieldbyname('valorUni').asstring                                := edtValorProd.Text;
          fdproduto.fieldbyname('Quantidade').asstring                              := edtQuant.Text;
          fdproduto.fieldbyname('ValorTotal').value                                 := edtValorTotal.Text;
          fdproduto.Post;

          Totalvalor := Totalvalor + StrToCurr(edtValorTotal.text);
          lbvalorDinheiro.Caption := FormatFloat('R$ 0.00',Totalvalor);        // colocando formatação direto na variavel

      end ;
    end;


end;

procedure TfrmCaixaVendas.BtnFiadoClick(Sender: TObject);
var soma : Currency ;
begin

      with dmconexoes do
  begin

     begin
     quantidade := qrEstoque.FieldByName('quantidade').AsInteger - StrToInt(edtQuant.text); // subtrai quantidade
     qrEstoque.Edit;
     qrEstoque.FieldByName('quantidade').Value   :=  quantidade ;
     qrEstoque.post;

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



      end



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
      totalvalor := 0;


      edtNameCliente.SetFocus;

      fdProduto.Close ;
      fdProduto.Open;

  end;

end;

procedure TfrmCaixaVendas.btnVendaClick(Sender: TObject);


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

       begin


         quantidade := qrEstoque.FieldByName('quantidade').AsInteger - StrToInt(edtQuant.text); //q subtrai quantidade
         qrEstoque.Edit;
         qrEstoque.FieldByName('quantidade').Value   :=  quantidade ;
         qrEstoque.post;

        end;




           qrVendas.Insert;
  //          qrVendas.FieldByName('CodVenda').AsString                              := qrVendas.fieldbyname('Codvenda').AsString;
            qrVendas.FieldByName('ValorTotal').value                               := (lbvalorDinheiro.Caption);
            qrVendas.FieldByName('CodCli').asstring                                := Trim(EdtNameCliente.Text);
            qrVendas.FieldByName('DataVenda').AsDateTime                           := StrToDateTime(edtDataVenda.Text);
            qrVendas.post;
            qrvendas.sql.clear;
            qrVendas.close;



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
      totalvalor := 0;



      edtNameCliente.SetFocus;



      fdProduto.Close;
      fdProduto.Open;

  end;


end;

procedure TfrmCaixaVendas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCaixaVendas.edtCodProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f2 then
      begin

      frmConsultaProduto.ShowModal;

      edtCodProd.text :=  LocalizaCodProduto;
      edtCodProdKeyPress(self,keyEnter);


      end;
end;

procedure TfrmCaixaVendas.edtCodProdKeyPress(Sender: TObject; var Key: Char);
begin
       if key = #13 then
     begin
     with dmconexoes do
     begin
     try
       qrEstoque.Close  ;
       qrEstoque.SQL.Clear;
       qrEstoque.SQL.Add('SELECT * FROM PRODUTO WHERE CODIGO = :pcod')  ;
       qrEstoque.Parameters.ParamByName('pcod').Value :=  StrToInt(edtCodProd.Text) ;
       qrEstoque.Open;
     Except
          on e:exception do
          Application.MessageBox(pchar('Erro select Produto'+#13+e.Message),'',MB_OK) ;

     end;

                           lbNomeProd.Caption := qrEstoque.FieldByName('descricao').AsString;

      end;
      end;

      if Key = #13 then

      edtQuant.SetFocus;
end;

procedure TfrmCaixaVendas.edtDataVendaKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #32 then
 begin
   edtDataVenda.Text := FormatDateTime('dd/mm/yyyy',Date);
   edtCodProd.SetFocus;
 end;
end;

procedure TfrmCaixaVendas.EdtNameClienteChange(Sender: TObject);
begin

      edtValorProd.Clear;
      edtQuantRest.Clear;

end;

procedure TfrmCaixaVendas.EdtNameClienteExit(Sender: TObject);
begin
 VerificaCliente;
end;

procedure TfrmCaixaVendas.EdtNameClienteKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCaixaVendas.EdtNameClienteKeyPress(Sender: TObject; var Key: Char);
begin

     if key = #13 then
     begin
       VerificaCliente;
      end;
end;


procedure TfrmCaixaVendas.edtQuantKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
                                //floattostr(strtofloat(edtValorProd.Text)   StrToCurr(copy(edtValorProd.Caption,3,10))

    edtValorTotal.Text :=  floattostr(strtofloat(edtValorProd.Text) * strtofloat(edtQuant.Text));        //calculo de multiplicação
    edtValorTotal.SetFocus;

  end;
end;

procedure TfrmCaixaVendas.edtValorTotalKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  btnConfirma.SetFocus;
end;

procedure TfrmCaixaVendas.FormShow(Sender: TObject);
begin
  pnbotvenda.Color := color_01;
  pnbotvenda.Font.Color := color_02;

  EdtNameCliente.SetFocus ;


end;

procedure TfrmCaixaVendas.VerificaCliente;
begin
 with DmConexoes do
 begin
  qrcomando.Close;
  qrcomando.SQL.Clear;
  qrcomando.SQL.Add('select * from cadastro where codigo = :pcod');
  qrcomando.Parameters.ParamByName('pcod').Value                                 := EdtNameCliente.Text;
  qrcomando.Open;

  if  qrcomando.IsEmpty  then

  begin

    Application.MessageBox('Cliente não encontrado','Atenção',MB_OK+MB_ICONERROR);
    EdtNameCliente.SetFocus;

  end

   Else

   begin
   lbNomeCli.Caption := qrCliente.FieldByName('nome').AsString ;
   edtDataVenda.SetFocus;

   end;




 end;

end;

end.
