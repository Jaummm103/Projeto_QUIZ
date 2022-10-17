-- -----------------------------------------------------
-- Criação da tabela de perguntas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS quiz.tab_perguntas (
	id_pergunta INT NOT NULL,
    descricao VARCHAR(255) NULL,
    PRIMARY KEY (id_pergunta)
);

-- -----------------------------------------------------
-- Criação da tabela de perfis
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS quiz.tab_perfis (
	id_perfil INT NOT NULL,
    nome VARCHAR(45) NULL,
    descricao VARCHAR(255) NULL,
    PRIMARY KEY (id_perfil)
);

-- -----------------------------------------------------
-- Criação da tabela de respostas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS quiz.tab_respostas (
	id_resposta INT NOT NULL,
    descricao VARCHAR(255) NULL,
    id_perfil INT,
    PRIMARY KEY (id_resposta),
    CONSTRAINT FK_perfil FOREIGN KEY (id_perfil) REFERENCES quiz.tab_perfis(id_perfil) ON UPDATE CASCADE
);