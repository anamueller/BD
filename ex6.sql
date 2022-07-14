create table departamento (Dnum int, nome varchar(10), TotalSal float,
PRIMARY KEY(Dnum));
create table empregado (id int, nome varchar(10), salario float, dnum int,
PRIMARY KEY(id),
FOREIGN KEY(Dnum) REFERENCES departamento(Dnum));

INSERT INTO departamento (Dnum, nome, TotalSal)
VALUES (1, 'computação', 0),
(2, 'matemática', 0);

CREATE TRIGGER sal_insert AFTER INSERT
ON empregado
FOR EACH ROW
UPDATE departamento SET TotalSal = TotalSal + NEW.salario
WHERE Dnum = NEW.dnum;
INSERT INTO empregado (id, nome, salario, dnum)
VALUES (1, 'Ana', 1600, 1),
(2, 'Henrique', 2000, 2),
(3, 'Elisa', 3500, 1);
SELECT TotalSal
FROM departamento;

CREATE TRIGGER sal_mudou AFTER UPDATE
ON empregado
FOR EACH ROW
UPDATE departamento SET TotalSal = TotalSal - OLD.salario
WHERE Dnum = OLD.dnum;
CREATE TRIGGER sal_mudou2 AFTER UPDATE
ON empregado
FOR EACH ROW
UPDATE departamento SET TotalSal = TotalSal + NEW.salario
WHERE Dnum = NEW.dnum;
UPDATE empregado
SET dnum = 1
WHERE id = 2;

SELECT TotalSal
FROM departamento;
TotalSal

CREATE TRIGGER folha_insert AFTER INSERT
ON empregado
FOR EACH ROW
INSERT INTO FolhaPagto (salario, codemp)
VALUES (NEW.salario, NEW.id);
INSERT INTO empregado (id, nome, salario, dnum)
VALUES (1, 'Ana', 1600, 1),
(2, 'Henrique', 2000, 2),
(3, 'Elisa', 3500, 1);
SELECT id, salario, codemp
FROM FolhaPagto;