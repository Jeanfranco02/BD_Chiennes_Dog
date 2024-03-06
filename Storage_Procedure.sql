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


