USE sakila;
-- Como você faria, então, para encontrar, usando o IN , todos os detalhes sobre o aluguel dos clientes com os seguintes ids:
-- 269, 239, 126, 399, 142? As informações podem ser encontradas na tabela payment .
SELECT * FROM payment WHERE customer_id IN (269, 239, 126, 399, 142);

-- Como encontraria todas as informações sobre os endereços que estão registrados nos distritos de QLD, Nagasaki, California,
-- Attika, Mandalay, Nantou e Texas? As informações podem ser encontradas na tabela address .
SELECT * FROM address WHERE district IN ('QLD', 'Nagasaki', 'California', 'Attika', 'Mandalay', 'Nantou', 'Texas');

-- Mostre o nome, sobrenome e e-mail dos clientes com os seguintes sobrenomes: hicks, crawford, henry, boyd, mason, morales e kennedy , 
-- ordenados por nome em ordem alfabética.
SELECT first_name, last_name, email FROM customer
WHERE last_name IN ('hicks', 'crawford', 'henry', 'boyd', 'mason', 'morales', 'kennedy')
ORDER BY last_name;
-- Mostre o e-mail dos clientes com os address_id 172, 173, 174, 175 e 176 , ordenados em ordem alfabética.
SELECT email, address_id FROM customer WHERE address_id IN(172, 173, 174, 175, 176); 

-- Descubra quantos pagamentos foram feitos entre 01/05/2005 e 01/08/2005 . Lembre-se de que, no banco de dados, 
-- as datas estão armazenadas no formato ano/mês/dia , diferente do formato brasileiro, que é dia/mês/ano .
SELECT * FROM customer WHERE last_update BETWEEN '2006/01/01' AND '2006/03/01';

-- Mostre o título, ano de lançamento e duração do empréstimo de todos os filmes com a duração de empréstimo de 3 a 6 .
-- Os resultados devem ser classificados em filmes com maior duração de empréstimo primeiro.
-- Em caso de empate, ordene em ordem alfabética pelo título.
SELECT * FROM film WHERE rental_duration BETWEEN 3 AND 6 ORDER BY rental_duration, title;

-- Monte um relatório que exiba o título e classificação dos 500 primeiros filmes direcionados para as classificações
-- indicativas G, PG e PG-13 . Os resultados devem estar ordenados por título.
SELECT * FROM film WHERE rating IN ('G', 'PG', 'PG-13') ORDER BY title LIMIT 500;

