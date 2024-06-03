USE PersonalControlSystem;

SELECT * FROM pessoa WHERE id = 1;
SELECT * FROM ganhosMensais WHERE pessoa_id = 1;
SELECT * FROM gastosMensais WHERE pessoa_id = 1;

SELECT pessoa_id, SUM(salario + bonus + rendas_variaveis) AS total_ganhos, mes
FROM ganhosMensais
GROUP BY pessoa_id, mes;

SELECT pessoa_id, SUM(valor) AS total_gastos, mes
FROM gastosMensais
GROUP BY pessoa_id, mes;

SELECT g.pessoa_id, g.mes, 
       g.total_ganhos - IFNULL(e.total_gastos, 0) AS saldo
FROM (
    SELECT pessoa_id, SUM(salario + bonus + rendas_variaveis) AS total_ganhos, mes
    FROM ganhosMensais
    GROUP BY pessoa_id, mes
) AS g
LEFT JOIN (
    SELECT pessoa_id, SUM(valor) AS total_gastos, mes
    FROM gastosMensais
    GROUP BY pessoa_id, mes
) AS e
ON g.pessoa_id = e.pessoa_id AND g.mes = e.mes;