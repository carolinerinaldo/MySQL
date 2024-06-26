CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    area VARCHAR(255) NOT NULL,
    cargahoraria INT NOT NULL,
    valor DECIMAL(6,2) NOT NULL
);

INSERT INTO tb_produtos(nome, area, cargahoraria, valor)
VALUES ("Iniciando em TI", "TI", 80, 800.00),
("Front-end", "TI", 40, 400.00),
("Iniciando em RH", "RH", 80, 450.00),
("Contratações", "RH", 40, 300.00),
("Iniciando em Inglês", "Línguas", 80, 600.00),
("Inglês 1", "Línguas", 40, 300.00),
("Inglês 2", "Línguas", 40, 300.00),
("Inglês 3", "Línguas", 40, 300.00);

Select * FROM tb_produtos WHERE valor > 500;

Select * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET valor = 900 WHERE ID = 8;
