-- Cultivo
-- Insertar
DELIMITER //
create procedure procInsertCrop(IN v_nombre VARCHAR(45), IN v_description VARCHAR(100), IN v_parcela_id int)
begin
      insert into tbl_cultivo(cul_nombre, cul_descripcion, tbl_parcela_par_id) values(v_nombre, v_description, v_parcela_id);
end//
DELIMITER ;
-- Actualizar
DELIMITER //
create procedure procUpdateCrop(IN v_id INT ,IN v_nombre VARCHAR(45), IN v_descripcion VARCHAR(100))
begin
     update tbl_cultivo
     set cul_nombre = v_nombre
     where cul_id = v_id;
	 update tbl_cultivo
     set cul_descripcion = v_descripcion
     where cul_id = v_id;
end//
DELIMITER ;
-- Mostrar
DELIMITER //
create procedure procSelectCrop()
begin
     select cul_id, cul_nombre, cul_descripcion from tbl_cultivo;
end//
DELIMITER ;
-- Eliminar
DELIMITER //
create procedure procDeleteCrop(IN v_id INT)
begin
     delete from tbl_cultivo where cul_id = v_id;
end//
DELIMITER ;