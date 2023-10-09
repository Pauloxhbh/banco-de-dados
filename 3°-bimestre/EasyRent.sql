questão 1
SELECT p.* 
FROM Propriedade p
INNER JOIN ContratoAluguel c ON p.propriedade_id = c.propriedade_id
WHERE c.inquilino_id = 1;

questão 2
não soube fazer

questão 3 
SELECT endereco, COUNT(*) as quantidade
FROM Propriedade
GROUP BY endereco;

questão 4

SELECT p.*, MAX(c.data_inicio) as data_pagamento
FROM Propriedade p
LEFT JOIN ContratoAluguel c ON p.propriedade_id = c.propriedade_id
GROUP BY p.propriedade_id, p.endereco, p.tipo_propriedade, p.num_quartos, p.num_banheiros
ORDER BY data_pagamento DESC NULLS LAST;
