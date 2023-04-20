unit UntFuncoes;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.DBCtrls;

 procedure somenteInt (edit: Tedit);

implementation
uses
  untDmConexao;

  procedure somenteInt(edit : Tedit);
  var icod : integer ;
  begin


  try
  icod := strtoint(edit.Text);

  except
     edit.Clear;
  end;


  end;

  end.




