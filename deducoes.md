# Deduções iniciais

|Cor |Nacionalidade |Bebida |Linguagem |Animal |
|----|--------------|-------|----------|-------|
| X  | X            | X     | X        | X     |
| X  | X            | X     | X        | X     |
| X  | X            | X     | X        | X     |
| X  | X            | X     | X        | X     |
| X  | X            | X     | X        | X     |

## O Brasileiro vive na primeira casa

```
Call: (30) [casa(_10022, _10024, _10026, _10028, _10030), casa(_10040, _10042, _10044, _10046, _10048), casa(_10058, _10060, _10062, _10064, _10066), casa(_10076, _10078, _10080, _10082, _10084), casa(_10094, _10096, _10098, _10100, _10102)]
   =[casa(_10112, brasileiro, _10116, _10118, _10120)|_10108]

Exit: (30) [casa(_10022, brasileiro, _10026, _10028, _10030), casa(_10040, _10042, _10044, _10046, _10048), casa(_10058, _10060, _10062, _10064, _10066), casa(_10076, _10078, _10080, _10082, _10084), casa(_10094, _10096, _10098, _10100, _10102)]
   =[casa(_10022, brasileiro, _10026, _10028, _10030), casa(_10040, _10042, _10044, _10046, _10048), casa(_10058, _10060, _10062, _10064, _10066), casa(_10076, _10078, _10080, _10082, _10084), casa(_10094, _10096, _10098, _10100, _10102)]
```

|Cor |Nacionalidade |Bebida |Linguagem |Animal |
|----|--------------|-------|----------|-------|
| X  | Brasileiro   | X     | X        | X     |
| X  | X            | X     | X        | X     |
| X  | X            | X     | X        | X     |
| X  | X            | X     | X        | X     |
| X  | X            | X     | X        | X     |

## O homem que vive na casa do meio bebe Leite

```
Call: (30) [casa(_10022, brasileiro, _10026, _10028, _10030), casa(_10040, _10042, _10044, _10046, _10048), casa(_10058, _10060, _10062, _10064, _10066), casa(_10076, _10078, _10080, _10082, _10084), casa(_10094, _10096, _10098, _10100, _10102)]
=[_11312, _11318, casa(_11330, _11332, leite, _11336, _11338), _11342, _11348]

Exit: (30) [casa(_10022, brasileiro, _10026, _10028, _10030), casa(_10040, _10042, _10044, _10046, _10048), casa(_10058, _10060, leite, _10064, _10066), casa(_10076, _10078, _10080, _10082, _10084), casa(_10094, _10096, _10098, _10100, _10102)]
=[casa(_10022, brasileiro, _10026, _10028, _10030), casa(_10040, _10042, _10044, _10046, _10048), casa(_10058, _10060, leite, _10064, _10066), casa(_10076, _10078, _10080, _10082, _10084), casa(_10094, _10096, _10098, _10100, _10102)]
```

|Cor |Nacionalidade |Bebida |Linguagem |Animal |
|----|--------------|-------|----------|-------|
| X  | Brasileiro   | X     | X        | X     |
| X  | X            | X     | X        | X     |
| X  | X            | Leite | X        | X     |
| X  | X            | X     | X        | X     |
| X  | X            | X     | X        | X     |

## O Inglês vive na casa Vermelha

```
Call: (30) lists:member(casa(vermelha, ingles, _12546, _12548, _12550),
[casa(_10022, brasileiro, _10026, _10028, _10030), casa(_10040, _10042, _10044, _10046, _10048), casa(_10058, _10060, leite, _10064, _10066), casa(_10076, _10078, _10080, _10082, _10084), casa(_10094, _10096, _10098, _10100, _10102)])

Exit: (30) lists:member(casa(vermelha, ingles, _10044, _10046, _10048),
[casa(_10022, brasileiro, _10026, _10028, _10030), casa(vermelha, ingles, _10044, _10046, _10048), casa(_10058, _10060, leite, _10064, _10066), casa(_10076, _10078, _10080, _10082, _10084), casa(_10094, _10096, _10098, _10100, _10102)])

```

|Cor       |Nacionalidade |Bebida |Linguagem |Animal |
|----------|--------------|-------|----------|-------|
| X        | Brasileiro   | X     | X        | X     |
| Vermelha | Inglês       | X     | X        | X     |
| X        | X            | Leite | X        | X     |
| X        | X            | X     | X        | X     |
| X        | X            | X     | X        | X     |

