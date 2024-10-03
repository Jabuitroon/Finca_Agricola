-- Producto
-- Insertar
DELIMITER //
create procedure procInsertProduct(IN v_nombre VARCHAR(45), IN v_description VARCHAR(100), IN v_cantidad int, IN v_precio int, IN v_img text, IN vfk_proveedor int, IN vfk_categorias int)
begin
      insert into tbl_productos(pro_nombre, pro_descripcion, pro_cantida, pro_precio, pro_img, tbl_proveedor_pro_id, tbl_categoria_cat_id) values(v_nombre, v_description, v_cantidad, v_precio, v_img, vfk_proveedor, vfk_categorias);
end//
DELIMITER ;
-- Actualizar
DELIMITER //
create procedure procUpdateProduct(IN v_id int, IN v_nombre VARCHAR(45), IN v_descripcion VARCHAR(100), IN v_cantidad int, IN v_precio int, IN v_img text, IN vfk_proveedor int, IN vfk_categorias int)
begin
     update tbl_productos
     set pro_nombre = v_nombre
     where pro_id = v_id;
	 update tbl_productos
     set pro_descripcion = v_descripcion
     where pro_id = v_id;
     update tbl_productos
     set pro_descripcion = v_descripcion
     where pro_id = v_id;
     update tbl_productos
     set pro_cantida= v_cantidad
     where pro_id = v_id;
     update tbl_productos
     set pro_precio= v_precio
     where pro_id = v_id;
	 update tbl_productos
     set pro_img= v_img
     where pro_id = v_id;
	 update tbl_productos
     set tbl_proveedor_pro_id = vfk_proveedor
     where pro_id = v_id;
     update tbl_productos
     set tbl_categoria_cat_id = vfk_categorias
     where pro_id = v_id;
end//
DELIMITER ;
-- Mostrar
DELIMITER //
create procedure procSelectProduct()
begin
     select pro_nombre, pro_descripcion, pro_cantida, pro_precio, pro_img, tbl_proveedor_pro_id, tbl_categoria_cat_id from tbl_productos;
end//
DELIMITER ;
-- Eliminar
DELIMITER //
create procedure procDeleteProduct(IN v_id INT)
begin
     delete from tbl_productos where pro_id = v_id;
end//
DELIMITER ;