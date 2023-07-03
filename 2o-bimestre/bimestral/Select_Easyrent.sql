--obter todos os usuários cujo nome começa com a letra "J":
SELECT * FROM Usuario WHERE nome LIKE 'J%';
--obter todas as manutenções concluídas:
SELECT * FROM Manutencao WHERE status = 'Concluída';
--obter todos os pagamentos realizados após a data de 2023-06-01:
SELECT * FROM Pagamento WHERE data_pagamento > '2023-06-01';
--obter todos os contratos de aluguel que estão ativos (data de término posterior à data atual):
SELECT * FROM ContratoAluguel WHERE data_fim > CURDATE();
--obter todas as propriedades com mais de 2 banheiros e menos de 4 quartos:
SELECT * FROM Propriedade WHERE num_banheiros > 2 AND num_quartos < 4;
--obter todos os usuários do tipo "Admin":
SELECT * FROM Usuario WHERE tipo_usuario = 'Admin';
--obter todas as manutenções com status "Em andamento":
SELECT * FROM Manutencao WHERE status = 'Em andamento';
--obter todos os contratos de aluguel que iniciaram no ano de 2023:
SELECT * FROM ContratoAluguel WHERE YEAR(data_inicio) = 2023;
--obter todos os pagamentos com valor acima de 1000.00:
SELECT * FROM Pagamento WHERE valor > 1000.00;
--obter todos os inquilinos cujo nome contenha "Silva":
SELECT * FROM Inquilino WHERE nome LIKE '%Silva%';
--obter todas as propriedades do tipo "Casa":
SELECT * FROM Propriedade WHERE tipo_propriedade = 'Casa';
--obter todas as propriedades com mais de 3 quartos:
SELECT * FROM Propriedade WHERE num_quartos > 3;
