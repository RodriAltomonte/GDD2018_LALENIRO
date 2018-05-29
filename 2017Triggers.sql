------------------------------TRIGGERS------------------------------

CREATE TRIGGER LOSNOOBS.TR_CLIENTE_USUARIO
ON LOSNOOBS.CLIENTE
INSTEAD OF INSERT
AS
BEGIN TRY
	INSERT INTO LOSNOOBS.USUARIO (usuario_username, usuario_password, usuario_activo, usuario_intentosLogin)
	SELECT I.cliente_telefono, HashBytes('SHA2_256',convert(varchar(255),I.cliente_telefono)), 1, 0
	FROM inserted I 
	WHERE I.cliente_telefono NOT IN(SELECT U2.usuario_username FROM LOSNOOBS.USUARIO U2)
	
	INSERT INTO LOSNOOBS.ROL_POR_USUARIO (rol_id,usuario_id)
	SELECT 2, U.usuario_id 
	FROM inserted I JOIN LOSNOOBS.USUARIO U ON(U.usuario_username = I.cliente_telefono) 
	WHERE NOT EXISTS (SELECT 1 FROM LOSNOOBS.ROL_POR_USUARIO RU WHERE RU.rol_id = 2 AND RU.usuario_id = U.usuario_id)
	
	INSERT INTO LOSNOOBS.CLIENTE(cliente_apellido,cliente_direccion,cliente_dni,cliente_fechaNacimiento,cliente_habilitado,cliente_mail,cliente_nombre,cliente_telefono,usuario_id)
	SELECT cliente_apellido,cliente_direccion,cliente_dni,cliente_fechaNacimiento,cliente_habilitado,cliente_mail,cliente_nombre,cliente_telefono,(SELECT usuario_id FROM LOSNOOBS.USUARIO WHERE usuario_username = I.cliente_telefono) FROM inserted I
END TRY
BEGIN CATCH
  SELECT 'ERROR', ERROR_MESSAGE()
END CATCH
GO

CREATE TRIGGER LOSNOOBS.TR_CHOFER_USUARIO
ON LOSNOOBS.CHOFER
INSTEAD OF INSERT
AS
BEGIN TRY
	INSERT INTO LOSNOOBS.USUARIO(usuario_username, usuario_password, usuario_activo, usuario_intentosLogin)
	SELECT I.chofer_telefono,HashBytes('SHA2_256',convert(varchar(255),I.chofer_telefono)),1,0 FROM inserted I WHERE I.chofer_telefono NOT IN(SELECT U2.usuario_username FROM LOSNOOBS.USUARIO U2)
	
	INSERT INTO LOSNOOBS.ROL_POR_USUARIO(rol_id,usuario_id)
	SELECT 3,U.usuario_id FROM inserted I JOIN LOSNOOBS.USUARIO U ON(U.usuario_username = I.chofer_telefono) WHERE NOT EXISTS (SELECT 1 FROM LOSNOOBS.ROL_POR_USUARIO RU WHERE RU.rol_id = 3 AND RU.usuario_id = U.usuario_id)
	
	INSERT INTO LOSNOOBS.CHOFER(chofer_apellido,chofer_direccion,chofer_dni,chofer_fechaNacimiento,chofer_habilitado,chofer_mail,chofer_nombre,chofer_telefono,usuario_id)
	SELECT chofer_apellido,chofer_direccion,chofer_dni,chofer_fechaNacimiento,chofer_habilitado,chofer_mail,chofer_nombre,chofer_telefono,(SELECT usuario_id FROM LOSNOOBS.USUARIO WHERE usuario_username = I.chofer_telefono) FROM inserted I
END TRY
BEGIN CATCH
  SELECT 'ERROR', ERROR_MESSAGE()
END CATCH
GO
