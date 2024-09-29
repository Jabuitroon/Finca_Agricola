-- Usuario
-- insertar
 DELIMITER // 
CREATE PROCEDURE procInsertUser(IN v_correo VARCHAR(80), IN v_contrasena TEXT)
BEGIN 
    INSERT INTO tbl_usuario (usu_correo, usu_contrasena) 
    VALUES (v_correo, v_contrasena);
END//
DELIMITER ;
