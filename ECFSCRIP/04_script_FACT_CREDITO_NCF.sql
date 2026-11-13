-- ==============================================================================
-- Script: 04_script_FACT_CREDITO_NCF.sql
-- Proposito: 
--  Registrar o actualizar el parametro 'FACT_CREDITO_NCF' en la tabla Defaults:
--  - Valor = '1' (por defecto): Las facturas a credito generan NCF fiscal directamente.
--  - Valor = '0': Las facturas a credito generan PROFORMA (flujo de conduce sin NCF).
-- Compatible con SQL Server 2008 / 2012 / 2014 / 2016 / 2017 / 2019 / 2022.
-- ==============================================================================

SET NOCOUNT ON;
PRINT 'Iniciando configuracion de parametro FACT_CREDITO_NCF...';
GO

IF NOT EXISTS (SELECT 1 FROM dbo.Defaults WHERE Clave = 'FACT_CREDITO_NCF')
BEGIN
    PRINT 'Insertando parametro FACT_CREDITO_NCF en Defaults (Valor = 1)...';
    INSERT INTO dbo.Defaults (Clave, Valor, Descripcion, Categoria, UidClave)
    VALUES (
        'FACT_CREDITO_NCF', 
        CAST('1' AS sql_variant),
        'Generar NCF en facturas a credito (1=Si, 0=Proforma)', 
        'Ventas', 
        NEWID()
    );
    PRINT 'Parametro FACT_CREDITO_NCF creado con exito.';
END
ELSE
BEGIN
    PRINT 'Actualizando parametro FACT_CREDITO_NCF en Defaults (Valor = 1)...';
    UPDATE dbo.Defaults 
    SET Valor = CAST('1' AS sql_variant),
        Descripcion = 'Generar NCF en facturas a credito (1=Si, 0=Proforma)',
        Categoria = ISNULL(Categoria, 'Ventas')
    WHERE Clave = 'FACT_CREDITO_NCF';
    PRINT 'Parametro FACT_CREDITO_NCF actualizado con exito.';
END
GO

PRINT '==============================================================================';
PRINT 'Configuracion completada exitosamente.';
PRINT '==============================================================================';
GO
