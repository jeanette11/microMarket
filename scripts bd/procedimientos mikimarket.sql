#procedimientos para usuarios
DELIMITER // 
CREATE PROCEDURE  insertarUsuario
(
in Nombre varchar(200),
in fecha_registro datetime,
in Usuario varchar(100),
in contrasenia varchar(255),
in estado tinyint(1),
in tipo int(11)
)
BEGIN
insert into usuario_login values(Nombre,fecha_registro,Usuario,contrasenia,estado,tipo);
END
//
DELIMITER ; 
DELIMITER // 
CREATE PROCEDURE  eliminarUsuario
(
in id_u int
)
BEGIN
delete from usuario_login where id_usuario=id_u;
END
//
DELIMITER ; 
DELIMITER // 
CREATE PROCEDURE  modificarUsuario
(
in id_u int,
in Nombre varchar(200),
in fecha_reg datetime,
in Usuario varchar(100),
in contrasenia varchar(255),
in estado tinyint(1),
in tipo int(11)
)
BEGIN
update usuario_login set nombre=Nombre, fecha_registro=fecha_reg,usuario=Usuario,contrasenia=contrasenia,estado=estado,tipo=tipo where id_usuario=id_u;
END
//
DELIMITER ; 
#procemientos para los clientes
DELIMITER //

CREATE PROCEDURE  insertarcliente
(
in ci varchar(20),
in Nombre varchar(200)

)
BEGIN
insert into cliente(ci,nombre) values(ci,nombre);
END
//
DELIMITER ; 
CALL insertarcliente('123456','froilan');
select *from cliente;
DELIMITER // 
CREATE PROCEDURE  eliminarCliente
(
in id_c int
)
BEGIN
delete from cliente where id_cliente=id_c;
END
//
DELIMITER ; 
DELIMITER // 
CREATE PROCEDURE  modificarCliente
(
in id_c int,
in ci varchar(20),
in Nombre varchar(200)
)
BEGIN
update cliente set nombre=Nombre, ci=ci where id_cliente=id_c;
END
//
DELIMITER ; 