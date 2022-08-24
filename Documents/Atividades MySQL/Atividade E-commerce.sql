CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_product (
	id bigint auto_increment primary key,
    nome varchar(255),
    quantidade bigint,
    marca varchar(255),
    preco decimal(8,2)
);
SELECT * FROM tb_product;

INSERT INTO tb_product(nome, quantidade, marca, preco) VALUES("Teclado Gamer",309,"Corsair",269.90);
SELECT * FROM tb_product WHERE preco > 500.00;
SELECT * FROM tb_product WHERE preco < 500.00;

UPDATE tb_product SET quantidade = 45 WHERE id=4;
