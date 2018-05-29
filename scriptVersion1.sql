
USE [GD1C2018]
GO


-------------------------------DROP PROCEDURES-------------------
------------------------------DROP TRIGGERS ---------------------------------
------------------------------DROP DE TABLAS------------------------------
IF OBJECT_ID('LALENIRO.Item_factura') IS NOT NULL
DROP TABLE LALENIRO.Item_factura;
GO
IF OBJECT_ID('LALENIRO.Rol_has_funcionalidad') IS NOT NULL
DROP TABLE LALENIRO.Rol_has_funcionalidad;
GO
IF OBJECT_ID('LALENIRO.Usuario_has_Rol') IS NOT NULL
DROP TABLE LALENIRO.Usuario_has_Rol;
GO
IF OBJECT_ID('LALENIRO.Habitacion_has_Reserva') IS NOT NULL
DROP TABLE LALENIRO.Habitacion_has_Reserva;
GO
IF OBJECT_ID('LALENIRO.Consumible') IS NOT NULL
DROP TABLE LALENIRO.Consumible;
GO
IF OBJECT_ID('LALENIRO.Direccion') IS NOT NULL
DROP TABLE LALENIRO.Direccion;
GO
IF OBJECT_ID('LALENIRO.Estadia') IS NOT NULL
DROP TABLE LALENIRO.Estadia;
GO
IF OBJECT_ID('LALENIRO.Rol') IS NOT NULL
DROP TABLE LALENIRO.Rol;
GO
IF OBJECT_ID('LALENIRO.Funcionalidad') IS NOT NULL
DROP TABLE LALENIRO.Funcionalidad;
GO
IF OBJECT_ID('LALENIRO.Factura') IS NOT NULL
DROP TABLE LALENIRO.Factura;
GO
IF OBJECT_ID('LALENIRO.Huesped') IS NOT NULL
DROP TABLE LALENIRO.Huesped;
GO
IF OBJECT_ID('LALENIRO.Regimen') IS NOT NULL
DROP TABLE LALENIRO.Regimen;
GO
IF OBJECT_ID('LALENIRO.Tipo_Habitacion') IS NOT NULL
DROP TABLE LALENIRO.Tipo_Habitacion;
GO
IF OBJECT_ID('LALENIRO.Habitacion') IS NOT NULL
DROP TABLE LALENIRO.Habitacion;
GO
IF OBJECT_ID('LALENIRO.Reserva') IS NOT NULL
DROP TABLE LALENIRO.Reserva;
GO
IF OBJECT_ID('LALENIRO.Hotel') IS NOT NULL
DROP TABLE LALENIRO.Hotel;
GO
IF OBJECT_ID('LALENIRO.Usuario') IS NOT NULL
DROP TABLE LALENIRO.Usuario																																												;
GO




------------------------------DROP SCHEMA------------------------------------
IF SCHEMA_ID('LALENIRO') IS NOT NULL
	DROP SCHEMA [LALENIRO]
GO

-----------------------------CREACION SCHEMA --------------------------------
CREATE SCHEMA [LALENIRO]
GO
 
-----------------------------CREACION TABLAS --------------------------------

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
 -----------------------------TRIGGERS------------------------------



------------------------------MIGRACION------------------------------

 
 CREATE PROCEDURE [LOSNOOBS].PR_MIGRACION
