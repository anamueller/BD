
SELECT sum(idade)
FROM ator
WHERE sexo = ‘f’

SELECT ator.nomereal, COUNT(personagem.coda)
FROM ator, filme, personagem
WHERE personagem.coda = ator.coda
AND personagem.codf = filme.codf
GROUP BY ator.nomereal

SELECT ator.nomereal, min(filme.ano), max(filme.ano)
FROM ator, filme, personagem
WHERE personagem.coda = ator.coda
AND personagem.codf = filme.codf
AND ator.oscar = 0
GROUP BY ator.nomereal

SELECT filme.nome, avg(cache), min(cache), max(cache), sum(cache)
FROM filme, personagem
WHERE personagem.codf = filme.codf
GROUP BY filme.nomeart

SELECT ator.nomereal, COUNT(personagem.codf)
FROM ator, personagem, filme
WHERE personagem.coda = ator.coda
AND personagem.codf = filme.codf
GROUP BY ator.nomereal
HAVING sum(personagem.codf>1)

SELECT COUNT(DISTINCT personagem.cache)
FROM personagem
WHERE personagem.cache>2000

GROUP BY personagem.personagem
HAVING SUM(personagem.cache)<8000