CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (

id bigint auto_increment,
nome varchar(100) not null, 
preco decimal(3.2) not null, 
quantidade int not null, 
sabor varchar(100),
id_categoria bigint,
PRIMARY KEY (id)
);

CREATE TABLE tb_categorias (
id bigint auto_increment, 
tipo varchar(100) not null, 
borda varchar(100),
PRIMARY KEY (id)
);

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias (tipo, borda) 
values ("doce", "chocolate");

INSERT INTO tb_categorias (tipo, borda) 
values ("doce", "catupiry");

INSERT INTO tb_categorias (tipo, borda) 
values ("salgado", "chocolate");

INSERT INTO tb_categorias (tipo, borda) 
values ("doce", "cheddar");

INSERT INTO tb_categorias (tipo, borda) 
values ("salgado", "cheddar");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas (nome, id_categoria, quantidade, sabor, preco) 
values ("calabresa", 3, 10, "calabresa e cebola", 34.99);

INSERT INTO tb_pizzas (nome,id_categoria , quantidade, sabor,preco ) 
values ("mussarela", 5, 15, "mussarela e azeitona", 21.99);

INSERT INTO tb_pizzas (nome,id_categoria, quantidade, sabor,preco ) 
values ("frango", 5, 5, "frango com catupiry", 39.90);

INSERT INTO tb_pizzas (nome, id_categoria, quantidade, sabor, preco) 
values ("brigadeiro", 1, 5, "chocolate e granulado", 29.55);

INSERT INTO tb_pizzas (nome, id_categoria, quantidade, sabor, preco) 
values ("morango", 4, 5, "chocolate e morango", 29.00);

INSERT INTO tb_pizzas (nome, id_categoria, quantidade, sabor, preco) 
values ("quatro queijos", 5, 5, "mussarela, provolone, gorgonzola, parmesão", 42.95);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco > 50.00 AND preco < 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE ("%m%");

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.id_categoria;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.id_categoria WHERE id_categoria = 3;