
CREATE TABLE pacientes (
	id_paciente SERIAL PRIMARY KEY,
	nome_paciente varchar(250),
	data_nasc DATE
)

INSERT INTO pacientes (nome_paciente, data_nasc) 
VALUES
    ('Maria Silva', '1990-05-15'),
    ('João Oliveira', '1985-11-10'),
    ('Ana Souza', '1992-02-20'),
    ('Pedro Santos', '1988-09-05'),
    ('Carla Ferreira', '1995-01-30'),
    ('Lucas Costa', '1994-07-18'),
    ('Juliana Lima', '1998-08-25'),
    ('Mateus Oliveira', '1993-03-10'),
    ('Laura Pereira', '1992-04-02'),
    ('Gabriel Fernandes', '1991-12-12');

SELECT * FROM pacientes

CREATE TABLE medicos (
	id_medico SERIAL PRIMARY KEY,
	nome_med varchar(250),
	especialidade varchar(100)
)

INSERT INTO medicos (nome_med, especialidade) 
VALUES
('Dr. Ricardo Alves', 'Clínica Geral'),
('Dra. Camila Costa', 'Cardiologia'),
('Dr. Marcelo Fernandes', 'Ortopedia'),
('Dra. Larissa Oliveira', 'Pediatria'),
('Dr. Rafael Silva', 'Dermatologia'),
('Dra. Bruna Santos', 'Ginecologia'),
('Dr. Gabriel Lima', 'Oncologia'),
('Dra. Vanessa Pereira', 'Neurologia'),
('Dr. Lucas Ferreira', 'Psiquiatria'),
('Dra. Beatriz Rodrigues', 'Endocrinologia');


SELECT * FROM medicos

CREATE TABLE registros (
	id_registro SERIAL PRIMARY KEY,
	id_paciente int,
	FOREIGN KEY (id_paciente) REFERENCES pacientes (id_paciente),
	id_medico int,
	FOREIGN KEY (id_medico) REFERENCES medicos (id_medico),
	data_reg DATE
)

INSERT INTO registros (id_paciente, id_medico, data_reg) 
VALUES
    (1, 1, '2023-05-25'),
    (2, 2, '2022-11-20'),
    (3, 3, '2024-02-10'),
    (4, 4, '2023-09-15'),
    (5, 5, '2024-01-20'),
    (6, 6, '2023-07-28'),
    (7, 7, '2022-09-05'),
    (8, 8, '2024-03-15'),
    (9, 9, '2023-04-10'),
    (10, 10, '2022-12-20');


SELECT * FROM registros
