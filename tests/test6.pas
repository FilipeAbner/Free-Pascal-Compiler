program ExemploWhile;

uses crt;

var
  contador: Integer;

begin

  contador := 1;

  while contador <= 5 do
  begin
    writeln('Contador: ', contador);
    contador := contador + 1;
  end;

  writeln('Fim do laço!');

end.
