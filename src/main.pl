% Predicado para definir se a casa A fica a esquerda da casa B
% a_esquerda(A,B)

% Predicado para definir se a casa A fica ao lado da casa B (esquerda ou direita)
% ao_lado(A,B)

% Predicado para garantir que cada possui informações unicas (ex: não existem duas casas vermelhas)
% sao_unicas(Casas)

% Predicado para perguntar a cor da casa N
% cor(N,Cor)

% Definicao de casa
% casa(Numero,Cor,Nacionalidade,Bebida,Linguagem,Animais).

resolver(Casas) :- 
    Casas = [
        casa(_,_,_,_,_,_),
        casa(_,_,_,_,_,_),
        casa(_,_,_,_,_,_),
        casa(_,_,_,_,_,_),
        casa(_,_,_,_,_,_)
    ],
    % Dicas do problema
    member(casa(_,vermelha,ingles,_,_,_), Casas),       % O Inglês vive na casa Vermelha.
    member(casa(_,_,chileno,_,_,cachorros), Casas).     % O Chileno tem Cachorros como animais de estimação.

