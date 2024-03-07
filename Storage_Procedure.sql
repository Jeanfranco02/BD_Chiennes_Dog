USE db_chiennes_dog;

DELIMITER //

CREATE PROCEDURE sp_insertar_cargo(
    IN p_nombre_cargo VARCHAR(50)
)
BEGIN
    INSERT INTO tb_cargos(nombre_cargo)
    VALUES (p_nombre_cargo);

    SELECT 'Cargo insertado correctamente.' AS mensaje;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE sp_insertar_administrador(
    IN p_nombre_administrador VARCHAR(50),
    IN p_apellido_administrador VARCHAR(50),
    IN p_id_cargo INT,
    IN p_correo_administrador VARCHAR(100),
    IN p_clave_administrador VARCHAR(100)
)
BEGIN
    INSERT INTO tb_administradores(nombre_administrador, apellido_administrador, id_cargo, correo_administrador, clave_administrador)
    VALUES (p_nombre_administrador, p_apellido_administrador, p_id_cargo, p_correo_administrador, p_clave_administrador);

    SELECT 'Registro de administrador insertado correctamente.' AS mensaje;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE sp_insertar_cliente(
    IN p_nombre_cliente VARCHAR(50),
    IN p_apellido_cliente VARCHAR(50),
    IN p_dui_cliente VARCHAR(10),
    IN p_correo_cliente VARCHAR(100),
    IN p_telefono_cliente VARCHAR(9),
    IN p_nacimiento_cliente DATE,
    IN p_direccion_cliente VARCHAR(250),
    IN p_clave_cliente VARCHAR(100)
)
BEGIN
    INSERT INTO tb_clientes(nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, clave_cliente)
    VALUES (p_nombre_cliente, p_apellido_cliente, p_dui_cliente, p_correo_cliente, p_telefono_cliente, p_nacimiento_cliente, p_direccion_cliente, p_clave_cliente);

    SELECT 'Registro de cliente insertado correctamente.' AS mensaje;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE sp_insertar_marca(
    IN p_nombre_marca VARCHAR(50),
    IN p_imagen_marca VARCHAR(255)
)
BEGIN
    INSERT INTO tb_marcas(nombre_marca, imagen_marca)
    VALUES (p_nombre_marca, p_imagen_marca);

    SELECT 'Registro de marca insertado correctamente.' AS mensaje;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE sp_insertar_categoria(
    IN p_nombre_categoria VARCHAR(50)
)
BEGIN
    INSERT INTO tb_categorias(nombre_categoria)
    VALUES (p_nombre_categoria);

    SELECT 'Registro de categoría insertado correctamente.' AS mensaje;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE sp_insertar_producto(
    IN p_id_categoria INT,
    IN p_nombre_producto VARCHAR(50),
    IN p_id_marca INT,
    IN p_descripcion_producto VARCHAR(250),
    IN p_precio_producto NUMERIC(5,2),
    IN p_imagen_producto VARCHAR(255),
    IN p_estado BOOLEAN,
    IN p_existencia INT,
    IN p_id_administrador INT
)
BEGIN
    INSERT INTO tb_productos(id_categoria, nombre_producto, id_marca, descripcion_producto, precio_producto, imagen_producto, estado, existencia, id_administrador)
    VALUES (p_id_categoria, p_nombre_producto, p_id_marca, p_descripcion_producto, p_precio_producto, p_imagen_producto, p_estado, p_existencia, p_id_administrador);

    SELECT 'Registro de producto insertado correctamente.' AS mensaje;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE sp_insertar_pedido(
    IN p_id_cliente INT,
    IN p_estado_pedido ENUM('Entregado','Pendiente'),
    IN p_direccion_pedido VARCHAR(250)
)
BEGIN
    INSERT INTO tb_pedidos(id_cliente, estado_pedido, direccion_pedido)
    VALUES (p_id_cliente, p_estado_pedido, p_direccion_pedido);

    SELECT 'Pedido registrado correctamente.' AS mensaje;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE sp_insertar_detalle_pedido(
    IN p_id_pedido INT,
    IN p_id_producto INT,
    IN p_cantidad_producto INT,
    IN p_precio_producto NUMERIC(5,2)
)
BEGIN
    INSERT INTO tb_detalles_pedidos(id_pedido, id_producto, cantidad_producto, precio_producto)
    VALUES (p_id_pedido, p_id_producto, p_cantidad_producto, p_precio_producto);

    SELECT 'Detalle de pedido registrado correctamente.' AS mensaje;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE sp_insertar_valoracion(
    IN p_calificacion_producto INT
)
BEGIN
    INSERT INTO tb_valoraciones(calificacion_producto, fecha_valoracion)
    VALUES (p_calificacion_producto, NOW());

    SELECT 'Valoración registrada correctamente.' AS mensaje;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE sp_insertar_valoracion_producto(
    IN p_id_detalle INT,
    IN p_id_valoracion INT
)
BEGIN
    INSERT INTO tb_valoracion_productos(id_detalle, id_valoracion)
    VALUES (p_id_detalle, p_id_valoracion);

    SELECT 'Valoración de producto registrada correctamente.' AS mensaje;
END //

DELIMITER ;
