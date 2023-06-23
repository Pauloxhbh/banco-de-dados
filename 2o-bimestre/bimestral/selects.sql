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

-- Quais são os produtos que pertencem às categorias "Vestuário" ou "Acessórios" e possuem um preço entre R$ 30 e R$ 50?
USE mercado;

SELECT *
FROM produtos
WHERE (categoria = 'Vestuário' OR categoria = 'Acessórios') AND (preco >= 30 AND preco <= 50);
