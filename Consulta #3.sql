


CREATE DATABASE mateus123

USE Biblioteca

/*
Alter Table- Alterar a tabela

Drop Column - Excluir a coluna especifica

ADD - Adicionar uma nova entidade ou valor especifico para a tabela
*/


ALTER TABLE usuario
DROP COLUMN celular

ALTER TABLE usuario
DROP COLUMN endereco

ALTER TABLE usuario
DROP COLUMN rg


ALTER TABLE usuario 
ADD tipoLogradouro VARCHAR(10);


ALTER TABLE usuario 
ADD nomeLogradouro VARCHAR(30) NOT NULL;


ALTER TABLE usuario 
ADD numero VARCHAR(6) NOT NULL;


ALTER TABLE usuario 
ADD complemento VARCHAR(10) DEFAULT 'não existe';



/*----------------Criando A tabela Usuario------*/
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

DROP TABLE usuario

SELECT * FROM Usuarios

/*----------------Fim da Tabela Usuarios--------*/




/*----------------Criando Tabela Aluno----------*/
CREATE TABLE Alunos (
idAluno INT NOT NULL,
matricula VARCHAR(10) NOT NULL,
nivelPontualidade TINYINT(1),
CONSTRAINT FK_Aluno_Usuario_22 FOREIGN KEY (idAluno) REFERENCES Usuarios(idUsuario)
);

DROP TABLE Aluno

SELECT * FROM alunos

ALTER TABLE alunos
ADD CONSTRAINT PRIMARY KEY (idAluno)
/*----------------Fim Tabela Alunos-------------*/




/*--------Criando Tabela Recepcionistas---------*/
CREATE TABLE Recepcionistas (
idRecepcionista INT NOT NULL,
CTPS CHAR(11),
CONSTRAINT FK_Recepcionistas_Usuarios FOREIGN KEY (idRecepcionista)
REFERENCES Usuarios(idUsuario)
);


DROP TABLE recepcionistas

ALTER TABLE Recepcionistas
ADD CONSTRAINT PRIMARY KEY (idRecepcionista)


SELECT * FROM recepcionistas
/*--------Fim da Tabela Recepcionistas----------*/





/*--------Criando Tabela Professores------------*/
CREATE TABLE Professores (
idProfessor INT NOT NULL,
areaAtuacao VARCHAR(25) NOT NULL,
salario DECIMAL(7,2) NOT NULL,
CONSTRAINT FK_Professores_Usuarios FOREIGN KEY (idProfessor) REFERENCES Usuarios(idUsuario)
);


SELECT * FROM professores

ALTER TABLE Professores
ADD CONSTRAINT PRIMARY KEY (idProfessor)
/*--------Fim da Tabela Professor---------------*/



/*--------Criando Tabela ContatosTelefonicos----*/
CREATE TABLE ContatosTelefonicos(
idContatoTelefonico INT AUTO_INCREMENT NOT NULL,
idUsuario INT NOT NULL,
DDI VARCHAR(5) NOT NULL,
DDD CHAR(2) NOT NULL,
numero VARCHAR(9) NOT NULL,
CONSTRAINT PRIMARY KEY (idContatoTelefonico),
CONSTRAINT fk_ContatosTelefonicos_Usuarios FOREIGN KEY (idUsuario) REFERENCES Usuarios(idUsuario));

SELECT * FROM ContatosTelefonicos

/*--------Fim da Tabela ContatosTelefonicos-----*/



/*-----------Criando Tabela Emprestimos---------*/

CREATE TABLE Emprestimos (
idEmprestimo INT AUTO_INCREMENT NOT NULL,
idUsuario INT NOT NULL, /*pois qualquer usuario pode emprestar livro*/
idRecepcionista INT NOT NULL,
dataEmprestimo DATETIME NOT null,
dataDevolucao DATETIME NOT NULL,
dataDevolucaoEfetiva DATETIME,
multa DECIMAL (6,2), 
CONSTRAINT PRIMARY KEY (idEmprestimo),
CONSTRAINT FK_Emprestimos_Recepcionistas FOREIGN KEY (idRecepcionista) REFERENCES Recepcionistas (idRecepcionista),
CONSTRAINT FK_Emprestimos_Usuarios FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario));


SELECT * FROM emprestimos


SELECT * FROM recepcionistas


/*---Final da Tabela Criando TabelaEmprestimos--*/






