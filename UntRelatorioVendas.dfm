object frmRelatorioVendas: TfrmRelatorioVendas
  Left = 0
  Top = 0
  Caption = 'frmRelatorioVendas'
  ClientHeight = 799
  ClientWidth = 1018
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rlr_RelatorioVendas: TRLReport
    Left = 0
    Top = 4
    Width = 794
    Height = 1123
    DataSource = frmVendaItens.dsVenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 297.000000000000000000
    Transparent = False
    object RLBand_Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 55
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 0
        Width = 39
        Height = 16
        Align = faLeftTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Text = ''
      end
      object RLLabel_Cabecalho: TRLLabel
        Left = 315
        Top = 16
        Width = 88
        Height = 22
        Align = faCenter
        Caption = 'Relat'#243'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 647
        Top = 0
        Width = 71
        Height = 19
        Align = faRightTop
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Info = itHour
        Text = ''
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 93
      Width = 718
      Height = 34
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 16
        Top = 6
        Width = 68
        Height = 16
        Caption = 'Cod.Venda'
      end
      object RLLabel2: TRLLabel
        Left = 112
        Top = 6
        Width = 65
        Height = 16
        Caption = 'Desc.Prod'
      end
      object RLLabel3: TRLLabel
        Left = 315
        Top = 6
        Width = 29
        Height = 16
        Caption = 'Qtd.'
      end
      object RLLabel4: TRLLabel
        Left = 440
        Top = 6
        Width = 74
        Height = 16
        Caption = 'Vlr.Prod.Uni'
      end
      object RLLabel5: TRLLabel
        Left = 568
        Top = 6
        Width = 52
        Height = 16
        Caption = 'Vlr.Total'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 127
      Width = 718
      Height = 34
      object RLDBText1: TRLDBText
        Left = 16
        Top = 6
        Width = 64
        Height = 16
        DataField = 'CodVenda'
        DataSource = frmVendaItens.dsVenda
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 112
        Top = 6
        Width = 68
        Height = 16
        DataField = 'DescriProd'
        DataSource = frmVendaItens.dsVenda
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 315
        Top = 3
        Width = 70
        Height = 16
        DataField = 'Quantidade'
        DataSource = frmVendaItens.dsVenda
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 440
        Top = 6
        Width = 80
        Height = 16
        DataField = 'ValorProdUni'
        DataSource = frmVendaItens.dsVenda
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 568
        Top = 6
        Width = 62
        Height = 16
        DataField = 'ValorTotal'
        DataSource = frmVendaItens.dsVenda
        Text = ''
      end
    end
  end
end
