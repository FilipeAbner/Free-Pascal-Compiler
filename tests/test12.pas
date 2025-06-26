program Teste;

uses
  SysUtils, Math, StrUtils, Classes, TypInfo, DateUtils, Variants;

var
  resultado: Boolean;
  
function Multiplicacao(x, y, k: Integer; z: Integer): Boolean;
var
  cond, cond1, cond2: Boolean;
  r, o: Double;
begin
  x := 1;
  y := 3;

  if x < y then
  begin
    if x + 1 = y then
      Multiplicacao := True
    else
      Multiplicacao := False
  end
  else
  begin
    if x = y then
      Multiplicacao := True
    else
      Multiplicacao := False
  end;
end;

begin
  resultado := Multiplicacao(1, 2, 0, 0);
  Writeln(resultado);
end.
