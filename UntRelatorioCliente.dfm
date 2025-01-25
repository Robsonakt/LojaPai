object frmRelatorioCli: TfrmRelatorioCli
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Cliente'
  ClientHeight = 891
  ClientWidth = 1051
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rlr_RelatorioClientes: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dmconexoes.dsCliente
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
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel2: TRLLabel
        Left = 112
        Top = 6
        Width = 38
        Height = 16
        Caption = 'Nome'
      end
      object RLLabel3: TRLLabel
        Left = 359
        Top = 6
        Width = 27
        Height = 16
        Caption = 'End'
      end
      object RLLabel4: TRLLabel
        Left = 560
        Top = 6
        Width = 30
        Height = 16
        Caption = 'CPF'
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
        Width = 42
        Height = 16
        DataField = 'codigo'
        DataSource = dmconexoes.dsCliente
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 112
        Top = 6
        Width = 233
        Height = 16
        DataField = 'nome'
        DataSource = dmconexoes.dsCliente
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 359
        Top = 3
        Width = 74
        Height = 16
        DataField = 'endereco'
        DataSource = dmconexoes.dsCliente
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 560
        Top = 6
        Width = 137
        Height = 16
        DataField = 'cpf'
        DataSource = dmconexoes.dsCliente
        Text = ''
      end
    end
  end
end
