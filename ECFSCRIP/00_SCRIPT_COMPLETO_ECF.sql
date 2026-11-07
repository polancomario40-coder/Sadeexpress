-- ============================================================================
-- SCRIPT COMPLETO DEFINITIVO: MIGRACION TOTAL A FACTURACION ELECTRONICA (ECF)
-- Sistema: SADE Express ECF
-- Incluye:
--   1. Tablas y Campos ECF (Factura, Cxc, Devolucion, cxpDocumentos, bcoGastosMenores, etc.)
--   2. Funciones ECF (dbo.UrlEncode, dbo.ecf_buildQR, dbo.LimpiarRNC, etc.)
--   3. Todos los Procedimientos del Sistema ECF (Ventas, Facturacion, CxC, CxP)
--      - ClienteAct con soporte total de ClienteTipo y TipoCompFiscal
--      - ecf_cxc_send y ecf_dev_send con auto-resolución de NCF Modificado y validación estricta
--      - ecf_fact_send con soporte de reenvío seguro
--      - cxpGuardarDocumento completo
--      - RPTFactura y RPTCxc con codigos QR y datos DGII
--   4. Configuracion de Parametros Defaults, CompFiscal Serie E y Secuencias
-- ============================================================================

SET NOCOUNT ON;
GO

PRINT '============================================================';
PRINT 'INICIANDO MIGRACION COMPLETA A FACTURACION ELECTRONICA (ECF)';
PRINT '============================================================';
GO

update defaults set valor='V.51' where clave='Version'
go

-- ============================================================================
-- SCRIPT 01: CREACION DE TABLAS Y AGREGAR CAMPOS ECF
-- Sistema: SADE Express ECF
-- Descripcion: Crea tablas de control ECF y agrega de forma segura e idempotente
--              todas las columnas requeridas (incluyendo TipoDocumento, FecSaldo, etc.)
-- ============================================================================

PRINT '------------------------------------------------------------';
PRINT 'INICIANDO PASO 01: Creacion de Tablas y Columnas ECF';
PRINT '------------------------------------------------------------';
GO

-- 1. Tablas de control ECF
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'ecf_status_envio')
BEGIN
    CREATE TABLE dbo.ecf_status_envio (
        [Id] varchar(16) NOT NULL,
        [PendEnvio] bit NOT NULL,
        [PendValidacion] bit NOT NULL,
        CONSTRAINT [PK_ecf_status_envio] PRIMARY KEY ([Id])
    );
    PRINT 'Tabla creada: ecf_status_envio';
END
ELSE
BEGIN
    PRINT 'Tabla ya existe: ecf_status_envio';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'ecf_compfiscal_log')
BEGIN
    CREATE TABLE dbo.ecf_compfiscal_log (
        [Id] int IDENTITY(1,1) NOT NULL,
        [CompFiscal] varchar(20) NULL,
        [trackId] varchar(50) NULL,
        [Hashval] varchar(50) NULL,
        [Descripcion] varchar(2000) NULL,
        [ReferenciaId] uniqueidentifier NULL,
        [TipoRef] varchar(16) NULL,
        [FechaFirma] datetime NULL,
        CONSTRAINT [PK_ecf_compfiscal_log] PRIMARY KEY ([Id])
    );
    PRINT 'Tabla creada: ecf_compfiscal_log';
END
ELSE
BEGIN
    PRINT 'Tabla ya existe: ecf_compfiscal_log';
END
GO

-- 2. Asegurar que Defaults.Valor sea sql_variant
IF EXISTS (SELECT 1 FROM sys.columns c JOIN sys.types ty ON c.user_type_id = ty.user_type_id 
           WHERE c.object_id = OBJECT_ID('dbo.Defaults') AND c.name = 'Valor' AND ty.name <> 'sql_variant')
BEGIN
    ALTER TABLE dbo.Defaults ALTER COLUMN Valor sql_variant;
    PRINT 'Columna Defaults.Valor actualizada a sql_variant';
END
GO

-- 3. Campos en Factura (Incluye TipoDocumento y FecSaldo)
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'TipoDocumento')
BEGIN
    ALTER TABLE dbo.Factura ADD [TipoDocumento] varchar(16) NULL;
    PRINT 'Agregado Factura.TipoDocumento';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'FecSaldo')
BEGIN
    ALTER TABLE dbo.Factura ADD [FecSaldo] datetime NULL;
    PRINT 'Agregado Factura.FecSaldo';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'TrackId')
BEGIN
    ALTER TABLE dbo.Factura ADD [TrackId] varchar(100) NULL;
    PRINT 'Agregado Factura.TrackId';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'UltError')
BEGIN
    ALTER TABLE dbo.Factura ADD [UltError] varchar(2000) NULL;
    PRINT 'Agregado Factura.UltError';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'HoraEnvio')
BEGIN
    ALTER TABLE dbo.Factura ADD [HoraEnvio] datetime NULL;
    PRINT 'Agregado Factura.HoraEnvio';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'PendValidacion')
BEGIN
    ALTER TABLE dbo.Factura ADD [PendValidacion] bit NOT NULL DEFAULT 1;
    PRINT 'Agregado Factura.PendValidacion';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'PendEnvioEcf')
BEGIN
    ALTER TABLE dbo.Factura ADD [PendEnvioEcf] bit NOT NULL DEFAULT 1;
    PRINT 'Agregado Factura.PendEnvioEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'TipoNcf')
BEGIN
    ALTER TABLE dbo.Factura ADD [TipoNcf] varchar(3) NULL;
    PRINT 'Agregado Factura.TipoNcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'CodigoSeguridadEcf')
BEGIN
    ALTER TABLE dbo.Factura ADD [CodigoSeguridadEcf] varchar(20) NULL;
    PRINT 'Agregado Factura.CodigoSeguridadEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'FechaFirmaDigital')
BEGIN
    ALTER TABLE dbo.Factura ADD [FechaFirmaDigital] datetime NULL;
    PRINT 'Agregado Factura.FechaFirmaDigital';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'StatusEcf')
BEGIN
    ALTER TABLE dbo.Factura ADD [StatusEcf] varchar(16) NOT NULL DEFAULT 'PENDIENTE';
    PRINT 'Agregado Factura.StatusEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'computer')
BEGIN
    ALTER TABLE dbo.Factura ADD [computer] varchar(100) NULL;
    PRINT 'Agregado Factura.computer';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'cliente')
BEGIN
    ALTER TABLE dbo.Factura ADD [cliente] varchar(100) NULL;
    PRINT 'Agregado Factura.cliente';
END
GO

-- 4. Campos en Cxc
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'TrackId')
BEGIN
    ALTER TABLE dbo.Cxc ADD [TrackId] varchar(100) NULL;
    PRINT 'Agregado Cxc.TrackId';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'UltError')
BEGIN
    ALTER TABLE dbo.Cxc ADD [UltError] varchar(2000) NULL;
    PRINT 'Agregado Cxc.UltError';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'HoraEnvio')
BEGIN
    ALTER TABLE dbo.Cxc ADD [HoraEnvio] datetime NULL;
    PRINT 'Agregado Cxc.HoraEnvio';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'PendValidacion')
BEGIN
    ALTER TABLE dbo.Cxc ADD [PendValidacion] bit NOT NULL DEFAULT 0;
    PRINT 'Agregado Cxc.PendValidacion';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'PendEnvioEcf')
BEGIN
    ALTER TABLE dbo.Cxc ADD [PendEnvioEcf] bit NOT NULL DEFAULT 0;
    PRINT 'Agregado Cxc.PendEnvioEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'TipoNcf')
BEGIN
    ALTER TABLE dbo.Cxc ADD [TipoNcf] varchar(3) NULL;
    PRINT 'Agregado Cxc.TipoNcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'CodigoSeguridadEcf')
BEGIN
    ALTER TABLE dbo.Cxc ADD [CodigoSeguridadEcf] varchar(20) NULL;
    PRINT 'Agregado Cxc.CodigoSeguridadEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'FechaFirmaDigital')
BEGIN
    ALTER TABLE dbo.Cxc ADD [FechaFirmaDigital] datetime NULL;
    PRINT 'Agregado Cxc.FechaFirmaDigital';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'FechaVenceNCF')
BEGIN
    ALTER TABLE dbo.Cxc ADD [FechaVenceNCF] datetime NULL;
    PRINT 'Agregado Cxc.FechaVenceNCF';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'FechaNcfModificado')
BEGIN
    ALTER TABLE dbo.Cxc ADD [FechaNcfModificado] datetime NULL;
    PRINT 'Agregado Cxc.FechaNcfModificado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'NcfModificado')
BEGIN
    ALTER TABLE dbo.Cxc ADD [NcfModificado] varchar(19) NULL;
    PRINT 'Agregado Cxc.NcfModificado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'TipoNcfModificado')
BEGIN
    ALTER TABLE dbo.Cxc ADD [TipoNcfModificado] varchar(2) NULL;
    PRINT 'Agregado Cxc.TipoNcfModificado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'StatusEcf')
BEGIN
    ALTER TABLE dbo.Cxc ADD [StatusEcf] varchar(16) NOT NULL DEFAULT 'PENDIENTE';
    PRINT 'Agregado Cxc.StatusEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'itbi')
BEGIN
    ALTER TABLE dbo.Cxc ADD [itbi] numeric(18,2) NULL;
    PRINT 'Agregado Cxc.itbi';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'cliente')
BEGIN
    ALTER TABLE dbo.Cxc ADD [cliente] varchar(100) NULL;
    PRINT 'Agregado Cxc.cliente';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'idTipoIngreso')
BEGIN
    ALTER TABLE dbo.Cxc ADD [idTipoIngreso] int NULL;
    PRINT 'Agregado Cxc.idTipoIngreso';
END
GO

-- 5. Campos en Devolucion
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'CompFiscal')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [CompFiscal] varchar(19) NULL;
    PRINT 'Agregado Devolucion.CompFiscal';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'NcfModificado')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [NcfModificado] varchar(19) NULL;
    PRINT 'Agregado Devolucion.NcfModificado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'FechaNcfModificado')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [FechaNcfModificado] datetime NULL;
    PRINT 'Agregado Devolucion.FechaNcfModificado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'TrackId')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [TrackId] varchar(100) NULL;
    PRINT 'Agregado Devolucion.TrackId';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'UltError')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [UltError] varchar(2000) NULL;
    PRINT 'Agregado Devolucion.UltError';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'HoraEnvio')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [HoraEnvio] datetime NULL;
    PRINT 'Agregado Devolucion.HoraEnvio';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'PendValidacion')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [PendValidacion] bit NOT NULL DEFAULT 1;
    PRINT 'Agregado Devolucion.PendValidacion';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'PendEnvioEcf')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [PendEnvioEcf] bit NOT NULL DEFAULT 1;
    PRINT 'Agregado Devolucion.PendEnvioEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'TipoNcf')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [TipoNcf] varchar(3) NULL;
    PRINT 'Agregado Devolucion.TipoNcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'CodigoSeguridadEcf')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [CodigoSeguridadEcf] varchar(20) NULL;
    PRINT 'Agregado Devolucion.CodigoSeguridadEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'FechaFirmaDigital')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [FechaFirmaDigital] datetime NULL;
    PRINT 'Agregado Devolucion.FechaFirmaDigital';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'FechaVenceNCF')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [FechaVenceNCF] datetime NULL;
    PRINT 'Agregado Devolucion.FechaVenceNCF';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'StatusEcf')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [StatusEcf] varchar(16) NOT NULL DEFAULT 'PENDIENTE';
    PRINT 'Agregado Devolucion.StatusEcf';
END
GO

-- 6. Campos en cxpDocumentos
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'PendValidacion')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [PendValidacion] bit NOT NULL DEFAULT 0;
    PRINT 'Agregado cxpDocumentos.PendValidacion';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'PendEnvioEcf')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [PendEnvioEcf] bit NOT NULL DEFAULT 0;
    PRINT 'Agregado cxpDocumentos.PendEnvioEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'CodigoSeguridadEcf')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [CodigoSeguridadEcf] varchar(20) NULL;
    PRINT 'Agregado cxpDocumentos.CodigoSeguridadEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'FechaFirmaDigital')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [FechaFirmaDigital] datetime NULL;
    PRINT 'Agregado cxpDocumentos.FechaFirmaDigital';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'FechaVenceNCF')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [FechaVenceNCF] datetime NULL;
    PRINT 'Agregado cxpDocumentos.FechaVenceNCF';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'CompFiscalModificado')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [CompFiscalModificado] varchar(19) NULL;
    PRINT 'Agregado cxpDocumentos.CompFiscalModificado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'FechaCompFiscalModificado')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [FechaCompFiscalModificado] datetime NULL;
    PRINT 'Agregado cxpDocumentos.FechaCompFiscalModificado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'IdClaseGastoModificado')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [IdClaseGastoModificado] varchar(16) NULL;
    PRINT 'Agregado cxpDocumentos.IdClaseGastoModificado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'StatusEcf')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [StatusEcf] varchar(16) NOT NULL DEFAULT 'PENDIENTE';
    PRINT 'Agregado cxpDocumentos.StatusEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'TipoNcf')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [TipoNcf] varchar(3) NULL;
    PRINT 'Agregado cxpDocumentos.TipoNcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'TrackId')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [TrackId] varchar(100) NULL;
    PRINT 'Agregado cxpDocumentos.TrackId';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'UltError')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [UltError] varchar(2000) NULL;
    PRINT 'Agregado cxpDocumentos.UltError';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'HoraEnvio')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [HoraEnvio] datetime NULL;
    PRINT 'Agregado cxpDocumentos.HoraEnvio';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'Usuario')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [Usuario] varchar(50) NULL;
    PRINT 'Agregado cxpDocumentos.Usuario';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'FechaRegistro')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [FechaRegistro] datetime NOT NULL DEFAULT getdate();
    PRINT 'Agregado cxpDocumentos.FechaRegistro';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'RetenerTotalFactura')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [RetenerTotalFactura] bit NOT NULL DEFAULT 0;
    PRINT 'Agregado cxpDocumentos.RetenerTotalFactura';
END
GO

-- 7. Campos en bcoGastosMenores y bcoGastosMenoresDet
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'TrackId')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [TrackId] varchar(100) NULL;
    PRINT 'Agregado bcoGastosMenores.TrackId';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'UltError')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [UltError] varchar(2000) NULL;
    PRINT 'Agregado bcoGastosMenores.UltError';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'HoraEnvio')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [HoraEnvio] datetime NULL;
    PRINT 'Agregado bcoGastosMenores.HoraEnvio';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'PendValidacion')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [PendValidacion] bit NOT NULL DEFAULT 1;
    PRINT 'Agregado bcoGastosMenores.PendValidacion';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'PendEnvioEcf')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [PendEnvioEcf] bit NOT NULL DEFAULT 1;
    PRINT 'Agregado bcoGastosMenores.PendEnvioEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'CodigoSeguridadEcf')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [CodigoSeguridadEcf] varchar(20) NULL;
    PRINT 'Agregado bcoGastosMenores.CodigoSeguridadEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'FechaFirmaDigital')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [FechaFirmaDigital] datetime NULL;
    PRINT 'Agregado bcoGastosMenores.FechaFirmaDigital';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'FechaVenceNCF')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [FechaVenceNCF] datetime NULL;
    PRINT 'Agregado bcoGastosMenores.FechaVenceNCF';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'TipoNcf')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [TipoNcf] varchar(3) NULL;
    PRINT 'Agregado bcoGastosMenores.TipoNcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'StatusEcf')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [StatusEcf] varchar(16) NOT NULL DEFAULT 'PENDIENTE';
    PRINT 'Agregado bcoGastosMenores.StatusEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'IdPagoForma')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [IdPagoForma] int NULL;
    PRINT 'Agregado bcoGastosMenores.IdPagoForma';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'FechaRegistro')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [FechaRegistro] datetime NULL;
    PRINT 'Agregado bcoGastosMenores.FechaRegistro';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'Cancelado')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [Cancelado] bit NOT NULL DEFAULT 0;
    PRINT 'Agregado bcoGastosMenores.Cancelado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenoresDet') AND name = 'Referencia')
BEGIN
    ALTER TABLE dbo.bcoGastosMenoresDet ADD [Referencia] varchar(100) NULL;
    PRINT 'Agregado bcoGastosMenoresDet.Referencia';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenoresDet') AND name = 'idPartida')
BEGIN
    ALTER TABLE dbo.bcoGastosMenoresDet ADD [idPartida] varchar(16) NULL;
    PRINT 'Agregado bcoGastosMenoresDet.idPartida';
END
GO

-- 8. Campos en Cliente y ClienteTipo
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cliente') AND name = 'fecnac')
BEGIN
    ALTER TABLE dbo.Cliente ADD [fecnac] datetime NULL;
    PRINT 'Agregado Cliente.fecnac';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cliente') AND name = 'NoRecibirConduces')
BEGIN
    ALTER TABLE dbo.Cliente ADD [NoRecibirConduces] bit NULL DEFAULT 0;
    PRINT 'Agregado Cliente.NoRecibirConduces';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cliente') AND name = 'RequiereOrdenCliente')
BEGIN
    ALTER TABLE dbo.Cliente ADD [RequiereOrdenCliente] bit NULL DEFAULT 0;
    PRINT 'Agregado Cliente.RequiereOrdenCliente';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cliente') AND name = 'Monto_Bono_Mortero')
BEGIN
    ALTER TABLE dbo.Cliente ADD [Monto_Bono_Mortero] bit NULL DEFAULT 0;
    PRINT 'Agregado Cliente.Monto_Bono_Mortero';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cliente') AND name = 'OCRequerida')
BEGIN
    ALTER TABLE dbo.Cliente ADD [OCRequerida] bit NULL DEFAULT 0;
    PRINT 'Agregado Cliente.OCRequerida';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cliente') AND name = 'TipoNCFEmp')
BEGIN
    ALTER TABLE dbo.Cliente ADD [TipoNCFEmp] varchar(2) NULL;
    PRINT 'Agregado Cliente.TipoNCFEmp';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cliente') AND name = 'RNCEmP')
BEGIN
    ALTER TABLE dbo.Cliente ADD [RNCEmP] varchar(20) NULL;
    PRINT 'Agregado Cliente.RNCEmP';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cliente') AND name = 'cliente')
BEGIN
    ALTER TABLE dbo.Cliente ADD [cliente] varchar(100) NULL;
    PRINT 'Agregado Cliente.cliente';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.ClienteTipo') AND name = 'TipoCompFiscal')
BEGIN
    ALTER TABLE dbo.ClienteTipo ADD [TipoCompFiscal] char(2) NULL;
    PRINT 'Agregado ClienteTipo.TipoCompFiscal';
END
ELSE
BEGIN
    -- Asegurar tipo char(2) si fue creado como bit por error anterior
    ALTER TABLE dbo.ClienteTipo ALTER COLUMN [TipoCompFiscal] char(2) NULL;
    PRINT 'Actualizado ClienteTipo.TipoCompFiscal a char(2)';
END
GO

-- 9. Campos varios
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.CompFiscal') AND name = 'Longitud')
BEGIN
    ALTER TABLE dbo.CompFiscal ADD [Longitud] int NULL;
    PRINT 'Agregado CompFiscal.Longitud';
END
GO

UPDATE dbo.CompFiscal SET Longitud = 8 WHERE Serie = 'B' AND (Longitud IS NULL OR Longitud <> 8);
UPDATE dbo.CompFiscal SET Longitud = 10 WHERE Serie = 'E' AND (Longitud IS NULL OR Longitud <> 10);
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Configuracion') AND name = 'Ciudad')
BEGIN
    ALTER TABLE dbo.Configuracion ADD [Ciudad] varchar(200) NULL;
    PRINT 'Agregado Configuracion.Ciudad';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.FacturaDet') AND name = 'referencia')
BEGIN
    ALTER TABLE dbo.FacturaDet ADD [referencia] varchar(100) NULL;
    PRINT 'Agregado FacturaDet.referencia';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.FacturaDet') AND name = 'fecha')
BEGIN
    ALTER TABLE dbo.FacturaDet ADD [fecha] datetime NULL;
    PRINT 'Agregado FacturaDet.fecha';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cotizacion') AND name = 'CotizadoPor')
BEGIN
    ALTER TABLE dbo.Cotizacion ADD [CotizadoPor] bit NULL;
    PRINT 'Agregado Cotizacion.CotizadoPor';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cotizacion') AND name = 'cliente')
BEGIN
    ALTER TABLE dbo.Cotizacion ADD [cliente] varchar(100) NULL;
    PRINT 'Agregado Cotizacion.cliente';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.CotizacionDet') AND name = 'ServicioBombeo')
BEGIN
    ALTER TABLE dbo.CotizacionDet ADD [ServicioBombeo] bit NULL;
    PRINT 'Agregado CotizacionDet.ServicioBombeo';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Almacen') AND name = 'CerrarAlmacen')
BEGIN
    ALTER TABLE dbo.Almacen ADD [CerrarAlmacen] bit NULL;
    PRINT 'Agregado Almacen.CerrarAlmacen';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.PromovDet') AND name = 'idDevolucionDet')
BEGIN
    ALTER TABLE dbo.PromovDet ADD [idDevolucionDet] uniqueidentifier NULL;
    PRINT 'Agregado PromovDet.idDevolucionDet';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.tmp') AND name = 'codigo')
BEGIN
    ALTER TABLE dbo.tmp ADD [codigo] varchar(50) NULL;
    PRINT 'Agregado tmp.codigo';
END
GO

PRINT '------------------------------------------------------------';
PRINT 'PASO 01 COMPLETADO SATISFACTORIAMENTE';
PRINT '------------------------------------------------------------';
GO

GO
-- ============================================================================
-- SCRIPT 02: FUNCIONES PARA FACTURACION ELECTRONICA (ECF) Y QR
-- Sistema: SADE Express ECF
-- Descripcion: Define las funciones auxiliares de ECF y codificacion de URLs
--              para generacion de timbres QR segun especificacion DGII
-- ============================================================================

