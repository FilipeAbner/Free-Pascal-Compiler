program Teste;

uses
  SysUtils;
  
var
  PI: double;

var
  a, b: integer;
  msg: string;
begin
  PI := 3;
  
  msg := 'Hello ''World''! Valor de PI: ' + #10 + 'é igual a '  + FloatToStr(PI) + #10 + 'Fim.';
  writeln(msg);

  a := 10;
  b := $1F;
  a := b mod 3 + 2 * a - 1;
  
  if a > b then
    b := b + 1
  else
    b := b - 1;
  
end.
