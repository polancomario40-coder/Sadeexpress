-- ==============================================================================================
-- SCRIPT: 03_script_AUTO_ENVIAR_ECF_y_Permisos.sql
-- PROPOSITO:
-- 1. Parametro AUTO_ENVIAR_ECF en Defaults (0 = Manual por boton, 1 = Automatico al guardar).
-- 2. Registrar objetos de seguridad ENVIARECF y EDITARECF en SegObjeto (Categoria: Ventas).
-- 3. Asignar permisos en SegPermiso a todos los grupos para ENVIARECF y EDITARECF.
-- ==============================================================================================

-- 1. Parametro AUTO_ENVIAR_ECF en Defaults
IF NOT EXISTS (SELECT 1 FROM Defaults WHERE Clave = 'AUTO_ENVIAR_ECF')
BEGIN
    INSERT INTO Defaults (Clave, Valor, Descripcion, Categoria, UidClave, Tipo)
    VALUES ('AUTO_ENVIAR_ECF', CAST('0' AS sql_variant), 'Enviar ECF automaticamente al guardar (1=Si, 0=No por boton)', 'Facturacion', NEWID(), 'C');
    PRINT 'Parametro AUTO_ENVIAR_ECF creado con valor 0 (Manual por boton).';
END
ELSE
BEGIN
    PRINT 'Parametro AUTO_ENVIAR_ECF ya existe en Defaults.';
END
GO

-- 2. Asegurar que existan en SegObjeto bajo la categoria 'Ventas'
IF NOT EXISTS (SELECT 1 FROM SegObjeto WHERE idSegObjeto = 'ENVIARECF')
BEGIN
    INSERT INTO SegObjeto (idSegObjeto, SegObjeto, Categoria, TipoObjeto)
    VALUES ('ENVIARECF', 'Enviar ECF', 'Ventas', 'Pantalla');
    PRINT 'SegObjeto ENVIARECF registrado en categoria Ventas.';
END
ELSE
BEGIN
    UPDATE SegObjeto
    SET Categoria = 'Ventas', SegObjeto = 'Enviar ECF'
    WHERE idSegObjeto = 'ENVIARECF';
END
GO

IF NOT EXISTS (SELECT 1 FROM SegObjeto WHERE idSegObjeto = 'EDITARECF')
BEGIN
    INSERT INTO SegObjeto (idSegObjeto, SegObjeto, Categoria, TipoObjeto)
    VALUES ('EDITARECF', 'Editar ECF', 'Ventas', 'Pantalla');
    PRINT 'SegObjeto EDITARECF registrado en categoria Ventas.';
END
ELSE
BEGIN
    UPDATE SegObjeto
    SET Categoria = 'Ventas', SegObjeto = 'Editar ECF'
    WHERE idSegObjeto = 'EDITARECF';
END
GO

-- 3. Asignar permisos de ENVIARECF y EDITARECF en SegPermiso a todos los grupos de usuarios
-- (Para que usuarios de Ventas, Administracion, Sistemas, etc. tengan permiso dm.PuedeEnviarEcfs = True)
DECLARE @Grupo varchar(30)
DECLARE curGrupos CURSOR FOR 
    SELECT idSegUserGrp FROM SegUserGrp WHERE esGrupo = 1

OPEN curGrupos
FETCH NEXT FROM curGrupos INTO @Grupo

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Permiso ENVIARECF
    IF NOT EXISTS (SELECT 1 FROM SegPermiso WHERE idSegObjeto = 'ENVIARECF' AND idSegUserGrp = @Grupo)
    BEGIN
        INSERT INTO SegPermiso (idSegObjeto, idSegUserGrp, Agregar, Editar, Borrar, Imprimir, Abrir, Anular, Aprobar)
        VALUES ('ENVIARECF', @Grupo, 6, 6, 6, 6, 6, 6, 6);
    END
    ELSE
    BEGIN
        UPDATE SegPermiso
        SET Abrir = 6, Editar = 6, Agregar = 6, Imprimir = 6
        WHERE idSegObjeto = 'ENVIARECF' AND idSegUserGrp = @Grupo;
    END

    -- Permiso EDITARECF
    IF NOT EXISTS (SELECT 1 FROM SegPermiso WHERE idSegObjeto = 'EDITARECF' AND idSegUserGrp = @Grupo)
    BEGIN
        INSERT INTO SegPermiso (idSegObjeto, idSegUserGrp, Agregar, Editar, Borrar, Imprimir, Abrir, Anular, Aprobar)
        VALUES ('EDITARECF', @Grupo, 6, 6, 6, 6, 6, 6, 6);
    END
    ELSE
    BEGIN
        UPDATE SegPermiso
        SET Abrir = 6, Editar = 6, Agregar = 6, Imprimir = 6
        WHERE idSegObjeto = 'EDITARECF' AND idSegUserGrp = @Grupo;
    END

    FETCH NEXT FROM curGrupos INTO @Grupo
END

CLOSE curGrupos
DEALLOCATE curGrupos
PRINT 'Permisos de SegPermiso actualizados para todos los grupos.';
GO
