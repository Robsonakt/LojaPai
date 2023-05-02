object frmExibeCadastroCliente: TfrmExibeCadastroCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'ExibeCadastroCliente'
  ClientHeight = 441
  ClientWidth = 710
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LbCodigoCliente: TLabel
    Left = 16
    Top = 21
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object LbNomeCli: TLabel
    Left = 16
    Top = 67
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object LbDataCadastroCliente: TLabel
    Left = 17
    Top = 250
    Width = 106
    Height = 13
    Caption = 'Data Cadastro Cliente'
  end
  object lbCpfCliente: TLabel
    Left = 368
    Top = 67
    Width = 22
    Height = 13
    Caption = 'CPF '
  end
  object lbEndereco: TLabel
    Left = 16
    Top = 127
    Width = 48
    Height = 13
    Caption = 'Endere'#231'o '
  end
  object lbNumero: TLabel
    Left = 410
    Top = 127
    Width = 12
    Height = 13
    Caption = 'N'#186
  end
  object lbNumeroTelefone: TLabel
    Left = 16
    Top = 187
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object lbSaldDeve: TLabel
    Left = 448
    Top = 250
    Width = 73
    Height = 13
    Caption = 'Saldo Devedor '
  end
  object lbPago: TLabel
    Left = 448
    Top = 293
    Width = 24
    Height = 13
    Caption = 'Pago'
  end
  object edtCodCli: TEdit
    Left = 16
    Top = 40
    Width = 40
    Height = 21
    TabOrder = 0
    OnKeyDown = edtCodCliKeyDown
    OnKeyPress = edtCodCliKeyPress
  end
  object edtDataCadastro: TMaskEdit
    Left = 17
    Top = 269
    Width = 97
    Height = 21
    Enabled = False
    EditMask = '99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object edtNomeCli: TDBEdit
    Left = 17
    Top = 86
    Width = 288
    Height = 21
    DataField = 'nome'
    DataSource = frmConsultaCliente.dsConsultaCliente
    Enabled = False
    TabOrder = 2
  end
  object edtCpf: TDBEdit
    Left = 368
    Top = 86
    Width = 217
    Height = 21
    DataField = 'cpf'
    DataSource = frmConsultaCliente.dsConsultaCliente
    Enabled = False
    TabOrder = 3
  end
  object edtEndereco: TDBEdit
    Left = 17
    Top = 146
    Width = 331
    Height = 21
    DataField = 'endereco'
    DataSource = frmConsultaCliente.dsConsultaCliente
    Enabled = False
    TabOrder = 4
  end
  object edtNumResidencia: TDBEdit
    Left = 410
    Top = 146
    Width = 34
    Height = 21
    DataField = 'numeroresidencia'
    DataSource = frmConsultaCliente.dsConsultaCliente
    Enabled = False
    TabOrder = 5
  end
  object edtTelefone: TDBEdit
    Left = 17
    Top = 206
    Width = 97
    Height = 21
    DataField = 'telefone'
    DataSource = frmConsultaCliente.dsConsultaCliente
    Enabled = False
    TabOrder = 6
  end
  object btneditar: TButton
    Left = 230
    Top = 350
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 7
    OnClick = btneditarClick
  end
  object bntExcluir: TButton
    Left = 347
    Top = 350
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 8
    OnClick = bntExcluirClick
  end
  object edtfiadotest: TDBEdit
    Left = 448
    Top = 269
    Width = 137
    Height = 21
    DataField = 'valorfiado'
    DataSource = frmConsultaCliente.dsConsultaCliente
    Enabled = False
    TabOrder = 9
  end
  object bntPago: TButton
    Left = 448
    Top = 350
    Width = 75
    Height = 25
    Caption = 'Pago'
    TabOrder = 10
    OnClick = bntPagoClick
  end
  object edtPago: TEdit
    Left = 448
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 11
  end
end