AS
BEGIN
		/* DIRECCION hoteles*/
		 insert into LALENIRO.Direccion(Dir_Ciudad, Dir_Calle, Dir_Nro_Calle)
		 select distinct Hotel_Ciudad, Hotel_Calle, Hotel_Nro_Calle
		 from gd_esquema.Maestra
		 GROUP BY Hotel_Ciudad, Hotel_Calle, Hotel_Nro_Calle
		 
		 

		 /*DIRECCION clientes*/
		 insert into LALENIRO.Direccion(Dir_Calle, Dir_Nro_Calle,Dir_Piso, Dir_Depto)
		 select distinct Cliente_Dom_Calle,Cliente_Nro_Calle, Cliente_Piso, Cliente_Depto
		 from gd_esquema.Maestra
		 GROUP BY Cliente_Dom_Calle, Cliente_Nro_Calle, Cliente_Piso, Cliente_Depto
		 

		 /*HOTEL*/
		 insert into LALENIRO.Hotel(Hot_CantEstrellas, Hot_Recarga_Estrella,Direccion_Dir_Codigo)
		 select distinct Hotel_CantEstrella,Hotel_Recarga_Estrella, (select Dir_Codigo from LALENIRO.Direccion where Dir_Ciudad = Hotel_Ciudad and Dir_Calle = Hotel_Calle and Dir_Nro_Calle = Hotel_Nro_Calle and Dir_piso is NULL and Dir_Depto is NULL)
		 from gd_esquema.Maestra
		 
		 
 
		 /*insert regimen*/
		 insert into LALENIRO.Regimen(Reg_Descripcion, Reg_Precio)
		 select distinct Regimen_Descripcion, Regimen_Precio
		 from gd_esquema.Maestra
		 GROUP BY  Regimen_Descripcion, Regimen_Precio
		 

		 /*insert consumible*/
		 insert into LALENIRO.Consumible(Consu_Codigo, Consu_Descripcion, Consu_Precio)
		 select distinct Consumible_Codigo, Consumible_Descripcion,Consumible_Precio 
		 from gd_esquema.Maestra
		 where Consumible_Codigo is not null
		 GROUP BY Consumible_Codigo, Consumible_Descripcion,Consumible_Precio 

		  /*insert tipo habitacion*/
		 insert into LALENIRO.Tipo_Habitacion(Tipo_Habitacion_Codigo, Tipo_Habitacion_Descripcion,Tipo_Habitacion_Porcentual)
		 select distinct Habitacion_Tipo_Codigo,Habitacion_Tipo_Descripcion,Habitacion_Tipo_Porcentual
		 from gd_esquema.Maestra
		 GROUP BY Habitacion_Tipo_Codigo,Habitacion_Tipo_Descripcion,Habitacion_Tipo_Porcentual

		/*insert habitacion*/
		INSERT into LALENIRO.Habitacion(Hab_Piso, Hab_Numero,Hab_Ubicacion, Hotel_hot_codigo, tipo_habitacion_tipo_habitacion_codigo)
		SELECT Habitacion_Piso, Habitacion_Numero, Habitacion_Frente, ,Tipo_Habitacion_Codigo
		FROM  gd_esquema.Maestra

		/*insert consumibles*/
		INSERT into LALENIRO.Consumible(Consumimble_codigo, Consumible_Descripcion, Consumible_Precio)
		SELECT Consumimble_codigo, Consumible_Descripcion, Consumible_Precio
		FROM gd_esquema.Maestra
		GROUP BY Consumimble_codigo, Consumible_Descripcion, Consumible_Precio

		/*insert Item_Factura*/
		