/*------------Criando Tabela Autores------------*/




CREATE TABLE Autores (
idAutor INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
nacionalidade VARCHAR(30),
CONSTRAINT PRIMARY KEY (idAutor)
);

SELECT * FROM Autores


/*---------Fim da Tabela Autores----------------*/



/*----------Criando Tabela Editoras-------------*/
CREATE TABLE Editoras (
idEditora INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(30) NOT NULL,
celular VARCHAR(14) NOT NULL,
email VARCHAR(50) NOT NULL,
responsavel VARCHAR(50) NOT NULL,
isbn CHAR(13),
CONSTRAINT PRIMARY KEY(idEditora)
);


SELECT * FROM Editoras


/*-----------Fim da Tabela Editoras-------------*/




/*-----------Criando Tabela livros--------------*/
CREATE TABLE Livros (
idLivro INT auto_increment NOT NULL,
idEditora INT NOT NULL,
nome VARCHAR(100) NOT NULL,
tomo VARCHAR(10) NOT NULL,
genero VARCHAR(15) NOT NULL,
qtdPaginas INT NOT null,
idioma VARCHAR(20) NOT NULL,
ano INT,
edicao INT,
ISBN CHAR(13),
CONSTRAINT PRIMARY KEY (idLivro),
CONSTRAINT FK_Livros_Editoras FOREIGN KEY(idEditora) REFERENCES Editoras(idEditora)
);


SELECT * FROM Livros
/*----------------Final da Tabela livros---------------------*/



/*---------------Criando Tabela LivrosAutores----------------*/
CREATE TABLE LivrosAutores (
idLivro INT NOT NULL,
idAutor INT NOT NULL,
CONSTRAINT PRIMARY KEY (idlivro,idautor),
CONSTRAINT FK_LivrosAutores_Livros FOREIGN KEY (idLivro) REFERENCES Livros(idLivro), 
CONSTRAINT FK_LivroAutores_Autores FOREIGN KEY (idAutor) REFERENCES Autores(idAutor)
);

SELECT * FROM LivrosAutores

/*----------------Fim da Tabela LivrosAutores----------------*/





/*---------------Criando Tabela EmprestimosLivros-----------*/
CREATE TABLE EmprestimosLivros (
idEmprestimo INT NOT NULL,
idLivro INT NOT NULL,
CONSTRAINT PRIMARY KEY(idEmprestimo, idLivro),
CONSTRAINT fk_EmprestimoLivros_Emprestimos FOREIGN KEY (idEmprestimo) REFERENCES Emprestimos (idEmprestimo),
CONSTRAINT fk_EmprestimosLivros_Livros FOREIGN KEY (idLivro) REFERENCES Livros (idLivro)
);

SELECT * FROM EmprestimosLivros


/*------------Fim da Tabela EmprestimosLivros---------------*/






/*Ate Aqui*/













ALTER TABLE recepcionista
DROP COLUMN idUsuario


ALTER TABLE recepcionista
ADD tipoLogradouro VARCHAR(10);
/*Fim Tabela Recepcionista*/


/*Criando Tabela Emprestimo*/
CREATE TABLE Emprestimo (

idEmprestimo INT AUTO_INCREMENT NOT NULL,

idUsuario INT NOT NULL,

idRecepcionista INT NOT NULL,

dataEmprestimno DATETIME NOT NULL,

dataDevolucao DATETIME NOT NULL,

dataDevolucaoEfetiva DATETIME,

multa DECIMAL (6,2), 

CONSTRAINT PRIMARY KEY (idEmprestimo),

CONSTRAINT FK_Emprestimo_Recepcionista FOREIGN KEY (idRecepcionista) REFERENCES Recepcionista (idRecepcionista),

CONSTRAINT FK_Emprestimo_Usuario FOREIGN KEY (idUsuario) REFERENCES usuario (idUsuario));

SELECT * FROM emprestimo    

DROP TABLE emprestimo

/*Fim da Tabela Emprestimo*/


/*Criando Tabela Autor*/
CREATE TABLE Autor (
idAutor INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
nacionalidade VARCHAR(30),
CONSTRAINT PRIMARY KEY (idAutor)
);

SELECT * FROM Autor
/*Fim da Tabela Autor*/


