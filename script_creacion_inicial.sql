USE GD1C2018
GO
 

------------------------------DROP PROCEDURES-----------------------------

IF OBJECT_ID('LALENIRO.PR_MIGRACION') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_MIGRACION;

IF OBJECT_ID('LALENIRO.PR_REFACTORIZAR_HUESPED') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_REFACTORIZAR_HUESPED;

IF OBJECT_ID('LALENIRO.PR_CREAR_ROL') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_CREAR_ROL;

------------------------------DROP TRIGGERS ------------------------------

------------------------------DROP DE TABLAS------------------------------

IF OBJECT_ID('LALENIRO.BajasPorMantenimiento') IS NOT NULL
DROP TABLE LALENIRO.BajasPorMantenimiento;

IF OBJECT_ID('LALENIRO.Estadia_has_Consumible') IS NOT NULL
DROP TABLE LALENIRO.Estadia_has_Consumible;

IF OBJECT_ID('LALENIRO.Item_factura') IS NOT NULL
DROP TABLE LALENIRO.Item_factura;
go
IF OBJECT_ID('LALENIRO.Factura') IS NOT NULL
DROP TABLE LALENIRO.Factura;
go
IF OBJECT_ID('LALENIRO.Consumible') IS NOT NULL
DROP TABLE LALENIRO.Consumible;
go
IF OBJECT_ID('LALENIRO.Habitacion_has_Huesped_has_Reserva') IS NOT NULL
DROP TABLE LALENIRO.Habitacion_has_Huesped_has_Reserva;
go
IF OBJECT_ID('LALENIRO.Reserva') IS NOT NULL
DROP TABLE LALENIRO.Reserva;
go
IF OBJECT_ID('LALENIRO.Hotel_has_Regimen') IS NOT NULL
DROP TABLE LALENIRO.Hotel_has_Regimen;
go
IF OBJECT_ID('LALENIRO.Regimen') IS NOT NULL
DROP TABLE LALENIRO.Regimen;
go
IF OBJECT_ID('LALENIRO.Habitacion') IS NOT NULL
DROP TABLE LALENIRO.Habitacion;
go
IF OBJECT_ID('LALENIRO.Rol_has_funcionalidad') IS NOT NULL
DROP TABLE LALENIRO.Rol_has_funcionalidad;
go
IF OBJECT_ID('LALENIRO.Funcionalidad') IS NOT NULL
DROP TABLE LALENIRO.Funcionalidad;
go
IF OBJECT_ID('LALENIRO.Hotel_has_Usuario') IS NOT NULL
DROP TABLE LALENIRO.Hotel_has_Usuario;
go
IF OBJECT_ID('LALENIRO.Usuario_has_Rol') IS NOT NULL
DROP TABLE LALENIRO.Usuario_has_Rol;
go
IF OBJECT_ID('LALENIRO.Huesped') IS NOT NULL
DROP TABLE LALENIRO.Huesped;
go
IF OBJECT_ID('LALENIRO.Usuario') IS NOT NULL
DROP TABLE LALENIRO.Usuario																																												;
go
IF OBJECT_ID('LALENIRO.Rol') IS NOT NULL
DROP TABLE LALENIRO.Rol;
go
IF OBJECT_ID('LALENIRO.Hotel') IS NOT NULL
DROP TABLE LALENIRO.Hotel;
go
IF OBJECT_ID('LALENIRO.Tipo_Habitacion') IS NOT NULL
DROP TABLE LALENIRO.Tipo_Habitacion;
go
IF OBJECT_ID('LALENIRO.Direccion') IS NOT NULL
DROP TABLE LALENIRO.Direccion;
go
IF OBJECT_ID('LALENIRO.Estadia') IS NOT NULL
DROP TABLE LALENIRO.Estadia;


GO

------------------------------DROP SCHEMA------------------------------------
IF SCHEMA_ID('LALENIRO') IS NOT NULL
	DROP SCHEMA [LALENIRO]
GO

-----------------------------CREACION SCHEMA --------------------------------
CREATE SCHEMA LALENIRO
GO
 
-----------------------------CREACION TABLAS --------------------------------

