object frmRelatorioProd: TfrmRelatorioProd
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Produto'
  ClientHeight = 819
  ClientWidth = 1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rlr_RelatorioProdutos: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dmconexoes.dsEstoque
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
      Height = 67
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
        Top = 22
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
      Top = 105
      Width = 718
      Height = 40
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 16
        Top = 6
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel2: TRLLabel
        Left = 80
        Top = 6
        Width = 62
        Height = 16
        Caption = 'Descri'#231#227'o'
      end
      object RLLabel3: TRLLabel
        Left = 359
        Top = 6
        Width = 29
        Height = 16
        Caption = 'Qtd.'
      end
      object RLLabel4: TRLLabel
        Left = 560
        Top = 6
        Width = 55
        Height = 16
        Caption = 'Vlr. Prod'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 145
      Width = 718
      Height = 32
      DataSource = dmconexoes.dsEstoque
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 29
        object RLDBText2: TRLDBText
          Left = 80
          Top = 6
          Width = 217
          Height = 16
          AutoSize = False
          DataField = 'descricao'
          DataSource = dmconexoes.dsEstoque
          Text = ''
        end
        object RLDBText1: TRLDBText
          Left = 16
          Top = 6
          Width = 42
          Height = 16
          DataField = 'codigo'
          DataSource = dmconexoes.dsEstoque
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 359
          Top = 6
          Width = 67
          Height = 16
          DataField = 'quantidade'
          DataSource = dmconexoes.dsEstoque
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 560
          Top = 6
          Width = 73
          Height = 16
          DataField = 'valorproduto'
          DataSource = dmconexoes.dsEstoque
          Text = ''
        end
      end
    end
  end
end
