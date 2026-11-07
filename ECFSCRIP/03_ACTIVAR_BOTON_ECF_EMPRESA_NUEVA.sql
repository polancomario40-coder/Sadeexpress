-- ==============================================================================================
-- SCRIPT: 03_ACTIVAR_BOTON_ECF_EMPRESA_NUEVA.sql
-- PROPOSITO:
-- Activar el funcionamiento de Facturacion Electronica (e-CF) y el boton "Send ECF" en una
-- empresa/base de datos nueva, agrupando todos los objetos y parametros en la categoria "ECF".
--
-- INSTRUCCIONES:
-- 1. Abra este script en SQL Server Management Studio (SSMS).
-- 2. Asegurese de seleccionar la base de datos de la empresa nueva en la barra superior (USE [TuBaseDatos]).
-- 3. Ejecute el script completo (F5).
-- 4. Cierre y vuelva a abrir SADE para recargar los permisos de usuario.
-- ==============================================================================================

-- 1. COLUMNAS REQUERIDAS EN LA TABLA FACTURA
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('Factura') AND name = 'StatusEcf')
BEGIN
    ALTER TABLE Factura ADD StatusEcf varchar(20) NOT NULL CONSTRAINT DF_Factura_StatusEcf DEFAULT ('PENDIENTE');
    PRINT 'Columna StatusEcf agregada a Factura.';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('Factura') AND name = 'CodigoSeguridadEcf')
BEGIN
    ALTER TABLE Factura ADD CodigoSeguridadEcf varchar(20) NULL;
    PRINT 'Columna CodigoSeguridadEcf agregada a Factura.';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('Factura') AND name = 'PendEnvioEcf')
BEGIN
    ALTER TABLE Factura ADD PendEnvioEcf bit NOT NULL CONSTRAINT DF_Factura_PendEnvioEcf DEFAULT (1);
    PRINT 'Columna PendEnvioEcf agregada a Factura.';
END
GO

-- 2. PARAMETROS EN LA TABLA DEFAULTS (Categoria: ECF)
-- AUTO_ENVIAR_ECF: 0 = Manual (por boton Send ECF), 1 = Automatico al guardar la factura
IF NOT EXISTS (SELECT 1 FROM Defaults WHERE Clave = 'AUTO_ENVIAR_ECF')
BEGIN
    INSERT INTO Defaults (Clave, Valor, Descripcion, Categoria, UidClave, Tipo)
    VALUES ('AUTO_ENVIAR_ECF', CAST('0' AS sql_variant), 'Enviar ECF automaticamente al guardar (1=Si, 0=No por boton)', 'ECF', NEWID(), 'C');
    PRINT 'Parametro AUTO_ENVIAR_ECF configurado en 0 (Manual por boton) bajo categoria ECF.';
END
ELSE
BEGIN
    UPDATE Defaults
    SET Categoria = 'ECF'
    WHERE Clave = 'AUTO_ENVIAR_ECF';
END
GO

-- USAR_ECF: 1 = Activa el modulo de Facturacion Electronica en SADE
IF NOT EXISTS (SELECT 1 FROM Defaults WHERE Clave = 'USAR_ECF')
BEGIN
    INSERT INTO Defaults (Clave, Valor, Descripcion, Categoria, UidClave, Tipo)
    VALUES ('USAR_ECF', CAST('1' AS sql_variant), 'Activar uso de Facturacion Electronica e-CF (1=Si, 0=No)', 'ECF', NEWID(), 'C');
    PRINT 'Parametro USAR_ECF configurado en 1 bajo categoria ECF.';
END
ELSE
BEGIN
    UPDATE Defaults
    SET Categoria = 'ECF'
    WHERE Clave = 'USAR_ECF';
END
GO

-- 3. REGISTRO DE OBJETOS DE SEGURIDAD EN SegObjeto (Categoria: ECF)
IF NOT EXISTS (SELECT 1 FROM SegObjeto WHERE idSegObjeto = 'ENVIARECF')
BEGIN
    INSERT INTO SegObjeto (idSegObjeto, SegObjeto, Categoria, TipoObjeto)
    VALUES ('ENVIARECF', 'Enviar ECF', 'ECF', 'Pantalla');
    PRINT 'Objeto de seguridad ENVIARECF registrado en categoria ECF.';
END
ELSE
BEGIN
    UPDATE SegObjeto
    SET Categoria = 'ECF', SegObjeto = 'Enviar ECF'
    WHERE idSegObjeto = 'ENVIARECF';
END
GO

IF NOT EXISTS (SELECT 1 FROM SegObjeto WHERE idSegObjeto = 'EDITARECF')
BEGIN
    INSERT INTO SegObjeto (idSegObjeto, SegObjeto, Categoria, TipoObjeto)
    VALUES ('EDITARECF', 'Editar ECF', 'ECF', 'Pantalla');
    PRINT 'Objeto de seguridad EDITARECF registrado en categoria ECF.';
END
ELSE
BEGIN
    UPDATE SegObjeto
    SET Categoria = 'ECF', SegObjeto = 'Editar ECF'
    WHERE idSegObjeto = 'EDITARECF';
END
GO

-- 4. ASIGNACION DE PERMISOS EN SegPermiso A TODOS LOS GRUPOS DE USUARIOS
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
PRINT 'Permisos ENVIARECF y EDITARECF asignados a todos los grupos de usuarios.';
GO

-- 5. PROCEDIMIENTO RSEcfStatus (Para consultar y refrescar el estado del comprobante)
IF NOT EXISTS (SELECT 1 FROM sys.procedures WHERE name = 'RSEcfStatus')
BEGIN
    EXEC('
    CREATE PROCEDURE RSEcfStatus (@id uniqueidentifier, @Emisor varchar(16))
    AS
    BEGIN
        IF EXISTS (SELECT 1 FROM ECFWorker..ecf_comprobante ecf WHERE ecf.Referencia=@id)
        BEGIN
            SELECT StatusEcf, UltError, CodigoSeguridadEcf FROM ECFWorker..ecf_comprobante ecf WHERE ecf.Referencia=@id
        END
        ELSE
        BEGIN
            SELECT ''PENDIENTE'' AS StatusEcf, '''' AS UltError, '''' AS CodigoSeguridadEcf
        END
    END
    ');
    PRINT 'Procedimiento RSEcfStatus creado.';
END
GO

PRINT '================================================================';
PRINT 'Configuracion completada con exito en categoria ECF.';
PRINT 'Recuerde reiniciar SADE para cargar los nuevos permisos de usuario.';
PRINT '================================================================';
GO
