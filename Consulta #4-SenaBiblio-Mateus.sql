/*Massa de Dados - SenaBiblio*/

/*--------------------Inserindo Editoras------------------------*/

INSERT INTO editoras (nome, celular, email, responsavel) 
VALUES ('Atlas','11988776655','contato@atlas.com.br','Frederico Silva');
 
INSERT INTO editoras (nome, celular, email, responsavel) 
VALUES ('Érica','11988776644','contato@erica.com.br','Martha Rocha');
 
INSERT INTO editoras (nome, celular, email, responsavel) 
VALUES ('Person','21988776633','contato@person.com.br','Ricardo Maia');

SELECT * FROM Editoras

/*---------------Final da ediçao de editoras---------------------*/






/*----------------Inserindo Dados no Usuarios------------------*/
INSERT INTO usuarios ( 
	nome, cpf, email, genero, nomeLogradouro, tipoLogradouro, 
	numero, cidade, cep, estado, bairro, 
	senha 
)  
 
VALUES(
 
		'Alice',  
 
		'20292504225',  
 
		'alice.isabel.dacunha@freitasprior.com.br',
 
		'F',  
 
		'Armínio de Souza Nunes',
 
		'Rua',  
 
		'153',  
 
		'Caxias do Sul',  
 
		'95059832',
 
		'RS',  
 
		'São Cristóvão',  
 
		'11111111'
 
);
 
  
 
INSERT INTO usuarios (
 
		nome, cpf, email, genero, nomeLogradouro, tipoLogradouro,
 
		numero, cidade, cep, estado, bairro,
 
		senha
 
)  
 
VALUES(
 
		'Samuel',
 
		'19396615528',  
 
		'samuel_ricardo_farias@atiara.com.br',
 
		'M',  
 
		'João Paulo I',  
 
		'Rua',
 
		'391',  
 
		'Boa Vista',  
 
		'69305180',  
 
		'RR',
 
		'São Francisco',  
 
		'22222222'
 
);
 
  
 
INSERT INTO usuarios (
 
		nome, cpf, email, genero, nomeLogradouro, tipoLogradouro,
 
		numero, cidade, cep, estado, bairro,
 
		senha
 
)  
 
VALUES(
 
		'Laura',  
 
		'70759296073',  
 
		'laura_rayssa_daluz@ornatopresentes.com.br',
 
		'F',  
 
		'Soldado-Polícia Militar Jacinto José de Santana da Silva',
 
		'Rua',  
 
		'663',  
 
		'Boa Vista',  
 
		'69313572',
 
		'RR',  
 
		'Caranã',  
 
		'33333333'
 
);
 
	
 
	
 
INSERT INTO usuarios (
 
		nome, cpf, email, genero, nomeLogradouro, tipoLogradouro,
 
		numero, cidade, cep, estado, bairro,
 
		senha
 
)  
 
VALUES(
 
		'Paulo',  
 
		'35157051808',  
 
		'paulo_alves@valeguinchos.com.br',
 
		'M',  
 
		'Lucerna',  
 
		'Rua',  
 
		'654',
 
		'Parnamirim',  
 
		'59141310',  
 
		'RN',  
 
		'Rosa dos Ventos',
 
		'44444444'
 
);
 
	
 
	
 
INSERT INTO usuarios (
 
		nome, cpf, email, genero, nomeLogradouro, tipoLogradouro,
 
		numero, cidade, cep, estado, bairro, senha
 
)  
 
VALUES(
 
		'Lorena',  
 
		'98749543709',  
 
		'lorena_moura@technew.ind.br',
 
		'F',  
 
		'Pelotas',  
 
		'Avenida',
 
		'847',  
 
		'Serra',  
 
		'29166063',  
 
		'ES',
 
		'Barcelona',
 
		'55555555'
 
);

SELECT * FROM usuarios


/*-------------Final da tabela de Usuarios---------------------*/






/*-------------Inserindo Dados Na Tabela Autores---------------*/

INSERT INTO autores (nome, nacionalidade)  
VALUES ('Roberto', 'Portugues');  
 
INSERT INTO autores (nome, nacionalidade)  
VALUES ('Ana', 'Brasileira');  
 
INSERT INTO autores (nome, nacionalidade)  
VALUES ('Flavia', 'Inglesa');  
 
