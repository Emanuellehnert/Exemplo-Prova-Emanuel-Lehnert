-- =====================================================================
-- 1. CONSULTAS BÁSICAS (SELEÇÃO DE COLUNAS)
-- =====================================================================

-- Liste todos os setores cadastrados na fábrica.
SELECT * FROM Setores;

-- Liste o nome, cargo e salário de todos os funcionários.
SELECT Nome, Cargo, Salario FROM Funcionarios;

-- Exiba o código, nome e preço de fabricação de todos os produtos cadastrados.
SELECT Codigo, Nome, Preço FROM Produtos_Industriais;

-- Exiba apenas o nome e a quantidade em estoque dos produtos.
SELECT Nome, Quantidade_estoque FROM Produtos_Industriais;


-- =====================================================================
-- 2. FILTROS (WHERE COM CONDIÇÕES)
-- =====================================================================

-- Liste os funcionários admitidos após uma determinada data (Exemplo: 01/01/2021).
SELECT * FROM Funcionarios 
WHERE Data_admissao > '2021-01-01';

-- Exiba todos os produtos cuja quantidade em estoque seja superior a 100 unidades.
SELECT * FROM Produtos_Industriais 
WHERE Quantidade_estoque > 100;

-- Liste todos os fornecedores localizados em uma cidade específica (Exemplo: 'Tocantins').
SELECT * FROM Fornecedores 
WHERE Cidade = 'Tocantins';

-- Exiba os produtos cujo preço de fabricação esteja entre R$ 50,00 e R$ 500,00.
SELECT * FROM Produtos_Industriais 
WHERE Preço BETWEEN 50.00 AND 500.00;

-- Liste os funcionários cujo salário seja superior a R$ 3.000,00.
SELECT * FROM Funcionarios 
WHERE Salario > 3000.00;


-- =====================================================================
-- 3. FILTROS COM TEXTOS E VALORES NULOS (LIKE / IS NOT NULL)
-- =====================================================================

-- Liste os funcionários cujo cargo contenha a palavra "Operador".
SELECT * FROM Funcionarios 
WHERE Cargo LIKE '%Operador%';

-- Exiba todos os fornecedores que possuem telefone cadastrado.
SELECT * FROM Fornecedores 
WHERE Telefone IS NOT NULL;

-- Exiba os produtos cuja descrição contenha um trecho informado (Exemplo: 'top').
SELECT * FROM Produtos_Industriais 
WHERE Descrição LIKE '%top%';


-- =====================================================================
-- 4. ORDENAÇÃO (ORDER BY)
-- =====================================================================

-- Exiba todos os produtos ordenados pelo nome em ordem alfabética.
SELECT * FROM Produtos_Industriais 
ORDER BY Nome ASC;

-- Liste todos os produtos ordenados pelo preço de fabricação em ordem decrescente.
SELECT * FROM Produtos_Industriais 
ORDER BY Preço DESC;

-- Exiba as ordens de produção com status "Concluída".
SELECT * FROM Ordens_de_produção 
WHERE Status_produção = 'Concluido';


-- =====================================================================
-- 5. FUNÇÕES DE AGREGAÇÃO E AGRUPAMENTO (COUNT / AVG / MIN / GROUP BY)
-- =====================================================================

-- Exiba a quantidade total de funcionários cadastrados na empresa.
SELECT COUNT(*) AS Total_Funcionarios FROM Funcionarios;

-- Apresente o salário médio dos funcionários.
SELECT AVG(Salario) AS Salario_Medio FROM Funcionarios;

-- Exiba o menor preço de fabricação entre todos os produtos.
SELECT MIN(Preço) AS Menor_Preço FROM Produtos_Industriais;

-- Apresente a quantidade de produtos cadastrados em cada categoria.
SELECT id_Categoria, COUNT(*) AS Qtd_Produtos 
FROM Produtos_Industriais 
GROUP BY id_Categoria;

-- Exiba a quantidade de ordens de produção cadastradas por funcionário responsável.
SELECT id_Funcionario, COUNT(*) AS Qtd_Ordens 
FROM Ordens_de_produção 
GROUP BY id_Funcionario;


-- =====================================================================
-- 6. RELACIONANDO TABELAS (INNER JOIN)
-- =====================================================================

-- Liste o nome dos funcionários e o nome do setor ao qual cada funcionário pertence.
SELECT Funcionarios.Nome AS Nome_Funcionario, Setores.Nome AS Nome_Setor
FROM Funcionarios
INNER JOIN Setores ON Funcionarios.id_Setor = Setores.id_Setor;

-- Exiba o nome dos produtos juntamente com o nome de suas respectivas categorias.
SELECT Produtos_Industriais.Nome AS Nome_Produto, Categorias_produtos.Nome AS Nome_Categoria
FROM Produtos_Industriais
INNER JOIN Categorias_produtos ON Produtos_Industriais.id_Categoria = Categorias_produtos.id_Categoria;

-- Liste o nome do produto, o nome do fornecedor principal e o preço de fabricação do produto.
SELECT Produtos_Industriais.Nome AS Nome_Produto, Fornecedores.Nome AS Nome_Fornecedor, Produtos_Industriais.Preço
FROM Produtos_Industriais
INNER JOIN Fornecedores ON Produtos_Industriais.id_Fornecedor = Fornecedores.id_Fornecedor;


-- =====================================================================
-- 7. CONSULTAS AVANÇADAS (SUBQUERIES)
-- =====================================================================

-- Exiba o(s) produto(s) que possuem o maior preço de fabricação cadastrado.
SELECT * FROM Produtos_Industriais 
WHERE Preço = (SELECT MAX(Preço) FROM Produtos_Industriais);

-- Liste os funcionários cujo salário seja superior ao salário médio dos funcionários da empresa.
SELECT * FROM Funcionarios 
WHERE Salario > (SELECT AVG(Salario) FROM Funcionarios);