-- Inserindo dados na tabela Cliente
INSERT INTO Cliente (cidade, nome) VALUES
    ('São Paulo', 'João da Silva'),
    ('Rio de Janeiro', 'Maria Santos'),
    ('Belo Horizonte', 'Pedro Souza');

-- Inserindo dados na tabela Pedidos
INSERT INTO Pedidos (data, valor, id_cliente) VALUES
    ('2023-07-27', 100.50, 1),
    ('2023-07-28', 75.25, 2),
    ('2023-07-28', 120.00, 3);

-- Inserindo dados na tabela Produto
INSERT INTO Produto (nome, preço) VALUES
    ('Camiseta', 29.99),
    ('Calça Jeans', 79.90),
    ('Tênis', 129.99);

-- Inserindo dados na tabela Pedidos_Produtos
INSERT INTO Pedidos_Produtos (id_pedido, id_produto, quantidade) VALUES
    (1, 1, 2),
    (1, 3, 1),
    (2, 1, 3),
    (3, 2, 2),
    (3, 3, 1);

-- Inserindo dados na tabela Categorias
INSERT INTO Categorias (nome) VALUES
    ('Vestuário'),
    ('Calçados'),
    ('Acessórios');

-- Inserindo dados na tabela Categorias_Produtos
INSERT INTO Categorias_Produtos (id_categoria, id_produto) VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 1),
    (3, 2),
    (3, 3);
