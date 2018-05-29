------------------------------FUNCIONALIDADES------------------------------

CREATE PROCEDURE [LOSNOOBS].PR_DATOS_INSERT_DATOS_INICIALES
AS
BEGIN
	INSERT INTO [LOSNOOBS].FUNCIONALIDAD(funcionalidad_descripcion) VALUES('Btn_Automovil')
	INSERT INTO [LOSNOOBS].FUNCIONALIDAD(funcionalidad_descripcion) VALUES('Btn_Chofer')
	INSERT INTO [LOSNOOBS].FUNCIONALIDAD(funcionalidad_descripcion) VALUES('Btn_ABM_Cliente')
	INSERT INTO [LOSNOOBS].FUNCIONALIDAD(funcionalidad_descripcion) VALUES('Btn_Facturacion')
	INSERT INTO [LOSNOOBS].FUNCIONALIDAD(funcionalidad_descripcion) VALUES('Btn_Listado')
	INSERT INTO [LOSNOOBS].FUNCIONALIDAD(funcionalidad_descripcion) VALUES('Btn_Registro_Viajes')
	INSERT INTO [LOSNOOBS].FUNCIONALIDAD(funcionalidad_descripcion) VALUES('Btn_Rendicion_Viajes')
	INSERT INTO [LOSNOOBS].FUNCIONALIDAD(funcionalidad_descripcion) VALUES('Btn_Rol')
	INSERT INTO [LOSNOOBS].FUNCIONALIDAD(funcionalidad_descripcion) VALUES('Btn_Turno')

	-- ROL 
	INSERT INTO [LOSNOOBS].ROL (rol_nombre) values('Administrador')
	INSERT INTO [LOSNOOBS].ROL (rol_nombre) values('Cliente')
	INSERT INTO [LOSNOOBS].ROL (rol_nombre) values('Chofer')

	-- USUARIO
	INSERT INTO LOSNOOBS.USUARIO(usuario_username, usuario_password, usuario_activo)
	VALUES('admin', HashBytes('SHA2_256','w23e'), 1)
	INSERT INTO LOSNOOBS.ROL_POR_USUARIO VALUES(1,1)
	INSERT INTO LOSNOOBS.ROL_POR_USUARIO VALUES(2,1)
	INSERT INTO LOSNOOBS.ROL_POR_USUARIO VALUES(3,1)
	
	EXECUTE [LOSNOOBS].[SP_Update_Funcionalidad_Por_Rol] 1,'Btn_Automovil',1
	EXECUTE [LOSNOOBS].[SP_Update_Funcionalidad_Por_Rol] 1,'Btn_Chofer',1
	EXECUTE [LOSNOOBS].[SP_Update_Funcionalidad_Por_Rol] 1,'Btn_ABM_Cliente',1
	EXECUTE [LOSNOOBS].[SP_Update_Funcionalidad_Por_Rol] 1,'Btn_Listado',1
	EXECUTE [LOSNOOBS].[SP_Update_Funcionalidad_Por_Rol] 1,'Btn_Registro_Viajes',1
	EXECUTE [LOSNOOBS].[SP_Update_Funcionalidad_Por_Rol] 1,'Btn_Rendicion_Viajes',1
	EXECUTE [LOSNOOBS].[SP_Update_Funcionalidad_Por_Rol] 1,'Btn_Facturacion',1
	EXECUTE [LOSNOOBS].[SP_Update_Funcionalidad_Por_Rol] 1,'Btn_Rol',1
	EXECUTE [LOSNOOBS].[SP_Update_Funcionalidad_Por_Rol] 1,'Btn_Turno',1
END
GO	
