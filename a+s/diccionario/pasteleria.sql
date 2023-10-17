USE pasteleria;
-- tabla de los clientes
CREATE TABLE clientes (
  cliente_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  direccion VARCHAR (100)NOT NULL,
  telefono VARCHAR(20)NOT NULL,
  correo_electronico VARCHAR(100)NOT NULL
);

-- tabla de los productos
CREATE TABLE productos (
  producto_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100)NOT NULL,
  descripcion VARCHAR(100) NOT NULL,
  precio DECIMAL(10, 2)NOT NULL,
  cantidad_disponible INT NOT NULL
);
-- tabla de las ventas
CREATE TABLE ventas (
  venta_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT NOT NULL,
  fecha DATE NOT NULL,
  total_venta DECIMAL(10, 2)NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);
-- tabla de detalle de ventas
CREATE TABLE detalle_ventas (
  detalle_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  venta_id INT NOT NULL,
  producto_id INT NOT NULL,
  cantidad_vendida INT NOT NULL,
  precio_unitario DECIMAL(10, 2)NOT NULL,
  FOREIGN KEY (venta_id) REFERENCES ventas(venta_id),
  FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
);
-- tabla de inventario
CREATE TABLE inventario (
  inventario_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  producto_id INT NOT NULL,
  cantidad_actual INT NOT NULL,
  cantidad_minima INT NOT NULL,
  cantidad_maxima INT NOT NULL,
  FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
);
-- tabla de la encuesta de satisfaccion 
CREATE TABLE encuestas_satisfaccion (
  encuesta_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT NOT NULL,
  fecha DATE NOT NULL,
  puntuacion INT NOT NULL,
  comentario VARCHAR(100) NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);
