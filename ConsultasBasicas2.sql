-- EJERCICIOS PAIR PROGRAMMING CONSULTAS BÁSICAS II DIA 10 NOVIEMBRE --

USE northwind ;

-- 1) Crea una consulta que muestre los primeros 10 productos según 
-- su ID y que nos indique el nombre de dichos productos y sus precios.

SELECT product_id, unit_price, product_name 
FROM products 
ORDER BY product_id ASC 
LIMIT 10;

-- 2) Ordenando los resultados: Ahora realiza la misma 
-- consulta pero que nos muestre los últimos 10 productos
--  según su ID de manera descendiente.

SELECT product_id, unit_price, product_name 
FROM products 
ORDER BY product_id DESC
LIMIT 10;

-- 3) Nos interesa conocer qué pedidos distintos hemos tenido 
-- (eliminando entradas duplicadas según su ID en la tabla order_details).

SELECT DISTINCT order_id
FROM order_details;

-- 4) Los dos primeros pedidos: como el número de pedidos es demasiado alto 
-- para visualizarlo de manera práctica en la consulta anterior, vamos a limitar 
-- los resultados sólo a los 2 primeros pedidos para verlos más en detalle. 

SELECT DISTINCT order_id
FROM order_details
LIMIT 2;

-- 5) Los 3 pedidos que han supuesto un mayor 
-- coste económico total para la empresa. 

SELECT (unit_price * quantity) AS ImporteTotal
FROM order_details
ORDER BY ImporteTotal DESC
LIMIT 3;
-- como nos salen 2 registros con el mismo precio 
-- usamos distinct para ver los pedidos que no se repiten

SELECT DISTINCT (unit_price * quantity) AS ImporteTotal
FROM order_details
ORDER BY ImporteTotal DESC
LIMIT 3;

-- 6) Los pedidos que están entre las posiciones 5 y 10 de nuestro ranking:

SELECT (unit_price * quantity) AS ImporteTotal
FROM order_details
ORDER BY ImporteTotal DESC
LIMIT 5
OFFSET 4;

-- 7) Una lista de las categorías que componen 
-- los tipos de pedido de la empresa. Queremos que la 
-- lista de resultado sea renombrada como "NombreDeCategoria".

SELECT DISTINCT category_name AS NombreDeCategoria
FROM categories;


-- 8) Selecciona envios con retraso:
-- Para comenzar a planear envíos anticipados, nos piden conocer cuál sería 
-- la fecha de envío (ShippedDate) de los pedidos almacenados en la base de 
-- datos, si estos sufrieran un retraso de 5 días. Nos piden mostrar la nueva
-- fecha renombrada como FechaRetrasada. Busca documentación de la función 
-- DATE_ADD para MySQL.

SELECT shipped_date, DATE_ADD(shipped_date, INTERVAL 5 DAY) AS FechaRetrasada
FROM orders;


-- 9) Selecciona los productos más rentables: Se ha comprobado que el rango de 
-- productos que puede dar más beneficios parece ser el de aquellos con un 
-- precio mayor o igual a 15 dólares, pero menor o igual que 50 dólares. 
-- Selecciona los datos de ese rango de productos usando el operador BETWEEN.

SELECT product_id, product_name, unit_price
FROM products
WHERE unit_price BETWEEN 15 AND 50
ORDER BY unit_price;


-- 10) Selecciona los productos con unos precios dados:
-- Queremos conocer los datos de los productos que tengan exactamente un precio 
-- de 18, 19 o 20 dólares (un rango muy concreto de precios del que la empresa 
-- quiere maximizar sus ventas en un futuro). Usa IN para conseguirlo de manera eficiente.

SELECT product_id, product_name, unit_price
FROM products
WHERE unit_price IN (18, 19, 20)
ORDER BY unit_price;







