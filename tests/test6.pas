program VetorComWhile;

var
  numeros: array[1..5] of Integer;
  i: Integer;

begin
  // Inicializa o vetor com valores fixos
  numeros[1] := 10;
  numeros[2] := 20;
  numeros[3] := 30;
  numeros[4] := 40;
  numeros[5] := 50;

  // Laço while para acessar o vetor
  i := 1;
  while i <= 5 do
  begin
    writeln('Elemento ', i, ': ', numeros[i]);
    i := i + 1;
  end;

  writeln('Fim do acesso ao vetor!');
end.
