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
  o := 0.0;

  if (y mod 2 = 0) then
  begin
    while x < y do
    begin
      o := o + x * 2;
      x := x + 1;
    end;
  end
  else
  begin
    while x < y do
    begin
      o := o + x * 3;
      x := x + 1;
    end;
  end;

  Multiplicacao := o;
end;

begin
  resultado := Multiplicacao(0, 0, 0, 0);
  Writeln('Resultado final: ', resultado);
end.
