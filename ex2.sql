CREATE TABLE Ator(
        coda integer,
        nomeart varchar(25),
        nomereal varchar(25),
        nacionalidade varchar(25),
        sexo char,
        indicacoesoscar integer,
        num_oscar integer,
    PRIMARY KEY (coda));

CREATE TABLE Filme(
        codf integer,
        nome varchar(20),
        ano date,
        orcamento float,
        tempo float,
    PRIMARY KEY (codf));

CREATE TABLE Personagem(
        coda integer,
        codf integer,
        personagem varchar(25),
        cache float,
    PRIMARY KEY (coda, codf),
    FOREIGN KEY(coda) REFERENCES Ator(coda),
    FOREIGN KEY(codf) REFERENCES Filme(codf));

insert into Ator(coda, nomeart, nomereal, nacionalidade, sexo, indicacoesoscar,
num_oscar)
    values  (1, "DemiMoore", "MariadaSilva", "USA", "f", 0, 0),
            (2, "BradPitt", "JoaoPaulo", "USA", "f", 1, 0),
            (3, "DustinHoffman", "DustinHoffman", "USA", "m", 2, 0),
            (4, "JessicaLange", "JessicaLange", "USA", "f", 4, 2),
            (5, "SoniaBraga", "SoniaBraga", "USA", "f", 0, 0);  

insert into Filme(codf, nome, ano, orcamento, tempo)
    values  (1, "AJurada", '1996-12-12', 1000000, 18),
            (2, "A Letra Escarlate", '1995-12-12', 10000000, 24),
            (3, "Seven", '1995-12-12', 1500000, 20),
            (4, "Tootsie", '1982-12-12', 50000, 16),
            (5, "Tieta", '1995-12-12', 200000, 18);

insert into Personagem(coda, codf, personagem, cache)
    values  (1, 1, "Mary", 3.000),
            (1, 2, "Sandy", 5.000),
            (2, 3, "John", 5.000),
            (3, 4, "Mary", 1000),
            (4, 4, "Tootsie", 2.000),
            (5, 5, "Tieta", 500);


UPDATE Ator
SET sexo = “m”
WHERE coda = 2;

UPDATE Personagem
SET cache = cache + 0.10*cache
WHERE coda;

DELETE FROM Filme
WHERE nome = “Tieta”

DELETE FROM Personagem
WHERE personagem = “Tootsie”
