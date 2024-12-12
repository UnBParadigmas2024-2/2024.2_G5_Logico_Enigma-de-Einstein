% Predicado para definir se a casa A fica a esquerda da casa B
a_esquerda(A, B, [A, B | _]).
a_esquerda(A, B, [_ | T]) :- 
    a_esquerda(A, B, T).

% Predicado para definir se a casa A fica ao lado da casa B (esquerda ou direita)
ao_lado(A, B, [A, B | _]). 
ao_lado(A, B, [B, A | _]).
ao_lado(A, B, [_ | T]) :- 
    ao_lado(A, B, T).
                                        
% Predicado para garantir que cada possui informações unicas (ex: não existem duas casas vermelhas)
sao_unicas([]).
sao_unicas([H|T]) :- 
    \+ member(H,T), % H não está em T
    sao_unicas(T).

% Possiblita armazenar a solução em tempo de execução
:- dynamic casas_resolvidas/1.

% Definicao de casa
% casa(Cor,Nacionalidade,Bebida,Linguagem,Animais).
resolver(Casas) :- 
    Casas = [
        casa(Cor1,Nacionalidade1,Bebida1,Linguagem1,Animais1),
        casa(Cor2,Nacionalidade2,Bebida2,Linguagem2,Animais2),
        casa(Cor3,Nacionalidade3,Bebida3,Linguagem3,Animais3),
        casa(Cor4,Nacionalidade4,Bebida4,Linguagem4,Animais4),
        casa(Cor5,Nacionalidade5,Bebida5,Linguagem5,Animais5)
    ],
    % Dicas do problema
    Casas = [casa(_,brasileiro,_,_,_) | _],                         % O Brasileiro vive na primeira casa.  
    Casas = [_,_,casa(_,_,leite,_,_),_,_],                          % O homem que vive na casa do meio bebe Leite.  
    member(casa(vermelha,ingles,_,_,_), Casas),                     % O Inglês vive na casa Vermelha.
    member(casa(_,chileno,_,_,cachorros), Casas),                   % O Chileno tem Cachorros como animais de estimação.
    member(casa(_,argentino,cha,_,_), Casas),                       % O Argentino bebe Chá.  
    member(casa(verde,_,cafe,_,_), Casas),                          % O homem que vive na casa Verde bebe Café.  
    member(casa(_,_,_,haskell,passaros), Casas),                    % O homem que programa em Haskell cria Pássaros.  
    member(casa(amarela,_,_,prolog,_), Casas),                      % O homem que vive na casa Amarela programa em Prolog.  
    member(casa(_,_,cerveja,python,_), Casas),                      % O homem que programa em Python bebe Cerveja.  
    member(casa(_,portugues,_,php,_), Casas),                       % O Português programa em PHP.  
    ao_lado(casa(_,_,_,java,_), casa(_,_,_,_,gatos), Casas),        % O homem que programa em Java vive ao lado do que tem Gatos.  
    ao_lado(casa(_,_,_,_,cavalos), casa(_,_,_,prolog,_), Casas),    % O homem que cria Cavalos vive ao lado do que programa em Prolog.
    ao_lado(casa(_,brasileiro,_,_,_), casa(azul,_,_,_,_), Casas),   % O Brasileiro vive ao lado da casa Azul.  
    ao_lado(casa(_,_,_,java,_), casa(_,_,agua,_,_), Casas),         % O homem que programa em Java é vizinho do que bebe Água.  
    ao_lado(casa(_,_,_,_,peixes), casa(_,_,cerveja,_,_), Casas),    % O homem que tem Peixes vive ao lado do que bebe Cerveja.
    a_esquerda(casa(verde,_,_,_,_), casa(branca,_,_,_,_), Casas),   % A casa Verde fica do lado esquerdo da casa Branca.  
    
    sao_unicas([Cor1,Cor2,Cor3,Cor4,Cor5]),
    sao_unicas([Nacionalidade1,Nacionalidade2,Nacionalidade3,Nacionalidade4,Nacionalidade5]),
    sao_unicas([Bebida1,Bebida2,Bebida3,Bebida4,Bebida5]),
    sao_unicas([Linguagem1,Linguagem2,Linguagem3,Linguagem4,Linguagem5]),
    sao_unicas([Animais1,Animais2,Animais3,Animais4,Animais5]),
    
    assert(casas_resolvidas(Casas)).

% Predicado para perguntar uma informação de uma casa com base em outra.
perguntar :-
    write('Insira uma informação da casa (ex: verde, agua, gatos...): '),read(Info),nl,
    write('Informe a característica que deseja descobrir (cor, nacionalidade, bebida, linguagem ou animais): '),read(InfoDesejada),nl,
    
    % Recupera a solução armazenada
    casas_resolvidas(Casas),
    % Encontra a casa correspondente à característica fornecida
    member(casa(Cor, Nacionalidade, Bebida, Linguagem, Animais), Casas),
    (Info = Cor; Info = Nacionalidade; Info = Bebida; Info = Linguagem; Info = Animais),
    % Retorna o valor desejado com base no tipo especificado
    (InfoDesejada = cor, Resposta = Cor;
     InfoDesejada = nacionalidade, Resposta = Nacionalidade;
     InfoDesejada = bebida, Resposta = Bebida;
     InfoDesejada = linguagem, Resposta = Linguagem;
     InfoDesejada = animais, Resposta = Animais),
    
    write('Resposta: '),write(Resposta).