SELECT * FROM tabela_de_vendedores A
INNER JOIN  notas_fiscais B
ON A.MATRICULA = B.MATRICULA;

SELECT A.MATRICULA, A.NOME, COUNT(*) FROM 
tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA 
GROUP BY A.MATRICULA, A.NOME;

-- Left Join
SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_vendedores A
LEFT JOIN notas_fiscais B ON A.CPF = B.CPF
WHERE B.CPF IS NULL;

-- Righr Join
SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_vendedores B
RIGHT JOIN notas_fiscais A ON A.CPF = B.CPF
WHERE B.CPF IS NULL;

-- Cross Join 
SELECT tabela_de_vendedores.BAIRRO, 
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME FROM tabela_de_vendedores, tabela_de_clientes;
