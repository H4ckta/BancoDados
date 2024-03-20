CREATE TABLE curso (
	id_curso SERIAL PRIMARY KEY,
	prof_responsavel varchar(250)

)

SELECT * FROM curso

INSERT INTO curso (prof_responsavel) 
VALUES
    ('Prof. Almeida'),
    ('Prof. Costa'),
    ('Prof. Oliveira'),
    ('Prof. Lima'),
    ('Prof. Silva'),
    ('Prof. Pereira'),
    ('Prof. Fernandes'),
    ('Prof. Rodrigues'),
    ('Prof. Martins'),
    ('Prof. Gomes');


SELECT * FROM curso

CREATE TABLE aluno (
	id_aluno SERIAL PRIMARY KEY,
	cpf bigint,
	nome_aluno varchar(200),
	data_nascimento DATE

)

SELECT * FROM ALUNO

INSERT INTO aluno (cpf, nome_aluno, data_nascimento) 
VALUES
    (12345678901, 'Rafaela Almeida', '2000-05-25'),
    (23456789012, 'Leonardo Costa', '1999-11-20'),
    (34567890123, 'Carolina Oliveira', '2001-02-10'),
    (45678901234, 'Gustavo Silva', '2002-09-15'),
    (56789012345, 'Mariana Ferreira', '2003-01-20'),
    (67890123456, 'Pedro Henrique Santos', '2000-07-28'),
    (78901234567, 'Beatriz Lima', '2004-09-05'),
    (89012345678, 'Felipe Oliveira', '2003-03-15'),
    (90123456789, 'Amanda Pereira', '2002-04-10'),
    (11223344556, 'Vanessa Fernandes', '2001-12-20');



CREATE TABLE turma (
	id_curso int,
	FOREIGN KEY (id_curso) REFERENCES curso (id_curso),
	id_aluno int,
	FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno),
	id_turma SERIAL PRIMARY KEY
	
)

