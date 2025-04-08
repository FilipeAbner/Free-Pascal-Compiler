program Teste;
const
  PI = 3.14;
  Escape = #27;
var
  a, b: integer;
  msg: string;
begin
  msg := 'Hello ''World''! Valor de PI: ' + #10 + 'Fim.';
  a := 10;
  b := $1F;
  a := b mod 3 + 2 * a - 1;
  if a > b then
    b := b + 1
  else
    b := b - 1;
end.