insert INTO autores (nome, nacionalidade)  
VALUES ('Antonio', 'Russo');  
 
INSERT INTO autores (nome, nacionalidade)  
VALUES ('Everton', 'Angolano');  
 
INSERT INTO autores (nome, nacionalidade)  
VALUES ('Rita', 'Francesa');  
 
INSERT INTO autores (nome, nacionalidade)  
VALUES ('Selena', 'Brasileira');  
 
INSERT INTO autores (nome, nacionalidade)  
VALUES ('Jurandi', 'Brasileiro');  
 
INSERT INTO autores (nome, nacionalidade)  
VALUES ('Enrique', 'Brasileiro');  
 
INSERT INTO autores (nome, nacionalidade)  
VALUES ('Antonia', 'Portuguesa');  
 
INSERT INTO autores (nome, nacionalidade)  
VALUES ('Nani', 'Portuguesa');


SELECT * FROM autores



/*-----------------Final da Tabela Autores---------------------*/



/*----------------Inicio da Tabela Professores-----------------*/


INSERT into professores ( 
idProfessor, areaAtuacao, salario) 
VALUES ( 1, 'Informatica', 5500.50);
 
INSERT into professores ( 
idProfessor, areaAtuacao, salario) 
VALUES ( 2, 'Portugues', 4000.00);
 
INSERT into professores ( 
idProfessor, areaAtuacao, salario) 
VALUES ( 3, 'Matematica', 6000.70); 
INSERT into professores ( 
idProfessor, areaAtuacao, salario) 
VALUES ( 4, 'Culinaria', 8200.00);
 
INSERT into professores ( 
idProfessor, areaAtuacao, salario) 
VALUES ( 5, 'Educacao fisica', 5156.34);



SELECT * FROM professores


/*-----------------Fim da Tabela Professores-------------------*/







/*-----------Inserindo dados na Tabela Usuarios----------------*/


INSERT into usuarios (idUsuario,nome,senha,cpf,email,genero,tipologradouro,nomelogradouro,numero,cidade,estado,cep,bairro)  
VALUES(6,'Pedro','33224455','00000000001','contato@Pedro.com.br','masculino','Avenida','Engenheiro Manuel ferramenta junior','134','santos','SP','11086400','Areia Banca');
 
INSERT into usuarios (idUsuario,nome,senha,cpf,email,genero,tipologradouro,nomelogradouro,numero,cidade,estado,cep,bairro)  
VALUES (7,'Lucas','39224456','00000000002','contato@Lucas.com.br','masculino','Avenida','Brasil','13','Santos','SP','01430000','Jardim América');
 
INSERT into usuarios (idUsuario,nome,senha,cpf,email,genero,tipologradouro,nomelogradouro,numero,cidade,estado,cep,bairro)  
VALUES (8,'Vinicio','37224457','00000000003','contato@Vinicio.com.br','masculino','Avenida','Francisco Glicério','159','Santos','SP','11065401','Gonzaga');
 
INSERT into usuarios (idUsuario,nome,senha,cpf,email,genero,tipologradouro,nomelogradouro,numero,cidade,estado,cep,bairro)  
VALUES (9,'Dell','35224458','00000000004','contato@Dell.com.br','masculino','Rua','Alameda Ari Barroso','Sao Vicente','3','SP','11320400','Ilha Porchat');
 
INSERT into usuarios (idUsuario,nome,senha,cpf,email,genero,tipologradouro,nomelogradouro,numero,cidade,estado,cep,bairro) 
VALUES (10,'Chico','31224459','00000000005','contato@Chico.com.br','masculino','Rua','Alameda Adriano Neiva da Mota e Silva','230','Santos','SP','11065690','José Menino');



SELECT * FROM usuarios

/*-------------------Fim da Tabela Usuarios-------------------*/





/*-----------------Inserindo dados na Tabela Alunos------------*/


INSERT into alunos (idAluno,matricula,nivelPontualidade) 
VALUES (1,'0000000001',5);
 
INSERT into alunos (idAluno,matricula,nivelPontualidade) 
VALUES (2,'0000000002',4);
 
INSERT into alunos (idAluno,matricula,nivelPontualidade) 
VALUES (3,'0000000003',3);
 
