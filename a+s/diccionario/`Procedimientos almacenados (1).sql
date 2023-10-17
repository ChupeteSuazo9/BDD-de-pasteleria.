USE pasteleria;

DELIMITER $$
-- Procedimiento almacenado para insertar un cliente
CREATE PROCEDURE InsertarCliente(IN cliente_id INT, IN nombre VARCHAR(100), IN direccion VARCHAR(100), IN telefono VARCHAR(15), IN correo_electronico VARCHAR(100))
BEGIN
    INSERT INTO clientes (cliente_id, nombre, direccion, telefono, correo_electronico)
    VALUES (cliente_id, nombre, direccion, telefono, correo_electronico);
END 
$$
DELIMITER $$
-- Procedimiento almacenado para actualizar un cliente
CREATE PROCEDURE ActualizarCliente(IN cliente_id INT, IN nuevo_nombre VARCHAR(100), IN nueva_direccion VARCHAR(100), IN nuevo_telefono VARCHAR(15), IN nuevo_correo_electronico VARCHAR(100))
BEGIN
    UPDATE clientes
    SET nombre = nuevo_nombre, direccion = nueva_direccion, telefono = nuevo_telefono, correo_electronico = nuevo_correo_electronico
    WHERE cliente_id = cliente_id;
END 
$$

DELIMITER $$
-- Procedimiento almacenado para borrar un cliente
CREATE PROCEDURE BorrarCliente(IN cliente_id INT)
BEGIN
    DELETE FROM clientes
    WHERE cliente_id = cliente_id;
END 
$$
DELIMITER $$
-- Procedimiento almacenado para seleccionar todos los clientes
CREATE PROCEDURE SeleccionarClientes()
BEGIN
    SELECT * FROM clientes;
END 
$$

CALL InsertarCliente(11, 'Elena', 'Calle olegario lazo', 985125655, 'elena@gmail.com');
CALL ActualizarCliente(3, 'miguel', 'villa don dario', 934997754, 'miguel22@gmail.com');
CALL BorrarCliente(6);
CALL SeleccionarClientes();


-- Procedimiento almacenado para insertar un detalle de venta

DELIMITER $$
CREATE PROCEDURE InsertarDetalleVenta(
    IN detalle_id INT,
    IN venta_id INT,
    IN producto_id INT,
    IN cantidad_vendida INT,
    IN precio_unitario DECIMAL(10, 2)
)
BEGIN
    INSERT INTO detalle_ventas (detalle_id, venta_id, producto_id, cantidad_vendida, precio_unitario)
    VALUES (detalle_id, venta_id, producto_id, cantidad_vendida, precio_unitario);
END 
$$
-- Procedimiento almacenado para actualizar un detalle de ventas
DELIMITER $$
CREATE PROCEDURE ActualizarDetalleVenta(
    IN detalle_id INT,
    IN nueva_cantidad INT,
    IN nuevo_precio_unitario DECIMAL(10, 2)
)
BEGIN
    UPDATE detalle_ventas
    SET cantidad_vendida = nueva_cantidad, precio_unitario = nuevo_precio_unitario
    WHERE detalle_id = detalle_id;
END 
$$

-- Procedimiento almacenado para borrar detalle de ventas
DELIMITER $$
CREATE PROCEDURE BorrarDetalleVenta(
    IN detalle_id INT
)
BEGIN
    DELETE FROM detalle_ventas
    WHERE detalle_id = detalle_id;
END 
$$

-- Procedimiento almacenado para seleccionar detalles de ventas
DELIMITER $$
CREATE PROCEDURE SeleccionarDetalleVentas()
BEGIN
    SELECT * FROM detalle_ventas;
END 
$$

CALL InsertarDetalleVenta(20, 11, 21, 3, 450.00);
CALL ActualizarDetalleVenta(1, 6, 600.00);
CALL BorrarDetalleVenta(3);
CALL SeleccionarDetalleVentas();



--  procedimiento almacenado para insertar una encuesta de satisfacción
DELIMITER $$

CREATE PROCEDURE InsertarEncuesta(
    IN encuesta_id INT,
    IN cliente_id INT,
    IN fecha DATE,
    IN puntuacion INT,
    IN comentario TEXT
)
BEGIN
    INSERT INTO encuestas_satisfaccion (encuesta_id, cliente_id, fecha, puntuacion, comentario)
    VALUES (encuesta_id, cliente_id, fecha, puntuacion, comentario);
END;
$$
DELIMITER ;

--  procedimiento almacenado para actualizar una encuesta de satisfacción
DELIMITER $$
CREATE PROCEDURE ActualizarEncuesta(
    IN encuesta_id INT,
    IN nueva_puntuacion INT,
    IN nuevo_comentario TEXT
)
BEGIN
    UPDATE encuestas_satisfaccion
    SET puntuacion = nueva_puntuacion, comentario = nuevo_comentario
    WHERE encuesta_id = encuesta_id;
END;
$$
DELIMITER ;

--  procedimiento almacenado para eliminar una encuesta de satisfacción
DELIMITER $$
CREATE PROCEDURE BorrarEncuesta(IN encuesta_id INT)
BEGIN
    DELETE FROM encuestas_satisfaccion
    WHERE encuesta_id = encuesta_id;
END;
$$
DELIMITER ;

--  procedimiento almacenado para seleccionar todas las encuestas
DELIMITER $$
CREATE PROCEDURE SeleccionarEncuestas()
BEGIN
    SELECT * FROM encuestas_satisfaccion;
END;
$$
DELIMITER ;

CALL InsertarEncuesta(11, 11, '2023-10-14', 4, 'Buena experiencia');
CALL ActualizarEncuesta(1, 4, 'Muy satisfecho');
CALL BorrarEncuesta(2);
CALL SeleccionarEncuestas();



--  procedimiento almacenado para insertar en el inventario

DELIMITER $$

CREATE PROCEDURE InsertarInventario(
    IN inv_id INT,
    IN prod_id INT,
    IN cant_actual INT,
    IN cant_minima INT,
    IN cant_maxima INT
)
BEGIN
    INSERT INTO inventario (inventario_id, producto_id, cantidad_actual, cantidad_minima, cantidad_maxima) 
    VALUES (inv_id, prod_id, cant_actual, cant_minima, cant_maxima);
END 
$$

--  procedimiento almacenado para actualizar el inventario
DELIMITER $$

CREATE PROCEDURE ActualizarInventario(
    IN inv_id INT,
    IN prod_id INT,
    IN cant_actual INT,
    IN cant_minima INT,
    IN cant_maxima INT
)
BEGIN
    UPDATE inventario
    SET producto_id = prod_id, cantidad_actual = cant_actual, cantidad_minima = cant_minima, cantidad_maxima = cant_maxima
    WHERE inventario_id = inv_id;
END 
$$

--  procedimiento almacenado para borra inventario
DELIMITER $$

CREATE PROCEDURE BorrarInventario(
    IN inv_id INT
)
BEGIN
    DELETE FROM inventario WHERE inventario_id = inv_id;
END 
$$

--  procedimiento almacenado para seleccionar inventario
DELIMITER $$

CREATE PROCEDURE SeleccionarInventario()
BEGIN
    SELECT * FROM inventario;
END 
$$


CALL InsertarInventario(21, 21, 30, 10, 60);
CALL ActualizarInventario(1, 1, 120, 15, 250);
CALL BorrarInventario(2);
CALL SeleccionarInventario();




-- Procedimiento almacenado para insertar productos

DELIMITER $$
CREATE PROCEDURE InsertarProducto(
    IN producto_id INT,
    IN nombre VARCHAR(100),
    IN descripcion VARCHAR(100),
    IN precio DECIMAL(10, 2),
    IN cantidad_disponible INT
)
BEGIN
    INSERT INTO productos (producto_id, nombre, descripcion, precio, cantidad_disponible)
    VALUES (producto_id, nombre, descripcion, precio, cantidad_disponible);
END;
$$


-- Procedimiento almacenado para actualizar la información de un producto existente
DELIMITER $$
CREATE PROCEDURE ActualizarProducto(
    IN producto_id INT,
    IN nuevo_nombre VARCHAR(100),
    IN nueva_descripcion VARCHAR(100),
    IN nuevo_precio DECIMAL(10, 2),
    IN nueva_cantidad_disponible INT
)
BEGIN
    UPDATE productos
    SET nombre = nuevo_nombre, descripcion = nueva_descripcion, precio = nuevo_precio, cantidad_disponible = nueva_cantidad_disponible
    WHERE producto_id = producto_id;
END;
$$



-- Procedimiento almacenado borrar un producto por su ID
DELIMITER $$
CREATE PROCEDURE BorrarProducto(
    IN producto_id INT
)
BEGIN
    DELETE FROM productos
    WHERE producto_id = producto_id;
END;
$$



-- Procedimiento almacenado seleccionar todos los productos
DELIMITER $$
CREATE PROCEDURE SeleccionarProductos()
BEGIN
    SELECT * FROM productos;
END;
$$


CALL InsertarProducto(20, 'torta de mil hojas', 'grande', 20000.00, 15);
CALL ActualizarProducto(5, 'chilenitos', 'por unidad', 500.00, 30);
CALL BorrarProducto(6);
CALL SeleccionarProductos();




-- Procedimiento almacenado insertar una nueva venta
DELIMITER $$
CREATE PROCEDURE InsertarVenta(
    IN venta_id INT,
    IN cliente_id INT,
    IN fecha DATE,
    IN total_venta DECIMAL(10, 2)
)
BEGIN
    INSERT INTO ventas (venta_id, cliente_id, fecha, total_venta)
    VALUES (venta_id, cliente_id, fecha, total_venta);
END;
$$




-- Procedimiento almacenado para actualizar una venta
DELIMITER $$
CREATE PROCEDURE ActualizarVenta(
    IN venta_id INT,
    IN nuevo_cliente_id INT,
    IN nueva_fecha DATE,
    IN nuevo_total_venta DECIMAL(10, 2)
)
BEGIN
    UPDATE ventas
    SET cliente_id = nuevo_cliente_id, fecha = nueva_fecha, total_venta = nuevo_total_venta
    WHERE venta_id = venta_id;
END;
$$


-- Procedimiento almacenado borrar una venta por su ID
DELIMITER $$
CREATE PROCEDURE BorrarVenta(
    IN venta_id INT
)
BEGIN
    DELETE FROM ventas
    WHERE venta_id = venta_id;
END;
$$



-- Procedimiento almacenado seleccionar todas las ventas
DELIMITER $$
CREATE PROCEDURE SeleccionarVentas()
BEGIN
    SELECT * FROM ventas;
END;
$$

CALL InsertarVenta(20, 6, '2023-10-21', 7500.00);
CALL ActualizarVenta(20, 6, '2023-10-22', 8000.00);
CALL BorrarVenta(20);
CALL SeleccionarVentas();