CREATE TABLE LALENIRO.BajasPorMantenimiento(
	Bajas_Codigo numeric(18, 0) NOT NULL PRIMARY KEY,
	Bajas_Fecha_Inicio datetime ,
	Bajas_Fecha_Fin datetime ,
	Bajas_Descripcion nvarchar(255) ,
	Hotel_Hot_Codigo numeric(18, 0) NOT NULL,
 )
 go

 CREATE TABLE LALENIRO.Estadia_has_Consumible(
	Estadia_Est_Codigo numeric(18, 0) NOT NULL,
	Consumible_Consu_Codigo numeric(18, 0) NOT NULL
	PRIMARY KEY (Estadia_Est_Codigo, Consumible_Consu_Codigo),

 )
 go

 CREATE TABLE LALENIRO.Factura(
	Fac_Nro numeric(18, 0) identity(1,1) primary key,
	Fac_Fecha datetime NULL,
	Fact_Total numeric(18, 2) NULL,
	Usuario_Usu_Username nvarchar(255) NOT NULL,
	Estadia_Est_Codigo numeric(18, 0) NOT NULL,
	Fac_FormaDePago nvarchar(255) NOT NULL,
	Fac_DatosTarjeta nvarchar(255) NULL, /* no deberia ser de usuario? o huesped*/

 )
 go

 CREATE TABLE LALENIRO.Item_Factura(
	Item_Factura_Cantidad numeric(18, 0) ,
	Item_Factura_Monto numeric(18, 2) ,
	Consumible_Consu_Codigo numeric(18, 0) NOT NULL ,
	Factura_Fac_Numero numeric(18, 0) NOT NULL,
	PRIMARY KEY (Factura_Fac_Numero, Consumible_Consu_Codigo),
	
 )
 go
   
