CREATE DATABASE Easyrent;
USE Easyrent;
-- Tabela Propriedade
CREATE TABLE Propriedade (
  propriedade_id INT PRIMARY KEY,
  endereco VARCHAR(100),
  tipo_propriedade VARCHAR(50),
  num_quartos INT,
  num_banheiros INT
);

-- Tabela Inquilino
CREATE TABLE Inquilino (
  inquilino_id INT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100),
  telefone VARCHAR(20)
);

-- Tabela ContratoAluguel
CREATE TABLE ContratoAluguel (
  contrato_id INT PRIMARY KEY,
  propriedade_id INT,
  inquilino_id INT,
  data_inicio DATE,
  data_fim DATE,
  FOREIGN KEY (propriedade_id) REFERENCES Propriedade (propriedade_id),
  FOREIGN KEY (inquilino_id) REFERENCES Inquilino (inquilino_id)
);

-- Tabela Pagamento
CREATE TABLE Pagamento (
  pagamento_id INT PRIMARY KEY,
  contrato_id INT,
  valor DECIMAL(10,2),
  data_pagamento DATE,
  FOREIGN KEY (contrato_id) REFERENCES ContratoAluguel (contrato_id)
);

-- Tabela Manutencao
CREATE TABLE Manutencao (
  manutencao_id INT PRIMARY KEY,
  propriedade_id INT,
  descricao VARCHAR(200),
  status VARCHAR(50),
  FOREIGN KEY (propriedade_id) REFERENCES Propriedade (propriedade_id)
);

-- Tabela Usuario
CREATE TABLE Usuario (
  usuario_id INT PRIMARY KEY,
  nome VARCHAR(100),
  tipo_usuario VARCHAR(50)
);



-- Inserir valores na tabela Propriedade
INSERT INTO Propriedade (propriedade_id, endereco, tipo_propriedade, num_quartos, num_banheiros)
VALUES
  (1, 'Grota das araras', 'Casa', 3, 2),
  (2, 'Pavilhão das penas caídas', 'Apartamento', 2, 1),
  (3, 'Templo de Abudabada', 'Casa', 4, 3),
  (4, 'Biquinha', 'Apartamento', 3, 2);

-- Inserir valores na tabela Inquilino
INSERT INTO Inquilino (inquilino_id, nome, email, telefone)
VALUES
  (1, 'João Silva', 'joaosembraco@gmail.com', '(82)98718-6056'),
  (2, 'Maria Santos', 'maria.dastrevas666@hotmail.com', '(82)98805-8897'),
  (3, 'Pedro Oliveira', 'pedro.pajuçara@outlook.com', '(82)98833-8778'),
  (4, 'Ana Costa', 'ana2010@bol.uol.com.br', '(82)98002-8922');

-- Inserir valores na tabela ContratoAluguel
INSERT INTO ContratoAluguel (contrato_id, propriedade_id, inquilino_id, data_inicio, data_fim)
VALUES
  (1, 1, 1, '2023-01-01', '2023-12-31'),
  (2, 2, 2, '2023-02-01', '2023-07-31'),
  (3, 3, 3, '2023-03-01', '2024-02-28'),
  (4, 4, 4, '2023-04-01', '2023-09-30');

-- Inserir valores na tabela Pagamento
INSERT INTO Pagamento (pagamento_id, contrato_id, valor, data_pagamento)
VALUES
  (1, 1, 1000.00, '2023-06-01'),
  (2, 2, 800.00, '2023-06-15'),
  (3, 3, 1200.00, '2023-06-20'),
  (4, 4, 900.00, '2023-06-25');

-- Inserir valores na tabela Manutencao
INSERT INTO Manutencao (manutencao_id, propriedade_id, descricao, status)
VALUES
  (1, 1, 'Vazamento no banheiro', 'Em andamento'),
  (2, 2, 'Troca de lâmpadas queimadas', 'Concluída'),
  (3, 3, 'Pintura da fachada', 'Em andamento'),
  (4, 4, 'Reparo na torneira da cozinha', 'Pendente');

-- Inserir valores na tabela Usuario
INSERT INTO Usuario (usuario_id, nome, tipo_usuario)
VALUES
  (1, 'Robert', 'Admin'),
  (2, 'Jorjinho', 'Comum'),
  (3, 'Paulo', 'Gerente'),
  (4, 'Henrique', 'Supervisor');
