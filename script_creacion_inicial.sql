USE GD1C2018
GO
 
 
------------------------------DROP PROCEDURES-----------------------------

IF OBJECT_ID('LALENIRO.PR_MIGRACION') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_MIGRACION;

IF OBJECT_ID('LALENIRO.PR_REFACTORIZAR_HUESPED') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_REFACTORIZAR_HUESPED;

IF OBJECT_ID('LALENIRO.PR_CREAR_ROL') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_CREAR_ROL;

IF OBJECT_ID('LALENIRO.PR_INSERT_DATOS_INICIALES') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_INSERT_DATOS_INICIALES;

IF OBJECT_ID('LALENIRO.PR_ACTUALIZAR_ROL') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_ACTUALIZAR_ROL;

IF OBJECT_ID('LALENIRO.PR_ACTUALIZAR_ROL_HAS_FUNCIONALIDAD') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_ACTUALIZAR_ROL_HAS_FUNCIONALIDAD;

IF OBJECT_ID('LALENIRO.PR_GET_FUNCIONALIDADES_ROL') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_GET_FUNCIONALIDADES_ROL;

IF OBJECT_ID('LALENIRO.PR_GET_FUNCIONALIDADES') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_GET_FUNCIONALIDADES;

IF OBJECT_ID('LALENIRO.PR_GET_ROLES') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_GET_ROLES;

IF OBJECT_ID('LALENIRO.PR_LOGIN') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_LOGIN;

IF OBJECT_ID('LALENIRO.PR_ADD_INTENTO_FALLIDO') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_ADD_INTENTO_FALLIDO;

IF OBJECT_ID('LALENIRO.PR_DESHABILITAR_USUARIO') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_DESHABILITAR_USUARIO;

IF OBJECT_ID('LALENIRO.PR_HABILITAR_USUARIO') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_HABILITAR_USUARIO;

IF OBJECT_ID('LALENIRO.PR_GET_ROLES_DE_USUARIO') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_GET_ROLES_DE_USUARIO;

IF OBJECT_ID('LALENIRO.PR_CREAR_USUARIO') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_CREAR_USUARIO;

IF OBJECT_ID('LALENIRO.PR_ACTUALIZAR_USUARIO_HAS_ROL') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_ACTUALIZAR_USUARIO_HAS_ROL;

IF OBJECT_ID('LALENIRO.PR_ACTUALIZAR_HOTEL_HAS_USUARIO') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_ACTUALIZAR_HOTEL_HAS_USUARIO;

IF OBJECT_ID('LALENIRO.PR_INSERTAR_DIRECCION') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_INSERTAR_DIRECCION;

IF OBJECT_ID('LALENIRO.PR_ACTUALIZAR_CONTRASEÑA_USUARIO') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_ACTUALIZAR_CONTRASEÑA_USUARIO;

IF OBJECT_ID('LALENIRO.PR_ACTUALIZAR_DATOS_USUARIO') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_ACTUALIZAR_DATOS_USUARIO;

IF OBJECT_ID('LALENIRO.PR_INSERTAR_HUESPED') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_INSERTAR_HUESPED;

IF OBJECT_ID('LALENIRO.PR_MODIFICAR_HUESPED') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_MODIFICAR_HUESPED;

IF OBJECT_ID('LALENIRO.PR_DESHABILITAR_HUESPED') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_DESHABILITAR_HUESPED;

IF OBJECT_ID('LALENIRO.BUSCAR_HUESPEDES_HABILITADOS') IS NOT NULL
DROP PROCEDURE LALENIRO.BUSCAR_HUESPEDES_HABILITADOS;

IF OBJECT_ID('LALENIRO.PR_CREAR_HOTEL') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_CREAR_HOTEL;

IF OBJECT_ID('LALENIRO.PR_ACTUALIZAR_HOTEL') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_ACTUALIZAR_HOTEL;

IF OBJECT_ID('LALENIRO.PR_DESHABILITAR_HOTEL') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_DESHABILITAR_HOTEL;

IF OBJECT_ID('LALENIRO.PR_CREAR_HOTEL_HAS_REGIMEN') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_CREAR_HOTEL_HAS_REGIMEN;

IF OBJECT_ID('LALENIRO.PR_ACTUALIZAR_HOTEL_HAS_REGIMEN') IS NOT NULL
DROP PROCEDURE LALENIRO.PR_ACTUALIZAR_HOTEL_HAS_REGIMEN;

