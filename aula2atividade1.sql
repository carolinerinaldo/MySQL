CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    equipe VARCHAR(255) NOT NULL,
    nivel VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    habilidade VARCHAR(255) NOT NULL,
	poder_ataque BIGINT,
    poder_defesa BIGINT,
    categoriaid BIGINT
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (categoriaid) REFERENCES tb_classes (id);

INSERT INTO tb_classes(equipe, nivel)
VALUES ("Azul", "1"),
("Vermelho", "2"),
("Verde", "3"),
("Amarelo", "4"),
("Preto", "5");

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, popularidade)
VALUES ("Ziro", "voo", 300.00, 1500, "alta"),
("Luna", "invisibilidade", 200.00, 1500, "média"),
("Rex", "super-força", 250.00, 1500, "alta"),
("Eva", "telepatia", 180.00, 1500, "baixa"),
("Max", "velocidade", 220.00, 1000, "alta"),
("Bella", "teletransporte", 300.00, 2500, "média"),
("Leo", "manipulação do tempo", 350.00, 1500, "alta"),
("Cloe", "cura", 210.00, 1500, "baixa");

UPDATE tb_personagens SET categoriaid = 1 WHERE id = 1;
UPDATE tb_personagens SET categoriaid = 2 WHERE id = 2;
UPDATE tb_personagens SET categoriaid = 3 WHERE id = 3;
UPDATE tb_personagens SET categoriaid = 2 WHERE id = 4;
UPDATE tb_personagens SET categoriaid = 5 WHERE id = 5;
UPDATE tb_personagens SET categoriaid = 5 WHERE id = 6;
UPDATE tb_personagens SET categoriaid = 5 WHERE id = 7;
UPDATE tb_personagens SET categoriaid = 5 WHERE id = 8;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, habilidade, poder_ataque, poder_defesa, tb_classes.equipe, tb_classes.nivel
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.categoriaid = tb_classes.id;

SELECT nome, habilidade, poder_ataque, poder_defesa, tb_classes.equipe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.categoriaid = tb_classes.id;
