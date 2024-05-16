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


SELECT cidade,COUNT(idcliente) AS 'Clientes por Cidade' FROM clientes
WHERE cidade<>'Santos'
GROUP BY cidade
ORDER BY cidade DESC



/*Todas as cidades diferentes de santos*/
SELECT cidade,COUNT(idcliente) AS 'Clientes por Cidade' FROM clientes
WHERE cidade<>'Santos'
GROUP BY cidade
ORDER BY cidade DESC



SELECT * FROM clientes

INSERT INTO clientes
(nome, dataNascimento, celular, cpf, tipologradouro, nomelogradouro, numero, cidade, cep, estado)

VALUES 
('Rosangela', '1960-08-06', '13988874455', '88899900011','Rua', 'Banto Bento', '49' ,'São Vicente', '87655069', 'SP'),

('Donald', '1930-02-10', '13988661111', '88899900011', 'Rua', 'Mento Norlando', '49' ,'Cubatão', '87659988', 'SP'),

('Roberval', '1940-12-12', '13988660506', '88899900011', 'Rua', 'Casca Bala', '50', 'Garujá', '87656541', 'SP'),

('Pato', '1950-03-03', '13988668877', '88899900011', 'Rua', 'Loreval Sul', '55', 'Monguagá', '87656684', 'SP');


('Margarida', '1970-07-22', '13988776655', '88899900011', 'Rua', 'Bartolomeu Prado', '49', 'São Paulo', '87654428', 'SP');




SELECT cidade,COUNT(idcliente) AS 'Clientes por Cidade' FROM clientes
WHERE COUNT(idcliente)>=2
GROUP BY cidade
ORDER BY COUNT(idcliente),cidade


SELECT cidade,COUNT(idcliente) AS 'Clientes por Cidade' FROM clientes
GROUP BY cidade
HAVING COUNT(idcliente) >=2
ORDER BY COUNT(idcliente) DESC

SELECT * FROM clientes

/*Média de clientes que possui, vai contar a quantidade de clientes e dividir pela quantidade, ele somou todos os ids do 1 ate o 9 e dividir pela quantidade de ids que tem no caso é 9 ids*/
SELECT AVG(idcliente) FROM clientes



/*Pegou o saldo e somou, somou todos os valores do saldo*/
SELECT AVG(saldo) FROM contas;
SELECT saldo FROM contas


/*Mostrou a quantidade de idscliente*/
SELECT COUNT(idcliente) FROM clientes

/*Mostrou todas as cidades e agroupou com o idcliente que temos 9 no total e organizou pela quantidade de cidades*/
SELECT cidade, COUNT(idcliente) FROM clientes
GROUP BY cidade






SELECT * FROM contas



SELECT numeroconta, COUNT(idTipoConta) FROM contas
GROUP BY idTipoConta








SELECT idTipoConta, COUNT(idConta) FROM contas
GROUP BY idTipoConta





SELECT cidade,COUNT(idcliente) AS 'Clientes por Cidade' FROM clientes



SELECT * FROM contas



SELECT saldo AS 'Saldo até', COUNT(idConta) AS 'Qtd Contas' FROM contas
GROUP BY idTipoConta>1000



SELECT saldo AS 'Saldo até', COUNT(idConta) AS 'Qtd Contas' FROM contas
GROUP BY saldo




SELECT saldo AS 'Saldo Até', COUNT(saldo) AS 'Qtd Contas' FROM contas
GROUP BY saldo>1000






SELECT * FROM clientes



SELECT nome FROM clientes

ORDER BY COUNT(celular),cidade





SELECT cidade,COUNT(idcliente) AS 'Clientes por Cidade' FROM clientes
WHERE COUNT(idcliente)>=2
GROUP BY cidade
ORDER BY COUNT(idcliente),cidade


/*Like = Parecido*/
SELECT nome, celular, cidade FROM clientes
WHERE celular LIKE '13%'
ORDER BY nome 


SELECT nome, complemento, cidade FROM clientes
WHERE complemento<>'AP 44'
WHERE Counte = 'São Vicente'
ORDER BY nome




SELECT * FROM clientes



