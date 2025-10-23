-- **Desafio**
--
--1. Obter todas as colunas das tabelas Clientes, Pedidos e Fornecedores
select *
from customers c 
limit 1
;

select *
from orders o  
limit 1
;

select *
from shippers s 
limit 1
;

--2. Obter todos os Clientes em ordem alfabética por país e nome
select c.country, c.contact_name
from customers c 
order by c.country, c.contact_name 
;

--3. Obter os 5 pedidos mais antigos
select *
from orders o  
order by o.order_date
limit 5 
;

--4. Obter a contagem de todos os Pedidos feitos durante 1997
select count(*)
from orders o  
where to_char(o.order_date, 'YYYY') = '1997'
;

--SOLUÇAO JORNADA
SELECT COUNT(*) AS "Number of Orders During 1997"
FROM orders
WHERE order_date BETWEEN '1997-1-1' AND '1997-12-31'
;


--5. Obter os nomes de todas as pessoas de contato onde a pessoa é um gerente, em ordem alfabética
select contact_name
from customers c 
where c.contact_title ilike '%manager%'
order by c.contact_name 
;


--6. Obter todos os pedidos feitos em 19 de maio de 1997
SELECT *
FROM orders
WHERE order_date = '1997-05-19'
;
