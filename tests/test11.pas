program Teste;

uses
  SysUtils, Math, StrUtils, Classes, TypInfo, DateUtils, Variants;

var
  resultado: Double;
  
function Multiplicacao(x, y, k: Integer; z: Integer): Double;
var
  cond, cond1, cond2: Boolean;
  r, o: Double;
begin
  x := 1;
  y := 3; 

  while x < y do
  begin
    r := (x + 2);
    x := x + 1;
  end;

  Multiplicacao := r;
end;

begin
  resultado := Multiplicacao(1, 2, 0, 0);
  Writeln(resultado);
end.
