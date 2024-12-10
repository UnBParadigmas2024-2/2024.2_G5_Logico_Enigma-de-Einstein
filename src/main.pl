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
    member(casa(_,_,argentino,cha,_,_), Casas).         % O Argentino bebe Chá.  
    member(casa(_,verde,_,cafe,_,_), Casas).            % O homem que vive na casa Verde bebe Café.  
    member(casa(_,_,_,_,haskell,passaros), Casas).      % O homem que programa em Haskell cria Pássaros.  
    member(casa(_,amarela,_,_,prolog,_), Casas).        % O homem que vive na casa Amarela programa em Prolog.  
    member(casa(1,_,brasileiro,_,_,_), Casas).          % O Brasileiro vive na primeira casa.  
    member(casa(_,_,_,cerveja,python,_), Casas).        % O homem que programa em Python bebe Cerveja.  
    member(casa(_,_,portugues,_,php,_), Casas).         % O Português programa em PHP.  
    % O homem que programa em Java vive ao lado do que tem Gatos.  
    % O homem que cria Cavalos vive ao lado do que programa em Prolog.  
    % A casa Verde fica do lado esquerdo da casa Branca.  
    % O homem que vive na casa do meio bebe Leite.  
    % O Brasileiro vive ao lado da casa Azul.  
    % O homem que programa em Java é vizinho do que bebe Água.
