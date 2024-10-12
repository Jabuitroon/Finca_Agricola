-- Cliente
-- Insertar
DELIMITER // 
CREATE PROCEDURE procInsertClient(IN v_correo VARCHAR(80), IN v_contrasena TEXT)
BEGIN 
    INSERT INTO tbl_cliente (cli_correo, cli_contrasena) 
    VALUES (v_correo, v_contrasena);
END//
DELIMITER ;
-- Actualizar
 DELIMITER //
CREATE PROCEDURE procUpdateClient(IN v_id INT,IN v_correo VARCHAR(80), IN v_contrasena TEXT)
BEGIN
    UPDATE tbl_cliente
    SET cli_correo = v_correo, 
        cli_contrasena = v_contrasena 
    WHERE cli_id = v_id;
END//
DELIMITER ;
-- Mostrar
 DELIMITER //
CREATE PROCEDURE procSelectClient()
BEGIN
    SELECT cli_id, cli_correo
    FROM tbl_cliente;
END//
DELIMITER ;
-- Eliminar
 DELIMITER //
CREATE PROCEDURE procDeleteClient(IN v_id INT)
BEGIN
    DELETE FROM tbl_cliente
    WHERE cli_id = v_id;
END//
DELIMITER ;