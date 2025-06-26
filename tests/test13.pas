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
  y := 4; 

  while x < y do
  begin
    if (x mod 2 = 0) then
      o := o + x * 2
    else
      o := o + x * 3;

    x := x + 1;
  end;
  
  Multiplicacao := o;
end;

begin
  resultado := Multiplicacao(0, 0, 0, 0);
  Writeln('Resultado final: ', resultado);
end.