PRINT '------------------------------------------------------------';
PRINT 'INICIANDO PASO 02: Funciones ECF y Codificacion de Timbre';
PRINT '------------------------------------------------------------';
GO

-- 1. UrlEncode para codificacion de parametros URL (Codigo de Seguridad DGII)
CREATE OR ALTER FUNCTION dbo.UrlEncode(@url VARCHAR(MAX))
RETURNS VARCHAR(MAX)
AS
BEGIN
    IF @url IS NULL RETURN NULL;
    DECLARE @count INT = 1;
    DECLARE @len INT = LEN(@url);
    DECLARE @res VARCHAR(MAX) = '';
    DECLARE @char CHAR(1);
    DECLARE @ascii INT;
    
    WHILE @count <= @len
    BEGIN
        SET @char = SUBSTRING(@url, @count, 1);
        SET @ascii = ASCII(@char);
        IF (@ascii >= 48 AND @ascii <= 57) OR 
           (@ascii >= 65 AND @ascii <= 90) OR 
           (@ascii >= 97 AND @ascii <= 122) OR 
           @char IN ('-', '_', '.', '~')
        BEGIN
            SET @res = @res + @char;
        END
        ELSE
        BEGIN
            SET @res = @res + '%' + UPPER(SUBSTRING(sys.fn_varbintohexstr(CONVERT(VARBINARY(1), @char)), 3, 2));
        END
        SET @count = @count + 1;
    END
    RETURN @res;
END
GO
PRINT 'Funcion creada/actualizada: dbo.UrlEncode';
GO

-- 2. LimpiarRnc
CREATE OR ALTER FUNCTION dbo.LimpiarRnc (@str varchar(20))  
RETURNS varchar(20)  
AS  
BEGIN  
    DECLARE @instr varchar(20), @outstr varchar(20)  
    SET @outstr = ''  
    DECLARE @j int  
    SET @j = 1  
    SET @instr = @str  
    WHILE @j <= LEN(@instr) 
    BEGIN  
        IF SUBSTRING(@instr,@j,1) IN ('0','1','2','3','4','5','6','7','8','9','N','n','A','a','/') 
        BEGIN     
            SET @outstr = @outstr + SUBSTRING(@instr,@j,1)        
            SET @j = @j + 1  
        END  
        ELSE  
            SET @j = LEN(@instr) + 1  
    END  
    RETURN @outstr  
END
GO
PRINT 'Funcion creada/actualizada: dbo.LimpiarRnc';
GO

-- 3. RoundCorrect
CREATE OR ALTER FUNCTION dbo.RoundCorrect(@R DECIMAL(19,4))
RETURNS DECIMAL(19,2)
AS 
BEGIN
    DECLARE @tmp DECIMAL(19,2), @result DECIMAL(19,2) 
    SET @tmp = (@R * 100.00);
    SET @result = FLOOR(@tmp);
    IF (@tmp - @result) >= 0.5 
        SET @result = (@result + 1);
    RETURN (@result / 100.00);
END
GO
PRINT 'Funcion creada/actualizada: dbo.RoundCorrect';
GO

-- 4. svCadenaProductosCotizacion
CREATE OR ALTER FUNCTION dbo.svCadenaProductosCotizacion (@id UNIQUEIDENTIFIER) 
RETURNS VARCHAR(MAX)
AS 
BEGIN
    DECLARE @cad VARCHAR(MAX)
    SELECT @cad = ISNULL(@cad + ', ', '') + Producto
    FROM dbo.CotizacionDet WITH (NOLOCK) 
    WHERE idCotizacion = @id
    RETURN ISNULL(@cad, '')
END
GO
PRINT 'Funcion creada/actualizada: dbo.svCadenaProductosCotizacion';
GO

-- 5. AgregarDiasLaborales
CREATE OR ALTER FUNCTION dbo.AgregarDiasLaborales (@Add INT, @FechaInicial DATETIME)
RETURNS DATETIME
AS
BEGIN
    DECLARE @weeks INT, @libres INT, @Res DATETIME;
    IF DATEPART(WEEKDAY, @FechaInicial) = 7
        SET @FechaInicial = DATEADD(DAY, 2, @FechaInicial); 
    IF DATEPART(WEEKDAY, @FechaInicial) = 1
        SET @FechaInicial = DATEADD(DAY, 1, @FechaInicial); 
    SET @weeks = ( @Add / 5 ); 
    SET @Add += @weeks * 2; 
    IF ( DATEPART(WEEKDAY, @FechaInicial) > DATEPART(WEEKDAY, DATEADD(DAY, @Add, @FechaInicial)) )
        SET @Add += 2;
    IF ( DATEPART(WEEKDAY, DATEADD(DAY, @Add, @FechaInicial)) = 7 )
        SET @Add += 2; 
    SET @libres = 0;
    IF ( @libres > 0 )
        SET @Res = dbo.AgregarDiasLaborales(0, DATEADD(DAY, ( @libres + @Add ), @FechaInicial));				 
    ELSE
        SET @Res = DATEADD(DAY, @Add, @FechaInicial);
    RETURN @Res;
END
GO
PRINT 'Funcion creada/actualizada: dbo.AgregarDiasLaborales';
GO

-- 6. FtSemanaMes
CREATE OR ALTER FUNCTION dbo.FtSemanaMes (@fecha DATETIME)
RETURNS INT
AS
BEGIN
    DECLARE @semanas INT
    SELECT @semanas = DATEDIFF(week, dbo.StartOfTheMonth(@fecha), dbo.EndOfTheMonth(@fecha))  
    RETURN @semanas
END
GO
PRINT 'Funcion creada/actualizada: dbo.FtSemanaMes';
GO

-- 7. ecf_buildQRGM
CREATE OR ALTER FUNCTION dbo.ecf_buildQRGM (@id uniqueidentifier) 
RETURNS varchar(1000)    
AS 
BEGIN     
    DECLARE @url varchar(200)    
    SELECT @url = CONVERT(varchar(200), valor) FROM defaults WHERE clave = 'URL_VALQR'  
    IF @url IS NULL OR @url = ''
        SELECT @url = 'https://ecf.dgii.gov.do/testecf/consultatimbre'

    DECLARE @ncf varchar(20),    
            @itbis varchar(20),    
            @rncEmisor varchar(20),    
            @rncComprador varchar(20),    
            @emision varchar(20),    
            @TipoEcf varchar(20),    
            @secuencia varchar(30),    
            @fechafirma varchar(30),    
            @total varchar(20)    
      
    SELECT @rncEmisor = REPLACE(RNC, '-','') FROM configuracion     
    SELECT @total = CONVERT(varchar(20), SUM(Importe)) FROM bcoGastosMenoresDet WHERE GUIDDocumento = @id   
     
    SELECT @ncf = d.compfiscal,     
           @TipoEcf = '34',    
           @rncComprador = @rncEmisor,  
           @emision = CONVERT(varchar(20), d.Fecha, 105),    
           @secuencia = d.CodigoSeguridadEcf,
           @fechaFirma = CONVERT(varchar(20), FechaFirmaDigital, 105) + '%20' + CONVERT(varchar(20), FechaFirmaDigital, 108)   
    FROM bcoGastosMenores d WITH (NOLOCK)    
    WHERE GUIDDocumento = @id     
     
    IF ISNULL(@secuencia,'') = '' RETURN ''    
     
    RETURN @url + '?RncEmisor=' + @rncEmisor +    
           '&ENCF=' + @ncf +     
           '&FechaEmision=' + @emision +     
           '&MontoTotal=' + @total +     
           '&FechaFirma=' + @fechaFirma +       
           '&CodigoSeguridad=' + dbo.UrlEncode(@secuencia)    
END    
GO
PRINT 'Funcion creada/actualizada: dbo.ecf_buildQRGM';
GO

-- 8. ecf_buildQRFacturaConsumo
CREATE OR ALTER FUNCTION dbo.ecf_buildQRFacturaConsumo      
 (@ncf varchar(20),     
  @rncEmisor varchar(20),    
  @codSeg varchar(50),     
  @total decimal(19,2)) 
RETURNS varchar(1000)      
AS 
BEGIN       
    DECLARE @url varchar(200)        
    SELECT @url = CONVERT(varchar(200), valor) FROM defaults WHERE clave = 'ECF_URLQR_FC'    
    IF @url IS NULL OR @url = ''
        SELECT @url = 'https://fc.dgii.gov.do/testecf/ConsultaTimbreFC';      
      
    IF ISNULL(@codSeg,'') = '' RETURN ''      
       
    RETURN @url + '?RncEmisor=' + @rncEmisor +        
           '&ENCF=' + @ncf +         
           '&MontoTotal=' + CONVERT(varchar(20), @total) +         
           '&CodigoSeguridad=' + dbo.UrlEncode(@codSeg)    
END
GO
PRINT 'Funcion creada/actualizada: dbo.ecf_buildQRFacturaConsumo';
GO

-- 9. ecf_buildQR
CREATE OR ALTER FUNCTION dbo.ecf_buildQR    
 (    
  @ncf varchar(20),     
  @tipoEcf varchar(2),     
  @rncEmisor varchar(20),    
  @rncComprador varchar(20),     
  @emision datetime,     
  @codSeg varchar(50),     
  @fechaFirma datetime,    
  @total decimal(19,2)    
 )     
RETURNS varchar(1000)    
AS 
BEGIN     
    DECLARE @url varchar(200)      
    SELECT @url = CONVERT(varchar(200), valor) FROM defaults WHERE clave = 'URL_VALQR'    
    IF @url IS NULL OR @url = ''
        SELECT @url = 'https://ecf.dgii.gov.do/testecf/consultatimbre'
     
    IF ISNULL(@codSeg,'') = '' RETURN ''    
   
    IF @tipoEcf IN ('47', '43')    
        SET @rncComprador = ''    
     
    RETURN @url + '?RncEmisor=' + @rncEmisor +    
           CASE WHEN ISNULL(@rncComprador,'') = '' THEN '' ELSE '&RncComprador=' + @rncComprador END +    
           '&ENCF=' + @ncf +     
           '&FechaEmision=' + CONVERT(varchar(20), @emision, 105) +     
           '&MontoTotal=' + CONVERT(varchar(20), @total) +     
           '&FechaFirma=' + CONVERT(varchar(20), @fechaFirma, 105) + '%20' + CONVERT(varchar(20), @fechaFirma, 108) +       
           '&CodigoSeguridad=' + dbo.UrlEncode(@codSeg)    
END    
GO
PRINT 'Funcion creada/actualizada: dbo.ecf_buildQR';
GO

PRINT '------------------------------------------------------------';
PRINT 'PASO 02 COMPLETADO SATISFACTORIAMENTE';
PRINT '------------------------------------------------------------';
GO

GO
-- ============================================================
-- SOURCE FILE: Almacenes.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[Almacenes] AS    



    



  Select     



    idAlmacen,     



    Almacen , ContadorEntradas,  



    ContadorSalidas   , CerrarAlmacen 



  From    



    Almacen    



  Where    



    Activo = 1 --and idCompania = @idCompania    



  Order by    



    Almacen    



    
















GO

-- ============================================================
-- SOURCE FILE: ClienteAct.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ClienteAct] (@idCliente int) AS      
    SELECT  
        c.idCliente,       
        c.Cliente,       
        c.Contacto,       
        c.LimiteCredito,       
        cs.Activo,       
        c.idEmpleado,      
        c.Direccion,      
        c.Sector,      
        c.Ciudad,      
        c.Telefono,      
        ct.NoPagaItbis,      
        c.Descuento,      
        c.Fax,      
        c.eMail,      
        c.idListaPrecio,      
        c.Condicion,      
        c.RNC_Cedula,    
        c.idCondicion,  
        c.Notas,  
        ct.TipoCompFiscal,
        ct.ClienteTipo,
        c.idCuenta,      
        c.idAuxiliar,    
        c.IdMoneda,
        c.idClienteParent,
        c2.Cliente AS ClienteParent,
        c.TipoNCFEmp,
        c.Empresa,
        c.RNCEmP,
        c.OCRequerida,      
        c.Monto_Bono_Mortero,  
        c.NoRecibirConduces,  
        c.RequiereOrdenCliente
    FROM Cliente c      
    LEFT JOIN ClienteStatus cs ON c.idClienteStatus = cs.idClienteStatus      
    LEFT JOIN ClienteTipo ct ON c.idClienteTipo = ct.idClienteTipo      
    LEFT JOIN Cliente c2 ON c.idClienteParent = c2.idCliente
    WHERE c.idCliente = @idCliente
GO
PRINT 'Procedimiento creado/actualizado: dbo.ClienteAct';
GO

-- ============================================================
-- SOURCE FILE: Devolucion2CxC.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[Devolucion2CxC]



    (



     @idDevolucion UNIQUEIDENTIFIER



    )



AS



    DECLARE @TipoDoc VARCHAR(16),



        @Errores INT,



        @Resultado INT,



        @NCF VARCHAR(19),



        @hostname VARCHAR(40),



        @IdCliente INT,



        @VencimientoNCF DATETIME,



        @reorden BIT 







    SET @TipoDoc = 'NC' --select valor from defaults where clave = 'TIPO.DOC.FACTURA'



    SET @Errores = 0



    SET @Resultado = 0



    SET @hostname = HOST_NAME()



    SET @IdCliente = (SELECT    idCliente



                      FROM      Devolucion



                      WHERE     idDevolucion = @idDevolucion



                     )







    BEGIN TRAN



    EXEC svCompFiscal @NCF OUTPUT, @hostname, 'NC', @IdCliente,



        @VencimientoNCF OUTPUT, @reorden OUTPUT







    INSERT  INTO Cxc



            (idCxc,



             Cxc,



             idCliente,



             Cliente,



             idTipoDocumento,



             Valor,



             Fecha,



             Concepto,



             idCxcTipo,



             esCredito,



             Cancelado,



             Referencia,



             Usuario,



             Descuento,



             Condicion,



             Vencimiento,



             Tasa,



             idMoneda,



             CompFiscal



            )



            SELECT  f.idDevolucion,



                    f.Devolucion,



                    f.idCliente,



                    f.Cliente,



                    @TipoDoc,



                    f.Total,



                    f.Fecha,



                    'DEVOLUCION ' + f.Devolucion,



                    1, --idcxcTipo



                    1, --esCredito



                    0, --cancelado



                    f.idDevolucion,



                    f.Usuario,



                    0.00,



                    0,



                    f.Fecha,



                    f.Tasa,



                    f.idMoneda,



                    @NCF



            FROM    Devolucion f



            WHERE   f.idDevolucion = @idDevolucion







    SET @Errores = @@Error



    IF @Errores <> 0



        BEGIN



            ROLLBACK TRAN



            RETURN @Errores



        END











    DECLARE @NOAPP VARCHAR(16)



    SELECT  CONVERT(VARCHAR(16), Valor)



    FROM    Defaults



    WHERE   Clave = 'NO_APP_DEV'







    IF ISNULL(@NOAPP, '0') <> '1'



        BEGIN 



            INSERT  INTO CxcDet



                    (idCxcDet,



                     idCxc,



                     idCxcDebito,



                     Valor,



                     Fecha



                    )



                    SELECT  NEWID(),



                            f.idDevolucion,



                            f.idFactura,



                            f.Total,



                            f.Fecha



                    FROM    Devolucion f



                            JOIN Factura ff ON f.idFactura = ff.idFactura



                    WHERE   f.idDevolucion = @idDevolucion



                            AND ff.Credito = 1 







            SET @Errores = @@Error



            IF @Errores <> 0



                BEGIN



                    ROLLBACK TRAN



                    RETURN @Errores



                END



        END











    EXEC @Resultado = DevolucionDetCuenta @idDevolucion







    IF @Resultado <> 0



        BEGIN



            ROLLBACK TRAN



            RETURN @Resultado



        END







    IF @Errores <> 0



        BEGIN



            ROLLBACK TRAN



            RETURN 1



        END  







    COMMIT TRAN







    RETURN 0











/****** Object:  StoredProcedure [dbo].[FindDevolucion]    Script Date: 10/11/2025 01:16:36 p.m. ******/



DROP PROCEDURE [dbo].[FindDevolucion]




GO

-- ============================================================
-- SOURCE FILE: Factura2Dev.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[Factura2Dev](@idFactura uniqueidentifier, @idDevolucion uniqueidentifier) AS    



    



  SELECT         



    c.idFactura,     



    c.Factura,     



    c.idCliente,     



    c.Cliente,     



    c.Fecha,     



    c.Nota,     



    c.PorcDesc,    



    c.condicion,     



    c.idMoneda,    



    c.tasa,    



    cd.idFacturaDet,     



    cd.idProducto,     



    cd.Producto,     



    cd.Cantidad,     



    cd.Precio,     



    cd.Descuento,     



    cd.Itbis,     



    cd.LineTotal,   



    c.idAlmacen,



	c.CompFiscal as NCFModificar,



    isnull((Select sum(dd.devCantidad) 



     from devoluciondet dd join devolucion d on d.iddevolucion = dd.iddevolucion 



     where dd.idFacturadet = cd.idfacturadet and d.cancelado = 0 and d.iddevolucion <> isnull(@idDevolucion,'00000000-0000-0000-0000-000000000000')),0.00)  as CantidadDev     



  FROM             



    dbo.Factura c     



    INNER JOIN dbo.FacturaDet cd ON c.idFactura = cd.idFactura    



  WHERE    



    c.idFactura = @idFactura    



    and c.Cancelado = 0    



  











/****** Object:  StoredProcedure [dbo].[svDevolucion2ProMov]    Script Date: 11/11/2025 06:31:56 a.m. ******/



SET ANSI_NULLS ON




GO

-- ============================================================
-- SOURCE FILE: FindCliente.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[FindCliente](@Orden varchar(100)) AS  



SELECT    



  c.Telefono,   



  SUBSTRING(c.Cliente, 1, 50) AS Cliente,   



  c.idCliente,   



  c.RNC_Cedula,  



  (CASE WHEN cs.activo > 0 THEN 'Activo' ELSE 'Inactivo' END) AS Activo,   



  (CASE WHEN c.limiteCredito > 0 THEN 'Credito' ELSE 'No Credito' END) AS Credito,  



  CONVERT(varchar(20), Notas) AS Notas  



FROM Cliente c   



JOIN ClienteStatus cs ON c.idClienteStatus = cs.idClienteStatus   



ORDER BY 1;




GO

-- ============================================================
-- SOURCE FILE: FindDevolucion.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[FindDevolucion](@Orden varchar(10)) AS







Select 



  idDevolucion,



  Devolucion,



  Fecha, 



  Factura,



  convert(varchar(25), cliente) as Cliente 



From 



  Devolucion



Order by



  Fecha Desc



 








GO

-- ============================================================
-- SOURCE FILE: FindFactura.sql
-- ============================================================












--sp_helptext'findfactura'

CREATE OR ALTER PROCEDURE [dbo].[FindFactura](@Orden varchar(100), @Desde Datetime, @Hasta Datetime, @Credito bit) AS  



  



Select   



  idFactura,   



  Factura,   



  Fecha,   



  Referencia,   



  idCliente,   



  Total,   



  convert(varchar(25), cliente) as Cliente   



From   



  Factura   



Where   



  Fecha between @Desde and @Hasta  



  --and Credito = @Credito  



  --and 	  (Cliente like '%' + @Orden + '%'  



  --             or Factura like '%' + isnull(@Orden,'') + '%'  



  --             or Referencia like '%' + isnull(@Orden,'') + '%'  



  --             or convert(varchar(20),idCliente) like '%' + isnull(@Orden,'')



		--	   + '%'



		--	   )  



Order by  



  Fecha, Factura  




GO

-- ============================================================
-- SOURCE FILE: RPTCotizacion.sql
-- ============================================================








--select * from cotizacion order by fecha desc



--[RPTCotizacion] '0CB6A1EE-FF6C-4F0D-87D1-CABAE1FAF005'

CREATE OR ALTER PROCEDURE [dbo].[RPTCotizacion]



    (



     @idCotizacion UNIQUEIDENTIFIER



    )