## O Chileno tem Cachorros como animais de estimação

```
Call: (30) lists:member(casa(_15432, chileno, _15436, _15438, cachorros),
[casa(_10022, brasileiro, _10026, _10028, _10030), casa(vermelha, ingles, _10044, _10046, _10048), casa(_10058, _10060, leite, _10064, _10066), casa(_10076, _10078, _10080, _10082, _10084), casa(_10094, _10096, _10098, _10100, _10102)])

Exit: (30) lists:member(casa(_10058, chileno, leite, _10064, cachorros),
[casa(_10022, brasileiro, _10026, _10028, _10030), casa(vermelha, ingles, _10044, _10046, _10048), casa(_10058, chileno, leite, _10064, cachorros), casa(_10076, _10078, _10080, _10082, _10084), casa(_10094, _10096, _10098, _10100, _10102)])

```

|Cor       |Nacionalidade |Bebida |Linguagem |Animal     |
|----------|--------------|-------|----------|-----------|
| X        | Brasileiro   | X     | X        | X         |
| Vermelha | Inglês       | X     | X        | X         |
| X        | Chileno      | Leite | X        | Cachorros |
| X        | X            | X     | X        | X         |
| X        | X            | X     | X        | X         |

## O Argentino bebe Chá

|Cor       |Nacionalidade |Bebida |Linguagem |Animal     |
|----------|--------------|-------|----------|-----------|
| X        | Brasileiro   | X     | X        | X         |
| Vermelha | Inglês       | X     | X        | X         |
| X        | Chileno      | Leite | X        | Cachorros |
| X        | Argentino    | Chá   | X        | X         |
| X        | X            | X     | X        | X         |

## O homem que vive na casa Verde bebe Café

|Cor       |Nacionalidade |Bebida |Linguagem |Animal     |
|----------|--------------|-------|----------|-----------|
| Verde    | Brasileiro   | Café  | X        | X         |
| Vermelha | Inglês       | X     | X        | X         |
| X        | Chileno      | Leite | X        | Cachorros |
| X        | Argentino    | Chá   | X        | X         |
| X        | X            | X     | X        | X         |

## O homem que programa em Haskell cria Pássaros

|Cor       |Nacionalidade |Bebida |Linguagem |Animal     |
|----------|--------------|-------|----------|-----------|
| Verde    | Brasileiro   | Café  | Haskell  | Pássaros  |
| Vermelha | Inglês       | X     | X        | X         |
| X        | Chileno      | Leite | X        | Cachorros |
| X        | Argentino    | Chá   | X        | X         |
| X        | X            | X     | X        | X         |

## O homem que vive na casa Amarela programa em Prolog

|Cor       |Nacionalidade |Bebida |Linguagem |Animal     |
|----------|--------------|-------|----------|-----------|
| Verde    | Brasileiro   | Café  | Haskell  | Pássaros  |
| Vermelha | Inglês       | X     | X        | X         |
| Amarela  | Chileno      | Leite | Prolog   | Cachorros |
| X        | Argentino    | Chá   | X        | X         |
| X        | X            | X     | X        | X         |

## O homem que programa em Python bebe Cerveja

|Cor       |Nacionalidade |Bebida   |Linguagem |Animal     |
|----------|--------------|---------|----------|-----------|
| Verde    | Brasileiro   | Café    | Haskell  | Pássaros  |
| Vermelha | Inglês       | Cerveja | Python   | X         |
| Amarela  | Chileno      | Leite   | Prolog   | Cachorros |
| X        | Argentino    | Chá     | X        | X         |
| X        | X            | X       | X        | X         |

## O Português programa em PHP

|Cor       |Nacionalidade |Bebida   |Linguagem |Animal     |
|----------|--------------|---------|----------|-----------|
| Verde    | Brasileiro   | Café    | Haskell  | Pássaros  |
| Vermelha | Inglês       | Cerveja | Python   | X         |
| Amarela  | Chileno      | Leite   | Prolog   | Cachorros |
| X        | Argentino    | Chá     | X        | X         |
| X        | Português    | X       | PHP      | X         |

