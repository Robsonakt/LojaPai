unit untConsultaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmConsultaProduto = class(TForm)
    Panel1: TPanel;
    lbConsultaProduto: TLabel;
    edtPesquisaProduto: TEdit;
    DsProdutos: TDataSource;
    gridProduto: TDBGrid;
    procedure edtPesquisaProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure LocalizaProduto();
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmConsultaProduto: TfrmConsultaProduto;

implementation

uses  untDmConexao,principal_main , UntExibeCadastroProduto;

{$R *.dfm}


procedure TfrmConsultaProduto.edtPesquisaProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key = vk_up) or  (key = vk_down) then
   gridProduto.SetFocus;


end;


procedure TfrmConsultaProduto.FormCreate(Sender: TObject);
begin
     LocalizaProduto ;
end;

procedure TfrmConsultaProduto.FormShow(Sender: TObject);
begin
 LocalizaProduto ;
end;

procedure TfrmConsultaProduto.gridProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
   begin
     LocalizaCodProduto  := dmconexoes.qrEstoque.FieldByName('codigo').AsString;
     edtPesquisaProduto.Text := '';
     frmConsultaProduto.Close;

   end;
end;

procedure TfrmConsultaProduto.LocalizaProduto;
begin
  with dmConexoes.qrEstoque do
    begin
      Close;
      sql.Clear;
      sql.Add('SELECT * FROM produto WHERE (CODIGO IS NOT NULL) ');

      //*** Filtrar Produtos ***//
      if (trim(edtPesquisaProduto.Text) <> '') then
        begin
          SQL.Append(' AND ((Nome LIKE :pNome) OR (Cpf LIKE :pCpf) OR (Rg LIKE :pRg) OR (Telefone LIKE :pTelefone)  ) ');
          Parameters.ParamByName('pNome').Value      := '%'+edtPesquisaProduto.Text+'%';
          Parameters.ParamByName('pCpf').Value       := '%'+edtPesquisaProduto.Text+'%';
          Parameters.ParamByName('pTelefone').Value  := '%'+edtPesquisaProduto.Text+'%';
        end;

      Open;
    end;
end;



end.