/*Criando a Tabela Livro*/
CREATE TABLE Livro (
idLivro INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(100) NOT NULL,
tomo VARCHAR(10) NOT NULL,
genero VARCHAR(15) NOT NULL,
qtdPaginas INT,
idioma VARCHAR(20) NOT NULL,
ano INT,
edicao INT,
idAutor INT NOT NULL,
idEditora INT NOT NULL,

CONSTRAINT FK_Autor_Livro FOREIGN KEY (idAutor) REFERENCES Autor(idAutor),

CONSTRAINT FK_Livro_Editora FOREIGN KEY (idEditora) REFERENCES Editora(idEditora),

CONSTRAINT PRIMARY KEY (idLivro)
);

SELECT * FROM Livro
/*Fim da Tabela Livro*/


CREATE TABLE Editora (
idEditora INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(30) NOT NULL,
celular VARCHAR(14) NOT NULL,
email VARCHAR(50) NOT NULL,
responsavel VARCHAR(50) NOT NULL,
isbn CHAR(10),
CONSTRAINT PRIMARY KEY (idEditora)
);

SELECT * FROM Editora
/*Fim da Tabela Editora*/


/*Criando Tabela LivroAutor*/
CREATE TABLE LivroAutor (
idLivro INT NOT NULL,
idAutor INT NOT NULL,

CONSTRAINT FK_Livro_Autor FOREIGN KEY (idLivro) REFERENCES Livro(idLivro),

CONSTRAINT FK_Livro_Autores FOREIGN KEY (idAutor) REFERENCES Autor(idAutor),
CONSTRAINT PRIMARY KEY (idLivro,idAutor)
);

SELECT * FROM livroautor

DROP TABLE LivroAutor
/*Fim da Tabela LivroAutor*/




/*Criando Tabela ContatoTelefonico*/
CREATE TABLE ContatoTelefonico (
ddi VARCHAR(5) NOT NULL,
ddd CHAR(2),
numero CHAR(9)
);



/*Adicionando o idUsuario na Tabela ContatoTelefonico*/
ALTER TABLE ContatoTelefonico
ADD idUsuario INT NOT NULL;

ALTER TABLE contatotelefonico

ADD CONSTRAINT FK_ContaoTelefonico_Usuario FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario);
/*Passando a Chave Estrangeira que se relaciona com a tabela Usuario*/

DROP TABLE ContatoTelefonico

SELECT * FROM ContatoTelefonico
/*Fim da Tabela ContatoTelefonico*/




/*Criando Tabela Emprestimo Livro*/
CREATE TABLE EmprestimoLivro (
idEmprestimo INT NOT NULL,
idLivro INT NOT NULL,
CONSTRAINT fk_EmprestimoLivro_Emprestimo FOREIGN KEY (idEmprestimo) REFERENCES Emprestimo (idEmprestimo),
CONSTRAINT fk_EmprestimoLivro_Livro FOREIGN KEY (idLivro) REFERENCES Livro (idLivro),
CONSTRAINT PRIMARY KEY(idEmprestimo, idLivro)
);

SELECT * FROM EmprestimoLivro
/*Fim da Tabela EmprestimoLivro*/

SHOW TABLES;



/*Passando Valores para as Tabelas*/


INSERT INTO editora (nome, celular, email, responsavel) 

VALUES ('Atlas','11988776655','contato@atlas.com.br','Frederico Silva'); 

INSERT INTO editora (nome, celular, email, responsavel) 

VALUES ('Érica','11988776644','contato@erica.com.br','Martha Rocha'); 

INSERT INTO editora (nome, celular, email, responsavel) 

VALUES ('Person','21988776633','contato@person.com.br','Ricardo Maia');


SELECT * FROM editora

/* Fim dos valores passados para a tabela Editora*/



/*Inserido valores para a Tabela ContatosTelefonicos*/

insert into ContatoTelefonico (ddi, ddd, numero,idUsuario) 
values ('+55', '13', '999877621', 1); 


insert into ContatoTelefonico ( ddi, ddd, numero, idUsuario) 
values ('+55', '21', '988877621', 2); 


insert into ContatoTelefonico ( ddi, ddd, numero, idUsuario) 
values ('+55', '51', '977877621', 3); 


insert into ContatoTelefonico ( ddi, ddd, numero, idUsuario) 
values ('+55', '92', '966877621', 4); 


insert into ContatoTelefonico ( ddi, ddd, numero, idUsuario) 
values ('+55', '66', '955877621', 5); 


