program Teste;

uses
  SysUtils, Math, StrUtils, Classes, TypInfo, DateUtils, Variants;

function Multiplicacao(x, y, k: Integer; z: Integer): Integer;
var
  cond, cond1, cond2: Boolean;
  r, o: Double;
begin
  x := 1;
  y := 2; 
  Multiplicacao := ((x + y) * (x - y) + (x * y) div 2 - 10) * 3 + (x * x) - (y * 4);
end;

begin
  
end.
