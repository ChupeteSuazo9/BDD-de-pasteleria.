SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;


USE pasteleria;
-- registro de los clientes
INSERT INTO clientes (cliente_id, nombre, direccion, telefono, correo_electronico)
VALUES
    (1, 'maria', 'avenida manso de velasco', 945845611, 'mariavf@gmail.com'),
    (2, 'juan', 'villa galilea', 943674590, 'juan@gmail.com'),
    (3, 'ana', 'paul harris 1', 934679902, 'ana@gmail.com'),
    (4, 'pedro', 'calle juan jimenez', 956789123, 'pedro@gmail.com'),
    (5, 'laura', 'villa nicolauta', 911467909, 'laura@gmail.com'),
    (6, 'carlos', 'villa las frutas', 956788990, 'carlos@gmail.com'),
    (7, 'luis', 'villa san francisco', 953100221, 'luis@gmail.com'),
    (8, 'martha', 'poblacion 18 de septiembre', 968097712, 'martha@gmail.com'),
    (9, 'roberto', 'villa san marcos', 955899031, 'roberto@gmail.com'),
    (10, 'sofia', 'paul harris 2', 903567890, 'sofia@gmail.com');


-- registro del detalle de las ventas
INSERT INTO detalle_ventas (detalle_id, venta_id, producto_id, cantidad_vendida, precio_unitario )
VALUES
	(1, 1, 1, 5, 500.00),
    (2, 1, 2, 2, 5000.00),
    (3, 2, 3, 1, 5000.00),
    (4, 2, 4, 10, 500.00),
    (5, 3, 5, 5, 800.00),
    (6, 3, 6, 3, 400.00),
    (7, 4, 7, 8, 350.00),
    (8, 4, 8, 5, 600.00),
    (9, 5, 9, 2, 1500.00),
    (10, 5, 10, 4, 250.00),
    (11, 6, 11, 1, 6000.00),
    (12, 6, 12, 1, 8000.00),
    (13, 7, 13, 2, 5000.00),
    (14, 7, 14, 3, 10000.00),
    (15, 8, 15, 4, 3000.00),
    (16, 8, 16, 1, 30000.00),
    (17, 9, 17, 1, 30000.00),
    (18, 9, 18, 2, 35000.00),
    (19, 10, 19, 1, 32000.00);
    
    -- puntuacion de 1 a 5
INSERT INTO encuestas_satisfaccion  (encuesta_id, cliente_id, fecha, puntuacion, comentario )
VALUES
    (1, 1, '2023-10-11', 5, 'Excelente servicio'),
    (2, 2, '2023-10-09', 4, 'Muy satisfecho'),
    (3, 3, '2023-10-09', 3, 'Buen servicio, pero podría mejorar'),
    (4, 4, '2023-10-11', 4, 'Muy contento con la atención'),
    (5, 5, '2023-10-09', 5, 'Nada que quejarse, todo perfecto'),
    (6, 6, '2023-10-12', 4, 'Satisfecho en general'),
    (7, 7, '2023-10-10', 3, 'Algunos problemas menores'),
    (8, 8, '2023-10-13', 5, 'Muy feliz con el servicio'),
    (9, 9, '2023-10-13', 4, 'Recomendaría a otros'),
    (10, 10, '2023-10-12', 3, 'Bueno pero podría ser mejor');


-- registro de inventario
INSERT INTO  inventario (inventario_id, producto_id, cantidad_actual, cantidad_minima, cantidad_maxima ) 
VALUES 
      (1, 1, 100, 10, 200),
(2, 2, 15, 5, 50),
(3, 3, 10, 5, 30),
(4, 4, 50, 20, 100),
(5, 5, 40, 10, 80),
(6, 6, 45, 15, 100),
(7, 7, 150, 50, 300),
(8, 8, 100, 30, 200),
(9, 9, 90, 20, 150),
(10, 10, 80, 10, 120),
(11, 11, 15, 5, 30),
(12, 12, 10, 5, 20),
(13, 13, 15, 5, 30),
(14, 14, 10, 5, 20),
(15, 15, 15, 5, 30),
(16, 16, 10, 5, 20),
(17, 17, 15, 5, 30),
(18, 18, 10, 5, 20),
(19, 19, 15, 5, 30);


-- registro de los productos
INSERT INTO productos (producto_id, nombre, descripcion, precio,cantidad_disponible )
VALUES   
	(1, 'Pasteles de coctel surtidos', '', 500.00 , 100),
    (2, 'Tartaletas', 'frutos secos', 5000.00, 15),
    (3, 'Pie de limon', 'pequeño', 5000.00, 15),
    (4, 'Cachitos', '', 500.00, 50),
    (5, 'Repollitos', '', 800.00, 50),
    (6, 'Cupcake', 'chocolate', 400.00, 50),
    (7, 'Empanadas de queso ', 'sin freir', 350.00, 200),
    (8, 'Empanadas de pino ', 'coctel', 600.00, 150),
    (9, 'Tapaditos coctel churrasco queso', 'Churrasco italiano y pechuga pollo mayo', 1500.00, 100),
    (10, 'Canapes pan de molde', 'pollo mayo', 250.00, 100),
    (11, 'Queque', 'familiar', 6000.00, 15),
    (12, 'Pie de limón ', 'mediano', 8000.00, 15),
    (13, 'Tartaletas ', 'frutas', 5000, 15),
    (14, 'Kutchen de nuez', 'grande', 10000.00, 10),
    (15, 'Waffles', 'frutas, crema y salsa', 3000.00, 15),
    (16, 'Torta  Pompadour', 'grande', 30000.00, 10),
    (17, 'Torta  Bizcochuelo', 'grande', 30000.00, 10),
    (18, 'Torta Pampeque', 'grande', 35000.00, 10),
	(19, 'Torta Tres leches', 'grande', 32000.00, 10);
	
    
    -- registro de las ventas
INSERT INTO ventas (venta_id, cliente_id, fecha, total_venta)
VALUES  
	(1, 3, '2023-10-09', 10000.00),
    (2, 5, '2023-10-09', 5000.00),
    (3, 1, '2023-10-10', 15000.00),
    (4, 7, '2023-10-10', 7000.00),
    (5, 2, '2023-10-11', 10000.00),
    (6, 4, '2023-10-11', 8000.00),
    (7, 10, '2023-10-12', 30000.00),
    (8, 6, '2023-10-12', 6000.00),
    (9, 8, '2023-10-13', 4500.00),
    (10, 9, '2023-10-13', 12000.00),
    (11, 2, '2023-10-14', 5000.00),
    (12, 5, '2023-10-14', 6000.00),
    (13, 4, '2023-10-15', 7500.00),
    (14, 1, '2023-10-15', 9000.00),
    (15, 7, '2023-10-16', 3000.00),
    (16, 3, '2023-10-16', 2000.00),
    (17, 4, '2023-10-17', 60000.00),
    (18, 10,'2023-10-19', 30000.00),
    (19, 1, '2023-10-20', 30000.00);
    
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;