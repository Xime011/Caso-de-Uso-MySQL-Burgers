-- Creación de la Base de Datos
CREATE database Burgers;

-- Creación de las Tablas 
CREATE TABLE burgers.ventas (
fecha_venta DATE,
id_cliente INT,
id_producto INT
);
CREATE TABLE burgers.menu (
id_producto INT,
nombre_producto  VARCHAR(60),
fecha_creacion DATE,
precio DEC (12,2)
);
CREATE TABLE burgers.clientes (
id_cliente INT,
nombre_cliente VARCHAR(100),
fecha_creacion DATE
);

-- Insertar valores a las tablas manualmente
-- (también puede realizarse mediante "Table data Import Wizard")

INSERT INTO burgers.ventas 
(fecha_venta,id_cliente,id_producto) VALUES 
('2022-02-02', 1, 1),
('2022-02-03', 2, 2),
('2022-02-15', 3, 3),
('2022-03-17', 4, 2),
('2022-03-25', 5, 2),
('2022-03-25', 6, 7),
('2022-03-29', 7, 7),
('2022-03-29', 8, 7),
('2022-04-04', 9, 7),
('2022-04-15', 10, 5),
('2022-04-15', 3, 3),
('2022-04-15', 3, 7);

INSERT INTO burgers.menu 
(id_producto,nombre_producto,fecha_creacion,precio) VALUES 
(1, 'Unicornio con alas', '2022-01-01', 12.99),
(2, 'La smoke', '2022-03-15', 11.99),
(3, 'Guaca chicken', '2022-02-25', 10.99),
(4, 'Pony con bacon', '2022-04-01', 10.99),
(5, 'Bomba sexy', '2022-04-15', 12.49),
(6, 'Yankee', '2022-04-22', 13.59),
(7, 'Triple Queso rainbow', '2022-05-06', 12.99);

INSERT INTO burgers.clientes 
(id_cliente, nombre_cliente, fecha_creacion) VALUES
(1, 'Brad Pitt', '2022-02-02'),
(2, 'Speedy Gonzalez', '2022-02-03'),
(3, 'Leonel Messi', '2022-02-15'),
(4, 'Michele Obama', '2022-03-17'),
(5, 'Cameron Diaz', '2022-03-25'),
(6, 'Bux Bunny', '2022-03-25'),
(7, 'Ibai Llanos', '2022-03-29'),
(8, 'Britney Spears', '2022-03-29'),
(9, 'Demi More', '2022-04-04'),
(10, 'Agatha Cristie', '2022-04-15');

-- Alterar tabla y crear restricciones con PK y FK

-- Asigna a la tabla de clientes que la PK debe ser el campo id_cliente,
-- En la tabla de menu que la PK será id_producto.
-- En la tabla de ventas que las FK serán: id_cliente, id_producto 

ALTER TABLE burgers.clientes
ADD PRIMARY KEY (id_cliente);

ALTER TABLE burgers.menu
ADD PRIMARY KEY (id_producto);

ALTER TABLE burgers.ventas
ADD FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente);

ALTER TABLE burgers.ventas
ADD FOREIGN KEY (id_producto) REFERENCES menu(id_producto);

-- Actualizar e insertar registros de la tabla ventas

-- Actualizar el registro que tiene fecha de venta = 17/03/2022, id_cliente = 4, id_producto = 2
-- por los siguientes datos: cliente = Bux Bunny y el producto = Guaca chicken.
 
 UPDATE burgers.ventas
 SET id_cliente = 6, id_producto = 3
 WHERE fecha_venta = '2022-03-17' AND id_cliente = 4 AND id_producto = 2;

-- Insertar el siguiente registro en ventas: fecha_creacion = 03/03/2022, cliente = Cameron Diaz, 
-- producto = Yankee

INSERT INTO burgers.ventas	
(fecha_venta,id_cliente,id_producto) 	
VALUES ('2022-03-03', 5, 6);