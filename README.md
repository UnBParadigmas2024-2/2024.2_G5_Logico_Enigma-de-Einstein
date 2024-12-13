# Enigma de Einstein

**Disciplina**: FGA0210 - PARADIGMAS DE PROGRAMAÇÃO - T01 <br>
**Nro do Grupo**: 05<br>
**Paradigma**: Logico<br>

## Alunos
|Matrícula | Aluno |
| -- | -- |
| 18/0015311 |  Danilo Domingo |
| 20/0018442 |  Gabrielly Assunção |
| 19/0030291 |  Jackes Fonseca |
| 20/0021541 |  Karla Chaiane  |
| 17/0039803 | Lucas Medeiros Rosa |
| 18/0042661 | Luís Furtado de Araújo |
| 19/0020814 |  Vinícius Roriz |

## Sobre 

<p align="justify">
Este projeto é uma solução para o famoso Enigma de Einstein, um quebra-cabeça lógico que desafia a capacidade de raciocínio e dedução. O enigma é baseado em uma série de pistas que envolvem cinco casas de diferentes cores, cada uma com características distintas, como a nacionalidade do morador, o tipo de bebida que consome, a linguagem de programação que utiliza e o animal de estimação que possui. A tarefa consiste em determinar quem possui o peixe, utilizando apenas as informações fornecidas nas pistas.
</p>

### Desafio 
O enigma é frequentemente descrito como:

- Existem cinco casas em uma linha, cada uma de uma cor diferente.
- Em cada casa vive uma pessoa de uma nacionalidade diferente.
- Cada pessoa prefere uma bebida diferente, programa em uma linguagem diferente e possui um animal diferente.
- A solução do enigma é descobrir quem tem o peixe, com base nas pistas fornecidas.

<p align="justify">
Este enigma é atribuído a Albert Einstein, <a href="https://www.bbc.com/portuguese/articles/c72gdnynvdvo" target="_blank">que teria afirmado que 98% da população não conseguiria resolvê-lo</a>. A tarefa é resolver este enigma lógico utilizando o Prolog, uma linguagem de programação declarativa que se destaca pela sua capacidade de lidar com problemas de lógica e dedução.
</p>
 
## Screenshots
Ao rodar o comando `resolver(Casas).`, o programa retornará a lista de todas as casas preenchidas com suas informações.  

<img src="imgs/resolver.png" alt="" width="500" /><br>

Ao rodar o comando `perguntar.`, o usuário deve então informar uma informação da casa que ele já tem, e depois uma informação daquela casa que ele deseja descobrir.

<img src="imgs/perguntar.png" alt="" width="500" /><br>

## Instalação 
**Linguagens**: Prolog<br>
**Tecnologias**: SWI Prolog<br>

<p align="justify">
Para rodar o projeto será necessário a instalação do SWI Prolog, para fazer sua instalação é simples, pode ser feito via terminal utilizando os seguintes comandos:
</p>

 **Linux**
```bash
sudo apt-add-repository ppa:swi-prolog/stable
sudo apt update
sudo apt install swi-prolog
```
**Windows**