CREATE TABLE LALENIRO.Consumible(
	Consu_Codigo numeric(18, 0) primary key,
	Consu_Descripcion nvarchar(255) ,
	Consu_Precio numeric(18, 2) ,
)
go

  CREATE TABLE LALENIRO.Estadia(
	Est_Codigo numeric(18, 0) identity(1,1) primary key,
	Est_Cant_Noches numeric(18, 0) ,
	Est_Fecha_CheckIn datetime ,
	Est_Fecha_CheckOut datetime ,
	Est_Usuario_EncargadoCheckIn nvarchar(255) ,
	Est_Usuario_EncargadoCheckOut nvarchar(255) ,

 ) 
 go

 CREATE TABLE LALENIRO.Habitacion_has_Huesped_has_Reserva(
	Habitacion_Hab_Numero numeric(18, 0) NOT NULL ,
	Habitacion_Hotel_Hot_Codigo numeric(18, 0) NOT NULL ,
	Reserva_Res_Codigo numeric (18, 0) NOT NULL ,
	--Huesped_Hues_NroIdentificacion numeric(18, 0) NOT NULL, cambie fk huesped
	--Huesped_Hues_TipoIdentificacion nvarchar(255) NOT NULL,
	Huesped_hues_Codigo numeric(18, 0),
	--primary key (Huesped_Hues_NroIdentificacion,Huesped_Hues_TipoIdentificacion,Habitacion_Hab_Numero,Habitacion_Hotel_Hot_Codigo,Reserva_Res_Codigo)
	primary key (Huesped_hues_Codigo ,Habitacion_Hab_Numero,Habitacion_Hotel_Hot_Codigo,Reserva_Res_Codigo)
 )
 go

 CREATE TABLE LALENIRO.Reserva(
	Res_Codigo numeric(18, 0) primary key,
	Res_Fecha_Desde datetime ,
	Res_Fecha_Hasta datetime ,
	Res_Cant_Noches numeric(18, 0) ,	
	Res_Fecha_Creacion datetime ,
	Res_Fecha_Cancelacion datetime ,
	Res_Motivo_Cancelacion nvarchar(255) ,
	Res_Usuario_Creador nvarchar(255) ,
	Res_Usuario_UltimaModificacion nvarchar(255) ,
	Res_Estado integer DEFAULT 0, /*0:RESERVA CORRECTA ,1: RESERVA MODIFICADA, 2:RESERVA CANCELADA POR RECEPCION, 3:RESERVA CANCELADA POR CLIENTE, 4: RESERVA CANCELADA POR NO-SHOW, 5:RESERVA CON (INGRESO EFECTIVO)*/
	Usuario_Usu_Username nvarchar(255),
	Hotel_Hot_Codigo numeric(18, 0) , /* FK Hotel_has_Regimen*/
	Regimen_Reg_Codigo numeric(18, 0), /* FK Hotel_has_Regimen*/
	Estadia_Est_Codigo numeric(18, 0),/* FK  estadia*/
	
 )
 go

 CREATE TABLE LALENIRO.Hotel_has_Regimen(
	Hotel_hot_Codigo numeric(18, 0) NOT NULL,
	Regimen_Reg_Codigo numeric(18, 0) NOT NULL,
	Estado bit DEFAULT 1,
	PRIMARY KEY (Hotel_hot_Codigo, Regimen_Reg_Codigo)
		
 )
 go

 CREATE TABLE LALENIRO.Regimen(
	Reg_Codigo numeric(18, 0) identity(1,1) primary key,
	Reg_Descripcion nvarchar(255) NULL,
	Reg_PrecioBasePorPersona numeric(18, 0) NULL,

 )
 go
 
  CREATE TABLE LALENIRO.Tipo_Habitacion(
	Tipo_Habitacion_Codigo numeric(18, 0) primary key,
	Tipo_Habitacion_Descripcion varchar(255) ,
	Tipo_Habitacion_Porcentual varchar(255) ,
	
 )
 go
 
  CREATE TABLE LALENIRO.Habitacion(
	Hab_Numero numeric(18, 0) NOT NULL,
	Hab_Piso numeric(18, 0) ,
	Hab_vista nvarchar(50) ,
	Hotel_Hot_Codigo numeric(18, 0) NOT NULL ,
	Tipo_Habitacion_Codigo numeric(18, 0) NOT NULL,
	Hab_Estado bit DEFAULT 1,
	PRIMARY KEY (Hotel_Hot_Codigo,Hab_Numero)

 )
 go

  CREATE TABLE LALENIRO.Rol_has_Funcionalidad(
	Rol_Rol_Codigo numeric(18, 0) NOT NULL,
	Funcionalidad_Fun_Codigo numeric(18, 0) NOT NULL,
	Rol_Funcionalidad_Estado bit DEFAULT 1,
	PRIMARY KEY(Rol_Rol_Codigo, Funcionalidad_Fun_Codigo)
 )
 go

 CREATE TABLE LALENIRO.Funcionalidad(
	Fun_Codigo numeric(18, 0) identity(1,1) primary key,
	Fun_Detalle nvarchar(255),
 )
 go

 CREATE TABLE LALENIRO.Hotel_has_Usuario(
	Usuario_Usu_Username nvarchar(255) NOT NULL,
	Hotel_Hot_Codigo numeric(18, 0) NOT NULL,
	PRIMARY KEY(Hotel_Hot_Codigo,Usuario_Usu_Username)
)
 
 CREATE TABLE LALENIRO.Direccion(
	Dir_Codigo numeric(18, 0) identity(1,1) primary key,
	Dir_Ciudad nvarchar(255) ,
	Dir_Calle nvarchar(255) ,
	Dir_Nro_Calle numeric(18, 0) ,
	Dir_Piso numeric(18, 0) ,
	Dir_Depto nvarchar(50) ,
	Dir_Pais nvarchar(255) ,
)
go

  CREATE TABLE LALENIRO.Huesped(
	hues_Codigo numeric(18, 0) identity(1,1) primary key,
	Hues_NroIdentificacion numeric(18, 0) NOT NULL, --TIENE Q SER UNICO
	Hues_TipoIdentificacion nvarchar(255) NOT NULL, 
	Hues_Nombre nvarchar(255) ,
	Hues_Apellido nvarchar(255),
	Hues_Mail nvarchar(255), --TIENE Q SER UNICO
	Hues_Telefono numeric(18, 0),
	Hues_Fecha_Nacimiento datetime,
	Hues_Nacionalidad nvarchar(255),
	Hues_Estado bit DEFAULT 1,
	
 )
 go

 CREATE TABLE LALENIRO.Usuario_has_Rol(
	Rol_Rol_Codigo numeric(18, 0) NOT NULL,
	Usuario_Usu_Username nvarchar(255) NOT NULL,
	--Usuario_Rol_Estado bit DEFAULT 1,
	PRIMARY KEY (Usuario_Usu_Username, Rol_Rol_Codigo)

 )
 go
 
 CREATE TABLE LALENIRO.Usuario(

	Usu_Username nvarchar(255) NOT NULL PRIMARY KEY,
	Usu_Password nvarchar(255) NULL,
	Usu_Mail nvarchar(255) unique,
	Usu_Tipo_Documento nvarchar(255) ,
	Usu_NroDocumento numeric(18, 0),
	Usu_Telefono numeric(18, 0),
	Usu_Nombre nvarchar(255) ,
	Usu_Apellido nvarchar(255),
	Usu_Fecha_Nacimiento datetime,
	Usu_Nacionalidad nvarchar(255),
	Usu_Pasaporte numeric(18, 0),
	Usu_LoginFallidos int,
	Direccion_Dir_Codigo numeric(18, 0) NOT NULL ,
	
	)
	go

  CREATE TABLE LALENIRO.Rol(
	Rol_Codigo numeric(18, 0) identity(1,1) primary key,
	Rol_Descripcion nvarchar(255) NULL,
	Rol_Estado bit DEFAULT 1, -- 1 ES ACTIVO

 )
 go

 CREATE TABLE LALENIRO.Hotel(
	Hot_Codigo numeric(18, 0) identity(1,1) primary key,
	Hot_CantEstrellas numeric(18, 0) ,
	Hot_Recarga_Estrella numeric(18, 0) ,
	Hot_Nombre nvarchar (255) ,
	Hot_telefono numeric (18, 0) ,
	Hot_Fecha_Creacion datetime ,
	Hot_Mail nvarchar(255) ,
	Hot_Estado bit DEFAULT 1, -- 1 ES ACTIVO
	Direccion_Dir_Codigo numeric(18, 0) ,

 )
 go

 -----------------------------TRIGGERS------------------------------
 
