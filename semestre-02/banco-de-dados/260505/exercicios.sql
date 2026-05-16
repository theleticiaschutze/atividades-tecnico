--Atividade AULA 05/05/26

--EXERCICIOS 01 (SELECT na mesma tabela)
--nesse primeiro modelo assim o sistema só encontra se for colocado exatamente Eletronico
SELECT nome, descricao FROM Produto WHERE categoria = "Eletronico";

--nesse funciona melhor pois mesmo que a pessoa digite eletro, ou eletroni
SELECT nome, descricao FROM Produto WHERE categoria LIKE "Eletronico";

--02
SELECT nome, tipo FROM Produto WHERE preco > 1000,00;

--03
SELECT nome, categoria, data_lancamento FROM Produto WHERE data_lancamento LIKE "2023%"; 

--04
SELECT nome, descricao FROM Produto WHERE nome LIKE "%Smartphone%"; 

--05
SELECT nome, categoria FROM Produto WHERE categoria LIKE "Eletronico" OR categoria LIKE "Telefonia";

--06
SELECT nome, descricao FROM Produto WHERE descricao LIKE "%profissional%"; 

--07
SELECT nome, descricao FROM Produto WHERE nome LIKE "c%";

--08
SELECT nome, categoria FROM Produto WHERE nome LIKE "%Premium";

--09
SELECT nome, descricao FROM Produto WHERE descricao LIKE "%alta%" AND preco > 900;

--10
SELECT nome, descricao FROM Produto WHERE nome LIKE "%smartphone%" OR nome LIKE "%notebook%";

--EXERCICIOS 02 (Juntando mais de uma tabela)
--01
SELECT p.nome, p.descricao 
FROM Produto AS p 
INNER JOIN Estoque AS e 
INNER JOIN Loja as l 
ON p.id = e.id_produto
AND l.id = e.id_loja
WHERE l.cidade LIKE "Sao Paulo";

--02
SELECT p.nome, c.descricao
FROM Produto AS p
INNER JOIN Produto_Caracteristica AS pc
INNER JOIN Caracteristica AS c
ON p.id = pc.id_produto
AND c.id = pc.id_caracteristica;

--03
SELECT l.nome, l.cidade, e.quantidade_disponivel
FROM loja AS l
INNER JOIN estoque AS e
ON l.id = e.id_loja;

--04
SELECT p.nome, p.descricao
FROM Produto AS p 
INNER JOIN Estoque AS e 
ON p.id = e.id_produto
WHERE quantidade_disponivel > 10;

--05
SELECT p.nome, e.quantidade_disponivel, l.cidade
FROM Produto AS p 
INNER JOIN Estoque AS e
INNER JOIN Loja AS l
ON p.id = e.id_produto
WHERE l.cidade LIKE "Salvador";

--06
SELECT p.nome, p.descricao 
FROM Produto AS p
INNER JOIN Caracteristica AS c 
INNER JOIN Produto_caracteristica AS pc 
ON p.id = pc.id_produto
AND c.id = pc.id_caracteristica
WHERE c.nome LIKE "Tela HD";

--07
SELECT p.nome, p.tipo, p.preco
FROM Produto AS p 
INNER JOIN Estoque AS e
ON p.id = e.id_produto
WHERE e.quantidade_disponivel > 0 AND p.preco > 1000;