INSERT into alunos (idAluno,matricula,nivelPontualidade) 
VALUES (4,'0000000004',2);
 
INSERT into alunos (idAluno,matricula,nivelPontualidade) 
VALUES (5,'0000000005',5);


SELECT * FROM alunos


/*--------------------Fim da Tabela Alunos---------------------*/




/*---------Inserindo dados na Tabela Recepcionistas------------*/

INSERT INTO recepcionistas (idrecepcionista,ctps)  
VALUES(6,'3894793184');
 
INSERT INTO recepcionistas (idrecepcionista,ctps)  
VALUES(7,'2396409101');
 
INSERT INTO recepcionistas (idrecepcionista,ctps)  
VALUES(8,'9827510485');
 
INSERT INTO recepcionistas (idrecepcionista,ctps)  
VALUES(9,'6154847379');
 
INSERT INTO recepcionistas (idrecepcionista,ctps)  
VALUES(10,'947556817');



SELECT * FROM recepcionistas


/*------------------Fim da Tabela Recepcionistas---------------*/







/*-------------Inserindo dados na Tabela Livros----------------*/



INSERT into livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES (1,'Dom Quixote','3','Romance','1033','Espanhol','1605','5ª','1234567890');  
 
INSERT into livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES (2,'Um conto de duas cidades','2','Romance','850','Portugues','1995','2ª','1234567891');
 
INSERT into livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES (3,'O Senhor dos Anéis','4','Fantasia','975','Ingles','2000','3ª','1234567777');
 
INSERT into livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES (3,'O Pequeno Principe ','1','Romance','350','Alemão','1982','2ª','1234567888');
 
INSERT into livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES (2,'Harry Potter e a Pedra Filosofal','3','Fantasia','760','Inglês','2012','1ª','1234567999'); 
INSERT into livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES (1,'E não sobrou Nenhum','3','Suspense','320','Francês','2020','2ª','1234567000');
 
INSERT into livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES (2,'O Sonho da Câmara Vermelha','2','Drama','1320','Polonês','1995','2ª','1234567111');
 
INSERT into livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES (2,'Ela, A Feiticeira','2','Fantasia','832','Inglês','1994','4ª','1234567222');
 
INSERT into livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES (1,'O leão, a Feiticeira e o Guarda Roupa','5','Suspense','1134','Argentino','1974','4ª','1234567333');
 
INSERT into livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES (3,'O Código da Vinci','4','Drama','1438','Ingles','1974','4ª','1234567444');




SELECT * FROM livros



/*------------------Fim da Tabela Livros-----------------------*/







/*----------------Inicio da Tabela LivrosAutore----------------*/



INSERT into livrosautores (idLivro, idAutor)   

VALUES (1, 1);  
 
INSERT into livrosautores (idLivro, idAutor)   

VALUES (1, 6);
 
INSERT into livrosautores (idLivro, idAutor)   

VALUES (2, 2);
 
INSERT into livrosautores (idLivro, idAutor)   

VALUES (3, 3);
 
INSERT into livrosautores (idLivro, idAutor)   

VALUES (4, 4);
 
INSERT into livrosautores (idLivro, idAutor)   

VALUES (4, 5);
 
INSERT into livrosautores (idLivro, idAutor)   

VALUES (5, 4);
 
INSERT into livrosautores (idLivro, idAutor)   

VALUES (6, 7);
 
INSERT into livrosautores (idLivro, idAutor)   

VALUES (7, 8);
 
INSERT into livrosautores (idLivro, idAutor)   

VALUES (8, 9);
 
INSERT into livrosautores (idLivro, idAutor)   

VALUES (9, 10);
 
INSERT into livrosautores (idLivro, idAutor)   

VALUES (10, 11);


SELECT * FROM livrosautores


/*------------------Fim da Tabela livrosautores----------------*/







/*---------Inserindo dados na Tabela EmprestimosLivros------*/



/*---------------------O erro Para Aqui---------------------*/
INSERT INTO emprestimos ( 
dataemprestimo,datadevolucao,datadevolucaoefetiva,multa,idusuario,idrecepcionista 
) 
VALUES( 
'2021-01-05 10:23', 
'2021-01-10 10:23', 
'2021-01-09 11:58', 
123.33, 
11, 
6 
);

