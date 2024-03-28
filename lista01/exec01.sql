CREATE TABLE livros (
	isbn varchar(15) PRIMARY KEY,
	titulo varchar(100),
	editora varchar(100),
	ano DATE
)

INSERT INTO livros (isbn, titulo, editora, ano) 
VALUES
    ('9788576082675', 'A Metamorfose', 'L&PM Editores', '1915-01-01'),
    ('9788535902779', 'Cem Anos de Solidão', 'Editora Record', '1967-01-01'),
    ('9788535910453', 'A Revolução dos Bichos', 'Companhia Editora Nacional', '1945-01-01'),
    ('9788535908061', 'O Alquimista', 'Editora Rocco', '1988-01-01'),
    ('9788535909556', 'Ensaio sobre a Cegueira', 'Companhia das Letras', '1995-01-01'),
    ('9788535913904', 'O Conde de Monte Cristo', 'Zahar', '1844-01-01'),
    ('9788577995779', 'Arte da Guerra', 'Editora 34', '1513-01-01'),
    ('9788573264248', 'O Nome da Rosa', 'Editora BestBolso', '1980-01-01'),
    ('9788537801854', 'Moby Dick', 'Cosac Naify', '1851-01-01'),
    ('9788537815929', 'A Revolta de Atlas', 'Editora Aleph', '1957-01-01');


SELECT * FROM LIVROS

CREATE TABLE autores (
	id_autor SERIAL PRIMARY KEY,
	nome_autor varchar(100)
)

INSERT INTO autores (nome_autor) 
VALUES
    ('Franz Kafka'), -- Autor de "A Metamorfose"
    ('Gabriel García Márquez'), -- Autor de "Cem Anos de Solidão"
    ('George Orwell'), -- Autor de "A Revolução dos Bichos"
    ('Paulo Coelho'), -- Autor de "O Alquimista"
    ('José Saramago'), -- Autor de "Ensaio sobre a Cegueira"
    ('Alexandre Dumas'), -- Autor de "O Conde de Monte Cristo"
    ('Sun Tzu'), -- Autor de "A Arte da Guerra"
    ('Umberto Eco'), -- Autor de "O Nome da Rosa"
    ('Herman Melville'), -- Autor de "Moby Dick"
    ('Ayn Rand'); -- Autor de "A Revolta de Atlas"


SELECT * FROM autores

CREATE TABLE livros_autores (
	isbn varchar(15),
	FOREIGN KEY (isbn) REFERENCES livros (isbn),
	id_autor int,
	FOREIGN KEY (id_autor) REFERENCES autores (id_autor)
)

SELECT * FROM livros_autores


SELECT titulo, nome_autor FROM livros INNER JOIN autores
ON livros.isbn = autores.id_autor


SELECT nome_autor, titulo FROM autores INNER JOIN livros
ON autores.id_autor = livros.isbn
WHERE nome_autor = 'Sun Tzu' OR nome_autor = 'sun tzu'

SELECT titulo, nome_autor FROM livros INNER JOIN autores
ON livros.isbn = autores.id_autor
WHERE titulo = '1513'