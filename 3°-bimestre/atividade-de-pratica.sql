-- Criar o banco de dados
CREATE DATABASE vendinha;

-- Usar o banco de dados criado
USE vendinha;

-- Tabela Cliente
CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    cidade VARCHAR(100),
    nome VARCHAR(100)
);

-- Tabela Pedidos
CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data DATE,
    valor DECIMAL(10, 2),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente) ON DELETE CASCADE
);

-- Tabela Produto
CREATE TABLE Produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preço DECIMAL(10, 2)
);

-- Tabela Pedidos_Produtos (para resolver o relacionamento N:N entre Pedidos e Produtos)
CREATE TABLE Pedidos_Produtos (
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    PRIMARY KEY (id_pedido, id_produto),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido) ON DELETE CASCADE,
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto) ON DELETE CASCADE
);

-- Tabela Categorias
CREATE TABLE Categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

-- Tabela Categorias_Produtos (para resolver o relacionamento 1:N entre Categorias e Produtos)
CREATE TABLE Categorias_Produtos (
    id_categoria INT,
    id_produto INT,
    PRIMARY KEY (id_categoria, id_produto),
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria) ON DELETE CASCADE,
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto) ON DELETE CASCADE
);

