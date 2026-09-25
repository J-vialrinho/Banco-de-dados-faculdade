-- Active: 1789689439722@@127.0.0.1@5432@bd_hortifruti@public
CREATE DATABASE bd_hortifruti;

DROP TABLE IF EXISTS itens_venda;
CREATE TABLE itens_venda (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    venda_id INTEGER NOT NULL,
    data_venda DATE NOT NULL, 
    bairro_entrega TEXT, /* Nem toda a venda seria uma entrega, pode ser feita a compra presencial */
    produto_id INTEGER NOT NULL,
    produto_nome TEXT NOT NULL,
    categoria TEXT NOT NULL,
    unidade TEXT NOT NULL,
    quantidade NUMERIC(10, 3) NOT NULL, /* Quantidade pode conter decimais, coloquei 3 apos a virguala para margem*/
    valor_unitario NUMERIC(10, 2) NOT NULL  /* coloquei com 2 casas deciamais pois dinheiro tem os centavos */

);



INSERT INTO itens_venda
 (venda_id, data_venda, bairro_entrega, produto_id, produto_nome,
 categoria, unidade, quantidade, valor_unitario)
VALUES
-- 2026-08-03, segunda-feira
(3001, '2026-08-03', NULL, 1, 'Banana prata', 'Fruta', 'Kg', 1.235, 5.99),
(3001, '2026-08-03', NULL, 5, 'Tomate', 'Legume', 'Kg', 0.874, 7.49),
(3001, '2026-08-03', NULL, 10, 'Alface crespa', 'Verdura', 'UN', 1.000, 2.99),
(3001, '2026-08-03', NULL, 12, 'Cheiro-verde', 'Verdura', 'UN', 2.000, 2.50),
(3002, '2026-08-03', NULL, 6, 'Batata', 'Legume', 'Kg', 2.140, 4.99),
(3002, '2026-08-03', NULL, 9, 'Cebola', 'Legume', 'Kg', 0.965, 5.19),
(3003, '2026-08-03', 'Centro', 3, 'Abacaxi', 'Fruta', 'UN', 2.000, 7.90),
(3003, '2026-08-03', 'Centro', 2, 'Laranja pera', 'Fruta', 'Kg', 3.180, 3.79),
(3003, '2026-08-03', 'Centro', 8, 'Cenoura', 'Legume', 'Kg', 1.020, 4.29),
-- 2026-08-04, terca-feira
(3004, '2026-08-04', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.460, 7.49),
(3004, '2026-08-04', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 1.785, 4.49),
(3004, '2026-08-04', NULL, 11, 'Couve', 'Verdura', 'UN', 1.000, 3.00),
(3005, '2026-08-04', NULL, 4, 'Morango', 'Fruta', 'UN', 2.000, 9.90),
(3006, '2026-08-04', 'Lagoinha', 1, 'Banana prata', 'Fruta', 'Kg', 2.310, 5.99),
(3006, '2026-08-04', 'Lagoinha', 6, 'Batata', 'Legume', 'Kg', 1.505, 4.99),
(3006, '2026-08-04', 'Lagoinha', 10, 'Alface crespa', 'Verdura', 'UN', 2.000, 2.99),
(3006, '2026-08-04', 'Lagoinha', 12, 'Cheiro-verde', 'Verdura', 'UN', 1.000, 2.50),
-- 2026-08-05, quarta-feira
(3007, '2026-08-05', NULL, 2, 'Laranja pera', 'Fruta', 'Kg', 2.450, 3.49),
(3007, '2026-08-05', NULL, 5, 'Tomate', 'Legume', 'Kg', 0.635, 7.99),
(3008, '2026-08-05', NULL, 8, 'Cenoura', 'Legume', 'Kg', 0.780, 4.39),
(3008, '2026-08-05', NULL, 9, 'Cebola', 'Legume', 'Kg', 1.215, 5.19),
(3008, '2026-08-05', NULL, 11, 'Couve', 'Verdura', 'UN', 2.000, 3.00),
(3009, '2026-08-05', 'Centro', 3, 'Abacaxi', 'Fruta', 'UN', 1.000, 7.50),
(3009, '2026-08-05', 'Centro', 4, 'Morango', 'Fruta', 'UN', 1.000, 9.49),
(3009, '2026-08-05', 'Centro', 1, 'Banana prata', 'Fruta', 'Kg', 1.890, 6.29),
-- 2026-08-06, quinta-feira
(3010, '2026-08-06', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 0.925, 4.79),
(3010, '2026-08-06', NULL, 10, 'Alface crespa', 'Verdura', 'UN', 1.000, 3.29),
(3011, '2026-08-06', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.975, 8.49),
(3011, '2026-08-06', NULL, 6, 'Batata', 'Legume', 'Kg', 3.020, 5.29),
(3011, '2026-08-06', NULL, 12, 'Cheiro-verde', 'Verdura', 'UN', 3.000, 2.50),
(3012, '2026-08-06', 'Planalto', 2, 'Laranja pera', 'Fruta', 'Kg', 4.060, 3.49),
(3012, '2026-08-06', 'Planalto', 8, 'Cenoura', 'Legume', 'Kg', 1.340, 4.39),
-- 2026-08-07, sexta-feira
(3013, '2026-08-07', NULL, 1, 'Banana prata', 'Fruta', 'Kg', 0.965, 6.49),
(3013, '2026-08-07', NULL, 9, 'Cebola', 'Legume', 'Kg', 0.540, 5.49),
(3013, '2026-08-07', NULL, 11, 'Couve', 'Verdura', 'UN', 1.000, 3.50),
(3014, '2026-08-07', 'Lagoinha', 4, 'Morango', 'Fruta', 'UN', 3.000, 8.90),
(3014, '2026-08-07', 'Lagoinha', 3, 'Abacaxi', 'Fruta', 'UN', 1.000, 6.99),
-- 2026-08-08, sabado
(3015, '2026-08-08', NULL, 6, 'Batata', 'Legume', 'Kg', 1.250, 5.49),
(3016, '2026-08-08', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.115, 8.99),
(3016, '2026-08-08', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 1.360, 4.79);


