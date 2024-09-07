create database Livraria;

use Livraria;

create table Livros(
	Nome_do_Livro VARCHAR(30),
	Nome_do_Autor VARCHAR(30),
	Sexo_do_Autor VARCHAR(10),
	Numeros_de_paginas INT(5),
	Nome_da_Editora VARCHAR(15),
	Valor_do_Livro FLOAT(8,2),
	UF_da_Editora CHAR(2),
	Ano_da_Publicacao CHAR(4)
);

INSERT INTO Livros VALUE('Cavaleiro Real', 'Ana Claudia', 'Feminino', 465, 'Atlas', 49.9, 'RJ', '2009');
INSERT INTO Livros VALUE('SQL para leigos', 'João Nunes', 'Masculino', 450, 'Addison', 98, 'SP', '2018');
INSERT INTO Livros VALUE('Receitas Caseiras', 'Celia Tavares', 'Feminino', 210, 'Atlas', 45, 'RJ', '2008');
INSERT INTO Livros VALUE('Pessoas Efetivas', 'Eduardo Santos', 'Masculino', 390, 'Beta', 78.99, 'RJ', '2018');
INSERT INTO Livros VALUE('Habitos Saudáveis', 'Eduardo Santos', 'Masculino', 630, 'Beta', 150.98, 'RJ', '2019');
INSERT INTO Livros VALUE('A Casa Marrom', 'Hermes Macedo', 'Masculino', 250, 'Bubba', 60, 'MG', '2016');
INSERT INTO Livros VALUE('Estacio Querido', 'Geraldo Francisco', 'Masculino', 310, 'Insignia', 100, 'ES', '2015');
INSERT INTO Livros VALUE('Pra sempre amigas', 'Leda Silva', 'Feminino', 510, 'Insignia', 78.98, 'ES', '2011');
INSERT INTO Livros VALUE('Copas Inesqueciveis', 'Marco Alcantara', 'Masculino', 200, 'Larson', 130.98, 'RS', '2018');
INSERT INTO Livros VALUE('O poder da mente', 'Clara Mafra', 'Feminino', 120, 'Continental', 56.58, 'SP', '2017');

SELECT * FROM Livros;

SELECT Nome_do_Livro, Nome_da_Editora FROM Livros;

SELECT Nome_do_Livro, UF_da_Editora FROM Livros
WHERE Sexo_do_Autor LIKE '%Masculino';

SELECT Nome_do_Livro, Numeros_de_paginas FROM Livros
WHERE Sexo_do_Autor LIKE '%Feminino';

SELECT Valor_do_Livro FROM Livros;
WHERE UF_da_Editora = 'SP';

/* Forma 1 */
SELECT Nome_do_Autor, Sexo_do_Autor FROM Livros
WHERE (Sexo_do_Autor = 'Masculino') AND (UF_da_Editora = 'RJ')
OR (Sexo_do_Autor = 'Masculino') AND (UF_da_Editora = 'SP');

/* Forma 2 */
SELECT Nome_do_Autor, Sexo_do_Autor FROM Livros
WHERE (Sexo_do_Autor = 'Masculino') AND (UF_da_Editora = 'RJ' OR UF_da_Editora = 'SP');