AS



    DECLARE @RptCotizacion TABLE



        (



         IdCotizacion UNIQUEIDENTIFIER,



         Cotizacion VARCHAR(16),



         IdCotizacionStatus VARCHAR(32),



         CotizacionStatus VARCHAR(50),



         RNC_Cedula VARCHAR(20),



         Cliente VARCHAR(200),---------



         Email VARCHAR(100),



         IdVendedor INT,



         Contacto VARCHAR(200),



         Direccion VARCHAR(500),--------



         Sector VARCHAR(100),



         Ciudad VARCHAR(100),



         Telefono VARCHAR(20),



         Celular VARCHAR(29),



         SolicitadoPor VARCHAR(100),



         Empleado VARCHAR(80),



         TelefonoEmpleado VARCHAR(20),



         Fecha DATETIME,



         Referencia VARCHAR(50),



         Cancelado BIT,



         Credito BIT,



         Condicion VARCHAR(30),



         SubTotal NUMERIC(18, 2),



         Itbis NUMERIC(18, 2),



         Descuento NUMERIC(18, 2),



         Total NUMERIC(18, 2),



         Nota VARCHAR(2000),



         ValidoHasta DATETIME,



         IdClienteObra VARCHAR(50),----------



         IdMoneda INT,



         Moneda VARCHAR(20),



         IdCotizacionDet UNIQUEIDENTIFIER,



         DetIdProducto VARCHAR(25),



         DetProducto VARCHAR(120),



         DetCantidad NUMERIC(18, 2),



         DetPrecio NUMERIC(18, 2),



         DetServicioBombeo NUMERIC(18, 2),



         DetDescuento NUMERIC(18, 2),



         detDescuentoAdd DECIMAL(19, 2),



         detPrecioNeto DECIMAL(19, 2),



         DetItbis NUMERIC(18, 2),



         DetLineTotal NUMERIC(18, 2),



         NetLineTotal DECIMAL(19, 2),



         Dias INT,



         PrecioDia NUMERIC(18, 2),



         Especificacion VARCHAR(3000),



         coCompania VARCHAR(200),



         coDireccion VARCHAR(200),



         coTelefono VARCHAR(15),



         coFax VARCHAR(15),



         coEmail VARCHAR(100),



         coRNC VARCHAR(20),



         Fax VARCHAR(25),



         Linea INT,



         NumeroSuplidor VARCHAR(16),



         IdUnidad VARCHAR(16),



         SecuenciaDet INT IDENTITY(1, 1),



         Usuario VARCHAR(100),



         DireccionObra VARCHAR(500),



         SectorObra VARCHAR(100),



         TelefonoObra VARCHAR(10),



         Foto IMAGE,



         NotaReferencia VARCHAR(2000),



         CotizadoPor VARCHAR(100)



        )



	



    INSERT  INTO @RptCotizacion



            (IdCotizacion,



             Cotizacion,



             idCotizacionStatus,



             CotizacionStatus,



             RNC_Cedula,



             Cliente,



             EMail,



             IdVendedor,



             Contacto,



             Direccion,



             Sector,



             Ciudad,



             Telefono,



             Celular,



             SolicitadoPor,



             Empleado,



             TelefonoEmpleado,



             Fecha,



             Referencia,



             Cancelado,



             Credito,



             Condicion,



             SubTotal,



             Itbis,



             Descuento,



             Total,



             Nota,



             ValidoHasta,



             idClienteObra,



             idMoneda,



             Moneda,



             IdCotizacionDet,



             DetIdProducto,



             DetProducto,



             DetCantidad,



             DetServicioBombeo,



             DetPrecio,



             DetDescuento,



             detPrecioNeto,



             detDescuentoAdd,



             DetItbis,



             DetLineTotal,



             NetLineTotal,



             Dias,



             PrecioDia,



             Especificacion,



             coCompania,



             coDireccion,



             coTelefono,



             coFax,



             coEmail,



             coRNC,



             Fax,



             Linea,



             NumeroSuplidor,



             IdUnidad,



             Usuario,



             DireccionObra,



             SectorObra,



             TelefonoObra,



             NotaReferencia,



             CotizadoPor



	        )



            SELECT  c.idCotizacion,



                    c.Cotizacion,



                    cs.idCotizacionStatus,



                    cs.CotizacionStatus,



                    cl.RNC_Cedula,



                    CONVERT(VARCHAR(8), c.idCliente) + ' - ' + c.Cliente AS Cliente,



                    c.eMail,



                    c.idEmpleado AS idVendedor,



                    c.Contacto,



                    c.Direccion,



                    c.Sector,



                    c.Ciudad,



                    c.Telefono,



                    cl.Beeper,



                    c.SolicitadoPor,



                    e.Empleado,



                    e.Telefono,



                    c.Fecha,



                    c.Referencia,



                    c.Cancelado,



                    c.Credito,



					cl.idCondicion as condicion,



                    --(CASE WHEN c.Condicion <> 0 THEN 'CREDITO' ELSE 'CONTADO' END) AS Condicion,



                    c.SubTotal,



                    c.Itbis,



                    c.Descuento,



                    c.Total,



                    c.Nota,



                    c.ValidoHasta,



                    c.idClienteObra,



                    m.idMoneda,



                    m.Moneda,



                    cd.idCotizacionDet,



                    cd.idProducto AS DetidProducto,



                    cd.Producto AS DetProducto,



                    cd.Cantidad AS DetCantidad,



                    cd.ServicioBombeo AS DetServicioBombeo,



                    cd.Precio AS DetPrecio,



                    cd.Descuento AS DetDescuento,



                    DetPrecioNeto = CASE WHEN cd.Cantidad > 0



                                         THEN cd.Precio - (cd.Descuento



                                                           / cd.Cantidad)



                                         ELSE 0.00



                                    END,



                    cd.DescuentoAdd AS DetDescuentoAdd,



                    cd.Itbis AS DetITBIS,



                    cd.LineTotal AS DetLineTotal,



                    cd.LineTotal + (cd.Itbis) AS NetLineTotal,



                    cd.dias,



                    cd.PrecioDia,



                    LEFT(Esp.Especificacion, 2000),



                    co.Compania AS coCompania,



                    co.Direccion AS coDireccion,



                    co.Telefono AS coTelefono,



                    co.Fax AS coFax,



                    co.Email AS coEmail,



                    co.RNC AS coRNC,



                    c.Fax,



                    cd.Linea,



                    cl.NumeroSuplidor,



                    cd.idUnidad,



                    c.Usuario,



                    clo.DireccionObra,



                    clo.SectorObra,



                    clo.TelefonoObra,



                    c.NotaReferencia,



                    c.CotizadoPor



            FROM    dbo.Cotizacion c



                    INNER JOIN Moneda m ON c.idMoneda = m.idMoneda



                    INNER JOIN dbo.CotizacionDet cd ON c.idCotizacion = cd.idCotizacion



                    INNER JOIN Cliente cl ON (cl.idCliente = c.idCliente)



                    LEFT JOIN FacturaDetEspec Esp ON cd.idCotizacionDet = Esp.idFacturaDet



                    INNER JOIN dbo.CotizacionStatus cs ON c.idCotizacionStatus = cs.idCotizacionStatus



                    LEFT JOIN dbo.svEmpleado e ON c.idEmpleado = e.idEmpleado



                    CROSS JOIN dbo.Configuracion co --ON c.idCompania = co.idCompania     



                    LEFT JOIN ClienteObra clo ON clo.idClienteObra = c.idClienteObra



            WHERE   (c.idCotizacion = @idCotizacion)



            ORDER BY cd.Linea



	



    SELECT  IdCotizacion,



            Cotizacion,



            IdCotizacionStatus,



            CotizacionStatus,



            RNC_Cedula,



            Cliente,



            Email,



            Contacto,



            Direccion,



            Sector,



            Ciudad,



            Telefono,



            Celular,



            SolicitadoPor,



            Empleado,



            TelefonoEmpleado,



            Fecha,



            Referencia,



            Cancelado,



            Credito,



            Condicion,



            SubTotal,



            Itbis,



            Descuento,



            Total,



            Nota,



            ValidoHasta,



            IdClienteObra,



            IdMoneda,



            Moneda,



            IdCotizacionDet,



            DetIdProducto,



            DetProducto,



            DetCantidad,



            DetPrecio,



            DetDescuento,



            detDescuentoAdd,



            DetServicioBombeo,



            PrecioNeto = DetPrecio - ((DetDescuento + detDescuentoAdd)



                                      / DetCantidad),



            CASE WHEN DetLineTotal > 0



                 THEN (DetDescuento / DetLineTotal) * 100.00



                 ELSE 0.00



            END AS DetPorcDescuento,



            CASE WHEN DetLineTotal > 0



                 THEN (detDescuentoAdd / (DetLineTotal - DetDescuento))



                      * 100.00



                 ELSE 0.00



            END AS DetPorcDescuentoAdd,



            DetNeto = DetLineTotal - (DetDescuento + detDescuentoAdd),



            DetItbis,



            DetLineTotal,



            Dias,



            PrecioDia,



            Especificacion,



            coCompania,



            coDireccion,



            coTelefono,



            coFax,



            coEmail,



            coRNC,



            Fax,



            SecuenciaDet AS Linea,



            NumeroSuplidor,



            IdUnidad,



            NetLineTotal,



            Usuario,



            DireccionObra,



            SectorObra,



            TelefonoObra,



            Foto,



            NotaReferencia,



            CotizadoPor



    FROM    @RptCotizacion












GO

-- ============================================================
-- SOURCE FILE: RPTCxc.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[RPTCxc] -- '3346040f-095e-40a3-b577-6f4ded3a766f'
    (  
     @idCxc UNIQUEIDENTIFIER  
    )  
AS  
BEGIN
    SET NOCOUNT ON;

    DECLARE @rncEmisor VARCHAR(20);

    SELECT @rncEmisor = REPLACE(RNC, '-', '')       
    FROM Configuracion;

    SELECT  c.idCxc,  
            c.Cxc,  
            c.idCliente,  
            c.idTipoDocumento,  
            c.Valor,  
            c.Fecha,  
            c.Concepto,  
            c.idCxcTipo,  
            c.esCredito,  
            c.Cancelado,  
            c.Referencia,  
            c.Cliente,  
            c.Usuario,  
            c.idDocumento,  
            c.Descuento,  
            c.Total,  
            c.Condicion,  
            c.Vencimiento,  
            d.idCxcDet,  
            d.Valor AS AplicadoValor,  
            d.Fecha AS AplicacionFecha,  
            d.Descuento AS AplicadoDescuento,  
            d.TotalAplicado AS AplicadoTotal,  
            f.idCxc AS DebitoidCxc,  
            f.Cxc AS DebitoCxc,  
            f.idTipoDocumento AS DebitoidTipoDoc,  
            f.Valor AS DebitoValor,  
            f.Fecha AS DebitoFecha,  
            f.Concepto AS DebitoConcepto,  
            c.CompFiscal,  
            co.Compania,  
            co.Direccion,  
            co.Telefono,  
            co.Fax,  
            co.RNC,  
            ct.CxcTipo,  
            m.Moneda,  
            m2.Moneda AS MonedaFact,  
            ISNULL(f.CompFiscal, ISNULL(c.ncfModificado, '')) AS DebitoNCF,
            ISNULL((SELECT valor FROM ConfiguracionPC pc WHERE pc.NombrePC = c.computer AND pc.Configuracion = 'Sucursaldireccion'), '') AS SUCURSARDireccion,
            ISNULL((SELECT valor FROM ConfiguracionPC pc WHERE pc.NombrePC = c.computer AND pc.Configuracion = 'SucursalTelefono'), '') AS SUCURSARLTelefono,
            c.Itbi,  
            ISNULL(c.ncfModificado, '') AS CompFiscalAplica,
            ISNULL(c.ncfModificado, '') AS ncfModificado, 
            QrUrl = dbo.ecf_buildQR(
                ISNULL(ecf.ncf, c.CompFiscal),
                ISNULL(ecf.TipoNcf, SUBSTRING(c.CompFiscal, 2, 2)),
                co.RNC,
                ISNULL(ecf.DocumentoIdentidad, (SELECT TOP 1 REPLACE(REPLACE(RNC_Cedula, '-', ''), ' ', '') FROM cliente clt WHERE clt.idCliente = c.idCliente)),
                ISNULL(ecf.fecha, c.Fecha),
                ISNULL(c.CodigoSeguridadEcf, ecf.CodigoSeguridadEcf),
                ISNULL(c.FechaFirmaDigital, ecf.FechaFirmaDigital),
                ISNULL(ecf.Total, c.Total)
            ),
            ISNULL(c.CodigoSeguridadEcf, ecf.CodigoSeguridadEcf) AS CodigoSeguridadEcf, 
            ISNULL(c.FechaFirmaDigital, ecf.FechaFirmaDigital) AS FechaFirmaDigital
    FROM    Cxc c  
            INNER JOIN CxcTipo ct ON (c.idCxcTipo = ct.idCxcTipo)  
            INNER JOIN Moneda m ON c.idMoneda = m.idMoneda  
            LEFT JOIN ECFWorker..ecf_comprobante ecf ON c.idCxc = ecf.Referencia  
            LEFT JOIN CxcDet d ON c.idCxc = d.idCxc  
            LEFT JOIN Cxc f ON d.idCxcDebito = f.idCxc  
            LEFT JOIN Moneda m2 ON f.idMoneda = m2.idMoneda  
            CROSS JOIN Configuracion co  
    WHERE   c.idCxc = @idCxc;
END
GO

GO

-- ============================================================
-- SOURCE FILE: RPTFactura.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[RPTFactura]      



    (      



	 @idFactura UNIQUEIDENTIFIER,@balance decimal(19,2)



    )      



AS      



  declare @det table (    



    IdFactura uniqueidentifier,     



    idFacturaDet uniqueidentifier,    



    idProducto varchar(25),    



    Producto varchar(2000),     



    Cantidad float,    



    Precio decimal(19,2),     



    idUnidad varchar(16),    



    Descuento decimal(19,2),    



    Itbis decimal(19,2),    



    LineTotal decimal(19,2),     



    idCargo uniqueidentifier,    



    dias decimal(19,2),    



    PrecioDia decimal(19,2),    



    idAlmacen varchar(16),    



    Linea int,



    referencia varchar(16),



    fecha datetime



  )    



    



  insert into @det     



  (IdFactura, idFacturaDet, idProducto, Producto, Cantidad, Precio, idUnidad,     



   Descuento, Itbis, LineTotal, idCargo, dias, PrecioDia, idAlmacen, Linea,referencia ,	fecha )    



  select idFactura, idFacturaDet, idProducto, Producto, Cantidad, Precio, idUnidad,     



   Descuento, Itbis, LineTotal, idCargo, dias, PrecioDia, idAlmacen, Linea  ,referencia ,	fecha  



  from FacturaDet     



  where idFactura = @idFactura and idCargo is null     



    



  update e    



    set e.producto = e.Producto + ISNULL(char(13) + char(10) + ' (' + strs.CommaStr + ')', '') ,    



  e.Precio = e.Precio + ISNULL(totales.TPrecio,0),    



  e.PrecioDia = e.PrecioDia + ISNULL(totales.TPrecioDia,0),    



  e.Descuento = e.Descuento + ISNULL(totales.TDescuento,0),    



  e.Itbis = e.Itbis + ISNULL(totales.TItbis,0),    



  e.LineTotal = e.LineTotal + ISNULL(totales.TLineTotal,0)    



  FROM @det e outer apply (SELECT  idfacturadet,STUFF((SELECT  ',' + producto FROM Facturadet EE    



        WHERE  EE.idcargo=E.IdFacturaDet     



       FOR XML PATH('')), 1, 1, '') AS 'CommaStr') strs    



   outer apply (SELECT  SUM(precio) as TPrecio, SUM(descuento) as TDescuento,     



         SUM(itbis) as TItbis, SUM(linetotal) as TLineTotal,    



         SUM(PrecioDia) as TPrecioDia    



          from FacturaDet where idFactura = e.IdFactura and idCargo = e.idFacturaDet) totales    



       



 SELECT  c.idFactura,      



            c.Factura,      



            c.idCliente,      



            c.Cliente,      



            c.Contacto,      



            c.Direccion,      



            c.Sector,      



            c.Ciudad,      



            c.Telefono,      



            e.Empleado,      



            c.Fecha,      



            c.Referencia,      



            c.Cancelado,      



            c.Credito,                



            cc.Condicion AS Condicion,      



            c.Fecha + ISNULL(c.Condicion, 0) AS Vencimiento,      



            c.SubTotal,      



            c.Itbis,      



            c.OrdComp,      



            c.Descuento,      



            c.Total,      



            c.Nota,      



            c.nota2,      



            c.idClienteObra,      



            c.CompFiscal,      



            c.ClienteRNC,      



            m.idMoneda,      



            m.Moneda,      



            cd.idFacturaDet,      



            cd.idProducto AS DetidProducto,      



            cd.Producto AS DetProducto,      



            cd.Cantidad AS DetCantidad,      



            cd.Precio AS DetPrecio,      



            cd.Descuento AS DetDescuento,      



            cd.Itbis AS DetITBIS,      



            cd.LineTotal AS DetLineTotal,      



            cd.idUnidad,      



            cd.dias,      



            cd.PrecioDia,      



            Esp.Especificacion,      



            co.Compania AS coCompania,      



            co.Direccion AS coDireccion,      



            co.Telefono AS coTelefono,    



			(select valor from ConfiguracionPC pc where NombrePC=c.computer and Configuracion='Sucursaldireccion') as SUCURSARDireccion,



			(select valor from ConfiguracionPC pc where NombrePC=c.computer and Configuracion='SucursalTelefono') as SUCURSARLTelefono,



			(select valor from ConfiguracionPC pc where NombrePC=c.computer and Configuracion='Sucursal') as SUCURSARL,



            co.Fax AS coFax,      



            co.RNC AS coRNC,      



            tncf.TipoNCF as TipoNcfDesc,      



            cl.Fax,      



            cd.Linea,      



            cl.NumeroSuplidor,      



            cl.Beeper AS Celular,      



            c.Hora,      



            c.eMail,      



            c.Observacion,      



            c.FechaVenceNCF    , 



			cd.referencia as ReferenciaDet,



			cd.fecha as fechadet,



   c.TipoNcf,   



   ecf.CodigoSeguridadEcf,      



  ecf.FechaFirmaDigital, 



   LTRIM(



        CONCAT(



            CASE WHEN ISNULL(fc.Efectivo,0) > 0 THEN 'Efectivo, ' ELSE '' END,



            CASE WHEN ISNULL(fc.Tarjeta,0) > 0 THEN 'Tarjeta, ' ELSE '' END,



            CASE WHEN ISNULL(fc.Cheque,0) > 0 THEN 'Cheque, ' ELSE '' END,



            CASE WHEN ISNULL(fc.Otros,0) > 0 THEN 'Otros, ' ELSE '' END



        )



    ) AS FormaPago,



  case         



      when ecf.TipoNcf = '32' and ecf.Total < 250000 then dbo.ecf_buildQRFacturaConsumo(ecf.ncf, co.RNC, ecf.CodigoSeguridadEcf, ecf.Total)            



      else dbo.ecf_buildQR(ecf.ncf, ecf.TipoNcf, co.RNC, ecf.DocumentoIdentidad, ecf.fecha, ecf.CodigoSeguridadEcf, ecf.FechaFirmaDigital, ecf.Total)              



  end as ValUrl ,     



  @balance as Balance,



  (case when c.TipoDocumento='Factura' and isnull(c.FecSaldo,'')='' then c.Fecha end) Fecsaldo



    FROM    dbo.Factura c      



            INNER JOIN @det cd ON c.idFactura = cd.idFactura      



            INNER JOIN Cliente cl ON (cl.idCliente = c.idCliente)      



            INNER JOIN Moneda m ON c.idMoneda = m.idMoneda 



			left join ECFWorker..ecf_comprobante ecf on c.idFactura = ecf.Referencia  



            LEFT JOIN FacturaDetEspec Esp ON cd.idFacturaDet = Esp.idFacturaDet      



            LEFT JOIN dbo.svEmpleado e ON c.idEmpleado = e.idEmpleado      



            LEFT JOIN svCondicion cc ON (cc.idCondicion = c.idCondicion)      



            LEFT JOIN svTipoNCF tncf ON CASE WHEN LEN(c.CompFiscal) = 19 THEN SUBSTRING(CompFiscal, 10, 2) ELSE SUBSTRING(CompFiscal, 2, 2) END = tncf.idTipoNCF      



            left join facturaCobro fc on C.idfactura = fc.idfactura    



			CROSS JOIN dbo.Configuracion co      



    WHERE   c.idFactura = @idFactura      



    ORDER BY cd.Linea 


GO

-- ============================================================
-- SOURCE FILE: RSEcfStatus.sql
-- ============================================================
CREATE OR ALTER PROCEDURE RSEcfStatus (@id uniqueidentifier,@Emisor varchar(16))
AS
BEGIN
    IF EXISTS (SELECT 1 FROM ECFWorker..ecf_comprobante ecf WHERE ecf.Referencia=@id)
    BEGIN
        SELECT StatusEcf, UltError, CodigoSeguridadEcf FROM ECFWorker..ecf_comprobante ecf WHERE ecf.Referencia=@id
    END
    ELSE
    BEGIN
        SELECT 'PENDIENTE' AS StatusEcf, '' AS UltError, '' AS CodigoSeguridadEcf
    END
END
GO

GO

-- ============================================================
-- SOURCE FILE: SPFacturaAnular.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[SPFacturaAnular]



 @idFactura uniqueidentifier, 



 @Anulado bit output, 



 @TipoAnulacion VarChar(2) = 04



AS      







declare @err int      



Set     @err = 0      



Set @Anulado = 0  --retornar false      



IF exists (      



  SELECT Top 1 -- si no existen pago para la cxc de esta factura      



    1      



  FROM      



    Cxc p      



    INNER JOIN Cxcdet Pd ON p.idCxc = pd.idCxc      



    INNER JOIN Cxc f ON pd.idCxcDebito = f.idCxc      



  WHERE      



    f.idcxc  = @idFactura and p.cancelado = 0)      



BEGIN      



  RETURN -1      



END      



  



IF exists (      



  SELECT Top 1 -- si no se ha cerrado el almacen para los movimientos generados por esta factura      



    1      



  FROM      



    ProMov p        



  WHERE      



    p.IdReferencia = @idFactura and p.posteado = 1)      



BEGIN      



  RETURN -2      



END      



  



BEGIN TRAN        



  



Update       



    factura       



  set       



    cancelado = 1,       



    fechacancelado =  round(convert(float, fecha),0,1),      



    TipoAnulacion = @TipoAnulacion      



  where       



    idfactura = @idFactura --marcar factura como cancelado      



  set @err = @@Error         



    



  Delete       



  from cxc       



  where idcxc = @idFactura  -- borrar la cxc de la factura      



    



  Set @Err = @@Error      



    



  Delete       



    promovdet      



  from       



    Promov p      



    join promovdet pd on p.idpromov = pd.idpromov      



  where       



    p.idReferencia = @idFactura      



      



  set @err = @@Error         



  Delete       



  from       



    Promov       



  where       



    idreferencia = @idFactura      



      



  set @err = @@Error         



  Set @Anulado = 1  -- retornar true      



  



if isnull(@err,0)  <> 0       



begin      



  ROLLBACK TRAN      



  RETURN 1      



end      



  