## O homem que programa em Java vive ao lado do que tem Gatos

```
Exit: (33) ao_lado(casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos),
[casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

Exit: (32) ao_lado(casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos),
[casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

Exit: (31) ao_lado(casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos),
[casa(vermelha, ingles, cerveja, python, _10048), casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

Exit: (30) ao_lado(casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos),
[casa(verde, brasileiro, cafe, haskell, passaros), casa(vermelha, ingles, cerveja, python, _10048), casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

```

|Cor       |Nacionalidade |Bebida   |Linguagem |Animal     |
|----------|--------------|---------|----------|-----------|
| Verde    | Brasileiro   | Café    | Haskell  | Pássaros  |
| Vermelha | Inglês       | Cerveja | Python   | X         |
| Amarela  | Chileno      | Leite   | Prolog   | Cachorros |
| X        | Argentino    | Chá     | Java     | X         |
| X        | Português    | X       | PHP      | Gatos     |

## O homem que cria Cavalos vive ao lado do que programa em Prolog

```
Exit: (31) ao_lado(casa(vermelha, ingles, cerveja, python, cavalos), casa(amarela, chileno, leite, prolog, cachorros),
[casa(vermelha, ingles, cerveja, python, cavalos), casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

Exit: (30) ao_lado(casa(vermelha, ingles, cerveja, python, cavalos), casa(amarela, chileno, leite, prolog, cachorros),
[casa(verde, brasileiro, cafe, haskell, passaros), casa(vermelha, ingles, cerveja, python, cavalos), casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

```

|Cor       |Nacionalidade |Bebida   |Linguagem |Animal     |
|----------|--------------|---------|----------|-----------|
| Verde    | Brasileiro   | Café    | Haskell  | Pássaros  |
| Vermelha | Inglês       | Cerveja | Python   | Cavalos   |
| Amarela  | Chileno      | Leite   | Prolog   | Cachorros |
| X        | Argentino    | Chá     | Java     | X         |
| X        | Português    | X       | PHP      | Gatos     |

## O homem que cria Cavalos vive ao lado do que programa em Prolog

**Primeira contradição**

```
Call: (30) ao_lado(casa(_31224, brasileiro, _31228, _31230, _31232), casa(azul, _31238, _31240, _31242, _31244),
[casa(verde, brasileiro, cafe, haskell, passaros), casa(vermelha, ingles, cerveja, python, cavalos), casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

Call: (31) ao_lado(casa(_31224, brasileiro, _31228, _31230, _31232), casa(azul, _31238, _31240, _31242, _31244),
[casa(vermelha, ingles, cerveja, python, cavalos), casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

Call: (32) ao_lado(casa(_31224, brasileiro, _31228, _31230, _31232), casa(azul, _31238, _31240, _31242, _31244),
[casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

Call: (33) ao_lado(casa(_31224, brasileiro, _31228, _31230, _31232), casa(azul, _31238, _31240, _31242, _31244),
[casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

Call: (34) ao_lado(casa(_31224, brasileiro, _31228, _31230, _31232), casa(azul, _31238, _31240, _31242, _31244),
[casa(_10094, portugues, _10098, php, gatos)])

Call: (35) ao_lado(casa(_31224, brasileiro, _31228, _31230, _31232), casa(azul, _31238, _31240, _31242, _31244),
[])

Fail: (35) ao_lado(casa(_31224, brasileiro, _31228, _31230, _31232), casa(azul, _31238, _31240, _31242, _31244),
[])

Fail: (34) ao_lado(casa(_31224, brasileiro, _31228, _31230, _31232), casa(azul, _31238, _31240, _31242, _31244),
[casa(_10094, portugues, _10098, php, gatos)])

Fail: (33) ao_lado(casa(_31224, brasileiro, _31228, _31230, _31232), casa(azul, _31238, _31240, _31242, _31244),
[casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

Fail: (32) ao_lado(casa(_31224, brasileiro, _31228, _31230, _31232), casa(azul, _31238, _31240, _31242, _31244),
[casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

Fail: (31) ao_lado(casa(_31224, brasileiro, _31228, _31230, _31232), casa(azul, _31238, _31240, _31242, _31244),
[casa(vermelha, ingles, cerveja, python, cavalos), casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

Fail: (30) ao_lado(casa(_31224, brasileiro, _31228, _31230, _31232), casa(azul, _31238, _31240, _31242, _31244),
[casa(verde, brasileiro, cafe, haskell, passaros), casa(vermelha, ingles, cerveja, python, cavalos), casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

Redo: (31) ao_lado(casa(_28808, _28810, _28812, _28814, cavalos), casa(_28820, _28822, _28824, prolog, _28828),
[casa(vermelha, ingles, cerveja, python, _10048), casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

Call: (32) ao_lado(casa(_28808, _28810, _28812, _28814, cavalos), casa(_28820, _28822, _28824, prolog, _28828),
[casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

Exit: (32) ao_lado(casa(_10076, argentino, cha, java, cavalos), casa(amarela, chileno, leite, prolog, cachorros),
[casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, cavalos), casa(_10094, portugues, _10098, php, gatos)])

Exit: (31) ao_lado(casa(_10076, argentino, cha, java, cavalos), casa(amarela, chileno, leite, prolog, cachorros), [casa(vermelha, ingles, cerveja, python, _10048), casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, cavalos), casa(_10094, portugues, _10098, php, gatos)])

Exit: (30) ao_lado(casa(_10076, argentino, cha, java, cavalos), casa(amarela, chileno, leite, prolog, cachorros),
[casa(verde, brasileiro, cafe, haskell, passaros), casa(vermelha, ingles, cerveja, python, _10048), casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, cavalos), casa(_10094, portugues, _10098, php, gatos)])
```

