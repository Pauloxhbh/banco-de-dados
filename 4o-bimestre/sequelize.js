// npm install mysql2 sequelize

const { Sequelize, DataTypes } = require('sequelize');

// Configuração da conexão com o banco de dados
const sequelize = new Sequelize(
  'Easyrent', // Nome do seu banco de dados
  'aluno', // Seu usuário
  'aluno', // Sua senha
  {
    host: 'localhost',
    dialect: 'mysql',
  }
);

// Definição do modelo Propriedade
const Propriedade = sequelize.define('Propriedade', {
  propriedade_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
  },
  endereco: {
    type: DataTypes.STRING(100),
    allowNull: false,
  },
  tipo_propriedade: {
    type: DataTypes.STRING(50),
    allowNull: false,
  },
  num_quartos: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  num_banheiros: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
});

// Definição do modelo Inquilino
const Inquilino = sequelize.define('Inquilino', {
  inquilino_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
  },
  nome: {
    type: DataTypes.STRING(100),
    allowNull: false,
  },
  email: {
    type: DataTypes.STRING(100),
    allowNull: false,
  },
  telefone: {
    type: DataTypes.STRING(20),
    allowNull: false,
  },
});

// Definição do modelo ContratoAluguel
const ContratoAluguel = sequelize.define('ContratoAluguel', {
  contrato_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
  },
  data_inicio: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  data_fim: {
    type: DataTypes.DATE,
    allowNull: false,
  },
});

// Definição do modelo Pagamento
const Pagamento = sequelize.define('Pagamento', {
  pagamento_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
  },
  valor: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: false,
  },
  data_pagamento: {
    type: DataTypes.DATE,
    allowNull: false,
  },
});

// Definição do modelo Manutencao
const Manutencao = sequelize.define('Manutencao', {
  manutencao_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
  },
  descricao: {
    type: DataTypes.STRING(200),
    allowNull: false,
  },
  status: {
    type: DataTypes.STRING(50),
    allowNull: false,
  },
});

// Definição do modelo Usuario
const Usuario = sequelize.define('Usuario', {
  usuario_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
  },
  nome: {
    type: DataTypes.STRING(100),
    allowNull: false,
  },
  tipo_usuario: {
    type: DataTypes.STRING(50),
    allowNull: false,
  },
});

// Relacionamentos entre os modelos
ContratoAluguel.belongsTo(Propriedade, { foreignKey: 'propriedade_id' });
ContratoAluguel.belongsTo(Inquilino, { foreignKey: 'inquilino_id' });
Pagamento.belongsTo(ContratoAluguel, { foreignKey: 'contrato_id' });
Manutencao.belongsTo(Propriedade, { foreignKey: 'propriedade_id' });

// Sincronizando os modelos com o banco de dados
sequelize.sync({ force: true }).then(async () => {
  // Inserção de valores nas tabelas aqui, se necessário

  // Fechando a conexão com o banco de dados
  await sequelize.close();
});