program OperacaoCondicional;

uses
  SysUtils;

var
  cond: Boolean;
  x, y: Integer;

function foo(x, y: Integer): Integer;
begin
  if x > 0 then
  begin
    if y > 0 then
    begin
      WriteLn('x e y são positivos.')
    end
    else if y = 0 then
    begin  
      WriteLn('x é positivo e y é zero.')
    end
    else
    begin
      if y > -10 then
        WriteLn('x é positivo e y é negativo, mas maior que -10.')
      else
        WriteLn('x é positivo e y é bem negativo.')
    end;
  end
  else if x = 0 then
  begin
    if y = 0 then
    begin
      WriteLn('x e y são zero.')
    end
    else
    begin
      WriteLn('x é zero e y é diferente de zero.')
    end
  end
  else
  begin
    if y > 0 then
    begin
      WriteLn('x é negativo e y é positivo.')
    end
    else if y = 0 then
    begin
      WriteLn('x é negativo e y é zero.')
    end
    else
    begin
      WriteLn('x e y são negativos.')
    end
  end; 
  foo := 5;
end;

begin
  x := 1;
  y := 0;

  
  foo(1, 2);
  foo(1, 0);
  foo(2, 1);
  foo(0, 0);
  foo(0, 1);
  
end.
