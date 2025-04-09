# Free-Pascal-Compiler

## Introdução.

Voce já parou pra pensar como um compilador funciona? como ele reconhece que um "if" é uma palavra reservada, onde voce nao pode ter uma variavel chamada "if" porem, pode ter uma variavel chamada if8...


## Descrição.

Para entendermos como funciona um compilador temos que entender as várias etapas que se passam até que o seu codigo de alto nivel seja convertido em um codigo de baixo nivel. Para que isso aconteça temos X etapas principais, dentre as quais temos X etapas essencias para seu funcionamento, podemos ver na imagem abaixo quais são essas etapas e em destaque as etapas principais·

//image

Esse trabalho se refere a implementação de um compilador para a linguagem Free Pascal, nem todas as funcionalidades estarão presentes, porém é esperado que o mesmo identifique as principais funções da linguagem. Portanto vamos analisar cada uma das etapas principais isoladamente.

### Análise Léxica

Essa etapa consiste na identificação dos tokens que são recebidos pelo compilador, em gramática seria o equivalente a uma análise sintática, ou seja, basicamente vamos apenas diferenciar palavras que existem ou não existem, por exemplo, sabemos que a palavra "computador" existe, pois esta presente no nosso dicionário, porem a palavra "jascuteam" não existe pois não esta presente no nosso dicionario, dessa mesma forma temos as palavras que são reconhecidas pela linguagem de programação e automáticamente as que não existem são consideradas Identificadores, que basicamente se refere as nossas variáveis. 