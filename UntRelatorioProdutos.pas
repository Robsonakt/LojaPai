unit UntRelatorioProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfrmRelatorioProd = class(TForm)
    rlr_RelatorioProdutos: TRLReport;
    RLBand_Cabecalho: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel_Cabecalho: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLLabel4: TRLLabel;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioProd: TfrmRelatorioProd;

implementation

{$R *.dfm}

uses untDmConexao;

end.
