unit untCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmCliente = class(TForm)
    LbCodigoCliente: TLabel;
    LbNomeCli: TLabel;
    LbDataCadastroCliente: TLabel;
    edtCodCli: TEdit;
    edtDataCadastro: TMaskEdit;
    lbCpfCliente: TLabel;
    edtCpfCliente2: TEdit;
    lbEndereco: TLabel;
    lbNumero: TLabel;
    edtEndereco: TEdit;
    edtNumero: TEdit;
    lbNumeroTelefone: TLabel;
    edtTelefone2: TEdit;
    edtNomeCliente: TEdit;
    btnSalvar: TButton;
    edtTelefone: TMaskEdit;
    edtCpfCliente: TMaskEdit;
    btnSalva: TBitBtn;
    procedure edtCodCliKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataCadastroKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomeClienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtCpfCliente2KeyPress(Sender: TObject; var Key: Char);
    procedure edtEnderecoKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure edtTelefone2KeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCpfClienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation
uses
untDmConexao;
{$R *.dfm}

procedure TfrmCliente.btnSalvaClick(Sender: TObject);
begin
 with dmConexoes do
    begin

      qrCliente.Close;
      qrCliente.SQL.clear;
      qrCliente.sql.Add('SELECT * FROM [ROBSON].[dbo].[Cadastro]');
      qrCliente.open;
      qrCliente.First;



            qrCliente.Insert;
            dmConexoes.qrCliente.fieldbyname('NOME').asstring                               := trim(edtnomecliente.text);
            dmConexoes.qrCliente.fieldbyname('CPF').asstring                                := trim(edtcpfcliente.text);
            dmConexoes.qrCliente.fieldbyname('ENDERECO').asstring                           := trim(edtendereco.text);
            qrCliente.fieldbyname('numeroresidencia').asstring                   := trim(edtnumero.text);
            qrCliente.fieldbyname('TELEFONE').asstring                           := trim(edtTelefone.text);
            qrcliente.FieldByName('datacadastrocliente').AsDateTime              := StrToDateTime(edtDatacadastro.Text);
            qrCliente.post;

            application.MessageBox('Cliente Cadastrado com Sucesso','Cadastro  ',mb_ok+MB_ICONINFORMATION);

            qrcomando.close;
            qrcomando.sql.clear;
            qrcomando.sql.Add('SELECT MAX(codigo) AS ULTIMOCODIGO FROM [ROBSON].[dbo].[CADASTRO]');
            qrcomando.open;

            edtCodCli.TEXT := Inttostr(qrcomando.FieldByName('ULTIMOCODIGO').AsINTEGER +1);
            edtDataCadastro.Clear;
            edtCpfCliente.Clear;
            edtEndereco.Clear;
            edtNumero.Clear;
            edtTelefone.Clear;
            edtNomeCliente.Clear;



    end;
end;

procedure TfrmCliente.btnSalvarClick(Sender: TObject);
begin
 with dmConexoes do
    begin

      qrCliente.Close;
      qrCliente.SQL.clear;
      qrCliente.sql.Add('SELECT * FROM [ROBSON].[dbo].[Cadastro]');
      qrCliente.open;
      qrCliente.First;



            qrCliente.Insert;
            dmConexoes.qrCliente.fieldbyname('NOME').asstring                               := trim(edtnomecliente.text);
            dmConexoes.qrCliente.fieldbyname('CPF').asstring                                := trim(edtcpfcliente.text);
            dmConexoes.qrCliente.fieldbyname('ENDERECO').asstring                           := trim(edtendereco.text);
            qrCliente.fieldbyname('numeroresidencia').asstring                   := trim(edtnumero.text);
            qrCliente.fieldbyname('TELEFONE').asstring                           := trim(edtTelefone.text);
            qrcliente.FieldByName('datacadastrocliente').AsDateTime              := StrToDateTime(edtDatacadastro.Text);
            qrCliente.post;

            application.MessageBox('Cliente Cadastrado com Sucesso','Cadastro  ',mb_ok+MB_ICONINFORMATION);

            qrcomando.close;
            qrcomando.sql.clear;
            qrcomando.sql.Add('SELECT MAX(codigo) AS ULTIMOCODIGO FROM [ROBSON].[dbo].[CADASTRO]');
            qrcomando.open;

            edtCodCli.TEXT := Inttostr(qrcomando.FieldByName('ULTIMOCODIGO').AsINTEGER +1);
            edtDataCadastro.Clear;
            edtCpfCliente.Clear;
            edtEndereco.Clear;
            edtNumero.Clear;
            edtTelefone.Clear;
            edtNomeCliente.Clear;



    end;
end;

procedure TfrmCliente.edtCodCliKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 edtNomeCliente.SetFocus;
end;

procedure TfrmCliente.edtCpfCliente2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 edtEndereco.SetFocus;
end;

procedure TfrmCliente.edtCpfClienteKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
edtEndereco.SetFocus;
end;

procedure TfrmCliente.edtDataCadastroKeyPress(Sender: TObject; var Key: Char);
begin

 if Key = #32 then
 begin
   edtDataCadastro.Text := FormatDateTime('dd/mm/yyyy',Date);
   btnsalva.SetFocus;
 end;
end;

procedure TfrmCliente.edtEnderecoKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 edtNumero.SetFocus;
end;

procedure TfrmCliente.edtNomeClienteKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 edtCpfCliente.SetFocus;
end;

procedure TfrmCliente.edtNumeroKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 edtTelefone.SetFocus;
end;

procedure TfrmCliente.edtTelefone2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 edtDataCadastro.SetFocus;
end;

procedure TfrmCliente.edtTelefoneKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
edtDataCadastro.SetFocus;
end;

procedure TfrmCliente.FormShow(Sender: TObject);
begin
with dmconexoes do
begin
            qrcomando.close;
            qrcomando.sql.clear;
            qrcomando.sql.Add('SELECT MAX(codigo) AS ULTIMOCODIGO FROM [ROBSON].[dbo].[cadastro]');
            qrcomando.open;

            edtCodCli.TEXT := Inttostr(qrcomando.FieldByName('ULTIMOCODIGO').AsINTEGER +1);
end;

end;

end.
