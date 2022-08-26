CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categorias (
	id bigint auto_increment primary key,
    descricao varchar(255),
    tamanho varchar(255),
    borda_recheada boolean
);
CREATE TABLE tb_pizzas (
	id bigint auto_increment primary key,
    sabor varchar(255),
    quantidade int,
    preco decimal(6,2),
    massa varchar(255),
    categoria_id bigint,

	FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Salgado","Brotinho", true);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Salgado","Brotinho", false);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Salgado","Média", true);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Salgado","Média", false);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Salgado","Grande", true);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Salgado","Grande", false);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Doce","Brotinho", true);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Doce","Brotinho", false);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Doce","Média", true);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Doce","Média", false);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Doce","Grande", true);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Doce","Grande", false);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Vegeteriana","Média", true);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Vegeteriana","Média", false);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Vegeteriana","Grande", true);
INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Vegeteriana","Grande", false);

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas (sabor, quantidade, preco, massa, categoria_id) VALUES ("Frango c/ Catupiry", 3, 54.99,"tradicional",5);
INSERT INTO tb_pizzas (sabor, quantidade, preco, massa, categoria_id) VALUES ("Marguerita", 4, 30.00,"tradicional",1);
INSERT INTO tb_pizzas (sabor, quantidade, preco, massa, categoria_id) VALUES ("Prestígio", 5, 45.99,"tradicional",8);
INSERT INTO tb_pizzas (sabor, quantidade, preco, massa, categoria_id) VALUES ("Sensação", 5, 45.99,"tradicional",11);
INSERT INTO tb_pizzas (sabor, quantidade, preco, massa, categoria_id) VALUES ("Peperoni", 5, 36.99,"tradicional",4);
INSERT INTO tb_pizzas (sabor, quantidade, preco, massa, categoria_id) VALUES ("Brocolis c/ catupiry", 2, 65.00,"tradicional",16);
INSERT INTO tb_pizzas (sabor, quantidade, preco, massa, categoria_id) VALUES ("Caprese", 3, 99.00,"tradicional",15);
INSERT INTO tb_pizzas (sabor, quantidade, preco, massa, categoria_id) VALUES ("Nutella c/ ferrero rocher", 3, 100.99,"tradicional",12);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;
