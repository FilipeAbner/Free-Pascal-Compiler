program Teste;

uses
  SysUtils, Math, StrUtils, Classes, TypInfo, DateUtils, Variants;

var
  resultado: Double;
  
function Funcao_teste(x, k: Double; y: Integer; z: Integer): Double;
var
  cond, cond1: Boolean;
  r, o: Double;
begin
  o := 0.0;
  r := 0.0;

  if (y mod 2 = 0) then
  begin
    while x < y do
    begin
      o := o + (x * 2) + (k / (z + 1));
      x := x + 1;
    end
  end
  else
  begin
    while x < y do
    begin
      o := o + (x * 3) - (k / (z + 2));
      x := x + 1;
    end
  end;

  r := o + k;
  Funcao_teste := r;
end;

begin
  resultado := Funcao_teste(48.5, 12.015, 78, 10);
end.
