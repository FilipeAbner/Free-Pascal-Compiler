program Teste;

uses
  SysUtils, Math, StrUtils, Classes, TypInfo, DateUtils, Variants;

var
  resultado: Double;
  globalContador: Integer;

function ProcessaParametros(flag: Boolean; valorInt: Integer; valorReal: Double): Double;
var
  temp: Double;  // variável local
  i: Integer;
begin
  temp := 0.0;
  globalContador := 0;

  if flag then
  begin
    i := 1;
    while i <= valorInt do
    begin
      temp := temp + i * valorReal;
      globalContador := globalContador + 1;
      i := i + 1;
    end;
  end
  else
  begin
    i := valorInt;
    while i > 0 do
    begin
      temp := temp + (i / valorReal);
      i := i - 1;
      globalContador := globalContador + 2;
    end;
  end;

  ProcessaParametros := temp;
end;

begin
  resultado := ProcessaParametros(True, 3, 5.0);
end.
