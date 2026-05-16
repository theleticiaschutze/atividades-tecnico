-- script de criação de banco de dados da Loja Online!
-- Aula do dia 17/03/26

CREATE DATABASE lojaonline; 

USE lojaonline;

CREATE TABLE Produto(
	id INT PRIMARY KEY,
	nome VARCHAR(200),
	descricao VARCHAR(300),
	preco DECIMAL(10,2),
	tipo ENUM('Novo', 'Usado', 'Liquidacao', 'Promocao', 'Outro'),
	categoria SET('Eletronico', 'Telefonia', 'Informatica', 'Eletrodomestico', 'Acessorio', 'Outro'),
	lancamento DATE,
	desconto DECIMAL(10,2)
);

CREATE TABLE Caracteristica(
	id INT PRIMARY KEY,
	nome VARCHAR(200),
	descricao VARCHAR(300)
);

CREATE TABLE ProdutoCaracteristica(
	produto INT,
	caracteristica INT,
	PRIMARY KEY (produto, caracteristica),
	FOREIGN KEY (produto) REFERENCES Produto(id),
	FOREIGN KEY (caracteristica) REFERENCES Caracteristica(id)
);

CREATE TABLE Loja(
	id INT PRIMARY KEY,
	nome VARCHAR(200),
	endereco VARCHAR(300),
	telefone VARCHAR(50)
);

CREATE TABLE Estoque(
	loja INT,
	produto INT,
	quantidade INT,
	PRIMARY KEY (loja, produto),
	FOREIGN KEY (loja) REFERENCES Loja(id),
	FOREIGN KEY (produto) REFERENCES Produto(id)
);

--colocando uma população(dados nas tabelas)

INSERT INTO Produto(id, nome, descricao, preco, tipo, categoria, lancamento, desconto)VALUES
(1, 'Mouse', 'Mouse USB simples, de infravermelho na cor preta', 80.80, 'Novo', 'Informatica', '2020-03-10', 0.0);

INSERT INTO Produto(id, nome, descricao, preco, tipo, categoria, lancamento, desconto)VALUES
(2, 'Teclado', 'Teclado preto simples, ABNT2', 200.66, 'Novo', 'Informatica', '2023-06-23', 0.0);

INSERT INTO Produto(id, nome, descricao, preco, tipo, categoria, lancamento, desconto)VALUES
(3, 'Tela usada', 'Tela 16" usada, sem defeitos', 100.55, 'Novo', 'Informatica', '2019-03-16', 20.55);

INSERT INTO Produto(id, nome, descricao, preco, tipo, categoria, lancamento, desconto)VALUES
(4, 'Mousepad', 'Mousepad de tamanho médio, de cor azul e preta', 25.25, 'Novo', 'Informatica', '2025-05-12', 0.0);

INSERT INTO Loja(id, nome, endereco, telefone)VALUES
(1, 'Loja da lele', 'Rua Luiz Sarti, n1733, Nereu Ramos, Jaragua do Sul', '47993122154');

INSERT INTO Loja(id, nome, endereco, telefone)VALUES
(2, 'Loja do Matheus', 'Rua Domingues dos Santos, n555, Centro, Curitiba', '41954326957');

INSERT INTO Estoque(loja, produto, quantidade)VALUES
(1, 1, 16);

INSERT INTO Estoque(loja, produto, quantidade)VALUES
(1, 2, 20);

INSERT INTO Estoque(loja, produto, quantidade)VALUES
(1, 3, 1);

INSERT INTO Estoque(loja, produto, quantidade)VALUES
(2, 1, 10);

INSERT INTO Estoque(loja, produto, quantidade)VALUES
(2, 2, 10);

INSERT INTO Caracteristica(id, nome, descricao)VALUES
(1, 'tela', 'full HD');

INSERT INTO Caracteristica(id, nome, descricao)VALUES
(2, 'velocidade', '240fps');

INSERT INTO Caracteristica(id, nome, descricao)VALUES
(3, 'uso', 'domestico');

INSERT INTO Caracteristica(id, nome, descricao)VALUES
(4, 'cor', 'preto');

INSERT INTO ProdutoCaracteristica(produto, caracteristica) VALUES
(1, 3);

INSERT INTO ProdutoCaracteristica(produto, caracteristica) VALUES
(2, 3);

INSERT INTO ProdutoCaracteristica(produto, caracteristica) VALUES
(3, 3);

INSERT INTO ProdutoCaracteristica(produto, caracteristica) VALUES
(3, 1);

INSERT INTO ProdutoCaracteristica(produto, caracteristica) VALUES
(2, 2);

INSERT INTO ProdutoCaracteristica(produto, caracteristica) VALUES
(3, 2);
--Aqui vamos colocar um negocio para outras pessoas poderem usar - loja é o usuario, e o % é para dizer que pode ser de qualquer lugar, e a senha é o que vai ser colocado ali para poder entrar

CREATE USER 'loja'@'%' IDENTIFIED BY 'senha';

-- para verificar usuarios - DISTINCT É PARA USUARIOS DIFERENTES
SELECT DISTINCT USER FROM mysql.user;

--ai isso dentro do shell do mysql
#mysql -u loja -p -h e o id do local do database

insert into produto(id, nome, descricao, preco, tipo, categoria, datalancamento, descontousado)VALUES
(100, 'geleca', 'meleca de brincar', 10.99, 'Outros', 'Outros', '2026-12-25', 0.0);