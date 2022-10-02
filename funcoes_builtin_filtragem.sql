-- Seleção de dados com filtragem utilizando COUNT
SELECT
 COUNT(*)
FROM
 users
WHERE
 name LIKE 'P%';

-- Seleção de dados com filtragem utilizando MIN, MAX
SELECT
 MIN(age) menor_idade,
 MAX(age) maior_idade
FROM
 users;

-- Seleção de dados com filtragem utilizando LOWER, UPPER
SELECT
 LOWER(name) name_lower,
 UPPER(surname) surname_upper
FROM
 usuarios;

-- Seleção de dados com filtragem utilizando SUM
SELECT
 SUM(age)
FROM
 usuarios;

-- Ordenação de dados 
SELECT
 *
FROM
 usuarios
ORDER BY
 age;

-- Ordenação de dados utilizando DESC
SELECT
 *
FROM
 usuarios
ORDER BY
 age DESC;

--Ordenação de dados utilizando ASC e DESC
SELECT
 *
FROM
 usuarios
ORDER BY
 age ASC,
 name DESC;

-- Criação de tabela com constraints
CREATE TABLE IF NOT EXISTS products (
 id BIGSERIAL PRIMARY KEY,
 name VARCHAR(50) NOT NULL,
 price FLOAT,
 CHECK (price > 0),
 category VARCHAR(50) NOT NULL
);

-- Inserção de dados na tabela
INSERT INTO
 products(name, price, category)
VALUES
 ('Chá Verde', 8.45, 'Bebidas'),
 ('Energético Monster', 7.50, 'Bebidas'),
 ('Lava-Roupas Refil', 25.99, 'Limpeza'),
 ('Amaciante', 22.99, 'Limpeza'),
 ('Chocolate Amargo Premium', 33.49, 'Confeitaria'),
 ('Barra de Chocolate', 4.49, 'Confeitaria');

-- Seleção de dados utilizando COUNT e GROUP BY
SELECT
 category,
 COUNT(*)
FROM
 products
GROUP BY
 category;

-- Seleção de dados utilizando AVG, GROUP BY e HAVING
SELECT
 category,
 AVG(price)
FROM
 products
GROUP BY
 category
HAVING
 AVG(price) > 20.00;