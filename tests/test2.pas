program EstranhoFunc;

uses
  SysUtils;

type
  TPonto = record
    x: Integer;
    y: Integer;
  end;

function Func(var v: array of TPonto; n: Integer): Double;
var
  res, temp: Double;
  i: Integer;
begin
  if n <= 0 then
    Func := 1.0
  else if n = 1 then
    Func := 1.01 + v[0].x / 1.0e2 + v[0].y / 0.1e-2
  else
  begin
    res := 0.25e-13;

    for i := n - 1 downto 0 do
    begin
      if v[i].x <= 0 then
        Break;

      temp := (v[i].y * v[i].x) mod 123;

      if temp < 0.0 then
        res := res - res * 2.0e-2 + Func(v, n - 1) * temp
      else
      begin
        res := res + res * 0.3e3 + Func(v, n - 2) * temp;
        WriteLn('Estranho, ne?');
      end;
    end;

    Func := res;
  end;
end;

var
  pontos: array of TPonto;
  resultado: Double;
begin
  SetLength(pontos, 3);
  pontos[0].x := 1; pontos[0].y := 2;
  pontos[1].x := 3; pontos[1].y := 4;
  pontos[2].x := 5; pontos[2].y := 6;

  resultado := Func(pontos, Length(pontos));
  WriteLn('Resultado: ', resultado:0:10);
end.
