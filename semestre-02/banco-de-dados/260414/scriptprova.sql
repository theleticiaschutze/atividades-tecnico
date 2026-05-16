CREATE DATABASE Cinefun;

USE Cinefun;

CREATE TABLE Sala(
	id INT PRIMARY KEY AUTO_INCREMENT,
	tam_tela_pol DECIMAL(8,2),
	area_m DECIMAL(8,2),
	status ENUM('Disponível','Limpeza','Manutenção'),
	capacidade INT
);
	
CREATE TABLE Filme(
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(45) NOT NULL,
	classificacao VARCHAR(45),
	duracao INT
);

CREATE TABLE Sessao(
	id INT PRIMARY KEY AUTO_INCREMENT,
	data DATE,
	hora TIME,
	preco DECIMAL (8,2),
	sala INT,
	filme INT,
	FOREIGN KEY (sala) REFERENCES Sala(id),
	FOREIGN KEY (filme) REFERENCES Filme(id)
);

CREATE TABLE Cliente(
	cpf VARCHAR(30)PRIMARY KEY,
	nome_completo VARCHAR(200),
	telefone VARCHAR(45)
);

ALTER TABLE Cliente ADD COLUMN data_nascimento DATE DEFAULT "2026-04-14"
	
	
INSERT INTO Sala(id, tam_tela_pol, area_m, status, capacidade)VALUES
(NULL, 600, 50.5, "Disponível", 150),
(NULL, 900, 100, "Limpeza", 500);

INSERT INTO Filme(id, titulo, classificacao, duracao)VALUES
(NULL, "Star Wars", "maiores de 14 anos", 220),
(NULL, "Shrek 2", "livre", 180);

INSERT INTO Sessao(id, data, hora, preco, sala, filme)VALUES
(NULL, '2026-04-14', '19:00', 25.80, 1, 2);

UPDATE Cliente SET telefone = "+55 (47) 98866-8866" WHERE cpf  = "10898988989";

DELETE FROM Filme WHERE id = 10;

CREATE USER 'user_ext'@'localhost' IDENTIFIED BY 'senha0101';

GRANT SELECT, INSERT ON Cinefun.* TO 'user_ext'@'localhost';



--atividades pós correção

CREATE TABLE Funcionario(
	matricula INT PRIMARY KEY AUTO_INCREMENT,
	nome_completo VARCHAR(200),
	cargo VARCHAR(45)
);

CREATE TABLE Ingresso(
	codigo INT PRIMARY KEY AUTO_INCREMENT,
	tipo ENUM('Meia','Inteira'),
	hora TIME,
	valor DECIMAL(8,2),
	assento INT,
	cliente VARCHAR(30),
	funcionario INT,
	sessao INT,
	FOREIGN KEY (cliente) REFERENCES cliente(cpf),
	FOREIGN KEY (sessao) REFERENCES sessao(id),
	FOREIGN KEY (funcionario) REFERENCES funcionario(matricula)
);

--agora tem a data_nascimento

INSERT INTO Cliente VALUES 
("12345678999", "Princesa Isabel", "+55(11)99886-6558", '2005-04-12'),
("98765432111", "Favio Bolsonaro", "+55(41)96655-3322", '2001-06-23');

INSERT INTO Sessao(id, data, hora, preco, sala, filme)VALUES
(NULL, '2026-04-14', '18:00', 25.80, 2, 1);

INSERT INTO Funcionario VALUES
(NULL, "Alvaro de Souza", "gerente"),
(NULL, "Pedro Antunes", "estagiario");

INSERT INTO Ingresso VALUES
(NULL, "Inteira", '15:32', 25.80, 12, "12345678999", 1, 2),
(NULL, "Inteira", '16:40', 25.80, 32, "98765432111", 1, 1);

--01
-- o uso de % ao inves de localhost deixa entrarem coputadores de outros lugares
CREATE USER 'caixa'@'%' IDENTIFIED BY 'caixa0101';

GRANT SELECT, INSERT ON Cinefun.ingresso TO 'caixa'@'%';
GRANT SELECT ON Cinefun.sessao TO 'caixa'@'%';

--para tirar permissao 
REVOKE INSERT ON Cinefun.sessao TO 'caixa'@'%';

--02
CREATE USER 'gerente'@'%' IDENTIFIED BY 'gerente0101';

GRANT ALL PRIVILEGES ON Cinefun.* TO 'gerente'@'%';

--03
CREATE USER 'analistamkt'@'%' IDENTIFIED BY 'senha0101';

GRANT SELECT ON Cinefun.cliente, SELECT ON Cinefun.ingresso TO 'analistamkt'@'%';

--04
CREATE USER 'auditor_ext'@'localhost' IDENTIFIED BY 'senha0101';

GRANT SELECT ON Cinefun.* TO 'auditor_ext'@'localhost';

--05 - tirar as permissões do usuario caixa!

REVOKE SELECT ON cinefun.sessao FROM 'caixa'@'%';
REVOKE SELECT, INSERT ON cinefun.ingresso FROM 'caixa'@'%';


-- alguns comandos 
SHOW GRANTS; 

SHOW GRANTS FOR 'user'@'host';

SELECT user, host FROM mysql.user;

DROP USER 'caixa'@'locahost';

REVOKE SELECT ON bancodedados.tabela FROM 'user'@'host';

GRANT ALL PRIVILEGES ON Cinefun.* TO 'user'@'host';
