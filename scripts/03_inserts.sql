-- Active: 1780945705313@@127.0.0.1@3307@industria_db
insert into Setores (Nome, Localização) values 
('Usinagem', 'Prédio A'),
('Soldagem', 'Prédio B'),
('Pintura', 'Prédio C'),
('Montagem', 'Prédio D'),
('Qualidade', 'Prédio E'); 
insert into Funcionarios (Nome, CPF, Cargo, Salario, Data_admissao) values 
('Emanuel Lehnert', '123.456.789-00', 'Engenheiro de Produção', 8000.00, '2020-01-15'),
('Maria Silva', '987.654.321-00', 'Técnica de Qualidade', 4500.00, '2019-03-10'),
('João Pereira', '111.222.333-44', 'Operador de Máquinas', 3000.00, '2021-06-20'),
('Ana Costa', '555.666.776-88', 'Supervisor de Montagem', 6000.00, '2018-11-05'),
('Carlos Souza', '999.888.777-66', 'Analista de Logística', 5000.00, '2022-02-01'),
('Fernando Lima', '222.333.444-55', 'Técnico de Manutenção', 4000.00, '2020-09-30'),
('João Silva', '333.444.555-66', 'Auxiliar de Produção', 2500.00, '2021-12-15'),
('Mariana Oliveira', '444.555.666-77', 'Engenheira de Processos', 7500.00, '2019-05-20'),
('Ricardo Alves', '555.676.777-88', 'Técnico de Segurança do Trabalho', 4200.00, '2020-03-10'),
("Lucas Santos", "666.777.888-99", "Analista de Controle de Qualidade", 4800.00, "2021-08-25");

insert into Produtos_Industriais (Codigo, Nome, Descrição, Preço, Quantidade_estoque) values
('1111', 'Arruela', 'arruela top', 10, 34),
('1112', 'Parafuso', 'Parafusa', 45, 50),
('1113', 'Prego', 'Prego que prega', 14, 70),
('1114', 'Tubo hidraulico', 'tubo forte', 5, 87),
('1115', 'Peça', 'Peça boa', 12, 32),
('1116', 'Peça usina', 'Peça forte', 5, 35),
('1117', 'Peça motor', 'Peça que dura', 10, 34),
('1118', 'Motor de arranque', 'Para arrancar o carro', 56, 32),
('1119', 'Cilindro Hidraulico', 'Cilindro redondo', 67, 56),
('1110', 'Motor de parada', 'Para parar', 12, 38);

insert into Categorias_produtos (Nome) values
('Estruturas metálicas'),
('Parafusos'),
('Componentes hidráulicos'),
('Peças automotivas'); 

insert into Fornecedores (Nome, CNPJ, Cidade, Telefone) values
('Fonecedor A', '23.345.768/4329-09', 'Tocantins', '47991452136'),
('Fonecedor B', '24.345.768/4329-09', 'Alagoas', '47997452136'),
('Fonecedor C', '23.345.768/4359-09', 'Santa-Catarina', '47991452133'),
('Fonecedor D', '23.345.768/4329-05', 'Acre', '47971452136'),
('Fonecedor E', '23.345.768/4329-03', 'Para', '47991492136');

insert into Ordens_de_produção (id_Produto, id_Funcionario, Data_produção, Quantidade,Tempo_estimado, Tempo_real, Status_produção) values
('1','8','2026-12-01', 8, 20, 30,'Andando'),
('2','3','2026-11-05', 5, 20, 34,'Andando'),
('5','5','2026-10-03', 5, 2, 30,'Concluido'),
('8','2','2026-03-05', 4, 26, 30,'Não iniciado'),
('10','7','2026-11-05', 5, 12, 38,'Andando'),
('8','6','2026-12-05', 5, 45, 40, 'Concluido'),
('4','2','2026-05-05', 6, 12, 90,'Andando'),
('3','10','2026-03-10', 2, 90, 24, 'Concluido'),
('5','5','2026-12-05', 6, 12, 33, 'Andando'),
('7','2','2026-10-05', 3, 67, 67, 'Andando'),
('4','10','2026-09-05', 1, 23, 68, 'Não iniciado'),
('2','9','2026-05-05', 9, 67, 69, 'Andando'),
('9','5','2026-02-09', 3, 56, 78, 'Andando'),
('10','2','2026-01-03', 9, 40, 90, 'Não iniciado'),
('6','4','2026-06-02', 5, 50, 54, 'Não iniciado');

insert into Controle_de_qualidade (id_Ordem, Data_inspeção, Resultado, Observações) values
('1','2026-12-02', 'Concluido', 'Bom'),
('3','2026-11-05', 'Inconcluido', 'Top'),
('4','2026-10-02', 'Concluido', 'Bom'),
('2','2026-09-06', 'Inconcluido', 'Bom'),
('7','2026-08-04', 'Concluido', 'Top'),
('5','2026-07-08', 'Inconcluido', 'Bom'),
('2','2026-06-06', 'Concluido', 'Top'),
('4','2026-05-09', 'Inconcluido', 'Bom'),
('2','2026-04-10', 'Concluido', 'Top'),
('6','2026-03-02', 'Inconcluido', 'Bom');