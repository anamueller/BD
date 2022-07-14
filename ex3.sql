
select *
FROM Ator
WHERE sexo = 'f';

SELECT nomereal, sexo
FROM Ator;

SELECT nomereal, indicacoesoscar, num_oscar
FROM Ator;

SELECT codf
FROM Personagem
WHERE cache<1000;

SELECT personagem
FROM Personagem, Ator
WHERE Ator.nomeart = “DemiMoore” AND Ator.coda = Personagem.coda;

SELECT nome
FROM Filme, Ator, Personagem
WHERE Ator.nomeart = “DemiMoore” AND Ator.coda = Personagem.coda AND
Personagem.codf = Filme.codf;

SELECT nomeart
FROM Ator
WHERE nomereal LIKE “Jessica%”;

SELECT nomereal
FROM Ator
WHERE indicacoesoscar >= num_oscar + 2;

SELECT nomereal
FROM Ator

ORDER BY nomereal;

SELECT personagem
FROM Personagem, Ator
WHERE Ator.sexo = “f” AND Personagem.coda = Ator.coda;

SELECT COUNT (nomereal)
FROM Ator
WHERE sexo = 'f';

SELECT SUM (orcamento)
FROM Filme;