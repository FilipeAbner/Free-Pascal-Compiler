program TesteNot;

uses
  SysUtils;

var
  entrada, saida: Boolean;
  aux1, aux2: Boolean;

function Inverter(valor: Boolean): Boolean;
begin

  Inverter := not ((not valor and False) or (valor and not True));
end;

begin
  saida := Inverter(entrada);

end.
