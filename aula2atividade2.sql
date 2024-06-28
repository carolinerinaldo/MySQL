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



SELECT * FROM tb_pizzas;