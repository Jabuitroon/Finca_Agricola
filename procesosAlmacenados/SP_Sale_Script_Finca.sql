-- Venta
-- Insertar
DELIMITER //
create procedure procInsertProduct(IN v_nombre VARCHAR(45), IN v_description VARCHAR(100), IN v_cantidad int, IN v_precio int, IN v_img text, IN vfk_proveedor int, IN vfk_categorias int)
begin
      insert into tbl_productos(pro_nombre, pro_descripcion, pro_cantida, pro_precio, pro_img, tbl_proveedor_pro_id, tbl_categoria_cat_id) values(v_nombre, v_description, v_cantidad, v_precio, v_img, vfk_proveedor, vfk_categorias);
end//
DELIMITER ;