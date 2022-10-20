SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS quiz DEFAULT CHARACTER SET utf8 ;
USE quiz ;

-- -----------------------------------------------------
-- Table mydb.tab_alunos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS quiz.tab_alunos (
  id INT NOT NULL AUTO_INCREMENT,
  nome_aluno VARCHAR(45) NULL,
  curso VARCHAR(45) NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

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
