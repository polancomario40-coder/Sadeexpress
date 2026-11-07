-- ============================================================================
-- SCRIPT 05: DATOS Y CONFIGURACIONES DE PARAMETROS PARA ECF
-- Sistema: SADE Express ECF
-- Descripcion: Inserta comprobantes Serie E en CompFiscal, configura la tabla
--              Defaults (UsarEcf, URLs de validacion DGII), estados y tipos de clientes
-- ============================================================================

PRINT '------------------------------------------------------------';
PRINT 'INICIANDO PASO 05: Datos y Configuraciones Iniciales ECF';
PRINT '------------------------------------------------------------';
GO

-- 1. Estados de envio en ecf_status_envio
IF NOT EXISTS (SELECT 1 FROM dbo.ecf_status_envio WHERE Id = 'PENDIENTE')
    INSERT INTO dbo.ecf_status_envio (Id, PendEnvio, PendValidacion) VALUES ('PENDIENTE', 1, 1);

IF NOT EXISTS (SELECT 1 FROM dbo.ecf_status_envio WHERE Id = 'ENVIADO')
    INSERT INTO dbo.ecf_status_envio (Id, PendEnvio, PendValidacion) VALUES ('ENVIADO', 0, 1);

IF NOT EXISTS (SELECT 1 FROM dbo.ecf_status_envio WHERE Id = 'ACEPTADO')
    INSERT INTO dbo.ecf_status_envio (Id, PendEnvio, PendValidacion) VALUES ('ACEPTADO', 0, 0);

IF NOT EXISTS (SELECT 1 FROM dbo.ecf_status_envio WHERE Id = 'RECHAZADO')
    INSERT INTO dbo.ecf_status_envio (Id, PendEnvio, PendValidacion) VALUES ('RECHAZADO', 0, 0);

IF NOT EXISTS (SELECT 1 FROM dbo.ecf_status_envio WHERE Id = 'CONDICIONAL')
    INSERT INTO dbo.ecf_status_envio (Id, PendEnvio, PendValidacion) VALUES ('CONDICIONAL', 0, 0);

PRINT 'Estados en ecf_status_envio verificados.';
GO

-- 2. Parametros en tabla Defaults
-- 2.1 UsarEcf
IF NOT EXISTS (SELECT 1 FROM dbo.Defaults WHERE Clave = 'UsarEcf')
    INSERT INTO dbo.Defaults (Clave, Valor, Descripcion, Tipo)
    VALUES ('UsarEcf', 1, 'Activar Facturacion Electronica (1=Si, 0=No)', 'N');
ELSE
    UPDATE dbo.Defaults SET Valor = 1 WHERE Clave = 'UsarEcf';
PRINT 'Default UsarEcf configurado en 1.';
GO

-- 2.2 NEW_VER_NCF
IF NOT EXISTS (SELECT 1 FROM dbo.Defaults WHERE Clave = 'NEW_VER_NCF')
    INSERT INTO dbo.Defaults (Clave, Valor, Descripcion, Tipo)
    VALUES ('NEW_VER_NCF', 1, 'Uso de nueva version de NCF', 'N');
ELSE
    UPDATE dbo.Defaults SET Valor = 1 WHERE Clave = 'NEW_VER_NCF';
PRINT 'Default NEW_VER_NCF configurado en 1.';
GO

-- 2.3 URL_VALQR (DGII Test / Produccion)
IF NOT EXISTS (SELECT 1 FROM dbo.Defaults WHERE Clave = 'URL_VALQR')
    INSERT INTO dbo.Defaults (Clave, Valor, Descripcion, Tipo)
    VALUES ('URL_VALQR', 'https://ecf.dgii.gov.do/testecf/consultatimbre', 'URL de validacion QR DGII', 'C');
ELSE
BEGIN
    IF (SELECT CAST(Valor AS VARCHAR(200)) FROM dbo.Defaults WHERE Clave = 'URL_VALQR') IS NULL 
       OR (SELECT CAST(Valor AS VARCHAR(200)) FROM dbo.Defaults WHERE Clave = 'URL_VALQR') = ''
        UPDATE dbo.Defaults SET Valor = 'https://ecf.dgii.gov.do/testecf/consultatimbre' WHERE Clave = 'URL_VALQR';
END
PRINT 'Default URL_VALQR verificado.';
GO

-- 2.4 ECF_URLQR_FC (Factura de Consumo DGII)
IF NOT EXISTS (SELECT 1 FROM dbo.Defaults WHERE Clave = 'ECF_URLQR_FC')
    INSERT INTO dbo.Defaults (Clave, Valor, Descripcion, Tipo)
    VALUES ('ECF_URLQR_FC', 'https://fc.dgii.gov.do/testecf/ConsultaTimbreFC', 'URL de validacion QR DGII Factura Consumo', 'C');