insert into ContatoTelefonico ( ddi, ddd, numero, idUsuario) 
values ('+55', '74', '944877621', 6); 


insert into ContatoTelefonico ( ddi, ddd, numero, idUsuario) 
values ('+55', '87', '933877621', 7); 


insert into ContatoTelefonico ( ddi, ddd, numero, idUsuario) 
values ('+55', '62', '922877621', 8); 


insert into ContatoTelefonico ( ddi, ddd, numero, idUsuario) 
values ('+55', '11', '991877621', 9); 


insert into ContatoTelefonico ( ddi, ddd, numero, idUsuario) 
values ('+55', '11', '992877621', 10); 

/*Fim dos Valores passado para a Tabela ContatoTelefonico*/






/*Alterando dados na Tabela Usuario*/

ALTER TABLE `usuario` 

CHANGE COLUMN `email` `email` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci' AFTER `cpf`; 






/*Inserindo Dados na Tabela Usuario*/

INSERT INTO usuario ( nome, cpf, email, genero, tipoLogradouro, nomeLogradouro, numero, cidade, cep, estado,bairro, senha )  

VALUES( 'Alice',  '20292504225',  'alice.isabel.dacunha@freitasprior.com.br', 'F',  'Armínio de Souza Nunes', 'Rua',  '153',  'Caxias do Sul','95059832', 'RS',  'São Cristóvão',  '11111111111'
); 


  

INSERT INTO usuario ( nome, cpf, email, genero,tipoLogradouro, nomeLogradouro, numero, cidade, cep, estado,bairro, senha ) 

VALUES( 'Samuel', '19396615528',  'samuel_ricardo_farias@atiara.com.br', 'M',  'João Paulo I',  'Rua', '391',  'Boa Vista',  '69305180',  'RR', 'São Francisco',  '22222222222' 
); 



  

INSERT INTO usuario ( nome, cpf, email, genero,tipoLogradouro, nomeLogradouro, numero, cidade, cep, estado,bairro, senha ) 

VALUES( 'Laura',  '70759296073',  'laura_rayssa_daluz@ornatopresentes.com.br', 'F',  'Soldado-Polícia Militar Jacinto José de Santana da Silva', 'Rua',  '663',  'Boa Vista',  '69313572', 'RR',  'Caranã',  '33333333333' 
); 
 



INSERT INTO usuario ( nome, cpf, email, genero,tipoLogradouro, nomeLogradouro, numero, cidade, cep, estado,bairro, senha ) 

VALUES( 'Paulo',  '35157051808',  'paulo_alves@valeguinchos.com.br', 'M',  'Lucerna',  'Rua',  '654', 'Parnamirim',  '59141310',  'RN',  'Rosa dos Ventos', '44444444444' 
); 

 

INSERT INTO usuario ( nome, cpf, email, genero,tipoLogradouro, nomeLogradouro, numero, cidade, cep, estado,bairro, senha ) 

VALUES( 'Lorena',  '98749543709',  'lorena_moura@technew.ind.br', 'F',  'Pelotas',  'Avenida', '847',  'Serra',  '29166063',  'ES', 'Barcelona', '55555555555' 
); 

SELECT * FROM Usuario


/*Fim dos Dados passados para a Tabela Usuario*/





/*Inserindo Dados na Tabela Recepcionista*/
INSERT INTO recepcionista (idrecepcionista,ctps)  

VALUES('1','3894793184'); 

  

INSERT INTO recepcionista (idrecepcionista,ctps)  

VALUES('2','2396409101'); 

  

INSERT INTO recepcionista (idrecepcionista,ctps)  

VALUES('3','9827510485'); 

  

INSERT INTO recepcionista (idrecepcionista,ctps)  

VALUES('4','6154847379'); 

  

INSERT INTO recepcionista (idrecepcionista,ctps)  

VALUES('5','947556817'); 


SELECT * FROM recepcionista
/*Fim dos Valores Passados para a Tabela Recepcionista*/




DROP TABLE EmprestimoLivro;
DROP TABLE livroautor;
DROP TABLE autor;
DROP TABLE livro;
DROP TABLE editora;
DROP TABLE emprestimo;
DROP TABLE recepcionista;
DROP TABLE aluno;
DROP TABLE professor;
DROP TABLE contatoTelefonico;
DROP TABLE usuario;







