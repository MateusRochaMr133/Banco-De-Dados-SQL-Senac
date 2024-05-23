USE starterdb22

CREATE TABLE Clientes ( 
idCliente INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
dataNascimento DATETIME NOT NULL,
celular CHAR(11) NOT NULL,
cpf CHAR(11) NOT NULL,
tipoLogradouro VARCHAR(15),
nomeLogradouro VARCHAR(50) NOT NULL,
numero VARCHAR(6) NOT NULL,
complemento VARCHAR(10) DEFAULT/*O campo preenchera sozinho se a pessoa não digitar nada*/ 'não existe',
cidade VARCHAR(30) NOT NULL,
cep CHAR(8) NOT NULL,
estado CHAR(2) NOT NULL,
CONSTRAINT PRIMARY KEY (idCliente),
CONSTRAINT CK_TipoLogradouro CHECK /*O Check vai checkar se no campo do logradouro e igual a praça ou rua ou avenida ou rodovia ou viela*/ (tipoLogradouro='Praça' OR 
tipoLogradouro='Rua' or tipoLogradouro='Avenida' OR tipoLogradouro='Rodovia' OR tipoLogradouro='Viela')
);





DROP TABLE CLIENTE /* Apaga a tabela*/




SELECT * FROM CLIENTE  /*Seleciona o tabela criada e aparece*/


CREATE TABLE TiposContas /*Criando Tabela TipoConta*/ (
idTipoConta INT AUTO_INCREMENT NOT NULL,
nomeTipoConta VARCHAR(20) NOT NULL,
CONSTRAINT PRIMARY KEY (idTipoConta),/*Criando Chave Primaria*/
CONSTRAINT UNIQUE  (nomeTipoConta)
);

Corrente
Salário
Poupança






CREATE TABLE `contas` (
	`idConta` INT(11) NOT NULL AUTO_INCREMENT,
	`numerConta` CHAR(8) NOT NULL COLLATE 'utf8mb4_general_ci',
	`saldo` DECIMAL(14,2) NOT NULL,
	`limite` DECIMAL(10,2) NOT NULL,
	`statusConta` CHAR(1) NULL DEFAULT '1' COLLATE 'utf8mb4_general_ci',
	`idTipoConta` INT(11) NOT NULL,
	PRIMARY KEY (`idConta`) USING BTREE,
	INDEX `FK_Contas_TiposConta` (`idTipoConta`) USING BTREE,
	CONSTRAINT `FK_Contas_TiposConta` FOREIGN KEY (`idTipoConta`) REFERENCES `tipoconta` (`idTipoConta`) ON UPDATE RESTRICT ON DELETE RESTRICT,
	CONSTRAINT `CK_Saldo` CHECK (`saldo` >= 0)
);








insert INTO clientes 
( nome, dataNascimento, celular, cpf, tipologradouro, nomelogradouro, numero, cidade, cep, estado)
VALUES 
('Margarida', '1970-07-22' , '13988776655'     ),






ALTER TABLE clientescontas
CONSTRAINT FK_Cliente_idCliente FOREIGN KEY (idCliente) REFERENCES  clientes(idCliente)














SELECT * FROM clientes







SELECT * FROM tiposconta
SELECT nomeTipoConta,idTipoConta FROM tiposcontas
SELECT nome, telefone FROM clientes



SELECT * FROM clientes


SELECT * FROM clientescontas



INSERT INTO clientescontas ( idCliente, idConta)





ALTER TABLE clientescontas



























SELECT * FROM tiposcontas

SELECT * FROM clientescontas



INSERT INTO contas (numeroConta, saldo, limite, statusConta, idTipoConta)
VALUES ('77778888', 1000 , 10000 , '1' , 1);

INSERT INTO contas (numeroConta, saldo, limite, statusConta, idTipoConta)
VALUES ('77779999', 10000 , 500.75 , '1', 1);

INSERT INTO contas (numeroConta, saldo, limite, idTipoConta)
VALUES ('72729999',976.88,1500,4);

INSERT INTO contas (numeroConta, saldo, idTipoConta)
VALUES ('11116655',276.88,1);

INSERT INTO contas (numeroConta, saldo, idTipoConta)
VALUES ('10',3276.88,1);



SELECT * FROM tiposcontas


SELECT * FROM clientes




SELECT * FROM clientescontas

SELECT * FROM contas


/* Where = , >, >=, <=, like, and, or*/
DELETE FROM clientes
WHERE cidade='Santos' AND bairro='Gonzaga'

SELECT * FROM contas
SELECT * FROM clientes









/*01 Cliente possui uma conta*/
INSERT INTO clientescontas (idCliente, idConta)
VALUES (1,10);


INSERT INTO clientescontas (idCliente, idConta)
VALUES (1,1);
SELECT * FROM clientescontas

/*02 clientes possuem a mesma conta*/
INSERT INTO clientescontas (idCliente, idConta)
VALUES (2,6);
INSERT INTO clientescontas (idClientem idConta)
VALUES (3,6);
SELECT * FROM clientescontas

/*01 cliente possui duas contas*/
INSERT INTO clientescontas (idCliente, idConta)
VALUES (4,3);
INSERT INTO clientescontas (idCliente, idConta)
VALUES (4,4);



SELECT * FROM clientescontas

/*Falha por duplicar a chave primaria composta*/
INSERT INTO clientescontas (idcliente, idconta)
VALUES (3,6);

