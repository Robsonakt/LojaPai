unit UntRelatorioCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfrmRelatorioCli = class(TForm)
    rlr_RelatorioClientes: TRLReport;
    RLBand_Cabecalho: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel_Cabecalho: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioCli: TfrmRelatorioCli;

implementation

{$R *.dfm}

uses untDmConexao, UntExibeCadastroCliente;

end.
