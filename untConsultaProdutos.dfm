object frmConsultaProduto: TfrmConsultaProduto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta Produto'
  ClientHeight = 418
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 368
    Width = 758
    Height = 50
    Align = alBottom
    TabOrder = 0
    object lbConsultaProduto: TLabel
      Left = 16
      Top = 7
      Width = 68
      Height = 13
      Caption = 'Nome Produto'
    end
    object edtPesquisaProduto: TEdit
      Left = 16
      Top = 26
      Width = 390
      Height = 21
      TabOrder = 0
      OnChange = edtPesquisaProdutoChange
      OnKeyDown = edtPesquisaProdutoKeyDown
    end
  end
  object gridProduto: TDBGrid
    Left = 0
    Top = 0
    Width = 748
    Height = 364
    DataSource = frmMain.dsProduto
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = gridProdutoKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Width = 399
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valorproduto'
        Visible = True
      end>
  end
  object DsProdutos: TDataSource
    DataSet = dmconexoes.qrEstoque
    Left = 336
    Top = 184
  end
end