INSERT INTO itens_venda
 (venda_id, data_venda, bairro_entrega, produto_id, produto_nome,
 categoria, unidade, quantidade, valor_unitario)
VALUES
-- 2026-08-03, segunda-feira
(3017, '08/08/2026', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.340, 8.99),
(3017, '08/08/2026', NULL, 10, 'Alface crespa', 'Verdura', 'UN', 2.000, 3.49),
(3017, '08/08/2026', NULL, 4, 'Morango', 'Fruta', 'UN', 1.000, 9.90);


SELECT
    venda_id AS "Id venda",
    data_venda AS "Data", 
    bairro_entrega AS "Bairro", 
    produto_id AS "ID Produto",
    produto_nome AS "Produto",
    categoria AS "Categoria",
    unidade AS "Unidade",
    quantidade AS "Quantidade", /* Quantidade pode conter decimais, coloquei 3 apos a virguala para margem*/
    valor_unitario AS "Valor"
FROM
    itens_venda

    
    /* Consulta 1*/

SELECT
    produto_id AS "ID Produto",
    produto_nome AS "Produto",
    categoria AS "Categoria",
    unidade AS "Unidade"
FROM
    itens_venda    
GROUP BY
    produto_id,
    produto_nome,
    categoria,
    unidade
ORDER BY
    categoria ASC,
    produto_nome ASC;


/* Consulta 2*/

SELECT
    venda_id AS "Id venda",
    produto_nome AS "Produto",
    valor_unitario AS "Valor",
    categoria AS "Categoria",
    valor_unitario AS "Valor"

FROM
    itens_venda   

WHERE
    categoria IN ('Legume', 'Verdura')
    AND valor_unitario BETWEEN 3.00 AND 5.00
ORDER BY
    valor_unitario,
    venda_id;


/* Consulta 3*/

SELECT 
    venda_id,
    data_venda,
    produto_nome, 
    quantidade
FROM 
    itens_venda
WHERE
    produto_nome LIKE 'Batata%'
ORDER BY 
    data_venda ASC,
    venda_id ASC;

/* Consulta 4*/

SELECT 
    COUNT(venda_id) AS total_entregas_no_dia,
    venda_id, 
    data_venda, 
    bairro_entrega
FROM 
    itens_venda
WHERE 
    bairro_entrega IS NOT NULL
GROUP BY 
    venda_id, 
    data_venda, 
    bairro_entrega
ORDER BY 
    venda_id ASC;

/* Consulta 5*/

SELECT 
    venda_id, 
    produto_nome, 
    quantidade, 
    unidade, 
    valor_unitario,
    ROUND(quantidade * valor_unitario, 2) AS valor_item
FROM
     itens_venda
ORDER BY 
    valor_item DESC, 
    venda_id ASC
LIMIT 5 
OFFSET 5;

/* Consulta 6*/

SELECT 
    venda_id,
    data_venda,
    COALESCE(bairro_entrega, 'Retirada no balcao') AS destino,
    
    COUNT(*) AS itens,
    ROUND(SUM(quantidade * valor_unitario), 2) AS valor_total
FROM 
    itens_venda