ELSE
BEGIN
    IF (SELECT CAST(Valor AS VARCHAR(200)) FROM dbo.Defaults WHERE Clave = 'ECF_URLQR_FC') IS NULL 
       OR (SELECT CAST(Valor AS VARCHAR(200)) FROM dbo.Defaults WHERE Clave = 'ECF_URLQR_FC') = ''
        UPDATE dbo.Defaults SET Valor = 'https://fc.dgii.gov.do/testecf/ConsultaTimbreFC' WHERE Clave = 'ECF_URLQR_FC';
END
PRINT 'Default ECF_URLQR_FC verificado.';
GO

-- 3. Tipos de Comprobantes Fiscales Electronicos (Serie E)
IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '31' AND Terminal = 'default')
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '31', 'E31', NEWID(), 'Credito Fiscal E.', 10);

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '32' AND Terminal = 'default')
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '32', 'E32', NEWID(), 'Factura de Consumo E.', 10);

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '33' AND Terminal = 'default')
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '33', 'E33', NEWID(), 'Nota de Debito E.', 10);

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '34' AND Terminal = 'default')
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '34', 'E34', NEWID(), 'Nota de Credito E.', 10);

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '41' AND Terminal = 'default')
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '41', 'E41', NEWID(), 'Compras Electronico', 10);

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '43' AND Terminal = 'default')
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '43', 'E43', NEWID(), 'Gastos Menores E.', 10);

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '44' AND Terminal = 'default')
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '44', 'E44', NEWID(), 'Regimenes Especiales E.', 10);

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '45' AND Terminal = 'default')
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '45', 'E45', NEWID(), 'Gubernamental Elect.', 10);

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '46' AND Terminal = 'default')
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '46', 'E46', NEWID(), 'Exportaciones Electronico', 10);

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '47' AND Terminal = 'default')
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '47', 'E47', NEWID(), 'Pagos al Exterior E.', 10);

UPDATE dbo.CompFiscal SET Longitud = 10 WHERE Serie = 'E';
UPDATE dbo.CompFiscal SET Longitud = 8 WHERE Serie = 'B';
PRINT 'Comprobantes Serie E verificados en CompFiscal.';
GO

-- 4. Secuencias iniciales para Serie E (para pruebas si no existen)
INSERT INTO dbo.CompFiscalSecuencia (idCompFiscalSecuencia, uidCompFiscal, Secuencia, SecuenciaFinal, ValidoHasta, FechaRegistro, inactivo, reorden)
SELECT 
    NEWID(), 
    c.uidCompFiscal, 
    1, 
    100, 
    '2030-12-31', 
    GETDATE(), 
    0, 
    0
FROM dbo.CompFiscal c
WHERE c.Serie = 'E'
  AND NOT EXISTS (
      SELECT 1 FROM dbo.CompFiscalSecuencia s 
      WHERE s.uidCompFiscal = c.uidCompFiscal
  );
PRINT 'Secuencias de CompFiscal para Serie E verificadas.';
GO

-- 5. Tipos de Clientes para ECF en ClienteTipo
DECLARE @maxId INT;
SELECT @maxId = ISNULL(MAX(idClienteTipo), 0) FROM dbo.ClienteTipo;

IF NOT EXISTS (SELECT 1 FROM dbo.ClienteTipo WHERE TipoCompFiscal = '31')
BEGIN
    SET @maxId = @maxId + 1;
    INSERT INTO dbo.ClienteTipo (idClienteTipo, ClienteTipo, NoPagaItbis, UidClienteTipo, TipoCompFiscal) 
    VALUES (@maxId, 'Empresas Electronico', 0, NEWID(), '31');
    PRINT 'Insertado ClienteTipo: Empresas Electronico (31)';
END

IF NOT EXISTS (SELECT 1 FROM dbo.ClienteTipo WHERE TipoCompFiscal = '32')
BEGIN
    SET @maxId = @maxId + 1;
    INSERT INTO dbo.ClienteTipo (idClienteTipo, ClienteTipo, NoPagaItbis, UidClienteTipo, TipoCompFiscal) 
    VALUES (@maxId, 'Consumidor Electronico', 0, NEWID(), '32');
    PRINT 'Insertado ClienteTipo: Consumidor Electronico (32)';
END

IF NOT EXISTS (SELECT 1 FROM dbo.ClienteTipo WHERE TipoCompFiscal = '45')
BEGIN
    SET @maxId = @maxId + 1;
    INSERT INTO dbo.ClienteTipo (idClienteTipo, ClienteTipo, NoPagaItbis, UidClienteTipo, TipoCompFiscal) 
    VALUES (@maxId, 'Gubernamentales Electronico', 0, NEWID(), '45');
    PRINT 'Insertado ClienteTipo: Gubernamentales Electronico (45)';
END
GO

PRINT '------------------------------------------------------------';
PRINT 'PASO 05 COMPLETADO SATISFACTORIAMENTE';
PRINT '------------------------------------------------------------';
GO
