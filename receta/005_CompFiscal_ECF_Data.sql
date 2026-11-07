-- =============================================
-- MIGRATION 005: Insertar Tipos de Comprobantes Fiscales Electronicos (Serie E)
-- =============================================


IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '31' AND Terminal = 'default')
BEGIN
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '31', 'E31', NEWID(), 'Credito Fiscal E.', 10);
    PRINT 'Insertado: Credito Fiscal E.';
END
ELSE
BEGIN
    PRINT 'Ya existe: Credito Fiscal E.';
END
GO

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '32' AND Terminal = 'default')
BEGIN
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '32', 'E32', NEWID(), 'Factura de Consumo E.', 10);
    PRINT 'Insertado: Factura de Consumo E.';
END
ELSE
BEGIN
    PRINT 'Ya existe: Factura de Consumo E.';
END
GO

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '33' AND Terminal = 'default')
BEGIN
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '33', 'E33', NEWID(), 'Nota de Debito E.', 10);
    PRINT 'Insertado: Nota de Debito E.';
END
ELSE
BEGIN
    PRINT 'Ya existe: Nota de Debito E.';
END
GO

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '34' AND Terminal = 'default')
BEGIN
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '34', 'E34', NEWID(), 'Nota de Credito E.', 10);
    PRINT 'Insertado: Nota de Credito E.';
END
ELSE
BEGIN
    PRINT 'Ya existe: Nota de Credito E.';
END
GO

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '41' AND Terminal = 'default')
BEGIN
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '41', 'E41', NEWID(), 'Compras Electronico', 10);
    PRINT 'Insertado: Compras Electronico';
END
ELSE
BEGIN
    PRINT 'Ya existe: Compras Electronico';
END
GO

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '43' AND Terminal = 'default')
BEGIN
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '43', 'E43', NEWID(), 'Gastos Menores E.', 10);
    PRINT 'Insertado: Gastos Menores E.';
END
ELSE
BEGIN
    PRINT 'Ya existe: Gastos Menores E.';
END
GO

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '44' AND Terminal = 'default')
BEGIN
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '44', 'E44', NEWID(), 'Regimenes Especiales E.', 10);
    PRINT 'Insertado: Regimenes Especiales E.';
END
ELSE
BEGIN
    PRINT 'Ya existe: Regimenes Especiales E.';
END
GO

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '45' AND Terminal = 'default')
BEGIN
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '45', 'E45', NEWID(), 'Gubernamental Elect.', 10);
    PRINT 'Insertado: Gubernamental Elect.';
END
ELSE
BEGIN
    PRINT 'Ya existe: Gubernamental Elect.';
END
GO

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '46' AND Terminal = 'default')
BEGIN
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '46', 'E46', NEWID(), 'Exportaciones E.', 10);
    PRINT 'Insertado: Exportaciones E.';
END
ELSE
BEGIN
    PRINT 'Ya existe: Exportaciones Electronico';
END
GO

IF NOT EXISTS (SELECT 1 FROM dbo.CompFiscal WHERE Serie = 'E' AND TipoNCF = '47' AND Terminal = 'default')
BEGIN
    INSERT INTO dbo.CompFiscal (Terminal, Serie, Division, Sucursal, Caja, TipoNCF, Contador, uidCompFiscal, Descripcion, Longitud)
    VALUES ('default', 'E', '0', '1', '0', '47', 'E47', NEWID(), 'Pagos al Exterior E.', 10);
    PRINT 'Insertado: Pagos al Exterior E.';
END
ELSE
BEGIN
    PRINT 'Ya existe: Pagos al Exterior E.';
END
GO
