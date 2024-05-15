USE STARTERDB22

SHOW TABLES

/*GET  ALL - Traz todos os clientes*/
SELECT * FROM clientes

/*Get All - Traz todos os clientes nas colunas especificas*/
SELECT nome, dataNascimento, cpf FROM clientes



/*Filtrando linhas e colunas*/
SELECT nome, dataNascimento FROM clientes
WHERE nome LIKE '%H' OR nome LIKE 'Z%'



/*Filtrando linhas*/
SELECT * FROM clientes
WHERE nome LIKE 'H%' OR NOME LIKE 'Z%'


SELECT * FROM contas

/*Filtrando colunas e linhas usando o maior/igual e menor/igual, operadores*/
SELECT numeroConta, saldo FROM contas
WHERE saldo >=1000 AND saldo<=5000



/*Filtrando colunas diferentes*/
SELECT * FROM clientes
WHERE tipoLogradouro='Avenida' OR  cidade='Santos'


/*Filtrando com between*/
SELECT numero, saldo, limite FROM contas
WHERE saldo BETWEEN 500



/*Ordenando em ordem alfabetica A-Z*/
SELECT nome, cpf, celular FROM clientes
ORDER BY nome /*A-Z*/

SELECT nome, cpf, celular FROM clientes
ORDER BY DESC /*Z-A*/ 


SELECT nome, datanascimento FROM clientes
ORDER BY dataNascimento

SELECT nome, datanascimento FROM clientes
ORDER BY idCliente DESC



/*Ordenando e filtrando*/
/*Trazer nome, cpf, cidade de todos os clientes que moram em Santos, em ordem alfabética do nome*/
SELECT nome, cpf, cidade FROM clientes
WHERE cidade='Santos'
ORDER BY nome



/*Trazer nome, cpf, cidade de todos os clientes que nao moram em Santos, em ordem alfabetica do nome*/
SELECT nome, cpf, cidade FROM clientes
WHERE cidade<>'Santos'
ORDER BY nome




/*Select Distint - Quando tiver algo igual ele vai ingorar por exemplo tem 2 pessoas na cidade de santos ele ignora 1 e mostra a outra, não vai aparecer repetido, se repetir ele vai ignorar*/
SELECT DISTINCT cidade FROM clientes




/*Funções de Agregação, vai contar quantos idsCliente tem se colocar o min(idcliente) vai mostra o menor idcliente e se colocar o max(idcliente) vai mostrar o maior id*/
SELECT COUNT(idCliente) AS 'Total de Clientes' FROM clientes


/*Está somando todo o saldo que tem na tabela contas*/
SELECT SUM(saldo) AS 'Total de Dinheiro no Banco' FROM contas

/*Conta com menos dinheiro ou menor saldo, a mesma coisa serve para o max*/
SELECT MIN(saldo) AS 'Menor saldo no Banco' FROM contas



/*Funções de Agregação com GROUP by,*/
SELECT COUNT(idcliente), cidade AS 'Clientes por Cidade' FROM clientes 
GROUP BY cidade
ORDER BY cidade DESC



/*Excluindo a cidade de santos, como todas são santos ele nao vai mostrar nada mas se tivesse outra cidade diferente*/
SELECT COUNT(idcliente), cidade AS 'Clientes por Cidade' FROM clientes 
WHERE cidade<>'Santos'
GROUP BY cidade
ORDER BY cidade DESC



SELECT * FROM clientes


SELECT * FROM contas