Uma alternativa para quem utiliza o Windows e não quer fazer a instalação do SWI Prolog via WSL, pode ser instalando o LPA WinProlog, basta baixá-lo [aqui](https://unbbr-my.sharepoint.com/:u:/g/personal/180015311_aluno_unb_br/Ee3LhOEMm9hNuXbuGs3d36ABuSkdLVglZCUPvtECVq_rLg?e=8FiUve), após isso basta extrair e executar o .exe.

## Uso 
Explique como usar seu projeto.
Procure ilustrar em passos, com apoio de telas do software, seja com base na interface gráfica, seja com base no terminal.
Nessa seção, deve-se revelar de forma clara sobre o funcionamento do software.

## Vídeo
Adicione 1 ou mais vídeos com a execução do projeto.
Procure: 
(i) Introduzir o projeto;
(ii) Mostrar passo a passo o código, explicando-o, e deixando claro o que é de terceiros, e o que é contribuição real da equipe;
(iii) Apresentar particularidades do Paradigma, da Linguagem, e das Tecnologias, e
(iV) Apresentar lições aprendidas, contribuições, pendências, e ideias para trabalhos futuros.
OBS: TODOS DEVEM PARTICIPAR, CONFERINDO PONTOS DE VISTA.
TEMPO: +/- 15min

## Participações
Apresente, brevemente, como cada membro do grupo contribuiu para o projeto.
|Nome do Membro | Contribuição | Significância da Contribuição para o Projeto (Excelente/Boa/Regular/Ruim/Nula) | Comprobatórios (ex. links para commits)
| -- | -- | -- | -- |
| Danilo Domingo Vitoriano Silva  | - | - | -
| Gabrielly Assunção | - | - | -
| Jackes Fonseca | Atuei na elaboração do documento sobre um comparativo entre a solução usando paradigma lógico e funcional | Boa | https://github.com/UnBParadigmas2024-2/2024.2_G5_Logico_Enigma-de-Einstein/commit/1bb533a1ba029774550e7c78d7ccf711e218e4c2
| Karla Feliciano   | - | - | -
| Lucas Medeiros Rosa | - | - | -
| Luís Furtado de Araújo  | - | - | -
| Vinícius Roriz | Resolução do problema | Excelente | [Commit](https://github.com/UnBParadigmas2024-2/2024.2_G5_Logico_Enigma-de-Einstein/commit/8fcd7b71acc8cc2af86a9525f5f91a0f0fe93fe3)

## Outros 
### I. Licões Aprendidas

#### Danilo Domingo
#### Gabrielly Assunção

<p align="justify">
Uma das maiores lições foi entender e aplicar o paradigma lógico, que é muito diferente do paradigma orientado a objetos com o qual eu já estava mais acostumada. Em prolog, o destaque está na descrição do problema e das suas restrições, deixando para o motor de inferência o papel de encontrar a solução. Esse tipo de abordagem mudou minha maneira de pensar sobre problemas computacionais, despertando um raciocínio mais lógico e sistemático.
</p>

#### Jackes Fonseca
#### Lucas Medeiros
#### Luís Furtado
#### Vinícius Roriz

<p align="justify">
Ao decorrer deste projeto, aprendi a abordar o problema de forma declarativa, e que no Prolog o foco está em descrever o que é verdade ao invés de encontrar a solução, o que gera a necessidade de definir restrições claras e evitar contradições. Trabalhar com o backtracking se provou um ponto forte da linguagem, que automaticamente reformulava as suas hipóteses quando recebia uma nova informação que contradizia a solução que estava sendo criada. Apesar de acabar não usando alguns recursos como os cortes (!) no trabalho, gostei de aprender sobre eles nas aulas e tenho interesse em utilizar a linguagem novamente no futuro.
</p>

### II. Percepções

#### Comparação Com Outras Linguagens

<p align="justify"> 
A solução para o Enigma de Einstein foi abordada de diferentes formas ao longo dos anos, com destaque para implementações em várias linguagens, como Haskell. Por exemplo, o <a href="http://blog.darrenstruthers.net/2012/10/solving-einsteins-puzzle-with-haskell.html" target="_blank">código aqui descrito</a> apresenta uma versão do enigma resolvida utilizando a programação funcional, uma abordagem que pode ser comparada ao paradigma lógico que usamos no Prolog.  Veja <a href="https://github.com/UnBParadigmas2024-2/2024.2_G5_Logico_Enigma-de-Einstein/blob/main/doc/Relat%C3%B3rio%20Paradigma%20L%C3%B3gico.pdf" target="_blank">aqui</a> a comparação entre o enigma resolvido em Haskell e Prolog.
 </p>

<p align="justify"> Embora o enigma de Einstein possa ser resolvido com outras linguagens de programação, o uso de Prolog oferece uma série de vantagens notáveis em termos de clareza e eficiência para problemas de lógica.</p>

<p align="justify"> Se compararmos a resolução em Prolog com linguagens como python, solução utilizaria estruturas de dados mais complexas como listas e dicinários, além de funções recursivas para simular o backtracking. A implementação em python não aproveita as otimizações nativas de inferência lógica, o que pode resultar em um desempenho inferior em comparação com o Prolog.
</p>

### III. Contribuições e Fragilidades

#### Danilo Domingo
#### Gabrielly Assunção
#### Jackes Fonseca
#### Lucas Medeiros
#### Luís Furtado
#### Vinícius Roriz

<p align="justify"> 
Para desenvolver a solução, primeiro fui descobrir como outras linguagens resolviam o problema. Uma que me chamou atenção foi uma resolução na linguagem R, que encontrava as respostas aplicando restrições, por exemplo: é criado um array com 5 casas e aplicada uma restrição que diz que existe uma Casa neste array em que a nacionalidade é Inglês e a cor é Vermelha. Através de um conjunto de restrições, a linguagem encontra a única distribuição das variáveis que supre todas as necessidades sem repetir nenhuma informação.

Essa solução me pareceu se encaixar bem com o paradigma funcional adotado pelo Prolog, então a usei como base para resolver esse enigma para o projeto. Assim como na solução em R, criamos uma lista de casas com as informações iniciais vazias, e depois informamos as nossas restrições através dos predicados `member`, para dicas que envolvem duas informações para uma casa, `ao_lado`, para dicas que envolvem uma informação para uma casa e outra para a casa vizinha, e `a_esquerda`, que só é utilizada uma vez para indicar que a casa verde está à esquerda da branca.

Tive dificuldades para mudar a forma em que penso no problema, principalmente em descrevê-lo de forma declarativa, focando mais nas relações entre os dados e nas regras que definem seu comportamento. Outra coisa que me bagunçou foi a falta de controle explícito do fluxo de execução, em alguns momentos eu queria usar um `if` mas tive que encontrar maneiras de evitar fazê-lo.
</p>

### IV. Trabalhos Futuros

<p align="justify">
O projeto apresenta diversas possibilidades de evolução e melhorias de código torná-lo mais robusto. Abaixo estão algumas sugestões da equipe para trabalhos futuros:
</p>
<p align="justify">
1. Modularização do código, divindindo a lógica de resolução, separando os predicados principais das funções auxiliares, facilitando a escalabilidade do código.
</p>
<p align="justify">
2.  Criar uma interface para interação com o usuário, permitindo que perguntas sejam feitas de maneira intuitiva, sem a necessidade de comandos Prolog.
</p>
<p align="justify">
3. Melhorar as validações de entrada para assegurar que as inconsistências dsejam tratadas corretamente.
</p>
<p align="justify">
4. Criar testes unitários.
</p>
<p align="justify">
5. Atualmente a solução é armazena em tempo de execução, sendo interessante evoluir para persistir em um banco de dados.
</p>

## Fontes

> [Solving Einstein's puzzle with constraint programming](https://www.r-bloggers.com/2021/09/solving-einsteins-puzzle-with-constraint-programming/).  Acesso em: 09 nov. 2024.

> [SWI-PROLOG. SWI-Prolog documentation](https://www.swi-prolog.org/pldoc/index.html).  Acesso em: 09 nov. 2024.

> [BBC News Brasil: Como resolver o Enigma de Einstein](https://www.bbc.com/portuguese/articles/c72gdnynvdvo).  Acesso em: 11 nov. 2024.

> [Solving Einstein's Puzzle with Haskell](http://blog.darrenstruthers.net/2012/10/solving-einsteins-puzzle-with-haskell.html).  Acesso em: 11 nov. 2024.
