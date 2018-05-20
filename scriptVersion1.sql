
use GD1C2018
go

 /* creo esquema LALENIRO*/
 CREATE SCHEMA LALENIRO
 go
 
 /* creacion de tablas */

 CREATE TABLE LALENIRO.Direccion(
	Dir_Codigo numeric(18, 0) identity(1,1) primary key,
	Dir_Ciudad nvarchar(255) ,
	Dir_Calle nvarchar(255) ,
	Dir_Nro_Calle numeric(18, 0) ,
	Dir_Piso numeric(18, 0) ,
	Dir_Depto nvarchar(50) ,
)
go

CREATE TABLE LALENIRO.Hotel(
	Hot_Codigo numeric(18, 0) identity(1,1) primary key,
	Hot_CantEstrellas numeric(18, 0) ,
	Hot_Recarga_Estrella numeric(18, 0) ,
	Direccion_Dir_Codigo numeric(18, 0) foreign key references LALENIRO.Direccion (Dir_Codigo),
 )
 go

 CREATE TABLE LALENIRO.Tipo_Habitacion(
	Tipo_Habitacion_Codigo numeric(18, 0) primary key,
	Tipo_Habitacion_Descripcion varchar(255) NULL,
	Tipo_Habitacion_Porcentual varchar(255) NULL,
	
 )
 go

 CREATE TABLE LALENIRO.Habitacion(
	Hab_Codigo numeric(18, 0) identity(1,1) primary key,
	Hab_Numero numeric(18, 0) ,
	Hab_Piso numeric(18, 0) ,
	Hab_Frente nvarchar(50) ,
	Hotel_Hot_Codigo numeric(18, 0) NOT NULL foreign key references LALENIRO.Hotel (Hot_Codigo),
	Tipo_Habitacion_Codigo numeric(18, 0) NOT NULL foreign key references LALENIRO.Tipo_Habitacion (Tipo_Habitacion_Codigo),

 )
 go

 CREATE TABLE LALENIRO.Usuario(
	Usu_Mail nvarchar(255) NOT NULL primary key,
	Usu_Tipo nvarchar(255) NULL,
	Usu_NroDocumento numeric(18, 0) NULL,
	Usu_Nombre nvarchar(255) NULL,
	Usu_Apellido nvarchar(255) NULL,
	Usu_Fecha_Nac datetime NULL,
	Usu_Nacionalidad nvarchar(255) NULL,
	Usu_Pasaporte numeric(18, 0) NULL,
	Direccion_Dir_Codigo numeric(18, 0) NOT NULL foreign key references LALENIRO.Direccion (Dir_Codigo),
	Hotel_Hot_Codigo numeric(18, 0) NOT NULL foreign key references LALENIRO.Hotel (Hot_Codigo),

	)
	go

 CREATE TABLE LALENIRO.Regimen(
	Reg_Codigo numeric(18, 0) identity(1,1) primary key,
	Reg_Descripcion nvarchar(255) NULL,
	Reg_Precio numeric(18, 0) NULL,

 )
 go

CREATE TABLE LALENIRO.Reserva(
	Res_Codigo numeric(18, 0) primary key,
	Res_Fecha_Inicio datetime NULL,
	Res_Cant_Noches numeric(18, 0) NULL,
	Regimen_Reg_Codigo numeric(18, 0) foreign key references LALENIRO.Regimen (Reg_Codigo),
	Usuario_Usu_Mail nvarchar(255) NOT NULL foreign key references LALENIRO.Usuario (Usu_Mail),
 )
 go

CREATE TABLE LALENIRO.Consumible(
	Consu_Codigo numeric(18, 0) primary key,
	Consu_Descripcion nvarchar(255) NULL,
	Consu_Precio numeric(18, 2) NULL,
)
go

CREATE TABLE LALENIRO.Habitacion_has_Reserva(
	Habitacion_Hab_Codigo numeric(18, 0) NOT NULL foreign key references LALENIRO.Habitacion (Hab_Codigo),
	Rerserva_Res_Codigo numeric (18, 0) NOT NULL foreign key references LALENIRO.Reserva (Res_Codigo),
 )
 go

