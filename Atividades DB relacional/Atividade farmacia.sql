CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;
CREATE TABLE tb_categorias (
	id bigint auto_increment primary key,
    tarja varchar(255),
    descricao varchar(255)
);
CREATE TABLE tb_produtos (
	id bigint auto_increment primary key,
    nome varchar(255),
    quantidade int,
    quilograma decimal(6,4),
    preco decimal(6,2),
    categoria_id bigint,
    
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tarja, descricao) VALUES ("vermelha", "medicamento");
INSERT INTO tb_categorias(tarja, descricao) VALUES ("amarela", "medicamento");
INSERT INTO tb_categorias(tarja, descricao) VALUES ("preta", "medicamento");
INSERT INTO tb_categorias(tarja, descricao) VALUES (null, "medicamento");
INSERT INTO tb_categorias(tarja, descricao) VALUES (null, "beleza");
INSERT INTO tb_categorias(tarja, descricao) VALUES (null, "bebida");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos (nome, quantidade, quilograma, preco, categoria_id) VALUES ("Dorflex", 2, 0.0440, 32.96, 4);
INSERT INTO tb_produtos (nome, quantidade, quilograma, preco, categoria_id) VALUES ("Histamin", 5, 0.0100, 15.99, 4);
INSERT INTO tb_produtos (nome, quantidade, quilograma, preco, categoria_id) VALUES ("Amoxicilina", 3, 0.0450, 68.99, 1);
INSERT INTO tb_produtos (nome, quantidade, quilograma, preco, categoria_id) VALUES ("Ibuprofeno", 3, 0.0130, 21.99, 2);
INSERT INTO tb_produtos (nome, quantidade, quilograma, preco, categoria_id) VALUES ("Diazepam", 7, 0.0150, 28.99, 3);
INSERT INTO tb_produtos (nome, quantidade, quilograma, preco, categoria_id) VALUES ("Sabonete liquido facial", 10, 0.2880, 59.99, 5);
INSERT INTO tb_produtos (nome, quantidade, quilograma, preco, categoria_id) VALUES ("Esfoliante facial", 2, 0.150, 75.99, 5);
INSERT INTO tb_produtos (nome, quantidade, quilograma, preco, categoria_id) VALUES ("Água", 3, 0.550, 2.50, 6);
INSERT INTO tb_produtos (nome, quantidade, quilograma, preco, categoria_id) VALUES ("Suco de laranja", 3, 0.900, 5.00, 6);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_categorias INNER JOIN tb_produtos ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias WHERE tb_categorias.id = 5 AND tb_produtos.categoria_id = 5;
