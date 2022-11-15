CREATE SCHEMA `tienda_zapatillas`;

USE `tienda_zapatillas`;

CREATE TABLE tabla_zapatillas (

id_zapatilla INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
modelo VARCHAR(45) NOT NULL ,
color VARCHAR(45) NOT NULL
);

CREATE TABLE tabla_clientes (

id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(45) NOT NULL ,
numero_telefono INT(9) NOT NULL , 
email  VARCHAR(45) NOT NULL , 
direccion VARCHAR(45) NOT NULL , 
ciudad VARCHAR(45) DEFAULT NULL , 
provincia VARCHAR(45) NOT NULL , 
pais VARCHAR(45) NOT NULL , 
codigo_postal INT(45) NOT NULL
);

CREATE TABLE tabla_empleados (
id_empleado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(45) NOT NULL , 
tienda VARCHAR(45) NOT NULL , 
salario INT DEFAULT NULL , 
fecha_incorporacion DATE NOT NULL
);

CREATE TABLE tabla_facturas (
id_factura INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
numero_factura INT(45) NOT NULL ,
fecha DATE NOT NULL ,
id_zapatilla INT NOT NULL ,
id_empleado INT NOT NULL ,
id_cliente INT NOT NULL , 
CONSTRAINT fk_tabla_facturas_tienda_zapatillas
FOREIGN KEY (id_zapatilla)
REFERENCES tienda_zapatillas (id_zapatillas),
CONSTRAINT fk_tabla_facturas_tienda_empleado
FOREIGN KEY (id_empleado)
REFERENCES tienda_zapatillas (id_empleado),
CONSTRAINT fk_tabla_facturas_tienda_cliente
FOREIGN KEY (id_cliente)
REFERENCES tienda_zapatillas (id_cliente)
);