COMMIT TRAN      



RETURN 0    




GO

-- ============================================================
-- ============================================================
-- SOURCE FILE: bcoRSGastosMenores.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[bcoRSGastosMenores]
  @GUIDDocumento uniqueidentifier
as
BEGIN
  SET NOCOUNT ON;

  -- Sincronizar estado ECF desde ecfworker si existe comprobante emitido
  UPDATE g
     SET g.StatusEcf = e.StatusEcf,
         g.UltError = e.UltError,
         g.CodigoSeguridadEcf = e.CodigoSeguridadEcf,
         g.TrackId = e.TrackId,
         g.FechaFirmaDigital = e.FechaFirmaDigital,
         g.PendValidacion = CASE WHEN e.StatusEcf IN ('ACEPTADO','VALIDADO','ERROR','RECHAZADO') THEN 0 ELSE g.PendValidacion END
    FROM bcoGastosMenores g
    JOIN ecfworker..ecf_comprobante e ON g.GUIDDocumento = e.Referencia
   WHERE g.GUIDDocumento = @GUIDDocumento
     AND e.StatusEcf <> 'CANCELADO' COLLATE DATABASE_DEFAULT
     AND (g.StatusEcf <> e.StatusEcf COLLATE DATABASE_DEFAULT OR g.StatusEcf IS NULL OR g.TrackId IS NULL);

  SELECT * FROM bcoGastosMenores
  WHERE GUIDDocumento = @GUIDDocumento;

  RETURN 0;
END
GO

-- SOURCE FILE: bcoGastosMenoresRPT.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[bcoGastosMenoresRPT]  



 @GUIDDocumento uniqueidentifier  



as  



 select h.*,  



 QrUrl = dbo.ecf_buildQRGM(h.Guiddocumento),



 d.idCuenta,  



 d.Descripcion,  



 d.Importe  



 from bcoGastosMenores h left join bcoGastosMenoresDet d   



  on h.Guiddocumento = d.guIDDocumento  



 where h.GUIDDocumento = @guiddocumento   



 order by d.Lineanum  



return 0  



  



  







  




GO

-- ============================================================
-- SOURCE FILE: bcoRPTDocumento.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[bcoRPTDocumento] --'158017CB-CC83-4770-A8DA-002BD234CDCC'  



 @GuidDocumento uniqueidentifier  



as  



 select *,  



 (select Nombre from cxpBancos b where b.idCuentaBanco=d.idCuentaBanco ) as Banco,  



 (select Descripcion from cgCatalogoCuentas c where c.idcuenta=dd.idcuenta) as descripcion,  



 (case when dd.debcre=1 then dd.Valor end) as Debito,  



 (case when dd.debcre=2 then dd.Valor end) as Credito  



 from bcodocumentos d  



 left join bcoDocumentosDtl dd on dd.Guiddocumento=d.Guiddocumento  



 where d.Guiddocumento = @Guiddocumento   -- d.idDocumento=63399  



 order by LineaNum  



return 0  








GO

-- ============================================================
-- SOURCE FILE: biListaECFComprasNoEnviados.sql
-- ============================================================








--[biListaECFComprasNoEnviados] '20250601','20250731'  

CREATE OR ALTER PROCEDURE [dbo].[biListaECFComprasNoEnviados]            



 @desde datetime, @hasta datetime, @filtro varchar(20) = '*'    



as             



            



select f.Guiddocumento as KeyField,                 



    f.idDocumento,              



    f.Compfiscal as NCF,            



    f.Fecha,            



    f.Nombre,            



    f.Total,            



    f.HoraEnvio,            



    f.TrackId,            



    f.UltError,  



    f.StatusEcf            



from cxpDocumentos f             



where f.Fecha between @desde and @hasta             



and f.CompFiscal like 'E4[1,7]%'            



and f.status <> 'C'           



and @filtro in ('*', f.statusEcf)    



union all            



select g.GuidDocumento,            



    0,            



    g.Compfiscal,            



    g.Fecha,            



    'Gastos Menores Electronicos',            



    sum(d.Importe) as Total,            



    g.HoraEnvio,            



    g.TrackId,                    



    g.UltError,



    g.StatusEcf



from bcoGastosMenores g left join bcoGastosMenoresDet d on g.GUIDDocumento = d.GUIDDocumento            



where g.fecha between @desde and @hasta             



and g.CompFiscal like 'E43%'            



and @filtro in ('*', g.statusEcf)    



and g.Cancelado = 0        



group by g.GUIDDocumento, g.CompFiscal, g.fecha, g.HoraEnvio,  g.TrackId, g.UltError, g.StatusEcf            



order by 2,3   



  



  




GO

-- ============================================================
-- ============================================================
-- SOURCE FILE: cxpBuscarDocumento.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[cxpBuscarDocumento]   
 @idDoc int  
as  
BEGIN
  SET NOCOUNT ON;

  -- Sincronizar estado ECF desde ecfworker si existe comprobante emitido
  UPDATE d
     SET d.StatusEcf = e.StatusEcf,
         d.UltError = e.UltError,
         d.CodigoSeguridadEcf = e.CodigoSeguridadEcf,
         d.TrackId = e.TrackId,
         d.FechaFirmaDigital = e.FechaFirmaDigital,
         d.PendValidacion = CASE WHEN e.StatusEcf IN ('ACEPTADO','VALIDADO','ERROR','RECHAZADO') THEN 0 ELSE d.PendValidacion END
    FROM cxpDocumentos d
    JOIN ecfworker..ecf_comprobante e ON d.GUIDDocumento = e.Referencia
   WHERE d.idDocumento = @idDoc
     AND e.StatusEcf <> 'CANCELADO' COLLATE DATABASE_DEFAULT
     AND (d.StatusEcf <> e.StatusEcf COLLATE DATABASE_DEFAULT OR d.StatusEcf IS NULL OR d.TrackId IS NULL);

  SELECT d.*,  
	  s.Telefono1,  
	  s.Telefono2,   
	  s.Fax,  
	  s.Direccion,  
	  --s.Nombre,  
	  --s.RNC,  
	  s.PedirNCF,  
	  tt.Descripcion,  
	  tt.DebCre, tt.Abrev,   
	  TotalRetenciones = isnull((select sum(porcentaje) from cxpDocRetencion where idDocumento = @idDoc),0.00)  
  FROM cxpDocumentos d 
  JOIN TiposTrans tt ON d.idTrans = tt.idTrans and tt.Sistema = 'CXP'  
  LEFT JOIN cxpSuplidores s ON d.idSuplidor = s.idSuplidor   
  WHERE d.idDocumento = @idDoc;

  RETURN @@ERROR;
END
GO

-- SOURCE FILE: cxpGuardarDocumento.sql
-- ============================================================
CREATE OR ALTER PROCEDURE dbo.cxpGuardarDocumento



                                                                                                                                                                                                                     



    @idDocumento INT,



                                                                                                                                                                                                                                        



    @idTrans INT,



                                                                                                                                                                                                                                            



    @Fecha DATETIME,



                                                                                                                                                                                                                                         



    @idSuplidor INT,



                                                                                                                                                                                                                                         



    @Referencia VARCHAR(20),



                                                                                                                                                                                                                                 



    @Valor DECIMAL(19, 2),



                                                                                                                                                                                                                                   



    @MontoImpuestos DECIMAL(19, 2),



                                                                                                                                                                                                                          



    @MontoDescuento DECIMAL(19, 2),



                                                                                                                                                                                                                          



    @MontoRetenciones DECIMAL(19, 2),



                                                                                                                                                                                                                        



    @Concepto VARCHAR(6000),



                                                                                                                                                                                                                                 



    @IdMoneda INT,



                                                                                                                                                                                                                                           



    @CodifManual BIT,



                                                                                                                                                                                                                                        



    @idCuenta VARCHAR(16),



                                                                                                                                                                                                                                   



    @idAuxiliar VARCHAR(16),



                                                                                                              



    @Status CHAR(1),



                                                                                                                                                                                                                                         



    @FechaStatus DATETIME,



                                                                                                                                                                                                                                   



    @idCuentaBanco INT,



                                                                                                                                                                                                                                      



    @TipoDocOrigen VARCHAR(3),



                                                                                                                                                                                                                               



    @DocOrigen INT,



                                                                                                                                                                                                                                          



    @Dias SMALLINT,



                                                                                                                                                                                                                                          



    @MostrarEnCXP BIT,



                                                                                                                                                                                                                                       



    @idClaseGasto VARCHAR(2),



                                                                                                                                                                                                                                



    @NotaAdicional VARCHAR(100),



                                                                                                                                                                                                                             



    @facturadoServicios DECIMAL(19, 2),



                                                                                                                                                                                                                      



    @facturadoBienes DECIMAL(19, 2),



                                                                                                                                                                                                                         



    @idFormaPago INT,



                                                                                                                                                                                                                                        



    @nid INT OUTPUT,



                                                                                                                                                                                                                                         



    @NCF VARCHAR(19) = NULL,



                                                                                                                                                                                                                                 



    @GuidDocumento UNIQUEIDENTIFIER = NULL,



                                                                                                                                                                                                                  



    @Tasa DECIMAL(19, 2) = NULL,

                                                                                                                                                                                                                             





    @idTipoIdentificacion VARCHAR(2) = NULL,



                                                                                                                                                                                                                 



    @RNC VARCHAR(20) = NULL,



                                                                                                                                                                                                                                 



    @Nombre VARCHAR(100) = NULL,



                                                                                                                                                                                                                             



    @FechaEmision DATETIME = NULL,



                                                                                                                                                                                                                           



    @Vencimiento DATETIME = NULL,



                                                                                                                                                                                                                            



    @TipoGasto VARCHAR(16) = 'COSTO',



                                                                                                                                                                                                                        



    @OrdenCompra VARCHAR(16) = NULL,



                                                                                                                                                                                                                         



    @idOrden UNIQUEIDENTIFIER = NULL,



                                                                                                                                                                                                                        



	@montoIsc DECIMAL(19,2) = 0, 



                                                                                                                                                                                                                               



	@propina DECIMAL(19,2) = 0,



                                                                                                                                                                                                                                 



	@otrosImp DECIMAL(19,2) = 0,



                                                                                                                                                                                                                                



	@itbisCosto DECIMAL(19,2) = 0,



    @PendEnvioEcf BIT = NULL,



    @TipoNcf VARCHAR(2) = NULL,



    @CodigoSeguridadEcf VARCHAR(6) = NULL,



    @FechaFirmaDigital DATETIME = NULL,



    @FechaVenceNCF DATETIME = NULL,



    @CompFiscalModificado VARCHAR(19) = NULL,



    @FechaCompFiscalModificado DATETIME = NULL,



    @IdClaseGastoModificado VARCHAR(2) = NULL,



    @StatusEcf VARCHAR(30) = NULL



                                                                                                                                                                                                                               



AS



                                                                                                                                                                                                                                                           



    DECLARE @Bco INT  



                                                                                                                                                                                          







                                                                                                                                                                                                                                                             



    IF @idCuentaBanco = 0



                                                                                                                                                                                                                                    



        SET @Bco = NULL  



                                                                                                                                                                                                                                    



    ELSE



                                                                                                                                                                                                                                                     



        SET @Bco = @idCuentaBanco  



                                                                                                                                                                                                                          







                                                                                                                                                                                                                                                             



    IF ISNULL(@idDocumento, 0) = 0



                                                                                                                                                                                                                           



        BEGIN  



                                                                                                                                                                                                                                              



  -- select @num = max(Numero)  



                                                                                                                                                                                                                             



  --  from cxpDocumentos  



                                                                                                                                                                                                                                   



  --  where idTrans = @idTrans    



                                                                                                                                                                                                                           



            INSERT  INTO cxpDocumentos



                                                                                                                                                                                                                       



                    (idTrans,



                                                                                                                                                                                                                                



                     Fecha,



                                                                                                                                                                                                                                  



                     idSuplidor,



                                         



                     Referencia,



                                                                                                                                                                                                                             



                     Valor,



                                                                                                                                                                                                                                  



                     MontoImpuestos,



                                                                                                                                                                                                                         



                     MontoDescuento,



                                                                                                                                                                                                                         



                     MontoRetenciones,



                                                                                                                                                                                                                       



                     Concepto,



                                                                                                                                                                                                                               



                     idMoneda,



                                                                                                                                                                                                                               



                     CodifManual,



                                                                                                                                                                                                                            



                     idCuenta,



                                                                                                                                                                                                                               



                     Status,



                                                                                                                                                                                                                                 



                     FechaStatus,



                                                                                                                                                                                                                            



                     idCuentaBanco,



                                                                                                                                                                                                                          



                     TipoDocOrigen,



                                                                                                                                                                                                                          



                     DocOrigen,



                                                                                                                                                                                                                              



                     MostrarEnCXP,



                                                                                                                                                                                                                           



                     idClaseGasto,



                                                                                                                                                         



                     Dias,



                                                                                                                                                                                                                                   



                     NotaAdicional,



                                                                                                                                                                                                                          



                     idAuxiliar,



                                                                                                                                                                                                                             



                     CompFiscal,



                                                                                                                                                                                                                             



                     GUIDDocumento,



                                                                                                                                                                                                                          



                     Tasa,



                                                                                                                                                                                                                                   



                     idTipoIdentificacion,



                                                                                                                                                                                                                   



                     RNC,



                                                                                                                                                                                                                                    



                     Nombre,



                                                                                                                                                                                                                                 



                     FechaEmision,



                                                                                                                                                                                                                           



                     Vencimiento,



                                                                                                                                                                                                                            



                     TipoGasto,



                                                                                                                                                                                                                              



                     OrdenCompra,



                                                                                                                                                                                                                            



                     idOrden,



                                                                                                                                                                                                                                



                     montoFacturadoServicios,



        



                     montoFacturadoBienes,



                                                                                                                                                                                                                   



                     idPagoForma,



                                                                                                                                                                                                                            



					 MontoIsc,



                                                                                                                                                                                                                                              



					 PropinaLegal,



                                                                                                                                                                                                                                          



					 OtrosImpuestos,



                                                                                                                                                                                                                                        



					 itbisCosto,



                     PendEnvioEcf,



                     TipoNcf,



                     CodigoSeguridadEcf,



                     FechaFirmaDigital,



                     FechaVenceNCF,



                     CompFiscalModificado,



                     FechaCompFiscalModificado,



                     IdClaseGastoModificado,



                     StatusEcf



                    )



                                                                                                                                                                                                                                        



            VALUES  (@idTrans,



                                                                                                                                                                                                                               



                     @Fecha,



                                                                                                                                                                                                                                 



                     @idSuplidor,



                                                                                                                                                                                                                            



                     @Referencia,



                                                                                                                                                                                                                            



                     @Valor,



                                                                                                                                                                                                                                 



                     @MontoImpuestos,



                                                                                                                                                                                                                        



                     @MontoDescuento,



                                                                                                                                                                                                                        



                     @MontoRetenciones,



                                                                                                                                                                                                                      



      @Concepto,



                                                                                                                                                                                                                              



                     @IdMoneda,



                                                                                                                                                                                                                              



                     @CodifManual,



                                                                                                                                                                                                                           



                     @idCuenta,



                                                                                                                                                                                                                              



                     @Status,



                                                                                                                                                                                                                                



                     @FechaStatus,



                                                                                                                                                                                                                           



                     @Bco,



                                                                                                                                                                                                                                   



                     @TipoDocOrigen,



                                                                                                                                                                                                                         



                     @DocOrigen,



                                                                                                                                                                                                                             



                     @MostrarEnCXP,



                                                                                                                                                                                                                          



                     @idClaseGasto,



                                                                                                                                                                                                                          



                     @Dias,



                                                                                                                                                                                                                                  



                     @NotaAdicional,



                                                                                                                                                                                                                         



                     @idAuxiliar,



                                                                                                                                                                                                                            



                     @NCF,



                                                                                                                                                                                                                                   



                     ISNULL(@GuidDocumento, NEWID()),



                                                                                               



                     ISNULL(@Tasa, 1.00),



                                                                                                                                                                                                                    



                     @idTipoIdentificacion,



                                                                                                                                                                                                                  



                     @RNC,



                                                                                                                                                                                                                                   



                     @Nombre,



                                                                                                                                                                                                                                



    @FechaEmision,



                                                                                                                                                                                                                                           



                     @Vencimiento,



                                                                                                                                                                                                                           



                     @TipoGasto,



                                                                                                                                                                                                                             



                     @OrdenCompra,



                                                                                                                                                                                                                           



                     @idOrden,



                                                                                                                                                                                                                               



                     @facturadoServicios,



                                                                                                                                                                                                                    



                     @facturadoBienes,



                                                                                                                                                                                                                       



                     @idFormaPago,



                                                                                                                                                                                                                           



					 @MontoIsc,



                                                                                                                                                                                                                                             



					 @propina,



                                                                                                                                                                                                                                              



					 @otrosImp,



                                                                                                                                                                                                                                             



					 @itbisCosto,



                     @PendEnvioEcf,



                     @TipoNcf,



                     @CodigoSeguridadEcf,



                     @FechaFirmaDigital,



                     @FechaVenceNCF,



                     @CompFiscalModificado,



                     @FechaCompFiscalModificado,



                     @IdClaseGastoModificado,



                     @StatusEcf



                    )  



                                                                                                                                                                                                                                      







                                                                                                                                                                                                                                                             



            SET @nid = @@IDENTITY  



                                                                                                                                                                                                                          



        END  



                                                                                                                                                                                                                                                



    ELSE



                                                                                                                                                                                                                                                     



        BEGIN  



                                                                                                                                                                                                                                              



--   if @Status not in ('A','T','C','$')  



                                                                                                                                                                                                                   



--     print 'Error en el status'  



                                                                                                                                                                                                                          



            UPDATE  cxpDocumentos



                                                                                                                                                                                                                            



            SET     idTrans = @idTrans,



                                                                                                                                                                                                                      



                    Fecha = @Fecha,



                                                                                                                                                                                                                          



                    idSuplidor = @idSuplidor,



                                                                                                                                                                                                                



                    Referencia = @Referencia,



                                                                                                                                                                                                                



                    Valor = @Valor,



                                                                                                                                                                                                                          



                    MontoImpuestos = @MontoImpuestos,



                                                                                                                                                                                                



                    MontoDescuento = @MontoDescuento,



                                                                                                                                                                                                        



                    MontoRetenciones = @MontoRetenciones,



                                                                                                                                                                                                    



                    Concepto = @Concepto,



                                                                                                                                                                                                                    



                    idMoneda = @IdMoneda,



                                                                                                                                                                                                                    



                    CodifManual = @CodifManual,



                                                                                                                                                                                                              



                    idCuenta = @idCuenta,



                                                                                                                                                                                                                    



                    Status = @Status,



                                                                                                                                                                                                                        



                    FechaStatus = @FechaStatus,



                                                                                                                                                                                                              



                    idCuentaBanco = @Bco,



                                                                                                                                                                                                                    



                    TipoDocOrigen = @TipoDocOrigen,



                                                                                                                                                                                                          



                    DocOrigen = @DocOrigen,



                                                                                                                                                                                                                  



                    Dias = @Dias,



                                                                                                                                                                                                                            



                    MostrarEnCXP = @MostrarEnCXP,



                                                                                                                                                                                                            



                    idClaseGasto = @idClaseGasto,



                                                                                                                                                                                                            



                    NotaAdicional = @NotaAdicional,



                                               



                    idAuxiliar = @idAuxiliar,



                                                                                                                                                                                                                



                    CompFiscal = @NCF,



                                                                                                                                                                                                                       



                    Tasa = ISNULL(@Tasa, 1.00),



                                                                                                                                                                                                              



                    idTipoIdentificacion = @idTipoIdentificacion,



                                                                                                                                                                                            



                    RNC = @RNC,



                                                                                                                                                                                                                              



                    Nombre = @Nombre,



                                                                                                                                                                                                                        



                    FechaEmision = @FechaEmision,



                                                                                                                                                                                                            



                    Vencimiento = @Vencimiento,



                                                                                                                                                                                                              



                    TipoGasto = @TipoGasto,



                                                                                                                                                                                                                  



                    OrdenCompra = @OrdenCompra,



                                                                                                                                                                                                              



                    idOrden = @idOrden,



                                                                                                                                                                                                                      



                    montoFacturadoServicios = @facturadoServicios,



                                                                                                                                                                                           



                    montoFacturadoBienes = @facturadoBienes,



                                                                                                                                                                                                 



                    idPagoForma = @idFormaPago,



                                                                                                                                                                                                              



					MontoIsc = @montoIsc,



                                                                                                                                                                                                                                   



					PropinaLegal = @propina,



                                                                                                                                                               



					OtrosImpuestos = @otrosImp,



                                                                                                                                                                                                                             



					itbisCosto = @itbisCosto,



                    PendEnvioEcf = @PendEnvioEcf,



                    TipoNcf = @TipoNcf,



                    CodigoSeguridadEcf = @CodigoSeguridadEcf,



                    FechaFirmaDigital = @FechaFirmaDigital,



                    FechaVenceNCF = @FechaVenceNCF,



                    CompFiscalModificado = @CompFiscalModificado,



                    FechaCompFiscalModificado = @FechaCompFiscalModificado,



                    IdClaseGastoModificado = @IdClaseGastoModificado,



                    StatusEcf = @StatusEcf 



                                                                                                                                                                                                                               



            WHERE   idDocumento = @idDocumento  



                                                                                                                                                                                                             







                                                                                                                                                                                                                                                             



            SET @nid = @idDocumento  



                                                                                                                                                                                                                        



        END  



                                                                                                                                                                                                                                                







                                                                                                                                                                                                                                                             



    RETURN @@ERROR  



                                                                                                                                                                                                                                         












GO

-- ============================================================
-- SOURCE FILE: ecf_comprobante_markSent.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_comprobante_markSent]  



 @id uniqueidentifier,  



 @tipoNcf varchar(2)  



