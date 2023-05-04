object frmVendaItens: TfrmVendaItens
  Left = 0
  Top = 0
  Caption = 'Consulta de vendas'
  ClientHeight = 365
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnFrontal: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 365
    Align = alClient
    TabOrder = 0
    object pnSuperior: TPanel
      Left = 1
      Top = 1
      Width = 755
      Height = 41
      Align = alTop
      TabOrder = 0
    end
    object pnInferior: TPanel
      Left = 1
      Top = 323
      Width = 755
      Height = 41
      Align = alBottom
      TabOrder = 1
    end
    object dbProdutos: TDBGrid
      Left = 1
      Top = 48
      Width = 744
      Height = 257
      DataSource = dsVenda
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CodCli'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorTotal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorRestante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorPago'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataVenda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodVenda'
          Visible = True
        end>
    end
  end
  object dsVenda: TDataSource
    DataSet = dmconexoes.qrVendas
    Left = 512
    Top = 1
  end
end
