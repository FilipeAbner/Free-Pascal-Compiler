program Demonstracao;

uses
  SysUtils;

var
  a, b, c, d, e: Integer;  // Declaração de variáveis
  f : Double;
  arr: array[1..5] of Integer;
  i: Integer;
  cond1, cond2: Boolean;
  resultado: Integer;     

{ Declaração de função }
function Soma(x: Integer; y: Integer; arrr: array of Integer): Integer;
var
  q: Integer;
var
  U: Integer;
begin
  u := x + y;     // exemplo de uso
  Soma := q;
end;

var
  P: Integer;

function UniqueBody(): Integer;
begin
    UniqueBody := 1;
end;

function MenorQue(x, y: Integer): Boolean;
begin
  MenorQue := x < y;
end;

function Subtracao(x, y: Integer): Integer;
begin
  Subtracao := x - y; // operador aritmético "-"
end;

function Multiplicacao(x, y: Integer): Integer;
begin
  Multiplicacao := x * y; // operador "*"
end;

function Divisao(x, y: Integer): Integer;
begin
  Divisao := x div y; // operador "/"
end;

function Resto(x, y: Integer): Integer;
begin
  Resto := x mod y; // operador "%"
end;

function Comparacoes(x, y: Integer): Boolean;
begin
  if (x < y) or (x <= y) or (x > y) or (x >= y) or (x = y) or (x <> y) then
    Comparacoes := True // Operadores de comparação e operadores lógicos
  else
    Comparacoes := False;
end;

{ Adição: função que recebe um open array e faz while com vários operadores }
function TesteOperadores(arrr: array of Integer; threshold: Integer; flag: Boolean): Integer;
var
  idx, sum: Integer;
begin
  idx := Low(arrr);  // em open arrays, Low=0
  sum := 0;
  while
    ( (idx + sum) * 2            // +, *
      - (idx mod 3) div 2        // mod, div
      >= threshold )             // >=
    or ( (not flag) and (idx <> 0) )              // not, and, <>
    and ( (sum < threshold) xor (idx >= 3) )      // <, >=, xor
    or ( idx in [2, 4, 6] )                      // in
  do
  begin
    writeln('Entrou no while: idx=', idx, ' sum=', sum);
    sum := sum + arrr[idx];
    idx := idx + 1;
    if idx > High(arrr) then  // evita sair dos limites
      Break;
  end;
  TesteOperadores := sum;
end;

begin

  // Inicialize `arr` antes de chamar TesteOperadores
  arr[1] := 2; arr[2] := 4; arr[3] := 6; arr[4] := 8; arr[5] := 10;

  // Chamada da nova função
  resultado := TesteOperadores(arr, 20, True);
  writeln('Resultado de TesteOperadores = ', resultado);
  
  // Atribuições
  a := 1;
  b := 5;
  c := 2;
  f := 1.;
  // Operadores aritméticos + parênteses
  d := (a + b) * c - (a div b) + (a mod c);

  // Chamada de funções como parte de expressão
  e := Soma(a, b, arr) + Subtracao(a, c) + Multiplicacao(b, c) + Divisao(a, b) + Resto(a, c);

  // Controle de fluxo: if
  if a > b then
    writeln('a > b');

  // Controle de fluxo: if-else
  if c = 2 then
    writeln('c é 2')
  else
    writeln('c não é 2');

  // Controle de fluxo: while
  i := 1;
  while i <= 5 do
  begin
    arr[i] := i * 2;  // Atribuição e acesso a índice de vetor
    i := i + 1;
  end;

  // Operadores lógicos
  cond1 := True;
  cond2 := False;
  if (cond1 and not cond2) or (cond2 and cond1) then
    writeln('Operadores lógicos avaliados.');

  // Escopo com begin-end
  begin
    writeln('Dentro de escopo begin-end');
  end;

  // Acesso a vetor
  writeln('Elemento arr[3] = ', arr[3]);


end.
