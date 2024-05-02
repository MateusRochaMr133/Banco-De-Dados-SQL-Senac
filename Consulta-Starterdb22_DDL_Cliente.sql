

USE starterdb22

DROP TABLE cliente
DROP TABLE TipoConta

CREATE TABLE Clientes /*Criando a Tabela Cliente*/ ( 
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


CREATE TABLE TiposConta /*Criando Tabela TipoConta*/ (
idTipoConta INT AUTO_INCREMENT NOT NULL,
nomeTipoConta VARCHAR(20) NOT NULL,
CONSTRAINT PRIMARY KEY (idTipoConta),/*Criando Chave Primaria*/
CONSTRAINT UNIQUE  (nomeTipoConta)
);

Corrente
Salário
Poupança

/* Create Database cria o bando de dados*/

/* Create Table Cria a tabela*/

CREATE TABLE Contas (
idConta INT AUTO_INCREMENT NOT NULL,
numeroConta CHAR(8) NOT NULL,
saldo DECIMAL(14,2) NOT NULL,
limite DECIMAL(10,2) NOT NULL,
statusConta CHAR(1) DEFAULT '1',
idTipoConta INT NOT NULL,
CONSTRAINT PRIMARY KEY(idConta),
CONSTRAINT FK_Contas_TiposConta
FOREIGN KEY (idTipoConta)
REFERENCES TiposConta(idTipoConta),
CONSTRAINT CK_Saldo CHECK (saldo>=0)
);




SELECT * FROM contas

CREATE TABLE ClientesContas(
idCliente INT NOT NULL,
idConta INT NOT NULL,
CONSTRAINT PRIMARY KEY (idCliente,idConta),/*PK Composta*/
CONSTRAINT FK_ClientesContas_Clientes FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente),
CONSTRAINT FK_ClientesContas_Contas FOREIGN KEY (idConta) REFERENCES contas(idConta)
);




