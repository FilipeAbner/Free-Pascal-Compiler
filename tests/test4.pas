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
  {
  if cond then
    WriteLn('Condicao verdadeira!')
  else
    WriteLn('Condicao falsa!');
  }
end.
