CREATE DATABASE cidade;
USE cidade;

CREATE TABLE cidade(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    cidade VARCHAR(30), 
    ativo BOOLEAN
);

INSERT INTO cidade (nome, idade, cidade, ativo) 
VALUES('Ana Souza', 25, 'São Paulo', TRUE),
	  ('Bruno Lima', 32, 'Rio de Janeiro', FALSE),
	  ('Carlos Mendes', 40, 'Belo Horizonte', TRUE),
	  ('Daniela Rocha', 29, 'São Paulo', TRUE),
	  ('Eduardo Silva', 35, 'Curitiba', FALSE),
	  ('Fernanda Costa', 22, 'Recife', TRUE),
	  ('Gustavo Nunes', 28, 'Fortaleza', TRUE),
	  ('Helena Martins', 45, 'Rio de Janeiro', FALSE),
	  ('Igor Ferreira', 31, 'São Paulo', TRUE),
	  ('Juliana Alves', 38, 'Curitiba', TRUE);

SELECT * FROM cidade
where idade > 30; -- idade maior que 30

SELECT * FROM cidade
WHERE cidade = 'São Paulo' or cidade = 'Rio de Janeiro'; -- cidades iguas a SP e RJ

SELECT * FROM cidade
WHERE idade <= 35 and ativo = 0; -- clientes nao ativos com idade menor de 35

SELECT * FROM cidade
WHERE cidade != 'Curitiba'; -- clientes que nao sao de curitiba

SELECT * FROM cidade
WHERE idade BETWEEN 25 and 40 and cidade = 'Recife' or cidade = 'Fortaleza'; -- pessoas que tem idade entre 25 a 40 e moram ou no recife ou em fortaleza

SELECT * FROM cidade
WHERE cidade != 'São Paulo' and idade >= 30; -- nao moram em sp e sao maiores de 30 anos

SELECT * FROM cidade 
WHERE ativo = 1 and idade < 30;

SELECT * FROM cidade
WHERE ativo = 0 and cidade != 'Belo Horizonte';

SELECT * FROM cidade
WHERE idade NOT BETWEEN 25 and 35 and ativo = 1;

SELECT * FROM cidade 
WHERE cidade = 'São Paulo' and ativo = 0;


