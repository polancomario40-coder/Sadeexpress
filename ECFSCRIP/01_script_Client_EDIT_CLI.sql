-- ==============================================================================
-- Script: script_Client_EDIT_CLI.sql
-- Proposito: 
--  1. Modificar columnas 'Telefono' y 'fecnac' en tabla Cliente para permitir NULL.
--  2. Limpiar datos existentes en Cliente con telefonos vacios/mascaras o fechas dummy a NULL.
--  3. Registrar/actualizar el parametro 'Client_EDIT_CLI' en la tabla Defaults:
--     - En uFactura: Valor = '1' -> Permite editar el nombre del cliente en la factura.
--     - En uCliente: Valor = '0' -> Permite guardar nulo en telefono y fecha de nacimiento.
-- Compatible con SQL Server 2008 / 2012 / 2014 / 2016 / 2017 / 2019 / 2022.
-- Go

go
CREATE PROCEDURE [dbo].[findClienteTel](@Telefono varchar(20),@FecNac datetime) AS  
  
select * from cliente where Telefono = @Telefono and fecnac=@FecNac  
go


SET NOCOUNT ON;
PRINT 'Iniciando actualizacion para Client_EDIT_CLI...';
GO

-- 1. Modificar columna Telefono en Cliente para permitir NULL
IF EXISTS (
    SELECT 1 
    FROM sys.columns c 
    INNER JOIN sys.tables t ON c.object_id = t.object_id 
    WHERE t.name = 'Cliente' 
      AND c.name = 'Telefono' 
      AND c.is_nullable = 0
)
BEGIN
    PRINT 'Modificando columna Telefono en Cliente para permitir NULL...';
    ALTER TABLE dbo.Cliente ALTER COLUMN Telefono VARCHAR(20) NULL;
    PRINT 'Columna Telefono modificada con exito.';
END
ELSE
BEGIN
    PRINT 'La columna Telefono ya permite NULL o no existe.';
END
GO

-- 2. Modificar columna fecnac en Cliente para permitir NULL
IF EXISTS (
    SELECT 1 
    FROM sys.columns c 
    INNER JOIN sys.tables t ON c.object_id = t.object_id 
    WHERE t.name = 'Cliente' 
      AND c.name = 'fecnac' 
      AND c.is_nullable = 0
)
BEGIN
    PRINT 'Modificando columna fecnac en Cliente para permitir NULL...';
    ALTER TABLE dbo.Cliente ALTER COLUMN fecnac DATETIME NULL;
    PRINT 'Columna fecnac modificada con exito.';
END
ELSE
BEGIN
    PRINT 'La columna fecnac ya permite NULL o no existe.';
END
GO

-- 3. Limpiar registros existentes en Cliente con telefonos vacios, mascaras o fechas por defecto
PRINT 'Actualizando registros existentes con datos vacios en Cliente a NULL...';

UPDATE dbo.Cliente
SET Telefono = NULL
WHERE LTRIM(RTRIM(ISNULL(Telefono, ''))) = '' 
   OR Telefono = '   -   -    ' 
   OR Telefono = '--' 
   OR Telefono = '000-000-0000';

UPDATE dbo.Cliente
SET fecnac = NULL
WHERE fecnac IS NOT NULL 
  AND fecnac <= '1900-01-01 00:00:00.000';

PRINT 'Datos en Cliente actualizados.';
GO

-- 4. Registrar o actualizar el parametro 'Client_EDIT_CLI' en la tabla Defaults
IF NOT EXISTS (SELECT 1 FROM dbo.Defaults WHERE Clave = 'Client_EDIT_CLI')
BEGIN
    PRINT 'Insertando parametro Client_EDIT_CLI en Defaults...';
    INSERT INTO dbo.Defaults (Clave, Valor, Descripcion, Categoria, Tipo, UidClave)
    VALUES (
        'Client_EDIT_CLI', 
        CAST('1' AS sql_variant),  -- '1' = Permite editar cliente en factura; '0' = Permite nulo en tel/fecnac en uCliente
        'Permite editar cliente en fact (1=Si) / Permite nulo tel-fecnac (0=Si)', 
        'VENTAS', 
        'A', 
        NEWID()
    );
    PRINT 'Parametro Client_EDIT_CLI creado con exito.';
END
ELSE
BEGIN
    PRINT 'Actualizando parametro Client_EDIT_CLI en Defaults...';
    UPDATE dbo.Defaults 
    SET Valor = CAST('1' AS sql_variant),
        Descripcion = 'Permite editar cliente en fact (1=Si) / Permite nulo tel-fecnac (0=Si)',
        Categoria = ISNULL(Categoria, 'VENTAS')
    WHERE Clave = 'Client_EDIT_CLI';
    PRINT 'Parametro Client_EDIT_CLI actualizado con exito.';
END
GO

PRINT '==============================================================================';
PRINT 'Actualizacion completada exitosamente.';
PRINT '==============================================================================';
GO
