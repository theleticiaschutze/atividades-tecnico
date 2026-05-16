--exercicio de funções

--01
SELECT DAYNAME(NOW()); --NOME DO DIA DA SEMANA

--02
SELECT DATE_FORMAT('2026-05-12', '%d/%M/%Y') AS "Data formatada";--dá diferença no que aparece os % com maiusculo ou minusculo
--o D é 12th, o d é 12
--o M é as iniciais do mes, o m é 05 
-- o Y é 2026 e o y é 26

--03
SELECT data_lancamento, CONCAT(CONCAT(nome, " "), categoria) AS "Nome completo" FROM Produto ORDER BY data_lancamento ASC LIMIT 1;
--concatenamos primeiro com um espaço e depois com a categoria, 

--04
SELECT CONCAT("R$ ", TRUNCATE(AVG(preco), 2)) AS "Media dos preços" FROM Produto;
-- O concat para juntar o rs aos numeros
-- O TRUNCATE é para colocar duas casas decimais
-- O AVG para average de preço

--05
SELECT nome, LENGTH(descricao) AS "Comprimento" FROM Produto ORDER BY comprimeto DESC;




