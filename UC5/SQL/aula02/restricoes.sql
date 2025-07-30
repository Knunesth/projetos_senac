CREATE DATABASE restricoes;
use restricoes;

CREATE TABLE pessoas(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
	nome VARCHAR(50) NOT NULL,
    genero ENUM('M', 'F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nascionalidade VARCHAR(20) DEFAULT('Brasileiro(a)')
);

ALTER TABLE pessoas
ADD COLUMN telefone VARCHAR(14);

ALTER TABLE usuarios
DROP COLUMN numero_telefone;

ALTER TABLE pessoas
ADD COLUMN telefone VARCHAR(14) AFTER nome;

ALTER TABLE usuarios
ADD COLUMN numero_telefone VARCHAR(14) FIRST;

ALTER TABLE pessoas
MODIFY COLUMN telefone INT;

ALTER TABLE pessoas
CHANGE COLUMN telefone numero_telefone INT;

ALTER TABLE pessoas
RENAME TO usuarios;

DROP TABLE usuarios; /*escluir a tabela pessoas*/

INSERT INTO pessoas (nome, genero, peso, altura, nascionalidade)
VALUE ('kaua', 'M', 70.50, 1.76, 'Argentino'),
	  ('pedro', 'M', 75.50, 1.80, 'Bahiano'),
      ('Ana', 'F', 100.60, 2.20, 'Japones');
      
INSERT INTO pessoas (nome, genero, peso, altura)
VALUE ('kaua', 'M', 70.50, 1.76),
	  ('pedro', 'M', 75.50, 1.80),
      ('Ana', 'F', 100.60, 2.20);

SELECT * FROM usuarios;
SELECT nome,nascionalidade FROM usuarios
WHERE nascionalidade = 'Bahiano';
