CREATE TABLE Setores (
    id_Setor INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Localização TEXT
); 

CREATE TABLE Funcionarios (
    id_Funcionario INT PRIMARY KEY AUTO_INCREMENT, 
    Nome VARCHAR(255) NOT NULL,
    CPF VARCHAR(14) NOT NULL UNIQUE,
    Cargo VARCHAR(255) NOT NULL,
    Salario DECIMAL(10, 2) NOT NULL,
    Data_admissao DATE NOT NULL,
    id_Setor INT,
    Foreign Key (id_Setor) REFERENCES Setores(id_Setor)
);



CREATE TABLE Produtos_Industriais (
    id_Produto INT PRIMARY KEY AUTO_INCREMENT,
    Codigo VARCHAR(50) NOT NULL UNIQUE,
    Nome VARCHAR(255) NOT NULL,
    Descrição TEXT,
    Preço DECIMAL(10, 2) NOT NULL,
    Quantidade_estoque INT NOT NULL,
    id_Categoria INT,
    Foreign Key (id_Categoria) REFERENCES Categorias_produtos(id_Categoria),
    id_Fornecedor INT,
    Foreign Key (id_Fornecedor) REFERENCES Fornecedores(id_Fornecedor)
);


CREATE TABLE Categorias_produtos (
    id_Categoria INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Fornecedores (
    id_Fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    CNPJ VARCHAR(18) NOT NULL UNIQUE,
    Cidade VARCHAR(255),
    Telefone VARCHAR(20)
);

CREATE TABLE Ordens_de_produção (
    id_Ordem INT PRIMARY KEY AUTO_INCREMENT,
    id_Produto INT NOT NULL,
    Data_produção DATE NOT NULL,
    Quantidade INT NOT NULL,
    Tempo_estimado INT NOT NULL,
    Tempo_real INT,
    Status_produção VARCHAR(50) NOT NULL,
    id_Funcionario INT,
    Foreign Key (id_Produto) REFERENCES Produtos_Industriais(id_Produto),
    Foreign Key (id_Funcionario) REFERENCES Funcionarios(id_Funcionario)
);




CREATE TABLE Controle_de_qualidade(
    id_Controle INT PRIMARY KEY AUTO_INCREMENT,
    id_Ordem INT NOT NULL,
    Data_inspeção DATE NOT NULL,
    Resultado VARCHAR(50) NOT NULL,
    Observações TEXT,
    Foreign Key (id_Ordem) REFERENCES Ordens_de_produção(id_Ordem)
    
);