/*2*/
INSERT INTO emprestimos (
dataemprestimo,datadevolucao,datadevolucaoefetiva,multa,idusuario,idrecepcionista
)
VALUES(
'2020-02-02 14:15',
'2020-02-09 14:15',
'2020-01-04 9:55',
493.33,
14,
6
);

/*3*/
INSERT INTO emprestimos (
dataemprestimo,datadevolucao,datadevolucaoefetiva,multa,idusuario,idrecepcionista
)
VALUES(
'2022-05-20 18:22',
'2022-05-27 18:22',
'2022-05-24 11:01',
156.33,
12,
7
);

/*4*/
INSERT INTO emprestimos (
dataemprestimo,datadevolucao,datadevolucaoefetiva,multa,idusuario,idrecepcionista
)
VALUES(
'2022-07-02 14:22',
'2022-07-09 14:22',
'2022-07-05 12:44',
156.33,
12,
7
);




/*Daqui pra cima está dando erro*/


/*5*/
INSERT INTO emprestimos (
dataemprestimo,datadevolucao,datadevolucaoefetiva,multa,idusuario,idrecepcionista
)
VALUES(
'2022-02-22 10:56',
'2022-02-29 10:56',
'2022-02-25 17:50',
0,
8,
8
);

/*6*/
INSERT INTO emprestimos (
dataemprestimo,datadevolucao,datadevolucaoefetiva,multa,idusuario,idrecepcionista
)
VALUES(
'2022-03-22 8:55',
'2022-03-29 8:55',
'2022-03-28 15:15',
0,
8,
8
);

/*7*/
INSERT INTO emprestimos (
dataemprestimo,datadevolucao,datadevolucaoefetiva,multa,idusuario,idrecepcionista
)
VALUES(
'2022-05-10 13:12',
'2022-05-17 13:12',
'2022-05-14 19:00',
16.33,
9,
8
);

/*8*/
INSERT INTO emprestimos (
dataemprestimo,datadevolucao,datadevolucaoefetiva,multa,idusuario,idrecepcionista
)
VALUES(
'2024-01-12 16:23',
'2024-01-19 16:23',
'2024-01-18 8:23',
0,
4,
9
);

/*9*/
INSERT INTO emprestimos (
dataemprestimo,datadevolucao,datadevolucaoefetiva,multa,idusuario,idrecepcionista
)
VALUES(
'2023-11-07 18:12',
'2023-11-14 18:12',
'2023-11-16 9:46',
45.61,
3,
10
);

/*10*/
INSERT INTO emprestimos (
dataemprestimo,datadevolucao,datadevolucaoefetiva,multa,idusuario,idrecepcionista
)
VALUES(
'2022-06-09 10:01',
'2022-06-16 10:01',
'2022-06-17 19:20',
51.53,
2,
9
);


SELECT * FROM recepcionistas


SELECT * FROM usuarios



SELECT * FROM emprestimos


SELECT * FROM emprestimos







INSERT INTO emprestimoslivros (idEmprestimo, idLivro) VALUES (2,1); 
INSERT INTO emprestimoslivros (idEmprestimo, idLivro) VALUES (2,2); 
INSERT INTO emprestimoslivros (idEmprestimo, idLivro) VALUES (3,3); 
INSERT INTO emprestimoslivros (idEmprestimo, idLivro) VALUES (4,4); 
INSERT INTO emprestimoslivros (idEmprestimo, idLivro) VALUES (5,5); 
INSERT INTO emprestimoslivros (idEmprestimo, idLivro) VALUES (5,6); 
INSERT INTO emprestimoslivros (idEmprestimo, idLivro) VALUES (6,7); 
INSERT INTO emprestimoslivros (idEmprestimo, idLivro) VALUES (7,8); 
INSERT INTO emprestimoslivros (idEmprestimo, idLivro) VALUES (8,9); 
INSERT INTO emprestimoslivros (idEmprestimo, idLivro) VALUES (9,10); 
INSERT INTO emprestimoslivros (idEmprestimo, idLivro) VALUES (10,1); 
INSERT INTO emprestimoslivros (idEmprestimo, idLivro) VALUES (11,2);

















/*------------------Fim da Tabela Livros-----------------------*/

















