GROUP BY 
    venda_id, 
    data_venda, 
    bairro_entrega
ORDER BY 
    valor_total DESC;


/* Consulta 7*/

SELECT
    data_venda,
    COUNT(DISTINCT venda_id) AS vendas,
    COUNT(*) AS itens,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento
FROM
    itens_venda
GROUP BY
    data_venda
ORDER BY
    data_venda ASC;


-- Consulta 8
SELECT
    produto_id,
    produto_nome,
    unidade,
    ROUND(SUM(quantidade), 3) AS qtd_total,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento,
    ROUND(AVG(valor_unitario), 2) AS media_simples,
    ROUND(SUM(quantidade * valor_unitario) / SUM(quantidade), 2) AS media_ponderada
FROM
    itens_venda
GROUP BY
    produto_id,
    produto_nome,
    unidade
ORDER BY
    faturamento DESC;    

-- Consulta 9
SELECT
    categoria,
    unidade,
    COUNT(*) AS itens,
    ROUND(SUM(quantidade), 3) AS qtd_total,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento
FROM
    itens_venda
GROUP BY
    categoria,
    unidade
ORDER BY
    categoria ASC,
    unidade ASC;

-- Consulta 10
SELECT
    bairro_entrega,
    COUNT(DISTINCT venda_id) AS entregas,
    ROUND(SUM(quantidade * valor_unitario), 2) AS faturamento
FROM
    itens_venda
WHERE
    bairro_entrega IS NOT NULL
GROUP BY
    bairro_entrega
HAVING
    SUM(quantidade * valor_unitario) > 40.00
ORDER BY
    faturamento DESC;


-- Consulta 11
SELECT
    venda_id,
    ROUND(SUM(quantidade * valor_unitario), 2) AS total_arredondado,
    SUM(ROUND(quantidade * valor_unitario, 2)) AS soma_dos_itens_arredondados
FROM
    itens_venda
GROUP BY
    venda_id
HAVING
    ROUND(SUM(quantidade * valor_unitario), 2) <> SUM(ROUND(quantidade * valor_unitario, 2))
ORDER BY
    venda_id ASC;


-- Resposta da Questao 1:
-- As colunas venda_id, data_venda e bairro_entrega repetem, em varias linhas,
-- fatos que pertencem somente a venda: identificacao, data e local/destino.
-- As colunas produto_id, produto_nome, categoria e unidade repetem fatos que
-- pertencem somente ao produto: identificacao, nome, categoria e unidade.
-- valor_unitario tambem se repete, mas representa o preco praticado naquele
-- item da venda. Ele pode mudar entre vendas do mesmo produto, como ocorre
-- com varios produtos deste exemplo, portanto nao e um fato fixo do produto.
-- Se o nome de um produto fosse alterado somente em algumas linhas, a
-- Consulta 1 exibiria mais de uma combinacao para o mesmo produto_id, pois
-- agrupa tambem por produto_nome. A Consulta 8 separaria os calculos dessas
-- linhas em grupos diferentes, produzindo mais de uma linha e medias,
-- quantidades e faturamentos parciais para o mesmo produto_id.

-- Resposta da Questao 2:
-- Duas regras do minimundo que a tabela nao garante sao:
-- 1. Cada produto_id deve existir no cadastro de produtos e determinar um
--    unico produto_nome, categoria e unidade.
-- 2. Todas as linhas de uma mesma venda_id devem possuir a mesma data_venda
--    e o mesmo bairro_entrega.
-- Exemplo de INSERT que o SGBD aceitaria, sem executar, mas viola a regra 1:
-- INSERT INTO itens_venda
-- (venda_id, data_venda, bairro_entrega, produto_id, produto_nome,
--  categoria, unidade, quantidade, valor_unitario)
-- VALUES
-- (4001, '2026-08-10', NULL, 1, 'Banana prata', 'Fruta', 'UN', 1.000, 5.99);
-- O produto_id 1 e cadastrado como Banana prata vendida em Kg, mas o INSERT
-- informa a unidade UN; nao ha uma restricao que impeça essa inconsistência.

-- Resposta da Questao 3:
-- A media ponderada do morango e menor que a simples porque a maior
-- quantidade foi vendida pelo menor preco (3 unidades a 8.90), dando mais
-- peso a esse valor baixo. A do abacaxi e maior porque o maior lote foi
-- vendido pelo maior preco (2 unidades a 7.90), dando mais peso a esse valor
-- alto. As duas medias do cheiro-verde sao iguais porque todas as linhas
-- desse produto possuem o mesmo valor_unitario, 2.50; assim, qualquer peso
-- aplicado as quantidades produz o mesmo resultado.