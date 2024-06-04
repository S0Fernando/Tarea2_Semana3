--Eliminar restricciones
ALTER TABLE detalle_pedido_1_h
DROP FOREIGN KEY detalle_pedido_ibfk_1_1_H;
DROP FOREIGN KEY detalle_pedido_ibfk_2_1_H;

ALTER TABLE detalle_pedido_2_h
DROP FOREIGN KEY detalle_pedido_ibfk_1_2_H;
DROP FOREIGN KEY detalle_pedido_ibfk_2_2_H;

--Eliminar clave primaria
ALTER TABLE detalle_pedido_1_h
DROP PRIMARY KEY;

ALTER TABLE detalle_pedido_2_h
DROP PRIMARY KEY;

--Añadir columna id
ALTER TABLE detalle_pedido_1_h
ADD id_codigo_pedido INT AUTO_INCREMENT PRIMARY KEY FIRST;

ALTER TABLE detalle_pedido_2_h
ADD id_codigo_pedido INT AUTO_INCREMENT PRIMARY KEY FIRST;


--Añadir las relaciones tabla Detalle_pedido_1_h

ALTER TABLE `detalle_pedido_1_h` ADD  CONSTRAINT `etalle_pedido_ibfk_1_1_H` 
FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido`(`codigo_pedido`) 
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `detalle_pedido_1_h` ADD  CONSTRAINT `detalle_pedido_ibfk_2_1_H` 
FOREIGN KEY (`codigo_producto`) REFERENCES `producto`(`codigo_producto`) 
ON DELETE RESTRICT ON UPDATE RESTRICT;

--Añadir las relaciones tabla Detalle_pedido_2_h

ALTER TABLE `detalle_pedido_2_h` ADD  CONSTRAINT `detalle_pedido_ibfk_1_2_H` 
FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido`(`codigo_pedido`) 
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `detalle_pedido_2_h` ADD  CONSTRAINT `detalle_pedido_ibfk_2_2_H` 
FOREIGN KEY (`codigo_producto`) REFERENCES `producto`(`codigo_producto`) 
ON DELETE RESTRICT ON UPDATE RESTRICT;
