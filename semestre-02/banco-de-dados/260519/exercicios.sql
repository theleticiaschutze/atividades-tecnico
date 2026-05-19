-- Exercicios aula 19/05/26

--exemplo 01 - subconsulta
SELECT nome
FROM Produto
WHERE id IN (
	SELECT id_produto
	FROM Produto_Caracteristica 
	WHERE id_caracteristica = (
		SELECT id
		FROM Caracteristica
		WHERE nome = 'Sistema operacional'
		AND descricao = 'Android 12'
		)	
	);
--exemplo 02 - subconsulta
SELECT p.nome AS pNome
FROM Produto p
WHERE p.id IN (
	SELECT pc.id_produto
	FROM Produto_Caracteristica pc
	WHERE pc.id_caracteristica IN (
		SELECT c.id
		FROM Caracteristica c
		WHERE c.nome = 'Tela HD'
		)
	);
-- com inner join ao  inves de subconsulta
SELECT p.nome AS Produto, c.nome AS Caracteristca
FROM Produto p
INNER JOIN Caracteristica c
INNER JOIN Produto_Caracteristica pc
ON c.id = pc.id_caracteristica AND p.id = pc.id_produto
WHERE c.nome LIKE 'Tela HD';

--exemplo 03 - CASE
SELECT nome, tipo, preco,
	CASE 
		WHEN tipo = 'Usado' THEN preco * 0.10
		WHEN tipo = 'Promocao' THEN preco * 0.20
		WHEN tipo = 'Liquidacao' THEN preco * 0.30
		ELSE 0.00
	END AS novoDesconto 
FROM Produto;

--exemplo 04 - HAVING
SELECT l.cidade, SUM(p.preco *  e.quantidade_disponivel), COUNT(p.id)
FROM Produto p
INNER JOIN Estoque e
INNER JOIN Loja l
ON p.id = e.id_produto AND e.id_loja = l.id
GROUP BY l.cidade
HAVING COUNT(p.id) > 2;

SELECT l.cidade, SUM(p.preco *  e.quantidade_disponivel) AS total, COUNT(p.id)
FROM Produto p
INNER JOIN Estoque e
INNER JOIN Loja l
ON p.id = e.id_produto AND e.id_loja = l.id
GROUP BY l.cidade
HAVING(total) > 3000.00;

--EXERCICIOS 
--01
SELECT * FROM Produto ORDER BY nome;

--02
SELECT * FROM Produto ORDER BY preco DESC;

--03
SELECT p.nome AS produto, p.categoria, SUM(e.quantidade_disponivel) AS disponivel
FROM Produto p 
INNER JOIN Estoque e
WHERE p.id = e.id_produto
GROUP BY categoria;

--04
SELECT p.nome, l.cidade, e.quantidade_disponivel AS estoque
FROM Produto p
INNER JOIN Estoque e
INNER JOIN Loja l
ON p.id = e.id_produto AND e.id_loja = l.id
GROUP BY l.cidade
HAVING e.quantidade_disponivel > 5;

--05   
SELECT p.categoria, SUM(e.quantidade_disponivel) AS estoque
FROM Produto p
INNER JOIN Estoque e
ON p.id = e.id_produto
GROUP BY p.categoria

--06 --!!!!
SELECT categoria, AVG(preco) AS preco_medio 
FROM Produto p
GROUP BY categoria
ORDER BY preco_medio DESC


--07
SELECT l.cidade AS Loja, AVG(e.quantidade_disponivel) AS media_estoque
FROM Loja l 
INNER JOIN Estoque e
WHERE l.id = e.id_loja
GROUP BY l.cidade
ORDER BY media_estoque;

--08
SELECT p.categoria, SUM(e.quantidade_disponivel) AS estoque_total, SUM(p.preco * e.quantidade_disponivel) AS preco
FROM Produto p 
INNER JOIN Estoque e
ON p.id = e.id_produto
GROUP BY p.categoria
HAVING preco > 1000.00
ORDER BY preco DESC;

--09
SELECT c.nome AS caracteristica, SUM(id_produto) AS quantidade
FROM Caracteristica c
INNER JOIN Produto p
INNER JOIN Produto_Caracteristica pc
ON p.id = pc.id_produto AND c.id = pc.id_caracteristica
GROUP BY caracteristica
HAVING quantidade > 3
ORDER BY caracteristica;

-- PARTE 02 DOS Exercicios
--01
SELECT nome, preco,
	CASE 
		WHEN preco < 50.00 THEN 'Econômico'
		WHEN preco < 500.00 THEN 'Intermediário'
		ELSE 'Premium'
	END AS Faixa
FROM Produto;

--02
SELECT nome, tipo, 
	CASE
		WHEN tipo = 'Usado' THEN preco - desconto_usados
		WHEN tipo = 'Promocao' THEN preco - (preco * 0.15)
		WHEN tipo = 'Liquidacao' THEN preco - (preco * 0.30)
		ELSE preco
	END AS Preco_final
FROM Produto
ORDER BY nome;

--03
SELECT p.nome,
	CASE 
		WHEN SUM(e.quantidade_disponivel) = 0 THEN 'Esgotado'
		WHEN SUM(e.quantidade_disponivel) < 5 THEN 'Baixo'
		ELSE'Adequado'
	END AS status_estoque
FROM Produto p
INNER JOIN 	Estoque e
ON p.id = e.id_produto
GROUP BY p.nome;

--04
SELECT p.nome, p.preco



--05
SELECT l.cidade
FROM Loja l 
INNER JOIN Produto p
INNER JOIN Estoque e
ON l.id = e.id_loja AND p.id = e.id_produto
WHERE p.preco = (
	SELECT MAX(preco) 
	FROM Produto
	);

--06
--07
--08
--09



