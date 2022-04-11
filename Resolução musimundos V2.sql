/*
Usando a base musimundos_V2, execute as seguintes consultas:*/

/*1. Selecione o nome dos artistas(tabela artistas)com o nome de seus albuns(tabela albuns) ordenado por id do artista.*/
SELECT a.nome, b.titulo
FROM artistas a
INNER JOIN albuns b ON a.id = b.id_artista
ORDER BY a.id;

/* 2. Selecione o nome do cliente(clientes) e suas faturas(faturas), porém somente as faturas com valor maior de 5 ordenadas pelo valor da fatura decrescente.*/

SELECT a.nome, b.valor_total
FROM clientes a
INNER JOIN faturas b ON a.id = b.id_cliente
WHERE valor_total > 5
ORDER BY valor_total;

/* 3. Selecione o nome das cancoes(tabela cancoes) e o tipo de arquivo (tabela tipos_de_arquivo) e exiba o nome da cancao e o tipo ordenado pela id da cancao.*/

SELECT a.nome, b.nome
FROM cancoes a
INNER JOIN tipos_de_arquivo b ON b.id = a.id_tipo_de_arquivo
ORDER BY a.id;