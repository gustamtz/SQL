-- Limitando exibição de dados.
SELECT * FROM tbcliente;

SELECT CPF, NOME FROM tbcliente;
SELECT CPF, NOME FROM tbcliente LIMIT 5;
SELECT CPF AS CPF_CLIENTE, NOME AS NOME_CLIENTE FROM tbcliente;


-- Atualizando dados da tabela produtos.
UPDATE tbproduto SET SABOR = 'Cítricos' WHERE SABOR = 'Limão';
SELECT * FROM tbproduto WHERE SABOR = 'Cítricos';


-- Manipulando tabela cliente com operadores lógicos para idades.
SELECT * FROM tbcliente;

SELECT * FROM tbcliente WHERE IDADE = 22;
SELECT * FROM tbcliente WHERE IDADE > 22;
SELECT NOME, IDADE FROM tbcliente WHERE IDADE <> 22;

SELECT NOME, IDADE FROM tbcliente WHERE NOME > 'Fernando Cavalcante';


-- Manipulando tabela cliente com operadores lógicos e funções para 
-- data de nascimento, idade, cidade e bairro.
SELECT * FROM tbcliente;

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO > '1995-01-13';
SELECT * FROM tbcliente WHERE DATA_NASCIMENTO < '1995-01-13';

SELECT NOME, CPF, DATA_NASCIMENTO FROM tbcliente WHERE YEAR(DATA_NASCIMENTO) = 1995;
SELECT NOME, CPF, DATA_NASCIMENTO FROM tbcliente WHERE MONTH(DATA_NASCIMENTO) = 10;

SELECT NOME, CPF, IDADE FROM tbcliente WHERE IDADE >= 18 AND SEXO = 'M';
SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro' OR BAIRRO = 'Jardins';

SELECT * FROM tbcliente WHERE (IDADE >= 18 AND SEXO = 'M') AND (CIDADE = 'Rio de Janeiro' 
OR BAIRRO = 'Jardins');
