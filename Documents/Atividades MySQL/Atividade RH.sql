CREATE DATABASE db_rh;
USE db_rh;
CREATE TABLE db_colab(
	id bigint auto_increment primary key,
    nome varchar(255),
    data_nascimento date,
    cargo varchar(255),
    salario decimal(8,2)
);
SELECT * FROM db_colab;
INSERT INTO db_colab(nome, data_nascimento, cargo, salario) VALUES ("Chris Redfield", "2002-01-17", "Estagiário", 1500.00);
SELECT * FROM db_colab WHERE salario < 2000.00;
SELECT * FROM db_colab WHERE salario > 2000.00;
UPDATE db_colab SET salario = 9000.00, cargo = "Java Senior Developer" WHERE id=3;