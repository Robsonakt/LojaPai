object frmProduto: TfrmProduto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produto'
  ClientHeight = 332
  ClientWidth = 518
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
  object LbCodProd: TLabel
    Left = 32
    Top = 53
    Width = 74
    Height = 13
    Caption = 'Codigo Produto'
  end
  object Lbnomeproduto: TLabel
    Left = 32
    Top = 99
    Width = 102
    Height = 13
    Caption = 'Descri'#231#227'o do produto'
  end
  object Lbdatacadastroproduto: TLabel
    Left = 200
    Top = 201
    Width = 26
    Height = 13
    Caption = 'Data '
  end
  object lbQuant: TLabel
    Left = 32
    Top = 155
    Width = 97
    Height = 13
    Caption = 'Quantidade Produto'
  end
  object lbvalorproduto: TLabel
    Left = 32
    Top = 201
    Width = 65
    Height = 13
    Caption = 'Valor Produto'
  end
  object edtCodProd: TEdit
    Left = 32
    Top = 72
    Width = 49
    Height = 21
    Enabled = False
    TabOrder = 0
    OnKeyPress = edtCodProdKeyPress
  end
  object edtDescricaoProd: TEdit
    Left = 32
    Top = 118
    Width = 369
    Height = 21
    TabOrder = 1
    OnKeyPress = edtDescricaoProdKeyPress
  end
  object edtDataProd: TMaskEdit
    Left = 200
    Top = 220
    Width = 97
    Height = 21
    EditMask = '99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
    OnKeyPress = edtDataProdKeyPress
  end
  object edtQuantProd: TEdit
    Left = 32
    Top = 174
    Width = 49
    Height = 21
    TabOrder = 3
    OnKeyPress = edtQuantProdKeyPress
  end
  object btnSalvar: TButton
    Left = 216
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = btnSalvarClick
  end
  object edtValorProduto: TEdit
    Left = 32
    Top = 220
    Width = 49
    Height = 21
    TabOrder = 5
    OnKeyPress = edtValorProdutoKeyPress
  end
end