as  



      



  declare @st varchar(20) = 'ENVIADO'       



    



  if (@tipoNcf in ('31','32','44','45','46')) begin  



    update Factura set StatusEcf = @st,HoraEnvio = getdate() 



    where idFactura = @id and statusecf = 'ENVIANDO'



 return 0  



  end  



  



  if (@tipoNcf in ('33','34')) begin  



    update cxc set StatusEcf = @st where idcxc = @id   



 update Devolucion set StatusEcf = @st,HoraEnvio = getdate() where idDevolucion = @id and statusecf = 'ENVIANDO'  



 return 0  



  end  



  



  if (@tipoNcf in ('41','47')) begin  



    update cxpDocumentos set StatusEcf = @st,HoraEnvio = getdate() where GUIDDocumento = @id and statusecf = 'ENVIANDO'   



 return 0  



  end  



  



  if (@tipoNcf in ('43')) begin  



    update bcoGastosMenores set StatusEcf = @st,HoraEnvio = getdate() where GUIDDocumento = @id and statusecf = 'ENVIANDO'   



 return 0  



end  




GO

-- ============================================================
-- SOURCE FILE: ecf_cxc_cambiarEstado.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_cxc_cambiarEstado]



 @id uniqueidentifier, 



 @st varchar(16),



 @usuario varchar(30)



as



 declare @pendEnvio bit = 1,



		 @pendVal bit = 1







select @pendEnvio = PendEnvio, @pendVal = PendValidacion from ecf_status_envio where Id = @st 







 update cxc 



   set StatusEcf = @st,



	   PendEnvioEcf = isnull(@pendEnvio,0), 



	   PendValidacion = isnull(@pendVal,0)



 where idcxc = @id 




GO

-- ============================================================
-- SOURCE FILE: ecf_cxc_send.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_cxc_send]            
 @id uniqueidentifier        
as                 
 declare @nuId int         
  
 if exists (select 1 from devolucion where iddevolucion = @id) begin
   return 0   
 end

 declare @rncEmisor varchar(20), @emisorId uniqueidentifier
 select @rncEmisor = LTRIM(rtrim(replace(rnc,'-',''))),
		@emisorId = UConfiguracion
 from Configuracion       
        
 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf = 'VALIDADO') begin 
   return -1          
 end

 -- Intentar resolver NcfModificado si vino vacio en cxc
 declare @ncfModificado varchar(19), @fechaNcfModificado datetime
 select @ncfModificado = isnull(h.ncfModificado,''), @fechaNcfModificado = h.FechaNcfModificado
 from cxc h where h.idcxc = @id

 if @ncfModificado = ''
 begin
   select top 1 @ncfModificado = CompFiscal, @fechaNcfModificado = Fecha
   from (
     select CompFiscal, Fecha from Factura where idFactura = (select Referencia from cxc where idcxc = @id)
     union all
     select CompFiscal, Fecha from Cxc where idcxc = (select Referencia from cxc where idcxc = @id)
   ) t1
 end

 if @ncfModificado = ''
 begin
   select top 1 @ncfModificado = CompFiscal, @fechaNcfModificado = Fecha
   from (
     select CompFiscal, Fecha from Factura where Factura = (select idDocumento from cxc where idcxc = @id)
     union all
     select CompFiscal, Fecha from Cxc where Cxc = (select idDocumento from cxc where idcxc = @id)
   ) t2
 end

 if @ncfModificado = ''
 begin
   select top 1 @ncfModificado = CompFiscal, @fechaNcfModificado = Fecha
   from (
     select f.CompFiscal, f.Fecha from cxcdet d join Factura f on d.idCxcDebito = f.idFactura where d.idCxc = @id and d.Valor > 0
     union all
     select c.CompFiscal, c.Fecha from cxcdet d join Cxc c on d.idCxcDebito = c.idCxc where d.idCxc = @id and d.Valor > 0
   ) t3
 end

 declare @tipoNcf varchar(2) = substring(isnull((select CompFiscal from cxc where idcxc = @id),''), 2, 2)
 if @tipoNcf = '34' and isnull(@ncfModificado, '') = ''
 begin
   raiserror('Error: La Nota de Crédito no tiene asignado el comprobante modificado (Aplica A / NCF Modificado). Por favor seleccione la factura que modifica antes de enviar el ECF.', 16, 1)
   return -1
 end

 -- Persistir en cxc si fue resuelto
 if isnull(@ncfModificado,'') <> '' and exists (select 1 from cxc where idcxc = @id and isnull(ncfModificado,'') = '')
 begin
   update cxc
   set ncfModificado = @ncfModificado,
       FechaNcfModificado = @fechaNcfModificado,
       TipoNcfModificado = substring(@ncfModificado, 2, 2)
   where idcxc = @id
 end

 -- Si existia un intento previo que fallo o no fue validado, limpiarlo para reenviar
 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA')) begin
   delete from ecfworker..ecf_comprobante_detalle where ComprobanteId in (select Id from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA'))
   delete from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA')
 end

 declare @itbis decimal(19,2)    
    
 select @itbis = isnull((SELECT a.Valor    
      FROM cgCodificacion a    
       JOIN Defaults b    
        ON CAST(b.Valor AS VARCHAR(16)) = a.idCuenta    
      WHERE b.Clave = 'CuentaITBIS'    
      AND a.GUIDDocumento = @id),0)    

 declare @subtotal1 decimal(19,2) = 0
 if @itbis > 0 
    set @subtotal1 = @itbis / 0.18
    
 begin try    
 begin tran     
 insert into ecfworker..ecf_comprobante          
 (  RncEmisor,
	EmisorId,
	Referencia,       
	TipoReferencia,  
    Fecha,          
    Numero,                  
    TipoNcf,          
    DocumentoIdentidad,          
    TipoDocIdentidad,          
    Sucursal,          
    RazonSocialComprador,                  
    TipoIngresos,          
    SubTotal1,                  
    SubTotal3,          
    Itbis1,                          
    MontoItbis1,                  
    MontoDescuento,          
    MontoRecargo,                   
    StatusEcf,          
    EmailComprador,          
    CompradorId,          
    ContactoComprador,                  
    DireccionComprador,          
    PedidoNumero,          
    NumeroOrdenCompra,          
    IndicadorMontoGravado,                  
    FormaPago,                  
    Moneda,          
    TasaCambio,          
    Ncf,          
    VencimientoNcf,        
	NcfModificado,        
	FechaNcfModificado,    
	IndNotaCredito,
	CodigoModificacion)          
 select @rncEmisor,
		@emisorId,
  h.idcxc,           
  'CXC',  
  h.Fecha,                
  h.CompFiscal as Numero,                  
  TipoNcf = substring(h.compfiscal,2,2),                
  replace(isnull(ft.ClienteRNC, (SELECT TOP 1 RNC_Cedula FROM Cliente c WHERE c.idCliente = h.idCliente)),'-','') as Rnc,          
  '' as idTipoIdentificacion,             
  '1',          
  h.Cliente as Nombre,          
  '',          
  SubTotal1 = @subtotal1,         
  SubTotal3 = ((h.Total * h.Tasa) - @itbis) - @subtotal1,        
  case when @itbis > 0 then '18' else '' end,          
  @itbis as MontoImpuestos,          
  0,          
  0,          
  'PENDIENTE',          
  '',          
  null,          
  '',          
  '',          
  h.CompFiscal,          
  '' OrdenCompra,          
  '0',           
  '1',          
  'DOP',          
  1,          
  h.CompFiscal,          
  h.FechaVenceNCF,        
  isnull(nullif(h.ncfModificado,''), @ncfModificado),        
  isnull(h.FechaNcfModificado, isnull(@fechaNcfModificado, ft.Fecha)),    
  IndNotaCredito = case 
    when substring(isnull(h.compfiscal,''),2,2) = '34' or isnull(h.TipoNcf,'') = '34' then 
      case when isnull(datediff(day, isnull(ft.Fecha, isnull(h.FechaNcfModificado, @fechaNcfModificado)), h.Fecha), 0) > 30 then '1' else '0' end 
    else '' 
  end,
  '3'
 from cxc h 
 left join factura ft on isnull(nullif(h.ncfModificado,''), @ncfModificado) = ft.CompFiscal        
 where h.idcxc = @id        
   and isnull(h.CompFiscal,'') <> ''       
   and not exists (select 1 from Devolucion where idDevolucion = h.idcxc)  
   and (h.StatusEcf in ('PENDIENTE', 'ERROR', 'ENVIANDO', 'ENVIADO') or isnull(h.StatusEcf,'') = '')

 set @nuId = SCOPE_IDENTITY()          
 if @nuId is not null begin 
 
   insert into ecfworker..ecf_comprobante_detalle
   (ComprobanteId, ReferenciaId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, precio,  
    Itbis, Descuento, IndicadorBienOServicio, IndicadorFacturacion)
   select Id, @id, ncf, 'GRAVADO','GRAVADO','43',1, SubTotal1, MontoItbis1,0, '2','1'
   from ecfworker..ecf_comprobante
   where Id = @nuId and SubTotal1 > 0
   union all
   select Id, @id, ncf, 'EXENTO','EXENTO','43',1, SubTotal3, 0,0, '2', '4'
   from ecfworker..ecf_comprobante
   where Id = @nuId and SubTotal3 > 0
                
   update cxc           
     set StatusEcf = 'ENVIADO'
   where idcxc = @id     
 end    
    
 commit tran    
    
 end try    
 begin catch     
   declare @msg varchar(2000) = 'Error enviando ECF: ' + error_message()    
   rollback tran     
   print @msg 
   raiserror (@msg,16,6)    
 end catch    
      
return 0    
GO
PRINT 'Procedimiento creado/actualizado: dbo.ecf_cxc_send';
GO

-- ============================================================
-- SOURCE FILE: ecf_cxp_cambiarEstado.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_cxp_cambiarEstado]



 @id uniqueidentifier, 



 @st varchar(16),



 @usuario varchar(30)



as



 declare @pendEnvio bit = 1,



		 @pendVal bit = 1







select @pendEnvio = PendEnvio, @pendVal = PendValidacion from ecf_status_envio where Id = @st 



		  



 update cxpdocumentos 



   set StatusEcf = @st,



	   PendEnvioEcf = isnull(@pendEnvio,0),



	   PendValidacion = isnull(@pendVal,0)



 where GUIDDocumento = @id 




GO

-- ============================================================
-- SOURCE FILE: ecf_cxp_select.sql
-- ============================================================








 



--exec updateDefault 'VOXEL_PRUEBAS', '1','Estamos en ambiente de pruebas?','S'      



--- ecf_cxp_select '21061B7C-C828-49E4-A57D-C4E2CC6CC1C1'           

CREATE OR ALTER PROCEDURE [dbo].[ecf_cxp_select]        



 @id uniqueidentifier        



as                 



  declare @pruebas varchar(10)      



  select @pruebas = convert(varchar(10), valor) from defaults where clave = 'VOXEL_PRUEBAS'      



  if @pruebas is null  



    set @pruebas = '0'  



      



  declare @rnc varchar(20), @razonSocial varchar(100)      



  select @rnc = replace(rnc,'-',''),      



   @razonSocial = compania      



  from configuracion       



      



 select h.GuidDocumento as Id,         



  convert(decimal(19,2), h.valor * h.Tasa) as SubTotal,        



  convert (varchar(16), h.IdDocumento) as Numero,            



  h.Fecha,                



  h.compfiscal as Ncf,                



  case when isnull(left(h.Concepto,75),'') = '' then 'Compras' else left(h.concepto,75) end as Concepto,           



  h.FechaVenceNCF as VencimientoNcf,                



  --case when h.idmoneda = 1 then 'DOP' else 'USD' end as Moneda,                



  'DOP' as Moneda,    



  1 as tasa,    



  --h.tasa,                



  case when left(h.compfiscal,3) = 'E47' then 'FacturaPagoExteriorDOM' else 'FacturaProveedorInformal' end as TipoDocumento,                



  h.idSuplidor,                



  case when @pruebas = '1' then @razonSocial else h.Nombre end as Nombre,                



  h.CodigoSeguridadEcf,        



  h.PendValidacion,        



  h.HoraEnvio,        



  TipoNcf = SUBSTRING(h.compfiscal,2,2),        



  h.TrackId,        



  case when @pruebas = '1' then @rnc else dbo.ecf_clean_rnc(h.Rnc) end as Rnc,                



  convert(decimal(19,2), h.montoFacturadoBienes * h.Tasa) as MontoFacturadoBienes,              



  convert(decimal(19,2), h.montoFacturadoServicios * h.Tasa) as MontoFacturadoServicios,                



  Direccion = case when isnull(s.Direccion,'') = '' then 'n/a' else s.Direccion end,          



  Pais = case when isnull(s.Pais,'') = '' then 'DOM' else s.Pais end,                



  Ciudad = case when isnull(s.Ciudad,'') = '' then 'n/a' else s.Ciudad end,                



  Provincia = case when isnull(s.Provincia,'') = '' then 'n/a' else s.Provincia end,                



  Email = case when isnull(s.Email,'') = '' then 'n/a' else s.Email end,                  



  convert(decimal(19,2), (h.Valor + h.MontoImpuestos)  * h.Tasa) as Total,                      



  convert(decimal(19,2), h.MontoImpuestos * h.Tasa) as MontoItbis,            



  MontoExento = convert(decimal(19,2), case when h.MontoImpuestos = 0 then valor     



                                            else     



                                                case when abs(Valor - (h.MontoImpuestos / 0.18)) > 1     



                                                         then Valor - (h.MontoImpuestos / 0.18)    



                                                      else 0    



                                                end    



                                       end  * h.Tasa),            



  TipoItbis = case when h.MontoImpuestos > 0 then 'ITBIS' else 'Exento' end,            



  RateItbis = case when h.MontoImpuestos > 0 then 18 else 0 end,            



  ItbisRetenido = convert(decimal(19,2), isnulL((select h.MontoImpuestos * (sum(r.porcentaje) / 100.00)            



         from cxpDocRetencion r join cxpRetencion tr on r.idRetencion = tr.idRetencion             



         where r.iddocumento = h.iddocumento and tr.Clase = 'ITBIS'),0.00)  * h.Tasa),            



  IsrRetenido = convert(decimal(19,2), isnulL((select h.Valor * (sum(r.porcentaje) / 100.00)            



         from cxpDocRetencion r join cxpRetencion tr on r.idRetencion = tr.idRetencion             



         where r.iddocumento = h.iddocumento and tr.Clase = 'ISR'),0.00) * h.Tasa)            



 from cxpdocumentos h left join cxpsuplidores s on h.idsuplidor = s.idsuplidor                 



 where h.guidDocumento = @id 




GO

-- ============================================================
-- SOURCE FILE: ecf_cxp_send.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_cxp_send]                
 @idDoc integer            
as                     
  declare @nuId int, @isrRetenido decimal(19,2),         
   @itbisRetenido decimal(19,2)  ,             
   @itbis decimal(19,2),         
   @id uniqueidentifier,            
   @msg varchar(2000),            
   @valor decimal(19,2),         
   @subtotal1 decimal(19,2),        
   @subtotal3 decimal(19,2) = 0      ,  
   @bos char(1) = '2'  

 select @id = guiddocumento,  
        @bos = case when montoFacturadoBienes > 0 then '1' else '2' end     
 from cxpdocumentos with (NOLOCK)             
 where iddocumento = @idDoc             

 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and statusEcf <> 'CANCELADO')               
   return -1              

 declare @rncEmisor varchar(20), @emisorId uniqueidentifier          
 select @rncEmisor = LTRIM(rtrim(replace(rnc,'-',''))),          
  @emisorId = UConfiguracion          
 from Configuracion              

 select @ItbisRetenido = convert(decimal(19,2), isnulL((select h.Tasa * (h.Total * (sum(r.porcentaje) / 100.00))            
        from cxpDocRetencion r join cxpRetencion tr on r.idRetencion = tr.idRetencion                   
        where r.iddocumento = h.iddocumento and tr.Clase = 'ITBIS'),0.00)),                  
   @IsrRetenido = convert(decimal(19,2), isnulL((select h.Tasa * (h.Total * (sum(r.porcentaje) / 100.00))            
        from cxpDocRetencion r join cxpRetencion tr on r.idRetencion = tr.idRetencion                   
        where r.iddocumento = h.iddocumento and tr.Clase = 'ISR'),0.00)),        
   @itbis = h.Tasa * h.MontoImpuestos,        
   @valor = h.Tasa * h.Valor         
  from cxpdocumentos h 
  where h.idDocumento = @idDoc             

  select @subtotal1 = @itbis / 0.18        
  if abs(@subtotal1 - @valor) <= 0.5 begin         
    set @subtotal1 = @valor          
  end        
  else begin        
    set @subtotal3 = @valor - @subtotal1        
  end            

 begin try          
 begin tran           
              
  insert into ecfworker..ecf_comprobante              
  (  RncEmisor,          
  EmisorId,          
  Referencia,              
  TipoReferencia,           
  Fecha,              
  Numero,                      
  TipoNcf,              
  DocumentoIdentidad,              
  TipoDocIdentidad,              
  Sucursal,              
  RazonSocialComprador,                      
  TipoIngresos,              
  SubTotal1,                      
  SubTotal3,              
  Itbis1,         
  Itbis2,        
  Itbis3,        
  MontoItbis1,                      
  MontoDescuento,              
  MontoRecargo,                       
  StatusEcf,              
  EmailComprador,              
  CompradorId,              
  ContactoComprador,                      
  DireccionComprador,              
  PedidoNumero,              
  NumeroOrdenCompra,              
  IndicadorMontoGravado,                      
  FormaPago,                      
  Moneda,              
  TasaCambio,              
  Ncf,              
  VencimientoNcf,  
  ItbisRetenido,  
  IsrRetenido)              
  select @rncEmisor,          
  @emisorId,          
  h.GUIDDocumento,              
   'CXP',          
   h.Fecha,                    
   h.Referencia as Numero,                      
   TipoNcf = substring(h.compfiscal,2,2),                    
   dbo.LimpiarRNC(h.Rnc),              
   case len(dbo.LimpiarRnc(h.Rnc))           
     when 9 then '1'          
     when 11 then '2'          
     else ''          
    end ,
   '1',              
   h.Nombre,              
   '',              
   SubTotal1 = @subtotal1,                
   SubTotal3 = @subtotal3,                
   case when h.MontoImpuestos > 0 then '18' else '' end,              
   '',        
   '',        
   @itbis,              
   0,              
   0,              
   'PENDIENTE',              
   '',              
   h.idSuplidor,              
   '',              
   '',              
   h.Referencia,              
   h.OrdenCompra,              
   '0',               
   h.idPagoForma,              
   'DOP',              
   1,              
   h.CompFiscal,              
   h.FechaVenceNCF,  
   @itbisRetenido,  
   @isrRetenido  
  from cxpdocumentos h left join cxpsuplidores s on h.idsuplidor = s.idsuplidor                     
  where h.idDocumento = @idDoc                 
    and isnull(h.CompFiscal,'') <> ''              

  set @nuId = SCOPE_IDENTITY()              

  insert into ecfworker..ecf_comprobante_detalle              
  (ReferenciaId, ComprobanteId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, Precio,               
   Itbis, IndicadorBienOServicio, IndicadorFacturacion, IsrRetenidoItem, ItbisRetenidoItem)                 
  select h.GUIDDocumento,              
  @nuId,               
  '', left(h.Concepto,70),              
  '',              
  '43' as Unidad,              
  1,              
  e.SubTotal1,              
  e.MontoItbis1,              
  @bos,              
  '1',              
  IsrRetenido = @isRRetenido * (e.SubTotal1 / (e.SubTotal1 + e.SubTotal2 + e.SubTotal3)),              
  ItbisRetenido = @ItbisRetenido * (e.SubTotal1 / (e.SubTotal1 + e.SubTotal2 + e.SubTotal3))              
  from ecfworker..ecf_comprobante e join cxpdocumentos h on e.Referencia = h.Guiddocumento               
  where e.Id = @nuId and e.SubTotal1 > 0               

  insert into ecfworker..ecf_comprobante_detalle              
  (ReferenciaId, ComprobanteId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, Precio,               
   Itbis, IndicadorBienOServicio, IndicadorFacturacion, IsrRetenidoItem, ItbisRetenidoItem)                 
  select h.GUIDDocumento,              
  @nuId,               
  '', left(h.Concepto,70),              
  '',              
  '43' as Unidad,              
  1,              
  e.SubTotal3,              
  0,              
  @bos,              
  '4',              
  IsrRetenido = @isRRetenido - (@IsrRetenido * (e.SubTotal1 / (e.SubTotal1 + e.SubTotal2 + e.SubTotal3))),              
  0              
  from ecfworker..ecf_comprobante e join cxpdocumentos h on e.Referencia = h.Guiddocumento               
  where e.Id = @nuId and e.SubTotal3 > 0               

  if @nuId > 0 begin           
   update cxpDocumentos               
     set StatusEcf = 'ENVIADO',
         PendValidacion = 1,
         PendEnvioEcf = 0
  where iddocumento = @idDoc               
  end          
          
  commit tran           
  end try          
  begin catch          
    set @msg = ERROR_MESSAGE()          
    rollback tran          
    PRINT 'ERROR OCCURRED: ' + @msg;
    raiserror (@msg,16,6)          
  end catch     


GO

GO

-- ============================================================
-- SOURCE FILE: ecf_cxp_validate.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_cxp_validate]    



 @id int,      



 @trackId varchar(30),      



 @hash varchar(20),  



 @fechaFirma datetime,   



 @error varchar(200)      



