-- Usuarios
-- Insertar
DELIMITER // 
CREATE PROCEDURE procInsertUser(IN v_correo VARCHAR(80), IN v_contrasena TEXT)
BEGIN 
    INSERT INTO tbl_usuario (usu_correo, usu_contrasena) 
    VALUES (v_correo, v_contrasena);
END//
DELIMITER ;
-- Actualizar
 DELIMITER //
CREATE PROCEDURE procUpdateUser(IN v_id INT,IN v_correo VARCHAR(80), IN v_contrasena TEXT)
BEGIN
    UPDATE tbl_usuario
    SET usu_correo = v_correo, 
        usu_contrasena = v_contrasena 
    WHERE usu_id = v_id;
END//
DELIMITER ;
-- Mostrar
 DELIMITER //
CREATE PROCEDURE procSelectUser()
BEGIN
    SELECT usu_id, usu_correo, usu_contrasena
    FROM tbl_usuario;
END//
DELIMITER ;
-- Eliminar
 DELIMITER //
CREATE PROCEDURE procDeleteUser(IN v_id INT)
BEGIN
    DELETE FROM tbl_usuario
    WHERE usu_id = v_id;
END//
DELIMITER ;