------------------------------ABM ROL------------------------------------

CREATE PROCEDURE LALENIRO.PR_CREAR_ROL
  @nombre_rol nvarchar(255) 
AS
  BEGIN TRY
    INSERT INTO LALENIRO.ROL (Rol_Descripcion) VALUES(@nombre_rol);

	SELECT SCOPE_IDENTITY();
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO



------------------------------STORE PROCEDURE------------------------------

-- DESHABILITA HUESPEDES REPETIDOS POR MAIL E IDENTIFICACION

 CREATE PROCEDURE LALENIRO.PR_REFACTORIZAR_HUESPED
 AS
 BEGIN 
	UPDATE LALENIRO.Huesped
	SET Hues_Estado = 0
	WHERE hues_Codigo IN (
		SELECT H.hues_Codigo FROM LALENIRO.Huesped H WHERE H.Hues_NroIdentificacion IN (SELECT Hues_NroIdentificacion FROM LALENIRO.Huesped WHERE (Hues_Nombre != H.Hues_Nombre OR Hues_Apellido != H.Hues_Apellido) AND H.Hues_NroIdentificacion = Hues_NroIdentificacion ) 
		UNION
		SELECT H.hues_Codigo FROM LALENIRO.Huesped H WHERE H.Hues_Mail IN (SELECT Hues_Mail FROM LALENIRO.Huesped WHERE (Hues_Nombre != H.Hues_Nombre OR Hues_Apellido != H.Hues_Apellido OR H.Hues_NroIdentificacion != Hues_NroIdentificacion) AND  H.Hues_Mail = Hues_Mail)
	);
 END
 GO


------------------------------MIGRACION------------------------------
 
 CREATE PROCEDURE LALENIRO.PR_MIGRACION