as      







 declare @ecf varchar(20), @guiddoc uniqueidentifier 



 



 select @ecf = Compfiscal, @guiddoc = guiddocumento 



 from cxpDocumentos with (NOLOCK) 



 where iddocumento = @id 







 if isnull(@error,'') <> '' begin      



   update cxpDocumentos



     set UltError = @error, HoraEnvio = getdate()      



   where IdDocumento = @id       



 end      



 else begin      



   if isnull(@trackId,'') <> '' begin       



     update cxpDocumentos



        set UltError = null, HoraEnvio = getdate(), TrackId = @trackId, PendValidacion = 0,  



      CodigoSeguridadEcf = left(@hash,6), FechaFirmaDigital = @fechaFirma  



  where idDocumento = @id       



   end      



end      







exec ecf_logEnvio @guiddoc, @ecf, 'CXP', @trackId, @hash, @fechaFirma, @error



      



return @@error       




GO

-- ============================================================
-- SOURCE FILE: ecf_desglocePago_select.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_desglocePago_select]



 @id uniqueidentifier



as



  declare @result table (Tipo varchar(16), Monto decimal(19,2))







  declare @ef decimal(19,2), @ck decimal(19,2), @tarj decimal(19,2), @ncr decimal(19,2),



  @otros  decimal(19,2), @credito bit, @total decimal(19,2)







  select @credito = credito, @total = Total



  from factura with (NOLOCK)



  where idfactura = @id







  if @credito = 1 begin



    select '4' as Tipo, @total as Monto



	return 0 



  end







  select @ef = Efectivo, @ck = Cheque, @tarj = Tarjeta, @ncr = 0, @otros = Otros 



  from facturaCobro fc with (NOLOCK) 



  where fc.IdFactura = @id 







  insert into @result values ('1', @ef), ('2', @ck), ('3',@tarj), ('7',@ncr),('8',@otros)







  select * from @result where monto > 0   




GO

-- ============================================================
-- SOURCE FILE: ecf_dev_send.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_dev_send]  
 @id uniqueidentifier        
as                 
 declare @nuId int         
        
 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf = 'VALIDADO') begin 
   return -1    
 end

 -- Intentar resolver NcfModificado si vino vacio en devolucion
 declare @ncfModificado varchar(19), @fechaNcfModificado datetime
 select @ncfModificado = isnull(h.ncfModificado,''), @fechaNcfModificado = h.FechaNcfModificado
 from devolucion h where h.iddevolucion = @id

 if @ncfModificado = ''
 begin
   select top 1 @ncfModificado = CompFiscal, @fechaNcfModificado = Fecha
   from Factura where idFactura = (select idFactura from devolucion where iddevolucion = @id)
 end

 declare @tipoNcf varchar(2) = substring(isnull((select CompFiscal from devolucion where iddevolucion = @id),''), 2, 2)
 if @tipoNcf = '34' and isnull(@ncfModificado, '') = ''
 begin
   raiserror('Error: La Devolución / Nota de Crédito no tiene asignado el comprobante modificado (Factura / NCF Modificado).', 16, 1)
   return -1
 end

 -- Persistir en devolucion si fue resuelto
 if isnull(@ncfModificado,'') <> '' and exists (select 1 from devolucion where iddevolucion = @id and isnull(ncfModificado,'') = '')
 begin
   update devolucion
   set ncfModificado = @ncfModificado,
       FechaNcfModificado = @fechaNcfModificado,
       TipoNcf = substring(@ncfModificado, 2, 2)
   where iddevolucion = @id
 end

 -- Si existia un intento previo que fallo o no fue validado, limpiarlo para reenviar
 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA')) begin
   delete from ecfworker..ecf_comprobante_detalle where ComprobanteId in (select Id from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA'))
   delete from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA')
 end
   
 declare @rncEmisor varchar(20), @emisorId uniqueidentifier
 select @rncEmisor = LTRIM(rtrim(replace(rnc,'-',''))),
		@emisorId = UConfiguracion
 from Configuracion  
 
 declare @itbis decimal(19,2)    
    
 select @itbis = isnull((SELECT a.Valor    
      FROM cgCodificacion a    
       JOIN Defaults b    
        ON CAST(b.Valor AS VARCHAR(16)) = a.idCuenta    
      WHERE b.Clave = 'CuentaITBIS'    
      AND a.GUIDDocumento = @id),0) 
 
 declare @subtotal1 decimal(19,2) = 0
 if @itbis > 0 
    set @subtotal1 = @itbis / 0.18

 begin try    
 begin tran     
 insert into ecfworker..ecf_comprobante          
 (  RncEmisor,
	EmisorId,Referencia,       
	TipoReferencia,  
    Fecha,          
    Numero,                  
    TipoNcf,          
    DocumentoIdentidad,          
    TipoDocIdentidad,          
    Sucursal,          
    RazonSocialComprador,                  
    TipoIngresos,          
    SubTotal1,                  
    SubTotal3,          
    Itbis1,                          
    MontoItbis1,                  
    MontoDescuento,          
    MontoRecargo,                   
    StatusEcf,          
    EmailComprador,          
    CompradorId,          
    ContactoComprador,                  
    DireccionComprador,          
    PedidoNumero,          
    NumeroOrdenCompra,          
    IndicadorMontoGravado,                  
    FormaPago,                  
    Moneda,          
    TasaCambio,          
    Ncf,          
    VencimientoNcf,        
    NcfModificado,        
    FechaNcfModificado,    
    IndNotaCredito,
	CodigoModificacion)          
 select @rncEmisor,
		@emisorId,
		h.iddevolucion,           
  'DEV',  
  h.Fecha,                
  h.CompFiscal as Numero,                  
  TipoNcf = substring(h.compfiscal,2,2),                
  replace(isnull(ft.ClienteRNC, (SELECT TOP 1 RNC_Cedula FROM Cliente c WHERE c.idCliente = h.idCliente)),'-','') as Rnc,          
  '' as idTipoIdentificacion,             
  '1',          
  h.Cliente as Nombre,          
  '',    
  SubTotal1 = @subtotal1,         
  SubTotal3 = ((h.Total * h.Tasa) - @itbis) - @subtotal1,        
  case when h.itbis > 0 then '18' else '' end,          
  MontoImpuestos = h.Tasa * isnull((select sum(DevItbis) from devolucionDet with (NOLOCK) where iddevolucion = h.IdDevolucion and DevItbis > 0),0),          
  0,          
  0,          
  'PENDIENTE',          
  '',          
  null,          
  '',          
  '',          
  h.CompFiscal,          
  '' OrdenCompra,          
  '0',           
  '1',          
  'DOP',          
  1,          
  h.CompFiscal,          
  h.FechaVenceNCF,        
  isnull(nullif(h.ncfModificado,''), @ncfModificado),        
  isnull(h.FechaNcfModificado, isnull(@fechaNcfModificado, ft.Fecha)),    
  IndNotaCredito = case 
    when substring(isnull(h.compfiscal,''),2,2) = '34' or isnull(h.TipoNcf,'') = '34' then 
      case when isnull(datediff(day, isnull(ft.Fecha, isnull(h.FechaNcfModificado, @fechaNcfModificado)), h.Fecha), 0) > 30 then '1' else '0' end 
    else '' 
  end,
  '3'
 from devolucion h 
 left join factura ft on isnull(nullif(h.ncfModificado,''), @ncfModificado) = ft.CompFiscal  
 where h.iddevolucion = @id        
   and isnull(h.CompFiscal,'') <> ''          
   and (h.StatusEcf in ('PENDIENTE', 'ERROR', 'ENVIANDO', 'ENVIADO') or isnull(h.StatusEcf,'') = '')
              
 set @nuId = SCOPE_IDENTITY()          
 if @nuId is not null begin 
 
   insert into ecfworker..ecf_comprobante_detalle
   (ComprobanteId, ReferenciaId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, precio,  
    Itbis, Descuento, IndicadorBienOServicio, IndicadorFacturacion)
   select Id, @id, ncf, 'GRAVADO','GRAVADO','43',1, SubTotal1, MontoItbis1,0, '2','1'
   from ecfworker..ecf_comprobante
   where Id = @nuId and SubTotal1 > 0
   union all
   select Id, @id, ncf, 'EXENTO','EXENTO','43',1, SubTotal3, 0,0, '2', '4'
   from ecfworker..ecf_comprobante
   where Id = @nuId and SubTotal3 > 0
  
   update devolucion     
     set StatusEcf = 'ENVIADO'          
   where iddevolucion = @id
   
   update cxc
     set StatusEcf = 'ENVIADO'          
   where idcxc = @id
 end    
    
 commit tran    
    
 end try    
 begin catch     
   declare @msg varchar(2000) = 'Error enviando ECF: ' + error_message()    
   rollback tran     
   raiserror (@msg,16,6)    
 end catch    
      
return 0    
GO
PRINT 'Procedimiento creado/actualizado: dbo.ecf_dev_send';
GO

-- ============================================================
-- SOURCE FILE: ecf_devolucion_cambiarEstado.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_devolucion_cambiarEstado]



 @id uniqueidentifier, 



 @st varchar(16),



 @usuario varchar(30)



as



 declare @pendEnvio bit = 1,



		 @pendVal bit = 1







select @pendEnvio = PendEnvio, @pendVal = PendValidacion from ecf_status_envio where Id = @st 



		  



 update devolucion



   set StatusEcf = @st,



	   PendEnvioEcf = @pendEnvio,



	   PendValidacion = @pendVal



 where idDevolucion = @id 




GO

-- ============================================================
-- SOURCE FILE: ecf_emisor_select.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_emisor_select] 



as



  



  select replace(rnc,'-','') as Rnc,



		 Compania as Nombre,



		 Direccion,



		 'DOM' as Pais,



		 Ciudad,



		 'DN' as Provincia



  from configuracion



  /*







  select replace(rnc,'-','') as Rnc,



		 'Body Shop Athletic Club' as Compania,



		 'Calle Fantino Falco #42' as Direccion,



		 'DOM' as Pais,



		 'Plaza Body Shop 4to, Nivel Ens. Naco, Santo Domingo' as Ciudad,



		 'DN' as Provincia



  from configuracion



  */




GO

-- ============================================================
-- SOURCE FILE: ecf_fact_send.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_fact_send]         
 @id uniqueidentifier        
as                 
 declare @nuId int, @msg varchar(2000)         
        
 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf = 'VALIDADO')           
   return -1          

 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA')) begin
   delete from ecfworker..ecf_comprobante_detalle where ComprobanteId in (select Id from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA'))
   delete from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf not in ('VALIDADO', 'ENCOLA')
 end
    
 if exists (select 1 from factura where idfactura = @id and cancelado = 1)    
   return -1    
       
 declare @rncEmisor varchar(20), @emisorId uniqueidentifier      
 select @rncEmisor = LTRIM(rtrim(replace(rnc,'-',''))),      
  @emisorId = UConfiguracion      
 from Configuracion          
      
 begin try        
 begin tran         
          
 insert into ecfworker..ecf_comprobante          
 (  RncEmisor,      
    EmisorId,      
    Referencia,          
    TipoReferencia,        
    Fecha,          
    Numero,                  
    TipoNcf,          
    DocumentoIdentidad,          
    TipoDocIdentidad,          
    Sucursal,          
    RazonSocialComprador,                  
    TipoIngresos,          
    SubTotal1,                  
    SubTotal3,          
    Itbis1,                
    Itbis2,        
    Itbis3,        
    MontoItbis1,                  
    MontoDescuento,          
    MontoRecargo,                   
    StatusEcf,          
    EmailComprador,          
    CompradorId,          
    ContactoComprador,                  
    DireccionComprador,          
    PedidoNumero,          
    NumeroOrdenCompra,          
    IndicadorMontoGravado,                  
    FormaPago,                  
    Moneda,          
    TasaCambio,          
    Ncf,          
    VencimientoNcf)          
 select @rncEmisor,      
  @emisorId,      
  h.idfactura,           
  'FT',        
  h.Fecha,                
  h.CompFiscal as Numero,                  
  TipoNcf = substring(h.compfiscal,2,2),                
  dbo.LimpiarRNC(h.ClienteRNC) as Rnc,          
  '' as idTipoIdentificacion,             
  '1',          
  h.Cliente as Nombre,          
  '',          
  SubTotal1 = h.Tasa * sum( case when fd.Itbis > 0 then ((fd.precio * fd.cantidad) - fd.descuento) else 0.00 end),         
  SubTotal3 = h.Tasa * sum( case when fd.Itbis > 0 then 0 else ((fd.precio * fd.cantidad) - fd.descuento) end),         
  case when h.Itbis > 0 then '18' else '' end,          
  '',        
  '',        
  h.Itbis * h.tasa as MontoImpuestos,          
  0,          
  0,          
  'PENDIENTE',          
  '',          
  null,          
  '',          
  '',          
  h.CompFiscal,          
  '' OrdenCompra,          
  '0',           
  '1',          
  'DOP',          
  1,          
  h.CompFiscal,          
  h.FechaVenceNCF        
 from factura h with (NOLOCK) join facturadet fd with (NOLOCK) on h.idFactura = fd.idfactura         
 where h.idfactura = @id        
   and isnull(h.CompFiscal,'') <> ''          
   and (h.StatusEcf in ('PENDIENTE', 'ERROR', 'ENVIANDO', 'ENVIADO') or isnull(h.StatusEcf,'') = '')           
 group by h.idfactura,           
  h.Fecha,                
  h.CompFiscal,                  
  substring(h.compfiscal,2,2),                
  h.ClienteRNC,            
  h.Cliente,            
  h.Itbis,        
  h.tasa,         
  h.CompFiscal,            
  h.CompFiscal,          
  h.FechaVenceNCF        
        
 set @nuId = SCOPE_IDENTITY()          
 if @nuId is not null begin          
   insert into ecfworker..ecf_comprobante_detalle          
   (ComprobanteId, ReferenciaId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, precio,           
    Itbis, Descuento, IndicadorBienOServicio, IndicadorFacturacion)          
   select Id, @id, ncf, 'GRAVADO','GRAVADO','43',1, SubTotal1, MontoItbis1,0, '1','1'          
   from ecfworker..ecf_comprobante          
   where Id = @nuId and SubTotal1 > 0          
   union all          
   select Id, @id, ncf, 'EXENTO','EXENTO','43',1, SubTotal3, 0,0, '1', '4'          
   from ecfworker..ecf_comprobante          
   where Id = @nuId and SubTotal3 > 0          
          
   update factura           
     set StatusEcf = 'ENVIADO'
   where idfactura = @id
 end          
          
 commit tran          
 end try          
 begin catch          
   set @msg = 'Error enviando ECF: ' + ERROR_MESSAGE()          
   rollback tran          
   PRINT @msg;
   raiserror (@msg,16,6)          
 end catch          
        
return 0 
GO
PRINT 'Procedimiento creado/actualizado: dbo.ecf_fact_send';
GO

-- ============================================================
-- SOURCE FILE: ecf_factura_cambiarEstado.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_factura_cambiarEstado]



 @id uniqueidentifier, 



 @st varchar(16),



 @usuario varchar(30)



as



 declare @pendEnvio bit = 1,



		 @pendVal bit = 1







select @pendEnvio = PendEnvio, @pendVal = PendValidacion from ecf_status_envio where Id = @st 



		  



 update factura 



   set StatusEcf = @st,



	   PendEnvioEcf = @pendEnvio,



	   PendValidacion = @pendVal



 where idfactura = @id 




GO

-- ============================================================
-- SOURCE FILE: ecf_factura_select.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_factura_select]                     



 @id uniqueidentifier                    



as                    



 declare @ocNum varchar(20) = '', --'4500352238',          



   @ocFec datetime, --'2018-11-10',          



   @fecEnt datetime -- = '2020-10-10'          



          



 select     



  convert(decimal(19,2), (f.SubTotal - f.Descuento) * f.Tasa) as SubTotal,                   



  convert(decimal(19,2), f.Itbis * f.Tasa) as MontoItbis,                  



  convert(decimal(19,2), 0) as SubTotalOtraMoneda,                   



  convert(decimal(19,2), 0) as MontoItbisOtraMoneda,                  



  --convert(decimal(19,2), f.SubTotal- f.Descuento) as SubTotalOtraMoneda,                   



  --convert(decimal(19,2), f.Itbis) as MontoItbisOtraMoneda,                  



  0.00 as MontoDescuento,                  



  f.Factura as Numero,   



  1 as TipoPago, 



  f.IdFactura as Id,                    



  f.Fecha,                    



  f.Cliente,                    



  /*



  case len(replace(replace(f.ClienteRNC,'-',''),' ',''))   



    when 9 then replace(replace(f.ClienteRNC,'-',''),' ','')



    when 11 then replace(replace(f.ClienteRNC,'-',''),' ','') 



    else f.ClienteRnc     



  end as RNC,    



  case len(replace(replace(f.ClienteRNC,'-',''),' ',''))    */



  case len(dbo.ecf_clean_rnc(f.ClienteRnc))   



    when 9 then dbo.ecf_clean_rnc(f.ClienteRnc)



    when 11 then dbo.ecf_clean_rnc(f.ClienteRnc) 



    else f.ClienteRnc     



  end as RNC,    



  case len(dbo.ecf_clean_rnc(f.ClienteRnc))    



    when 9 then ''    



    when 11 then ''    



    when 0 then ''    



    else f.ClienteRNC



  end as IdentificadorExtranjero,    



  --ltrim(rtrim(f.ClienteRNC)) as Rnc,                    



  f.CompFiscal as Ncf,                    



  isnull(f.TipoNcf, Substring(f.Compfiscal,2,2)) as TipoNcf,            



  convert(varchar(16), f.idTipoIngreso) as TipoIngresos,                    



  '' as Sucursal,                    



  Direccion = isnull(f.Direccion,'') + '.',           



  f.FechaVenceNCF as VencimientoNcf ,                    



  f.Credito,                    



  f.Cancelado,                    



  f.TipoAnulacion,                    



  f.FechaCancelado,                



  f.TrackId,                



  f.HoraEnvio,                



  f.PendValidacion,                



  f.CodigoSeguridadEcf      ,          



  ltrim(rtrim(f.Contacto)) as Contacto,          



  f.Factura as PedidoNumero,          



  @ocNum as NumeroOrdenCompra,          



  @ocFec as FechaOrdenCompra,          



  @fecEnt as FechaEntrega,          



  c.Fax as ClienteId,          



  c.Email as Email,          



  '' as ZonaVenta  ,        



  IndicadorMontoGravado = '0',    



  Moneda = 'DOP',    



  --Moneda = case f.idMoneda when 1 then 'DOP' else 'USD' end,    



  --f.Tasa as TasaCambio    



  1.0 as TasaCambio    



  from factura f with (NOLOCK)  join cliente c on f.idcliente = c.idcliente            



  where f.IdFactura = @id and cancelado = 0                  




GO

-- ============================================================
-- SOURCE FILE: ecf_factura_selectParaEnviar.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_factura_selectParaEnviar]                      



as                    



          



 select     



  convert(decimal(19,2), (f.SubTotal - f.Descuento) * f.Tasa) as SubTotal,                   



  convert(decimal(19,2), f.Itbis * f.Tasa) as MontoItbis,                  



  convert(decimal(19,2), f.SubTotal- f.Descuento) as SubTotalOtraMoneda,                   



  convert(decimal(19,2), f.Itbis) as MontoItbisOtraMoneda,                  



  0.00 as MontoDescuento,                  



  f.Factura as Numero,                    



  f.IdFactura as Id,                    



  f.Fecha,                    



  f.Cliente,                    



  case len(ltrim(rtrim(f.ClienteRNC)))    



    when 9 then ltrim(rtrim(f.ClienteRNC))      



 when 11 then ltrim(rtrim(f.ClienteRNC))    



 when 0 then ltrim(rtrim(f.ClienteRNC))    



 else ''     



  end as RNC,    



  case len(ltrim(rtrim(f.ClienteRNC)))    



    when 9 then ''    



 when 11 then ''    



 when 0 then ''    



 else ltrim(rtrim(f.ClienteRNC))    



  end as IdentificadorExtranjero,    



  --ltrim(rtrim(f.ClienteRNC)) as Rnc,                    



  f.CompFiscal as Ncf,                    



  isnull(f.TipoNcf, Substring(f.Compfiscal,2,2)) as TipoNcf,            



  convert(varchar(16), f.idTipoIngreso) as TipoIngresos,                    



  '' as Sucursal,                    



  Direccion = isnull(f.Direccion,'') + '.',           



  f.FechaVenceNCF as VencimientoNcf ,                    



  f.Credito,                    



  f.Cancelado,                    



  f.TipoAnulacion,                    



  f.FechaCancelado,                



  f.TrackId,                



  f.HoraEnvio,                



  f.PendValidacion,                



  f.CodigoSeguridadEcf      ,          



  ltrim(rtrim(f.Contacto)) as Contacto,          



  f.Factura as PedidoNumero,          



  f.Referencia as NumeroOrdenCompra,          



  f.fecha as FechaOrdenCompra,          



  null as FechaEntrega,          



  c.Fax as ClienteId,          



  c.Email as Email,          



  '' as ZonaVenta  ,        



  IndicadorMontoGravado = '0',    



  Moneda = 'DOP',    



  --Moneda = case f.idMoneda when 1 then 'DOP' else 'USD' end,    



  --f.Tasa as TasaCambio    



  1.0 as TasaCambio    



  from factura f with (NOLOCK)  join cliente c on f.idcliente = c.idcliente            



  where f.cancelado = 0                  



  and f.StatusEcf = 'ENVIANDO'   



  and f.CompFiscal like 'E%'



  order by f.CompFiscal  




GO

-- ============================================================
-- SOURCE FILE: ecf_facturadet_select.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_facturadet_select]        



 @id uniqueidentifier        



