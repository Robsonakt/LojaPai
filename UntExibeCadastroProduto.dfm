object ExibeCadastroProduto: TExibeCadastroProduto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'ExibeCadastroProduto'
  ClientHeight = 421
  ClientWidth = 680
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
    Left = 27
    Top = 53
    Width = 74
    Height = 13
    Caption = 'Codigo Produto'
  end
  object Lbnomeproduto: TLabel
    Left = 27
    Top = 107
    Width = 102
    Height = 13
    Caption = 'Descri'#231#227'o do produto'
  end
  object Lbdatacadastroproduto: TLabel
    Left = 27
    Top = 256
    Width = 26
    Height = 13
    Caption = 'Data '
  end
  object lbQuant: TLabel
    Left = 27
    Top = 153
    Width = 97
    Height = 13
    Caption = 'Quantidade Produto'
  end
  object valor: TLabel
    Left = 27
    Top = 199
    Width = 80
    Height = 13
    Caption = 'Valor do Produto'
  end
  object edtCodProd: TEdit
    Left = 27
    Top = 72
    Width = 47
    Height = 21
    TabOrder = 0
    OnKeyDown = edtCodProdKeyDown
    OnKeyPress = edtCodProdKeyPress
  end
  object edtDataProd: TMaskEdit
    Left = 27
    Top = 275
    Width = 97
    Height = 21
    Enabled = False
    EditMask = '99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object btnEditaCadProd: TButton
    Left = 176
    Top = 338
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
    OnClick = btnEditaCadProdClick
  end
  object btnExcluiCadProd: TButton
    Left = 302
    Top = 338
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = btnExcluiCadProdClick
  end
  object btnSalvar: TBitBtn
    Left = 424
    Top = 338
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = btnSalvarClick
  end
  object edtValorProduto: TEdit
    Left = 27
    Top = 218
    Width = 57
    Height = 21
    Enabled = False
    TabOrder = 5
  end
  object edtQuantidade: TEdit
    Left = 27
    Top = 172
    Width = 57
    Height = 21
    Enabled = False
    TabOrder = 6
  end
  object edtNomeProd: TEdit
    Left = 27
    Top = 126
    Width = 334
    Height = 21
    Enabled = False
    TabOrder = 7
  end
end
