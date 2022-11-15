 USE tienda_zapatillas ;
 
ALTER TABLE tabla_zapatillas
ADD COLUMN marca VARCHAR(45) NOT NULL;

ALTER TABLE tabla_zapatillas
ADD COLUMN talla INT NOT NULL;

ALTER TABLE tabla_empleados
MODIFY COLUMN salario FLOAT NOT NULL; 

 ALTER TABLE tabla_clientes
 DROP COLUMN pais;
 
 ALTER TABLE tabla_clientes
 MODIFY COLUMN codigo_postal INT(5);
 
 ALTER TABLE tabla_facturas
 ADD COLUMN total FLOAT;
 
 