as          



  



  declare @det table (        



    IdFactura uniqueidentifier,         



 idFacturaDet uniqueidentifier,        



 idProducto varchar(25),        



 Producto varchar(2000),         



 Cantidad float,        



 Precio decimal(19,2),         



 idUnidad varchar(16),        



 Descuento decimal(19,2),        



 Itbis decimal(19,2),        



 LineTotal decimal(19,2),         



 idCargo uniqueidentifier,        



 dias decimal(19,2),        



 PrecioDia decimal(19,2),        



 idAlmacen varchar(16),        



 Linea int         



  )        



        



  insert into @det         



  (IdFactura, idFacturaDet, idProducto, Producto, Cantidad, Precio, idUnidad,         



   Descuento, Itbis, LineTotal, idCargo, dias, PrecioDia, idAlmacen, Linea)        



  select idFactura, idFacturaDet, idProducto, Producto, Cantidad, Precio, idUnidad,         



   Descuento, Itbis, LineTotal, idCargo, dias, PrecioDia, idAlmacen, Linea        



  from FacturaDet         



  where idFactura = @id and idCargo is null         



        



  update e        



    set e.producto = e.Producto + ISNULL(char(13) + char(10) + ' (' + strs.CommaStr + ')', '') ,        



  e.Precio = e.Precio + ISNULL(totales.TPrecio,0),        



  e.PrecioDia = e.PrecioDia + ISNULL(totales.TPrecioDia,0),        



  e.Descuento = e.Descuento + ISNULL(totales.TDescuento,0),        



  e.Itbis = e.Itbis + ISNULL(totales.TItbis,0),        



  e.LineTotal = e.LineTotal + ISNULL(totales.TLineTotal,0)        



  FROM @det e outer apply (SELECT  idfacturadet,STUFF((SELECT  ',' + producto FROM Facturadet EE        



        WHERE  EE.idcargo=E.IdFacturaDet         



       FOR XML PATH('')), 1, 1, '') AS 'CommaStr') strs        



   outer apply (SELECT  SUM(precio) as TPrecio, SUM(descuento) as TDescuento,         



         SUM(itbis) as TItbis, SUM(linetotal) as TLineTotal,        



         SUM(PrecioDia) as TPrecioDia        



          from FacturaDet where idFactura = e.IdFactura and idCargo = e.idFacturaDet) totales        



  



  



  select fd.Idproducto as ProductoId,        



   left(fd.Producto, 70) as Producto,       



   left(p.Observacion,70) as Descripcion,            



   convert(decimal(19,2), fd.Cantidad) as Cantidad,        



   convert(decimal(19,2), fd.LineTotal * f.tasa) as LineTotal,        



   convert(decimal(19,2), f.tasa * fd.Precio) as Precio,        



   convert(decimal(19,2), fd.Itbis * f.Tasa) as Itbis,        



   convert(decimal(19,2), 0) as PrecioOtraMoneda,        



   convert(decimal(19,2), 0) as ItbisOtraMoneda,        



   convert(decimal(19,4), case when fd.Itbis = 0 then 0 else 18 end) as PorcItbis,        



   convert(decimal(19,2), f.Tasa * fd.Descuento) as Descuento,        



   convert(decimal(19,4), 0) as PorcDescuento,        



   fd.idFacturaDet as Id        



  from factura f with (NOLOCK) join @det fd on f.idfactura = fd.idFactura      



  join producto p on fd.idProducto = p.idProducto         



  where f.idFactura = @id 




GO

-- ============================================================
-- SOURCE FILE: ecf_facturas_pendEnvio.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_facturas_pendEnvio]      



 @Desde datetime, @Hasta datetime, @filtro varchar(20) = '*'            



as              



SELECT       



  idFactura,               



  Factura,               



  idCliente,               



  Fecha,               



  Hora,            



  Referencia,               



  Cancelado,               



  FechaCancelado,              



  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE SubTotal END) as SubTotal,               



  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE Itbis END) as Itbis,               



  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE Descuento END) as Descuento,               



  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE Total END) as Total,               



  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE (CASE WHEN Credito = 1 THEN Total ELSE 0.00 END) END) as TotalCR,               



  (CASE WHEN Cancelado = 1 THEN 0.00 ELSE (CASE WHEN Credito = 0 THEN Total ELSE 0.00 END) END) as TotalCO,               



  (CASE WHEN Cancelado = 1 THEN 'NULO' ELSE Cliente END) as Cliente,              



  (CASE WHEN f.credito =1 THEN (dbo.cxcbalancedocumento(f.idfactura, @Hasta, null)) ELSE f.total END) as Pagado,              



  f.Usuario,              



  Condicion,              



  Credito,                



  idCondicion,              



  e.idEmpleado,              



  e.Empleado,              



  m.idMoneda,              



  m.Moneda,              



  f.CompFiscal,          



  f.Tasa,      



  f.PendValidacion,        



  f.PendEnvioEcf,       



  f.CodigoSeguridadEcf,        



  f.UltError,



  f.StatusEcf



FROM                       



  Factura f with (NOLOCK)         



  join svEmpleado e with (NOLOCK) on f.idEmpleado = e.idEmpleado              



  join Moneda m with (NOLOCK) on f.idMoneda = m.idMoneda              



WHERE              



  Fecha BETWEEN @Desde AND @Hasta              



  and Cancelado = 0      



  and f.CompFiscal like 'E%'  



  and @filtro in ('*', f.StatusEcf)    



ORDER BY               



  m.idMoneda,              



  f.Fecha,              



  f.Factura 




GO

-- ============================================================
-- SOURCE FILE: ecf_gastomenor_select.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_gastomenor_select]   



 @id uniqueidentifier  



as  



 select g.GUIDDocumento as Id,  



  g.Fecha,  



  g.CompFiscal as Ncf,  



  g.Compfiscal as Concepto,  



  g.CompFiscal as Numero,  



  g.PendValidacion,  



  g.TrackId,  



  g.UltError,  



  g.HoraEnvio,  



  g.CodigoSeguridadEcf,  



  g.FechaFirmaDigital,  



  g.TipoNCF,  



  g.FechaVenceNCF as VencimientoNcf,  



  isnull(sum(d.Importe),0.00) as SubTotal  



 from bcoGastosMenores g left join bcoGastosMenoresDet d on g.guiddocumento = d.guiddocumento   



 where g.Guiddocumento = @id --and g.PendEnvioEcf = 1 and g.Cancelado = 0   



 group by g.GUIDDocumento,  



  g.Fecha,  



  g.CompFiscal,  



  ---g.Numero,  



  g.PendValidacion,  



  g.TrackId,  



  g.UltError,  



  g.HoraEnvio,  



  g.CodigoSeguridadEcf,  



  g.FechaFirmaDigital,  



  g.TipoNCF,  



  g.FechaVenceNCF  



  




GO

-- ============================================================
-- SOURCE FILE: ecf_gm_cambiarEstado.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_gm_cambiarEstado]



 @id uniqueidentifier, 



 @st varchar(16),



 @usuario varchar(30)



as



 declare @pendEnvio bit = 1,



		 @pendVal bit = 1







select @pendEnvio = PendEnvio, @pendVal = PendValidacion from ecf_status_envio where Id = @st 



		  



 update bcoGastosMenores



   set StatusEcf = @st,



	   PendEnvioEcf = @pendEnvio,



	   PendValidacion = @pendVal



 where GUIDDocumento = @id 




GO

-- ============================================================
-- SOURCE FILE: ecf_gm_send.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_gm_send]      



 @id uniqueidentifier  



as           



 declare @nuId int = 0, @msg varchar(2000) ---, @isrRetenido decimal(19,2), @itbisRetenido decimal(19,2)    



  



 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf <> 'CANCELADO')     



   return -1    



  



 declare @rncEmisor varchar(20), @emisorId uniqueidentifier  



 select @rncEmisor = LTRIM(rtrim(replace(rnc,'-',''))),  



  @emisorId = UConfiguracion  



 from Configuracion      



    



 begin try  



 begin tran   



  



 insert into ecfworker..ecf_comprobante    



 (  RncEmisor,  



 EmisorId,  



 Referencia,    



 TipoReferencia,  



    Fecha,    



    Numero,            



    TipoNcf,    



    DocumentoIdentidad,    



    TipoDocIdentidad,    



    Sucursal,    



    RazonSocialComprador,            



    TipoIngresos,    



    SubTotal1,            



    SubTotal3,    



    Itbis1,                    



    MontoItbis1,            



    MontoDescuento,    



    MontoRecargo,             



    StatusEcf,    



    EmailComprador,    



    CompradorId,    



    ContactoComprador,            



    DireccionComprador,    



    PedidoNumero,    



    NumeroOrdenCompra,    



    IndicadorMontoGravado,            



    FormaPago,            



    Moneda,    



    TasaCambio,    



    Ncf,    



    VencimientoNcf)    



 select @rncEmisor,  



  @emisorId,  



  h.GUIDDocumento,  



  'GM',  



  h.Fecha,          



  h.CompFiscal as Numero,            



  TipoNcf = substring(h.compfiscal,2,2),          



  '' as Rnc,    



  '' as idTipoIdentificacion,       



  '1',    



  '' as Nombre,    



  '',    



  SubTotal1 = 0,  



  SubTotal3 = convert(decimal(19,2), sum(d.Importe)),       



  '' ,    



  0 as MontoImpuestos,    



  0,    



  0,    



  'PENDIENTE',    



  '',    



  null,    



  '',    



  '',    



  h.CompFiscal,    



  '' OrdenCompra,    



  '0',     



  isnull(h.idPagoForma,'1'),



  'DOP',    



  1,    



  h.CompFiscal,    



  h.FechaVenceNCF    



 from bcoGastosMenores h join bcoGastosMenoresDet d on h.GUIDDocumento = d.GUIDDocumento  



 where h.GuidDocumento = @id  



   and isnull(h.CompFiscal,'') <> ''    



   and (h.StatusEcf in ('PENDIENTE','ERROR','') or h.StatusEcf is null)     



 group by h.GUIDDocumento,     



    h.Fecha,          



    h.CompFiscal,            



    substring(h.compfiscal,1,2),          



    h.StatusEcf,  



    h.CompFiscal,  



    h.idPagoForma,  



    h.CompFiscal,    



    h.FechaVenceNCF    



    



 set @nuId = SCOPE_IDENTITY()    



 if @nuId > 0 begin    



 insert into ecfworker..ecf_comprobante_detalle    



 (ReferenciaId, ComprobanteId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, Precio,     



  Itbis, IndicadorBienOServicio, IndicadorFacturacion, IsrRetenidoItem, ItbisRetenidoItem)      



   



 select h.GUIDDocumento,    



 @nuId,     



    '',   



 'Gastos Menores Electronicos',    



 '',    



 '43' as Unidad,    



 1,    



 e.SubTotal3,    



 0,    



 '2',    



 '4',    



 IsrRetenido = 0,--@isRRetenido - (@IsrRetenido * (e.SubTotal1 / (e.SubTotal1 + e.SubTotal2 + e.SubTotal3))),    



 0    



 from ecfworker..ecf_comprobante e join bcoGastosMenores h on e.Referencia = h.Guiddocumento    



 where e.Id = @nuId   



   



   



   update bcoGastosMenores     
      set StatusEcf = 'ENVIADO',
          PendValidacion = 1,
          PendEnvioEcf = 0
    where Guiddocumento = @id     



 end  



  



 commit tran  



 end try  



 begin catch  



   set @msg = ERROR_MESSAGE()  



   rollback tran  



   raiserror (@msg,16,6)  



 end catch  




GO

-- ============================================================
-- SOURCE FILE: ecf_gm_validate.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_gm_validate]    



 @id uniqueidentifier,      



 @trackId varchar(30),      



 @hash varchar(20),  



 @fechaFirma datetime,   



 @error varchar(200)      



as      







 declare @ecf varchar(20)



 



 select @ecf = Compfiscal



 from bcoGastosMenores with (NOLOCK) 



 where guiddocumento = @id 







 if isnull(@error,'') <> '' begin      



   update bcoGastosMenores



     set UltError = @error, HoraEnvio = getdate()      



   where GUIdDocumento = @id       



 end      



 else begin      



   if isnull(@trackId,'') <> '' begin       



     update bcoGastosMenores



        set UltError = null, HoraEnvio = getdate(), TrackId = @trackId, PendValidacion = 0,  



      CodigoSeguridadEcf = left(@hash,6), FechaFirmaDigital = @fechaFirma  



  where guidDocumento = @id       



   end      



end      







exec ecf_logEnvio @id, @ecf, 'GM', @trackId, @hash, @fechaFirma, @error



      



return @@error       




GO

-- ============================================================
-- SOURCE FILE: ecf_logEnvio.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_logEnvio] 



 @id uniqueidentifier, 



 @ncf varchar(20),



 @tipo varchar(16), 



 @trackId varchar(100),      



 @hash varchar(20),  



 @fechaFirma datetime,   



 @error varchar(200)      



 as



 if isnull(@error ,'') = '' set @error = 'OK'







 insert into ecf_compfiscal_log (Compfiscal, trackId, Hashval, Descripcion, ReferenciaId, TipoRef, FechaFirma)



 values (@ncf, @trackId, @hash, @error, @id, @tipo, @fechaFirma)




GO

-- ============================================================
-- SOURCE FILE: ecf_marcar_cxp_Enviado.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_marcar_cxp_Enviado]



 @id int, @pend bit, @error varchar(100)



as 



 update cxpdocumentos



   set PendEnvioEcf = @pend, UltError = case when @pend = 1 then @error else '' end



 where idDocumento = @id and PendEnvioEcf = 1 




GO

-- ============================================================
-- SOURCE FILE: ecf_marcar_gm_Enviado.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_marcar_gm_Enviado]



 @id uniqueidentifier, @pend bit, @error varchar(100)



as 



 update bcoGastosMenores



   set PendEnvioEcf = @pend, UltError = case when @pend = 1 then @error else '' end



 where GuidDocumento = @id and PendEnvioEcf = 1 




GO

-- ============================================================
-- SOURCE FILE: ecf_marcar_procesado.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_marcar_procesado]



 @numero varchar(20), @trackId varchar(50), @codSeg varchar(20), @fecFirma datetime, @status varchar(50), @mensaje varchar(2000)



as  



 insert into ecf_compfiscal_log



 (CompFiscal, tipoRef, trackId, Hashval, Descripcion, FechaFirma)



 values (@numero, substring(@numero, 2,2), @trackId, @codSeg, left((@status + '|' + @mensaje),2000), @fecFirma)



  



 if @numero like 'E43%' begin  
    update bcoGastosMenores  
      set PendValidacion = 0, 
		 StatusEcf = @status, 
		 UltError = case when @status like '%acept%' or @status like '%valid%' then '' else @mensaje end, 
		 CodigoSeguridadEcf = @codSeg, 
		 TrackId = @trackId, 
		 FechaFirmaDigital = @fecFirma
    where CompFiscal = @numero 
    return @@ERROR
  end  



 



   if @numero like 'E4[1,7]%' begin      
    update cxpDocumentos  
      set PendValidacion = 0, 
		 StatusEcf = @status, 
		 UltError = case when @status like '%acept%' or @status like '%valid%' then '' else @mensaje end, 
		 CodigoSeguridadEcf = @codSeg, 
		 TrackId = @trackId, 
		 FechaFirmaDigital = @fecFirma
  where CompFiscal = @numero and idTrans = 1 
  return @@error 
  end  



 



 if @numero like 'E3[3,4]%' begin  



   update cxc  



     set PendValidacion = 0, 



		 StatusEcf = @status, 



		 UltError = case when @status like '%acept%' then '' else @mensaje end, 



		 CodigoSeguridadEcf = @codSeg, 



		 TrackId = @trackId, 



		 FechaFirmaDigital = @fecFirma



   where CompFiscal = @numero and PendValidacion = 1 and cancelado = 0  



   return @@ERROR



 end  







 if substring(@numero,2,2) in ('31','32','44','45','46') begin 



   update factura



     set PendValidacion = 0, 



		 StatusEcf = @status, 



		 UltError = case when @status like '%acept%' then '' else @mensaje end, 



		 CodigoSeguridadEcf = @codSeg, 



		 TrackId = @trackId, 



		 FechaFirmaDigital = @fecFirma



   where CompFiscal = @numero and PendValidacion = 1 and cancelado = 0  



   return @@ERROR



  end  







  return 1




GO

-- ============================================================
-- SOURCE FILE: ecf_reenviar.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_reenviar]



 @id uniqueidentifier,



 @ncf varchar(20),



 @usuario varchar(30)



as



 declare @tipo varchar(3) = substring(@ncf,2,2)







 if @tipo in ('34','33')



    update cxc set statusecf = 'ENVIANDO', pEndenvioEcf = 1, PendValidacion = 1, UltError = '' where idcxc = @id 



 else if @tipo in ('41','47')



   update cxpDocumentos set statusecf = 'ENVIANDO', pEndenvioEcf = 1, PendValidacion = 1, UltError = '' where guiddocumento = @id 



 else if @tipo = '43'



  update bcoGastosMenores set statusecf = 'ENVIANDO', pEndenvioEcf = 1, PendValidacion = 1, UltError = '' where guiddocumento = @id 



 else 



   update factura set statusecf = 'ENVIANDO', pEndenvioEcf = 1, PendValidacion = 1, UltError = '' where idfactura = @id 







 insert into ecf_compfiscal_log (Compfiscal, Descripcion, ReferenciaId, TipoRef)



 values (@ncf, ('ECF Reenviado por ' + @usuario), @id, @tipo) 








GO

-- ============================================================
-- SOURCE FILE: ecf_selectPendEnvio.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[ecf_selectPendEnvio]    



as    



  declare @st varchar(20) = 'ENVIANDO'     



      



  select Compfiscal as Ncf, IdFactura as Id    



  from factura with (nolock)    



  where statusEcf = @st and CompFiscal like 'E%'



  union all    



  select Compfiscal as Ncf, IdCXC as Id    



  from cxc with (nolock)    



  where statusEcf = @st and CompFiscal like 'E3[3,4]%' 



  union all    



  select Compfiscal as Ncf, GuidDocumento as Id    



  from cxpDocumentos with (nolock)    



  where statusEcf = @st and CompFiscal like 'E4[1,7]%'



  union all    



  select Compfiscal as Ncf, GuidDocumento as Id    



  from bcoGastosMenores with (nolock)    



  where statusEcf = @st and CompFiscal like 'E43%' 



  order by 1    




GO

-- ============================================================
-- SOURCE FILE: nomToBancoACHPopular.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[nomToBancoACHPopular] ( @NominaId INT )



