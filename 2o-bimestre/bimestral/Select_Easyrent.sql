
SELECT * FROM Usuario WHERE nome LIKE 'J%';

SELECT * FROM Manutencao WHERE status = 'Concluída';

SELECT * FROM Pagamento WHERE data_pagamento > '2023-06-01';

SELECT * FROM ContratoAluguel WHERE data_fim > CURDATE();

SELECT * FROM Propriedade WHERE num_banheiros > 2 AND num_quartos < 4;

SELECT * FROM Usuario WHERE tipo_usuario = 'Admin';

SELECT * FROM Manutencao WHERE status = 'Em andamento';

SELECT * FROM ContratoAluguel WHERE YEAR(data_inicio) = 2023;

SELECT * FROM Pagamento WHERE valor > 1000.00;

SELECT * FROM Inquilino WHERE nome LIKE '%Silva%';

SELECT * FROM Propriedade WHERE tipo_propriedade = 'Casa';

SELECT * FROM Propriedade WHERE num_quartos > 3;
