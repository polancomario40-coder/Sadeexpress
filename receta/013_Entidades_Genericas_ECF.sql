-- =============================================
-- MIGRATION 013: Crear Entidades Genericas ECF
-- =============================================

-- 1. Crear Cliente Generico ECF
IF NOT EXISTS (SELECT 1 FROM dbo.Cliente WHERE Cliente = 'CLIENTE GENERICO ECF')
BEGIN
    DECLARE @maxIdCliente INT;
    SELECT @maxIdCliente = ISNULL(MAX(idCliente), 0) + 1 FROM dbo.Cliente;

    -- Tomamos el cliente generico (3) como plantilla
    INSERT INTO dbo.Cliente (
        idCliente, Cliente, Contacto, LimiteCredito, idClienteTipo, 
        idClienteStatus, UidCliente, Descuento, Condicion, idCondicion, 
        PorcAumento, NoRecibirConduces, RequiereOrdenCliente, 
        Monto_Bono_Mortero, OCRequerida
    )
    SELECT TOP 1 
        @maxIdCliente, 'CLIENTE GENERICO ECF', Contacto, LimiteCredito, idClienteTipo, 
        idClienteStatus, NEWID(), Descuento, Condicion, idCondicion, 
        PorcAumento, NoRecibirConduces, RequiereOrdenCliente, 
        Monto_Bono_Mortero, OCRequerida
    FROM dbo.Cliente
    WHERE idCliente = 3;

    PRINT 'CLIENTE GENERICO ECF creado.';
END
ELSE
BEGIN
    PRINT 'CLIENTE GENERICO ECF ya existe.';
END

-- 2. Crear Suplidor Generico ECF
IF NOT EXISTS (SELECT 1 FROM dbo.cxpSuplidores WHERE Nombre = 'SUPLIDOR GENERICO ECF')
BEGIN
    -- Tomamos un suplidor cualquiera como plantilla
    INSERT INTO dbo.cxpSuplidores (
        Nombre, TipoSuplidor, idMoneda, MostrarEnCXP, PedirNCF, TipoImpuesto, UidcxpSuplidores
    )
    SELECT TOP 1 
        'SUPLIDOR GENERICO ECF', TipoSuplidor, idMoneda, 1, 'N', 
        (SELECT TOP 1 TipoImpuesto FROM dbo.ocTiposImpuestos WHERE Descripcion = 'ITBIS Compra'),
        NEWID()
    FROM dbo.cxpSuplidores;

    PRINT 'SUPLIDOR GENERICO ECF creado.';
END
ELSE
BEGIN
    PRINT 'SUPLIDOR GENERICO ECF ya existe.';
END
GO
