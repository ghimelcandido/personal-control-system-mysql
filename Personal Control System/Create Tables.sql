USE PersonalControlSystem;

CREATE TABLE pessoa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    endereco VARCHAR(300),
    contato VARCHAR(100),
    cpf VARCHAR(11) UNIQUE,
    profissao VARCHAR(200)
);

CREATE TABLE ganhosMensais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pessoa_id INT,
    salario DECIMAL(10,2) DEFAULT 0.00,
    bonus DECIMAL(10,2) DEFAULT 0.00,
    rendas_variaveis DECIMAL(10,2) DEFAULT 0.00,
    mes DATE,
    FOREIGN KEY (pessoa_id) REFERENCES pessoa(id)
);

CREATE TABLE gastosMensais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pessoa_id INT,
    tipo VARCHAR(50),
    valor DECIMAL(10,2) DEFAULT 0.00,
    mes DATE,
    FOREIGN KEY (pessoa_id) REFERENCES pessoa(id)
);