AS
BEGIN
		/* DIRECCION de hoteles*/
		 insert into LALENIRO.Direccion(Dir_Ciudad, Dir_Calle, Dir_Nro_Calle)
		 select distinct Hotel_Ciudad, Hotel_Calle, Hotel_Nro_Calle
		 from gd_esquema.Maestra
		
		--SELECT* FROM LALENIRO.Direccion
		 

		 /*DIRECCION de clientes*/
		 insert into LALENIRO.Direccion(Dir_Calle, Dir_Nro_Calle,Dir_Piso, Dir_Depto)
		 select distinct Cliente_Dom_Calle,Cliente_Nro_Calle, Cliente_Piso, Cliente_Depto
		 from gd_esquema.Maestra
		
		 --SELECT* FROM LALENIRO.Direccion
		 
		 /*HOTEL*/
		 insert into LALENIRO.Hotel(Hot_CantEstrellas, Hot_Recarga_Estrella,Direccion_Dir_Codigo)
		 select distinct Hotel_CantEstrella,Hotel_Recarga_Estrella, (select Dir_Codigo from LALENIRO.Direccion where Dir_Ciudad = Hotel_Ciudad and Dir_Calle = Hotel_Calle and Dir_Nro_Calle = Hotel_Nro_Calle and Dir_piso is NULL and Dir_Depto is NULL)
		 from gd_esquema.Maestra
		 
		  --SELECT* FROM LALENIRO.Hotel
 
		 /*insert regimen*/
		 insert into LALENIRO.Regimen(Reg_Descripcion, Reg_PrecioBasePorPersona)
		 select distinct Regimen_Descripcion, Regimen_Precio
		 from gd_esquema.Maestra
		 
		 --SELECT* FROM LALENIRO.Regimen 

		 /*insert consumible*/
		 insert into LALENIRO.Consumible(Consu_Codigo, Consu_Descripcion, Consu_Precio)
		 select distinct Consumible_Codigo, Consumible_Descripcion,Consumible_Precio 
		 from gd_esquema.Maestra
		 where Consumible_Codigo is not null

		 --SELECT* FROM LALENIRO.Consumible

		  /*insert tipo habitacion*/
		 insert into LALENIRO.Tipo_Habitacion(Tipo_Habitacion_Codigo, Tipo_Habitacion_Descripcion,Tipo_Habitacion_Porcentual)
		 select distinct Habitacion_Tipo_Codigo,Habitacion_Tipo_Descripcion,Habitacion_Tipo_Porcentual
		 from gd_esquema.Maestra
		 GROUP BY Habitacion_Tipo_Codigo,Habitacion_Tipo_Descripcion,Habitacion_Tipo_Porcentual

		--SELECT* FROM LALENIRO.Tipo_Habitacion

		/*insert Habitacion*/
		INSERT into LALENIRO.Habitacion(Hab_Piso, Hab_Numero,Hab_vista, Hotel_hot_codigo,Tipo_Habitacion_Codigo)
		SELECT distinct Habitacion_Piso, Habitacion_Numero, Habitacion_Frente,
						(select distinct Hot_Codigo from LALENIRO.Hotel join LALENIRO.Direccion on (Direccion_Dir_Codigo = Dir_Codigo) where (Dir_Calle = Hotel_Calle and Dir_Ciudad = Hotel_Ciudad and Dir_Nro_Calle = Hotel_Nro_Calle) ),
						Habitacion_Tipo_Codigo					

		FROM  gd_esquema.Maestra	

		--SELECT* FROM LALENIRO.Habitacion 

		/*insert Hotel_has_Regimen*/
		INSERT into LALENIRO.Hotel_has_Regimen(Hotel_hot_Codigo, Regimen_Reg_Codigo)
		SELECT DISTINCT H.Hot_Codigo, R.Reg_Codigo 
		FROM LALENIRO.Direccion D JOIN LALENIRO.Hotel H ON (D.Dir_Codigo = H.Direccion_Dir_Codigo) ,LALENIRO.Regimen R, gd_esquema.Maestra M
		WHERE D.Dir_Ciudad = M.Hotel_Ciudad AND D.Dir_Calle = M.Hotel_Calle AND D.Dir_Nro_Calle = M.Hotel_Nro_Calle AND 
			  M.Regimen_Descripcion =R.Reg_Descripcion AND M.Regimen_Precio = R.Reg_PrecioBasePorPersona
			 
		--SELECT* FROM LALENIRO.Hotel_has_Regimen
		
		
		/*insert HUESPED */
		INSERT into LALENIRO.Huesped(Hues_NroIdentificacion,Hues_TipoIdentificacion,Hues_Nombre,Hues_Apellido,Hues_Mail,Hues_Fecha_Nacimiento, Hues_Nacionalidad)
		SELECT distinct Cliente_Pasaporte_Nro,'Pasaporte', Cliente_Nombre,Cliente_Apellido,Cliente_Mail,CONVERT (datetime, Cliente_Fecha_Nac),Cliente_Nacionalidad
		FROM  gd_esquema.Maestra
		EXECUTE LALENIRO.PR_REFACTORIZAR_HUESPED --DESHABILITA REPETIDOS

			/*insert RESERVA */

		INSERT INTO LALENIRO.Reserva(Res_Codigo,Res_Fecha_Desde,Res_Fecha_Hasta,Res_Cant_Noches,Hotel_Hot_Codigo,Regimen_Reg_Codigo) 
		SELECT DISTINCT Reserva_Codigo,CONVERT(datetime,Reserva_Fecha_Inicio),
				CONVERT(datetime,DATEADD(DAY,Reserva_Cant_Noches, Reserva_Fecha_Inicio)),
				Reserva_Cant_Noches, H.Hot_Codigo, R.Reg_Codigo
		FROM gd_esquema.Maestra, LALENIRO.Hotel H JOIN LALENIRO.Direccion on (Direccion_Dir_Codigo = Dir_Codigo), LALENIRO.Regimen R
		WHERE (Dir_Calle = Hotel_Calle and Dir_Ciudad = Hotel_Ciudad and Dir_Nro_Calle = Hotel_Nro_Calle) and R.Reg_Descripcion = Regimen_Descripcion AND R.Reg_PrecioBasePorPersona = Regimen_Precio

		--SELECT* FROM LALENIRO.Reserva

			/*insert ESTADIA REVISAR.. */

	/*	INSERT INTO LALENIRO.Estadia(Est_Cant_Noches,Est_Fecha_CheckIn,Est_Fecha_CheckOut) 
		SELECT DISTINCT Estadia_Cant_Noches,CONVERT(datetime,Estadia_Fecha_Inicio),
				CONVERT(datetime,DATEADD(DAY,Estadia_Cant_Noches, Estadia_Fecha_Inicio))
		FROM gd_esquema.Maestra
		

		*/


		
