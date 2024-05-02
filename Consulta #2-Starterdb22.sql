/* DML - Massa de Dados*/

USE starterdb22

/*Insira Para*/

INSERT INTO Clientes (
	nome, dataNascimento, celular, cpf,
	tipoLogradouro, nomeLogradouro,
	numero, complemento, cidade, cep,
	estado
) VALUES ('Huguinho', '1990-02-01', '13999887766', '22233344455', 'Avenida', 'Ana Costa', '488', 'AP 44', 'Santos', '11111222', 'SP');

INSERT INTO Clientes (
	nome, dataNascimento, celular, cpf,
	tipoLogradouro, nomeLogradouro,
	numero, complemento, cidade, cep,
	estado
) VALUES ('Huguinho', '1990-02-01', '13999887766', '22233344455', 'Avenida', 'Ana Costa', '488', 'AP 44', 'Santos', '11111222', 'SP');

INSERT INTO Clientes (
	nome, dataNascimento, celular, cpf,
	tipoLogradouro, nomeLogradouro,
	numero, complemento, cidade, cep,
	estado
) VALUES ('Huguinho', '1990-02-01', '13999887766', '22233344455', 'Avenida', 'Ana Costa', '488', 'AP 44', 'Santos', '11111222', 'SP');

INSERT INTO Clientes (
	nome, dataNascimento, celular, cpf,
	tipoLogradouro, nomeLogradouro,
	numero, complemento, cidade, cep,
	estado
) VALUES ('Huguinho', '1990-02-01', '13999887766', '22233344455', 'Avenida', 'Ana Costa', '488', 'AP 44', 'Santos', '11111222', 'SP');

INSERT INTO Clientes (
	nome, dataNascimento, celular, cpf,
	tipoLogradouro, nomeLogradouro,
	numero, complemento, cidade, cep,
	estado
) VALUES ('Roberaval', '1998-06-05', '13999887766', '22233344455', 'Avenida', 'Rua das Margaridas', '488', 'AP 44', 'Sao Vicente', '11111222', 'SP');

INSERT INTO Clientes (
	nome, dataNascimento, celular, cpf,
	tipoLogradouro, nomeLogradouro,
	numero, complemento, cidade, cep,
	estado
) VALUES ('Norley', '1992-03-05', '13999887766', '22233344455', 'Avenida', 'Francisco Glicerio', '470', 'AP 44', 'Santos', '11111222', 'SP');


INSERT INTO clientes (	nome, dataNascimento, celular, cpf,
	tipoLogradouro, nomeLogradouro,
	numero, complemento, cidade, cep,
	estado)
VALUES('Teste2', '1955-07-07', '13999887766', '22233344455', 'Avenida', 'Rodovia', 'BR 116', 'km 23', 'não existe', 'Não Tem', 'SP');

SELECT * FROM clientes


INSERT INTO clientes 
VALUES('Patinhas', '1955-07-07', '13999887766', '22233344455', 'Avenida', 'Rodovia', 'BR 116', 'km 23', 'não existe', 'SP');

/*Atualizar dados*/
UPDATE clientes
SET nome='Mateus',
	dataNascimento='1998-03-05', celular='13999885544', cpf='22536644785',tipoLogradouro='Rua 123', nomeLogradouro='ap 22', numero='234', complemento='24',cidade='Praia Grande', cep='11345923', estado='SP'
WHERE idCliente=8


UPDATE clientes
SET cep='23456567'
WHERE idClientes=2

DELETE FROM clientes 
WHERE idCliente=4

INSERT INTO tiposconta (nomeTipoConta) VALUES ('Corrente');
INSERT INTO tiposconta (nomeTipoConta) VALUES ('Salário');
INSERT INTO tiposconta (nomeTipoConta) VALUES ('Poupança');
INSERT INTO tiposconta (nomeTipoConta) VALUES ('Especial');

SELECT * FROM tiposconta

SELECT nomeTipoConta,idTipoConta FROM tiposconta
SELECT nome,celular FROM Clientes

