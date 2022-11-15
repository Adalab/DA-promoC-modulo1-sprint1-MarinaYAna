USE tienda_zapatillas;
-- Introducimos datos en las tablas correspondientes

INSERT INTO tabla_zapatillas (modelo, color, marca, talla)
VALUES ('XQYUN', 'negro', 'Nike', 42);
INSERT INTO tabla_zapatillas (modelo, color, marca, talla)
VALUES ('UOPMN', 'rosas', 'Nike', 39);
INSERT INTO tabla_zapatillas (modelo, color, marca, talla)
VALUES ('OPNYT', 'verdes', 'Adidas', 35);

-- AQUI DESHABILITO LA SEGURIDAD DE UPDATE
SET SQL_SAFE_UPDATES=0;
-- Hay que modificar el color de las zapatillas rosas por amarillas
UPDATE tabla_zapatillas
SET color = 'amarillas'
WHERE color = 'rosas';

INSERT INTO tabla_empleados (nombre, tienda, salario, fecha_incorporacion)
VALUES ('Laura', 'Alcobendas', 25987, '2010-9-3');
INSERT INTO tabla_empleados (nombre, tienda, salario, fecha_incorporacion)
VALUES ('Maria', 'Sevilla', 0, '2001-4-11');
INSERT INTO tabla_empleados (nombre, tienda, salario, fecha_incorporacion)
VALUES ('Ester', 'Oviedo', 30165.98, '2000-11-29');


DELETE FROM tabla_empleados
WHERE tienda = 'Alcobendas'
LIMIT 1;

UPDATE tabla_empleados
SET id_empleado = 3
WHERE id_empleado = 6;
