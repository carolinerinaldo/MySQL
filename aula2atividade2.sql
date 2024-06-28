CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(255) NOT NULL,
    valor DECIMAL(5,2),
    popularidade VARCHAR(255) NOT NULL,
    calorias BIGINT
);

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias (tipo, tamanho) VALUES
('Salgada', 'Pequeno'),
('Salgada', 'Médio'),
('Doce', 'Grande'),
('Salgada', 'Grande'),
('Doce', 'Pequena');

INSERT INTO tb_pizzas (sabor, valor, popularidade, calorias, categoriaid) VALUES
("Marguerita", 35.90, "alta", 500, 4),
("Calabresa", 38.90, "alta", 550, 4),
("Quatro Queijos", 60.90, "média", 600, 2),
("Portuguesa", 42.90, "alta", 620, 2),
("Frango com Catupiry", 65.90, "baixa", 580, 1),
("Pepperoni", 59.90, "média", 590, 3),
("Chocolate", 77.90, "baixa", 530, 3),
("Abacaxi", 58.90, "média", 480, 5);

SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT sabor, valor, popularidade, calorias, tb_categorias.tipo, tb_categorias.tamanho
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT sabor, valor, popularidade, calorias, tb_categorias.tipo, tb_categorias.tamanho
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id WHERE tipo = "Doce";

SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias;
