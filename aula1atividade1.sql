CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_quadro(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    CPF BIGINT NOT NULL,
    funcao VARCHAR(100) NOT NULL,
    salario DECIMAL(7,2) NOT NULL    
);

INSERT INTO tb_quadro(nome, CPF, funcao, salario)
VALUES ("Caroline Dantas",12345678999, "desenvolvedora", 7000.00);
INSERT INTO tb_quadro(nome, CPF, funcao, salario)
VALUES ("Ana Silva",12345678998, "analista", 5000.00);
INSERT INTO tb_quadro(nome, CPF, funcao, salario)
VALUES ("Bianca Silva",12345678997, "rh", 3000.00);
INSERT INTO tb_quadro(nome, CPF, funcao, salario)
VALUES ("Mariana Silva",12345678996, "CEO", 15000.00);
INSERT INTO tb_quadro(nome, CPF, funcao, salario)
VALUES ("Carol Silva",12345678995, "aprendiz", 2000.00);

SELECT * FROM tb_quadro WHERE salario > 2000.00;

SELECT * FROM tb_quadro WHERE salario < 2000.00;

UPDATE tb_quadro SET salario = 1500.00 WHERE id = 5;