END
GO


------------------------------FOREING KEYS------------------------------

ALTER TABLE [LALENIRO].[Usuario_has_Rol] ADD FOREIGN KEY ([Rol_Rol_Codigo]) REFERENCES [LALENIRO].[Rol]
ALTER TABLE [LALENIRO].[Usuario_has_Rol] ADD FOREIGN KEY ([Usuario_Usu_Username]) REFERENCES [LALENIRO].[Usuario]

ALTER TABLE [LALENIRO].[Usuario] ADD FOREIGN KEY ([Direccion_Dir_Codigo]) REFERENCES [LALENIRO].[Direccion]

ALTER TABLE [LALENIRO].[Hotel_has_Usuario] ADD FOREIGN KEY ([Hotel_Hot_Codigo]) REFERENCES [LALENIRO].[Hotel]
ALTER TABLE [LALENIRO].[Hotel_has_Usuario] ADD FOREIGN KEY ([Usuario_Usu_Username]) REFERENCES [LALENIRO].[Usuario]

ALTER TABLE [LALENIRO].[Hotel] ADD FOREIGN KEY ([Direccion_Dir_Codigo]) REFERENCES [LALENIRO].[Direccion]

ALTER TABLE [LALENIRO].[Rol_has_Funcionalidad] ADD FOREIGN KEY ([Rol_Rol_Codigo]) REFERENCES [LALENIRO].[Rol]
ALTER TABLE [LALENIRO].[Rol_has_Funcionalidad] ADD FOREIGN KEY ([Funcionalidad_Fun_Codigo]) REFERENCES [LALENIRO].[Funcionalidad]

