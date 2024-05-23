

/*------------------------Atividade Professor Arley SENACLIN 23/05/2024---------*/







CREATE TABLE paciente (
codPaciente INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
telefone CHAR(11) NOT NULL,
cpf CHAR(11) NOT NULL,
tipologradouro VARCHAR(20) NOT NULL,
nomelogradouro VARCHAR(50) NOT NULL,
numero VARCHAR(6) NOT NULL,
complemento VARCHAR(10) DEFAULT 'não existe',
CONSTRAINT PRIMARY KEY (codPaciente),
CONSTRAINT CK_TipoLogradouro CHECK (tipologradouro='Praça' OR tipologradouro='Rua' OR tipologradouro='Avenida' OR tipologradouro='Estrada')
);





SELECT * FROM paciente






CREATE TABLE dentista (
codDentista INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
cro CHAR(8) NOT NULL,
especialidade VARCHAR(50) NOT NULL DEFAULT 'Geral',
telefone CHAR(11) NOT NULL,
celular CHAR(14) NOT NULL,
CONSTRAINT PRIMARY KEY (codDentista),
CONSTRAINT CK_Cro CHECK (especialidade='Ortondontia' OR especialidade='Geral' OR especialidade='Periondotia' OR especialidade='Implantodontia')
);


SELECT * FROM dentista



CREATE TABLE consulta (
codConsulta INT AUTO_INCREMENT NOT NULL,
codPaciente INT NOT NULL,
codDentista INT NOT NULL,
dataconsulta DATETIME NOT NULL,
hora CHAR(6) NOT NULL,
tipoconsulta VARCHAR(100) NOT NULL,
observacao VARCHAR(200) NOT NULL,
CONSTRAINT PRIMARY KEY (codConsulta),

CONSTRAINT FK_Consulta_Paciente FOREIGN KEY (codPaciente) REFERENCES paciente(codPaciente),

CONSTRAINT FK_Consulta_Dentista FOREIGN KEY (codDentista) REFERENCES dentista(codDentista),

CONSTRAINT CK_Tipo_Consulta CHECK (tipoconsulta='avaliacao' OR tipoconsulta='tratamento')
);



DROP TABLE consulta




SELECT * FROM consulta


SELECT * FROM paciente


/*Desafio 1*/

ALTER TABLE paciente
ADD cidade VARCHAR(30) NOT NULL;




ALTER TABLE consulta
DROP COLUMN tipoconsulta;




ALTER TABLE consulta
ADD tipoconsulta VARCHAR(100) NOT NULL,
CONSTRAINT CK_Tipoconsulta CHECK (tipoconsulta='avaliacao' OR tipoconsulta='tratamento');














ALTER TABLE consulta
ADD CONSTRAINT CK_TipoConsulta CHECK (tipo




CONSTRAINT CK_Cro CHECK (especialidade='Ortondontia' OR especialidade='Geral' OR especialidade='Periondotia' OR especialidade='Implantodontia')
);



SELECT * FROM paciente




/*Desafio 1-Adicionando um novo Atributo Chamado Cidade na tabela paciente*/

ALTER TABLE paciente
ADD cidade VARCHAR(30) NOT NULL;





/*Inserindo Valores na Tabela Paciente-Desafio 2*/

INSERT INTO paciente (codPaciente, nome, telefone, cpf, tipologradouro, nomelogradouro, numero, complemento, cidade )

VALUES (1, 'Mateus' , '13354698712 ' , '44485769587' , 'rua' , 'Rua Bento Saia', '25' , '13' , 'Santos' );


INSERT INTO paciente (codPaciente, nome, telefone, cpf, tipologradouro, nomelogradouro, numero, complemento, cidade )

VALUES (2, 'Dourival' , '13354698689 ' , '55585769560' , 'Avenida' , 'Rua Castro Alves', '50' , '25' , 'Santos' );


INSERT INTO paciente (codPaciente, nome, telefone, cpf, tipologradouro, nomelogradouro, numero, complemento, cidade )

VALUES (3, 'Matue' , '13304698225 ' , '55585769980' , 'Praça' , 'Bento Antonio', '60' , '47' , 'Santos' );


INSERT INTO paciente (codPaciente, nome, telefone, cpf, tipologradouro, nomelogradouro, numero, complemento, cidade )

VALUES (4, 'Carlao' , '13304698300 ' , '55585769641' , 'Estrada' , 'Imigrantes km 60', '90' , '11' , 'Garujá' );


INSERT INTO paciente (codPaciente, nome, telefone, cpf, tipologradouro, nomelogradouro, numero, complemento, cidade )

VALUES (5, 'Mentos' , '13304698200 ' , '55585769333' , 'Rua' , 'Monteiro Lobato', '10' , '10' , 'São Vicente' );


INSERT INTO paciente (codPaciente, nome, telefone, cpf, tipologradouro, nomelogradouro, numero, complemento, cidade )