AS



    DECLARE @Ene TABLE



        (



          IdEne INT IDENTITY(1, 1) ,



          Cadena VARCHAR(320)



        )    







    DECLARE @RNC VARCHAR(15) ,



        @Secuencia INT ,



        @CodigoOperacion VARCHAR(2) ,



        @TotalDebito INT ,



        @MontoDebito NUMERIC(18, 2) ,



        @eMail VARCHAR(40) ,



        @NombreCompania VARCHAR(35) ,



        @NombreArchivo VARCHAR(40) ,



        @NomCodigoParaBanco VARCHAR(5) ,



        @Hasta DATETIME







    EXEC nomNextCounter 'BCOSECUENCIA'







    SET @Hasta = ( SELECT   Hasta



                   FROM     Nomina



                   WHERE    NominaID = @NominaID



                 )







    SET @NomCodigoParaBanco = ISNULL(( SELECT   CONVERT(VARCHAR, Valor)



                                       FROM     Defaults



                                       WHERE    Clave = 'NomCodParaBanco'



                                     ), 'XXXXX')    







    SET @NombreCompania = ( SELECT  Compania



                            FROM    Configuracion



                          )    







    SET @RNC = REPLACE(( SELECT TOP 1



                                RNC



                         FROM   Configuracion



                       ), '-', '')    







    SET @Secuencia = ISNULL(( SELECT    Valor



                              FROM      Contador



                              WHERE     Contador = 'BCOSECUENCIA'



                            ), 1001)   



							 



    SET @CodigoOperacion = ISNULL(( SELECT  CONVERT(VARCHAR, Valor)



                                    FROM    Defaults



                                    WHERE   Clave = 'CodigoOperacion'



                                  ), '32')   



								   



    SET @eMail = ISNULL(( SELECT    CONVERT(VARCHAR, Valor)



                          FROM      Defaults



                          WHERE     Clave = 'eMailParaNomina'



                        ), '****@*****.com')    







    SELECT  @MontoDebito = SUM(x.Neto) ,



            @TotalDebito = COUNT(*)



    FROM    ( SELECT    COUNT(*) AS Cantidad ,



                        SUM(ne.Neto) AS Neto



              FROM      ( SELECT    *



                          FROM      NominaEmp



                          WHERE     NominaId = @NominaId



                                    AND Neto > 0



                        ) AS ne



                        INNER JOIN Empleado em ON ( em.EmpleadoId = ne.EmpleadoId )



                        LEFT OUTER JOIN nomBancoDestino bd ON ( bd.IdBancoDestino = em.IdBancoDestino )



              WHERE     ISNULL(em.NumeroCuenta, '') <> ''



              GROUP BY  em.EmpleadoId



            ) AS x    







    SET @NombreArchivo = ( SELECT   'PE' + @NomCodigoParaBanco + '01'



                                    + REPLICATE('0',



                                                2



                                                - DATALENGTH(CONVERT(VARCHAR(2), MONTH(GETDATE()))))



                                    + CONVERT(VARCHAR(2), MONTH(GETDATE()))



                                    + REPLICATE('0',



                                                2



                                                - DATALENGTH(CONVERT(VARCHAR(2), DAY(GETDATE()))))



                                    + CONVERT(VARCHAR(2), DAY(GETDATE()))



                                    + REPLICATE('0',



                                                7



                                                - DATALENGTH(CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia))))



                                    + CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia))



                                    + 'E.txt'



                         )    







    INSERT  INTO @Ene



            ( Cadena



            )



            SELECT  ( 'N' + @RNC + REPLICATE(' ', 15 - DATALENGTH(@RNC))



                      + REPLICATE('0',



                                  7



                                  - DATALENGTH(CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia))))



                      + CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia))



                      + --Replicate('0', 7 - DataLength(Convert(VarChar(7), Convert(Int, 0)))) + Convert(VarChar(7), Convert(Int, 0)) +    



                      '0000000' + CONVERT(VARCHAR(20), em.NumeroCuenta)



                      + REPLICATE(' ',



                                  20



                                  - DATALENGTH(CONVERT(VARCHAR(20), em.NumeroCuenta)))



                      + ISNULL(em.TipoCuentaDestino, '*') + '214'



                      + -- Moneda Destino Pesos    



                      ISNULL(CONVERT(VARCHAR(8), em.IdBancoDestino), '101010708')



                      + ISNULL(CONVERT(VARCHAR(1), bd.DigitoVerificacion), '8')



                      + ISNULL(@CodigoOperacion, '**') + REPLICATE('0',



                                                              13



                                                              - DATALENGTH(REPLACE(CONVERT(VARCHAR(13), CONVERT(NUMERIC(18,



                                                              2), SUM(av.Neto))),



                                                              '.', '')))



                      + REPLACE(CONVERT(VARCHAR(13), CONVERT(NUMERIC(18, 2), SUM(av.Neto))),



                                '.', '') 



					--+ REPLICATE(' ', 2) + REPLICATE(' ',15)



                    



					  +'CE'                                      



                      + ISNULL(CONVERT(VARCHAR(15), REPLACE(em.cedula, ',','')), ' ')



                      + REPLICATE(' ',15 - DATALENGTH(ISNULL(CONVERT(VARCHAR(15), REPLACE(em.cedula,',', '')), ' ')))







                      + ISNULL(CONVERT(VARCHAR(35), REPLACE(em.Empleado, ',',



                                                            '')), ' ')



                      + REPLICATE(' ',



                                  35



                                  - DATALENGTH(ISNULL(CONVERT(VARCHAR(35), REPLACE(em.Empleado,



                                                              ',', '')), ' ')))



                      + ISNULL('NumReferenci', ' ') + REPLICATE(' ',



                                                              12



                                                              - DATALENGTH(ISNULL('NumReferenci',



                                                              ' ')))



                      + --  IsNull('PAGO AVANCES POR COMISION', ' ') + Replicate(' ', 40 - DataLength(IsNull('PAGO AVANCE POR COMISION', ' '))) +    



                      'PAGO NOMINA                             '



                      + REPLICATE(' ', 4)



                      + CASE WHEN ISNULL(em.TipoNotificacionBanco, ' ') = '0'



                             THEN ' '



                             ELSE ISNULL(em.TipoNotificacionBanco, ' ')



                        END



                      + CASE WHEN ISNULL(em.TipoNotificacionBanco, 0) <> 0



                             THEN CASE WHEN em.TipoNotificacionBanco = 1



                                       THEN ISNULL(em.DireccionNotificacionBanco,



                                                   ' ') + REPLICATE(' ',



                                                              40



                                                              - DATALENGTH(ISNULL(em.DireccionNotificacionBanco,



                                                              ' ')))



                                       ELSE REPLICATE(' ', 40)



                                  END



                             ELSE REPLICATE(' ', 40)



                        END



                      + CASE WHEN ISNULL(em.TipoNotificacionBanco, 0) <> 0



                             THEN CASE WHEN em.TipoNotificacionBanco = 2



                                       THEN ISNULL(em.DireccionNotificacionBanco,



                                                   ' ') + REPLICATE(' ',



                                                              12



    - DATALENGTH(ISNULL(em.DireccionNotificacionBanco,



                                                              ' ')))



                                       ELSE REPLICATE(' ', 12)



                                  END



                             ELSE REPLICATE(' ', 12)



                        END



                      + --  Replicate('0', 2) + El filler que dice en la especificaciones que lo le pongan 0   



  REPLICATE(' ', 2) + REPLICATE(' ', 15) + REPLICATE(' ', 3) + REPLICATE(' ',



                                                              3)



                      + REPLICATE(' ', 3) + REPLICATE(' ', 1) + REPLICATE(' ',



                                                              2)



                      + REPLICATE(' ', 52) ) AS Cadena



            FROM    ( SELECT    *



                      FROM      NominaEmp



                      WHERE     NominaId = @NominaId



                                AND Neto > 0



                    ) AS av



                    INNER JOIN Empleado em ON ( em.EmpleadoId = av.EmpleadoId )



                    LEFT OUTER JOIN nomBancoDestino bd ON ( bd.IdBancoDestino = em.IdBancoDestino )



            WHERE   ISNULL(em.NumeroCuenta, '') <> ''



            GROUP BY em.NumeroCuenta ,



                    em.TipoCuentaDestino ,



                    em.IdBancoDestino ,



                    bd.DigitoVerificacion ,



                    em.Empleado ,



                    em.TipoNotificacionBanco ,



                    em.DireccionNotificacionBanco ,



                    em.TipoNotificacionBanco  ,



					em.cedula  



--------------------    



    SELECT  ( 'H' + @RNC + REPLICATE(' ', 15 - DATALENGTH(@Rnc))



              + ISNULL(CONVERT(VARCHAR(35), @NombreCompania), ' ')



              + REPLICATE(' ',



                          35



                          - DATALENGTH(ISNULL(CONVERT(VARCHAR(35), @NombreCompania),



                                              ' '))) + REPLICATE('0',



                                                              7



                                                              - DATALENGTH(CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia))))



              + CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia)) + '01'



              + CONVERT(VARCHAR(8), @Hasta, 112) + '00000000000'



              + '0000000000000' + REPLICATE('0',



                                            11



                                            - DATALENGTH(CONVERT(VARCHAR(11), CONVERT(INT, @TotalDebito))))



              + CONVERT(VARCHAR(11), CONVERT(INT, @TotalDebito))



              + REPLICATE('0',



                          13



                          - DATALENGTH(REPLACE(CONVERT(VARCHAR(13), CONVERT(NUMERIC(18,



                                                              2), @MontoDebito)),



                                               '.', '')))



              + REPLACE(CONVERT(VARCHAR(13), CONVERT(NUMERIC(18, 2), @MontoDebito)),



                        '.', '') + '000000000000000'



              + CONVERT(VARCHAR(8), GETDATE(), 112)



              + REPLACE(CONVERT(VARCHAR(5), GETDATE(), 108), ':', '')



              + ISNULL(@eMail, ' ') + REPLICATE(' ',



                                                40 - DATALENGTH(ISNULL(@eMail,



                                                              ' '))) + ' '



              + REPLICATE(' ', 136) ) AS Cadena ,



            @NombreArchivo AS NombreArchivo



    UNION



    SELECT  SUBSTRING(Cadena, 1, 23) + REPLICATE('0',



                                                 7



                                                 - DATALENGTH(CONVERT(VARCHAR(7), IdEne)))



            + CONVERT(VARCHAR(7), IdEne) + SUBSTRING(Cadena, 31, 320) ,



            @NombreArchivo



    FROM    @Ene    
















GO

-- ============================================================
-- SOURCE FILE: spGetNextCounterNCF.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[spGetNextCounterNCF]    



    (    



     @XContador VARCHAR(3),    



     @OutPut VARCHAR(16) OUTPUT,    



     @OutVenceNCF DATETIME OUTPUT,    



     @reorden BIT OUTPUT    



    )    



AS    



    DECLARE @id UNIQUEIDENTIFIER  



     



    SELECT TOP 1    



            @OutPut = (REPLICATE('0',    



                                 (a.Longitud - (LEN(CONVERT(VARCHAR, b.Secuencia)))))    



                       + CONVERT(VARCHAR, b.Secuencia)),    



            @OutVenceNCF = b.ValidoHasta,    



            @id = b.idCompFiscalSecuencia,    



            @reorden = CAST(CASE WHEN (ISNULL(b.Reorden, 0) >= (b.SecuenciaFinal    



                                                              - b.Secuencia))    



                                 THEN 1    



                                 ELSE 0    



                            END AS BIT)    



    FROM    CompFiscal a    



            JOIN CompFiscalSecuencia b ON b.uidCompFiscal = a.uidCompFiscal    



    WHERE   (a.Serie + a.TipoNCF) = @XContador    



            AND b.ValidoHasta >= dbo.dateOf(GETDATE())    



            AND b.Secuencia <= b.SecuenciaFinal    



            AND b.Inactivo = 0    



    ORDER BY b.ValidoHasta    



                



 --si ya se han ejecutado todos los NCF inactivo la secuencia          



    UPDATE  CompFiscalSecuencia    



    SET     Inactivo = 1    



    WHERE   idCompFiscalSecuencia = @id    



            AND Secuencia = SecuenciaFinal    



    



    --si aun no quedan secuencia    



    UPDATE  CompFiscalSecuencia    



    SET     Secuencia = Secuencia + 1    



    WHERE   idCompFiscalSecuencia = @id    



            AND Secuencia < SecuenciaFinal    




GO

-- ============================================================
-- SOURCE FILE: svCompFiscal.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[svCompFiscal]
    (
     @OutPut VARCHAR(19) OUTPUT,
     @Terminal VARCHAR(50),
     @TipoDoc VARCHAR(2),
     @idCliente INT,
     @VencimientoNCF DATETIME OUTPUT,
     @reorden BIT OUTPUT
    )
AS
    DECLARE @TipoCompFiscal CHAR(2),
        @NCF VARCHAR(19),
        @SCF VARCHAR(19),
        @XContador VARCHAR(16),
        @RC INT,
        @NEW_VER_NCF BIT,
        @VENCE DATETIME,
        @RORDEN BIT,
		@UsarECF BIT

    SET @NEW_VER_NCF = ISNULL((SELECT CAST(Valor AS BIT) FROM Defaults WHERE Clave = 'NEW_VER_NCF'), 0)
    SET @UsarECF = ISNULL((SELECT CAST(Valor AS BIT) FROM Defaults WHERE Clave = 'UsarECF'), 0)
    SET @OutPut = NULL

    IF @TipoDoc IN ('01','02','03','04','11','12','13','14','15','16','17',
                    '31','32','33','34','41','43','44','45','46','47')
    BEGIN
        SET @TipoCompFiscal = @TipoDoc
    END
    ELSE IF @TipoDoc = 'ND'
        BEGIN
			IF @UsarECF=1 SET @TipoCompFiscal = '33' ELSE SET @TipoCompFiscal = '03' 
        END
    ELSE
        IF @TipoDoc = 'NC'
            BEGIN
				IF @UsarECF=1 SET @TipoCompFiscal = '34' ELSE SET @TipoCompFiscal = '04' 
            END
        ELSE
            IF @TipoDoc = 'GM' 
                BEGIN
				    IF @UsarECF=1 SET @TipoCompFiscal = '43' ELSE SET @TipoCompFiscal = '13'           
			   END
            ELSE
                IF @TipoDoc = 'PI'
                    BEGIN
						IF @UsarECF=1 SET @TipoCompFiscal = '41' ELSE SET @TipoCompFiscal = '11' 
                    END
                ELSE
                    IF @TipoDoc = 'FT'
                        BEGIN
                            SET @TipoCompFiscal = (SELECT   TipoCompFiscal
                                                   FROM     ClienteTipo ct
                                                            JOIN Cliente c ON ct.idClienteTipo = c.idClienteTipo
                                                   WHERE    c.idCliente = @idCliente
                                                  )
                            IF @UsarECF = 1
                            BEGIN
                                IF @TipoCompFiscal = '01' SET @TipoCompFiscal = '31'
                                ELSE IF @TipoCompFiscal = '02' SET @TipoCompFiscal = '32'
                                ELSE IF @TipoCompFiscal = '14' SET @TipoCompFiscal = '44'
                                ELSE IF @TipoCompFiscal = '15' SET @TipoCompFiscal = '45'
                            END
                        END

    IF ISNULL(RTRIM(LTRIM(@TipoCompFiscal)), '') = ''



        BEGIN



            SET @OutPut = ''



            RETURN 0



        END



  



    SELECT  @NCF = Serie + CASE WHEN @NEW_VER_NCF = 1 THEN ''



                                ELSE (Division + Sucursal + Caja)



                           END + @TipoCompFiscal,



            @XContador = Contador



    FROM    CompFiscal cf



    WHERE   ((Terminal = @Terminal



              AND TipoNCF = @TipoCompFiscal



             )



             OR (Terminal = 'Default'



                 AND TipoNCF = @TipoCompFiscal



                )



            )







    IF @XContador IS NULL



        BEGIN



            SET @OutPut = NULL



            RETURN -1



        END







    IF (@NEW_VER_NCF = 1)



        BEGIN



            EXEC @RC = spGetNextCounterNCF @NCF, @SCF OUTPUT, @VENCE OUTPUT,



                @RORDEN OUTPUT



            SET @VencimientoNCF = @VENCE



            SET @reorden = @RORDEN



        END



    ELSE



        EXEC @RC = spGetNextCounterSTR @XContador, @SCF OUTPUT







    SET @OutPut = ISNULL(@NCF + @SCF, '')	







    RETURN 0








GO

-- ============================================================
-- SOURCE FILE: svCompFiscal2018.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[svCompFiscal2018]
 @OutPut VARCHAR(19) OUTPUT,         
 @Terminal VARCHAR(50),  
 @TipoDoc VARCHAR(2),    
 @idCliente INT,    
 @VencimientoNCF DATETIME OUTPUT,    
 @reorden BIT OUTPUT  
AS   
BEGIN     
    DECLARE    
      @TipoCompFiscal char(2),    
      @NCF varchar(19),    
      @CF varchar(19),   
      @SCF varchar(19),      
      @RC INT,    
      @VENCE DATETIME,    
      @RORDEN BIT,
      @UsarECF BIT

    SET @UsarECF = ISNULL((SELECT CAST(Valor AS BIT) FROM Defaults WHERE Clave = 'UsarECF'), 0)

    IF NOT EXISTS(select 1 from compfiscal where terminal=@Terminal)  
    BEGIN
        SET @Terminal = 'Default'
    END

    IF @TipoDoc = 'PI'
        SET @TipoCompFiscal = CASE WHEN @UsarECF = 1 THEN '41' ELSE '11' END
    ELSE IF @TipoDoc = 'NC'
        SET @TipoCompFiscal = CASE WHEN @UsarECF = 1 THEN '34' ELSE '04' END
    ELSE IF @TipoDoc = 'ND'
        SET @TipoCompFiscal = CASE WHEN @UsarECF = 1 THEN '33' ELSE '03' END
    ELSE IF @TipoDoc = 'GM'
        SET @TipoCompFiscal = CASE WHEN @UsarECF = 1 THEN '43' ELSE '13' END
    ELSE IF @TipoDoc = 'FT'    
    BEGIN    
        SELECT @TipoCompFiscal = TipoCompFiscal    
        FROM ClienteTipo ct      
        JOIN Cliente c on ct.idClienteTipo = c.idClienteTipo    
        WHERE c.idcliente = @idcliente    
        IF @UsarECF = 1
        BEGIN
            IF @TipoCompFiscal = '01' SET @TipoCompFiscal = '31'
            ELSE IF @TipoCompFiscal = '02' SET @TipoCompFiscal = '32'
            ELSE IF @TipoCompFiscal = '14' SET @TipoCompFiscal = '44'
            ELSE IF @TipoCompFiscal = '15' SET @TipoCompFiscal = '45'
        END
    END    
    ELSE 
    BEGIN    
        SET @TipoCompFiscal = @TipoDoc    
    END    

    SELECT TOP 1 
        @NCF = Serie + @TipoCompFiscal + CAST(Sucursal AS VARCHAR),
        @CF  = Serie + @TipoCompFiscal  
    FROM CompFiscal     
    WHERE Terminal = @Terminal 
      AND TipoNCF = @TipoCompFiscal  

    IF @NCF IS NULL  
    BEGIN  
        SELECT TOP 1 
            @NCF = Serie + @TipoCompFiscal + CAST(Sucursal AS VARCHAR),
            @CF  = Serie + @TipoCompFiscal  
        FROM CompFiscal     
        WHERE Terminal = 'Default' 
          AND TipoNCF = @TipoCompFiscal  
    END  

    IF @NCF IS NULL
    BEGIN
        RETURN
    END

    EXEC @RC = spGetNextCounterNCF 
        @NCF, 
        @SCF OUTPUT, 
        @VENCE OUTPUT, 
        @RORDEN OUTPUT    

    SET @VencimientoNCF = @VENCE    
    SET @reorden = @RORDEN    
    SET @OutPut = ISNULL(@CF + @SCF, '')    
END
GO

GO

-- ============================================================
-- SOURCE FILE: svDevolucion2ProMov.sql
-- ============================================================
CREATE OR ALTER PROCEDURE [dbo].[svDevolucion2ProMov]



  @idDevolucion uniqueidentifier,



  @idPromov uniqueidentifier output



AS







Declare 



  @TipoMov int,



  @Secuencia Varchar(16),



  @RecCount int,



  @Error int,



  @id uniqueidentifier







Set @Error = 0







--begin tran







Set @TipoMov = convert(varchar,(Select Valor from Defaults where clave = 'TipoMovInvDevolu'))







select @Secuencia = ProMov from promov where idProMov = @idDevolucion 







if @Secuencia is null



  exec spGetNextCounterSTR 'MovimientoAlm',@OutPut = @Secuencia OutPut







else begin







  delete from promovdet



  where idPromov = @idDevolucion



  delete from promov



  where idProMov = @idDevolucion



end



Set @Error = @@Error



if (@Error <> 0) or (@TipoMov is null)  begin



  --rollback tran



  Return -1



end







Set @id = newid()







insert into promov (



  idProMov, 



  idProMovTipo, 



  ProMov, 



  Fecha, 



  Salida, 



  idCompania, 



  Referencia, 



  Usuario, 



  idOrdComp, 



  OrdComp, 



  EntregadoPor, 



  RecibidoPor, 



  idAlmacen, 



  Concepto, 



  Nota, 



  idConduce, 



  Conduce, 



  Posteado, 



  PosteadoFecha, 



  idOrdenTrab, 



  OrdenTrab, 



  idReferencia, 



  idAlmacenDestino,



  devolucion)



Select 



  @id, 



  @TipoMov,  



  @Secuencia, 



  d.Fecha, 



  0,  -- Entrada por devoulion



  NULL, 



  d.Devolucion, 



  d.Usuario, 



  Null, 



  Null, 



  d.Usuario, 



  Null, 



  f.idAlmacen,



  'Entra Generada por Devolucion',



  'Cod.Cliente :' + Convert(varchar(30),d.idCliente) +' \ Nombre :'+ Convert(varchar(40),d.Cliente) +'\ Factura :'+ Convert(varchar(30),d.factura),



  Null,



  Null,



  0,



  Null,



  Null,



  Null,



  d.idDevolucion,



  Null,



  1



From 



  Devolucion d



  join Factura f on d.idFactura = f.idFactura   



Where



  idDevolucion = @idDevolucion 



  and d.Cancelado = 0



Set @Error = @@Error



if (@Error <> 0)   begin



  --rollback tran



  Return -2



end







Insert into promovdet(



idProMovDet, 



idProMov, 



ProMovDet, 



idProducto, 



Producto, 



Cantidad, 



Costo, 



idUnidad, 



Posteado, 



XCosto, 



XCantidad, 



Linea, 



CC, 



Referencia, 



idCentroCosto, 



idPartida,



idDevolucionDet)



Select



  newid(),



 @id,



  SUBSTRING(dd.Producto, 1, 60),



  dd.idProducto,



  dd.Producto,



  dd.DevCantidad,



  CASE 



    WHEN 



      isnull((select pd.costo



            from promov p join promovdet pd on p.idpromov = pd.idpromov



            where idProMovDet = fd.idFacturaDet and p.posteado = 1),0) = 0 



    THEN



      dbo.InvProdCosto(dd.idProducto, d.Fecha, f.idAlmacen) * dd.DevCantidad



    ELSE



      (((select pd.costo



            from promov p join promovdet pd on p.idpromov = pd.idpromov



            where idProMovDet = fd.idFacturaDet and p.posteado = 1) / fd.Cantidad) * dd.DevCantidad)



  END,



  fd.idUnidad,



  0,



  Null,



  Null,



  dd.Linea,



  Null,



  NULL,



  Null,



  Null,    -- Partida



  dd.idDevolucionDet



from



  Devolucion d



  join DevolucionDet dd on d.idDevolucion = dd.idDevolucion



  join FacturaDet fd  on fd.idFacturaDet = dd.idFacturaDet



  join Factura f on fd.idFactura = f.idFactura



Where



  d.idDevolucion = @idDevolucion 



  and d.cancelado = 0



Set @Error = @@Error



if (@Error <> 0)  begin



  --rollback tran



  Return -3



end



--Commit Tran



  Set @idPromov = @id



return 0 








GO

-- ============================================================
-- SCRIPT: updates_CxcTipo.sql
-- ============================================================
UPDATE CxcTipo SET Interno = 0 WHERE idCxcTipo = 10;
GO

GO
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

-- Si E430000000001 ya fue emitido y validado por la DGII, sincronizar el contador inicial al siguiente disponible
IF EXISTS (SELECT 1 FROM ecfworker..ecf_comprobante WHERE Ncf = 'E430000000001' AND StatusEcf COLLATE DATABASE_DEFAULT IN ('VALIDADO','ACEPTADO'))
BEGIN
    UPDATE s
       SET s.Secuencia = 2
      FROM dbo.CompFiscalSecuencia s
      JOIN dbo.CompFiscal c ON s.uidCompFiscal = c.uidCompFiscal
     WHERE c.TipoNCF = '43' AND s.Secuencia < 2;
    PRINT 'Secuencia de E43 ajustada al siguiente numero disponible.';
END
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
