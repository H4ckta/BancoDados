CREATE TABLE funcionarios (
	id_func SERIAL PRIMARY KEY,
	nome_func varchar(250),
	data_adm DATE

)

CREATE TABLE projetos (
	id_projetos SERIAL PRIMARY KEY,
	nome_projeto varchar(300),
	descricao text

)

CREATE TABLE func_proj (
	id_func int,
	CONSTRAINT fk_func FOREIGN KEY (id_func) REFERENCES funcionarios (id_func),
	id_projetos int,
	CONSTRAINT fk_projetos FOREIGN KEY (id_projetos) REFERENCES projetos (id_projetos)
)

INSERT INTO funcionarios (id_func, nome_func, data_adm) VALUES
(1, 'Camila', '2019-08-25'),
(2, 'Ricardo', '2016-10-25'),
(3, 'Carolina', '2018-02-20'),
(4, 'Gabriel', '2021-05-20'),
(5, 'Mariana', '2015-02-10'),
(6, 'Pedro', '2018-11-15'),
(7, 'Isabela', '2013-12-10'),
(8, 'Henrique', '2020-09-15'),
(9, 'Amanda', '2017-11-22'),
(10, 'Silveira', '2019-08-12');


INSERT INTO projetos (id_projetos, nome_projeto, descricao) VALUES
(1, 'SecureNet', 'Implementação de um sistema de segurança de rede completo, que engloba firewall, detecção de intrusão e prevenção de ameaças, visando proteger a infraestrutura de TI contra ataques cibernéticos.'),
(2, 'DataGuard', 'Implementação de um sistema automatizado e altamente confiável de backup e recuperação de dados, garantindo a integridade e disponibilidade dos dados críticos da empresa em caso de falhas ou desastres.'),
(3, 'CloudScape', 'Migração da infraestrutura local para uma arquitetura de nuvem híbrida, aproveitando os benefícios da escalabilidade, flexibilidade e redundância oferecidos pela computação em nuvem.'),
(4, 'SmartOffice', 'Implementação de uma solução de Internet das Coisas (IoT) para otimizar o uso de recursos em escritórios, incluindo controle de iluminação, gerenciamento de energia e monitoramento de ocupação de salas.'),
(5, 'AgileDevOps', 'Adoção de práticas ágeis e metodologias DevOps para melhorar a colaboração entre equipes de desenvolvimento e operações, acelerando o ciclo de desenvolvimento de software e aumentando a qualidade das entregas.'),
(6, 'Virtualize', 'Virtualização de servidores e desktops para consolidar recursos de hardware, reduzir custos operacionais e simplificar a administração de sistemas em ambientes de TI.'),
(7, 'MobileFirst', 'Desenvolvimento de uma estratégia centrada em dispositivos móveis para oferecer aos clientes uma experiência otimizada em plataformas móveis, incluindo aplicativos nativos e sites responsivos.'),
(8, 'AI-Driven Insights', 'Implementação de soluções baseadas em inteligência artificial e análise de dados para extrair insights valiosos a partir de grandes conjuntos de dados, impulsionando a tomada de decisões informadas na empresa.'),
(9, 'NetworkOptimize', 'Avaliação e otimização da infraestrutura de rede existente para melhorar a largura de banda, a confiabilidade e o desempenho, garantindo uma conectividade estável e rápida para todos os usuários e sistemas.'),
(10, 'CyberAwareness Training', 'Desenvolvimento e implementação de programas de treinamento em segurança cibernética para conscientizar os funcionários sobre práticas seguras de uso da tecnologia, reduzindo o risco de violações de segurança causadas por erros humanos.');


INSERT INTO func_proj (id_func, id_projetos) VALUES
(1, 10),
(2, 9),
(3, 8),
(4, 7),
(5, 6),
(6, 5),
(7, 4),
(8, 3),
(9, 2),
(10, 1);

SELECT * FROM funcionarios

SELECT * FROM projetos
