program OperacaoCondicional;

uses
  SysUtils;

var
  cond: Boolean;
  x: Integer;

function foo(n: Integer): Integer;
begin
  foo := n;
end;

begin
  x := 1;

  cond := -5 * (x + foo(3)) <> 0;
  
  if cond then
  begin
    WriteLn('VErdadeiro');
    WriteLn('VErdadeiro');
    WriteLn('VErdadeiro');
  end
  else
    foo(6);

  if cond then
    WriteLn('VErdadeiro')
  else
  begin
    foo(6);
    foo(5);
  end;

  if x > 1 then
    WriteLn('VErdadeiro')
  else if x = 1 then
    WriteLn('VErdadeiro')
  else
    WriteLn('Falso');

end.
