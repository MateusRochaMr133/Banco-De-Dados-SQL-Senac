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





/*-------------Final da ediçao de Usuarios---------------------*/