CREATE TABLE LALENIRO.Huesped(
	Hues_Pasaporte numeric(18, 0) primary key,
	Hues_Nombre nvarchar(255) NULL,
	Hues_Apellido nvarchar(255) NULL,
	Hues_Nacionalidad nvarchar(255) NULL,
	Reserva_Res_Codigo numeric(18, 0) NOT NULL foreign key references LALENIRO.Reserva (Res_Codigo),
 )
 go

 CREATE TABLE LALENIRO.Estadia(
	Est_Codigo numeric(18, 0) identity(1,1) primary key,
	Est_Cant_Noches numeric(18, 0) NULL,
	Est_Fecha_Inicio datetime NULL,
	Usuario_Usu_Mail nvarchar(255) NOT NULL foreign key references LALENIRO.Usuario (Usu_Mail),

 ) 
 go

 CREATE TABLE LALENIRO.Factura(
	Fac_Nro numeric(18, 0) identity(1,1) primary key,
	Fac_Fecha datetime NULL,
	Fact_Total numeric(18, 2) NULL,
	Usuario_Usu_Mail nvarchar(255) NOT NULL foreign key references LALENIRO.Usuario (Usu_Mail),

 )
 go

 CREATE TABLE LALENIRO.Item_Factura(
	Item_Factura_Cantidad numeric(18, 0) NULL,
	Item_Factura_Monto numeric(18, 2) NULL,
	Consumible_Consu_Codigo numeric(18, 0) NOT NULL foreign key references LALENIRO.Consumible (Consu_Codigo),
	Factura_Fac_Numero numeric(18, 0) NOT NULL foreign key references LALENIRO.Factura (Fac_Nro),

 )
 go

 CREATE TABLE LALENIRO.Rol(
	Rol_Codigo numeric(18, 0) identity(1,1) primary key,
	Rol_Descripcion nvarchar(255) NULL,

 )
 go

 CREATE TABLE LALENIRO.Funcionalidad(
	Fun_Codigo numeric(18, 0) identity(1,1) primary key,
	Fun_Detalle nvarchar(255) NULL,
 )
 go

 CREATE TABLE LALENIRO.Rol_has_Funcionalidad(
	Rol_Rol_Codigo numeric(18, 0)  foreign key references LALENIRO.Rol (Rol_Codigo),
	Funcionalidad_Fun_Codigo numeric(18, 0)  foreign key references LALENIRO.Funcionalidad (Fun_Codigo),
	Rol_Funcionalidad_Estado bit NOT NULL,
 )
 go

 CREATE TABLE LALENIRO.Usuario_has_Rol(
	Rol_Rol_Codigo numeric(18, 0) foreign key references LALENIRO.Rol (Rol_Codigo),
	Usuario_Usu_mail nvarchar(255)  foreign key references LALENIRO.Usuario (Usu_Mail),
	Usuario_Rol_Estado bit ,

 )
 go


 /* insert de direcciones del hotel*/

 insert into LALENIRO.Direccion(Dir_Ciudad, Dir_Calle, Dir_Nro_Calle)
 select distinct Hotel_Ciudad, Hotel_Calle, Hotel_Nro_Calle
 from gd_esquema.Maestra
 go

 /*insert direccion clientes*/
 insert into LALENIRO.Direccion(Dir_Calle, Dir_Nro_Calle,Dir_Piso, Dir_Depto)
 select distinct Cliente_Dom_Calle,Cliente_Nro_Calle, Cliente_Piso, Cliente_Depto
 from gd_esquema.Maestra
 go

 /*insert hoteles*/
 insert into LALENIRO.Hotel(Hot_CantEstrellas, Hot_Recarga_Estrella,Direccion_Dir_Codigo)
 select distinct Hotel_CantEstrella,Hotel_Recarga_Estrella, (select Dir_Codigo from LALENIRO.Direccion where Dir_Ciudad = Hotel_Ciudad and Dir_Calle = Hotel_Calle and Dir_Nro_Calle = Hotel_Nro_Calle and Dir_piso is NULL and Dir_Depto is NULL)
 from gd_esquema.Maestra
 go
 
 /*insert regimen*/
 insert into LALENIRO.Regimen(Reg_Descripcion, Reg_Precio)
 select distinct Regimen_Descripcion, Regimen_Precio
 from gd_esquema.Maestra
 go

 /*insert consumible*/
 insert into LALENIRO.Consumible(Consu_Codigo, Consu_Descripcion, Consu_Precio)
 select distinct Consumible_Codigo, Consumible_Descripcion,Consumible_Precio 
 from gd_esquema.Maestra
 where Consumible_Codigo is not null
 go

  /*insert tipo habitacion*/
 insert into LALENIRO.Tipo_Habitacion(Tipo_Habitacion_Codigo, Tipo_Habitacion_Descripcion,Tipo_Habitacion_Porcentual)
 select distinct Habitacion_Tipo_Codigo,Habitacion_Tipo_Descripcion,Habitacion_Tipo_Porcentual
 from gd_esquema.Maestra

 go


 /*

/* select varios*/
 select distinct Hotel_Ciudad, Hotel_Calle, Hotel_Nro_Calle, Hotel_CantEstrella, Hotel_Recarga_Estrella from gd_esquema.Maestra
 select distinct Consumible_Codigo, Consumible_Descripcion,Consumible_Precio from gd_esquema.Maestra where Consumible_Codigo is not null
  select Cliente_Pasaporte_Nro, Cliente_Apellido, Cliente_Nombre, Cliente_Fecha_Nac,Cliente_Mail,Cliente_Dom_Calle,Cliente_Nro_Calle,Cliente_Piso,Cliente_Depto, Cliente_Nacionalidad from gd_esquema.Maestra
  group by Cliente_Pasaporte_Nro, Cliente_Apellido, Cliente_Nombre, Cliente_Fecha_Nac,Cliente_Mail,Cliente_Dom_Calle,Cliente_Nro_Calle,Cliente_Piso,Cliente_Depto, Cliente_Nacionalidad
  select distinct Habitacion_Tipo_Codigo,Habitacion_Tipo_Descripcion,Habitacion_Tipo_Porcentual from gd_esquema.Maestra
  select distinct Cliente_Pasaporte_Nro from gd_esquema.Maestra 
 
 select * from gd_esquema.Maestra

  select * from LALENIRO.Direccion
  select * from LALENIRO.Hotel
  select * from LALENIRO.Regimen
  select * from LALENIRO.Consumible
  select * from LALENIRO.Tipo_Habitacion

  select* from LALENIRO.Direccion join LALENIRO.Hotel on(Dir_Codigo = Direccion_Dir_Codigo)

  */

