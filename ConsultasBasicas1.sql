-- EJERCICIOS PAIR PROGRAMMING DIA 8NOVIEMBRE --
-- 1. consultar campos employee_id, first_name y last_name 
-- de la tabla empleados


USE northwind;

SELECT employee_id, last_name, first_name
FROM employees;

-- 2 comprobar que productos (tabla productos) se encuentran entre 
-- 0-5 dolares, los mas baratos

SELECT product_name
FROM products
WHERE unit_price <= 5;

-- salen dos resultados: Geitost, guarana fantastica

-- 3 buscar los productos que tengan un precio por unidad de 18, 19 o 20 dolares

SELECT product_name
FROM products
WHERE unit_price = 18 AND 19 AND 20;

-- NOS DA UNA LISTA DE 4 PRODUCTOS

-- 4  SACAR UNA LISTA DE PRODUCTOS QUE SU PRECIO POR UNIDAD SEA
-- MAYOR O IGUAL A 15 DOLARES PERO MENOS O IGUAL QUE 50 DOLARES

SELECT product_name
FROM products
WHERE unit_price >= 15 AND unit_price <= 50;

-- nos devuelve una lista con 46 productos

-- 5 seleccionar productos que tengan precio NULL

SELECT product_name
FROM products
WHERE unit_price IS NULL;

-- no hay ningun producto que tenga valor null en precio

-- 6 obtener productos con precio menor de 15 dolares y la ID menor d 10.

SELECT product_name
FROM products
WHERE unit_price < 15 AND product_id <10;

-- nos da el producto: aniseed syrup

-- 7 hacemos la misma consulta del ejercicio 6 pero usando NOT
SELECT product_name
FROM products
WHERE NOT unit_price > 15 AND NOT product_id >10;
-- EL NOT DEBE ESTAR TAMBIEN EN EL AND

-- 8 conocer los datos de los paises que hacen pedidos (orders)
-- para focalizar el negocio

SELECT ship_country
FROM orders;

