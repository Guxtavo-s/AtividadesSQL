CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_classes (
	id bigint auto_increment primary key,
    classe varchar(255),
    mana int,
    vida int
);
CREATE TABLE tb_personagens (
	id bigint auto_increment primary key,
    nome varchar(255),
    arma varchar(255),
    lvl int,
    especialidade_arma varchar(255),
    MPdamage int,
    defense int,
    classes_id bigint,
    
    FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (classe, mana, vida) VALUES ("Knight","0","1000");
INSERT INTO tb_classes (classe, mana, vida) VALUES ("Sorcerer","1000","600");
INSERT INTO tb_classes (classe, mana, vida) VALUES ("Paladin","400","650");
INSERT INTO tb_classes (classe, mana, vida) VALUES ("Druid","1000","700");
INSERT INTO tb_classes (classe, mana, vida) VALUES ("Necromancer","850","750");

INSERT INTO tb_personagens (nome, arma, lvl, especialidade_arma, MPdamage, defense, classes_id) VALUES ("Theor Malix", "Espada Longa", 30, "Espadas", 2200, 2000, 1);
INSERT INTO tb_personagens (nome, arma, lvl, especialidade_arma, MPdamage, defense, classes_id) VALUES ("Lissandra Marge", "Double Axes", 15, "Machados", 1500,1000, 1);
INSERT INTO tb_personagens (nome, arma, lvl, especialidade_arma, MPdamage, defense, classes_id) VALUES ("Yennefer of Vengerberg", "Magic", 40, "Fire", 5000,3000, 2);
INSERT INTO tb_personagens (nome, arma, lvl, especialidade_arma, MPdamage, defense, classes_id) VALUES ("Geralt of Rivia", "Espada", "Focus and Magic", 3000,2200, 1);
INSERT INTO tb_personagens (nome, arma, lvl, especialidade_arma, MPdamage, defense, classes_id) VALUES ("Yelena Croux", "Magic", 19, "Ice", 2500,1500, 2);
INSERT INTO tb_personagens (nome, arma, lvl, especialidade_arma, MPdamage, defense, classes_id) VALUES ("Oliver Quinn", "Bow and Arrow", 25, "Fire Arrow", 2700,1906, 3);
INSERT INTO tb_personagens (nome, arma, lvl, especialidade_arma, MPdamage, defense, classes_id) VALUES ("Merida", "Bow and Arrow", 14, "Focus", 1803,1000, 3);
INSERT INTO tb_personagens (nome, arma, lvl, especialidade_arma, MPdamage, defense, classes_id) VALUES ("Merlin Stonewall", "Cajado - Rod", 14, "Cure", 1900, 900, 4);
INSERT INTO tb_personagens (nome, arma, lvl, especialidade_arma, MPdamage, defense, classes_id) VALUES ("Drogon Deathhand", "Black Magic", 26, "Black Magic", 3000,2300, 5);

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

SELECT * FROM tb_personagens WHERE MPdamage > 2000;
SELECT * FROM tb_personagens WHERE defense  BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;
