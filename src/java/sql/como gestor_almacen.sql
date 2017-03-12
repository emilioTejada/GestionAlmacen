/**
 * Author:  Emilio
 * Created: 16-feb-2017
 */

-- COMO USUARIO PARA CREAR LAS TABLAS Y POBLAR DE DATOS


DROP TABLE IF EXISTS cliente;
DROP TABLE IF EXISTS producto;
DROP TABLE IF EXISTS pedido;
DROP TABLE IF EXISTS detalle_pedido;

CREATE TABLE cliente (
	dni VARCHAR(9) NOT NULL PRIMARY KEY,
	nombre VARCHAR(25) NOT NULL ,
	apellidos VARCHAR(50) NOT NULL,
	direccion VARCHAR(100)
	);

CREATE TABLE producto (
	ref INT PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL ,
 	descripcion VARCHAR(300) DEFAULT NULL,
 	precio DOUBLE DEFAULT 0,
 	cantidad INT DEFAULT 0
 	);

CREATE TABLE pedido(
	 id INT NOT NULL AUTO_INCREMENT,
	 dni_cliente VARCHAR(9) NOT NULL,
	 fecha DATE,
	 PRIMARY KEY(id),
	 CONSTRAINT fk_clientes_en_pedido FOREIGN KEY (dni_cliente) REFERENCES cliente(dni)
);

CREATE TABLE detalle_pedido(
	 id INT NOT NULL AUTO_INCREMENT,
 	 id_pedido INT NOT NULL,
	 ref_producto INT NOT NULL,
	 cantidad INT NOT NULL,
	 PRIMARY KEY(id),
 	 CONSTRAINT fk_pedidos_en_detalle_producto FOREIGN KEY (id_pedido) REFERENCES pedido(id),
 	 CONSTRAINT fk_producto_en_detalle_producto FOREIGN KEY (ref_producto) REFERENCES producto(ref)
);



insert into producto (ref, nombre, descripcion, precio, cantidad) values ('01', 'Espada laser', 'Espada laser para combatir en las guerras clon', 99.3, 10);
insert into producto (ref, nombre, descripcion, precio, cantidad) values ('02', 'Bomba neutrones', 'La estrella de la muerte sufrirÃ¡ con ella', 99.3, 10);
insert into producto (ref, nombre, descripcion, precio, cantidad) values ('03', 'HalcÃ³n milenario', 'Con 5 aÃ±os de garantÃ­a', 99.3, 10);
insert into producto (ref, nombre, descripcion, precio, cantidad) values ('04', 'La nave de star treck', 'que no me acuerdo de su nombre', 99.3, 10);
insert into producto (ref, nombre, descripcion, precio, cantidad) values ('05', 'Capa de Darth Vader', 'Impresiona a tus amigos con ella', 99.3, 10);
insert into producto (ref, nombre, descripcion, precio, cantidad) values ('06', 'MÃ¡quina del tiempo', 'Tus vacaciones durarÃ¡n lo que quieras', 99.3, 10);
insert into producto (ref, nombre, descripcion, precio, cantidad) values ('07', 'Ford fiesta', 'Para tus viajes en la ciudad', 99.3, 10);
insert into producto (ref, nombre, descripcion, precio, cantidad) values ('08', 'Bola de dragÃ³n', 'La autÃ©ntica', 99.3, 10);
insert into producto (ref, nombre, descripcion, precio, cantidad) values ('09', 'La varita de Potter', 'Usala para hacer el bien', 99.3, 10);
insert into producto (ref, nombre, descripcion, precio, cantidad) values ('10', 'La bola del SeÃ±or de los anillos', 'Esa con un ojo dentro', 99.3, 10);


insert into cliente (dni, nombre, apellidos, direccion) values ('01', 'Emilio', 'Tejada', 'Paseo de la estacion 35' );
insert into cliente (dni, nombre, apellidos, direccion) values ('02', 'Ana', 'Belen', 'Paseo de la estacion 35' );
insert into cliente (dni, nombre, apellidos, direccion) values ('03', 'Antonio', 'Lopez', 'Paseo de la estacion 35' );
insert into cliente (dni, nombre, apellidos, direccion) values ('04', 'Leo', 'Messi', 'Paseo de la estacion 35' );
insert into cliente (dni, nombre, apellidos, direccion) values ('05', 'AndrÃ©s', 'Argenta', 'Paseo de la estacion 35' );
insert into cliente (dni, nombre, apellidos, direccion) values ('06', 'Santiago', 'Sanchez', 'Paseo de la estacion 35' );
insert into cliente (dni, nombre, apellidos, direccion) values ('07', 'Pedro', 'Picapiedra', 'Paseo de la estacion 35' );
insert into cliente (dni, nombre, apellidos, direccion) values ('08', 'Sergio', 'Ramos', 'Paseo de la estacion 35' );
insert into cliente (dni, nombre, apellidos, direccion) values ('09', 'Mariano', 'Rajoy', 'Paseo de la estacion 35' );
insert into cliente (dni, nombre, apellidos, direccion) values ('10', 'Pablo', 'Iglesias', 'Paseo de la estacion 35' );



insert into pedido (dni_cliente, fecha) values ('01', '2016-12-30');
insert into pedido (dni_cliente, fecha) values ('02', '2016-1-30');
insert into pedido (dni_cliente, fecha) values ('03', '2016-12-20');
insert into pedido (dni_cliente, fecha) values ('04', '2016-12-10');
insert into pedido (dni_cliente, fecha) values ('05', '2016-12-3');
insert into pedido (dni_cliente, fecha) values ('05', '2016-12-13');
insert into pedido (dni_cliente, fecha) values ('06', '2016-12-30');

insert into detalle_pedido (id_pedido, ref_producto, cantidad) values ('1', '01', 10);
insert into detalle_pedido (id_pedido, ref_producto, cantidad) values ('1', '02', 1);
insert into detalle_pedido (id_pedido, ref_producto, cantidad) values ('1', '03', 3);
insert into detalle_pedido (id_pedido, ref_producto, cantidad) values ('2', '07', 2);
insert into detalle_pedido (id_pedido, ref_producto, cantidad) values ('3', '05', 10);
insert into detalle_pedido (id_pedido, ref_producto, cantidad) values ('4', '06', 10);
insert into detalle_pedido (id_pedido, ref_producto, cantidad) values ('5', '07', 10);
insert into detalle_pedido (id_pedido, ref_producto, cantidad) values ('6', '08', 10);

