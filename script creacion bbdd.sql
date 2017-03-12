-- COMO ROOT PARA CREAR LA BBDD Y EL USUARIO

-- Mostrar los CHARSETs instalados:
SHOW CHARACTER SET;
-- Mostrar COLLATIONS instalados:
SHOW COLLATION;
-- CREAMOS LA BBDD PARA UTF-8 COLLATION EN ESPAÑOL
CREATE DATABASE almacen3  
	CHARACTER SET utf8 COLLATE utf8_spanish_ci;

 
-- CREAMOS EL USUARIO 
DROP USER IF EXISTS almacen_gestor;
CREATE USER almacen_gestor IDENTIFIED BY 'gestor';


-- DAMOS PERMISOS EN LA BBDD PARA EL NUEVO USUARIO
grant all privileges on almacen3.* to 'almacen_gestor'@'%' identified by 'gestor';
grant all privileges on almacen3.* to 'almacen_gestor'@'localhost' identified by 'gestor';
flush privileges;