END
GO


 /*

/* select varios*/
 /*select distinct Hotel_Ciudad, Hotel_Calle, Hotel_Nro_Calle, Hotel_CantEstrella, Hotel_Recarga_Estrella from gd_esquema.Maestra
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

---------------------------------------FKS--------------------------------------------------------------
  
ALTER TABLE [LALENIRO].[Estadia]  WITH CHECK ADD  CONSTRAINT [FK_Estadia_Usuario] FOREIGN KEY([Usuario_Usu_Mail])
REFERENCES [LALENIRO].[Usuario] ([Usu_Mail])
GO
ALTER TABLE [LALENIRO].[Estadia] CHECK CONSTRAINT [FK_Estadia_Usuario]
GO
ALTER TABLE [LALENIRO].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Usuario] FOREIGN KEY([Usuario_Usu_Mail])
REFERENCES [LALENIRO].[Usuario] ([Usu_Mail])
GO
ALTER TABLE [LALENIRO].[Factura] CHECK CONSTRAINT [FK_Factura_Usuario]
GO
ALTER TABLE [LALENIRO].[Habitacion]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_Hotel] FOREIGN KEY([Hotel_Hot_Codigo])
REFERENCES [LALENIRO].[Hotel] ([Hot_Codigo])
GO
ALTER TABLE [LALENIRO].[Habitacion] CHECK CONSTRAINT [FK_Habitacion_Hotel]
GO
ALTER TABLE [LALENIRO].[Habitacion]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_Tipo_Habitacion] FOREIGN KEY([Tipo_Habitacion_Codigo])
REFERENCES [LALENIRO].[Tipo_Habitacion] ([Tipo_Habitacion_Codigo])
GO
ALTER TABLE [LALENIRO].[Habitacion] CHECK CONSTRAINT [FK_Habitacion_Tipo_Habitacion]
GO
ALTER TABLE [LALENIRO].[Habitacion_has_Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_has_Reserva_Habitacion] FOREIGN KEY([Habitacion_Hab_Codigo])
REFERENCES [LALENIRO].[Habitacion] ([Hab_Codigo])
GO
ALTER TABLE [LALENIRO].[Habitacion_has_Reserva] CHECK CONSTRAINT [FK_Habitacion_has_Reserva_Habitacion]
GO
ALTER TABLE [LALENIRO].[Habitacion_has_Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_has_Reserva_Reserva] FOREIGN KEY([Rerserva_Res_Codigo])
REFERENCES [LALENIRO].[Reserva] ([Res_Codigo])
GO
ALTER TABLE [LALENIRO].[Habitacion_has_Reserva] CHECK CONSTRAINT [FK_Habitacion_has_Reserva_Reserva]
GO
ALTER TABLE [LALENIRO].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_Direccion] FOREIGN KEY([Direccion_Dir_Codigo])
REFERENCES [LALENIRO].[Direccion] ([Dir_Codigo])
GO
ALTER TABLE [LALENIRO].[Hotel] CHECK CONSTRAINT [FK_Hotel_Direccion]
GO
ALTER TABLE [LALENIRO].[Huesped]  WITH CHECK ADD  CONSTRAINT [FK_Huesped_Reserva] FOREIGN KEY([Reserva_Res_Codigo])
REFERENCES [LALENIRO].[Reserva] ([Res_Codigo])
GO
ALTER TABLE [LALENIRO].[Huesped] CHECK CONSTRAINT [FK_Huesped_Reserva]
GO
ALTER TABLE [LALENIRO].[Item_Factura]  WITH CHECK ADD  CONSTRAINT [FK_Item_Factura_Consumible] FOREIGN KEY([Consumible_Consu_Codigo])
REFERENCES [LALENIRO].[Consumible] ([Consu_Codigo])
GO
ALTER TABLE [LALENIRO].[Item_Factura] CHECK CONSTRAINT [FK_Item_Factura_Consumible]
GO
ALTER TABLE [LALENIRO].[Item_Factura]  WITH CHECK ADD  CONSTRAINT [FK_Item_Factura_Factura] FOREIGN KEY([Factura_Fac_Numero])
REFERENCES [LALENIRO].[Factura] ([Fac_Nro])
GO
ALTER TABLE [LALENIRO].[Item_Factura] CHECK CONSTRAINT [FK_Item_Factura_Factura]
GO
ALTER TABLE [LALENIRO].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Regimen] FOREIGN KEY([Regimen_Reg_Codigo])
REFERENCES [LALENIRO].[Regimen] ([Reg_Codigo])
GO
ALTER TABLE [LALENIRO].[Reserva] CHECK CONSTRAINT [FK_Reserva_Regimen]
GO
ALTER TABLE [LALENIRO].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Usuario] FOREIGN KEY([Usuario_Usu_Mail])
REFERENCES [LALENIRO].[Usuario] ([Usu_Mail])
GO
ALTER TABLE [LALENIRO].[Reserva] CHECK CONSTRAINT [FK_Reserva_Usuario]
GO
ALTER TABLE [LALENIRO].[Rol_has_Funcionalidad]  WITH CHECK ADD  CONSTRAINT [FK_Rol_has_Funcionalidad_Funcionalidad] FOREIGN KEY([Funcionalidad_Fun_Codigo])
REFERENCES [LALENIRO].[Funcionalidad] ([Fun_Codigo])
GO
ALTER TABLE [LALENIRO].[Rol_has_Funcionalidad] CHECK CONSTRAINT [FK_Rol_has_Funcionalidad_Funcionalidad]
GO
ALTER TABLE [LALENIRO].[Rol_has_Funcionalidad]  WITH CHECK ADD  CONSTRAINT [FK_Rol_has_Funcionalidad_Rol] FOREIGN KEY([Rol_Rol_Codigo])
REFERENCES [LALENIRO].[Rol] ([Rol_Codigo])
GO
ALTER TABLE [LALENIRO].[Rol_has_Funcionalidad] CHECK CONSTRAINT [FK_Rol_has_Funcionalidad_Rol]
GO
ALTER TABLE [LALENIRO].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Direccion] FOREIGN KEY([Direccion_Dir_Codigo])
REFERENCES [LALENIRO].[Direccion] ([Dir_Codigo])
GO
ALTER TABLE [LALENIRO].[Usuario] CHECK CONSTRAINT [FK_Usuario_Direccion]
GO
ALTER TABLE [LALENIRO].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Hotel] FOREIGN KEY([Hotel_Hot_Codigo])
REFERENCES [LALENIRO].[Hotel] ([Hot_Codigo])
GO
ALTER TABLE [LALENIRO].[Usuario] CHECK CONSTRAINT [FK_Usuario_Hotel]
GO
ALTER TABLE [LALENIRO].[Usuario_has_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_has_Rol_Rol] FOREIGN KEY([Rol_Rol_Codigo])
REFERENCES [LALENIRO].[Rol] ([Rol_Codigo])
GO
ALTER TABLE [LALENIRO].[Usuario_has_Rol] CHECK CONSTRAINT [FK_Usuario_has_Rol_Rol]
GO
ALTER TABLE [LALENIRO].[Usuario_has_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_has_Rol_Usuario] FOREIGN KEY([Usuario_Usu_mail])
REFERENCES [LALENIRO].[Usuario] ([Usu_Mail])
GO
ALTER TABLE [LALENIRO].[Usuario_has_Rol] CHECK CONSTRAINT [FK_Usuario_has_Rol_Usuario]
GO

