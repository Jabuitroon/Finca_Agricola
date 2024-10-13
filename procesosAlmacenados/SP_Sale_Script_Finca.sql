-- Venta
-- Insertar
DELIMITER //
create procedure procInsertSale(IN vfk_pro_id INT, IN tbl_pro_tbl_prov INT, IN tbl_pro_tbl_cat INT, IN vfk_cliente int, IN v_fecha DATE, IN v_total INT)
begin
      insert into tbl_venta(tbl_productos_pro_id, tbl_productos_tbl_proveedor_pro_id, tbl_productos_tbl_categoria_cat_id, tbl_cliente_cli_id, ven_fecha, ven_total) values(vfk_pro_id, tbl_pro_tbl_prov, tbl_pro_tbl_cat, vfk_cliente, v_fecha, v_total);
end//
DELIMITER ;
-- Mostrar
DELIMITER //
create procedure procSelectSale()
begin
     select tbl_productos_pro_id, tbl_productos_tbl_proveedor_pro_id, tbl_productos_tbl_categoria_cat_id, tbl_cliente_cli_id, ven_fecha, ven_total from tbl_venta;
end//
DELIMITER ;
-- Actualizar
DELIMITER //
create procedure procUpdateSale(IN v_id int, vfk_pro_id INT, IN tbl_pro_tbl_prov INT, IN tbl_pro_tbl_cat INT, IN vfk_cliente int, IN v_fecha DATE, IN v_total INT)
begin
     update tbl_venta
     set tbl_productos_pro_id = vfk_pro_id,
		 tbl_productos_tbl_proveedor_pro_id = tbl_pro_tbl_prov,
         tbl_productos_tbl_categoria_cat_id = tbl_pro_tbl_cat,
         tbl_cliente_cli_id= vfk_cliente.
         ven_fecha= v_fecha,
         ven_total = v_total
     where ven_id = v_id;
end//
DELIMITER ;
-- Eliminar
DELIMITER //
create procedure procDeleteSale(IN v_id INT)
begin
     delete from tbl_venta where ven_id = v_id;
end//
DELIMITER ;