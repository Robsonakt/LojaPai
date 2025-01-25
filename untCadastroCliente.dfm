object frmCliente: TfrmCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Cliente'
  ClientHeight = 367
  ClientWidth = 645
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
    Left = 354
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
  object edtCodCli: TEdit
    Left = 16
    Top = 40
    Width = 41
    Height = 21
    Enabled = False
    TabOrder = 0
    OnKeyPress = edtCodCliKeyPress
  end
  object edtNomeCliente: TEdit
    Left = 16
    Top = 86
    Width = 329
    Height = 21
    TabOrder = 1
    OnKeyPress = edtNomeClienteKeyPress
  end
  object edtDataCadastro: TMaskEdit
    Left = 17
    Top = 269
    Width = 97
    Height = 21
    EditMask = '99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
    OnKeyPress = edtDataCadastroKeyPress
  end
  object edtCpfCliente2: TEdit
    Left = 368
    Top = 113
    Width = 217
    Height = 21
    TabOrder = 3
    Visible = False
    OnKeyPress = edtCpfCliente2KeyPress
  end
  object edtEndereco: TEdit
    Left = 16
    Top = 146
    Width = 329
    Height = 21
    TabOrder = 4
    OnKeyPress = edtEnderecoKeyPress
  end
  object edtNumero: TEdit
    Left = 354
    Top = 146
    Width = 41
    Height = 21
    TabOrder = 5
    OnKeyPress = edtNumeroKeyPress
  end
  object edtTelefone2: TEdit
    Left = 249
    Top = 206
    Width = 321
    Height = 21
    TabOrder = 6
    Visible = False
    OnKeyPress = edtTelefone2KeyPress
  end
  object btnSalvar: TButton
    Left = 262
    Top = 269
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 7
    Visible = False
    OnClick = btnSalvarClick
  end
  object edtTelefone: TMaskEdit
    Left = 17
    Top = 206
    Width = 208
    Height = 21
    EditMask = '!\(99\)00000-0000;1;_'
    MaxLength = 14
    TabOrder = 8
    Text = '(  )     -    '
    OnKeyPress = edtTelefoneKeyPress
  end
  object edtCpfCliente: TMaskEdit
    Left = 368
    Top = 86
    Width = 215
    Height = 21
    EditMask = '000\.000\.000\-00;1;_'
    MaxLength = 14
    TabOrder = 9
    Text = '   .   .   -  '
    OnKeyPress = edtCpfClienteKeyPress
  end
  object btnSalva: TBitBtn
    Left = 255
    Top = 300
    Width = 90
    Height = 44
    Caption = 'Salvar'
    Glyph.Data = {
      42100000424D4210000000000000420000002800000020000000200000000100
      20000300000000100000130B0000130B000000000000000000000000FF0000FF
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000087873F71878940EF86863BFF8686
      3BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF8686
      3BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF8686
      3BFF86863BFF86863BFF86863BFF86863BFF878840EF88883F70000000000000
      000000000000000000000000000088883B3C898E46F3A3CF98FFA8DBA8FF97B0
      72FF90A15AFF9ABD79FF9ABD79FF9ABD79FF9ABD79FF9ABD79FF9ABD79FF9ABD
      79FF9ABD79FF9ABD79FF9ABD79FF9ABD79FF9ABD79FF9ABD79FF9ABD79FF9ABD
      79FF9ABD79FF90A15AFF97B072FFA8DBA8FFA3CE99FF898E46F385853C3B0000
      000000000000000000000000000086863B7995AE6EFCA8DBA8FFA8DBA8FF97B0
      72FF90A15AFF9ABD79FF9ABD79FF9ABD79FF9ABD79FF9ABD79FF9ABD79FF9ABD
      79FF9ABD79FF9ABD79FF9ABD79FF9ABD79FF9ABD79FF9ABD79FF9ABD79FF9ABD
      79FF9ABD79FF90A15AFF97B072FFA8DBA8FFA8DBA8FF94AD6DFC86863B790000
      000000000000000000000000000085853B8097B072FFA8DBA8FFA8DBA8FF97B0
      72FF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF8686
      3BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF8686
      3BFF86863BFF86863BFF97B072FFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000085853B8086863BFF86863BFF99B679FF97B0
      72FF92BB85FF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0
      CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0
      CFFF9EF0CFFF92BB85FF97B072FF99B679FF86863BFF86863BFF85853B800000
      000000000000000000000000000085853B8090A15AFF90A15AFF97B072FF97B0
      72FF92BB85FF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0
      CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0
      CFFF9EF0CFFF92BB85FF97B072FF97B072FF90A15AFF90A15AFF85853B800000
      000000000000000000000000000085853B8090A15AFF90A15AFF97B072FF97B0
      72FF92BB85FF9EF0CFFF96CA9AFF86863BFF86863BFF86863BFF86863BFF8686
      3BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF95CA
      9BFF9EF0CFFF92BB85FF97B072FF97B072FF90A15AFF90A15AFF85853B800000
      000000000000000000000000000085853B8086863BFF86863BFF99B679FF97B0
      72FF92BB85FF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0
      CFFF9EF0CFFF9EEFCFFB9EF0CFC09DF0CE9A9DEFCF809EF0CF779EF0CF779EF0
      CF779EF0CF778DA76ABB97B072FF99B679FF86863BFF86863BFF85853B800000
      000000000000000000000000000085853B8097B072FFA8DBA8FFA8DBA8FF97B0
      72FF92BB85FF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9DF0
      CFF19EF0CE7A9BF0D41200000000000000000000000000000000000000000000
      00000000000085853B8097B072FFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000085853B8097B072FFA8DBA8FFA8DBA8FF97B0
      72FF92BB85FF9EF0CFFF96CA9AFF86863BFF86863BFF86863BFF86863BFF8686
      3BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF8585
      3B5A0000000085853B8097B072FFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000085853B8097B072FFA8DBA8FFA8DBA8FF97B0
      72FF92BB85FF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9DF0CFCC99E5CC0A0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000085853B8097B072FFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000085853B8097B072FFA8DBA8FFA8DBA8FF97B0
      72FF92BB85FF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFF09AECD11C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000085853B8097B072FFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000085853B8097B072FFA8DBA8FFA8DBA8FF97B0
      72FF92BB85FF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CE7986863ADA86863BFF8686
      3BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF8585
      3B5A0000000085853B8097B072FFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000085853B8097B072FFA8DBA8FFA8DBA8FF97B0
      72FF92BB85FF9EF0CFFF9EF0CFFF9EEFCFFBA5F0D21100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000085853B8097B072FFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000085853B8097B072FFA8DBA8FFA8DBA8FF97B0
      72FF92BB85FF9EF0CFFF9EF0CFFF9DF0CEBF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000085853B8097B072FFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000085853B8097B072FFA8DBA8FFA8DBA8FF97B0
      72FF92BB85FF9EF0CFFF9EF0CFFF9EF0CE990000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000085853B8097B072FFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000085853B8097B072FFA8DBA8FFA8DBA8FF99B6
      79FF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF8686
      3BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF8686
      3BFF86863BFF86863BFF99B679FFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000085853B8097B072FFA8DBA8FFA8DBA8FFA8DB
      A8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DB
      A8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DB
      A8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000085853B8097B072FFA8DBA8FFA8DBA8FFA8DB
      A8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DB
      A8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DB
      A8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000085853B8097B072FFA8DBA8FFA8DBA8FF95AE
      6FF787883DFD86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF8686
      3BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF8686
      3BFF86863BFF87883DFF96AE6FFFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000085853B8097B072FFA8DBA8FFA8DBA8FF8788
      3DFD9CE8C4FF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0
      CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9DEDCBFF92BD86FC8C9850FD9ABD
      79FF9ABD79FF99B974FF86883DFFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000085853B8097B072FFA8DBA8FFA8DBA8FF8686
      3BFF9EF0CFFF9CE8C4FF92BC87FF91B780FF92BC87FF9CE8C4FF9EF0CFFF9EF0
      CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EEDCBFF86883EFE9ABD
      79FF9ABD79FF9ABD79FF86863BFFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000086863B7D95AE6FFEA8DBA8FFA8DBA8FF8686
      3BFF9EF0CFFF93BE89FF86883EC087873C7786883EC093BE8AFF9EF0CFFF9EF0
      CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF9EF0CFFF86863BFF9ABD
      79FF9ABD79FF9ABD79FF86863BFFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000086863A4E8C944DF2A8DAA6FFA8DBA8FF8686
      3BFF9EF0CFFF92BB85FF85853B800000000085853B8092BB85FF9EF0CFFF9DF0
      CFF69DEFCFA79DEFCF809EF0CF779EF0CF779EF0CF779EF0CF7786863BFF9ABD
      79FF9ABD79FF9ABD79FF86863BFFA8DBA8FFA8DBA8FF97B072FF85853B800000
      0000000000000000000000000000FFFF0001878A41B68F9E59F5A8DAA6FF8686
      3BFF9EF0CFFF92BB85FF85853B800000000085853B8092BB85FF9DF0CECFA1F1
      D02600000000000000000000000000000000000000000000000086863BFF9ABD
      79FF9ABD79FF9ABD79FF86863BFFA8DBA8FFA8DBA8FF97B072FF85853B800000
      00000000000000000000000000000000000099993305878A3FB8909E59F48686
      3BFF9EF0CFFF92BB85FF85853B800000000085853B8090B983FAA0ECCF1B0000
      000000000000000000000000000000000000000000000000000086863BFF9ABD
      79FF9ABD79FF9ABD79FF86863BFFA8DBA8FFA8DBA8FF97B072FF85853B800000
      0000000000000000000000000000000000000000000099993305878A3FB88686
      3BFF9EEECCFF93BE89FF87883DC885853A8887883DC890B279CF000000000000
      000000000000000000000000000000000000000000000000000086863BFF9ABD
      79FF9ABD79FF9ABD79FF86863BFFA8DBA8FFA8DBA8FF97B072FF85853B800000
      000000000000000000000000000000000000000000000000000099993305878B
      42B98CA464F59CE6C1FF93C08CFF93BF8AFF93C08CFF99E0BB8C000000000000
      000000000000000000000000000000000000000000000000000086863BFF9ABD
      79FF9ABD79FF9ABD79FF86863BFFA8DBA8FFA8DBA8FF95AE6EFC86863B790000
      0000000000000000000000000000000000000000000000000000000000009999
      3305878B42B98CA363F59CE7C3FF9EF0CFFF9EF0CFFF9DEFCF80000000000000
      000000000000000000000000000000000000000000000000000086863BFF9ABD
      79FF9ABD79FF9ABD79FF86863BFFA8DBA8FFA3CF99FF898E46F388883B3C0000
      0000000000000000000000000000000000000000000000000000000000000000
      000099993305888D449686893FF586863BFF86863BFF86863BFF86863BFF8686
      3BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF86863BFF8686
      3BFF86863BFF86863BFF86863BFF86863BFF86893EF087873F71000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    TabOrder = 10
    OnClick = btnSalvaClick
  end
end