**Estagio intermediário que satisfaz as regras até o momento**

|Cor       |Nacionalidade |Bebida   |Linguagem |Animal     |
|----------|--------------|---------|----------|-----------|
| Verde    | Brasileiro   | Café    | Haskell  | Pássaros  |
| Vermelha | Inglês       | Cerveja | Python   | X         |
| Amarela  | Chileno      | Leite   | Prolog   | Cachorros |
| X        | Argentino    | Chá     | Java     | Cavalos   |
| X        | Português    | X       | PHP      | Gatos     |

```
Call: (30) ao_lado(casa(_41414, brasileiro, _41418, _41420, _41422), casa(azul, _41428, _41430, _41432, _41434),
[casa(verde, brasileiro, cafe, haskell, passaros), casa(vermelha, ingles, cerveja, python, _10048), casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, cavalos), casa(_10094, portugues, _10098, php, gatos)])

[...]

Redo: (32) ao_lado(casa(_28808, _28810, _28812, _28814, cavalos), casa(_28820, _28822, _28824, prolog, _28828),
[casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

[...]

Fail: (30) ao_lado(casa(_28808, _28810, _28812, _28814, cavalos), casa(_28820, _28822, _28824, prolog, _28828),
[casa(verde, brasileiro, cafe, haskell, passaros), casa(vermelha, ingles, cerveja, python, _10048), casa(amarela, chileno, leite, prolog, cachorros), casa(_10076, argentino, cha, java, _10084), casa(_10094, portugues, _10098, php, gatos)])

[...]

Redo: (33) ao_lado(casa(_24000, _24002, _24004, java, _24008), casa(_24012, _24014, _24016, _24018, gatos),
[casa(_10076, argentino, cha, _10082, _10084), casa(_10094, portugues, _10098, php, _10102)])

[ linha 77 ... linha 4031]

Exit: (30) ao_lado(casa(amarela, brasileiro, _434, prolog, gatos), casa(azul, argentino, cha, java, cavalos),
[casa(amarela, brasileiro, _434, prolog, gatos), casa(azul, argentino, cha, java, cavalos), casa(vermelha, ingles, leite, haskell, passaros), casa(_484, chileno, cerveja, python, cachorros), casa(verde, portugues, cafe, php, _510)])

```

|Cor       |Nacionalidade |Bebida   |Linguagem |Animal     |
|----------|--------------|---------|----------|-----------|
| Amarela  | Brasileiro   | X       | Prolog   | Gatos     |
| Azul     | Argentino    | Chá     | Java     | Cavalos   |
| Vermelha | Inglês       | Leite   | Haskell  | Passaros  |
| X        | Chileno      | Cerveja | Python   | Cachorros |
| Verde    | Português    | Café    | PHP      | X         |
