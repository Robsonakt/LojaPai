unit UntExibeCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Buttons;

type
  TfrmExibeCadastroCliente = class(TForm)
    LbCodigoCliente: TLabel;
    LbNomeCli: TLabel;
    LbDataCadastroCliente: TLabel;
    lbCpfCliente: TLabel;
    lbEndereco: TLabel;
    lbNumero: TLabel;
    lbNumeroTelefone: TLabel;
    edtCodCli: TEdit;
    edtDataCadastro: TMaskEdit;
    btneditar: TButton;
    bntExcluir: TButton;
    lbSaldDeve: TLabel;
    edtfiadotest: TDBEdit;
    bntPago: TButton;
    edtPago: TEdit;
    lbPago: TLabel;
    edtTel: TEdit;
    edtEnd: TEdit;
    edtNumCasa: TEdit;
    edtCpfCli: TEdit;
    btnSalvar: TBitBtn;
    edtNomeCliente: TEdit;
    procedure edtCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodCliKeyPress(Sender: TObject; var Key: Char);

    procedure FormShow(Sender: TObject);
    procedure bntExcluirClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure bntPagoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExibeCadastroCliente: TfrmExibeCadastroCliente ;
  LocalizaCodigoCli : string ;
  pago : Currency ;

implementation

uses  untDmConexao,principal_main , untConsultaCliente, UntFuncoes, UntVendas,
  untCadastroCliente, untCadastroProduto, untConsultaProdutos,
  UntExibeCadastroProduto, UntFiadoCli, Venda_Itens;

{$R *.dfm}



procedure TfrmExibeCadastroCliente.bntExcluirClick(Sender: TObject);
begin
       begin
       with dmconexoes do
       begin
       qrcliente.Close  ;
       qrcliente.SQL.Clear;
       qrcliente.SQL.text := 'delete FROM CADASTRO WHERE CODIGO = :pcod'  ;
       qrcliente.Parameters.ParamByName('pcod').Value :=  edtcodCli.Text ;
       qrcliente.ExecSQL;

       edtDataCadastro.clear;
       edtfiadotest.Clear;
       edtPago.Clear;
       edtfiadotest.Clear;
       edtTel.Clear;
       edtNumCasa.Clear;
       edtNomeCliente.Clear;

       end;
       end;

end;



procedure TfrmExibeCadastroCliente.bntPagoClick(Sender: TObject);

begin

  with dmconexoes do
   begin


     pago := qrCliente.FieldByName('valorfiado').AsCurrency - StrToCurr(edtPago.text); // passando valor para "reais" direto do banco, mudado no dm para currency(dinheiro) qrcliente>valorfiado
     qrCliente.Edit;
     qrCliente.FieldByName('valorfiado').Value   :=  pago ;
     qrCliente.post;

   end;


      application.MessageBox (pchar('Valor pago '+ #13+ 'R$' + edtpago.text),'Venda  ',mb_ok+MB_ICONINFORMATION);
      edtPago.clear ;

end;

procedure TfrmExibeCadastroCliente.btneditarClick(Sender: TObject);
begin
  edtNomeCliente.Enabled      := true ;
  edtEnd.Enabled              := true ;
  edtNumCasa.Enabled          := true ;
  edtTel.Enabled              := true ;
  edtCpfCli.Enabled           := true ;
end;

procedure TfrmExibeCadastroCliente.btnSalvarClick(Sender: TObject);
begin
  with dmconexoes do
  begin
  qrCliente.Close  ;
  qrCliente.SQL.Clear;
  qrCliente.SQL.text := 'UPDATE  Cadastro SET  nome = :PNome, cpf =  :PCPF, endereco = :PEnd, telefone = :PTel, numeroresidencia = :PNumC  WHERE CODIGO = :pcod';
  qrCliente.Parameters.ParamByName('PNome').Value     :=  edtNomeCliente.Text ;
  qrCliente.Parameters.ParamByName('PCPF').Value      :=  edtCpfCli.Text ;
  qrCliente.Parameters.ParamByName('PEnd').Value      :=  edtEnd.Text ;
  qrCliente.Parameters.ParamByName('pTel').Value      :=  edtTel.Text ;
  qrCliente.Parameters.ParamByName('pNumC').Value     :=  edtNumCasa.Text ;
  qrCliente.Parameters.ParamByName('pcod').Value      :=  edtCodCli.Text ;
  qrCliente.ExecSQL;

   Application.MessageBox('Cliente Gravado com Sucesso!!','Aviso',mb_ok+MB_ICONINFORMATION) ;
   btneditar.Enabled := true ;

   edtNomeCliente.Enabled           := not edtNomeCliente.Enabled ;
   edtCpfCli.Enabled                := not edtCpfCli.Enabled ;
   edtEnd.Enabled                   := not edtEnd.Enabled ;
   edtTel.Enabled                   := not edtTel.Enabled ;
   edtNumCasa.Enabled               := not edtNumCasa.Enabled ;

  end;

end;

procedure TfrmExibeCadastroCliente.edtCodCliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
with dmconexoes do

  if key = vk_f2 then
      begin

      frmConsultaCliente.ShowModal;

      edtCodCli.text :=  LocalizaCodigoCli;
      edtCodCliKeyPress(self,keyEnter);


      end;

end;

procedure TfrmExibeCadastroCliente.edtCodCliKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
     begin
     with dmconexoes do
     begin
       qrcliente.Close  ;
       qrcliente.SQL.Clear;
       qrcliente.SQL.Add('SELECT * FROM CADASTRO WHERE CODIGO = :pcod')  ;
       qrcliente.Parameters.ParamByName('pcod').Value :=  edtcodCli.Text ;
       qrcliente.Open;

       edtDataCadastro.Text     :=  FormatDateTime('dd/mm/yyyy',qrcliente.FieldByName('datacadastrocliente').AsDateTime) ;
       edtNoMeCliente.Text      :=  qrCliente.FieldByName('nome').AsString;
       edtCpfCli.Text           :=  qrCliente.FieldByName('cpf').AsString;
       edtEnd.Text              :=  qrCliente.FieldByName('endereco').AsString;
       edtTel.Text              :=  qrCliente.FieldByName('telefone').AsString;
       edtNumCasa.Text          :=  qrCliente.FieldByName('numeroresidencia').AsString;

      end;
      end;


end;




procedure TfrmExibeCadastroCliente.FormShow(Sender: TObject);

  begin
   with dmConexoes do
   begin
   qrcliente.Close  ;
   qrcliente.SQL.Clear;
   qrcliente.SQL.Add('SELECT * FROM CADASTRO WHERE CODIGO = 0')  ;
   qrcliente.Open;

   edtCodCli.Text := '';
   edtDataCadastro.Text := '';
   end;
  end;


end.
