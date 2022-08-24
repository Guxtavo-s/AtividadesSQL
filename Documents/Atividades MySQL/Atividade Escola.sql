CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_alunes (
	id bigint auto_increment primary key,
    nome varchar(255),
    data_nascimento date,
    turma varchar(255),
    nota decimal(4,2)
);

SELECT * FROM tb_alunes;
INSERT INTO tb_alunes(nome, data_nascimento, turma, nota) VALUES("Cedric Diggory","1977-09-1","Hafflepuff",8);

SELECT * FROM tb_alunes WHERE nota > 7;
SELECT * FROM tb_alunes WHERE nota < 7;

UPDATE tb_alunes SET nota = 5 WHERE id=5;