/*Busca com Filtros*/
SELECT * FROM Clientes


SELECT nome, cidade FROM Clientes
WHERE cidade='Santos'

SELECT nome, cep FROM clientes
WHERE cep LIKE 'L%0'

SELECT nome, cidade FROM clientes
WHERE cidade <> 'Santos'

DELETE FROM contas
WHERE idConta=6

SELECT * FROM clientesContas

CREATE DATABASE startedb23


SHOW DATABASES






DROP TABLE cliente;
DROP TABLE tipoconta;
DROP TABLE contas;









CREATE TABLE Clientes (
idCliente INT AUTO_INCREMENT NOT NULL, 
nome VARCHAR(50) NOT NULL,
dataNascimento DATETIME NOT NULL,
celular CHAR(11) NOT NULL,
cpf CHAR(11) NOT NULL,
tipoLogradouro VARCHAR(15),
nomeLogradouro VARCHAR(50) NOT NULL,
numero VARCHAR(6) NOT NULL,
complemento VARCHAR(10) DEFAULT 'não existe',
cidade VARCHAR(30) NOT NULL,
cep CHAR(8) NOT NULL,starterdb
estado CHAR(2) NOT NULL,
CONSTRAINT PRIMARY KEY (idCliente),
CONSTRAINT CHECK (tipoLogradouro='Praça' OR tipoLogradouro='Rua' OR tipoLogradouro='Avenida' OR tipoLogradouro='Rodovia' OR tipoLogradouro='Viela')
);
 
ALTER TABLE clientes
ADD tipoMoradia CHAR(10);
 
INSERT INTO clientes
 
 
SELECT * FROM clientes
 
CREATE TABLE TiposConta(
idTipoConta INT AUTO_INCREMENT NOT NULL,
nomeTipoConta VARCHAR(20) NOT NULL,
CONSTRAINT PRIMARY KEY (idTipoConta),
CONSTRAINT UNIQUE (nomeTipoConta)
);
 
 
CREATE TABLE Contas(
idConta INT AUTO_INCREMENT NOT NULL,
numeroConta CHAR(8) NOT NULL,
saldo DECIMAL (14,2) NOT NULL,
limite DECIMAL (10,2) NOT NULL,
statusConta CHAR(1) DEFAULT '1', /*1 é ATIVA*/
idTipoConta INT NOT NULL,
CONSTRAINT PRIMARY KEY (idConta),
CONSTRAINT FK_Contas_TiposConta FOREIGN KEY (idTipoConta)
REFERENCES TiposContas(idTipoConta),
CONSTRAINT CK_Saldo CHECK (saldo>=0)
);
 
SELECT * FROM contas
 
SELECT * FROM tiposconta





















 
CREATE TABLE ClientesContas(
 
idCliente INT NOT NULL,
 
idConta INT NOT NULL,
 
CONSTRAINT PRIMARY KEY (idCliente,idConta),/*PK Composta*/
 
CONSTRAINT FK_ClientesContas_Clientes FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente),
 
CONSTRAINT FK_ClientesContas_Contas FOREIGN KEY (idConta) REFERENCES contas(idConta)
 
);





INSERT INTO  
 
 
SELECT * FROM clientes


SELECT * FROM contas



SELECT * FROM tiposcontas


SELECT * FROM clientescontas
 
 
 
 
SELECT * FROM clientescontas
 
DROP TABLE clientescontas
 
/*Trazer o nome dos clientes, o telefone, o número da conta*/
SELECT nome,celular, idConta
FROM clientes
INNER JOIN clientescontas
ON  clientes.idCliente = clientescontas.idcliente /*critério de junção das tabelas*/
 
 
/*trazer o nome do cliente, o número da conya e o tipo da conta*/
SELECT nome, numeroconta, tipoconta
FROM clientes 
inner join clientescontas
ON clientes.idcliente = clientescontas.idcliente
INNER JOIN 
contas 
ON clientescontas.idconta = contas.idconta
INNER JOIN tiposconta 
ON contas.idTipoConta=tiposconta.idtipoconta
 
/*Trazer o total de contas que temos agrupadas pelo seu tipo*/
 
select nomeTipoConta, COUNT(idconta) FROM 
tiposconta
INNER JOIN 
contas 
ON contas.idTipoConta = tiposconta.idtipoconta
GROUP BY nomeTipoConta
 
 
SELECT clientes.nome, clientes.celular, contas.numeroconta, contas.saldo
FROM clientes 
LEFT JOIN clientescontas
ON clientes.idcliente = clientescontas.idcliente
LEFT JOIN contas 
ON clientescontas.idconta = contas.idconta
 
/*Trazer todos os tipos de contas e respectivas numeros de contas mesmo
que os tipos não possuam nenhuma conta ativa*/
SELECT nomeTipoConta, numeroConta FROM 
tiposconta
left JOIN 
contas 
ON contas.idTipoConta = tiposconta.idtipoconta
 
SELECT numeroconta, saldo, nometipoconta, idtipoconta FROM contas
INNER JOIN tiposconta
ON contas.idtipoconta = tiposconta.idtipoconta
INNER JOIN <nomeOutraTabela>
ON 
INNER JOIN <nomeOutraTabela>
ON 
WHERE nometipoconta = 'corrente'
ORDER BY saldo DESC