ALTER TABLE [LALENIRO].[Habitacion] ADD FOREIGN KEY ([Hotel_Hot_Codigo]) REFERENCES [LALENIRO].[Hotel]
ALTER TABLE [LALENIRO].[Habitacion] ADD FOREIGN KEY ([Tipo_Habitacion_Codigo]) REFERENCES [LALENIRO].[Tipo_Habitacion]

ALTER TABLE [LALENIRO].[Hotel_has_Regimen] ADD FOREIGN KEY ([Hotel_Hot_Codigo]) REFERENCES [LALENIRO].[Hotel]
ALTER TABLE [LALENIRO].[Hotel_has_Regimen] ADD FOREIGN KEY ([Regimen_Reg_Codigo]) REFERENCES [LALENIRO].[Regimen]

ALTER TABLE [LALENIRO].[Habitacion_has_Huesped_has_Reserva] ADD FOREIGN KEY ([Habitacion_Hotel_Hot_Codigo],[Habitacion_Hab_Numero]) REFERENCES [LALENIRO].[Habitacion] ([Hotel_Hot_Codigo],[Hab_Numero])
ALTER TABLE [LALENIRO].[Habitacion_has_Huesped_has_Reserva] ADD FOREIGN KEY ([Reserva_Res_Codigo]) REFERENCES [LALENIRO].[Reserva] 
ALTER TABLE [LALENIRO].[Habitacion_has_Huesped_has_Reserva] ADD FOREIGN KEY ([Huesped_Hues_Codigo]) REFERENCES [LALENIRO].[Huesped]

ALTER TABLE [LALENIRO].[Reserva] ADD FOREIGN KEY ([Usuario_Usu_Username]) REFERENCES [LALENIRO].[Usuario]
ALTER TABLE [LALENIRO].[Reserva] ADD FOREIGN KEY ([Hotel_Hot_Codigo],[Regimen_Reg_Codigo]) REFERENCES [LALENIRO].[Hotel_has_Regimen] ([Hotel_Hot_Codigo],[Regimen_Reg_Codigo])
ALTER TABLE [LALENIRO].[Reserva] ADD FOREIGN KEY ([Estadia_Est_Codigo]) REFERENCES [LALENIRO].[Estadia]

ALTER TABLE [LALENIRO].[Factura] ADD FOREIGN KEY ([Usuario_Usu_Username]) REFERENCES [LALENIRO].[Usuario]
ALTER TABLE [LALENIRO].[Factura] ADD FOREIGN KEY ([Estadia_Est_Codigo]) REFERENCES [LALENIRO].[Estadia]

ALTER TABLE [LALENIRO].[Item_Factura] ADD FOREIGN KEY ([Consumible_Consu_Codigo]) REFERENCES [LALENIRO].[Consumible]
ALTER TABLE [LALENIRO].[Item_Factura] ADD FOREIGN KEY ([Factura_Fac_Numero]) REFERENCES [LALENIRO].[Factura]

ALTER TABLE [LALENIRO].[Estadia_has_Consumible] ADD FOREIGN KEY ([Consumible_Consu_Codigo]) REFERENCES [LALENIRO].[Consumible]
ALTER TABLE [LALENIRO].[Estadia_has_Consumible] ADD FOREIGN KEY ([Estadia_Est_Codigo]) REFERENCES [LALENIRO].[Estadia]

ALTER TABLE [LALENIRO].[BajasPorMantenimiento] ADD FOREIGN KEY ([Hotel_Hot_Codigo]) REFERENCES [LALENIRO].[Hotel]
 
GO


--SELECT * FROM gd_esquema.Maestra WHERE Cliente_Apellido = 'Garrido' and Cliente_Pasaporte_Nro = '43472661'

EXECUTE LALENIRO.PR_MIGRACION
GO