IF OBJECT_ID('LALENIRO.LISTAR_HOTELES') IS NOT NULL
DROP PROCEDURE LALENIRO.LISTAR_HOTELES;



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
	Fac_Nro numeric(18, 0) primary key,
	Fac_Fecha datetime,
	Fact_Total numeric(18, 2),
	Fact_Precio_Estadia numeric(18, 0),
	Usuario_Usu_Username nvarchar(255) ,
	Estadia_Est_Codigo numeric(18, 0) NOT NULL,
	Fac_FormaDePago nvarchar(255) ,
	Fac_DatosTarjeta nvarchar(255), /* no deberia ser de usuario? o huesped*/

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
	Est_Codigo numeric(18, 0) primary key,
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
	Huesped_hues_Codigo numeric(18, 0),
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
	PRIMARY KEY(Rol_Rol_Codigo, Funcionalidad_Fun_Codigo)
 )
 go

 CREATE TABLE LALENIRO.Funcionalidad(
	Fun_Codigo numeric(18, 0) identity(1,1) primary key,
	Fun_Detalle nvarchar(255) UNIQUE,
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
	Direccion_Dir_Codigo numeric(18, 0),
 )
 go

 CREATE TABLE LALENIRO.Usuario_has_Rol(
	Rol_Rol_Codigo numeric(18, 0) NOT NULL,
	Usuario_Usu_Username nvarchar(255) NOT NULL,
	PRIMARY KEY (Usuario_Usu_Username, Rol_Rol_Codigo)

 )
 go
 
 CREATE TABLE LALENIRO.Usuario(

	Usu_Username nvarchar(255) PRIMARY KEY,
	Usu_Password nvarchar(255),
	Usu_Mail nvarchar(255) unique,
	Usu_Tipo_Documento nvarchar(255) ,
	Usu_NroDocumento numeric(18, 0),
	Usu_Telefono numeric(18, 0),
	Usu_Nombre nvarchar(255) ,
	Usu_Apellido nvarchar(255),
	Usu_Fecha_Nacimiento datetime,
	--Usu_Nacionalidad nvarchar(255),
	--Usu_Pasaporte numeric(18, 0),
	Usu_LoginFallidos int DEFAULT 0,
	Usu_Habilitado BIT DEFAULT 1, --1 ES HABILITADO
	Direccion_Dir_Codigo numeric(18, 0),
	
	)
	go

  CREATE TABLE LALENIRO.Rol(
	Rol_Codigo numeric(18, 0) primary key,
	Rol_Descripcion nvarchar(255) UNIQUE,
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


 -----------------------------STORE PROCEDURE----------------------------

------------------------------ABM ROL------------------------------------
--INGRESA UN NUEVO ROL
CREATE PROCEDURE LALENIRO.PR_CREAR_ROL
  @nombre_rol nvarchar(255),
  @Rol_Estado bit 
AS
  BEGIN TRY
    INSERT INTO LALENIRO.ROL (Rol_Descripcion, Rol_Estado ) VALUES(@nombre_rol, @Rol_Estado);

	SELECT SCOPE_IDENTITY();
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO

--ACTUALIZA EL NOMBRE Y EL ESTADO DE UN ROL (HABILITADO = 1, DESHABILITADO = 0), ELIMINANDO LA RELACION CON USUARIO SI SE DESHABILITA
CREATE PROCEDURE LALENIRO.PR_ACTUALIZAR_ROL
  @Rol_Codigo numeric(18, 0),
  @Rol_Descripcion_NUEVA nvarchar(255),
  @Rol_Estado_NUEVO bit 
AS
  BEGIN TRY
	 UPDATE LALENIRO.Rol SET Rol_Descripcion = @Rol_Descripcion_NUEVA, Rol_Estado = @Rol_Estado_NUEVO WHERE Rol_Codigo =@Rol_Codigo
	 IF (@Rol_Estado_NUEVO = 0)
		DELETE FROM LALENIRO.Usuario_has_Rol WHERE Rol_Rol_Codigo = @Rol_Codigo
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO

 --CREA O ELIMINA UNA RELACION DE ROL CON FUNCIONALIDAD
 CREATE PROCEDURE LALENIRO.PR_ACTUALIZAR_ROL_HAS_FUNCIONALIDAD
  @Rol_Codigo numeric(18, 0),
  @Fun_Codigo numeric(18, 0),
  @Estado bit 
  AS
  BEGIN TRY
	IF(@Estado = 0)--LO ELIMINO
		DELETE FROM LALENIRO.Rol_has_Funcionalidad WHERE Rol_Rol_Codigo = @Rol_Codigo AND Funcionalidad_Fun_Codigo = @Fun_Codigo
	ELSE IF(@Estado = 1)--LO CREO
		INSERT INTO LALENIRO.Rol_has_Funcionalidad (Rol_Rol_Codigo,Funcionalidad_Fun_Codigo) VALUES (@Rol_Codigo,@Fun_Codigo)

  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO

  --DEVUELVE LAS FUNCIONALIDADES DE UN ROL
 CREATE PROCEDURE LALENIRO.PR_GET_FUNCIONALIDADES_ROL
  @Rol_Codigo numeric(18, 0)
  AS
  BEGIN TRY
	SELECT Fun_Codigo, Fun_Detalle FROM LALENIRO.Funcionalidad JOIN LALENIRO.Rol_has_Funcionalidad ON (Fun_Codigo = Funcionalidad_Fun_Codigo) JOIN LALENIRO.Rol ON (Rol_Codigo = Rol_Rol_Codigo AND Rol_Codigo = @Rol_Codigo)

  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO

   --DEVUELVE TODAS LAS FUNCIONALIDADES
 CREATE PROCEDURE LALENIRO.PR_GET_FUNCIONALIDADES
  AS
  BEGIN TRY
	SELECT Fun_Codigo ,Fun_Detalle FROM LALENIRO.Funcionalidad 

  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO

   --DEVUELVE TODOS LOS ROLES
 CREATE PROCEDURE LALENIRO.PR_GET_ROLES
  AS
  BEGIN TRY
	SELECT Rol_Codigo , Rol_Descripcion FROM LALENIRO.Rol

  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO

------------------------------DIRECCION--------------------------------------------

--INGRESA UN NUEVA DIRECCION
CREATE PROCEDURE LALENIRO.PR_INSERTAR_DIRECCION
	@Dir_Ciudad nvarchar(255) ,
	@Dir_Calle nvarchar(255) ,
	@Dir_Nro_Calle numeric(18, 0) ,
	@Dir_Piso numeric(18, 0) ,
	@Dir_Depto nvarchar(50) ,
	@Dir_Pais nvarchar(255) ,
	@Dir_Codigo numeric(18, 0) OUTPUT
AS
  BEGIN TRY
	IF(NOT EXISTS (SELECT Dir_Codigo FROM LALENIRO.Direccion WHERE @Dir_Ciudad = Dir_Ciudad AND @Dir_Calle = Dir_Calle AND @Dir_Nro_Calle = Dir_Nro_Calle AND @Dir_Piso = Dir_Piso AND @Dir_Depto =Dir_Depto AND @Dir_Pais = Dir_Pais ))
		BEGIN
	    INSERT INTO LALENIRO.Direccion(Dir_Ciudad, Dir_Calle, Dir_Nro_Calle, Dir_Piso, Dir_Depto, Dir_Pais) VALUES (@Dir_Ciudad, @Dir_Calle, @Dir_Nro_Calle, @Dir_Piso, @Dir_Depto, @Dir_Pais);
		  SELECT @Dir_Codigo = SCOPE_IDENTITY();
		END
	ELSE 
	SELECT @Dir_Codigo = Dir_Codigo FROM LALENIRO.Direccion WHERE @Dir_Ciudad = Dir_Ciudad AND @Dir_Calle = Dir_Calle AND @Dir_Nro_Calle = Dir_Nro_Calle AND @Dir_Piso = Dir_Piso AND @Dir_Depto =Dir_Depto AND @Dir_Pais = Dir_Pais
  
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO

------------------------------ABM USUARIO------------------------------------------
--RELACIONA UN ROL CON UN USUARIO
CREATE PROCEDURE LALENIRO.PR_ACTUALIZAR_USUARIO_HAS_ROL
  @Usu_Username nvarchar(255),
  @Rol_Codigo numeric(18, 0),
  @Estado bit 
  AS
  BEGIN TRY
	IF(@Estado = 0)--LO ELIMINO
		DELETE FROM LALENIRO.Usuario_has_Rol WHERE Rol_Rol_Codigo = @Rol_Codigo AND Usuario_Usu_Username = @Usu_Username
	ELSE IF(@Estado = 1)--LO CREO  
		INSERT INTO LALENIRO.Usuario_has_Rol (Usuario_Usu_Username,Rol_Rol_Codigo) VALUES (@Usu_Username, @Rol_Codigo);
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO

 --RELACIONA UN HOTEL CON UN USUARIO
CREATE PROCEDURE LALENIRO.PR_ACTUALIZAR_HOTEL_HAS_USUARIO
  @Usu_Username nvarchar(255),
  @Hot_Codigo numeric(18, 0),
   @Estado bit 
  AS
  BEGIN TRY
	IF(@Estado = 0)--LO ELIMINO
		DELETE FROM LALENIRO.Hotel_has_Usuario WHERE Hotel_Hot_Codigo = @Hot_Codigo AND Usuario_Usu_Username = @Usu_Username
	ELSE IF(@Estado = 1)--LO CREO  
	INSERT INTO LALENIRO.Hotel_has_Usuario(Usuario_Usu_Username,Hotel_Hot_Codigo) VALUES (@Usu_Username, @Hot_Codigo);
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO

--INGRESA UN NUEVO USUARIO
CREATE PROCEDURE LALENIRO.PR_CREAR_USUARIO
	@Usu_Username nvarchar(255),
	@Usu_Password nvarchar(255),
	@Rol_Codigo_inicial numeric(18, 0),
	@Usu_Nombre nvarchar(255) ,
	@Usu_Apellido nvarchar(255),
	@Usu_Tipo_Documento nvarchar(255) ,
	@Usu_NroDocumento numeric(18, 0),
	@Usu_Mail nvarchar(255),
	@Usu_Telefono numeric(18, 0),
	@Dir_Codigo numeric(18, 0),
	@Usu_Fecha_Nacimiento datetime,
	@Hot_Codigo numeric(18, 0)	
AS
  BEGIN TRY
	--INSERTO USUARIO
    INSERT INTO LALENIRO.Usuario (Usu_Username, Usu_Password, Usu_Nombre, Usu_Apellido, Usu_Tipo_Documento, Usu_NroDocumento, Usu_Mail, Usu_Telefono, Direccion_Dir_Codigo, Usu_Fecha_Nacimiento)
		VALUES (@Usu_Username,HashBytes('SHA2_256', @Usu_Password), @Usu_Nombre, @Usu_Apellido, @Usu_Tipo_Documento, @Usu_NroDocumento, @Usu_Mail, @Usu_Telefono, @Dir_Codigo, @Usu_Fecha_Nacimiento);
	
	--INSERTO USUARIO_HAS_ROL
	EXECUTE LALENIRO.PR_ACTUALIZAR_USUARIO_HAS_ROL @Usu_Username,@Rol_Codigo_inicial,1

	--INSERTO HOTEL_HAS_USUARIO
	EXECUTE LALENIRO.PR_ACTUALIZAR_HOTEL_HAS_USUARIO @Usu_Username,@Hot_Codigo,1

  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO


--ACTUALIZA LA CONTRASEÑA DEL USUARIO
CREATE PROCEDURE LALENIRO.PR_ACTUALIZAR_CONTRASEÑA_USUARIO
	@Usu_Username nvarchar(255),
	@Usu_Password nvarchar(255),
	@Usu_Password_NUEVA nvarchar(255)	
AS
  BEGIN TRY

	IF (EXISTS(SELECT Usu_Username  FROM USUARIO WHERE Usu_Username = @Usu_Username AND HashBytes('SHA2_256', Usu_Password) =HashBytes('SHA2_256', @Usu_Password) ))
	UPDATE LALENIRO.Usuario SET  Usu_Password = @Usu_Password_NUEVA WHERE Usu_Username = @Usu_Username 

  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO


--ACTUALIZA UN USUARIO EXISTENTE
CREATE PROCEDURE LALENIRO.PR_ACTUALIZAR_DATOS_USUARIO
	@Usu_Username nvarchar(255),
	@Usu_Nombre nvarchar(255) ,
	@Usu_Apellido nvarchar(255),
	@Usu_Tipo_Documento nvarchar(255) ,
	@Usu_NroDocumento numeric(18, 0),
	@Usu_Mail nvarchar(255),
	@Usu_Telefono numeric(18, 0),
	@Dir_Codigo numeric(18, 0),
	@Usu_Fecha_Nacimiento datetime
		
AS
  BEGIN TRY

	 IF (EXISTS(SELECT Usu_Username  FROM USUARIO WHERE Usu_Username = @Usu_Username ))
		UPDATE LALENIRO.Usuario 
		SET @Usu_Nombre=Usu_Nombre, @Usu_Apellido= Usu_Apellido, @Usu_Tipo_Documento= Usu_Tipo_Documento, @Usu_NroDocumento= Usu_NroDocumento,
			@Usu_Mail= Usu_Mail, @Usu_Telefono= Usu_Telefono, @Dir_Codigo= Direccion_Dir_Codigo, @Usu_Fecha_Nacimiento= Usu_Fecha_Nacimiento
		WHERE Usu_Username = @Usu_Username 
		
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO


    --DESHABILITA UN USUARIO
 CREATE PROCEDURE LALENIRO.PR_DESHABILITAR_USUARIO
 @Usu_Username nvarchar(255)
  AS
  BEGIN TRY
	
	IF (EXISTS(SELECT Usu_Username  FROM USUARIO WHERE Usu_Username = @Usu_Username ))
	UPDATE LALENIRO.Usuario SET  Usu_Habilitado = 0 WHERE Usu_Username = @Usu_Username
	
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO

------------------------------Login y seguridad------------------------------------

  --DEVUELVE LOS ROLES DE UN USUARIO
 CREATE PROCEDURE LALENIRO.PR_GET_ROLES_DE_USUARIO
  @Usu_Username nvarchar(255)
  AS
  BEGIN TRY
	SELECT Rol_Codigo, Rol_Descripcion FROM LALENIRO.Rol JOIN LALENIRO.Usuario_has_Rol ON (Rol_Codigo = Rol_Rol_Codigo) JOIN LALENIRO.Usuario ON (Usu_Username = Usuario_Usu_Username AND Usu_Username = @Usu_Username)
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO


     --HABILITAR UN USUARIO
 CREATE PROCEDURE LALENIRO.PR_HABILITAR_USUARIO
 @Usu_Username nvarchar(255)
  AS
  BEGIN TRY
	
	IF (EXISTS(SELECT Usu_Username  FROM USUARIO WHERE Usu_Username = @Usu_Username ))
	UPDATE LALENIRO.Usuario SET  Usu_Habilitado = 1 WHERE Usu_Username = @Usu_Username
	
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO

    --AUMENTA EN UNO LA CANTIDAD DE INTENTOS FALLIDOS
 CREATE PROCEDURE LALENIRO.PR_ADD_INTENTO_FALLIDO
 @Usu_Username nvarchar(255)
  AS
  BEGIN TRY
	
	UPDATE LALENIRO.Usuario SET  Usu_LoginFallidos = Usu_LoginFallidos + 1 WHERE Usu_Username = @Usu_Username
	IF (EXISTS(SELECT Usu_Username  FROM USUARIO WHERE Usu_Username = @Usu_Username AND Usu_LoginFallidos = 3 ))
	EXECUTE PR_DESHABILITAR_USUARIO @Usu_Username
		
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO

   --VERIFICA SI EL LOGIN ES CORRECTO ,SI LO ES, PONE LOGIN FALLIDO EN 0 Y EN ESTADO FIGURA SI ESTA HABILITADO
 CREATE PROCEDURE LALENIRO.PR_LOGIN
	@Usu_Username nvarchar(255),
	@Usu_Password nvarchar(255),
	@ESTADO BIT = 0 OUTPUT -- 1 ACIVO
  AS
  BEGIN TRY
	IF (EXISTS(SELECT Usu_Username  FROM USUARIO WHERE Usu_Username = @Usu_Username))
	BEGIN

		IF (EXISTS(SELECT Usu_Username  FROM USUARIO WHERE Usu_Username = @Usu_Username AND Usu_Password = HashBytes('SHA2_256', @Usu_Password) ))
			BEGIN
				UPDATE Usuario SET Usu_LoginFallidos = 0 WHERE Usu_Username = @Usu_Username;
				SELECT @ESTADO = Usu_Habilitado FROM USUARIO WHERE Usu_Username = @Usu_Username
			END
		ELSE
			EXECUTE LALENIRO.PR_ADD_INTENTO_FALLIDO @Usu_Username;
	END
	ELSE PRINT 'EL NOMBRE DE USUARIO NO EXISTE'	
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO


------------------------------ABM cliente(HUESPEDES)------------------------------------------


--ingresa un nuevo HUESPED
CREATE PROCEDURE LALENIRO.PR_INSERTAR_HUESPED 
@Hues_Nombre nvarchar(255),
@Hues_Apellido nvarchar(255),
@Hues_NroIdentificacion numeric(18, 0),
@Hues_TipoIdentificacion nvarchar(255),
@Hues_Mail nvarchar(255),
@Hues_Telefono numeric(18, 0),
@Direccion numeric(18, 0),
@Hues_Nacionalidad nvarchar(255),
@Hues_Fecha_Nacimiento datetime

AS
BEGIN TRY

	IF(NOT EXISTS(SELECT hues_Codigo FROM LALENIRO.Huesped WHERE (Hues_NroIdentificacion= @Hues_NroIdentificacion AND Hues_TipoIdentificacion= @Hues_TipoIdentificacion) OR Hues_Mail = @Hues_Mail )) --ME FIJO SI EXISTE UN CLIENTE CON MISMO MAIL O IDENTIFICACION
		INSERT INTO LALENIRO.Huesped(Hues_Nombre,Hues_Apellido,Hues_NroIdentificacion,Hues_TipoIdentificacion,Hues_Mail,Hues_Telefono,Direccion_Dir_Codigo,Hues_Nacionalidad,Hues_Fecha_Nacimiento )
		VALUES(@Hues_Nombre, @Hues_Apellido, @Hues_NroIdentificacion, @Hues_TipoIdentificacion, @Hues_Mail, @Hues_Telefono, @Direccion, @Hues_Nacionalidad, @Hues_Fecha_Nacimiento )
	ELSE
		RAISERROR('DATOS NO VALIDOS',1,1)
	
END TRY
BEGIN CATCH
  SELECT 'ERROR', ERROR_MESSAGE()
END CATCH
GO




--actualiza un HUESPED existente
CREATE PROCEDURE LALENIRO.PR_MODIFICAR_HUESPED 
@hues_Codigo numeric(18, 0),
@Hues_Nombre nvarchar(255),
@Hues_Apellido nvarchar(255),
@Hues_NroIdentificacion numeric(18, 0),
@Hues_TipoIdentificacion nvarchar(255),
@Hues_Mail nvarchar(255),
@Hues_Telefono numeric(18, 0),
@Direccion numeric(18, 0),
@Hues_Nacionalidad nvarchar(255),
@Hues_Fecha_Nacimiento datetime,
@Hues_Estado bit

AS
BEGIN TRY

	IF(NOT EXISTS( SELECT hues_Codigo FROM LALENIRO.Huesped WHERE ((Hues_NroIdentificacion= @Hues_NroIdentificacion AND Hues_TipoIdentificacion= @Hues_TipoIdentificacion) OR Hues_Mail = @Hues_Mail ) AND hues_Codigo != @hues_Codigo))
	
			UPDATE LALENIRO.Huesped 
			SET Hues_Nombre = @Hues_Nombre, Hues_Apellido= @Hues_Apellido, Hues_NroIdentificacion= @Hues_NroIdentificacion, Hues_TipoIdentificacion= @Hues_TipoIdentificacion,
				Hues_Mail =@Hues_Mail, Hues_Telefono = @Hues_Telefono, Direccion_Dir_Codigo = @Direccion, Hues_Nacionalidad = @Hues_Nacionalidad, Hues_Fecha_Nacimiento =@Hues_Fecha_Nacimiento, Hues_Estado = @Hues_Estado
		    WHERE hues_Codigo = @hues_Codigo

	ELSE
		RAISERROR('DATOS NO VALIDOS',1,1)

END TRY
BEGIN CATCH
  SELECT 'ERROR', ERROR_MESSAGE()
END CATCH
GO


    --DESHABILITA UN HUESPED
 CREATE PROCEDURE LALENIRO.PR_DESHABILITAR_HUESPED
 @hues_Codigo numeric(18, 0)
  AS
  BEGIN TRY
	
	IF (EXISTS(SELECT 1 FROM LALENIRO.Huesped WHERE hues_Codigo = @hues_Codigo ))
	UPDATE LALENIRO.Huesped SET  Hues_Estado = 0 WHERE hues_Codigo = @hues_Codigo 
	
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO



 CREATE PROCEDURE LALENIRO.BUSCAR_HUESPEDES_HABILITADOS
 @Hues_Nombre nvarchar(255),
 @Hues_Apellido nvarchar(255),
 @Hues_NroIdentificacion numeric(18, 0),
 @Hues_TipoIdentificacion nvarchar(255),
 @Hues_Mail nvarchar(255)

AS
BEGIN TRY
	SELECT *
	FROM LALENIRO.Huesped
	WHERE
	(@Hues_Nombre = '' OR @Hues_Nombre is null OR lower(Hues_Nombre) LIKE '%' + lower(@Hues_Nombre) + '%') AND  
	(@Hues_Apellido = '' OR @Hues_Apellido is null OR lower(Hues_Apellido) LIKE '%' + lower(@Hues_Apellido) + '%') AND
	(@Hues_TipoIdentificacion = '' OR @Hues_TipoIdentificacion is null OR lower(Hues_TipoIdentificacion) LIKE lower(@Hues_TipoIdentificacion) + '%') AND
	(@Hues_NroIdentificacion = '' OR @Hues_NroIdentificacion is null OR Hues_NroIdentificacion = @Hues_NroIdentificacion) AND 
	(@Hues_Mail = '' OR @Hues_Mail is null OR lower(Hues_Mail) LIKE '%' + lower(@Hues_Mail) + '%') AND Hues_Estado = 1
END TRY
BEGIN CATCH
  SELECT 'ERROR', ERROR_MESSAGE()
END CATCH
GO

------------------------------ABM HOTEL------------------------------------------
     

--INGRESA UN NUEVO HOTEL
CREATE PROCEDURE LALENIRO.PR_CREAR_HOTEL
	@Hot_Nombre nvarchar (255) ,
	@Hot_Mail nvarchar(255) ,
	@Hot_telefono numeric (18, 0) ,
	@Direccion_Codigo numeric(18, 0) ,
	@Hot_CantEstrellas numeric(18, 0) ,
	@Hot_Fecha_Creacion datetime,
	@Usu_Username nvarchar(255)

AS
  BEGIN TRY
  
	IF(NOT EXISTS (SELECT 1 FROM LALENIRO.Hotel WHERE Hot_Nombre = @Hot_Nombre AND Hot_Mail = @Hot_Mail AND Hot_Fecha_Creacion = @Hot_Fecha_Creacion))
	BEGIN
    INSERT INTO LALENIRO.Hotel(Hot_Nombre,Hot_Mail,Hot_telefono,Direccion_Dir_Codigo, Hot_CantEstrellas, Hot_Fecha_Creacion )
		VALUES (@Hot_Nombre,@Hot_Mail, @Hot_telefono, @Direccion_Codigo, @Hot_CantEstrellas, @Hot_Fecha_Creacion);

	EXECUTE LALENIRO.PR_ACTUALIZAR_HOTEL_HAS_USUARIO @Usu_Username,@@IDENTITY,1;
	END

  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO


--ACTUALIZA UN  HOTEL
CREATE PROCEDURE LALENIRO.PR_ACTUALIZAR_HOTEL

	@hot_Codigo numeric(18, 0),
	@Hot_Nombre nvarchar (255) ,
	@Hot_Mail nvarchar(255) ,
	@Hot_telefono numeric (18, 0) ,
	@Direccion_Codigo numeric(18, 0) ,
	@Hot_CantEstrellas numeric(18, 0) ,
	@Hot_Fecha_Creacion datetime,
	@Usu_Username nvarchar(255)

AS
  BEGIN TRY
 
	DECLARE @ADMIN_ANTERIOR nvarchar(255)
  
	IF(EXISTS (SELECT 1 FROM LALENIRO.Hotel WHERE @hot_Codigo = Hot_Codigo))
	BEGIN
	SELECT top 1 @ADMIN_ANTERIOR = Usuario_Usu_Username FROM Hotel_has_Usuario WHERE Hotel_Hot_Codigo = @hot_Codigo AND Usuario_Usu_Username in (select u.Usuario_Usu_Username from Usuario_has_Rol u where u.Rol_Rol_Codigo = 1 or u.Rol_Rol_Codigo = 2)

	UPDATE LALENIRO.Hotel 
	SET Hot_Nombre = @Hot_Nombre, Hot_Mail = @Hot_Mail, Hot_telefono =@Hot_telefono, Direccion_Dir_Codigo =@Direccion_Codigo,Hot_CantEstrellas =@Hot_CantEstrellas, Hot_Fecha_Creacion =@Hot_Fecha_Creacion
	WHERE Hot_Codigo = @hot_Codigo
	    
	EXECUTE LALENIRO.PR_ACTUALIZAR_HOTEL_HAS_USUARIO @ADMIN_ANTERIOR ,@hot_Codigo,0;
	EXECUTE LALENIRO.PR_ACTUALIZAR_HOTEL_HAS_USUARIO @Usu_Username,@hot_Codigo,1;
	END

  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO


    --DESHABILITA UN hotel
 CREATE PROCEDURE LALENIRO.PR_DESHABILITAR_HOTEL
 @hot_Codigo numeric(18, 0),
 @Baja_Fecha_Inicio datetime,
 @Baja_Fecha_Fin datetime,
 @Baja_Desc nvarchar(255)
  AS
  BEGIN TRY
	
	IF (EXISTS(SELECT 1 FROM LALENIRO.Hotel WHERE Hot_Codigo = @hot_Codigo and Hot_Estado = 1 ))
	BEGIN
	IF(NOT EXISTS (SELECT 1 FROM LALENIRO.Reserva WHERE ISNULL(Res_Fecha_Cancelacion,Res_Fecha_Hasta) >= CONVERT(datetime,@Baja_Fecha_Inicio) AND Res_Fecha_Desde <= CONVERT(datetime,@Baja_Fecha_Fin) AND Hotel_Hot_Codigo =@hot_Codigo))--LO DA DEBAJA SI NO HAY RESERVAS HECHAS EN ESE PERIODO
		BEGIN
		UPDATE LALENIRO.Hotel SET  Hot_Estado = 0 WHERE Hot_Codigo = @hot_Codigo 
		INSERT INTO LALENIRO.BajasPorMantenimiento (Bajas_Fecha_Inicio,Bajas_Fecha_Fin,Bajas_Descripcion,Hotel_Hot_Codigo)
		values (CONVERT(datetime,@Baja_Fecha_Inicio),CONVERT(datetime,@Baja_Fecha_Fin),@Baja_Desc,@hot_Codigo)
		END
	END
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO



 --CREA UNA RELACION DE HOTEL HAS REGIMEN
 CREATE PROCEDURE LALENIRO.PR_CREAR_HOTEL_HAS_REGIMEN
  @hot_Codigo numeric(18, 0),
  @Reg_Codigo numeric(18, 0)
  AS
  BEGIN TRY
	INSERT INTO LALENIRO.Hotel_has_Regimen (Hotel_hot_Codigo,Regimen_Reg_Codigo) VALUES (@hot_Codigo,@Reg_Codigo)
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO

  --ELIMINA UNA RELACION DE HOTEL HAS REGIMEN
 CREATE PROCEDURE LALENIRO.PR_ACTUALIZAR_HOTEL_HAS_REGIMEN
  @hot_Codigo numeric(18, 0),
  @Reg_Codigo numeric(18, 0),
  @Fecha_ACTUAL datetime
  AS
  BEGIN TRY
	IF(NOT EXISTS (SELECT 1 FROM LALENIRO.Reserva WHERE ISNULL(Res_Fecha_Cancelacion,Res_Fecha_Hasta) > CONVERT(datetime,@Fecha_ACTUAL) AND Hotel_Hot_Codigo =@hot_Codigo AND Regimen_Reg_Codigo = @Reg_Codigo ))--SE FIJA SI HAY RESERVAS CON ESE REGIMEN EN ESA FECHA
		DELETE FROM LALENIRO.Hotel_has_Regimen WHERE Hotel_hot_Codigo = @hot_Codigo AND Regimen_Reg_Codigo = @Reg_Codigo
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO

 
 CREATE PROCEDURE LALENIRO.LISTAR_HOTELES
 @Hot_Nombre nvarchar (255) ,
 @Hot_CantEstrellas numeric(18, 0) ,
 @Dir_Ciudad nvarchar(255) ,
 @Dir_Pais nvarchar(255) 
AS
BEGIN TRY
	SELECT Hot_Codigo,Hot_Nombre, Hot_Mail,Hot_telefono,Dir_Calle,Dir_Nro_Calle, Hot_CantEstrellas,Dir_Ciudad,Dir_Pais, Hot_Fecha_Creacion
	FROM LALENIRO.HOTEL JOIN LALENIRO.Direccion ON (Dir_Codigo = Direccion_Dir_Codigo)
	WHERE
	(@Hot_Nombre = '' OR @Hot_Nombre is null OR lower(Hot_Nombre) LIKE '%' + lower(@Hot_Nombre) + '%') AND  
	(@Dir_Ciudad = '' OR @Dir_Ciudad is null OR lower(Dir_Ciudad) LIKE '%' + lower(@Dir_Ciudad) + '%') AND
	(@Dir_Pais = '' OR @Dir_Pais is null OR lower(Dir_Pais) LIKE lower(@Dir_Pais) + '%') AND
	(@Hot_CantEstrellas = '' OR @Hot_CantEstrellas is null OR Hot_CantEstrellas = @Hot_CantEstrellas) AND Hot_Estado =1
END TRY
BEGIN CATCH
  SELECT 'ERROR', ERROR_MESSAGE()
END CATCH
GO


------------------------------STORE PROCEDURE OTROS------------------------------

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
 ------------------------------FUNCIONALIDADES-------------------------------

CREATE PROCEDURE LALENIRO.PR_INSERT_DATOS_INICIALES
AS
BEGIN
	
	-- INSERT DE ROL 
	INSERT INTO LALENIRO.Rol (Rol_Codigo,Rol_Descripcion) VALUES(1,'Administrador General')
	INSERT INTO LALENIRO.Rol (Rol_Codigo,Rol_Descripcion) VALUES(2,'Administrador')
	INSERT INTO LALENIRO.Rol (Rol_Codigo,Rol_Descripcion) VALUES(3,'Recepcionista')
	INSERT INTO LALENIRO.Rol (Rol_Codigo,Rol_Descripcion) VALUES(4,'Guest')
	
	-- INSERT DE FUNCIONALIDAD 
	INSERT INTO LALENIRO.Funcionalidad(Fun_Detalle) VALUES('ABM ROL')
	INSERT INTO LALENIRO.Funcionalidad(Fun_Detalle) VALUES('ABM USUARIO')
	INSERT INTO LALENIRO.Funcionalidad(Fun_Detalle) VALUES('ABM HUESPED')
	INSERT INTO LALENIRO.Funcionalidad(Fun_Detalle) VALUES('ABM HOTEL')
	INSERT INTO LALENIRO.Funcionalidad(Fun_Detalle) VALUES('ABM HABITACION')
	INSERT INTO LALENIRO.Funcionalidad(Fun_Detalle) VALUES('ABM REGIMEN DE ESTADIA')
	INSERT INTO LALENIRO.Funcionalidad(Fun_Detalle) VALUES('CREAR Y MODIFICAR RESERVAS')
	INSERT INTO LALENIRO.Funcionalidad(Fun_Detalle) VALUES('CANCELAR RESERVAS')
	INSERT INTO LALENIRO.Funcionalidad(Fun_Detalle) VALUES('REGISTRAR ESTADIA')
	INSERT INTO LALENIRO.Funcionalidad(Fun_Detalle) VALUES('REGISTRAR CONSUMIBLE')
	INSERT INTO LALENIRO.Funcionalidad(Fun_Detalle) VALUES('FACTURAR ESTADIA')
	INSERT INTO LALENIRO.Funcionalidad(Fun_Detalle) VALUES('LISTADO ESTADISTICO')

	-- INSERT DE ROL_HAS_FUNCIONALIDAD
		
	INSERT INTO LALENIRO.Rol_has_Funcionalidad(Rol_Rol_Codigo,Funcionalidad_Fun_Codigo)
	SELECT Rol_Codigo,Fun_Codigo FROM LALENIRO.ROL, LALENIRO.Funcionalidad WHERE Rol_Descripcion = 'Administrador General' AND Fun_Detalle IN ('ABM ROL' ,'ABM USUARIO', 'ABM HUESPED', 'ABM HOTEL','ABM HABITACION', 'ABM REGIMEN DE ESTADIA', 'CREAR Y MODIFICAR RESERVAS',
																																				'CANCELAR RESERVAS','REGISTRAR ESTADIA','REGISTRAR CONSUMIBLE','FACTURAR ESTADIA','LISTADO ESTADISTICO' )
		
	INSERT INTO LALENIRO.Rol_has_Funcionalidad(Rol_Rol_Codigo,Funcionalidad_Fun_Codigo)
	SELECT Rol_Codigo,Fun_Codigo FROM LALENIRO.ROL, LALENIRO.Funcionalidad WHERE Rol_Descripcion = 'Administrador' AND Fun_Detalle IN ('ABM USUARIO','ABM HOTEL','ABM HABITACION','ABM REGIMEN DE ESTADIA','LISTADO ESTADISTICO' )
		
	INSERT INTO LALENIRO.Rol_has_Funcionalidad(Rol_Rol_Codigo,Funcionalidad_Fun_Codigo)
	SELECT Rol_Codigo,Fun_Codigo FROM LALENIRO.ROL, LALENIRO.Funcionalidad WHERE Rol_Descripcion = 'Recepcionista' AND Fun_Detalle IN ('ABM HUESPED','CREAR Y MODIFICAR RESERVAS','CANCELAR RESERVAS','REGISTRAR ESTADIA','REGISTRAR CONSUMIBLE','FACTURAR ESTADIA')
		
	INSERT INTO LALENIRO.Rol_has_Funcionalidad(Rol_Rol_Codigo,Funcionalidad_Fun_Codigo)
	SELECT Rol_Codigo,Fun_Codigo FROM LALENIRO.ROL, LALENIRO.Funcionalidad WHERE Rol_Descripcion = 'Guest' AND Fun_Detalle IN ('CREAR Y MODIFICAR RESERVAS','CANCELAR RESERVAS')

	-- INSERT DE USUARIO ADMIN
	INSERT INTO LALENIRO.Usuario(Usu_Username, Usu_Password)
	VALUES('admin', HashBytes('SHA2_256','w23e'))
	
	INSERT INTO LALENIRO.Usuario_has_Rol(Rol_Rol_Codigo,Usuario_Usu_Username)
	SELECT Rol_Codigo,Usu_Username FROM LALENIRO.ROL, LALENIRO.Usuario WHERE Usu_Username = 'admin' AND Rol_Descripcion = 'Administrador General'


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
		
			/*insert ESTADIA */

		INSERT INTO LALENIRO.Estadia(Est_Codigo,Est_Cant_Noches,Est_Fecha_CheckIn,Est_Fecha_CheckOut) 
		SELECT DISTINCT Reserva_Codigo, Estadia_Cant_Noches,CONVERT(datetime,Estadia_Fecha_Inicio),
						CONVERT(datetime,DATEADD(DAY,Estadia_Cant_Noches, Estadia_Fecha_Inicio))
		FROM gd_esquema.Maestra where Estadia_Cant_Noches is not null and Factura_Total is null 
		
		--SELECT* FROM LALENIRO.Estadia

			/*insert factura */

		INSERT INTO LALENIRO.Factura (Fac_Nro, Fac_Fecha,Fact_Total, Fact_Precio_Estadia, Estadia_Est_Codigo)
		SELECT Factura_Nro,CONVERT(datetime,Factura_Fecha),Factura_Total,Item_Factura_Cantidad,Reserva_Codigo
		from gd_esquema.Maestra where Consumible_Codigo is null and Factura_Nro is not null

		
		--SELECT* FROM LALENIRO.Factura

			/*insert item_factura */

		INSERT INTO LALENIRO.Item_Factura (Item_Factura_Cantidad,Item_Factura_Monto,Consumible_Consu_Codigo,Factura_Fac_Numero)
		SELECT sum(Item_Factura_Monto) ,Item_Factura_Cantidad,Consumible_Codigo , Factura_Nro
		from gd_esquema.Maestra where Consumible_Codigo is not null
		group by Item_Factura_Cantidad,Consumible_Codigo , Factura_Nro

		
		--SELECT* FROM LALENIRO.Item_Factura


			/*insert estadia_has_consumible */

		INSERT INTO LALENIRO.Estadia_has_Consumible(Estadia_Est_Codigo,Consumible_Consu_Codigo)
		SELECT distinct Reserva_Codigo, Consumible_Codigo
		from gd_esquema.Maestra where Consumible_Codigo is not null 
		
		--SELECT* FROM LALENIRO.Estadia_has_Consumible

			/*insert habitacion has huesped has reserva */
		
		INSERT INTO LALENIRO.Habitacion_has_Huesped_has_Reserva (Habitacion_Hab_Numero,Habitacion_Hotel_Hot_Codigo,Reserva_Res_Codigo,Huesped_hues_Codigo)
		SELECT M.Habitacion_Numero,
				(SELECT Hot_Codigo FROM LALENIRO.Hotel JOIN LALENIRO.Direccion ON (Direccion_Dir_Codigo = Dir_Codigo) 
				 WHERE M.Hotel_Calle = Dir_Calle AND M.Hotel_Nro_Calle = Dir_Nro_Calle AND M.Hotel_Ciudad = Dir_Ciudad),
			   M.Reserva_Codigo,
			   (SELECT hues_Codigo FROM LALENIRO.Huesped WHERE M.Cliente_Pasaporte_Nro = Hues_NroIdentificacion AND M.Cliente_Mail = Hues_Mail AND M.Cliente_Fecha_Nac = Hues_Fecha_Nacimiento )
		from gd_esquema.Maestra M
		where M.Estadia_Fecha_Inicio is null 

		--SELECT* FROM LALENIRO.Habitacion_has_Huesped_has_Reserva 


		
END
GO


------------------------------FOREING KEYS------------------------------

ALTER TABLE [LALENIRO].[Usuario_has_Rol] ADD FOREIGN KEY ([Rol_Rol_Codigo]) REFERENCES [LALENIRO].[Rol]
ALTER TABLE [LALENIRO].[Usuario_has_Rol] ADD FOREIGN KEY ([Usuario_Usu_Username]) REFERENCES [LALENIRO].[Usuario]

ALTER TABLE [LALENIRO].[Usuario] ADD FOREIGN KEY ([Direccion_Dir_Codigo]) REFERENCES [LALENIRO].[Direccion]

ALTER TABLE [LALENIRO].[Huesped] ADD FOREIGN KEY ([Direccion_Dir_Codigo]) REFERENCES [LALENIRO].[Direccion]

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

EXECUTE LALENIRO.PR_INSERT_DATOS_INICIALES
EXECUTE LALENIRO.PR_MIGRACION
GO
