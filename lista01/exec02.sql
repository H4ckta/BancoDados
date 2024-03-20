CREATE TABLE curso (
	id_curso SERIAL PRIMARY KEY,
	prof_responsavel varchar(250)

)

INSERT INTO curso (prof_responsavel) 
VALUES
    ('Prof. Robosvaldo'),
    ('Prof. Souza'),
    ('Prof. Oliveira'),
    ('Prof. Correia'),
    ('Prof. Campos'),
    ('Prof. Pereira'),
    ('Prof. Carlos Roberto'),
    ('Prof. Rodrigues'),
    ('Prof. Torres'),
    ('Prof. Barbosa');
	
CREATE TABLE aluno (
	id_aluno SERIAL PRIMARY KEY,
	cpf bigint,
	nome_aluno varchar(250),
	data_nascimento DATE

)

INSERT INTO aluno (cpf, nome_aluno, data_nascimento) 
VALUES
    (12345678901, 'Ronaldo Fenomeno', '2000-05-15'),
    (23456789012, 'Neymar', '1999-11-10'),
    (34344789013, 'Cristiano Ronaldo', '2001-02-20'),
    (45674390134, 'Robosvaldo', '2002-09-05'),
    (56789032345, 'Ferrerinha', '2003-01-30'),
    (67890123456, 'Zé Gotinha', '2000-07-18'),
    (78451234567, 'João Souza', '2004-08-25'),
    (89344345678, 'Maria Faria', '2003-03-10'),
    (943423456789, 'Laura Pereira', '2002-04-02'),
    (11453344556, 'Gabriela Fernandes', '2001-12-12');
	

CREATE TABLE turma (
	id_curso int,
	FOREIGN KEY (id_curso) REFERENCES curso (id_curso),
	id_aluno int,
	FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno),
	id_turma SERIAL PRIMARY KEY
	
)



	