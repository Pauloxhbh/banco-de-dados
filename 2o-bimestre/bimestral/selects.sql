-- Qual é o preço médio, máximo e mínimo dos produtos?
USE mercado;

SELECT AVG(preco) AS preco_medio, MAX(preco) AS preco_maximo, MIN(preco) AS preco_minimo FROM produtos;

-- Quantos produtos existem em cada categoria?
USE mercado;

SELECT categoria, COUNT(*) AS quantidade
FROM produtos
GROUP BY categoria;

-- Quais são as categorias distintas existentes na tabela de produtos?
USE mercado;

SELECT DISTINCT categoria
FROM produtos;

-- Quais categorias possuem mais de 2 produtos?
USE mercado;

SELECT categoria, COUNT(*) AS quantidade
FROM produtos
GROUP BY categoria
HAVING COUNT(*) > 2;

-- Quais são os produtos que possuem a palavra "Livro" em seu nome?
USE mercado;

SELECT *
FROM produtos
WHERE nome LIKE '%Livro%';

-- Quais são os 3 produtos mais caros?
USE mercado;

SELECT *
FROM produtos
ORDER BY preco DESC
LIMIT 3;

-- Quais produtos têm o preço dentro do intervalo de R$ 50 a R$ 100?
USE mercado;

SELECT *
FROM produtos
WHERE preco >= 50 AND preco <= 100;

-- Quais são os produtos com ID 1, 3 e 5?
USE mercado;

SELECT *
FROM produtos
WHERE id IN (1, 3, 5);

-- Qual é o valor total gasto em produtos da categoria "Eletrônicos"?
USE mercado;

SELECT SUM(preco) AS valor_total
FROM produtos
WHERE categoria = 'Eletrônicos';

-- Quais são os produtos que possuem um preço máximo dentro de cada categoria?

USE mercado;

SELECT p.*
FROM produtos p
INNER JOIN (
    SELECT categoria, MAX(preco) AS preco_maximo
    FROM produtos
    GROUP BY categoria
) sub
ON p.categoria = sub.categoria AND p.preco = sub.preco_maximo;