VALUES (6, 'Mexicano' , '13304698100 ' , '55585769222' , 'Avenida' , 'Canteiro Larto', '10' , '10' , 'São Vicente' );







/*Desafio 3 - Inserir 4 Dentistas de forma explicita sendo 1 de cada especialidade*/


SELECT * FROM dentista




INSERT INTO dentista (codDentista, nome, cro, especialidade, telefone, celular)

VALUES (1, 'Marilene Salsa' , '313355SP', 'Ortondontia', '13336699754' , '02111944665332');





INSERT INTO dentista (codDentista, nome, cro, especialidade, telefone, celular)

VALUES (2, 'Marivaldo Sousa' , '313355SP', 'Geral', '13336699754' , '02111944665332');


INSERT INTO dentista (codDentista, nome, cro, especialidade, telefone, celular)

VALUES (3, 'Cleonice Maria' , '313355SP', 'Periondotia', '13336699754' , '02111944665332');


INSERT INTO dentista (codDentista, nome, cro, especialidade, telefone, celular)

VALUES (4, 'Luciamara Portal' , '100355SP', 'Implantodontia', '13336699111' , '02111988665444');








/*Desafio 4 -	Inserir 3 consultas, sendo 1 para o dentista que cuida de Ortodontia e 2 para o dentista cuja especialidade é Geral. O tipo de todas elas será Avaliação.*/

SELECT * FROM dentista

SELECT * FROM paciente

SELECT * FROM consulta

ALTER TABLE consulta







DELETE FROM consulta
WHERE codConsulta=10



INSERT INTO consulta (codConsulta, codPaciente, codDentista, dataconsulta, hora, tipoconsulta, observacao )

VALUES (10 , 4 , 2 , '2024-12-05', '14:30', 'avaliacao' , 'Paciente idosa com dores na regiao pelvica');


INSERT INTO consulta (codConsulta, codPaciente, codDentista, dataconsulta, hora, tipoconsulta, observacao )

VALUES (11 , 5 , 2 , '2024-08-07', '15:00', 'avaliacao' , 'Paciente encostra-se em estado de atenção');


INSERT INTO consulta (codConsulta, codPaciente, codDentista, dataconsulta, hora, tipoconsulta, observacao )

VALUES (12 , 6 , 1 , '2024-09-10', '15:00', 'avaliacao' , 'Paciente idosa com dores nos dentes do Ciso');










/*Desafio 5 - 5.	Atualizar todos os dados, exceto nome e cro, do dentista que cuida de implantodontia, mudando sua especialidade para Geral*/


SELECT * FROM dentista


UPDATE dentista
SET especialidade= 'Geral'
WHERE codDentista=4;














/*Desafio 6 - Atualizar a data e hora de uma consulta marcada com um dentista cuja especialidade é Geral*/

SELECT * FROM dentista  /*2 / 4*/

SELECT * FROM consulta 

UPDATE consulta
SET dataconsulta= '2024-01-01', hora='12:30'
WHERE codConsulta=10;

UPDATE consulta
SET dataconsulta= '2024-02-02', hora='09:00'
WHERE codConsulta=11;












/*Desafio 7 - Atualizar a consulta do dentista de especialidade ortodontia, mudando o tipo de consulta para Tratamento e inserindo uma observação do dentista com o seguinte texto: “Tratamento será realizado em 10 consultas. Prioridade: Moderada. Remédio aplicado: Ponstan, caso sinta dores”*/

alter




























CONSTRAINT FK_ClientesContas_Clientes FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente),




CONSTRAINT FK_Emprestimos_Recepcionistas FOREIGN KEY (idRecepcionista) REFERENCES Recepcionistas (idRecepcionista),
CONSTRAINT FK_Emprestimos_Usuarios FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario));















CREATE TABLE Usuarios (
idUsuario INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
senha CHAR(8) NOT NULL,
cpf CHAR(11) NOT NULL,
email VARCHAR(30) NOT NULL,
genero CHAR(1) DEFAULT 'N',
tipoLogradouro VARCHAR(10) NOT NULL,
nomeLogradouro VARCHAR(30) NOT NULL,
numero VARCHAR(6) NOT NULL,
complemento VARCHAR(10) DEFAULT 'não existe',
cep CHAR(8) NOT NULL,
cidade VARCHAR(30) NOT NULL,
estado CHAR(2) NOT NULL,
bairro VARCHAR(20) NOT NULL,
CONSTRAINT PRIMARY KEY (idUsuario),
CONSTRAINT CK_TipoLogradouro CHECK (tipoLogradouro='Praça' OR tipoLogradouro='Rua' OR tipoLogradouro='Avenida' OR tipoLogradouro='Rodovia' OR tipoLogradouro='Viela'),
CONSTRAINT CK_genero CHECK (genero='F' OR genero='M' OR genero='N')
);


CREATE DATABASE SENACLIN






