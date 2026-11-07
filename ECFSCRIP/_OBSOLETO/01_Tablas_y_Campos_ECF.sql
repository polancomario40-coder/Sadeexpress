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
