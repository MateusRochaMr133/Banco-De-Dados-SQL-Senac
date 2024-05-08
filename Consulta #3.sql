

USE Biblioteca

/*Criando A tabela Usuario*/
CREATE TABLE Usuario (
idUsuario INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
senha CHAR(8) NOT NULL,
cpf CHAR(11) NOT NULL,
email VARCHAR(50) NOT NULL,
celular CHAR(13) NOT NULL,
genero VARCHAR(20) NOT NULL,
rg VARCHAR(20) NOT NULL,
endereco VARCHAR(100) NOT NULL,
cidade VARCHAR(50) NOT NULL,
estado CHAR(2) NOT NULL,
cep CHAR(8) NOT NULL,
bairro VARCHAR(30) NOT NULL,
CONSTRAINT PRIMARY KEY (idUsuario)
);

SELECT * FROM Usuario

/* Fim da Tabela Usuario*/

/* Criando Tabela Aluno*/
CREATE TABLE Aluno (
matricula VARCHAR(10) NOT NULL,
nivelPontualidade VARCHAR(45)
);

SELECT * FROM Aluno
/*Fim Tabela Aluno*/

/*Criando Tabela Professor*/
CREATE TABLE Professor (
areaAtuaçao VARCHAR(10) NOT NULL,
salario DECIMAL(6,2) NOT NULL,
idUsuario INT NOT NULL,
CONSTRAINT FK_Professor_Usuario FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
);


SELECT * FROM Professor
/* Fim da Tabela Professor*/



/*Criando Tabela Recepcionista*/
CREATE TABLE Recepcionista (
idRecepcionista INT AUTO_INCREMENT NOT NULL,
idUsuario INT NOT NULL,
CONSTRAINT FK_Recepcionista_Usuario FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
CTPS VARCHAR(30),
CONSTRAINT PRIMARY KEY (idRecepcionista)
);


SELECT * FROM Recepcionista
/*Fim Tabela Recepcionista*/



/*Criando Tabela Emprestimo*/
CREATE TABLE Emprestimo (
idEmprestimo INT AUTO_INCREMENT NOT NULL,
DataEmprestimo DATETIME DEFAULT NOW(),
DataDevoluçao DATETIME NOT NULL,
dataDevoluçaoEfeita DATETIME,
multa DECIMAL(6,2),
idUsuario INT NOT NULL,
idAluno INT NOT NULL,
idRecepcionista INT NOT NULL,

CONSTRAINT FK_Emprestimo_Recepcionista_2 FOREIGN KEY (idRecepcionista) REFERENCES Recepcionista(idRecepcionista),

/*CONSTRAINT FK_Aluno_Emprestimo FOREIGN KEY (idAluno) REFERENCES Aluno(idAluno)*/

CONSTRAINT FK_Emprestimo_Recepcionista FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),

CONSTRAINT PRIMARY KEY (idEmprestimo)
);

SELECT * FROM Emprestimo
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

CONSTRAINT FK_Livro_Autores FOREIGN KEY (idAutor) REFERENCES Autor(idAutor)
);

SELECT * FROM LivroAutor
/*Fim da Tabela LivroAutor*/




/*Criando Tabela ContatoTelefonico*/
CREATE TABLE ContatoTelefonico (
ddi VARCHAR(5) NOT NULL,
ddd CHAR(2),
numero CHAR(9)
);

SELECT * FROM ContatoTelefonico
/*Fim da Tabela ContatoTelefonico*/







