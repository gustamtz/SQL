
-- Criando tabela de cliente.
CREATE TABLE tbCliente3

(CPF VARCHAR(11), 
NOME VARCHAR(100), 
ENDERECO1 VARCHAR (150),
ENDERECO2 VARCHAR (150),
BAIRRO VARCHAR (50),
CIDADE VARCHAR (50),
ESTADO VARCHAR (50),
CEP VARCHAR (8),
IDADE SMALLINT,
SEXO VARCHAR (1),
LIMITE_CREDITO FLOAT,
VOLUME_COMPRA FLOAT,
PRIMEIRA_COMPRA BIT (1));


-- Inserindo dados nos campos da tabela de produtos.
USE sucos;

INSERT INTO tbproduto ( PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA )
VALUES ('1040107', 'Light', 'Lata', '350 ml', 'Melância', 4.56);

INSERT INTO tbproduto ( PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA )
VALUES ('1037797', 'Clean', 'PET', '2 Litros', 'Laranja', 16.01);

INSERT INTO tbproduto ( PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA )
VALUES ('1000889', 'Sabor da Montanha', 'Garrafa', '700 ml', 'Uva', 6.31);

SELECT * FROM tbproduto;


-- Atualizando dados nos campos da tabela de produtos.
USE sucos;

UPDATE tbproduto SET NOME = 'Bio mix', PRECO_LISTA = 9.99
WHERE PRODUTO = '1000889';

SELECT * FROM tbproduto;


-- Deletando row de um produto específico na tabela de produtos.
USE sucos;

DELETE FROM tbproduto WHERE PRODUTO = '1040107';

SELECT * FROM tbproduto;


-- Adicionando chave primáira na tabela de produtos.
USE sucos;

ALTER TABLE tbproduto ADD PRIMARY KEY (PRODUTO);

SELECT * FROM tbproduto;


-- Adicionando chave primária para o CPF, criando
-- uma nova coluna para a data de nascimento e 
-- inserindo dados para os campos da tabela de cliente.
USE sucos;

ALTER TABLE tbcliente ADD PRIMARY KEY (CPF);

ALTER TABLE tbcliente ADD COLUMN (DATA_NASCIMENTO DATE);

INSERT INTO tbcliente (
CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, 
LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO
) VALUES ('00446688991', 'Gustavo', 'Av. Paulita 85',  '', 'Centro', 'São Paulo', 
'SP', '222222', 19, 'M', 1000.00, 2000, 0, '2003-05-19');