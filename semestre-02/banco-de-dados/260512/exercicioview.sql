--Atividade de VIEW

--01
--esse é p comando para fazer ela
CREATE VIEW ProdutosComDesconto AS SELECT p.nome, p.preco, p.desconto_usados  AS desconto FROM Poduto AS p WHERE desconto_usados > 0;

--esse é para ver ela
SELECT * FROM ProdutosComDesconto;

--02
CREATE VIEW CaracteristicasPorProduto AS SELECT p.nome AS produto, c.nome AS caracteristica, c.descricao 
FROM Produto AS p INNER JOIN Caracteritica AS c INNER JOIN Produto_Caracteristica AS cp 
WHERE p.id = cp.id_produto AND c.id = cp.id_caracteristica;

SELECT * FROM CaracteristicasPorProduto;

--03
CREATE VIEW EstoqueTotalPorProduto AS SELECT p.nome, SUM(e.quantidade_disponivel) AS total 
FROM Produto AS p INNER JOIN Estoque AS e
WHERE p.id = e.id_produto GROUP BY p.nome;

SELECT * FROM EstoqueTotalPorProduto;

--04
CREATE VIEW ProdutosPorCategoria AS SELECT p.categoria, SUM(e.quantidade_disponivel) AS total
FROM Produto AS p INNER JOIN Estoque AS e  
WHERE p.id = e.id_produto GROUP BY p.categoria;

SELECT * FROM ProdutoPorCategoria;

-- o SUM(t1.coluna1) faz a soma daqueles dados que seguem a mesma coisa

-- O GROUP BY t1.coluna1 faz a união por exemplo nessa de todos os produtos 
-- que sao dessa mesma categoria, pois há mais de um, e aí na saida sai somente uma linha

