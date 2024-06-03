USE PersonalControlSystem;

INSERT INTO pessoa (nome, endereco, contato, cpf, profissao)
VALUES ('Ghimel Guedes Cândido', 'Rua Raimundo Oliveia Filho 153', '85992707373', '08018789347', 'Estudante');

INSERT INTO ganhosMensais (pessoa_id, salario, bonus, rendas_variaveis, mes) 
VALUES (1, 3000.00, 0.00, 0.00, '2024-05-01');

INSERT INTO gastosMensais (pessoa_id, tipo, valor, mes) 
VALUES (1, 'Boxe', 160.00, '2024-05-01');

INSERT INTO gastosMensais (pessoa_id, tipo, valor, mes) 
VALUES (1, 'Oficina', 50.00, '2024-05-01');

INSERT INTO gastosMensais (pessoa_id, tipo, valor, mes) 
VALUES (1, 'Kalzone', 18.00, '2024-05-01');