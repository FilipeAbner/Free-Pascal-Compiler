program TesteTokens;

{$MODE OBJFPC}  // Para compatibilidade com Object Pascal
{$CODEPAGE UTF8}

uses
  SysUtils;

const
  C = 'Constante com #10 e #13 dentro';
  C2 = '';
  C3 = 'aspas '' duplas dentro';

type
  TMyClass = class
  private
    FValor: Integer;
  public
    procedure DoSomething;
  end;

var
  a, b: Integer;
  s: String;
  x: Real;
  h: Integer;
  o: Integer;
  bin: Integer;

procedure TMyClass.DoSomething;
begin
  writeln('Executando...');
end;

begin
  a := 42;
  b := -5;
  x := 3.14;
  h := $1A3F;
  o := &777;
  bin := %101010;

  s := 'Teste de string com controle: ' + #13#10 + 'nova linha';
  if a > b then
    writeln('IF THEN funcionando')
  else
    writeln('ELSE funcionando');

  repeat
    a := a - 1;
  until a = 0;

  while b < 10 do
    b := b + 1;

  for a := 0 to 5 do
    writeln(a);

  writeln('Fim do programa');
end.
