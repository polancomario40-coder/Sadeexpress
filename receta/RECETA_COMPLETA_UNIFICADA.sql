-- ==========================================================
-- RECETA COMPLETA UNIFICADA ECF - SADE
-- Instrucciones para ejecutar manualmente en SQL Server Management Studio (SSMS):
-- 1. Abre este archivo en SSMS.
-- 2. Asegurate de seleccionar la base de datos correcta en el desplegable (o pon USE [TuBaseDeDatos]; al inicio).
-- 3. Presiona F5 (Ejecutar).
-- ==========================================================

-- >>> INICIO: 001_Nuevas_Tablas_ECF.sql <<<
-- =============================================
-- MIGRATION 001: Crear Tablas de Control ECF
-- =============================================

IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'ecf_status_envio')
BEGIN
    CREATE TABLE dbo.ecf_status_envio (
        [Id] varchar(16)  NOT NULL,
        [PendEnvio] bit  NOT NULL,
        [PendValidacion] bit  NOT NULL,
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
        [Id] int  IDENTITY(1,1) NOT NULL,
        [CompFiscal] varchar(20)  NULL,
        [trackId] varchar(50)  NULL,
        [Hashval] varchar(50)  NULL,
        [Descripcion] varchar(2000)  NULL,
        [ReferenciaId] uniqueidentifier  NULL,
        [TipoRef] varchar(16)  NULL,
        [FechaFirma] datetime  NULL,
        CONSTRAINT [PK_ecf_compfiscal_log] PRIMARY KEY ([Id])
    );
    PRINT 'Tabla creada: ecf_compfiscal_log';
END
ELSE
BEGIN
    PRINT 'Tabla ya existe: ecf_compfiscal_log';
END
GO
GO
-- >>> FIN: 001_Nuevas_Tablas_ECF.sql <<<

-- >>> INICIO: 002_Nuevos_Campos_ECF.sql <<<
-- =============================================
-- MIGRATION 002: Agregar Campos ECF a Tablas Existentes
-- =============================================

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.tmp') AND name = 'codigo')
BEGIN
    ALTER TABLE dbo.tmp ADD [codigo] varchar(50) NULL;
    PRINT 'Columna agregada: tmp.codigo';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'FechaNcfModificado')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [FechaNcfModificado] datetime NULL;
    PRINT 'Columna agregada: Devolucion.FechaNcfModificado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'TrackId')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [TrackId] varchar(100) NULL;
    PRINT 'Columna agregada: Devolucion.TrackId';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'UltError')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [UltError] varchar(2000) NULL;
    PRINT 'Columna agregada: Devolucion.UltError';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'HoraEnvio')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [HoraEnvio] datetime NULL;
    PRINT 'Columna agregada: Devolucion.HoraEnvio';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'PendValidacion')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [PendValidacion] bit NULL;
    PRINT 'Columna agregada: Devolucion.PendValidacion';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'PendEnvioEcf')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [PendEnvioEcf] bit NULL;
    PRINT 'Columna agregada: Devolucion.PendEnvioEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'TipoNcf')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [TipoNcf] varchar(3) NULL;
    PRINT 'Columna agregada: Devolucion.TipoNcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'CodigoSeguridadEcf')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [CodigoSeguridadEcf] varchar(20) NULL;
    PRINT 'Columna agregada: Devolucion.CodigoSeguridadEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'FechaFirmaDigital')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [FechaFirmaDigital] datetime NULL;
    PRINT 'Columna agregada: Devolucion.FechaFirmaDigital';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'FechaVenceNCF')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [FechaVenceNCF] datetime NULL;
    PRINT 'Columna agregada: Devolucion.FechaVenceNCF';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'StatusEcf')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [StatusEcf] varchar(16) NULL;
    PRINT 'Columna agregada: Devolucion.StatusEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'CompFiscal')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [CompFiscal] varchar(16) NULL;
    PRINT 'Columna agregada: Devolucion.CompFiscal';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Devolucion') AND name = 'NcfModificado')
BEGIN
    ALTER TABLE dbo.Devolucion ADD [NcfModificado] varchar(19) NULL;
    PRINT 'Columna agregada: Devolucion.NcfModificado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.CompFiscal') AND name = 'Longitud')
BEGIN
    ALTER TABLE dbo.CompFiscal ADD [Longitud] int NULL;
    PRINT 'Columna agregada: CompFiscal.Longitud';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.FacturaDet') AND name = 'fecha')
BEGIN
    ALTER TABLE dbo.FacturaDet ADD [fecha] datetime NULL;
    PRINT 'Columna agregada: FacturaDet.fecha';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Configuracion') AND name = 'Ciudad')
BEGIN
    ALTER TABLE dbo.Configuracion ADD [Ciudad] varchar(200) NULL;
    PRINT 'Columna agregada: Configuracion.Ciudad';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'PendValidacion')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [PendValidacion] bit NULL;
    PRINT 'Columna agregada: cxpDocumentos.PendValidacion';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'PendEnvioEcf')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [PendEnvioEcf] bit NULL;
    PRINT 'Columna agregada: cxpDocumentos.PendEnvioEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'CodigoSeguridadEcf')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [CodigoSeguridadEcf] varchar(20) NULL;
    PRINT 'Columna agregada: cxpDocumentos.CodigoSeguridadEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'FechaFirmaDigital')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [FechaFirmaDigital] datetime NULL;
    PRINT 'Columna agregada: cxpDocumentos.FechaFirmaDigital';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'FechaVenceNCF')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [FechaVenceNCF] datetime NULL;
    PRINT 'Columna agregada: cxpDocumentos.FechaVenceNCF';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'CompFiscalModificado')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [CompFiscalModificado] varchar(19) NULL;
    PRINT 'Columna agregada: cxpDocumentos.CompFiscalModificado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'FechaCompFiscalModificado')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [FechaCompFiscalModificado] datetime NULL;
    PRINT 'Columna agregada: cxpDocumentos.FechaCompFiscalModificado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'IdClaseGastoModificado')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [IdClaseGastoModificado] varchar(16) NULL;
    PRINT 'Columna agregada: cxpDocumentos.IdClaseGastoModificado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'StatusEcf')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [StatusEcf] varchar(16) NULL;
    PRINT 'Columna agregada: cxpDocumentos.StatusEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'TipoNcf')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [TipoNcf] varchar(3) NULL;
    PRINT 'Columna agregada: cxpDocumentos.TipoNcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'TrackId')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [TrackId] varchar(100) NULL;
    PRINT 'Columna agregada: cxpDocumentos.TrackId';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'UltError')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [UltError] varchar(2000) NULL;
    PRINT 'Columna agregada: cxpDocumentos.UltError';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'HoraEnvio')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [HoraEnvio] datetime NULL;
    PRINT 'Columna agregada: cxpDocumentos.HoraEnvio';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'Usuario')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [Usuario] varchar(50) NULL;
    PRINT 'Columna agregada: cxpDocumentos.Usuario';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'FechaRegistro')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [FechaRegistro] datetime NULL;
    PRINT 'Columna agregada: cxpDocumentos.FechaRegistro';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.cxpDocumentos') AND name = 'RetenerTotalFactura')
BEGIN
    ALTER TABLE dbo.cxpDocumentos ADD [RetenerTotalFactura] bit NULL;
    PRINT 'Columna agregada: cxpDocumentos.RetenerTotalFactura';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'idTipoIngreso')
BEGIN
    ALTER TABLE dbo.Cxc ADD [idTipoIngreso] int NULL;
    PRINT 'Columna agregada: Cxc.idTipoIngreso';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'cliente')
BEGIN
    ALTER TABLE dbo.Cxc ADD [cliente] varchar(100) NULL;
    PRINT 'Columna agregada: Cxc.cliente';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'TrackId')
BEGIN
    ALTER TABLE dbo.Cxc ADD [TrackId] varchar(100) NULL;
    PRINT 'Columna agregada: Cxc.TrackId';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'UltError')
BEGIN
    ALTER TABLE dbo.Cxc ADD [UltError] varchar(2000) NULL;
    PRINT 'Columna agregada: Cxc.UltError';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'HoraEnvio')
BEGIN
    ALTER TABLE dbo.Cxc ADD [HoraEnvio] datetime NULL;
    PRINT 'Columna agregada: Cxc.HoraEnvio';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'PendValidacion')
BEGIN
    ALTER TABLE dbo.Cxc ADD [PendValidacion] bit NULL;
    PRINT 'Columna agregada: Cxc.PendValidacion';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'PendEnvioEcf')
BEGIN
    ALTER TABLE dbo.Cxc ADD [PendEnvioEcf] bit NULL;
    PRINT 'Columna agregada: Cxc.PendEnvioEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'TipoNcf')
BEGIN
    ALTER TABLE dbo.Cxc ADD [TipoNcf] varchar(3) NULL;
    PRINT 'Columna agregada: Cxc.TipoNcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'CodigoSeguridadEcf')
BEGIN
    ALTER TABLE dbo.Cxc ADD [CodigoSeguridadEcf] varchar(20) NULL;
    PRINT 'Columna agregada: Cxc.CodigoSeguridadEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'FechaFirmaDigital')
BEGIN
    ALTER TABLE dbo.Cxc ADD [FechaFirmaDigital] datetime NULL;
    PRINT 'Columna agregada: Cxc.FechaFirmaDigital';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'FechaVenceNCF')
BEGIN
    ALTER TABLE dbo.Cxc ADD [FechaVenceNCF] datetime NULL;
    PRINT 'Columna agregada: Cxc.FechaVenceNCF';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'FechaNcfModificado')
BEGIN
    ALTER TABLE dbo.Cxc ADD [FechaNcfModificado] datetime NULL;
    PRINT 'Columna agregada: Cxc.FechaNcfModificado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'NcfModificado')
BEGIN
    ALTER TABLE dbo.Cxc ADD [NcfModificado] varchar(19) NULL;
    PRINT 'Columna agregada: Cxc.NcfModificado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'TipoNcfModificado')
BEGIN
    ALTER TABLE dbo.Cxc ADD [TipoNcfModificado] varchar(2) NULL;
    PRINT 'Columna agregada: Cxc.TipoNcfModificado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cxc') AND name = 'StatusEcf')
BEGIN
    ALTER TABLE dbo.Cxc ADD [StatusEcf] varchar(16) NULL;
    PRINT 'Columna agregada: Cxc.StatusEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'TipoDocumento')
BEGIN
    ALTER TABLE dbo.Factura ADD [TipoDocumento] varchar(16) NULL;
    PRINT 'Columna agregada: Factura.TipoDocumento';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'FecSaldo')
BEGIN
    ALTER TABLE dbo.Factura ADD [FecSaldo] datetime NULL;
    PRINT 'Columna agregada: Factura.FecSaldo';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'cliente')
BEGIN
    ALTER TABLE dbo.Factura ADD [cliente] varchar(100) NULL;
    PRINT 'Columna agregada: Factura.cliente';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'TrackId')
BEGIN
    ALTER TABLE dbo.Factura ADD [TrackId] varchar(100) NULL;
    PRINT 'Columna agregada: Factura.TrackId';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'UltError')
BEGIN
    ALTER TABLE dbo.Factura ADD [UltError] varchar(2000) NULL;
    PRINT 'Columna agregada: Factura.UltError';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'HoraEnvio')
BEGIN
    ALTER TABLE dbo.Factura ADD [HoraEnvio] datetime NULL;
    PRINT 'Columna agregada: Factura.HoraEnvio';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'PendValidacion')
BEGIN
    ALTER TABLE dbo.Factura ADD [PendValidacion] bit NULL;
    PRINT 'Columna agregada: Factura.PendValidacion';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'PendEnvioEcf')
BEGIN
    ALTER TABLE dbo.Factura ADD [PendEnvioEcf] bit NULL;
    PRINT 'Columna agregada: Factura.PendEnvioEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'TipoNcf')
BEGIN
    ALTER TABLE dbo.Factura ADD [TipoNcf] varchar(3) NULL;
    PRINT 'Columna agregada: Factura.TipoNcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'CodigoSeguridadEcf')
BEGIN
    ALTER TABLE dbo.Factura ADD [CodigoSeguridadEcf] varchar(20) NULL;
    PRINT 'Columna agregada: Factura.CodigoSeguridadEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'FechaFirmaDigital')
BEGIN
    ALTER TABLE dbo.Factura ADD [FechaFirmaDigital] datetime NULL;
    PRINT 'Columna agregada: Factura.FechaFirmaDigital';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Factura') AND name = 'StatusEcf')
BEGIN
    ALTER TABLE dbo.Factura ADD [StatusEcf] varchar(16) NULL;
    PRINT 'Columna agregada: Factura.StatusEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cliente') AND name = 'TipoNCFEmp')
BEGIN
    ALTER TABLE dbo.Cliente ADD [TipoNCFEmp] varchar(2) NULL;
    PRINT 'Columna agregada: Cliente.TipoNCFEmp';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cliente') AND name = 'RNCEmP')
BEGIN
    ALTER TABLE dbo.Cliente ADD [RNCEmP] varchar(20) NULL;
    PRINT 'Columna agregada: Cliente.RNCEmP';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cliente') AND name = 'fecnac')
BEGIN
    ALTER TABLE dbo.Cliente ADD [fecnac] datetime NULL;
    PRINT 'Columna agregada: Cliente.fecnac';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cliente') AND name = 'cliente')
BEGIN
    ALTER TABLE dbo.Cliente ADD [cliente] varchar(100) NULL;
    PRINT 'Columna agregada: Cliente.cliente';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cliente') AND name = 'NoRecibirConduces')
BEGIN
    ALTER TABLE dbo.Cliente ADD [NoRecibirConduces] bit NULL;
    PRINT 'Columna agregada: Cliente.NoRecibirConduces';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cliente') AND name = 'RequiereOrdenCliente')
BEGIN
    ALTER TABLE dbo.Cliente ADD [RequiereOrdenCliente] bit NULL;
    PRINT 'Columna agregada: Cliente.RequiereOrdenCliente';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cliente') AND name = 'Monto_Bono_Mortero')
BEGIN
    ALTER TABLE dbo.Cliente ADD [Monto_Bono_Mortero] bit NULL;
    PRINT 'Columna agregada: Cliente.Monto_Bono_Mortero';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.Cliente') AND name = 'OCRequerida')
BEGIN
    ALTER TABLE dbo.Cliente ADD [OCRequerida] bit NULL;
    PRINT 'Columna agregada: Cliente.OCRequerida';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'Cancelado')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [Cancelado] bit NULL;
    PRINT 'Columna agregada: bcoGastosMenores.Cancelado';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'IdPagoForma')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [IdPagoForma] int NULL;
    PRINT 'Columna agregada: bcoGastosMenores.IdPagoForma';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'TrackId')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [TrackId] varchar(100) NULL;
    PRINT 'Columna agregada: bcoGastosMenores.TrackId';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'UltError')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [UltError] varchar(2000) NULL;
    PRINT 'Columna agregada: bcoGastosMenores.UltError';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'HoraEnvio')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [HoraEnvio] datetime NULL;
    PRINT 'Columna agregada: bcoGastosMenores.HoraEnvio';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'PendValidacion')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [PendValidacion] bit NULL;
    PRINT 'Columna agregada: bcoGastosMenores.PendValidacion';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'PendEnvioEcf')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [PendEnvioEcf] bit NULL;
    PRINT 'Columna agregada: bcoGastosMenores.PendEnvioEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'CodigoSeguridadEcf')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [CodigoSeguridadEcf] varchar(20) NULL;
    PRINT 'Columna agregada: bcoGastosMenores.CodigoSeguridadEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'FechaFirmaDigital')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [FechaFirmaDigital] datetime NULL;
    PRINT 'Columna agregada: bcoGastosMenores.FechaFirmaDigital';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'FechaVenceNCF')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [FechaVenceNCF] datetime NULL;
    PRINT 'Columna agregada: bcoGastosMenores.FechaVenceNCF';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'TipoNcf')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [TipoNcf] varchar(3) NULL;
    PRINT 'Columna agregada: bcoGastosMenores.TipoNcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'StatusEcf')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [StatusEcf] varchar(16) NULL;
    PRINT 'Columna agregada: bcoGastosMenores.StatusEcf';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.bcoGastosMenores') AND name = 'FechaRegistro')
BEGIN
    ALTER TABLE dbo.bcoGastosMenores ADD [FechaRegistro] datetime NULL;
    PRINT 'Columna agregada: bcoGastosMenores.FechaRegistro';
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.FacturaDet') AND name = 'referencia')
    ALTER TABLE dbo.FacturaDet ADD [referencia] varchar(100) NULL;
    PRINT 'Columna agregada: FacturaDet.referencia';
GO
GO
-- >>> FIN: 002_Nuevos_Campos_ECF.sql <<<

-- >>> INICIO: biListaECFComprasNoEnviados.sql <<<
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
GO
-- >>> FIN: biListaECFComprasNoEnviados.sql <<<

-- >>> INICIO: ecf_comprobante_markSent.sql <<<
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
GO
-- >>> FIN: ecf_comprobante_markSent.sql <<<

-- >>> INICIO: ecf_cxc_cambiarEstado.sql <<<
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
GO
-- >>> FIN: ecf_cxc_cambiarEstado.sql <<<

-- >>> INICIO: ecf_cxc_send.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[ecf_cxc_send]            

 @id uniqueidentifier        

as                 

 declare @nuId int         

  

 if exists (select 1 from devolucion where iddevolucion = @id)  begin

   --print 'dev!'

   return 0   

 end



 declare @rncEmisor varchar(20), @emisorId uniqueidentifier

 select @rncEmisor = LTRIM(rtrim(replace(rnc,'-',''))),

		@emisorId = UConfiguracion

 from Configuracion       

        

 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf <> 'CANCELADO') begin 

   return -1          

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

  replace(ft.ClienteRNC,'-','') as Rnc,          

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

  h.ncfModificado,        

  h.FechaNcfModificado,    

  IndNotaCredito = case when h.TipoNcf = '34' then case when datediff(day, ft.Fecha, h.Fecha) > 30 then '1' else '0' end else '' end    ,

  '3'

 from cxc h join factura ft on h.ncfModificado = ft.CompFiscal        

 where h.idcxc = @id        

   and isnull(h.CompFiscal,'') <> ''       

   and not exists (select 1 from Devolucion where idDevolucion = h.idcxc)  

   and h.StatusEcf ='PENDIENTE'--, 'NUEVO'           



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

      set StatusEcf = 'ENVIADO'--'PENDIENTE'          

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
GO
-- >>> FIN: ecf_cxc_send.sql <<<

-- >>> INICIO: ecf_cxp_cambiarEstado.sql <<<
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
GO
-- >>> FIN: ecf_cxp_cambiarEstado.sql <<<

-- >>> INICIO: ecf_cxp_select.sql <<<
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
GO
-- >>> FIN: ecf_cxp_select.sql <<<

-- >>> INICIO: ecf_cxp_send.sql <<<
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
     set StatusEcf = 'ENVIADO'              
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
-- >>> FIN: ecf_cxp_send.sql <<<

-- >>> INICIO: ecf_cxp_validate.sql <<<
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
GO
-- >>> FIN: ecf_cxp_validate.sql <<<

-- >>> INICIO: ecf_desglocePago_select.sql <<<
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
GO
-- >>> FIN: ecf_desglocePago_select.sql <<<

-- >>> INICIO: ecf_dev_send.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[ecf_dev_send]  

 @id uniqueidentifier        

as                 

 declare @nuId int         

        

 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf <> 'CANCELADO')           

   return -1    

   

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

  replace(ft.ClienteRNC,'-','') as Rnc,          

  '' as idTipoIdentificacion,             

  '1',          

  h.Cliente as Nombre,          

  '',    

  SubTotal1 = @subtotal1,         

  SubTotal3 = ((h.Total * h.Tasa) - @itbis) - @subtotal1,        

 -- SubTotal1 = h.Tasa * isnull((select sum(DevLIneTotal) from devolucionDet with (NOLOCK) where iddevolucion = h.IdDevolucion and DevItbis > 0),0),

  --SubTotal3 = h.Tasa * isnull((select sum(DevLIneTotal) from devolucionDet with (NOLOCK) where iddevolucion = h.IdDevolucion and DevItbis = 0),0),

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

  h.ncfModificado,        

  h.FechaNcfModificado,    

  IndNotaCredito = case when h.TipoNcf = '34' then case when datediff(day, ft.Fecha, h.Fecha) > 30 then '1' else '0' end else '' end,

  '3'

 from devolucion h join factura ft on h.idfactura = ft.idfactura  

 where h.iddevolucion = @id        

   and isnull(h.CompFiscal,'') <> ''          

   and h.StatusEcf = 'PENDIENTE'--'NUEVO'           

              

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

    where iddevolucion = @id and statusEcf = 'PENDIENTE'--'NUEVO'         

	update cxc

      set StatusEcf = 'ENVIADO'          

    where idcxc = @id and statusEcf = 'PENDIENTE'--'NUEVO'         

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
GO
-- >>> FIN: ecf_dev_send.sql <<<

-- >>> INICIO: ecf_devolucion_cambiarEstado.sql <<<
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
GO
-- >>> FIN: ecf_devolucion_cambiarEstado.sql <<<

-- >>> INICIO: ecf_emisor_select.sql <<<
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
GO
-- >>> FIN: ecf_emisor_select.sql <<<

-- >>> INICIO: ecf_fact_send.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[ecf_fact_send]         

 @id uniqueidentifier        

as                 

 declare @nuId int, @msg varchar(2000)         

        

 if exists (select 1 from ecfworker..ecf_comprobante where Referencia = @id and StatusEcf <> 'CANCELADO')           

   return -1          

    

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

   and h.StatusEcf = 'PENDIENTE'--'NUEVO'           

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

        

 set @nuId = scope_identity()        

        

 if @nuId is not null begin         

        

 insert into ecfworker..ecf_comprobante_detalle          

    (ReferenciaId, ComprobanteId, ProductoId, NombreProducto, Descripcion, Unidad, Cantidad, Precio,           

     Itbis, IndicadorBienOServicio, IndicadorFacturacion, IsrRetenidoItem, ItbisRetenidoItem)          

 select d.idfactura, 

        @nuId, 

        d.IdProducto, 

        d.idProducto, 

        Left(producto,50), 

        '31', 

        1 as cantidad,       

        ((d.Precio * d.Cantidad) - d.Descuento) * f.Tasa,  

        d.Itbis * f.Tasa,         

        '2',         

        case when d.itbis > 0 then '1' else '4' end,        

        0,        

        0        

  from factura f join facturadet d  on f.idfactura = d.idfactura       

  where f.idfactura = @id         

          

 --set @nuId = SCOPE_IDENTITY()          

        

     update factura         

       set StatusEcf = 'ENVIADO'--'PENDIENTE'          

     where idFactura = @id           

   end         

        

 commit tran        

 end try        

 begin catch        

   set @msg = ERROR_MESSAGE()        

   rollback tran        

   raiserror (@msg,16,6)        

 end catch 


GO
GO
-- >>> FIN: ecf_fact_send.sql <<<

-- >>> INICIO: ecf_factura_cambiarEstado.sql <<<
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
GO
-- >>> FIN: ecf_factura_cambiarEstado.sql <<<

-- >>> INICIO: ecf_factura_select.sql <<<
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
GO
-- >>> FIN: ecf_factura_select.sql <<<

-- >>> INICIO: ecf_factura_selectParaEnviar.sql <<<
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
GO
-- >>> FIN: ecf_factura_selectParaEnviar.sql <<<

-- >>> INICIO: ecf_facturadet_select.sql <<<
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
GO
-- >>> FIN: ecf_facturadet_select.sql <<<

-- >>> INICIO: ecf_facturas_pendEnvio.sql <<<
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
GO
-- >>> FIN: ecf_facturas_pendEnvio.sql <<<

-- >>> INICIO: ecf_gastomenor_select.sql <<<
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
GO
-- >>> FIN: ecf_gastomenor_select.sql <<<

-- >>> INICIO: ecf_gm_cambiarEstado.sql <<<
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
GO
-- >>> FIN: ecf_gm_cambiarEstado.sql <<<

-- >>> INICIO: ecf_gm_send.sql <<<
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

   and h.StatusEcf ='PENDIENTE' --'NUEVO'     

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

     set StatusEcf = 'ENVIADO'    

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
GO
-- >>> FIN: ecf_gm_send.sql <<<

-- >>> INICIO: ecf_gm_validate.sql <<<
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
GO
-- >>> FIN: ecf_gm_validate.sql <<<

-- >>> INICIO: ecf_logEnvio.sql <<<
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
GO
-- >>> FIN: ecf_logEnvio.sql <<<

-- >>> INICIO: ecf_marcar_cxp_Enviado.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[ecf_marcar_cxp_Enviado]

 @id int, @pend bit, @error varchar(100)

as 

 update cxpdocumentos

   set PendEnvioEcf = @pend, UltError = case when @pend = 1 then @error else '' end

 where idDocumento = @id and PendEnvioEcf = 1 


GO
GO
-- >>> FIN: ecf_marcar_cxp_Enviado.sql <<<

-- >>> INICIO: ecf_marcar_gm_Enviado.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[ecf_marcar_gm_Enviado]

 @id uniqueidentifier, @pend bit, @error varchar(100)

as 

 update bcoGastosMenores

   set PendEnvioEcf = @pend, UltError = case when @pend = 1 then @error else '' end

 where GuidDocumento = @id and PendEnvioEcf = 1 


GO
GO
-- >>> FIN: ecf_marcar_gm_Enviado.sql <<<

-- >>> INICIO: ecf_marcar_procesado.sql <<<
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

		 UltError = case when @status like '%acept%' then '' else @mensaje end, 

		 CodigoSeguridadEcf = @codSeg, 

		 TrackId = @trackId, 

		 FechaFirmaDigital = @fecFirma

 where CompFiscal = @numero and PendValidacion = 1 

 

 return @@ERROR



 end  

 

 if @numero like 'E4[1,7]%' begin      

   update cxpDocumentos  

     set PendValidacion = 0, 

		 StatusEcf = @status, 

		 UltError = case when @status like '%acept%' then '' else @mensaje end, 

		 CodigoSeguridadEcf = @codSeg, 

		 TrackId = @trackId, 

		 FechaFirmaDigital = @fecFirma

 where CompFiscal = @numero and PendValidacion = 1 and idTrans = 1 



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
GO
-- >>> FIN: ecf_marcar_procesado.sql <<<

-- >>> INICIO: ecf_reenviar.sql <<<
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
GO
-- >>> FIN: ecf_reenviar.sql <<<

-- >>> INICIO: ecf_selectPendEnvio.sql <<<
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
GO
-- >>> FIN: ecf_selectPendEnvio.sql <<<

-- >>> INICIO: RSEcfStatus.sql <<<
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
-- >>> FIN: RSEcfStatus.sql <<<

-- >>> INICIO: svCompFiscal2018.sql <<<
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
      @RORDEN BIT    

    IF NOT EXISTS(select 1 from compfiscal where terminal=@Terminal)  
    BEGIN
        SET @Terminal = 'Default'
    END

    IF @TipoDoc = 'FT'    
    BEGIN    
        SELECT @TipoCompFiscal = TipoCompFiscal    
        FROM ClienteTipo ct      
        JOIN Cliente c on ct.idClienteTipo = c.idClienteTipo    
        WHERE c.idcliente = @idcliente    
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
-- >>> FIN: svCompFiscal2018.sql <<<

-- >>> INICIO: BifrFactura.sql <<<
CREATE OR ALTER PROCEDURE BifrFactura

(

    @desde DATETIME,

    @hasta DATETIME

)

AS

--DECLARE @fe DATETIME = '20180626';



SELECT NEWID() AS keyfield,

       FechaInicio,

       FechaFin,

       Factura,

       Cliente,

       ISNULL(t.Tasa, 1) AS Tasa,

       SubTotal,

       Descuento,

       Total = SubTotal - Descuento,

       TotalRD = SubTotal * ISNULL(t.Tasa, 1),

       m.Moneda

FROM frFactura f

    JOIN Moneda m

        ON f.idMoneda = m.idMoneda

    LEFT JOIN Tasa t

        ON m.idMoneda = t.idMoneda

          -- AND t.Fecha = @fe

WHERE f.Fecha

      BETWEEN @desde AND @hasta

      AND Cancelado = 0;




GO
GO
-- >>> FIN: BifrFactura.sql <<<

-- >>> INICIO: biVentasDetalladas.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[biVentasDetalladas](@Desde datetime, @Hasta Datetime) as

--declare

--  @Desde datetime, @Hasta Datetime

  

--Set @Desde = '20110101' 

--set @Hasta = '20110430'



select  newid() keyfield, 

1,   

 --f.idCliente,    

 f.Cliente,    

 f.fecha,    

 f.factura,    

 f.referencia, 

 f.subtotal,

 f.itbis,

 month(f.fecha) as mes,

 f.descuento,

 f.total,   

 f.tasa,

 --m.Moneda,    

 --g.Grupo,    

 (SELECT empleado from svEmpleado e where e.idEmpleado=F.idempleado) As Vendedor, 

 (SELECT empleado from svEmpleado e where e.idEmpleado=F.idDoctor) as Doctor

 ,f.idAlmacen as sucursal

 --cg.ClienteGrupo As Categoria,    

-- ct.ClienteTipo,    

-- d.idProducto,    

-- d.Producto,    

-- d.cantidad,    

-- d.Descuento * f.Tasa As Descuento,    

-- d.Itbis * f.Tasa As Itbis,    

-- d.Precio * f.Tasa As Precio,    

-- d.LineTotal * f.Tasa As LineTotal,    

--(d.LineTotal-d.Descuento+d.itbis) * f.Tasa as TotalValor

from     

  Cliente c     

  join Factura    f on c.idCliente = f.idCliente    

  --join FacturaDet d on f.idFactura = d.idFactura    

  --join Producto   p on d.idProducto = p.idProducto    

  --join Moneda     m on (m.IdMoneda = f.IdMoneda)     

  --Join svEmpleado e on (e.IdEmpleado = f.IdEmpleado)

  --Left Outer Join svGrupo g on (g.IdGrupo = c.Grupo)    

  --Left Outer Join ClienteGrupo cg on (cg.IdClienteGrupo = c.IdClienteGrupo)    

  ----Left Outer Join ClienteTipo  ct on (ct.IdClienteTipo = c.IdClienteTipo)

  where    

  f.fecha between @Desde and @hasta 

  and (f.cancelado = 0)

  --and p.idproducto = '5000'

  --and f.idCliente = 1475

order by     

  f.fecha,    

  f.cliente   

  




GO
GO
-- >>> FIN: biVentasDetalladas.sql <<<

-- >>> INICIO: biVentasDetalladasxProducto.sql <<<
--/****** Object:  StoredProcedure [dbo].[biVentasDetalladas]    Script Date: 05/04/2019 04:09:51 p.m. ******/

--SET ANSI_NULLS ON

--GO

--SET QUOTED_IDENTIFIER ON

--GO



CREATE OR ALTER PROCEDURE [dbo].[biVentasDetalladasxProducto](@Desde datetime, @Hasta Datetime) as

--declare

--  @Desde datetime, @Hasta Datetime

  

--Set @Desde = '20190301' 

--set @Hasta = '20190305'



select  newid() keyfield, 

1,   

 f.Cliente,    

 f.fecha,    

 f.factura,    

 --f.referencia, 

 --f.subtotal,

 --f.itbis,

 --month(f.fecha) as mes,

 --f.descuento,

 --f.total,   

 --f.tasa,

 (SELECT empleado from svEmpleado e where e.idEmpleado=F.idempleado) As Vendedor, 

 (SELECT empleado from svEmpleado e where e.idEmpleado=F.idDoctor) as Doctor,

 d.idproducto,d.producto,p.idgrupo as Grupo,

 d.cantidad,d.descuento,d.itbis,d.precio,d.idAlmacen

 

from     

  Cliente c     

  join Factura    f on c.idCliente = f.idCliente    

  join FacturaDet d on f.idFactura = d.idFactura    

  join Producto   p on d.idProducto = p.idProducto  

  where    

  f.fecha between @Desde and @hasta 

  and (f.cancelado = 0)





order by     

  f.fecha,    

  f.cliente   

  




GO
GO
-- >>> FIN: biVentasDetalladasxProducto.sql <<<

-- >>> INICIO: biVentasVendedorPivot.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[biVentasVendedorPivot]



 @Desde datetime, @Hasta datetime 

AS



--DECLARE @Desde datetime, @Hasta datetime 



--SET @Desde ='20150301'



--SET @hasta ='20150330'



declare @LINEA_DISTRIBUIDORA varchar(16)



select @LINEA_DISTRIBUIDORA = convert(varchar(16), valor)

from defaults

where clave = 'LINEA_DISTRIB'



declare @tbl table 

 (KeyField uniqueidentifier, idVendedor int, Vendedor varchar(100), idCliente int, Cliente varchar(100),

  Segmento varchar(100), Categoria varchar(100), Factura varchar(16), Fecha datetime, TotalFactura decimal(19,2),

  idProducto varchar(30), Producto varchar(100), Cantidad float, Precio decimal(19,2), LineTotal decimal(19,2),

  Descuento decimal(19,2), Itbis decimal(19,2), PrecioFinal decimal(19,2), grupo varchar(100), Linea varchar(100), Comisiona BIT,

  DireccionObra VARCHAR(100))

  

insert into @tbl 

SELECT     

  KeyField=newid(), 

  e.idEmpleado as idVendedor, 

  e.Empleado as Vendedor, 

  c.idCliente, 

  c.Cliente,   

  seg.Grupo as Segmento, 

  g.ClienteGrupo as Grupo, 

  f.Factura, 

  f.Fecha, 

  f.total  * f.Tasa as TotalFactura,

  p.idProducto, 

  fd.Producto, 

  fd.Cantidad, 

  fd.Precio * f.Tasa,

  fd.LineTotal  * f.Tasa, 

  fd.Descuento  * f.Tasa, 

  fd.Itbis  * f.Tasa, 

  (fd.LineTotal - c.Descuento) * f.Tasa AS PrecioFinal,

  gr.Grupo,

  l.Linea,

  p.Comisiona

  , ( SELECT TOP 1 CASE WHEN co1.direccionobra='' THEN c1.idClienteObra ELSE co1.idClienteObra end 

        FROM conduce c1 

  JOIN FacturaConduce fc1 ON fc1.idConduce = c1.idConduce 

  JOIN factura f1 ON f1.idfactura=fc1.idFactura

  left JOIN ClienteObra co1 ON co1.idClienteObra = c1.idClienteObra

  WHERE c1.idcliente=c.idCliente AND f1.Factura=f.Factura ) as DireccionObra

FROM         

  dbo.Cliente c INNER JOIN

  dbo.Factura f ON c.idCliente = f.idCliente INNER JOIN

  dbo.FacturaDet fd ON f.idFactura = fd.idFactura INNER JOIN

  dbo.svEmpleado e ON f.idEmpleado = e.idEmpleado INNER JOIN

  dbo.Producto p ON p.idProducto = fd.idProducto 

   join Grupo gr on gr.idgrupo = p.idgrupo

   join Linea l on gr.idLinea = l.idlinea

  left join ClienteGrupo g on c.idClienteGrupo = g.idClienteGrupo 

  left join svGrupo seg on c.Grupo = seg.idgrupo  

   

 

WHERE     

  ((f.cancelado = 0) or (f.cancelado = 1 and f.fechacancelado > @Hasta)) 

  and (f.fecha between @Desde and @Hasta)

   and p.paravender = 1 --AND c.idcliente=2246

 -- and p.comisiona = 1

 

  

  --SELECT   co.direccionobra,c.idClienteObra  FROM conduce c 

  --JOIN FacturaConduce fc ON fc.idConduce = c.idConduce 

  --JOIN factura f ON f.idfactura=fc.idFactura

  --left JOIN ClienteObra co ON co.idClienteObra = c.idClienteObra

  --WHERE c.idcliente=2246 AND f.Factura='00019045'  

  --SELECT * FROM ClienteObra ORDER BY idClienteObra co WHERE co.idClienteObra='LA ESPERILLA, TO'

  







-- -- PUERTO RICO!

-- insert into @tbl 

--SELECT     

--  KeyField=newid(), 

--  e.idEmpleado as idVendedor, 

--  e.Empleado as Vendedor, 

--  c.idCliente, 

--  c.Cliente,   

--  seg.Grupo as Segmento, 

--  g.ClienteGrupo as Grupo, 

--  f.Factura, 

--  f.Fecha, 

--  f.total * f.Tasa as TotalFactura,

--  p.idProducto, 

--  fd.Producto, 

--  fd.Cantidad, 

--  fd.Precio * f.Tasa,

--  fd.LineTotal * f.Tasa, 

--  fd.Descuento * f.Tasa, 

--  fd.Itbis * f.Tasa, 

--  (fd.LineTotal - c.Descuento)  * f.Tasa AS PrecioFinal,

--  gr.Grupo,

--  l.Linea,

--  p.Comisiona 

--FROM         

--  pruebarijo..Cliente c INNER JOIN

--  pruebarijo..Factura f ON c.idCliente = f.idCliente INNER JOIN

--  pruebarijo..FacturaDet fd ON f.idFactura = fd.idFactura INNER JOIN

--  pruebarijo..svEmpleado e ON f.idEmpleado = e.idEmpleado INNER JOIN

--  pruebarijo..Producto p ON p.idProducto = fd.idProducto join

--  pruebarijo..Grupo gr on p.idGrupo = gr.idGrupo join 

--  pruebarijo..Linea l on gr.idLinea = l.idLinea 

--  left join pruebarijo..ClienteGrupo g on c.idClienteGrupo = g.idClienteGrupo 

--  left join pruebarijo..svGrupo seg on c.Grupo = seg.idgrupo  

--WHERE     

--  ((f.cancelado = 0) or (f.cancelado = 1 and f.fechacancelado > @Hasta)) 

--  and (f.fecha between @Desde and @Hasta)

--  and l.idinventario = @LINEA_DISTRIBUIDORA

--   and p.paravender = 1

--  --and p.comisiona = 1

 

  

 select 	

    t.*,   

	Mes = case when t.fecha is null then '' else dbo.padStringLeft(convert(varchar(2), month(t.fecha)),2,'0') + '-' + dbo.cbsNombreMes(t.Fecha) end,

	Anno = Convert(varchar(4), convert(int, Year(t.fecha))),

	PromedioVendProd = (select sum(cantidad * Precio) / sum(cantidad)

		        from @tbl

			where idProducto = t.idProducto and idVendedor = t.idVendedor and cantidad > 0 ),

	PromedioVend = (select sum(cantidad * Precio) / sum(cantidad)

		        from @tbl where idVendedor = t.idVendedor and cantidad > 0 ),

	datepart(w,fecha) as Semana

	        

 from 

   @tbl t 



 order by t.Vendedor, t.idVendedor, t.Fecha 

 

 


GO
GO
-- >>> FIN: biVentasVendedorPivot.sql <<<

-- >>> INICIO: BusqTestClientes.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[BusqTestClientes](@Orden varchar(50)) AS



   

declare @sql varchar(500)



--if @Orden = '' 

--Begin

  select * from cliente order by 1

--end

--else

--begin

--  'Select * From cliente order by ' + @Orden)

--end

 

 








GO
GO
-- >>> FIN: BusqTestClientes.sql <<<

-- >>> INICIO: CarteradeClientes.sql <<<
CREATE OR ALTER PROCEDURE CarteradeClientes (@idEmpleado int) AS





SELECT     TOP 100 PERCENT e.idEmpleado, e.Empleado, e.Telefono AS TelEmp, c.idCliente, c.Cliente, c.Contacto, c.Direccion, c.Sector, c.Ciudad, c.Telefono, 

                      c.Fax, c.Beeper, c.EMail, c.LimiteCredito, c.idClienteTipo, c.idClienteStatus, c.Descuento, MAX(f.Fecha) AS UltFactura

FROM         svEmpleado e INNER JOIN

                      dbo.Cliente c ON e.idEmpleado = c.idEmpleado LEFT OUTER JOIN

                      dbo.Factura f ON c.idCliente = f.idCliente

WHERE     (e.inactivo = 0) and (@idEmpleado = -1 or e.idEmpleado = @idEmpleado)

GROUP BY e.idEmpleado, e.Empleado, e.Telefono, c.idCliente, c.Cliente, c.Contacto, c.Direccion, c.Sector, c.Ciudad, c.Telefono, c.Fax, c.Beeper, c.EMail, 

                      c.LimiteCredito, c.idClienteTipo, c.idClienteStatus, c.Descuento

ORDER BY e.Empleado, c.Cliente


GO
GO
-- >>> FIN: CarteradeClientes.sql <<<

-- >>> INICIO: ClienteAct.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[ClienteAct] (@idCliente int) AS Select c.idCliente, c.Cliente, c.Contacto, c.LimiteCredito, cs.Activo, c.idEmpleado, c.Direccion, c.Sector, c.Ciudad, c.Telefono, ct.NoPagaItbis, c.Descuento, c.Fax, c.eMail, c.idListaPrecio, c.Condicion, c.RNC_Cedula, c.idCondicion, c.Notas, ct.TipoCompFiscal, ct.ClienteTipo, c.idCuenta, c.idAuxiliar, c.IdMoneda From Cliente c LEFT JOIN ClienteStatus cs on (cs.idClienteStatus = c.idClienteStatus) LEFT JOIN ClienteTipo ct on (ct.idClienteTipo = c.idClienteTipo) Where c.idCliente = @idCliente
GO
GO
-- >>> FIN: ClienteAct.sql <<<

-- >>> INICIO: ClienteBalanceList.sql <<<
CREATE OR ALTER PROCEDURE ClienteBalanceList(@Fecha datetime) AS





Select

  idCliente,

  Cliente,

  Balance = dbo.cxcBalanceCliente(idCliente, @Fecha)

into 

  #tmp

from

  cliente





Select 

  *

from

  #tmp

where

  Balance <> 0.00  

order by

  cliente



drop table #tmp
GO
GO
-- >>> FIN: ClienteBalanceList.sql <<<

-- >>> INICIO: ClienteCxCList.sql <<<
CREATE OR ALTER PROCEDURE ClienteCxCList(@Activo bit) AS



SELECT  TOP 100 PERCENT 

	e.EstacionID, 

	e.Estacion, 

	e.Contacto, 

	e.Calle, 

	e.Telefono, 

	e.Remision, 

	e.TipoClienteID, 

	s.Sector, 

	z.Zona, 

	c.Ciudad, 

	r.Ruta

FROM         

	dbo.Zona z RIGHT OUTER JOIN

        dbo.Sector s RIGHT OUTER JOIN

        dbo.Estacion e INNER JOIN

        dbo.EstacionEst ee ON e.EstacionEstID = ee.EstacionEstID ON s.SectorID = e.SectorID LEFT OUTER JOIN

        dbo.Ruta r ON e.RutaID = r.RutaID ON z.ZonaID = r.ZonaID LEFT OUTER JOIN

        dbo.Ciudad c ON z.CiudadID = c.CiudadID

WHERE

 	ee.activo = @Activo

ORDER BY 

	e.Estacion












GO
GO
-- >>> FIN: ClienteCxCList.sql <<<

-- >>> INICIO: Clienteinact.sql <<<
CREATE OR ALTER PROCEDURE Clienteinact (@Activo bit) AS



  Select 

    idCliente, 

    Cliente, 

    Contacto, 

    Activo, 

    Direccion,

    Sector,

    Ciudad,

    Telefono,

    Fax,

    eMail,

    Condicion

    

  from 

    cliente c 

    join clientestatus cs on c.idClienteStatus = cs.idClienteStatus

    join ClienteTipo ct on c.idClienteTipo = ct.idClienteTipo

  where 

    Activo = @Activo




GO
GO
-- >>> FIN: Clienteinact.sql <<<

-- >>> INICIO: ClienteObraList.sql <<<
CREATE OR ALTER PROCEDURE ClienteObraList(@idCliente int) AS



  Select 

    *

  From 

    ClienteObra

  Where

    ActivoObra = 1 and idCliente = @idCliente


GO
GO
-- >>> FIN: ClienteObraList.sql <<<

-- >>> INICIO: ClienteRpt.sql <<<
CREATE OR ALTER PROCEDURE ClienteRpt(@Activo Bit)  

AS  

SELECT  

  IdCliente,

  Cliente,

  Contacto,

  Direccion,

  Ciudad,

  Telefono,

  Fax,

  eMail,

  Rnc_Cedula,

  Sector,

  LimiteCredito,

  Descuento,

  Condicion

FROM  

  Cliente       cl Inner Join  

  ClienteStatus cs On (cl.IdClienteStatus = cs.IdClienteStatus)  

WHERE  

  cs.Activo = @Activo  

ORDER BY  

  Cliente  

  


GO
GO
-- >>> FIN: ClienteRpt.sql <<<

-- >>> INICIO: ClienteRpt02.sql <<<
CREATE OR ALTER PROCEDURE ClienteRpt02(@Activo Bit)    

AS    

SELECT    

  cl.IdCliente,    

  cl.Cliente,    

  sv.Empleado,    

  zo.Zona,    

  cl.Grupo,    

  ct.ClienteTipo,    

  cs.ClienteStatus,    

  cl.Descuento,    

  cg.ClienteGrupo,    

  cl.IdListaPrecio,  

  cl.LimiteCredito,  

  cl.Condicion,  

  cl.Contacto,  

  cl.Direccion,  

  cl.Ciudad,  

  cl.Telefono,  

  cl.Fax,  

  cl.eMail,  

  cl.Rnc_Cedula,  

  cl.Sector  ,

  cl.FechaActivo as FechaInicio

FROM    

  Cliente       cl Inner Join    

  ClienteStatus cs On (cl.IdClienteStatus = cs.IdClienteStatus) Left Outer Join    

  svEmpleado    sv On (sv.IdEmpleado = cl.IdEmpleado) Left Outer Join    

  Zona          zo On (zo.IdZona = cl.IdZona) Left Outer Join    

  ClienteTipo   ct On (ct.IdClienteTipo = cl.IdClienteTipo) Left Outer Join    

  ClienteGrupo  cg On (cg.IdClienteGrupo = cl.IdClienteGrupo)    

WHERE    

  cs.Activo = @Activo    

ORDER BY    

  Cliente  

  
GO
GO
-- >>> FIN: ClienteRpt02.sql <<<

-- >>> INICIO: Clientes.sql <<<
CREATE OR ALTER PROCEDURE [Clientes] 

   @Ciu varchar(30)='%',

   @Zon varchar(30)='%',

   @Rut varchar(30)='%',

   @Sec varchar(30)='%',

   @Emp varchar(30)='%' 

AS

------------------------------------------





SELECT     TOP 100 PERCENT 

    dbo.Ciudad.CiudadID, 

    dbo.Ciudad.Ciudad, 

    dbo.Zona.ZonaID, 

    dbo.Zona.Zona, 

    dbo.Ruta.RutaID, 

    dbo.Ruta.Ruta, 

    dbo.Empleado.EmpleadoID, 

    dbo.Empleado.ApeEmpleado + ', ' + dbo.Empleado.NomEmpleado AS Empleado, 

    dbo.OrdenRutaSector.Orden, 

    dbo.Sector.SectorID, 

    dbo.Sector.Sector, 

    dbo.EstacionRuta.OrdenVisita, 

    dbo.Estacion.EstacionID, 

    dbo.Estacion.Estacion, 

    dbo.Estacion.Contacto, 

    dbo.Estacion.Calle, 0 AS Credito

FROM         

    dbo.Empleado 

    INNER JOIN dbo.Ruta ON dbo.Empleado.EmpleadoID = dbo.Ruta.EmpleadoID 

    INNER JOIN dbo.Zona ON dbo.Ruta.ZonaID = dbo.Zona.ZonaID 

    INNER JOIN dbo.Ciudad ON dbo.Zona.CiudadID = dbo.Ciudad.CiudadID 

    LEFT OUTER JOIN dbo.Sector 

    INNER JOIN dbo.EstacionEst 

    INNER JOIN dbo.Estacion ON dbo.EstacionEst.EstacionEstID = dbo.Estacion.EstacionEstID ON dbo.Sector.SectorID = dbo.Estacion.SectorID 

    LEFT OUTER JOIN dbo.EstacionRuta ON dbo.Estacion.EstacionID = dbo.EstacionRuta.EstacionID ON dbo.Ruta.RutaID = dbo.EstacionRuta.RutaID 

    LEFT OUTER JOIN dbo.OrdenRutaSector ON dbo.Sector.SectorID = dbo.OrdenRutaSector.SectorID AND dbo.Ruta.RutaID = dbo.OrdenRutaSector.RutaID

WHERE     

    (dbo.EstacionEst.Activo = 1)

    AND (ISNULL(dbo.Ciudad.Ciudad, '') LIKE @Ciu) 

    AND (ISNULL(dbo.Zona.Zona, '') LIKE @Zon) 

    AND (ISNULL(dbo.Ruta.Ruta, '') LIKE @Rut) 

    AND (ISNULL(dbo.Sector.Sector, '') LIKE @Sec) 

    AND (dbo.Empleado.ApeEmpleado + ', ' + dbo.Empleado.NomEmpleado LIKE @Emp)

ORDER BY 

    dbo.Ciudad.CiudadID, 

    dbo.Zona.ZonaID, 

    dbo.Ruta.RutaID, 

    dbo.OrdenRutaSector.Orden, 

    dbo.Sector.Sector, 

    dbo.EstacionRuta.OrdenVisita, 

    dbo.Estacion.Estacion














GO
GO
-- >>> FIN: Clientes.sql <<<

-- >>> INICIO: Conduce2Factura.sql <<<
CREATE OR ALTER PROCEDURE Conduce2Factura(@idCliente int, @Desde datetime, @Hasta datetime) AS  

  Select   

    c.idConduce, c.Conduce, c.Cliente, c.Fecha, c.Referencia, c.idClienteObra, c.idConduceStatus, c.OrdComp  

  From   

    Conduce c join conducestatus cs on c.idConduceStatus = cs.idConduceStatus  

  Where   

    c.fecha between @Desde and @Hasta   

    and c.idCliente = @idCliente  

    and cs.esFacturable = 1  

    and c.cancelado = 0  

    and not exists (select 1 from facturaconduce fc join factura f on fc.idfactura = f.idFactura

			where fc.idConduce = c.idConduce and f.Cancelado = 0)

  Order by  

    c.fecha  

  

  




GO
GO
-- >>> FIN: Conduce2Factura.sql <<<

-- >>> INICIO: Conduce2FacturaDet.sql <<<
CREATE OR ALTER PROCEDURE Conduce2FacturaDet(@idConduceList varchar(5000))  AS



declare 

  @sqlstr varchar(5500)



set  @sqlstr =

	' SELECT    cd.idProducto, cd.Producto, cd.idUnidad, cd.Cantidad, ocd.Precio

 	 FROM         dbo.Conduce c 

		INNER JOIN dbo.ConduceDet cd ON c.idConduce = cd.idConduce 

                INNER join ordCompDet ocd on cd.idOrdCompDet = ocd.idOrdCompDet 

 	  WHERE   c.cancelado = 0 and c.idConduce IN ' + @idConduceList 







exec (@sqlstr)






GO
GO
-- >>> FIN: Conduce2FacturaDet.sql <<<

-- >>> INICIO: contRsCompromiso.sql <<<
------------ final de:contRsAvance ------------



------------ inicio de:contRsCompromiso ------------







CREATE OR ALTER PROCEDURE contRsCompromiso(@idContrato uniqueidentifier) AS

  Select

    *

  From

    contCompromiso

  Where

    idContrato = @idContrato

  Order by 

   Fecha




GO
GO
-- >>> FIN: contRsCompromiso.sql <<<

-- >>> INICIO: cxcAgingCtasXCobrar.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxcAgingCtasXCobrar] 

 @final datetime,         

 @ident int,         

 @persize int = 15,        

 @idVend int,      

 @Vencimiento Bit,    

 @SoloVencido bit,

 @usar_sc bit

as       

  

  declare @TotalCli int        

  select          

    ct.ClienteTipo,      

    e.idCliente,        

    e.Cliente as Nombre,        

    e.Contacto,        

    e.telefono,      

    IsNull(g.Grupo, 'SIN GRUPO') As Grupo,        

    t.idMoneda,        

    m.Moneda,        

    t.idCXC,         

    Dias = datediff(day, (CASE WHEN @Vencimiento = 0 THEN t.Fecha ELSE IsNull(t.Vencimiento, t.Fecha) END), @final),        

    t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura,         

    IDRow = t.idCXC,        

    t.Fecha,       

    t.Vencimiento,       

    t.Valor as Total,        

    Pagado = (isnull(        

   (select sum(d.TotalAplicado)        

          from         

              cxc c         

              join cxcDet d on c.idCXC = d.idCXC        

          where         

              d.fecha <= @final        

     and c.cancelado = 0      

              and d.idCXCDebito = t.idCXC        

          ),0)),    

    cg.ClienteGrupo As Categoria,    

    em.Empleado As Vendedor,

    case @usar_sc when 1 then t.idClienteObra else '' end as IdClienteObra,

    case @usar_sc when 1 then co.ClienteObra else '' end as ClienteObra

  into         

    #tempcxp      

  from         

    CXC t         

    join Moneda m on t.idMoneda = m.idMoneda        

    right join Cliente e on t.idCliente = e.idCliente        

    right join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo      

    left join svGrupo g on e.grupo = g.idGrupo       

    left join ClienteGrupo cg on (cg.IdClienteGrupo = e.IdClienteGrupo)    

    left join svEmpleado em on (em.IdEmpleado = e.IdEmpleado)    

    left join ClienteObra co on e.idCliente = co.idCliente and t.idClienteObra = co.idClienteObra 

  where         

    (@idEnt = 0 or t.idCliente = @idEnt)         

    and (@idVend = 0 or e.idEmpleado = @idVend)         

    and  t.EsCredito = 0        

    and  (Case when @SoloVencido = 1 then t.Vencimiento else t.fecha end)  <=  @final    

    and t.cancelado = 0        

  insert into #tempcxp        

  select       

    ct.ClienteTipo,      

    e.idCliente,        

    e.Cliente as Nombre,        

    e.Contacto,        

    e.telefono,       

    IsNull(g.Grupo, 'SIN GRUPO') As Grupo,       

    t.idMoneda,        

    m.Moneda,        

    t.idCXC,         

    Dias = datediff(day, t.Fecha, @final),         

    t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura,         

    IDRow = t.idCXC,        

    t.Fecha,        

    t.Vencimiento,      

    -(t.Valor - isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)) as Total,        

    Pagado = 0.00,    

    cg.ClienteGrupo As Categoria,    

    em.Empleado As Vendedor,

    '',

    ''

  from         

    cxc t         

    left join cxcDet d on t.idCXC = d.idCXC and d.fecha <= @final         

    join Moneda m on t.idMoneda = m.idMoneda        

    join Cliente e on t.idCliente = e.idCliente        

    join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo       

    left join svGrupo g on e.grupo = g.idGrupo      

    left join ClienteGrupo cg on (cg.IdClienteGrupo = e.IdClienteGrupo)    

    left join svEmpleado em on (em.IdEmpleado = e.IdEmpleado)    

  where         

    (@idEnt = 0 or t.idCliente = @idEnt)         

    and (@idVend = 0 or e.idEmpleado = @idVend)         

    and  t.EsCredito = 1        

    and t.fecha <= @final          

    and t.cancelado = 0        

  group by         

    ct.ClienteTipo,       

    e.idCliente,        

    e.Cliente ,        

    e.Contacto,        

    e.telefono,      

    g.grupo,        

    t.idMoneda,        

    m.Moneda,        

    t.idCXC,         

    datediff(day, t.Fecha, @final),        

    t.idTipoDocumento,          

    t.CXC,         

    t.idCXC,        

    t.Fecha,        

    t.Vencimiento,      

    t.Valor,    

    cg.ClienteGrupo,    

    em.Empleado    

  having t.Valor <> isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)      

--------        

select      

  idMoneda,         

  idCliente,        

  sum(Valor) - sum(Aplicado) as PorDist          

into        

  #TmpDist        

from (        

  SELECT         

    c.idMoneda,          

    c.idCliente,        

    c.Valor,        

 SUM(isnull((cd.Valor * cd.tasa) / c.tasa,0.00)) AS Aplicado        

  FROM                 

    dbo.Cxc c LEFT JOIN        

    dbo.CxcDet cd ON c.idCxc = cd.idCxc        

  WHERE             

    (c.esCredito = 1)        

    and (c.fecha <= @Final)        

   and (@idEnt = 0 or c.idCliente = @idEnt)         

    and (c.Cancelado = 0)        

    and ((cd.fecha is null) or (cd.fecha <= @Final))        

  GROUP BY         

    c.idMoneda,      

    c.idCliente,         

    c.idCxc,        

    c.Valor) Datos        

Group by        

  Datos.idMoneda,      

  Datos.idCliente        

Order by        

  Datos.idMoneda,      

  Datos.idCliente        

Set @TotalCli = (select count(distinct idcliente) from #tempcxp x where  x.Total <> x.pagado)        



select        

   c.Compania,        

   x.ClienteTipo,       

   x.idMoneda,        

   x.Moneda,        

   x.idcliente,        

   x.Nombre,        

   x.idClienteObra,

   x.ClienteObra, 

   idCXC,         

   x.Contacto,        

   x.Telefono,      

   x.Grupo,        

   Dias,         

   NoVenc = case when Floor(dias / @persize) <= 0 then Total - Pagado else $0 end,        

   A30    = case when Floor(dias / @persize) = 1 then Total - Pagado else $0 end,        

   A60    = case when Floor(dias / @persize) = 2 then Total - Pagado else $0 end,        

   A90    = case when Floor(dias / @persize) = 3 then Total - Pagado else $0 end,        

   AMas90 = case when Floor(dias / @persize) > 3 then Total - Pagado else $0 end,        

   Factura,         

   IDRow,        

   Fecha,        

   Vencimiento,      

   Total,        

   Pagado,        

   Categoria,    

   Vendedor,    

   d.PorDist,        

   CASE WHEN @Vencimiento = 0 THEN       

     ('0 a ' + convert(varchar(10), @persize))       

   ELSE       

     ('No Vencido')       

   END as Preriodo1,        

   CASE WHEN @Vencimiento = 0 THEN      

     (convert(varchar(10), @persize+1) + ' a ' + convert(varchar(10), @persize*2))       

   ELSE      

     ('1 a ' + convert(varchar(10), @persize))         

   END as Preriodo2,        

   CASE WHEN @Vencimiento = 0 THEN      

     (convert(varchar(10), @persize*2+1) + ' a ' + convert(varchar(10), @persize*3))       

   ELSE      

     (convert(varchar(10), @persize+1) + ' a ' + convert(varchar(10), @persize*2))       

   END as Preriodo3,        

   CASE WHEN @Vencimiento = 0 THEN      

     (convert(varchar(10), @persize*3+1) + ' a ' + convert(varchar(10), @persize*4))       

   ELSE      

     (convert(varchar(10), @persize*2+1) + ' a ' + convert(varchar(10), @persize*3))       

   END as Preriodo4,        

   CASE WHEN @Vencimiento = 0 THEN      

     (convert(varchar(10), @persize*4+1) + ' o Mas')       

   ELSE      

     (convert(varchar(10), @persize*3+1) + ' a Mas')      

   END as Preriodo5,      

   TotalClientes = @TotalCli,      

   BalanceObra =   isnull((select sum(Total - Pagado) 

							from #tempcxp where idCliente = x.idCliente and idClienteObra= idClienteObra),0.00), 

   BalanceFinal = isnull((select sum(Total - Pagado) from #tempcxp         

      where idCliente = x.idCliente),0.00), -- - d.PorDist,        

   BalanceGral = isnull((select sum(Total - Pagado) from #tempcxp) ,0.00) --         

  --        isnull((select sum(porDist) from #tmpDist) ,0.00)          

  from         

    #tempcxp x       

    left join #TmpDist d on x.idcliente = d.idcliente and x.idMoneda = d.idmoneda      

    cross join configuracion c        

  where        

    x.Total <> x.pagado         

  order by         

    x.idMoneda,       

	x.ClienteTipo,    	    

    x.Nombre,         

    x.idCliente,

    x.ClienteObra, 

    x.idClienteObra, 

    x.Fecha        

drop table #tempcxp        

drop table #tmpDist        

return 0    

    

    

  


GO
GO
-- >>> FIN: cxcAgingCtasXCobrar.sql <<<

-- >>> INICIO: cxcAgingCtasXCobrar.tmp.sql <<<
CREATE OR ALTER PROCEDURE cxcAgingCtasXCobrar    

 @final datetime,     

 @ident int,     

 @persize int = 15,    

 @idVend int,  

 @Vencimiento Bit,

 @SoloVencido bit  

as    

  declare @TotalCli int    

  select      

    ct.ClienteTipo,  

    e.idCliente,    

    e.Cliente as Nombre,    

    e.Contacto,    

    e.telefono,  

    IsNull(g.Grupo, 'SIN GRUPO') As Grupo,    

    t.idMoneda,    

    m.Moneda,    

    t.idCXC,     

    Dias = datediff(day, (CASE WHEN @Vencimiento = 0 THEN t.Fecha ELSE IsNull(t.Vencimiento, t.Fecha) END), @final),     

    t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura,     

    IDRow = t.idCXC,    

    t.Fecha,   

    t.Vencimiento,   

    t.Valor as Total,    

    Pagado = (isnull(    

   (select sum(d.TotalAplicado)    

          from     

              cxc c     

              join cxcDet d on c.idCXC = d.idCXC    

          where     

              d.fecha <= @final    

     and c.cancelado = 0  

              and d.idCXCDebito = t.idCXC    

          ),0)),

    cg.ClienteGrupo As Categoria,

    em.Empleado As Vendedor

  into     

    #tempcxp  

  from     

    CXC t     

    join Moneda m on t.idMoneda = m.idMoneda    

    right join Cliente e on t.idCliente = e.idCliente    

    right join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo  

    left join svGrupo g on e.grupo = g.idGrupo   

    left join ClienteGrupo cg on (cg.IdClienteGrupo = e.IdClienteGrupo)

    left join svEmpleado em on (em.IdEmpleado = e.IdEmpleado)

  where     

    (@idEnt = 0 or t.idCliente = @idEnt)     

    and (@idVend = 0 or e.idEmpleado = @idVend)     

    and  t.EsCredito = 0    

    and  (Case when @SoloVencido = 1 then t.Vencimiento else t.fecha end)  <=  @final

    and t.cancelado = 0    

  insert into #tempcxp    

  select   

    ct.ClienteTipo,  

    e.idCliente,    

    e.Cliente as Nombre,    

    e.Contacto,    

    e.telefono,   

    IsNull(g.Grupo, 'SIN GRUPO') As Grupo,   

    t.idMoneda,    

    m.Moneda,    

    t.idCXC,     

    Dias = datediff(day, t.Fecha, @final),     

    t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura,     

    IDRow = t.idCXC,    

    t.Fecha,    

    t.Vencimiento,  

    -(t.Valor - isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)) as Total,    

    Pagado = 0.00,

    cg.ClienteGrupo As Categoria,

    em.Empleado As Vendedor

  from     

    cxc t     

    left join cxcDet d on t.idCXC = d.idCXC and d.fecha <= @final     

    join Moneda m on t.idMoneda = m.idMoneda    

    join Cliente e on t.idCliente = e.idCliente    

    join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo   

    left join svGrupo g on e.grupo = g.idGrupo  

    left join ClienteGrupo cg on (cg.IdClienteGrupo = e.IdClienteGrupo)

    left join svEmpleado em on (em.IdEmpleado = e.IdEmpleado)

  where     

    (@idEnt = 0 or t.idCliente = @idEnt)     

    and (@idVend = 0 or e.idEmpleado = @idVend)     

    and  t.EsCredito = 1    

    and t.fecha <= @final      

    and t.cancelado = 0    

  group by     

    ct.ClienteTipo,   

    e.idCliente,    

    e.Cliente ,    

    e.Contacto,    

    e.telefono,  

    g.grupo,    

    t.idMoneda,    

    m.Moneda,    

    t.idCXC,     

    datediff(day, t.Fecha, @final),    

    t.idTipoDocumento,      

    t.CXC,     

    t.idCXC,    

    t.Fecha,    

    t.Vencimiento,  

    t.Valor,

    cg.ClienteGrupo,

    em.Empleado

  having t.Valor <> isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)  

--------    

select  

  idMoneda,     

  idCliente,    

  sum(Valor) - sum(Aplicado) as PorDist      

into    

  #TmpDist    

from (    

  SELECT     

    c.idMoneda,      

    c.idCliente,    

    c.Valor,    

    SUM(isnull((cd.Valor * cd.tasa) / c.tasa,0.00)) AS Aplicado    

  FROM             

    dbo.Cxc c LEFT JOIN    

    dbo.CxcDet cd ON c.idCxc = cd.idCxc    

  WHERE         

    (c.esCredito = 1)    

    and (c.fecha <= @Final)    

    and (@idEnt = 0 or c.idCliente = @idEnt)     

    and (c.Cancelado = 0)    

    and ((cd.fecha is null) or (cd.fecha <= @Final))    

  GROUP BY     

    c.idMoneda,  

    c.idCliente,     

    c.idCxc,    

    c.Valor) Datos    

Group by    

  Datos.idMoneda,  

  Datos.idCliente    

Order by    

  Datos.idMoneda,  

  Datos.idCliente    

Set @TotalCli = (select count(distinct idcliente) from #tempcxp x where  x.Total <> x.pagado)    

select    

   c.Compania,    

   x.ClienteTipo,   

   x.idMoneda,    

   x.Moneda,    

   x.idcliente,    

   x.Nombre,    

   idCXC,     

   x.Contacto,    

   x.Telefono,  

   x.Grupo,    

   Dias,     

   NoVenc = case when dias <= 0 then Total - Pagado else $0 end,    

   A30    = case when dias between 1 and @persize then Total - Pagado else $0 end,    

   A60    = case when dias between (@persize + 1) and (@persize * 2) then Total - Pagado else $0 end,    

   A90    = case when dias between (@persize * 2) + 1 and (@persize * 3) then Total - Pagado else $0 end,    

   AMas90 = case when dias > (@persize * 3) then Total - Pagado else $0 end,

--   NoVenc = case when Floor(dias / @persize) <= 0 then Total - Pagado else $0 end,    

--   A30    = case when Floor(dias / @persize) = 1 then Total - Pagado else $0 end,    

--   A60    = case when Floor(dias / @persize) = 2 then Total - Pagado else $0 end,    

--   A90    = case when Floor(dias / @persize) = 3 then Total - Pagado else $0 end,    

--   AMas90 = case when Floor(dias / @persize) > 3 then Total - Pagado else $0 end,    

   Factura,     

   IDRow,    

   Fecha,    

   Vencimiento,  

   Total,    

   Pagado,    

   Categoria,

   Vendedor,

   d.PorDist,    

   CASE WHEN @Vencimiento = 0 THEN   

     ('0 a ' + convert(varchar(10), @persize))   

   ELSE   

     ('No Vencido')   

   END as Preriodo1,    

   CASE WHEN @Vencimiento = 0 THEN  

     (convert(varchar(10), @persize+1) + ' a ' + convert(varchar(10), @persize*2))   

   ELSE  

     ('1 a ' + convert(varchar(10), @persize))     

   END as Preriodo2,    

   CASE WHEN @Vencimiento = 0 THEN  

     (convert(varchar(10), @persize*2+1) + ' a ' + convert(varchar(10), @persize*3))   

   ELSE  

     (convert(varchar(10), @persize+1) + ' a ' + convert(varchar(10), @persize*2))   

   END as Preriodo3,    

   CASE WHEN @Vencimiento = 0 THEN  

     (convert(varchar(10), @persize*3+1) + ' a ' + convert(varchar(10), @persize*4))   

   ELSE  

     (convert(varchar(10), @persize*2+1) + ' a ' + convert(varchar(10), @persize*3))   

   END as Preriodo4,    

   CASE WHEN @Vencimiento = 0 THEN  

     (convert(varchar(10), @persize*4+1) + ' o Mas')   

   ELSE  

     (convert(varchar(10), @persize*3+1) + ' a Mas')  

   END as Preriodo5,  

   TotalClientes = @TotalCli,    

   BalanceFinal = isnull((select sum(Total - Pagado) from #tempcxp     

      where idCliente = x.idCliente),0.00), -- - d.PorDist,    

   BalanceGral = isnull((select sum(Total - Pagado) from #tempcxp) ,0.00) --     

  --        isnull((select sum(porDist) from #tmpDist) ,0.00)      

  from     

    #tempcxp x   

    left join #TmpDist d on x.idcliente = d.idcliente and x.idMoneda = d.idmoneda  

    cross join configuracion c    

  where    

    x.Total <> x.pagado     

  order by     

    x.idMoneda,   

 x.ClienteTipo,    

    x.Nombre,     

    x.Fecha    

drop table #tempcxp    

drop table #tmpDist    

return 0






GO
GO
-- >>> FIN: cxcAgingCtasXCobrar.tmp.sql <<<

-- >>> INICIO: cxcAgingCtasXCobrar2.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxcAgingCtasXCobrar2]



 @final datetime, 

 @ident int, 

 @persize int = 15,

 @idVend int

as



declare @TotalCli int



select 	

  e.idCliente,

  e.Cliente as Nombre,

  e.Contacto,

  e.telefono,

  t.idCXC, 

  Dias = datediff(day, t.Fecha, @final), 

  t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura, 

  IDRow = t.idCXC,

  t.Fecha,

  t.Valor as Total,

  Pagado = (isnull(

	(select 

           sum(d.TotalAplicado)

        from 

            cxc c 

            join cxcDet d on c.idCXC = d.idCXC

        where 

            d.fecha <= @final

 	    and c.escredito = 1

	    and c.fecha <= @final

            and d.idCXCDebito = t.idCXC

 	    and c.cancelado = 0

        ),0))

into 

  #tempcxp

from 

  CXC t 

  right join Cliente e on t.idCliente = e.idCliente

-- join Cliente e on t.idCliente = e.idCliente

where 

  (@idEnt = 0 or t.idCliente = @idEnt)	

  and (@idVend = 0 or e.idEmpleado = @idVend)	

  and  t.EsCredito = 0

  and t.fecha <= @final  

  and t.cancelado = 0



insert into #tempcxp

select 	

  e.idCliente,

  e.Cliente as Nombre,

  e.Contacto,

  e.telefono,

  t.idCXC, 

  Dias = datediff(day, t.Fecha, @final), 

  t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura, 

  IDRow = t.idCXC,

  t.Fecha,

  -(t.Valor - isnull(sum(d.Valor),0.00)) as Total,

  Pagado = 0.00

from cxc t left join cxcDet d on t.idCXC = d.idCXC and d.fecha <= @Final

  join Cliente e on t.idCliente = e.idCliente

where 

  (@idEnt = 0 or t.idCliente = @idEnt)	

  and (@idVend = 0 or e.idEmpleado = @idVend)	

  and  t.EsCredito = 1

  and t.Cancelado = 0

  and t.fecha <= @final  

group by 

  e.idCliente,

  e.Cliente ,

  e.Contacto,

  e.telefono,

  t.idCXC, 

  datediff(day, t.Fecha, @final),

  t.idTipoDocumento,  

  t.CXC, 

  t.idCXC,

  t.Fecha,

  t.Valor

having t.Valor <> isnull(sum(d.Valor),0.00)





--------



select 

  idCliente,

  sum(Valor) - sum(Aplicado) as PorDist  

into

  #TmpDist

from (

  SELECT     

    c.idCliente,

    c.Valor,

    SUM(isnull(cd.Valor,0.00)) AS Aplicado

  FROM         

    dbo.Cxc c LEFT JOIN

    dbo.CxcDet cd ON c.idCxc = cd.idCxc and cd.fecha <= @final

  WHERE     

    (c.esCredito = 1)

    and (c.fecha <= @Final)

    and (@idEnt = 0 or c.idCliente = @idEnt)	

    and (c.Cancelado = 0)

    --and ((cd.fecha is null) or (cd.fecha <= @Final))

  GROUP BY 

    c.idCliente, 

    c.idCxc,

    c.Valor) Datos

Group by

  Datos.idCliente

Order by

  Datos.idCliente



Set @TotalCli = (select count(distinct idcliente) from #tempcxp x where  x.Total <> x.pagado)



select 	c.Compania,

	x.idcliente,

	x.Nombre,

	idCXC, 

  	x.Contacto,

	x.Telefono,

	Dias, 

	NoVenc = case when Floor(dias / @persize) = 0 then Total - Pagado else $0 end,

	A30    = case when Floor(dias / @persize) = 1 then Total - Pagado else $0 end,

	A60    = case when Floor(dias / @persize) = 2 then Total - Pagado else $0 end,

	A90    = case when Floor(dias / @persize) = 3 then Total - Pagado else $0 end,

	AMas90 = case when Floor(dias / @persize) > 3 then Total - Pagado else $0 end,

	Factura, 

	IDRow,

	Fecha,

	Total,

	Pagado,

 	d.PorDist,

 	('0 a ' + convert(varchar(10), @persize)) as Preriodo1,

 	(convert(varchar(10), @persize+1) + ' a ' + convert(varchar(10), @persize*2)) as Preriodo2,

	(convert(varchar(10), @persize*2+1) + ' a ' + convert(varchar(10), @persize*3)) as Preriodo3,

	(convert(varchar(10), @persize*3+1) + ' a ' + convert(varchar(10), @persize*4)) as Preriodo4,

	(convert(varchar(10), @persize*4+1) + ' o Mas') as Preriodo5,

	TotalClientes = @TotalCli,

	BalanceFinal = isnull((select sum(Total - Pagado) from #tempcxp 

				where idCliente = x.idCliente),0.00), -- - d.PorDist,

	BalanceGral = isnull((select sum(Total - Pagado) from #tempcxp) ,0.00) -- 

--		      isnull((select sum(porDist) from #tmpDist) ,0.00) 	

from 

  #tempcxp x 

  left join #TmpDist d on x.idcliente = d.idcliente

  cross join configuracion c

where


 x.Total <> x.pagado 

order by 

  x.Nombre, x.Fecha, X.FACTURA





drop table #tempcxp

drop table #tmpDist

return 0


GO
GO
-- >>> FIN: cxcAgingCtasXCobrar2.sql <<<

-- >>> INICIO: cxcAgingCtasXCobrarColegio.sql <<<
CREATE OR ALTER PROCEDURE cxcAgingCtasXCobrarColegio

 @final datetime      

as      



Declare

  @PerSize Int,

  @Vencimiento Bit

Set

  @PerSize = 30

Set

  @Vencimiento = 0

  

  declare @TotalCli int      

  select        

    ct.ClienteTipo,    

    e.idCliente,      

    e.Cliente as Nombre,      

    e.Contacto,      

    e.telefono,    

    IsNull(g.Grupo, 'SIN GRUPO') As Grupo,      

    t.idMoneda,      

    m.Moneda,      

    t.idCXC,       

    Dias = datediff(day, t.Vencimiento, @final),       

    t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura,       

    IDRow = t.idCXC,      

    t.Fecha,     

    t.Vencimiento,     

    t.Valor as Total,      

    Pagado = (isnull(      

   (select sum(d.TotalAplicado)      

          from       

              cxc c       

              join cxcDet d on c.idCXC = d.idCXC      

          where       

              d.fecha <= @final      

     and c.cancelado = 0    

              and d.idCXCDebito = t.idCXC      

          ),0)),  

    cg.ClienteGrupo As Categoria,  

    em.Empleado As Vendedor  

  into       

    #tempcxp    

  from       

    CXC t       

    join Moneda m on t.idMoneda = m.idMoneda      

    right join Cliente e on t.idCliente = e.idCliente      

    right join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo    

    left join svGrupo g on e.grupo = g.idGrupo     

    left join ClienteGrupo cg on (cg.IdClienteGrupo = e.IdClienteGrupo)  

    left join svEmpleado em on (em.IdEmpleado = e.IdEmpleado)  

  where       

        t.EsCredito = 0      

    and @final > t.Vencimiento      

    and t.cancelado = 0      

  insert into #tempcxp      

  select     

    ct.ClienteTipo,    

    e.idCliente,      

    e.Cliente as Nombre,      

    e.Contacto,      

    e.telefono,     

    IsNull(g.Grupo, 'SIN GRUPO') As Grupo,     

    t.idMoneda,      

    m.Moneda,      

    t.idCXC,       

    Dias = datediff(day, t.Fecha, @final),       

    t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura,       

    IDRow = t.idCXC,      

    t.Fecha,      

    t.Vencimiento,    

    -(t.Valor - isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)) as Total,      

    Pagado = 0.00,  

    cg.ClienteGrupo As Categoria,  

    em.Empleado As Vendedor  

  from       

    cxc t       

    left join cxcDet d on t.idCXC = d.idCXC and d.fecha <= @final       

    join Moneda m on t.idMoneda = m.idMoneda      

    join Cliente e on t.idCliente = e.idCliente      

    join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo     

    left join svGrupo g on e.grupo = g.idGrupo    

    left join ClienteGrupo cg on (cg.IdClienteGrupo = e.IdClienteGrupo)  

    left join svEmpleado em on (em.IdEmpleado = e.IdEmpleado)  

  where       

        t.EsCredito = 1      

    and t.Vencimiento <= @final        

    and t.cancelado = 0      

  group by       

    ct.ClienteTipo,     

    e.idCliente,      

    e.Cliente ,      

    e.Contacto,      

    e.telefono,    

    g.grupo,      

    t.idMoneda,      

    m.Moneda,      

    t.idCXC,       

    datediff(day, t.Fecha, @final),      

    t.idTipoDocumento,        

    t.CXC,       

    t.idCXC,      

    t.Fecha,      

    t.Vencimiento,    

    t.Valor,  

    cg.ClienteGrupo,  

    em.Empleado  

  having t.Valor <> isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)    

--------      

select    

  idMoneda,       

  idCliente,      

  sum(Valor) - sum(Aplicado) as PorDist        

into      

  #TmpDist      

from (      

  SELECT       

    c.idMoneda,        

    c.idCliente,      

    c.Valor,      

    SUM(isnull((cd.Valor * cd.tasa) / c.tasa,0.00)) AS Aplicado      

  FROM               

    dbo.Cxc c LEFT JOIN      

    dbo.CxcDet cd ON c.idCxc = cd.idCxc      

  WHERE           

    (c.esCredito = 1)      

    and (c.fecha <= @Final)      

    and (c.Cancelado = 0)      

    and ((cd.fecha is null) or (cd.fecha <= @Final))      

  GROUP BY       

    c.idMoneda,    

    c.idCliente,       

    c.idCxc,      

    c.Valor) Datos      

Group by      

  Datos.idMoneda,    

  Datos.idCliente      

Order by      

  Datos.idMoneda,    

  Datos.idCliente      

Set @TotalCli = (select count(distinct idcliente) from #tempcxp x where  x.Total <> x.pagado)      

select      

   c.Compania,      

   x.ClienteTipo,     

   x.idMoneda,      

   x.Moneda,      

   x.idcliente,      

   x.Nombre,      

   idCXC,       

   x.Contacto,      

   x.Telefono,    

   x.Grupo,      

   Dias,       

   NoVenc = case when Floor(dias / @persize) <= 0 then Total - Pagado else $0 end,      

   A30    = case when Floor(dias / @persize) = 1 then Total - Pagado else $0 end,      

   A60    = case when Floor(dias / @persize) = 2 then Total - Pagado else $0 end,      

   A90    = case when Floor(dias / @persize) = 3 then Total - Pagado else $0 end,      

   AMas90 = case when Floor(dias / @persize) > 3 then Total - Pagado else $0 end,      

   Factura,       

   IDRow,      

   Fecha,      

   Vencimiento,    

   Total,      

   Pagado,      

   Categoria,  

   Vendedor,  

   d.PorDist,      

   CASE WHEN @Vencimiento = 0 THEN     

     ('0 a ' + convert(varchar(10), @persize))     

   ELSE     

     ('No Vencido')     

   END as Preriodo1,      

   CASE WHEN @Vencimiento = 0 THEN    

     (convert(varchar(10), @persize+1) + ' a ' + convert(varchar(10), @persize*2))     

   ELSE    

     ('1 a ' + convert(varchar(10), @persize))       

   END as Preriodo2,      

   CASE WHEN @Vencimiento = 0 THEN    

     (convert(varchar(10), @persize*2+1) + ' a ' + convert(varchar(10), @persize*3))     

   ELSE    

     (convert(varchar(10), @persize+1) + ' a ' + convert(varchar(10), @persize*2))     

   END as Preriodo3,      

   CASE WHEN @Vencimiento = 0 THEN    

     (convert(varchar(10), @persize*3+1) + ' a ' + convert(varchar(10), @persize*4))     

   ELSE    

     (convert(varchar(10), @persize*2+1) + ' a ' + convert(varchar(10), @persize*3))     

   END as Preriodo4,      

   CASE WHEN @Vencimiento = 0 THEN    

     (convert(varchar(10), @persize*4+1) + ' o Mas')     

   ELSE    

     (convert(varchar(10), @persize*3+1) + ' a Mas')    

   END as Preriodo5,    

   TotalClientes = @TotalCli,      

   BalanceFinal = isnull((select sum(Total - Pagado) from #tempcxp       

      where idCliente = x.idCliente),0.00), -- - d.PorDist,      

   BalanceGral = isnull((select sum(Total - Pagado) from #tempcxp) ,0.00) --       

  --        isnull((select sum(porDist) from #tmpDist) ,0.00)        

  from       

    #tempcxp x     

    left join #TmpDist d on x.idcliente = d.idcliente and x.idMoneda = d.idmoneda    

    cross join configuracion c      

  where      

    x.Total <> x.pagado       

  order by       

    x.Nombre,       

    x.Fecha      

drop table #tempcxp      

drop table #tmpDist      

return 0      

  






GO
GO
-- >>> FIN: cxcAgingCtasXCobrarColegio.sql <<<

-- >>> INICIO: cxcAgingResumido.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxcAgingResumido] 

 @fecha datetime   

as     

  

 declare @ident int,     

   @persize int,    

   @idVend int,  

   @Vencimiento Bit  

   

 declare @aging table (	

	[idAgingCXC] [uniqueidentifier] NOT NULL,

	[Fecha] [datetime] NOT NULL,

	[idVendedor] [int]  NULL,

	[Vendedor] [varchar](100) NULL,

	[idCliente] [int] NOT NULL,

	[Cliente] [varchar](100) NULL,

	Grupo varchar(100) NULL, 

	[De1a30] [decimal](19, 2) NOT NULL,

	[De31a45] [decimal](19, 2) NOT NULL,

	[De46a60] [decimal](19, 2) NOT NULL,

	[De61a90] [decimal](19, 2) NOT NULL,

	[De91oMas] [decimal](19, 2) NOT NULL)

     

 select @ident = 0, @persize = 30, @idVend = 0, @Vencimiento = 0  

  

 declare @TotalCli int    

 

 declare @tempcxp table (

  ClienteTipo varchar(100),

  Grupo varchar(100),

  idCliente int,

  Nombre varchar(100),

  Categoria varchar(100), 

  idVendedor int,

  Vendedor varchar(100),

  Contacto varchar(100),

  Telefono varchar(20),

  idMoneda int,

  Moneda varchar(20),

  idCXC uniqueidentifier,

  Dias int,

  Factura varchar(20),

  IDRow uniqueidentifier,

  Fecha datetime,

  Vencimiento datetime,

  Total decimal(19,2),

  Tasa decimal(19,4), 

  Pagado decimal(19,2)

 )

   

insert into @tempcxp

select      

		ct.ClienteTipo,  

		isnull(gc.Grupo, 'GRUPO NO DEF') as Grupo,   

		e.idCliente,    

		e.Cliente as Nombre,    

		cg.ClienteGrupo, 

		e.idEmpleado as idVendedor,  

		emp.Empleado as Vendedor,   

		e.Contacto,    

		e.telefono,    

		t.idMoneda,    

		m.Moneda,    

		t.idCXC,         

		Dias = datediff(day, (CASE WHEN @Vencimiento = 0 THEN t.Fecha ELSE t.Vencimiento END), @fecha),     

		t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura,     

		IDRow = t.idCXC,    

		t.Fecha,   

		t.Vencimiento,   

		t.Valor as Total,    

		t.Tasa,   

		Pagado = (isnull(    

	   (select sum(d.TotalAplicado)    

			  from     

				  cxc c     

				  join cxcDet d on c.idCXC = d.idCXC    

			  where     

				  d.fecha <= @fecha     

		 and c.cancelado = 0  

				  and d.idCXCDebito = t.idCXC    

			  ),0))    

  

	  from     

		CXC t     

		join Moneda m on t.idMoneda = m.idMoneda    

		right join Cliente e on t.idCliente = e.idCliente    

	 right join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo   

		right join svGrupo gc on e.Grupo = gc.idGrupo   

		right join ClienteGrupo cg on e.idClienteGrupo = cg.idClienteGrupo 

		right join svEmpleado emp on e.idEmpleado = emp.idEmpleado   	  

	  where         

		t.EsCredito = 0    

		and t.fecha <= @fecha     

		and t.cancelado = 0    

	      

	  insert into @tempcxp    

	  select   

		ct.ClienteTipo,  

		isnull(gc.Grupo, 'GRUPO NO DEF') as Grupo,   

		e.idCliente,    

		e.Cliente as Nombre,    

		cg.ClienteGrupo, 

		e.idEmpleado as idVendedor,  

		emp.EMpleado as Vendedor,   

		e.Contacto,    

		e.telefono,    

		t.idMoneda,    

		m.Moneda,    

		t.idCXC,     

		Dias = datediff(day, t.Fecha, @fecha),     

		t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura,     

		IDRow = t.idCXC,    

		t.Fecha,    

		t.Vencimiento,  

		-(t.Valor - isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)) as Total,    

		t.Tasa,   

		Pagado = 0.00    

	  from     

		cxc t     

		left join cxcDet d on t.idCXC = d.idCXC and d.fecha <= @Fecha   

		join Moneda m on t.idMoneda = m.idMoneda    

		join Cliente e on t.idCliente = e.idCliente    

		join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo   

		LEFT JOIN clienteGrupo cg on e.idClienteGrupo = cg.idClienteGrupo 

	 left join svGrupo gc on e.Grupo = gc.idGrupo   

	 left join svEmpleado emp on e.idEmpleado = emp.idEmpleado   

	  where     

		t.EsCredito = 1    

		and t.fecha <= @fecha  

		and t.cancelado = 0    

	  group by     

		ct.ClienteTipo,   

		gc.Grupo,   

		e.idCliente,    

		e.Cliente ,    

		cg.ClienteGrupo, 

		e.idEmpleado,  

		emp.Empleado,   

		e.Contacto,    

		e.telefono,    

		t.idMoneda,    

		m.Moneda,    

		t.idCXC,     

		datediff(day, t.Fecha, @Fecha),    

		t.idTipoDocumento,      

		t.CXC,     

		t.idCXC,    

		t.Fecha,    

		t.Vencimiento,  

		t.Valor  ,  

		t.Tasa   

	  having t.Valor <> isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)  

 

insert into @aging

 (idAgingCXC, Fecha, idVendedor, Vendedor, idCliente, Cliente, Grupo, de1a30, de31a45, de46a60, de61a90, De91oMas)  

select         

   newid() as idAgingCXC,  

   @fecha as Fecha,   

   x.idVendedor,  

   x.Vendedor,   

   x.idcliente,    

   x.Nombre,  

   x.Categoria,         

   De1A30 = isnull(sum(case when dias between 0 and 30 then (Total - Pagado) * Tasa else $0 end),0),    

   De31A45 = isnull(sum(case when dias between 31 and 45 then (Total - Pagado) * Tasa else $0 end),0),    

   De46A60 = isnull(sum(case when dias between 46 and 60 then (Total - Pagado) * Tasa else $0 end),0),    

   De61A90 = isnull(sum(case when dias between 61 and 90 then (Total - Pagado) * Tasa else $0 end),0),    

   A91oMas = isnull(sum(case when dias > 90 then Total - Pagado else $0 end  * Tasa),0)

  from     

	@tempcxp x      

  where    

	x.Total <> x.pagado     

  group by x.idVendedor, x.Vendedor, x.idCLiente, x.Nombre, x.Categoria



select a.idAgingCXC, 

a.Fecha, 

a.idCliente, 

a.Cliente, 

a.de1a30, 

a.de31a45, 

a.de46a60, 

a.de61a90, 

a.De91oMas,

(de1a30+de31a45+de46a60+de61a90+De91oMas) BalanceTotal,

idNota,

Nota,

FechaAgenda,

Isnull(Agendar, 0)                       Agendar,

--AGENDADO PARA EL DIA Y LOS NO AGENDADOS PARA EL DIA DE HOY ORDENADOS POR DIA DE VENCIMIENTO

CASE WHEN convert(varchar(10),fechaagenda,105) = convert(varchar(10),GETDATE(),105) THEN 1 ELSE 2 END HoyNoAgendado,

--NO AGENDADOS Y AGENDADOS PARA OTRO DIA

CASE WHEN ((convert(varchar(10),fechaagenda,105) != convert(varchar(10),GETDATE(),105)) AND (Isnull(Agendar, 0) = 1)) THEN 2 ELSE 0 END AgendadoOtroDia

 

from @aging a LEFT JOIN cxcNotasGestionCobros b

                  ON a.idCliente = b.idCliente

                     AND isnull(b.Cerrada,0) = 0

                     AND isnull(b.Agendar,0) = 1

--ORDER BY   15,16,b.FechaAgenda                     

order by cliente 



return 0




GO
GO
-- >>> FIN: cxcAgingResumido.sql <<<

-- >>> INICIO: cxcClienteLimiteCrBalanceRpt.sql <<<
CREATE OR ALTER PROCEDURE cxcClienteLimiteCrBalanceRpt(@FechaAl DateTime, @BalGTLimCr Bit)    

AS    

Declare    

  @Tabla Table (IdCliente Int,    

                Balance Numeric(18,2))  

    

    

INSERT INTO @Tabla (IdCliente, Balance)    

SELECT    

  cx.IdCliente,    

  dbo.ConvertMoneda(cx.Total - dbo.cxcBalanceDocumentoReal(cx.IdCxc, @FechaAl), cx.IdMoneda, Null, @FechaAl, Null) As Balance    

FROM    

  Cxc cx    

WHERE    

  cx.Cancelado = 0    

    

SELECT    

  cl.IdCliente,    

  cl.Cliente,    

  co.Condicion,    

  cl.LimiteCredito,    

  Sum(cx.Balance) As Balance,  

  (Select Sum(dbo.ConvertMoneda(c.Total, c.idMoneda, Null, @FechaAl, Null)) from Cxc c Where c.esCredito = 0 And c.Cancelado = 0 And c.IdCliente = cl.IdCliente) As FactUlt6Meses,  

  zo.Zona,    

  em.Empleado As Vendedor,  

  cl.Ciudad,  

  cg.ClienteGrupo,  

  cl.RNC_Cedula,  

  cl.Descuento,

  cl.Direccion,

  cl.Sector,

  cl.Telefono,

  cl.Fax,

  cl.EMail,

  cl.Contacto,

  cl.ComisionFactor,

  cs.ClienteStatus,

  ct.ClienteTipo,

  cl.Grupo,

  lp.ListaPrecio

FROM    

  Cliente       cl Inner Join

  ClienteStatus cs On (cs.idClienteStatus= cl.idClienteStatus) Inner Join

  ClienteTipo   ct On (ct.idClienteTipo = cl.idClienteTipo) Left Outer Join 

  @Tabla        cx On (cl.IdCliente = cx.IdCliente) Left Outer Join

  svCondicion   co On (co.IdCondicion = cl.IdCondicion) Left Outer Join    

  Zona          zo On (zo.IdZona = cl.IdZona) Left Outer Join    

  svEmpleado    em On (em.IdEmpleado = cl.IdEmpleado)  Left Outer Join  

  ClienteGrupo  cg On (cg.IdClienteGrupo = cl.IdClienteGrupo) Left Outer Join

  ListaPrecio   lp On (lp.idListaPrecio = cl.idListaPrecio)

GROUP BY    

  cl.IdCliente,    

  cl.Cliente,    

  co.Condicion,    

  cl.LimiteCredito,    

  zo.Zona,    

  em.Empleado,  

  cl.Ciudad,  

  cg.ClienteGrupo,  

  cl.RNC_Cedula,  

  cl.Descuento,  

  cl.Condicion,

  cl.Direccion,

  lp.ListaPrecio,

  cl.Grupo,

  ct.ClienteTipo,

  cl.Contacto,

  cl.Sector,

  cl.Telefono,

  cl.Fax,

  cl.EMail,

  cl.Sector,

  cs.ClienteStatus,

  cl.ComisionFactor

Having    

  ((@BalGTLimCr = 0) Or (Sum(cx.Balance) > cl.LimiteCredito))    

    




GO
GO
-- >>> FIN: cxcClienteLimiteCrBalanceRpt.sql <<<

-- >>> INICIO: cxcDatosEstado.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxcDatosEstado]  ---19982,'20181231','00000893'

 --declare

 @idCli int,   

 @Fec DATETIME,

 @idDir varchar(30) = null

 as  

 --set @idcli=19982

 --set @fec='20181231'

 --set @idDir='00000893'

declare   

 @Bal decimal(19,2) ,  

 @PorDist decimal(19,2),  

 @FechaUltCargo datetime ,  

 @RefUltCargo varchar(20) ,    

 @TipoUltCargo varchar(10) ,  

 @MtoUltCargo decimal(19,2) ,  

 @FechaUltPago datetime ,  

 @RefUltPago varchar(20) ,   

 @MtoUltPago decimal(19,2),   

 @Abono decimal(19,2)

--as  

 

 set @Bal = dbo.cxcBalanceCliente(@idCli, @Fec)  

  

 set @PorDist = dbo.cxcCreditoporDist(@idCli, @Fec)  

  

 select top 1

		 	   

		 @FechaUltCargo = f.Fecha,  

		 @RefUltCargo = f.CXC,  

		 @TipoUltCargo = f.idTipoDocumento,  

		 @MtoUltCargo = f.Valor  

  from CXC f   

where  f.idCliente = @idCli and f.Fecha <= @Fec  

 and f.esCredito = 0

 and (@idDir is null or f.idClienteObra = @idDir)   

 order by f.fecha desc, f.CXC desc   

  

 select top 1   

		 @FechaUltPago = r.Fecha,  

		 @RefUltPago = r.CXC,  

		 @MtoUltPago = r.Valor  

  from CXC r   

where  EsCredito = 1  

 and r.idCliente = @idCli   

 and r.Fecha <= @Fec   

 order by fecha desc, CXC desc   



 select 

 @Abono= sum(r.Valor)

   from CXC r   

where  EsCredito = 1  

 and r.idCliente = @idCli   

 and r.Fecha <= @Fec --and (@idDir is null or r.CxC = @idDir)   

 --order by fecha desc, CXC desc   

  

select  @idCli as idCliente,

		@Bal as Balance,   

        @PorDist as PorDist,  

		@FechaUltCargo as FecUltCargo,  

		@RefUltCargo as RefUltCargo,    

		@TipoUltCargo as TipoUltCargo,   

		@MtoUltCargo as MtoUltCargo,  

		@FechaUltPago as FecUltPago,  

		@RefUltPago as RefUltPago,   

		@MtoUltPago as MtoUltPago,  

		@Abono as Abono 

return 0




GO
GO
-- >>> FIN: cxcDatosEstado.sql <<<

-- >>> INICIO: cxcDatosEstadoxFactura.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxcDatosEstadoxFactura] 

 --declare

 @idCli int,   

 @Fec DATETIME,

 --@idDir varchar(30) = null,

 @idFactura uniqueidentifier

 as  

 --set @idcli=137234

 --set @fec='2024-08-20 00:00:00.000'

 --set @idFactura='1AA303A1-B5DA-4931-BAFE-894B0B3FA10E'



declare   

 @Bal decimal(19,2) ,  

 @Abono decimal(19,2)

 



 

  select 

   @Abono= sum(rd.Valor),

   @Bal =r.valor-sum(rd.valor)

   from CXC r   

   left join cxcdet rd on rd.idCxCDebito=r.idCxc

where   

 r.idCliente = @idCli   

 and r.Fecha <= @Fec and rd.idCxCDebito = @idFactura 

 group by r.valor



 if @Bal is null

  begin

 

  select 

   

   @Bal =sum(r.valor)

   from CXC r   



where   

 r.idCliente = @idCli   

 and r.Fecha <= @Fec and r.idCxC = @idFactura 

 end



 



select  @idCli as idCliente,

		@Bal as Balance,          

		@Abono as Abono

		

return 0




GO
GO
-- >>> FIN: cxcDatosEstadoxFactura.sql <<<

-- >>> INICIO: CxCEmpPendiente.sql <<<
CREATE OR ALTER PROCEDURE CxCEmpPendiente(@EmpleadoId integer, @Pendiente bit) AS

IF @Pendiente = 1

BEGIN

  Select 

    *

  From

    CxCEmp

  Where 

    Balance > 0

    AND EmpleadoID = @EmpleadoID

  Order by 

    Fecha Desc

END

ELSE

BEGIN

  Select 

    *

  From

    CxCEmp

  Where 

    EmpleadoID = @EmpleadoID

  Order by 

    Fecha Desc

END


GO
GO
-- >>> FIN: CxCEmpPendiente.sql <<<

-- >>> INICIO: CxCEmpStadoCta.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[CxCEmpStadoCta](@EmpleadoID integer, @Fecha datetime) 

AS  

SELECT       

 E.EmpleadoID,   

 E.Apellido + ', ' + E.Nombre AS Empleado,   

 D.Departamento,   

 CxC.CxCEmpID,   

 TT.TipoTransaccion,   

 CxC.Fecha,   

 CxC.Total,   

 CxC.Cuotas,   

 CxC.Descuento,   

 Descontado = isnull((select sum(monto) from cxcempdet where cxcempid = cxc.cxcempid and fecha <= @fecha),0.00),   

 Balance = cxc.Total - isnull((select sum(monto) from cxcempdet where cxcempid = cxc.cxcempid and fecha <= @fecha),0.00),      

 CxC.Activo  

FROM      

 dbo.Empleado E INNER JOIN   

 dbo.Departamento D ON E.DepartamentoId = D.DepartamentoID INNER JOIN   

 dbo.CxCEmp CxC ON E.EmpleadoID = CxC.EmpleadoID INNER JOIN  

 dbo.TipoTransaccion TT ON CxC.TipoTransaccionID = TT.TipoTransaccionID   

WHERE        

 (CxC.Activo = 1)   

 and cxc.Fecha <= @Fecha 

 AND (E.EmpleadoID = @EmpleadoID)  

 and cxc.Total > isnull((select sum(monto) from cxcempdet where cxcempid = cxc.cxcempid and fecha <= @fecha),0.00)

   






GO
GO
-- >>> FIN: CxCEmpStadoCta.sql <<<

-- >>> INICIO: CxCEmpStadoCtaDet.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[CxCEmpStadoCtaDet](@CxCEmpID integer, @fecha datetime) AS  

  Select   

    T.TransaccionId,  

    T.Transaccion  

  From  

    Transaccion T   

    JOIN Nomina N ON T.NominaID = N.NominaID  

  Where  

    T.CxCEmpId = @CxCEmpID  

    and n.Fecha <= @fecha 

    AND N.Cerrada = 1   




GO
GO
-- >>> FIN: CxCEmpStadoCtaDet.sql <<<

-- >>> INICIO: CxCEmpUpdate.sql <<<
CREATE OR ALTER PROCEDURE CxCEmpUpdate(@CxcEmpID int) AS

if ISNULL(@CxcEmpID, -1) = -1 

BEGIN

  Update 

    CxCEmp

  Set

    Descontado = isnull((Select Sum(CD.Monto) From CxCEmpDet CD Where CD.CxCEmpID = C.CxCEmpID),0)

  From

    CxCEmp C

END

ELSE

BEGIN

  Update 

    CxCEmp

  Set

    Descontado = isnull((Select Sum(CD.Monto) From CxCEmpDet CD Where CD.CxCEmpID = C.CxCEmpID),0)

  From

    CxCEmp C

  Where 

    CxcEmpID = @CxcEmpID

END


GO
GO
-- >>> FIN: CxCEmpUpdate.sql <<<

-- >>> INICIO: cxcEstadoCuenta.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxcEstadoCuenta]    

 @ident int,    

 @desde datetime,     

 @final datetime  

as    

create table #tempec    

 (Linea int not null identity(1,1),    

  Tipo varchar(10),     

  idCXC uniqueidentifier,     

  Documento varchar(20),    

  Fecha datetime,    

  Vencimiento DateTime,  

  Debito money,    

  Credito money,    

  NCF varchar(19),  

  idMoneda int,   

  Tasa float,   

  Balance money)    

declare @balinic decimal(19,2)    

  

declare @idMonedaLegal int  

  

Set @idMonedaLegal = (Select top 1 idmoneda from moneda where cursolegal = 1)  

  

select @balinic = dbo.cxcBalanceCliente(@idEnt, dateadd(day, -1, @desde))  

if @balinic <> 0 begin    

  insert into #tempec (Tipo, idCXC, Documento, NCF, Fecha, Debito, Credito, idMoneda, Tasa)     

  values ('B./I.', null,'n/a', 'n/a', dateadd(day, -1, @desde),     

          case when @balinic > 0 then abs(@balinic) else 0.00 end,     

          case when @balinic > 0 then 0.00 else abs(@balinic) end,  

          @idMonedaLegal, 1.00)    

end    

  

  insert into #tempec (Tipo, idCXC,  Documento, NCF, Fecha, Vencimiento, Debito, Credito, idMoneda, Tasa)    

  select      

    r.idTipoDocumento,     

    r.idCXC,    

    r.CXC,    

    r.Compfiscal,  

    r.Fecha,  

    r.Vencimiento,    

    case when r.esCredito = 0 and r.Cancelado = 0 then r.Total else 0.00 end as Debito,    

    case when r.esCredito = 1 and r.Cancelado = 0 then r.Total else 0.00 end as Credito,  

    r.idMoneda,  

    r.Tasa   

  from     

    CXC r      

  where      

    r.idCliente = @idEnt    

    and r.Fecha between @desde and @final    

    and r.Valor <> 0    

  order by     

    r.Fecha,   

    r.Cxc,  

    r.EsCredito    

      

select      

  t.Linea,    

  t.Tipo,     

  t.idCXC,     

  t.Documento,    

  t.NCF,  

  t.Fecha,    

  t.Vencimiento,  

  t.Debito,    

  t.Credito,    

  m.Moneda,   

  t.Tasa,   

  Balance = (select sum((t2.Debito * t2.Tasa) - (t2.Credito * t2.Tasa)) from #tempec t2 where t2.Linea <= t.Linea)  

from     

  #tempec t join moneda m on t.idmoneda = m.idmoneda      

order by     

  t.Linea    

    

drop table #tempec     

return 0  

  

  

  
GO
GO
-- >>> FIN: cxcEstadoCuenta.sql <<<

-- >>> INICIO: cxcEstadoCuentaCobros.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxcEstadoCuentaCobros](@idcliente INT)   

as  

declare  

  @Fecha datetime,  

  @idMonedaLocal int  

  

Set @idMonedaLocal = (Select top 1 idmoneda from moneda where cursolegal = 1)  

Set @Fecha = round(convert(float,getdate()),0,1)  



create table #tempec   

 (Linea int not null identity(1,1),  

  Tipo varchar(20),  

  idcliente int,

  cliente VARCHAR(50),

  idCXC uniqueidentifier,   

  Referencia varchar(20),  

  Fecha datetime,  

  Vencimiento DateTime,

  Valor decimal(19,2),  

  Pagado decimal(19,2),  

  NCF varchar(19), 

  idMoneda int)  

  

insert into #tempec (Tipo, idcliente, cliente,  idCXC, Referencia, Fecha, Vencimiento, Valor, Pagado, idMoneda, NCF)  

select  c.idTipoDocumento, 

		c.idCliente,

		c.Cliente,   

		c.idCXC,  

        c.CXC,   

        c.Fecha,   

        c.Vencimiento,

		c.Valor,   

		Pagado = dbo.cxcBalanceDocumento(c.idCXC, GETDATE(), null),  

        c.idMoneda  ,

        c.CompFiscal        

  from cxc c  

  where c.esCredito = 0  

        and c.Cancelado = 0 

        and c.Fecha <=  GETDATE()     

        AND c.idCliente = @idcliente  

                

select   

 t.Linea,  

 t.Tipo, 

 t.idcliente,

 t.cliente, 

 t.idCXC,   

 t.Referencia,  

 t.Fecha,  

 t.Vencimiento,

 diasVencido = (DATEDIFF(DAY,isnull(t.Vencimiento,t.Fecha),GETDATE())),

 dbo.ConvertMoneda(t.Valor , t.idMoneda, @idMonedaLocal , @Fecha, Null) as Valor,   

 t.Valor as ValorReal,  

 dbo.ConvertMoneda(t.Pagado, t.idMoneda, @idMonedaLocal , @Fecha, Null) as Pagado,  

 t.Pagado as PagadoReal ,  

 t.idMoneda,  

 Pendiente = dbo.ConvertMoneda((t.Valor - t.Pagado), t.idMoneda, @idMonedaLocal , @Fecha, Null),  

 PendienteReal = (t.Valor - t.Pagado),  

 m.Moneda  ,

 t.NCF 

from   

  #tempec t  

  join Moneda m on t.idMoneda = m.idMoneda  

  Cross Join Configuracion c  

where   

  (t.Valor - t.Pagado) <> 0  

order by   

  t.Fecha,

  t.Referencia

  

drop table #tempec   



return 0




GO
GO
-- >>> FIN: cxcEstadoCuentaCobros.sql <<<

-- >>> INICIO: CxcEstadoCuentaDetallado.sql <<<
CREATE OR ALTER PROCEDURE CxcEstadoCuentaDetallado(@FechaAl DateTime,

					  @IdClienteParametro Int,

					  @IdMoneda Int,

 					  @PorVencimiento Bit)

AS

Declare

  @IdCxc UniqueIdentifier,

  @Cxc   VarChar(20),

  @Fecha DateTime,

  @Vencimiento DateTime,

  @IdTipoDocumento VarChar(2),

  @Total Numeric(18,2),

  @Balance Numeric(18,2),

  @DocumentoCredito VarChar(20),

  @IdTipoDocumentoCredito VarChar(2),

  @FechaCredito DateTime,

  @TotalCredito Numeric(18,2),

  @Documento VarChar(20),

  @IdCliente Int,

  @Cliente VarChar(60)



Declare

  @Tabla Table (Id Int Identity (1,1),

                IdCxc UniqueIdentifier,

                Cxc   VarChar(20),

                Fecha DateTime,

	        Vencimiento DateTime,

 		IdTipoDocumento VarChar(2),

		Total Numeric(18,2),

		Balance Numeric(18,2),

--		DocumentoCredito VarChar(20),

-- 		IdTipoDocumentoCredito VarChar(2),

--		FechaCredito DateTime,

--		TotalCredito Numeric(18,2)),

-- 		Documento VarChar(20),

 		IdCliente Int,

		Cliente VarChar(60),

                BalanceAPresentar Numeric(18,2),

                FechaACalcular DateTime)



Declare

  @DocActual UniqueIdentifier





Declare

  docCursor Cursor For

SELECT

  cx.IdCxc,

  cx.Cxc,

  cx.Fecha,

  cx.Vencimiento,

  cx.IdTipoDocumento,

  cx.Total,

  dbo.cxcBalanceDocumentoReal(cx.IdCxc, @FechaAl) As Balance,

  IsNull(cc.Cxc, '*') As DocumentoCredito,

  cc.IdTipoDocumento As IdTipoDocumentoCredito,

  cd.Fecha As FechaCredito,

  cd.TotalAplicado As TotalCredito,

  cx.IdTipoDocumento + cx.Cxc As Documento,

  cl.IdCliente,

  cl.Cliente

FROM

  Cxc     cx                                  Inner Join

  Cliente cl On (cl.IdCliente = cx.IdCliente) Inner Join

  CxcTipo ct On (ct.IdCxcTipo = cx.IdCxcTipo) Left Outer Join

  CxcDet  cd On (cd.IdCxcDebito = cx.IdCxc)   Left Outer Join

  Cxc     cc On (cc.IdCxc = cd.IdCxc)

WHERE

  cx.Cancelado = 0 AND

  cx.IdCliente = @IdClienteParametro AND

  ct.EsCredito = 0 AND

  cx.IdMoneda = @IdMoneda AND

  dbo.cxcBalanceDocumentoReal(cx.IdCxc, @FechaAl) > 0

ORDER BY

  cx.Fecha Asc,

  IsNull(cd.Fecha, GetDate()) Asc



Open

  docCursor



Fetch Next From docCursor Into

  @IdCxc,

  @Cxc,

  @Fecha,

  @Vencimiento,

  @IdTipoDocumento,

  @Total,

  @Balance,

  @DocumentoCredito,

  @IdTipoDocumentoCredito,

  @FechaCredito,

  @TotalCredito,

  @Documento,

  @IdCliente,

  @Cliente



Set

  @docActual = NewId()



While @@Fetch_Status = 0

Begin

  If @docActual = @IdCxc

  Begin

    Insert Into @Tabla (IdCxc, IdCliente, Cliente, Cxc, IdTipoDocumento, Fecha, Total)

    Values (@IdCxc, @IdCliente, @Cliente, @DocumentoCredito, @IdTipoDocumentoCredito, @FechaCredito, (@TotalCredito * -1))

  End

  Else

  Begin

    Insert Into @Tabla (IdCxc, IdCliente, Cliente, Cxc, Fecha, Vencimiento, IdTipoDocumento, Total, Balance)

    Values (@IdCxc, @IdCliente, @Cliente, @Cxc, @Fecha, @Vencimiento, @IdTipoDocumento, @Total, @Balance)

    If @DocumentoCredito <> '*'

    Begin

      Insert Into @Tabla (IdCxc, IdCliente, Cliente, Cxc, IdTipoDocumento, Fecha, Total)

      Values (@IdCxc, @IdCliente, @Cliente, @DocumentoCredito, @IdTipoDocumentoCredito, @FechaCredito, (@TotalCredito * -1))

    End

  End

  Set

    @docActual = @IdCxc





  Fetch Next From docCursor Into

    @IdCxc,

    @Cxc,

    @Fecha,

    @Vencimiento,

    @IdTipoDocumento,

    @Total,

    @Balance,

    @DocumentoCredito,

    @IdTipoDocumentoCredito,

    @FechaCredito,

    @TotalCredito,

    @Documento,

    @IdCliente,

    @Cliente

End



Declare

  @IdCxcGrupo UniqueIdentifier,

  @Bal Numeric(18,2),

  @Id Int,

  @Fec DateTime



Declare

  IdCxcCursor Cursor For

SELECT

  IdCxc

FROM

  @Tabla

GROUP BY

  IdCxc



Open

  IdCxcCursor



Fetch Next From IdCxcCursor

  Into @IdCxcGrupo 



While @@Fetch_Status = 0

Begin

  Set
    @Bal = (Select Top 1 Balance From @Tabla Where IdCxc = @IdCxcGrupo Order By Id Asc)

  Set

    @Id = (Select Max(Id) From @Tabla Where IdCxc = @IdCxcGrupo)

  Set

    @Fec = (Select Top 1 Case When @PorVencimiento = 1 Then Vencimiento Else Fecha End From @Tabla Where IdCxc = @IdCxcGrupo Order By Id Asc)



  Update

    @Tabla

  Set

    BalanceAPresentar = @Bal,

    FechaACalcular = @Fec

  Where

    Id = @Id



  Fetch Next From IdCxcCursor

    Into @IdCxcGrupo 

End



SELECT

  *,

  Case 

    When DateDiff(Day, FechaACalcular, @FechaAl) Between -30 And 0 Then

       BalanceAPresentar

    Else

      0

  End As Escala1,

  Case 

    When DateDiff(Day, FechaACalcular, @FechaAl) Between 1 And 30 Then

       BalanceAPresentar

    Else

      0

  End As Escala2,

  Case 

    When DateDiff(Day, FechaACalcular, @FechaAl) Between 31 And 60 Then

       BalanceAPresentar

    Else

      0

  End As Escala3,

  Case 

    When DateDiff(Day, FechaACalcular, @FechaAl) Between 61 And 90 Then

       BalanceAPresentar

    Else

      0

  End As Escala4,

  Case 

    When DateDiff(Day, FechaACalcular, @FechaAl) > 91 Then

       BalanceAPresentar

    Else

      0

  End As Escala5

FROM

  @Tabla



Close

  IdCxcCursor

Deallocate

  IdCxcCursor



Close

  docCursor

Deallocate

  docCursor




GO
GO
-- >>> FIN: CxcEstadoCuentaDetallado.sql <<<

-- >>> INICIO: cxcEstadoCuentahistorico.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxcEstadoCuentahistorico]--127569

(@idcliente INT)   

as  

declare  

  @Fecha datetime,  

  @idMonedaLocal int  

  

Set @idMonedaLocal = (Select top 1 idmoneda from moneda where cursolegal = 1)  

Set @Fecha = round(convert(float,getdate()),0,1)  



create table #tempec   

 (Linea int not null identity(1,1),  

  Tipo varchar(20),  

  idcliente int,

  cliente VARCHAR(50),

  idCXC uniqueidentifier,   

  Referencia varchar(20),  

  Fecha datetime,  

  Vencimiento DateTime,

  Valor decimal(19,2),  

  Pagado decimal(19,2),  

  NCF varchar(19), 

  idMoneda int)  

  

insert into #tempec (Tipo, idcliente, cliente,  idCXC, Referencia, Fecha, Vencimiento, Valor, Pagado, idMoneda, NCF)  

select  c.idTipoDocumento, 

		c.idCliente,

		c.Cliente,   

		c.idCXC,  

        c.CXC,   

        c.Fecha,   

        c.Vencimiento,

		c.Valor,   

		Pagado = dbo.cxcBalanceDocumento(c.idCXC, GETDATE(), null),  

        c.idMoneda  ,

        c.CompFiscal        

  from cxc c  

  where-- c.esCredito = 0    and 

		c.Cancelado = 0 

        and c.Fecha <=  GETDATE()     

        AND c.idCliente = @idcliente  

                

insert into #tempec (Tipo, idcliente, cliente,  idCXC, Referencia, Fecha, Vencimiento, Valor, Pagado, idMoneda, NCF)  

select  'FC', ---c.idTipoDocumento, 

		c.idCliente,

		c.Cliente,   

		c.idfactura,--c.idCXC,  

        c.Factura,--CXC,   

        c.Fecha,   

        c.Fecha,

		c.Total,--Valor,   

		c.Total,--Pagado = dbo.cxcBalanceDocumento(c.idCXC, GETDATE(), null),  

        c.idMoneda  ,

        c.CompFiscal        

  from Factura c  

  where-- c.esCredito = 0    and 

		c.Cancelado = 0 

        and c.Fecha <=  GETDATE()     

        AND c.idCliente = @idcliente and c.Credito=0



select   

 t.Linea,  

 t.Tipo, 

 t.idcliente,

 t.cliente, 

 t.idCXC,   

 t.Referencia,  

 t.Fecha,  

 t.Vencimiento,

 diasVencido = (DATEDIFF(DAY,isnull(t.Vencimiento,t.Fecha),GETDATE())),

 dbo.ConvertMoneda(t.Valor , t.idMoneda, @idMonedaLocal , @Fecha, Null) as Valor,   

 t.Valor as ValorReal,  

 dbo.ConvertMoneda(t.Pagado, t.idMoneda, @idMonedaLocal , @Fecha, Null) as Pagado,  

 t.Pagado as PagadoReal ,  

 t.idMoneda,  

 Pendiente = dbo.ConvertMoneda((t.Valor - t.Pagado), t.idMoneda, @idMonedaLocal , @Fecha, Null),  

 PendienteReal = (t.Valor - t.Pagado),  

 m.Moneda  ,

 t.NCF 

from   

  #tempec t  

  join Moneda m on t.idMoneda = m.idMoneda  

  Cross Join Configuracion c  

--where   

  --(t.Valor - t.Pagado) <> 0  

order by   

  t.Fecha,

  t.Referencia

  

drop table #tempec   



return 0




GO
GO
-- >>> FIN: cxcEstadoCuentahistorico.sql <<<

-- >>> INICIO: cxcEstadoCuentaPend.sql <<<
CREATE OR ALTER PROCEDURE cxcEstadoCuentaPend

 @ident int,    

 @final datetime ,

 @idDir varchar(30)

as    

declare    

  @Fecha datetime,    

  @idMonedaLocal int    

Set @idMonedaLocal = (Select top 1 idmoneda from moneda where cursolegal = 1)    

Set @Fecha = round(convert(float,getdate()),0,1)    

create table #tempec     

 (Linea int not null identity(1,1),    

  Tipo varchar(20),    

  idCXC uniqueidentifier,     

  Referencia varchar(20),    

  Fecha datetime,    

  Vencimiento DateTime,  

  Valor decimal(19,2),    

  Pagado decimal(19,2),    

  NCF varchar(19),   

  idMoneda int,

  idClienteObra varchar(30),

  ClienteObra varchar(100))    

insert into #tempec (Tipo, idCXC, Referencia, Fecha, Vencimiento, Valor, Pagado, idMoneda, NCF, idClienteObra, ClienteObra)    

select  c.idTipoDocumento,      

		c.idCXC,    

        c.CXC,     

        c.Fecha,     

        c.Vencimiento,  

		c.Valor,     

		Pagado = dbo.cxcBalanceDocumento(c.idCXC, @final, null),    

        c.idMoneda  ,  

        c.CompFiscal,

        c.idClienteObra,

        c.ClienteObra                     

  from cxc c    

  where c.idCliente = @idEnt    

        and c.esCredito = 0    

        and c.Cancelado = 0   

        and c.Fecha <= @final    

        and (@idDir is null or c.idClienteObra = @idDir)

          

select     

 t.Linea,    

 t.Tipo,    

 t.idCXC,     

 t.Referencia,    

 t.Fecha,    

 t.Vencimiento,  

 dbo.ConvertMoneda(t.Valor , t.idMoneda, @idMonedaLocal , @Fecha, Null) as Valor,     

 t.Valor as ValorReal,    

 dbo.ConvertMoneda(t.Pagado, t.idMoneda, @idMonedaLocal , @Fecha, Null) as Pagado,    

 t.Pagado as PagadoReal ,    

 t.idMoneda,    

 Pendiente = dbo.ConvertMoneda((t.Valor - t.Pagado), t.idMoneda, @idMonedaLocal , @Fecha, Null),    

 PendienteReal = (t.Valor - t.Pagado),    

 m.Moneda  ,  

 t.NCF   ,

 t.idClienteObra,

 t.ClienteObra 

from     

  #tempec t    

  join Moneda m on t.idMoneda = m.idMoneda    

  Cross Join Configuracion c    

where     

  (t.Valor - t.Pagado) <> 0    

order by     

  t.Fecha,  

  t.Referencia  

drop table #tempec     

return 0  


GO
GO
-- >>> FIN: cxcEstadoCuentaPend.sql <<<

-- >>> INICIO: CXCGuardarDet.sql <<<
CREATE OR ALTER PROCEDURE CXCGuardarDet

 @idCXCDet uniqueidentifier output,

 @IdCXC uniqueidentifier,

 @IdCXCDebito uniqueidentifier,

 @Valor decimal(19,2),

 @Fecha datetime,

 @Descuento decimal(19,2),

 @Tasa decimal(19,2)

as

 if @IdCXCDet is null

 begin

   set @idCXCDet = newid()

   insert into cxcDet (idCXC, idCXCDebito, Valor, Fecha, Descuento, Tasa)

   values (@idCXC, @idCXCDebito, @Valor, @Fecha, @Descuento, @Tasa)

 end

 else 

 begin

   if @Valor = 0 

   begin

     delete from cxcDet 

       where idCXCDet = @idCXCDet

     set @idCXCDet = null

   end

   else 

   begin

     update cxcDet

       set idCXC = @idCXC,

           idCXCDebito = @idCXCDebito,

           Valor = @Valor,

	   Fecha = @Fecha,	

	   Tasa  = @Tasa,

           Descuento = @Descuento

       where idCXCDet = @idCXCDet

   end 

  end

return @@ERROR
GO
GO
-- >>> FIN: CXCGuardarDet.sql <<<

-- >>> INICIO: cxcIngresosMes.sql <<<
------------ final de:cxcEstadoCuentaPend ------------



------------ inicio de:cxcIngresosMes ------------



CREATE OR ALTER PROCEDURE cxcIngresosMes

 @desde datetime,

 @hasta datetime

as

select data.Mes, data.Total

 from 

(

 select datepart(month,fecha) as iMes,

		datename(month,fecha) as Mes,

		sum(Valor * case when Tasa = 0 then 1 else Tasa end) as Total

 from recibo 

 where fecha between @desde and @hasta

       and cancelado = 0

 group by datepart(month,fecha), datename(month,fecha)  

) data

order by imes

return 0 


GO
GO
-- >>> FIN: cxcIngresosMes.sql <<<

-- >>> INICIO: cxcListaClientesDepurar.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxcListaClientesDepurar]  --cxcListaClientesDepurar '02/01/2011'

 @fecha datetime   

as

  

 declare @ident int,     

   @persize int,    

   @idVend int,  

   @Vencimiento Bit  

   

 declare @aging table (

	[idAgingCXC] [uniqueidentifier] NOT NULL,

--	[Fecha] [datetime] NOT NULL,

	[codigo] [int] NOT NULL ,

	[Nombre] [varchar](100) NULL ,	

	Cedula_RNC varchar(20),

	Direccion varchar(200),

	Telefono1 varchar(20),

	Telefono2 varchar(20),

	MontoAprobado [decimal](19, 2) NOT NULL,

	[Status] varchar(50), 

	Balance decimal(19,2),

	Atraso decimal(19,2), 

	Apertura datetime,

	UltimoPago datetime)

     

 select @ident = 0, @persize = 30, @idVend = 0, @Vencimiento = 0  

  

 declare @TotalCli int    

 

 declare @tempcxp table (

  ClienteTipo varchar(100),

  Grupo varchar(100),

  idCliente int,

  Nombre varchar(100),

  Categoria varchar(100), 

  idVendedor int,

  Vendedor varchar(100),

  Contacto varchar(100),

  Telefono varchar(20),

  idMoneda int,

  Moneda varchar(20),

  idCXC uniqueidentifier,

  Dias int,

  Factura varchar(20),

  IDRow uniqueidentifier,

  Fecha datetime,

  Vencimiento datetime,

  Total decimal(19,2),

  Tasa decimal(19,4), 

  Pagado decimal(19,2)

 )

 



     insert into @tempcxp

	 select      

	 ct.ClienteTipo,  

	 isnull(gc.Grupo, 'GRUPO NO DEF') as Grupo,   

		e.idCliente,    

		e.Cliente as Nombre,    

		cg.ClienteGrupo, 

		e.idEmpleado as idVendedor,  

		emp.Empleado as Vendedor,   

		e.Contacto,    

		e.telefono,    

		t.idMoneda,    

		m.Moneda,    

		t.idCXC,         

		Dias = datediff(day, (CASE WHEN @Vencimiento = 0 THEN t.Fecha ELSE t.Vencimiento END), @fecha),     

		t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura,     

		IDRow = t.idCXC,    

		t.Fecha,   

		t.Vencimiento,   

		t.Valor as Total,    

		t.Tasa,   

		Pagado = (isnull(    

	   (select sum(d.TotalAplicado)    

			  from     

				  cxc c     

				  join cxcDet d on c.idCXC = d.idCXC    

			  where     

				  d.fecha <= @fecha     

		 and c.cancelado = 0  

				  and d.idCXCDebito = t.idCXC    

			  ),0))    

	 -- into     

		--#tempcxp  

	  from     

		CXC t     

		join Moneda m on t.idMoneda = m.idMoneda    

		right join Cliente e on t.idCliente = e.idCliente    

	    right join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo   

	    right join ClienteGrupo cg on e.idClienteGrupo = cg.idClienteGrupo 

		right join svGrupo gc on e.Grupo = gc.idGrupo   

		right join svEmpleado emp on e.idEmpleado = emp.idEmpleado   

	  -- join Cliente e on t.idCliente = e.idCliente    

	  where         

		t.EsCredito = 0    

		and t.fecha <= @fecha     

		and t.cancelado = 0    

	      

	  insert into @tempcxp    

	  select   

		ct.ClienteTipo,  

	    isnull(gc.Grupo, 'GRUPO NO DEF') as Grupo,   

		e.idCliente ,    

		e.Cliente as Nombre,    

		cg.ClienteGrupo as ClienteGrupo, 

		e.idEmpleado as idVendedor,  

		emp.EMpleado as Vendedor,   

		e.Contacto,    

		e.telefono,    

		t.idMoneda,    

		m.Moneda,    

		t.idCXC,     

		Dias = datediff(day, t.Fecha, @fecha),     

		t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura,     

		IDRow = t.idCXC,    

		t.Fecha,    

		t.Vencimiento,  

		-(t.Valor - isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)) as Total,    

		t.Tasa,   

		Pagado = 0.00    

	  from     

		cxc t     

		left join cxcDet d on t.idCXC = d.idCXC and d.fecha <= @Fecha   

		join Moneda m on t.idMoneda = m.idMoneda    

		join Cliente e on t.idCliente = e.idCliente    

		join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo   

		left join Clientegrupo cg on e.idClienteGrupo = cg.idClienteGrupo

		left join svGrupo gc on e.Grupo = gc.idGrupo   

		left join svEmpleado emp on e.idEmpleado = emp.idEmpleado   

	  where     

		t.EsCredito = 1    

		and t.fecha <= @fecha  

		and t.cancelado = 0    

	  group by     

		ct.ClienteTipo,   

	    gc.Grupo,   

		e.idCliente,    

		e.Cliente ,    

		cg.ClienteGrupo, 

		e.idEmpleado,  

		emp.Empleado,   

		e.Contacto,    

		e.telefono,    

		t.idMoneda,    

		m.Moneda,    

		t.idCXC,     

		datediff(day, t.Fecha, @Fecha),    

		t.idTipoDocumento,      

		t.CXC,     

		t.idCXC,    

		t.Fecha,    

		t.Vencimiento,  

		t.Valor  ,  

		t.Tasa   

	  having t.Valor <> isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)  

  

insert into @aging

 (idAgingCXC, codigo, Nombre, Cedula_RNC,	

  Direccion, Telefono1, Telefono2, MontoAprobado,

  [Status], Balance, Atraso, Apertura, UltimoPago)  

select        

   newid() as idAgingCXC,  

   --@fecha as Fecha,      

   x.idcliente as Codigo,    

   x.Nombre,     

   e.RNC_Cedula,

   e.Direccion,

   e.Telefono,

   e.Fax, 

   e.LimiteCredito as MontoAprobado,

   cst.ClienteStatus as Estado, 

   Balance = sum((Total - Pagado) * Tasa),    

   Vencido = sum(case when @Fecha > Vencimiento then 0.00 else (Total - Pagado) * Tasa end), 

   e.FechaActivo as Apertura,    

   UltimoPago = (select top 1 Fecha from recibo where idCliente = x.idCliente and Cancelado = 0 order by fecha, recibo desc)

  from     

	@tempcxp x join Cliente e on x.idCLiente = e.idCliente 

	join ClienteStatus cst on e.idClienteStatus = cst.idClienteStatus 

  where    

	x.Total <> x.pagado     

  group by x.idCliente, x.Nombre, e.RNC_Cedula, e.Direccion, e.Telefono, e.Fax, e.LimiteCredito, cst.ClienteStatus, e.FechaActivo 





select * from @aging

order by Nombre 


GO
GO
-- >>> FIN: cxcListaClientesDepurar.sql <<<

-- >>> INICIO: cxcNotasGestionCobrosCliente.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxcNotasGestionCobrosCliente](@idCliente INT)

AS

 select *

  from cxcNotasGestionCobros

 WHERE idcliente = @idCliente

 order by FechaRegistro desc




GO
GO
-- >>> FIN: cxcNotasGestionCobrosCliente.sql <<<

-- >>> INICIO: cxcNotasGestionCobrosRPT.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxcNotasGestionCobrosRPT] --null,'20131125','20131125'

 @tipo varchar(16), @desde DATETIME, @hasta DATETIME

AS



if @tipo is Null begin



 select n.*, c.Cliente, c.Direccion, c.Telefono 

 from cxcNotasGestionCobros n JOIN cliente c ON n.idCliente = c.idCliente 

 WHERE FechaAgenda BETWEEN @desde AND @hasta+0.99999999

 and n.Agendar = 1

 ORDER BY c.Cliente 

 

end else begin



 select n.*, c.Cliente, c.Direccion, c.Telefono 

 from cxcNotasGestionCobros n JOIN cliente c ON n.idCliente = c.idCliente 

 WHERE FechaAgenda BETWEEN @desde AND @hasta + 0.99999999

 and TipoNota = @tipo 

 and n.Agendar = 1

 ORDER BY c.Cliente 



end




GO
GO
-- >>> FIN: cxcNotasGestionCobrosRPT.sql <<<

-- >>> INICIO: cxcPresupuestosPendientes.sql <<<
CREATE OR ALTER PROCEDURE cxcPresupuestosPendientes

as

 declare @st varchar(16)

 

 select @st = convert(varchar(16), valor)

 from defaults

 where clave = 'ST_PRESUP'



 select c.*, m.Moneda from cotizacion c join moneda m on c.idmoneda = m.idmoneda

 where c.idCotizacionStatus = @st and c.Cancelado = 0

 order by c.Cliente, c.Fecha

return 0 




GO
GO
-- >>> FIN: cxcPresupuestosPendientes.sql <<<

-- >>> INICIO: cxcReporteRecibosApl.sql <<<
CREATE OR ALTER PROCEDURE cxcReporteRecibosApl

 @desde datetime,

 @hasta datetime

as



select 	r.Recibo,

	r.Fecha,

	r.Valor,

	--r.escxc,

	d.valor as Aplicado,

	d.fecha as FechaDoc,

	f.cxc as Documento

from recibo r left join cxc c

  on r.idrecibo = c.idcxc

  left join cxcdet d on c.idCXC = d.idcxc

  left join cxc f on d.idcxcdebito = f.idcxc and f.cancelado = 0

where 	r.fecha between @desde and @hasta

	and r.cancelado = 0

order by r.fecha, r.recibo

return 0 






GO
GO
-- >>> FIN: cxcReporteRecibosApl.sql <<<

-- >>> INICIO: cxcReporteRemisiones.sql <<<
------------ final de:cxcIngresosMes ------------



------------ inicio de:cxcReporteRemisiones ------------







CREATE OR ALTER PROCEDURE cxcReporteRemisiones

 @idGrp int,

 @desde datetime,

 @hasta datetime,

 @idCli int 

as

select 	f.idFactura as idCXC,

	f.Factura,

        c.IdCliente,

	c.Cliente as Nombre,

	f.Fecha,	

	f.Total,

	f.Referencia, 

	f.Cotizacion, 

	c.Direccion,

	c.Telefono,

	c.Ciudad,

	c.Sector

from factura f join Cliente c 

  on f.idCliente = c.idCliente

where 	f.Credito = 1

	and f.Cancelado = 0

	and f.fecha between @desde and @hasta

	and (@idGrp = 0 or c.idClienteGrupo = @idGrp) 

	and (@idCli = 0 or c.idCliente = @idCli)

order by f.Cliente, f.Factura

return 0 




GO
GO
-- >>> FIN: cxcReporteRemisiones.sql <<<

-- >>> INICIO: cxcRSNotasGestionCobros.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxcRSNotasGestionCobros]

 @idNota uniqueidentifier

as

 select * from cxcNotasGestionCobros

 where idNota = @idNota

return 0




GO
GO
-- >>> FIN: cxcRSNotasGestionCobros.sql <<<

-- >>> INICIO: CXCTipoList.sql <<<
CREATE OR ALTER PROCEDURE CXCTipoList (@esCredito bit, @Fijo Bit)

as





if @Fijo =1 

begin

  select 

    * 

  from 

    cxcTipo

  where

    escredito = @esCredito

    and idcxctipo < 0

  order by 

    cxcTipo 

end

else

begin

  select 

    * 

  from 

    cxcTipo

  where

    escredito = @esCredito

    and idcxctipo >= 0

  order by 

    cxcTipo 

end



return 0
GO
GO
-- >>> FIN: CXCTipoList.sql <<<

-- >>> INICIO: cxcValidaTieneAgenda.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxcValidaTieneAgenda](@fecha DATETIME, @idcliente INT)

as

SELECT top 1 1 FROM cxcNotasGestionCobros cngc 

WHERE cngc.idCliente = @idcliente

AND Agendar = 1 AND Cerrada = 0 

--AND CONVERT(VARCHAR(cxcValidaTieneAgenda10),cngc.FechaAgenda,105) = CONVERT(VARCHAR(10),@fecha,105)




GO
GO
-- >>> FIN: cxcValidaTieneAgenda.sql <<<

-- >>> INICIO: cxpAbrirDocRetencion.sql <<<
CREATE OR ALTER PROCEDURE dbo.cxpAbrirDocRetencion

 @idDocumento int

as

 select * from cxpDocRetencion

  where idDocumento = @idDocumento

return @@ERROR




GO
GO
-- >>> FIN: cxpAbrirDocRetencion.sql <<<

-- >>> INICIO: cxpAgingCtasXPagar.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxpAgingCtasXPagar] --'12/31/2005',0,30

 @final datetime, 

 @ident int, 

 @persize int = 30

as

declare @ents table (

  idSuplidor int ,

  idMoneda int, 

  Nombre varchar(100), 

  MontoNoDistr decimal(19,2),

  Balance decimal(19,2),

  TipoSuplidor varchar(100)

)

declare @mons table (

  idMoneda int,

  Balance decimal(19,2))

declare @tiposup table (

 idMoneda int,

 TipoSuplidor varchar(100),

 Balance decimal(19,2))



select 	t.idSuplidor, 

	t.idMoneda,

	m.Moneda,

	t.idTrans,

	t.IdDocumento,

	Dias = datediff(day, t.Fecha, @final), 

	t.Referencia as Factura, 

	IDRow = idDocumento,

	t.Fecha,

	t.Total ,

	Pagado = isnull((select sum(d.Valor) from cxpDocumentosDtl d

			   join cxpDocumentos s on d.idDocumento = s.idDocumento

			   where d.idDocXPagar = t.idDocumento 

				 and s.Fecha <= @final

				 and (s.Status <> 'C' or (s.status = 'C' and isnull(s.FechaStatus,s.fecha) > @final))

				 and s.MostrarEnCXP = 1),$0)

into #tempcxp

from cxpDocumentos t join Moneda m on t.idMoneda = m.idMoneda

  join TiposTrans tt on t.idTrans = tt.idTrans and tt.Sistema = 'CXP'

where t.fecha <= @final  	

      and MostrarEnCXP = 1  

      and t.Status <> 'C' 

      and (@idEnt = 0 or t.idSuplidor = @idEnt)

	and tt.DebCre = 2 

	and t.Total <> isnull((select sum(d.Valor) from cxpDocumentosDtl d

			   join cxpDocumentos s on d.idDocumento = s.idDocumento

			   where d.idDocXPagar = t.idDocumento 

				 and s.Fecha <= @final

				 and (s.Status <> 'C' or (s.status = 'C' and isnull(s.FechaStatus,s.fecha) > @final))

				 and s.MostrarEnCXP = 1),$0) 

--order by t.idMoneda, t.idSuplidor, t.Fecha

insert into @ents (idSuplidor, idMoneda, Nombre, TipoSuplidor) --, MontoNoDistr, Balance)

select distinct 

	t.idSuplidor, 

	t.idMoneda, 

	e.Nombre,

	isnull(ts.Descripcion,'TIPO DE SUPLIDOR NO DEFINIDO') as Descripcion /*, 

	0.0, --dbo.cxpCreditosNoDistr(t.idSuplidor,t.idMoneda, @final),

	(select sum(case tt.debcre when 1 then d.Total else -d.Total end) 

         from cxpDocumentos d join Tipostrans tt 

   		on d.idTrans = tt.idTrans and tt.Sistema = 'CXP'

	      where d.idSuplidor = t.idSuplidor

		    and d.idMoneda = t.idMoneda

		    and d.Fecha <= @final

		    and d.Status <> 'C') */

from #tempcxp t join cxpSuplidores e

  on t.idSuplidor = e.idSuplidor

left join cxpTiposSuplidor ts on e.TipoSuplidor = ts.TipoSuplidor



/*

update @ents

  set MontoNoDistr = dbo.cxpCreditosNoDistr(t.idSuplidor,t.idMoneda, @final),

      Balance = (select sum(case tt.debcre when 2 then d.Total else -d.Total end) 

         from cxpDocumentos d join Tipostrans tt 

   		on d.idTrans = tt.idTrans and tt.Sistema = 'CXP'

	      where d.idSuplidor = t.idSuplidor

		    and d.idMoneda = t.idMoneda

		    and d.MostrarEnCXP = 1

		    and d.Fecha <= @final

		    and (isnull(d.Status,'A') <> 'C' or (isnull(d.Status,'A') = 'C' and isnull(d.FechaStatus,d.fecha) > @final))

		    --and not ((d.status = 'C' and tt.debcre = 2)

		 )

from @ents t

*/



update @ents

  set MontoNoDistr = dbo.cxpCreditosNoDistr(t.idSuplidor,t.idMoneda, @final),

      Balance = (select sum(d.Total - d.Pagado) 

				  from #tempcxp d 

				  where d.idSuplidor = t.idSuplidor and d.idMoneda = t.idMoneda) - dbo.cxpCreditosNoDistr(t.idSuplidor,t.idMoneda, @final)

from @ents t



insert into @mons (idMoneda, Balance)

select  idMoneda,

	sum(balance)

from @ents

group by idMoneda



insert into @tiposup (idMoneda, TipoSuplidor, Balance)

select  idMoneda,

	TipoSuplidor,

	sum(balance)

from @ents

group by idMoneda, TipoSuplidor



select 	e.idSuplidor,

	e.TipoSuplidor, 

	e.Nombre,

	t.idMoneda, 

	t.Moneda, 

	t.idTrans,

	t.IdDocumento,

	t.Dias, 

	NoVenc = case when dias between 00 and 30 then Total - Pagado else $0 end,

	A30    = case when dias between 31 and 60 then Total - Pagado else $0 end,

	A60    = case when dias between 61 and 90 then Total - Pagado else $0 end,

	A90    = case when dias > 90 then Total - Pagado else $0 end,

	t.Factura, 

	t.IDRow,

	t.Fecha,

	t.Total,

	t.Pagado,

	Creditos = e.MontoNoDistr,

	Balance = e.Balance,

	m.Balance as BalanceXMoneda,

	ts.Balance as BalanceXTipo

from #tempcxp t join @ents e 

  on t.idSuplidor = e.idSuplidor and t.idMoneda = e.idMoneda

  join @mons m on t.idMoneda = m.idMoneda

  join @tiposup ts on e.TipoSuplidor = ts.TipoSuplidor and t.idMoneda = ts.idMoneda 

  order by t.Moneda, e.TipoSuplidor, e.Nombre , t.fecha, t.Factura 

drop table #tempcxp

return 0




GO
GO
-- >>> FIN: cxpAgingCtasXPagar.sql <<<

-- >>> INICIO: cxpAgingVencimiento.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxpAgingVencimiento]--'06/15/2010',0,30,0

 @final datetime, 

 @ident int, 

 @persize int = 30,

 @Vencimiento bit = 0

as

declare @ents table (

  idSuplidor int ,

  idMoneda int, 

  Nombre varchar(100), 

  MontoNoDistr decimal(19,2),

  Balance decimal(19,2),

  TipoSuplidor varchar(100)

)



declare @mons table (

  idMoneda int,

  Balance decimal(19,2))

declare @tiposup table (

 idMoneda int,

 TipoSuplidor varchar(100),

 Balance decimal(19,2))



select 	t.idSuplidor, 

	t.idMoneda,

	m.Moneda,

	t.idTrans,

	t.IdDocumento,

	t.CompFiscal, 

	Dias = case @Vencimiento when 1 then datediff(day, isnull(t.Vencimiento,Fecha), @final) else datediff(day, t.Fecha, @final) end, 

	t.Referencia as Factura, 

	IDRow = idDocumento,

	t.Fecha,

	isnull(t.Vencimiento, t.fecha) as Vencimiento, 

	t.FechaEmision, 

	t.Total ,

	Pagado = isnull((select sum(d.Valor) from cxpDocumentosDtl d

			   join cxpDocumentos s on d.idDocumento = s.idDocumento

			   where d.idDocXPagar = t.idDocumento 

				 and (s.Status <> 'C' or (s.status = 'C' and isnull(s.FechaStatus,s.fecha) > @final))

                                 and d.fecha <= @final

				 and s.MostrarEnCXP = 1),0.00)

into #tempcxp

from cxpDocumentos t join Moneda m on t.idMoneda = m.idMoneda

  join TiposTrans tt on t.idTrans = tt.idTrans and tt.Sistema = 'CXP'

where dbo.IncluirPorVencimiento(t.Fecha, t.Vencimiento, @Vencimiento, @final) = 1 

      and MostrarEnCXP = 1  

      and t.Status <> 'C' 

      --and (@idEnt = 0 or t.idSuplidor = @idEnt)

	and tt.DebCre = 2 

	and t.Total <> isnull((select sum(d.Valor) from cxpDocumentosDtl d

			   join cxpDocumentos s on d.idDocumento = s.idDocumento

			   where d.idDocXPagar = t.idDocumento 

				 and d.fecha <= @final

				 and (s.Status <> 'C' or (s.status = 'C' and isnull(s.FechaStatus,s.fecha) > @final))

				 and s.MostrarEnCXP = 1),$0) 



insert into @ents (idSuplidor, idMoneda, Nombre, TipoSuplidor) 

select distinct 

	t.idSuplidor, 

	t.idMoneda, 

	e.Nombre,

	isnull(ts.Descripcion,'TIPO DE SUPLIDOR NO DEFINIDO') as Descripcion 

from #tempcxp t join cxpSuplidores e

  on t.idSuplidor = e.idSuplidor

left join cxpTiposSuplidor ts on e.TipoSuplidor = ts.TipoSuplidor



update @ents

  set MontoNoDistr = dbo.cxpCreditosNoDistr(t.idSuplidor,t.idMoneda, @final),

      Balance = (select sum(d.Total - d.Pagado) 

				  from #tempcxp d 

				  where d.idSuplidor = t.idSuplidor and d.idMoneda = t.idMoneda) - dbo.cxpCreditosNoDistr(t.idSuplidor,t.idMoneda, @final)

from @ents t



insert into @mons (idMoneda, Balance)

select  idMoneda,

	sum(balance)

from @ents

group by idMoneda



insert into @tiposup (idMoneda, TipoSuplidor, Balance)

select  idMoneda,

	TipoSuplidor,

	sum(balance)

from @ents

group by idMoneda, TipoSuplidor



if @idEnt <> 0 

  delete from #tempcxp where idSuplidor <> @idEnt 



select 	e.idSuplidor,

	e.TipoSuplidor, 

	e.Nombre,

	t.idMoneda, 

	t.Moneda, 

	t.idTrans,

	t.IdDocumento,

	t.Dias, 

	NoVenc = case when dias between 00 and 30 then Total - Pagado else $0 end,

	A30    = case when dias between 31 and 60 then Total - Pagado else $0 end,

	A60    = case when dias between 61 and 90 then Total - Pagado else $0 end,

	A90    = case when dias > 90 then Total - Pagado else $0 end,

	t.Factura, 

	t.IDRow,

	t.Fecha,

	t.Total,

	t.Pagado,

	t.FechaEmision,

	t.Vencimiento, 

	t.CompFiscal, 

	Creditos = e.MontoNoDistr,

	Balance = e.Balance,

	m.Balance as BalanceXMoneda,

	ts.Balance as BalanceXTipo

from #tempcxp t join @ents e 

  on t.idSuplidor = e.idSuplidor and t.idMoneda = e.idMoneda

  join @mons m on t.idMoneda = m.idMoneda

  join @tiposup ts on e.TipoSuplidor = ts.TipoSuplidor and t.idMoneda = ts.idMoneda 

  order by t.Moneda, e.TipoSuplidor, e.Nombre , t.fecha, t.Factura 

drop table #tempcxp

return 0










GO
GO
-- >>> FIN: cxpAgingVencimiento.sql <<<

-- >>> INICIO: cxpAnularDocumento.sql <<<
CREATE OR ALTER PROCEDURE cxpAnularDocumento

 @idDocumento int,

 @Fecha datetime

as

 if exists (select 1 from cxpDocumentos t join cxpDocumentosDtl d

	     on t.idDocumento = d.idDocumento 

	     where d.idDocXPagar = @idDocumento 

		   and t.Status <> 'C')

 begin

   return 1 

 end

 else begin

   update cxpDocumentos

     set Status = 'C', FechaStatus = @fecha

   where idDocumento = @idDocumento

 end

return @@ERROR




GO
GO
-- >>> FIN: cxpAnularDocumento.sql <<<

-- >>> INICIO: cxpAplicadoADoc.sql <<<
CREATE OR ALTER PROCEDURE cxpAplicadoADoc

 @idDoc int

as

select 	t.Abrev as Tipo,

	dd.LineaNum, 

	d.Referencia, 

	d.Fecha, 

	dd.Valor 

from cxpDocumentos d join cxpDocumentosdtl dd

  on d.idDocumento = dd.idDocumento 

  left join TiposTrans t on d.idTrans = t.idTrans 

     and t.Sistema = 'CXP'

where dd.idDocXPagar = @idDoc and d.status<>'C'






GO
GO
-- >>> FIN: cxpAplicadoADoc.sql <<<

-- >>> INICIO: cxpBancoACHSuplidor.sql <<<
CREATE OR ALTER PROCEDURE cxpBancoACHSuplidor

 @idSuplidor int,

 @idMoneda int

as

 select * from cxpBancoSuplidor

 where idSuplidor = @idSuplidor and idMoneda = @idMoneda

 order by BancoDefault desc 


GO
GO
-- >>> FIN: cxpBancoACHSuplidor.sql <<<

-- >>> INICIO: cxpBatchACHFind.sql <<<
CREATE OR ALTER PROCEDURE cxpBatchACHFind

 @orden varchar(10),

 @desde datetime,

 @hasta datetime

as

 select * from cxpBatchACH

 where fecha between @desde and @hasta

 order by fecha desc 

return 0 
GO
GO
-- >>> FIN: cxpBatchACHFind.sql <<<

-- >>> INICIO: cxpBatchACHRPT.sql <<<
CREATE OR ALTER PROCEDURE cxpBatchACHRPT(@idBatchACH uniqueidentifier)

AS

SELECT

  b.BatchACH,

  b.Fecha,

  b.Status,

  b.Usuario,

  b.Descripcion,  

  d.*

FROM

  cxpBatchACH b join cxpBatchACHDet d 

  on b.idBatchACH = d.idBatchACH

WHERE

  b.idBatchACH = @idBatchACH


GO
GO
-- >>> FIN: cxpBatchACHRPT.sql <<<

-- >>> INICIO: cxpBorrarCostoDocumento.sql <<<
------------ final de:cxcReporteRemisiones ------------



------------ inicio de:cxpBorrarCostoDocumento ------------



CREATE OR ALTER PROCEDURE cxpBorrarCostoDocumento

 @IdDocumento uniqueidentifier

as

 delete from costCostoDocumento

  where idDocumento = @idDocumento

return @@ERROR


GO
GO
-- >>> FIN: cxpBorrarCostoDocumento.sql <<<

-- >>> INICIO: cxpBorrarCtasDoc.sql <<<
CREATE OR ALTER PROCEDURE cxpBorrarCtasDoc

 @IdDocumento int

AS

 delete from  cxpDocCuentas

  where idDocumento = @idDocumento

return @@ERROR




GO
GO
-- >>> FIN: cxpBorrarCtasDoc.sql <<<

-- >>> INICIO: cxpBorrarDocDtl.sql <<<
CREATE OR ALTER PROCEDURE cxpBorrarDocDtl

 @idDocumento int

as

  delete from cxpDocumentosDtl 

  where Iddocumento = @idDocumento

return @@ERROR




GO
GO
-- >>> FIN: cxpBorrarDocDtl.sql <<<

-- >>> INICIO: cxpBorrarDocItems.sql <<<
CREATE OR ALTER PROCEDURE cxpBorrarDocItems

 @idDocumento int

as

 delete from cxpdocumentoItems

  where idDocumento = @idDocumento

return @@ERROR




GO
GO
-- >>> FIN: cxpBorrarDocItems.sql <<<

-- >>> INICIO: cxpBorrarDocRetencion.sql <<<
CREATE OR ALTER PROCEDURE cxpBorrarDocRetencion

 @idDocumento int

as

 delete from cxpdocRetencion

 where idDocumento = @idDocumento

return @@ERROR




GO
GO
-- >>> FIN: cxpBorrarDocRetencion.sql <<<

-- >>> INICIO: cxpBorrarDocumento.sql <<<
------------ final de:cxpBorrarCostoDocumento ------------



------------ inicio de:cxpBorrarDocumento ------------







CREATE OR ALTER PROCEDURE cxpBorrarDocumento

 @idDoc int

as

 declare @Tipo varchar(20),

	 @idSol int

 if exists (select 1 from cxpDocumentosDtl

		where idDocXPagar = @idDoc)

   return 1

 else 

    select @Tipo = TipoDocOrigen,

		   @idSol = DocOrigen

     from cxpDocumentos

     where idDocumento = @idDoc and status <> 'C'

     if (@Tipo = 'S') begin

     	update cxpSolicitudes

	     set Status = 'A'

	     where idSolicitud = @idSol

     end

     delete from cxpDocumentos

      where idDocumento = @idDoc

     delete from bcoDocumentos

     where tipodocorigen in ('CC','CK','ACH') and docorigen = @idDoc

return @@ERROR




GO
GO
-- >>> FIN: cxpBorrarDocumento.sql <<<

-- >>> INICIO: cxpBorrarPagoRetencion.sql <<<
------------ final de:cxpBorrarDocumento ------------



------------ inicio de:cxpBorrarPagoRetencion ------------



CREATE OR ALTER PROCEDURE cxpBorrarPagoRetencion

 @idDocumento int

as

 delete from cxpPagoRetencion

 where idDocumento = @idDocumento

return @@ERROR 


GO
GO
-- >>> FIN: cxpBorrarPagoRetencion.sql <<<

-- >>> INICIO: cxpBorrarSolDtl.sql <<<
CREATE OR ALTER PROCEDURE cxpBorrarSolDtl

 @idSolicitud int

as

delete from cxpSolicitudesDtl

where idSolicitud = @idSolicitud

return 0




GO
GO
-- >>> FIN: cxpBorrarSolDtl.sql <<<

-- >>> INICIO: cxpBorrarSolicitudes.sql <<<
CREATE OR ALTER PROCEDURE cxpBorrarSolicitudes

 @idSol int

as

 delete from cxpSolicitudes

  where idSolicitud = @idSol

return @@ERROR




GO
GO
-- >>> FIN: cxpBorrarSolicitudes.sql <<<

-- >>> INICIO: cxpBorrarSolRet.sql <<<
------------ final de:cxpBorrarPagoRetencion ------------



------------ inicio de:cxpBorrarSolRet ------------



CREATE OR ALTER PROCEDURE cxpBorrarSolRet

 @idSolicitud int

as

 delete from cxpSolicitudRet 

 where idSolicitud = @idSolicitud

return @@ERROR




GO
GO
-- >>> FIN: cxpBorrarSolRet.sql <<<

-- >>> INICIO: cxpBuscarCheque.sql <<<
CREATE OR ALTER PROCEDURE cxpBuscarCheque

 @idCta int,

 @num int

as

select 	h.*,

	--s.Nombre,

	DescStatus = case h.Status 

	  when 'P' then 'No impreso'

	  when 'T' then 'En transito'

	  when '$' then 'Pagado en fecha: ' + convert(varchar(14), h.FechaStatus,103)

	  when 'C' then 'Cancelado en fecha: ' + convert(varchar(14), h.FechaStatus,103)

	  else 'Error'

	end

from cxpDocumentos h join cxpSuplidores s 

  on h.idSuplidor = s.idSuplidor

where 	h.idTrans = 20 

	and h.idCuentaBanco = @idCta

	and h.Referencia = convert(varchar(20), @Num)

return @@ERROr






GO
GO
-- >>> FIN: cxpBuscarCheque.sql <<<

-- >>> INICIO: cxpBuscarChequesRango.sql <<<
------------ final de:cxpBorrarSolRet ------------



------------ inicio de:cxpBuscarChequesRango ------------



CREATE OR ALTER PROCEDURE cxpBuscarChequesRango

 @orden varchar(10), 

 @desde datetime,

 @hasta datetime

as

 select h.idDocumento,

		h.Referencia,

		h.Fecha,

		h.Nombre as Beneficiario,

		h.TotalNeto,		

		h.Status as ST,

		b.Nombre as Banco,

		h.Concepto

 from cxpDocumentos h join cxpSuplidores e

  on h.idSuplidor = e.idSuplidor

  join cxpBancos b on h.idCuentaBanco = b.idCuentaBanco 

 where h.fecha between @desde and @hasta

 order by h.Referencia

return 0 




GO
GO
-- >>> FIN: cxpBuscarChequesRango.sql <<<

-- >>> INICIO: cxpBuscarChkDtl.sql <<<
CREATE OR ALTER PROCEDURE cxpBuscarChkDtl 

 @idDoc int

as

  select d.*,

	 da.Fecha as FechaDoc,

	 da.Total,

	 da.Referencia,

         tt.Abrev,

	 case da.BienesServicio when 1 then 'Bienes' else 'Servicios profesionales' end as TipoFactura,

	 dr.Retencion,

	 dr.Porcentaje,

	 (dr.Porcentaje / 100.00) * d.Valor as Retenido 

  from cxpDocumentosDtl d join cxpDocumentos da

   on d.idDocXPagar = da.idDocumento 

   left join TiposTrans tt on da.idTrans = tt.idTrans and tt.Sistema = 'CXP'

   left join cxpDocRetencion dr on da.idDocumento = dr.idDocumento

  where d.idDocumento = @idDoc

return @@ERROR




GO
GO
-- >>> FIN: cxpBuscarChkDtl.sql <<<

-- >>> INICIO: cxpBuscarCostoDocumento.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxpBuscarCostoDocumento](@idDocumento uniqueidentifier) AS

  Select 

    c.*,

    cc.CentroCostoDesc as CentroCostoDesc

    --cc.CentroCosto + '-' + cc.CentroCostoDesc as CentroCostoDesc

  From

    costCostoDocumento c join CentroCosto cc on c.idCentroCosto = cc.idCentroCosto

  where

    idDocumento = @idDocumento

    

return 0 
GO
GO
-- >>> FIN: cxpBuscarCostoDocumento.sql <<<

-- >>> INICIO: cxpBuscarCostoPagadoDoc.sql <<<
CREATE OR ALTER PROCEDURE cxpBuscarCostoPagadoDoc

 @docxpagar int,

 @valor decimal(19,2)

as



select 

	co.idCentroCosto,

	co.CentroCosto,

	co.idPartida, 

	(co.Gasto / d2.Total) * @valor as CostoPagado

from cxpDocumentos d2 join costCostoDocumento co on d2.Guiddocumento = co.iddocumento 

where d2.iddocumento = @docxpagar 	  

return @@ERROR 
GO
GO
-- >>> FIN: cxpBuscarCostoPagadoDoc.sql <<<

-- >>> INICIO: cxpBuscarCtasDoc.sql <<<
CREATE OR ALTER PROCEDURE cxpBuscarCtasDoc 

 @idDocumento int

as

 select d.idCuenta,

	d.idAuxiliar, 

	c.Descripcion,

	d.DebCre,

	d.Automatica,

	d.idCentroCosto,

	d.CentroCosto,

	d.Idpartida,

	case d.debcre

   		when 1 then valor

		else 0.00

	end as Debito,

	case d.debcre 

		when 2 then valor

		else 0.00

	end as Credito

 from cxpDocCuentas d left join cgCatalogoCuentas c

  on d.idCuenta = c.idCuenta

 where d.idDocumento = @idDocumento

return @@ERROR






GO
GO
-- >>> FIN: cxpBuscarCtasDoc.sql <<<

-- >>> INICIO: cxpBuscarCtaSuplidor.sql <<<
CREATE OR ALTER PROCEDURE cxpBuscarCtaSuplidor

 @idSuplidor int ,

 @idMoneda int 

as

  select * from cxpSuplidorCuenta

  where idSuplidor = @idSuplidor and idMoneda = @idMoneda  

return 0 


GO
GO
-- >>> FIN: cxpBuscarCtaSuplidor.sql <<<

-- >>> INICIO: cxpBuscarDocDtl.sql <<<
CREATE OR ALTER PROCEDURE cxpBuscarDocDtl 

 @idDoc int

as

  select d.*,

	 da.Fecha as FechaDoc,

	 da.Total,

	 da.Referencia,

     tt.Abrev,

	 da.idMoneda,

	 da.idCuenta 

  from cxpDocumentosDtl d join cxpDocumentos da

  on d.idDocXPagar = da.idDocumento 

  left join TiposTrans tt on da.idTrans = tt.idTrans and tt.Sistema = 'CXP'

  where d.idDocumento = @idDoc

return @@ERROR








GO
GO
-- >>> FIN: cxpBuscarDocDtl.sql <<<

-- >>> INICIO: cxpBuscarDocumento.sql <<<
CREATE OR ALTER PROCEDURE cxpBuscarDocumento   

 @idDoc int  

as  

  select  d.*,  

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

  from cxpDocumentos d join TiposTrans tt   

   on d.idTrans = tt.idTrans and tt.Sistema = 'CXP'  

   left join cxpSuplidores s on d.idSuplidor = s.idSuplidor   

  where d.idDocumento = @idDoc  

return @@ERROR  


GO
GO
-- >>> FIN: cxpBuscarDocumento.sql <<<

-- >>> INICIO: cxpBuscarDocXNCF.sql <<<
CREATE OR ALTER PROCEDURE cxpBuscarDocXNCF

 @RNC varchar(20),

 @NCF varchar(20),

 @idDocumento int 

as

 select top 1 idDocumento, Concepto, Fecha, Total, Referencia 

 from cxpDocumentos 

 where idDocumento <> @idDocumento

       and idTrans = 1

       and replace(RNC,'-','') = replace(@RNC,'-','')

       and CompFiscal = @NCF

return 


GO
GO
-- >>> FIN: cxpBuscarDocXNCF.sql <<<

-- >>> INICIO: cxpBuscarImpsDoc.sql <<<
CREATE OR ALTER PROCEDURE cxpBuscarImpsDoc

 @idDocumento int

as

select 	di.TipoImpuesto,

	i.Descripcion,

	i.Porcentaje,

	(i.Porcentaje / 100) * (d.Valor - d.MontoDescuento) as MontoImpuesto,

	i.idCuenta

from cxpDocumentos d join cxpDocImpuestos di 

  on d.idDocumento = di.idDocumento

  join ocTiposImpuestos i on di.TipoImpuesto = i.TipoImpuesto

where d.idDocumento = @idDocumento




GO
GO
-- >>> FIN: cxpBuscarImpsDoc.sql <<<

-- >>> INICIO: cxpBuscarSol2ACH.sql <<<
CREATE OR ALTER PROCEDURE cxpBuscarSol2ACH 

 @numero int

as

select 	s.*,	

		e.Nombre,

		e.Telefono1,

		e.Telefono2,

		e.RNC,	

		e.Direccion,

	    e.email, 

		'CC' as CuentaTipo,

	    'CC' as CuentaOrigenTipo, 

		b2.Nombre as CuentaTransfer,

		TotalNeto = s.Total - dbo.cxpRetencionXSolicitud(s.idSolicitud),

	    b.NumCuenta as CuentaOrigen ,

		b.BancoCodigo as BancoOrigen

from cxpSolicitudes s left join cxpSuplidores e

  on s.idSuplidor = e.idSuplidor 

  join cxpBancos b on s.idCuentaBanco = b.idCuentaBanco 

left join cxpBancos b2 on idCuentaBancoDestino = b2.idCuentaBanco 

where s.Numero = @numero 

return 0


GO
GO
-- >>> FIN: cxpBuscarSol2ACH.sql <<<

-- >>> INICIO: cxpBuscarSolDtl.sql <<<
CREATE OR ALTER PROCEDURE cxpBuscarSolDtl

 @idSolicitud int

as

 select d.*,

	t.Referencia,

 	t.Total,

	t.Fecha,

	t.idMoneda, 

	tt.Abrev,

	TotalRetenciones = isnull((select sum(porcentaje) from cxpDocRetencion where idDocumento = d.idDocumento),0.00)

from cxpSolicitudesDtl d left join cxpDocumentos t

  on d.idDocumento = t.idDocumento

  left join TiposTrans tt on t.idTrans = tt.idTrans and tt.Sistema = 'CXP'

where d.idSolicitud = @idSolicitud	

return @@ERROR






GO
GO
-- >>> FIN: cxpBuscarSolDtl.sql <<<

-- >>> INICIO: cxpBuscarSolicitud.sql <<<
------------ final de:cxpBuscarFechaPago ------------



------------ inicio de:cxpBuscarSolicitud ------------





CREATE OR ALTER PROCEDURE cxpBuscarSolicitud

 @idSolicitud int

as

declare @TT_CHEQUE int set @TT_CHEQUE = 20

declare @TT_ACH int set @TT_ACH = 29

select 	s.*,

	case s.Status 

	  when 'A' then 'Aprobada'

	  when '1' then 'No revisada'

	  when '3' then 'Primera Aprob.'

	  when '4' then 'Revisada'

	  when 'P' then 'Pagada: #' + (select top 1 isnull(referencia,'') from cxpDocumentos

					 where 	idTrans = case s.tipoSolicitud when 1 then @TT_CHEQUE else @TT_ACH end 

						and TipoDocOrigen = 'S' 

						and DocOrigen = @idSolicitud 

						and Status <> 'C')

	  when 'C' then 'Anulada'

	end as DescrStatus, 

	e.Nombre,

	e.Telefono1,

	e.Telefono2,

	e.RNC,	

	e.Direccion,

	b2.Nombre as CuentaTransfer,

	TotalNeto = s.Total - dbo.cxpRetencionXSolicitud(s.idSolicitud)

from cxpSolicitudes s left join cxpSuplidores e

  on s.idSuplidor = e.idSuplidor 

left join cxpBancos b2 on idCuentaBancoDestino = b2.idCuentaBanco 

where s.idSolicitud = @idSolicitud

return 0




GO
GO
-- >>> FIN: cxpBuscarSolicitud.sql <<<

-- >>> INICIO: cxpBuscarSolicitudACH.sql <<<
CREATE OR ALTER PROCEDURE cxpBuscarSolicitudACH

 @orden varchar(10),

 @desde datetime,

 @hasta datetime

as

 select s.Numero,

	    e.Nombre as Suplidor,

	    s.Fecha,

	    TotalNeto = s.Total - dbo.cxpRetencionXSolicitud(s.idSolicitud),

		s.Concepto

  from cxpSolicitudes s join cxpSuplidores e on s.idSuplidor = e.idSuplidor 

  where s.TipoSolicitud = 2 

		and s.Status = 'A' 

	    and s.fecha between @desde and @hasta

  order by s.Numero desc

return 0 
GO
GO
-- >>> FIN: cxpBuscarSolicitudACH.sql <<<

-- >>> INICIO: cxpBuscarSolicitudXNumero.sql <<<
CREATE OR ALTER PROCEDURE cxpBuscarSolicitudXNumero

 @Numero int

as

select 	s.*,

	e.Nombre,

	e.Telefono1,

	e.Telefono2,

	e.RNC,	

	e.Direccion,

	b2.Nombre as CuentaTransfer,	

	TotalNeto = s.Total - dbo.cxpRetencionXSolicitud(s.idSolicitud)    

from cxpSolicitudes s join cxpSuplidores e

  on s.idSuplidor = e.idSuplidor 

  left join cxpBancos b2 on idCuentaBancoDestino = b2.idCuentaBanco 

where s.Numero = @Numero

return 0


GO
GO
-- >>> FIN: cxpBuscarSolicitudXNumero.sql <<<

-- >>> INICIO: cxpBuscarSuplidorXId.sql <<<
CREATE OR ALTER PROCEDURE cxpBuscarSuplidorXId

 @sid int

as

 select * from cxpSuplidores

 where idSuplidor = @sid

return 0 

 

 




GO
GO
-- >>> FIN: cxpBuscarSuplidorXId.sql <<<

-- >>> INICIO: cxpCancelarCheque.sql <<<
------------ final de:cxpBuscarSolicitud ------------  

------------ inicio de:cxpCancelarCheque ------------  

CREATE OR ALTER PROCEDURE cxpCancelarCheque   

 @idCk int

as  

declare --@idTr int,  

 @iddoc int,  

 @Err int,  

 @Fec datetime  

set @Fec = round(convert(float,getdate()),0,1)  

declare @idtr int  

set @idTr = 6  -- transaccion de cheque cancelado  

begin transaction  

declare @fechack datetime  

select @fechack = fecha  

from cxpdocumentos  

where iddocumento = @idCk  

if @fechack < @fec  

begin  

insert into bcoDocumentos (IdTrans, Referencia, Status, Fecha,   

                           FechaStatus, idCuentaBanco, TipoDocOrigen,   

                           DocOrigen, Valor, DebCre,tasa)   

select  @idTr as IdTrans,  

 t.Referencia,  

 'A',  

 @fec,   

 @fec,  

 t.idCuentaBanco,  

 'CC',  

 t.idDocumento,  

 t.TotalNeto,  

 1,  

 t.tasa   

from cxpDocumentos t   

where t.Iddocumento = @idCk  

set @Err = @@ERROR  

if @Err > 0  

begin  

  rollback transaction  

  return @err  

end  

set @idDoc = @@IDENTITY  

insert into bcoDocumentosDtl  

 (idDocumento, idCuenta, DebCre, Valor, Automatica)  

select  @idDoc,  

 idCuenta,  

 case debcre when 1 then 2 else 1 end,  

 valor,  

 isnull(Automatica,0)  

from cxpDocCuentas  

where idDocumento = @idck  

set @Err = @@ERROR  

if @Err > 0  

begin  

  rollback transaction  

  return @err  

end  

end  

update cxpSolicitudes  

  set Status = 'A' --FechaStatus = nullIddocumento = null, FechaCheque = null , status = 1  

from cxpSolicitudes s join cxpDocumentos d  

  on s.idSolicitud = d.DocOrigen and d.TipoDocOrigen = 'S'  

where d.idDocumento = @idCk  

set @Err = @@ERROR  

if @Err > 0  

begin  

  rollback transaction  

  return @err  

end  

update cxpDocumentos  

set Status = 'C', FechaStatus = @fec  

where idDocumento = @idCk  

set @Err = @@ERROR  

if @Err > 0  

begin  

  rollback transaction  

  return @err  

end  

update bcoDocumentos  

set Status = 'C', FechaStatus = @fec  

where TipoDocOrigen = 'CK' and DocOrigen = @idCk  

set @Err = @@ERROR  

if @Err > 0  

begin  

  rollback transaction  

  return @err  

end  

update nominaEmp  

set cheque = null  

where cheque = @idCk  

commit transaction  

return 0  

  
GO
GO
-- >>> FIN: cxpCancelarCheque.sql <<<

-- >>> INICIO: cxpChequesXImprimir.sql <<<
------------ inicio de:cxpChequesXImprimir ------------



CREATE OR ALTER PROCEDURE cxpChequesXImprimir

 @cta int

as

select  d.idDocumento,

	d.Referencia as Numero,

	e.Nombre,

	d.Fecha,

	d.Total

from cxpDocumentos d join cxpSuplidores e

  on d.idSuplidor = e.idSuplidor

where d.idTrans = 20 

	  and d.Status = 'P'

	  and (@cta = 0 or d.idCuentaBanco = @cta)

order by d.Referencia

return 0




GO
GO
-- >>> FIN: cxpChequesXImprimir.sql <<<

-- >>> INICIO: cxpChequesXImprimirCta.sql <<<
------------ inicio de:cxpChequesXImprimir ------------



CREATE OR ALTER PROCEDURE cxpChequesXImprimirCta

 @cta int

as

select  d.idDocumento,

	d.Referencia as Numero,

	e.Nombre,

	d.Fecha,

	d.Total

from cxpDocumentos d join cxpSuplidores e

  on d.idSuplidor = e.idSuplidor

where d.idTrans = 20 

	  and d.Status = 'P'

	  and (@cta = 0 or d.idCuentaBanco = @cta)

order by d.Referencia

return 0




GO
GO
-- >>> FIN: cxpChequesXImprimirCta.sql <<<

-- >>> INICIO: cxpCRNoDistribAll.sql <<<
CREATE OR ALTER PROCEDURE cxpCRNoDistribAll 

  @final datetime

as

declare @estado table (

 LineaNo int not null identity,

 idSuplidor int,

 Suplidor varchar(100), 

 Tipo varchar(10),

 idTrans int,

 IdDocumento int,

 Fecha datetime,

 Referencia varchar(20),

 Status varchar(20), 

 Total decimal(19,2),

 Aplicado decimal(19,2)

)

insert into @estado

(idSuplidor, Suplidor, Tipo, IdTrans, IdDocumento, Fecha, Referencia, Total, Aplicado)

select 	h.idSuplidor,

	e.Nombre as Suplidor,

	tt.Abrev,

	h.idTrans,

	h.idDocumento,

	h.Fecha,

	h.Referencia,

/*	Status = case 

		  when (t.Status = 'C' and t.FechaStatus <= @final) then '**CANCELADO**'

		  else ''

	end, */

	h.Total,

	isnull(sum(d.Valor),0) as Aplicado

from cxpDocumentos h join TiposTrans tt

  on h.idTrans = tt.idTrans and tt.Sistema = 'CXP'

join cxpSuplidores e on h.idSuplidor = e.idSuplidor 

left join cxpDocumentosDtl d

  on h.idDocumento = d.idDocumento and d.Fecha <= @final   

where 	h.MostrarEnCXP = 1 

	--and h.idSuplidor = @idEnt

 	--and h.idMoneda = @idMon

	and h.Fecha <= @final

	and tt.debcre = 1

	and h.Status <> 'C'

group by h.idSuplidor, e.Nombre, tt.Abrev, h.idtrans, h.idDocumento, 

         h.Fecha, h.Referencia, h.Total

having h.Total <> isnull(sum(d.valor),0)

	

select 	e.*, 

	Pendiente = (isnull(Total,0.00) - Aplicado) 

from @estado e 

order by Suplidor, Fecha, idDocumento

return 0




GO
GO
-- >>> FIN: cxpCRNoDistribAll.sql <<<

-- >>> INICIO: cxpDetCRNoDistrib.sql <<<
CREATE OR ALTER PROCEDURE cxpDetCRNoDistrib  

  @idEnt int,  

  @final datetime  

as  

declare @estado table (  

 LineaNo int not null identity,  

 Tipo varchar(10),  

 idTrans int,  

 IdDocumento int,  

 Fecha datetime,  

 Referencia varchar(20),  

 Status varchar(20),   

 Total decimal(19,2),  

 Aplicado decimal(19,2)  

)  

insert into @estado  

(Tipo, IdTrans, IdDocumento, Fecha, Referencia, Total, Aplicado)  

select  tt.Abrev,  

 h.idTrans,  

 h.idDocumento,  

 h.Fecha,  

 h.Referencia,  

/* Status = case   

    when (t.Status = 'C' and t.FechaStatus <= @final) then '**CANCELADO**'  

    else ''  

 end, */  

 h.Total,  

 isnull(sum(d.Valor * d.tasa),0) / h.Tasa as Aplicado  

from cxpDocumentos h join TiposTrans tt  

  on h.idTrans = tt.idTrans and tt.Sistema = 'CXP'  

left join cxpDocumentosDtl d  

  on h.idDocumento = d.idDocumento and d.Fecha <= @final     

where  h.MostrarEnCXP = 1   

 and h.idSuplidor = @idEnt  

  --and h.idMoneda = @idMon  

 and h.Fecha <= @final  

 and tt.debcre = 1  

 and h.Status <> 'C'  

group by tt.Abrev, h.idtrans, h.idDocumento, h.Fecha, h.Referencia, h.Total  , h.Tasa 

having h.Total <> isnull(sum(d.valor),0)  

   

select  e.*,   

 Pendiente = (isnull(Total,0.00) - Aplicado)   

from @estado e   

where (isnull(Total,0.00) <>  Aplicado)

order by Fecha, idDocumento  

return 0  

  

  
GO
GO
-- >>> FIN: cxpDetCRNoDistrib.sql <<<

-- >>> INICIO: cxpDocsPendientes.sql <<<
CREATE OR ALTER PROCEDURE cxpDocsPendientes

 --@idTr int,

 @idEnt int

AS

 select	t.idTrans,

	t.idDocumento,

	t.Referencia,  

	t.Fecha,

	t.Total as Valor,

	tt.Abrev,

	t.idMoneda, 

	t.tasa, 

	Pagado = isnull((select sum(d.valor) from cxpDocumentosDtl d

		   join cxpDocumentos s on d.idDocumento = s.idDocumento 

		 where 	d.idDocXPagar = t.idDocumento 

			and s.Status <> 'C'),$0),

	TotalRetenciones = isnull((select sum(porcentaje) from cxpDocRetencion where idDocumento = t.idDocumento),0.0000),

	t.idCuenta 

 from cxpDocumentos t join TiposTrans tt

  on t.idTrans = tt.idTrans and tt.Sistema = 'CXP'

 where t.idSuplidor = @idEnt 

	and tt.DebCre = 2

	and t.Status <> 'C'

 --group by t.idTrans, t.idDocumento, t.Relacion, t.Fecha, t.Total

 and isnull((select sum(d.valor) from cxpDocumentosDtl d

		   join cxpDocumentos s on d.idDocumento = s.idDocumento 

		 where 	d.idDocXPagar = t.idDocumento

			and s.Status <> 'C'),$0) < t.Total

return 0








GO
GO
-- >>> FIN: cxpDocsPendientes.sql <<<

-- >>> INICIO: cxpDocsPendientesCC.sql <<<
CREATE OR ALTER PROCEDURE cxpDocsPendientesCC

 @hasta datetime

as

 

declare @desde datetime

 

--set @desde = '04/01/2008'

--set @hasta = '04/30/2008'



declare @cargos table (

 idDocumento int,

 Suplidor varchar(200), 

 GUIDDocumento uniqueidentifier,

 Referencia varchar(20),

 Fecha datetime, 

 idCentroCosto uniqueidentifier,

 Total decimal(19,2),

 idMoneda int,

 Tasa float,

 Pagado decimal(19,2)

 )



insert into @cargos 

select h.idDocumento,

	   h.Nombre, 

	   h.GuidDocumento, 

	   h.Referencia,

	   h.Fecha,	   

	   idCentroCosto = (select top 1 idCentroCosto from cxpDocCuentas where iddocumento = h.idDocumento and idCentroCosto is not null), 

	   h.Total,	   

	   h.idMoneda,

	   h.Tasa,

	   Pagado = isnull((select sum(d.valor) 

						from cxpDocumentosDtl d join cxpDocumentos s on d.idDocumento = s.idDocumento 

						where d.idDocXPagar = h.idDocumento 

						and s.Status <> 'C' and d.Fecha <= @hasta),0.00) 

from cxpDocumentos h 

where h.idTrans = 1 and h.fecha <= @hasta 

	  and h.status <> 'C'	    

 

select --c.Guiddocumento,

	   c.Suplidor, 

	   c.Referencia,

	   c.Fecha,

	   m.Moneda,	   

	   --c.idCentroCosto, 

	   Proyecto = cc.CentroCosto,

	   c.Tasa,

	   c.Total,

	   c.Pagado,

	   Pendiente = Total - Pagado

from @cargos c join CentroCosto cc on c.idCentroCosto = cc.idCentroCosto 

    join moneda m on c.idmoneda = m.idmoneda     

where Total > Pagado

	  and c.idCentroCosto is not null 

order by c.idMoneda, c.Fecha, c.Referencia 

return 0 


GO
GO
-- >>> FIN: cxpDocsPendientesCC.sql <<<

-- >>> INICIO: cxpDocsPendientesMigracion.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxpDocsPendientesMigracion]

 @final datetime

as

declare

 @ident int, 

 @persize int,

 @Vencimiento bit



--set @final = '08/31/2008'

set @persize = 30

set @Vencimiento = 0

set @ident = 0



--exec cxpAgingVencimiento @final, 0, @perSize, @Vencimiento



declare @ents table (

  idSuplidor int ,

  idMoneda int, 

  Nombre varchar(100), 

  MontoNoDistr decimal(19,2),

  Balance decimal(19,2),

  TipoSuplidor varchar(100)

)



declare @mons table (

  idMoneda int,

  Balance decimal(19,2))

declare @tiposup table (

 idMoneda int,

 TipoSuplidor varchar(100),

 Balance decimal(19,2))



select 	t.idSuplidor, 

	t.idMoneda,

	m.Moneda,

	t.idTrans,

	t.IdDocumento,

	t.CompFiscal, 

	Dias = case @Vencimiento when 1 then datediff(day, isnull(t.Vencimiento,Fecha), @final) else datediff(day, t.Fecha, @final) end, 

	t.Referencia as Factura, 

	IDRow = idDocumento,

	t.Fecha,

	isnull(t.Vencimiento, t.fecha) as Vencimiento, 

	t.FechaEmision, 

	t.Total ,

	Pagado = isnull((select sum(d.Valor) from cxpDocumentosDtl d

			   join cxpDocumentos s on d.idDocumento = s.idDocumento

			   where d.idDocXPagar = t.idDocumento 

				 and (s.Status <> 'C' or (s.status = 'C' and isnull(s.FechaStatus,s.fecha) > @final))

                                 and d.fecha <= @final

				 and s.MostrarEnCXP = 1),0.00)

into #tempcxp

from cxpDocumentos t join Moneda m on t.idMoneda = m.idMoneda

  join TiposTrans tt on t.idTrans = tt.idTrans and tt.Sistema = 'CXP'

where dbo.IncluirPorVencimiento(t.Fecha, t.Vencimiento, @Vencimiento, @final) = 1 

      and MostrarEnCXP = 1  

      and t.Status <> 'C' 

      and (@idEnt = 0 or t.idSuplidor = @idEnt)

	and tt.DebCre = 2 

	and t.Total <> isnull((select sum(d.Valor) from cxpDocumentosDtl d

			   join cxpDocumentos s on d.idDocumento = s.idDocumento

			   where d.idDocXPagar = t.idDocumento 

				 and d.fecha <= @final

				 and (s.Status <> 'C' or (s.status = 'C' and isnull(s.FechaStatus,s.fecha) > @final))

				 and s.MostrarEnCXP = 1),$0) 



insert into @ents (idSuplidor, idMoneda, Nombre, TipoSuplidor) 

select distinct 

	t.idSuplidor, 

	t.idMoneda, 

	e.Nombre,

	isnull(ts.Descripcion,'TIPO DE SUPLIDOR NO DEFINIDO') as Descripcion 

from #tempcxp t join cxpSuplidores e

  on t.idSuplidor = e.idSuplidor

left join cxpTiposSuplidor ts on e.TipoSuplidor = ts.TipoSuplidor



update @ents

  set MontoNoDistr = dbo.cxpCreditosNoDistr(t.idSuplidor,t.idMoneda, @final),

      Balance = (select sum(d.Total - d.Pagado) 

				  from #tempcxp d 

				  where d.idSuplidor = t.idSuplidor and d.idMoneda = t.idMoneda) - dbo.cxpCreditosNoDistr(t.idSuplidor,t.idMoneda, @final)

from @ents t



insert into @mons (idMoneda, Balance)

select  idMoneda,

	sum(balance)

from @ents

group by idMoneda



insert into @tiposup (idMoneda, TipoSuplidor, Balance)

select  idMoneda,

	TipoSuplidor,

	sum(balance)

from @ents

group by idMoneda, TipoSuplidor



select 	

	t.Moneda, 		

	e.idSuplidor,

	e.Nombre,	

	d.RNC,

	NCF = d.CompFiscal,		

	t.Factura, 

	t.Fecha,

	t.Total,

	t.Pagado,

	BalanceDoc = t.Total - t.Pagado,

	ITBIS = dbo.cxpTotalITBISDoc(t.idDocumento), 

	BalanceNeto = (t.Total - t.Pagado) - (dbo.cxpTotalITBISDoc(t.idDocumento) - (((dbo.cxpTotalITBISDoc(t.idDocumento) / t.Total))* t.Pagado)),

	d.Tasa 

from #tempcxp t join @ents e 

  on t.idSuplidor = e.idSuplidor and t.idMoneda = e.idMoneda

  join cxpDocumentos d on t.idDocumento = d.idDocumento   

 order by t.Moneda, e.Nombre , t.fecha, t.Factura 



drop table #tempcxp

return 0


GO
GO
-- >>> FIN: cxpDocsPendientesMigracion.sql <<<

-- >>> INICIO: cxpDocumentoFind.sql <<<
CREATE OR ALTER PROCEDURE cxpDocumentoFind

 @desde datetime, @hasta datetime, @mask varchar(100), @idTrans int 

as

  select d.idDocumento,

	 d.Referencia,

	 d.Fecha,

	 d.Total,

	 s.Telefono1,

	 d.Nombre,

	 d.RNC,

	 d.Concepto,

	 d.Compfiscal 

  from cxpDocumentos d left join cxpSuplidores s 

   on d.idSuplidor = s.idSuplidor

  where d.fecha between @desde and @hasta 

	and d.idTrans = @idTrans

	and (d.Referencia like '%' + @mask + '%'

	     or d.Nombre like '%' + @mask + '%'

	     or d.RNC like '%' + @mask + '%'

	     or d.Concepto like '%' + @mask + '%'

	     or d.Compfiscal like '%' + @mask + '%'

	     or s.Telefono1 like '%' + @mask + '%')

  order by d.Fecha desc    

return 


GO
GO
-- >>> FIN: cxpDocumentoFind.sql <<<

-- >>> INICIO: cxpDocumentoRecPendiente.sql <<<
CREATE OR ALTER PROCEDURE cxpDocumentoRecPendiente

 @fecha datetime,

 @todos bit 

as

 select h.iddocumento,

	h.idSuplidor,

	h.Suplidor,

	h.Valor,

	h.idMoneda,

	m.Moneda,

	h.Concepto,

	h.Referencia,

	h.GenerarDia,

	h.Desde, 

	h.Hasta

 from cxpDocumentoRec h join moneda m on h.idmoneda = m.idMoneda

 where h.Status = 'ACTIVO'

	and @fecha between h.Desde and h.Hasta

	and (@todos = 1 or 

		(h.GenerarDia <= Day(@fecha) 

		 and not exists (select 1 from cxpdocumentorecHist

			          where iddocumento = h.iddocumento

					and Month(Fecha) = Month(@Fecha)

					and Year(Fecha) = Year(@Fecha))))

 order by h.GenerarDia

return 




GO
GO
-- >>> FIN: cxpDocumentoRecPendiente.sql <<<

-- >>> INICIO: cxpDocumentoRpt.sql <<<
CREATE OR ALTER PROCEDURE cxpDocumentoRpt (@idDoc int)

as  

  select d.*,  

  s.Telefono1,  

  s.Telefono2,   

  s.Fax,  

  s.Direccion,  

  s.Nombre,  

  s.RNC,  

  s.PedirNCF,

  tt.Descripcion As ttDescripcion,  

  tt.DebCre As ttDebCre,

  tt.Abrev As ttAbrev,   

  TotalRetenciones = isnull((select sum(porcentaje) from cxpDocRetencion where idDocumento = @idDoc),0.00),

 c.idAuxiliar,   

 cc.Descripcion,  

 c.DebCre,  

 c.Automatica,  

 case c.debcre  

     when 1 then c.valor

  else 0.00  

 end as Debito,  

 case c.debcre   

  when 2 then c.valor

  else 0.00  

 end as Credito,

 Moneda



  from cxpDocumentos d join TiposTrans tt   

   on d.idTrans = tt.idTrans and tt.Sistema = 'CXP' 

   left join cxpSuplidores s on d.idSuplidor = s.idSuplidor 

   Left Join cxpDocCuentas c on (c.iddocumento = d.iddocumento)

   Left Join cgCatalogoCuentas cc on (cc.idcuenta = c.idcuenta)

   Left Join Moneda m on (m.idmoneda = d.idmoneda)

    

  where d.idDocumento = @idDoc  

return @@ERROR  




GO
GO
-- >>> FIN: cxpDocumentoRpt.sql <<<

-- >>> INICIO: cxpEstadoCuenta.sql <<<
CREATE OR ALTER PROCEDURE cxpEstadoCuenta 

  @idEnt int,

  @final datetime

as

declare @estado table (

 LineaNo int not null identity,

 Tipo varchar(10),

 idTrans int,

 IdDocumento int,

 Fecha datetime,

 Referencia varchar(20),

 Status varchar(20), 

 Debito decimal(19,2),

 Credito decimal(19,2)

)

insert into @estado

(Tipo, IdTrans, IdDocumento, Fecha, Referencia, Status, Debito, Credito)

select 	tt.Abrev,

	t.idTrans,

	t.idDocumento,

	t.Fecha,

	t.Referencia,

	Status = case 

		  when (t.Status = 'C' and t.FechaStatus <= @final) then '**CANCELADO**'

		  else ''

	end, 

	case tt.DebCre 

	  when 2 then 

		case 

		  when (t.Status <> 'C' or t.FechaStatus > @final) then t.Total

		  else 0.00

		end

	  else 0.00

	end as Debito,

	case tt.DebCre 

	  when 1 then 

		case 

		  when (t.Status <> 'C' or t.FechaStatus > @final) then t.Total

		  else 0.00

		end

	  else 0.00

	end as Credito

 from cxpDocumentos t 

  join TiposTrans tt on t.idTrans = tt.IdTrans and tt.Sistema = 'CXP'

  where t.idSuplidor = @idEnt 	

	and t.Fecha <= @final  

	and t.MostrarEnCXP = 1

order by t.Fecha, t.idDocumento

select 	e.*,

	Balance = isnull((select sum(Debito - Credito) from @estado

			 where LineaNo <= e.LineaNo),0.00)

from @estado e 

return 0




GO
GO
-- >>> FIN: cxpEstadoCuenta.sql <<<

-- >>> INICIO: cxpEstadoCuentaEx.sql <<<
CREATE OR ALTER PROCEDURE cxpEstadoCuentaEx  

  @idEnt int,  

  @desde datetime,   

  @final datetime  

as  

declare @bi decimal(19,2)  

declare @estado table (  

 LineaNo int not null identity,  

 Tipo varchar(10),  

 idTrans int,  

 IdDocumento int,  

 Fecha datetime,  

 Referencia varchar(20),  

 Status varchar(20),   

 Debito decimal(19,2),  

 Credito decimal(19,2),

 idMoneda varchar(10)

)  

select  @bi =   

 sum (case tt.DebCre   

   when 2 then t.Total   

    else -t.Total    

 end)   

 from cxpDocumentos t   

  join TiposTrans tt on t.idTrans = tt.IdTrans and tt.Sistema = 'CXP'  

  where t.idSuplidor = @idEnt    

 and t.Fecha < @desde  

 and t.Status <> 'C'  

 and t.MostrarEnCXP = 1  

if @bi <> 0.00  

begin   

  insert into @estado  

   (Tipo, IdTrans, IdDocumento, Fecha, Referencia, Status, Debito, Credito,idMoneda)  

  values   

   ('B/I',  

    null,  

    null,  

    @desde - 1,   

    'n/a',  

    '',  

    case when @bi > 0.00 then @bi else 0.00 end,  

    case when @bi <= 0.00 then @bi else 0.00 end

    ,''

   )  

end  

insert into @estado  

(Tipo, IdTrans, IdDocumento, Fecha, Referencia, Status, Debito, Credito,idMoneda)  

select  tt.Abrev,  

 t.idTrans,  

 t.idDocumento,  

 t.Fecha,  

 t.Referencia,  

 Status = case   

    when (t.Status = 'C' and t.FechaStatus <= @final) then '**CANCELADO**'  

    else ''  

 end,   

 case tt.DebCre   

   when 2 then   

  case   

    when (t.Status <> 'C' or t.FechaStatus > @final) then t.Total  

    else 0.00  

  end  

   else 0.00  

 end as Debito,  

 case tt.DebCre   

   when 1 then   

  case   

    when (t.Status <> 'C' or t.FechaStatus > @final) then t.Total  

    else 0.00  

  end  

   else 0.00  

 end as Credito,

 (select moneda from moneda m where m.idmoneda=t.idmoneda) as idmoneda

 from cxpDocumentos t   

  join TiposTrans tt on t.idTrans = tt.IdTrans and tt.Sistema = 'CXP'  

  where t.idSuplidor = @idEnt    

 and t.Fecha between @desde and @final    

 and t.MostrarEnCXP = 1  

order by t.idmoneda,t.Fecha, t.idDocumento  

select  e.*,  

 Balance = isnull((select sum(Debito - Credito) from @estado  

    where LineaNo <= e.LineaNo),0.00)  

from @estado e   

return 0  

  
GO
GO
-- >>> FIN: cxpEstadoCuentaEx.sql <<<

-- >>> INICIO: cxpEstadoCuentaVencidos.sql <<<
CREATE OR ALTER PROCEDURE cxpEstadoCuentaVencidos

  @idEnt int,

  @final datetime,

  @venc bit = 0

as

declare @estado table (

 LineaNo int not null identity,

 Tipo varchar(10),

 idTrans int,

 IdDocumento int,

 Fecha datetime,

 Referencia varchar(20),

 Status varchar(20), 

 Total decimal(19,2),

 Pagado decimal(19,2),

 Dias int 

)

insert into @estado

(Tipo, IdTrans, IdDocumento, Fecha, Referencia, Status, Total, Pagado, Dias)

select 	tt.Abrev,

	t.idTrans,

	t.idDocumento,

	t.Fecha,

	t.Referencia,

	Status = case 

		  when (t.Status = 'C' and t.FechaStatus <= @final) then '**CANCELADO**'

		  else ''

	end, 

	case 

	  when (t.Status <> 'C' or t.FechaStatus > @final) then t.Total

	  else 0.00

	end as Total,

	Pagado = isnull((select sum(d.Valor) from cxpDocumentosDtl d

			   join cxpDocumentos s on d.idDocumento = s.idDocumento

			   where d.idDocXPagar = t.idDocumento 

				 and s.Fecha <= @final

				 and s.Status <> 'C'

				 and s.MostrarEnCXP = 1),$0),

	Dias = (datediff(day, t.Fecha, getdate()))

 from cxpDocumentos t 

  join TiposTrans tt on t.idTrans = tt.IdTrans and tt.Sistema = 'CXP'

  join cxpSuplidores s on t.idSuplidor = s.idSuplidor 

  where t.idSuplidor = @idEnt 	

	and t.Fecha <= @final  

	and tt.DebCre = 2

	and (@venc = 0 or (datediff(day, t.Fecha, getdate()) > s.DiasCredito))

	and t.MostrarEnCXP = 1 

	and isnull((select sum(d.Valor) from cxpDocumentosDtl d

			   join cxpDocumentos s on d.idDocumento = s.idDocumento

			   where d.idDocXPagar = t.idDocumento 

				 and s.Fecha <= @final

				 and s.Status <> 'C'

				 and s.MostrarEnCXP = 1),$0) <> t.Total

--order by t.Fecha, t.idDocumento

select 	e.*, 

	Balance = (isnull(Total,0.00) - Pagado) 

from @estado e 

order by Fecha, idDocumento

return 0




GO
GO
-- >>> FIN: cxpEstadoCuentaVencidos.sql <<<

-- >>> INICIO: cxpGenED.sql <<<
CREATE OR ALTER PROCEDURE cxpGenED

 @Desde datetime,

 @Hasta datetime,

 @NumED varchar(3),

 @idTr int,

 @usuario varchar(30)

as

--declare @numed varchar(3) set @numed = 'CP'

exec cgLimpiarIntermedio @NumED, @Hasta



insert into cgEDIntermedio

 (EntradaNum, Fecha, idCuenta, idAuxiliar, DebCre, Valor, Referencia, Descripcion)

select 	@numed,

       	@Hasta,

       	d.idCuenta,

		d.idAuxiliar,

      	d.DebCre,

		d.Valor,

		tt.Abrev + '-' + convert(varchar(15), h.Referencia),

		convert(varchar(50), s.nombre)

from 

   cxpDocumentos h 

   join cxpDocCuentas d on h.idDocumento = d.idDocumento

   left join cxpsuplidores s on h.idsuplidor = s.idsuplidor

   left join TiposTrans tt on h.idTrans = tt.idTrans and tt.Sistema = 'CXP' 

where h.fecha between @desde and @Hasta

	  and h.idTrans = @idTr

	  and ((isnull(h.Status,'A') <> 'C') or ((isnull(h.Status,'A') = 'C') and (h.fechastatus > @hasta)))

       

exec cgImportarEntradaDiario @numed, @Hasta, @Usuario



return @@ERROR




GO
GO
-- >>> FIN: cxpGenED.sql <<<

-- >>> INICIO: cxpGenEDCheques.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxpGenEDCheques] 

 @desde datetime,

 @hasta datetime,

 @Usuario varchar(30),

 @ED varchar(4) 

as

 declare @err int

 declare @numed varchar(6)



 select @numed = @ED --convert(varchar,valor)

 --from defaults

 --where clave = 'NUMED_CHEQUES'



 exec @err = cxpGenED @desde, @hasta, @numed, 20, @usuario



return isnull(@ERR,0)






GO
GO
-- >>> FIN: cxpGenEDCheques.sql <<<

-- >>> INICIO: cxpGenEDCksCancelados.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxpGenEDCksCancelados]

 @Desde datetime,

 @Hasta datetime,

 @Usuario varchar(30),

 @ED varchar(4)

as

declare @numed varchar(12) --set @numed = '09C'

declare @idTr int set @idTr = 20



 select @numed = @ED --convert(varchar,valor)

 --from defaults

 --where clave = 'NUMED_CKCAN'



exec cgLimpiarIntermedio @NumED, @Hasta



insert into cgEDIntermedio

 (EntradaNum, Fecha, idCuenta, DebCre, Valor, Referencia, Descripcion)

select 	

	@numed,

    @Hasta,

    d.idCuenta,

    case d.DebCre when 2 then 1 else 2 end as DebCre,

	d.Valor,

	tt.Abrev + '-' + convert(varchar(15), h.Referencia),

	convert(varchar(50), s.nombre)

from 

   cxpDocumentos h 

   join cxpDocCuentas d on h.idDocumento = d.idDocumento

   left join cxpsuplidores s on h.idsuplidor = s.idsuplidor

  left join TiposTrans tt on h.idTrans = tt.idTrans and tt.Sistema = 'CXP' 

where h.fecha < @desde 

	  and h.idTrans = @idTr

	  and h.Status = 'C'

	  and h.FechaStatus between @desde and @hasta



 exec cgImportarEntradaDiario @numed, @Hasta, @Usuario 

return @@ERROR






GO
GO
-- >>> FIN: cxpGenEDCksCancelados.sql <<<

-- >>> INICIO: cxpGenEDCXP.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxpGenEDCXP]

 @Desde datetime,

 @Hasta datetime,

 @usuario varchar(30),

 @ED varchar(16) 

as

declare @numed varchar(10) --set @numed = '11'



 select @numed = @ED --convert(varchar,valor)

 --from defaults

 --where clave = 'NUMED_CXP'



exec cgLimpiarIntermedio @NumED, @Hasta



insert into cgEDIntermedio

 (EntradaNum, Fecha, idCuenta, DebCre, Valor, Referencia, Descripcion)

select 	@numed,

       	@Hasta,

       	d.idCuenta,

       	d.DebCre,

	d.Valor,

	h.Referencia,

	SUBSTRING(s.Nombre,1,25) + '[' + SUBSTRING(h.Concepto,1,23)+']'

from 

  cxpDocumentos h 

  join cxpDocCuentas d on h.idDocumento = d.idDocumento

  join cxpsuplidores s on h.idsuplidor = s.idsuplidor

  left join TiposTrans tt on h.idTrans = tt.idTrans and tt.Sistema = 'CXP'

where h.fecha between @desde and @Hasta

	  and h.idTrans <> 20

	  and isnull(h.Status,'A') <> 'C'



 exec cgImportarEntradaDiario @numed, @Hasta, @usuario



exec

  cxpPostearCostos @Desde, @Hasta



return @@ERROR






GO
GO
-- >>> FIN: cxpGenEDCXP.sql <<<

-- >>> INICIO: cxpGenerarCheque.sql <<<
CREATE OR ALTER PROCEDURE dbo.cxpGenerarCheque

    @idSol INT,

    @ctabanco INT,

    @fecha DATETIME,

    @iddoc INT OUTPUT

AS

    DECLARE @CTASUP VARCHAR(16)    

    DECLARE @idTrans INT

    SET @idTrans = 20    

    DECLARE @st CHAR(1)    

    DECLARE @total_ret DECIMAL(19, 2)    

    DECLARE @MONEDA_LEGAL INT    

    DECLARE @err INT,

        @conc VARCHAR(6000),

        @ident INT,

        @numck INT,

        @idMoneda INT,

        @NotaAdicional VARCHAR(100),

        @idCuenta VARCHAR(16),

        @Valr DECIMAL(19, 2),

        @idAuxBco VARCHAR(16),

        @idAuxSup VARCHAR(16),

        @cxp BIT,

        @GUIDSol UNIQUEIDENTIFIER,

        @tasa FLOAT,

        @RNC VARCHAR(20),

        @Nombre VARCHAR(100),

        @TipoGasto VARCHAR(16),

        @idTipoIdent VARCHAR(2),

        @idFormaPago INT

	    

    SELECT TOP 1

            @MONEDA_LEGAL = idMoneda

    FROM    Moneda

    WHERE   CursoLegal = 1    

   

    SELECT  @conc = SUBSTRING(Concepto, 1, 600),

            @Valr = Total,

            @ident = idSuplidor,

            @st = Status,

            @NotaAdicional = NotaAdicional,

            @cxp = mostrarEncxp,

			@idFormaPago = IdPagoForma, 

            @GUIDSol = GUIDSolicitud,

            @tasa = Tasa,

            @TipoGasto = TipoGasto

    FROM    cxpSolicitudes

    WHERE   idSolicitud = @idSol    

     

    IF @cxp = 1

        SET @total_ret = dbo.cxpRetencionXSolicitud(@idSol)    

    ELSE

        SET @total_ret = 0.00    

    SET @iddoc = 0    

    

    SELECT  @CTASUP = idCuenta,

            @idAuxSup = idAuxiliar,

            @Nombre = Nombre,

            @idTipoIdent = idTipoIdentificacion,

            @RNC = RNC

    FROM    cxpSuplidores

    WHERE   idSuplidor = @ident    

  

    IF (@Valr > 0)

        AND (@st = 'A')

        BEGIN    

            BEGIN TRANSACTION    

      

            UPDATE  cxpBancos

            SET     UltimoCheque = UltimoCheque + 1

            WHERE   idCuentaBanco = @ctabanco       

      

            SELECT  @numck = UltimoCheque,

                    @idCuenta = idCuentaMayor,

                    @idAuxBco = idAuxiliar,

                    @idMoneda = idMoneda

            FROM    cxpBancos

            WHERE   idCuentaBanco = @ctabanco    

       

    -- ... y generar el header     

            EXEC @err = cxpGuardarDocumento 0, @idTrans, @Fecha, @ident,

                @numck, @Valr, 0.00, 0.00, @total_ret, @conc, @idMoneda, 1,

                @idCuenta, @idAuxBco, 'P', @Fecha, @Ctabanco, 'S', @idSol, 0,

                @cxp, NULL, @NotaAdicional, 0, 0, @idFormaPago, @idDoc OUTPUT,

                NULL, NULL, @tasa, @idTipoIdent, @RNC, @Nombre, @Fecha, @Fecha,

                @TipoGasto    

    --  set @err = @@ERROR    

            IF @err > 0

                BEGIN    

                    ROLLBACK TRANSACTION     

                    RETURN @err    

                END    

      

            IF @cxp = 0

                BEGIN    

                    INSERT  INTO cxpDocCuentas

                            (idDocumento,

                             DebCre,

                             idCuenta,

                             idAuxiliar,

                             Valor,

                             idCentroCosto,

                             CentroCosto,

                             idPartida

                            )

                            SELECT  @iddoc AS IdDocumento,

                                    DebCre,

                                    idCuenta,

                                    idAuxiliar,

                                    Valor,

                                    idCentroCosto,

                                    CentroCosto,

                                    idPartida

                            FROM    cgCodificacion

                            WHERE   GUIDDocumento = @GUIDSol    

        

                END    

            ELSE

                BEGIN    

     

                    INSERT  INTO cxpDocCuentas

                            (idDocumento,

                             DebCre,

                             idCuenta,

                             idAuxiliar,

                             Valor

                            )

                    VALUES  (@iddoc,

                             2,

                             @idCuenta,

                             @idAuxBco,

                             @Valr - @total_ret

                            )    

       

                    SET @err = @@ERROR    

                    IF @err > 0

                        BEGIN    

                            ROLLBACK TRANSACTION     

                            RETURN @err    

                        END    

       

                    INSERT  INTO cxpDocCuentas

                            (idDocumento,

                             DebCre,

                             idCuenta,

                             Valor

                            )

                            SELECT  @iddoc,

                                    2,

                                    tr.idCuenta,

                                    SUM(ROUND(((dd.Valor * d.Tasa) / s.Tasa),

                                              2))

                            FROM    cxpSolicitudes s

                                    JOIN cxpSolicitudesDtl d ON s.idSolicitud = d.idSolicitud

                                    JOIN cxpDocumentos doc ON d.idDocumento = doc.idDocumento

                                    JOIN cxpSolicitudRet dd ON s.idSolicitud = dd.idSolicitud

                                                              AND d.idDocumento = dd.idDocumento

                                    JOIN cxpRetencion tr ON dd.idRetencion = tr.idRetencion

                            WHERE   s.idSolicitud = @idSol

                            GROUP BY tr.idCuenta    

      

                    IF ISNULL(@tasa, 0) > 1

                        AND (@idMoneda <> @MONEDA_LEGAL)

                        BEGIN    

                            INSERT  INTO cxpDocCuentas

                                    (idDocumento,

                                     DebCre,

                                     idCuenta,

                                     Valor

                                    )

                                    SELECT  @iddoc,

                                            c.DebCre,

                                            p.idCuentaPrima,

                                            c.Valor * (@tasa - 1)

                                    FROM    cxpDocCuentas c

                                            JOIN cgCuentaPrima p ON c.idCuenta = p.idCuenta

                                                              AND p.idMoneda = @idMoneda

                                    WHERE   c.idDocumento = @iddoc    

                        END     

      

                    INSERT  INTO cxpDocCuentas

                            (idDocumento,

                             DebCre,

                             idCuenta,

                             Valor

                            )

                            SELECT  @iddoc,

                                    1 AS DebCre,

                                    idCuenta,

                                    Debito

                            FROM    dbo.cxpCodificarPagoDocs(@idSol)  

       

     -- Registrar documentos a los que se aplica el cheque    

                    INSERT  INTO cxpDocumentosDtl

                            (idDocumento,

                             IdDocXPagar,

                             Fecha,

                             Valor,

                             Tasa

                            )

                            SELECT  @iddoc,

                                    d.idDocumento,

                                    @fecha,

                                    d.Valor,

                                    d.Tasa

                            FROM    cxpSolicitudesDtl d

                            WHERE   d.idSolicitud = @idSol    

                    SET @err = @@ERROR    

                    IF @err > 0

                        BEGIN    

                            ROLLBACK TRANSACTION     

                            RETURN @err    

                        END    

                    INSERT  INTO cxpPagoRetencion

                            (idDocumento,

                             idDocXPagar,

                             Valor,

                             Porcentaje,

                             idRetencion,

                             Retencion,

                             idPagoRetencion,

							 idTipoRetencionDGII

                            )

                            SELECT  @iddoc,

                                    idDocumento,

                                    Valor,

                                    Porcentaje,

                                    idRetencion,

                                    Retencion,

                                    NEWID(),

									idTipoRetencionDGII

                            FROM    cxpSolicitudRet

                            WHERE   idSolicitud = @idSol    

                END    

  -- Actualizar las solicitudes con el cheque que las pago    

            UPDATE  cxpSolicitudes

            SET     Status = 'P' --, FechaStatus = @fecha    

            WHERE   idSolicitud = @idSol    

            SET @err = @@ERROR    

            IF @err > 0

                BEGIN    

                    ROLLBACK TRANSACTION     

                    RETURN @err    

                END    

    -- mover el cheque al auxiliar de efectivo para que salga en la disponibilidad    

            EXEC @err = cxpMovCKAuxiliar @iddoc    

            IF @err > 0

                BEGIN    

                    ROLLBACK TRANSACTION     

                    RETURN @err    

                END    

   

            IF @cxp = 0

                BEGIN     

                    EXEC @err = cxpGenerarCostoChequeAbierto @iddoc  

                END  

      

            COMMIT TRANSACTION    

        END    

    RETURN 0    


GO
GO
-- >>> FIN: cxpGenerarCheque.sql <<<

-- >>> INICIO: cxpGenerarEntradas.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxpGenerarEntradas]

 @desde datetime,

 @hasta datetime,

 @cheques bit,

 @cxp bit,

 @ChequesCanc bit,

 @usuario varchar(30)

as

 declare @err int,

		 @inicio datetime 



 set @inicio = @desde

 while @inicio <= @hasta

 begin

   if @cxp = 1

   begin

     exec @err = cxpGenEDCXP @inicio, @Inicio, @usuario

   end

   if @cheques = 1

   begin

     exec @err = cxpGenEDCheques @inicio, @Inicio, @usuario

   end

   if @ChequesCanc = 1

   begin

     exec @err = cxpGenEDCksCancelados @inicio, @Inicio, @usuario 

   end

   set @inicio = dateadd(day,1,@inicio)

 end



return isnull(@ERR,0)






GO
GO
-- >>> FIN: cxpGenerarEntradas.sql <<<

-- >>> INICIO: cxpGenerarPagoACH.sql <<<
CREATE OR ALTER PROCEDURE dbo.cxpGenerarPagoACH

    @idSol INT,

    @iddoc INT OUTPUT

AS

    DECLARE @ctabanco INT,

        @fecha DATETIME,

        @TipoSol INT 

    DECLARE @CTASUP VARCHAR(16)

    DECLARE @idTrans INT 

    DECLARE @st CHAR(1)

    DECLARE @total_ret DECIMAL(19, 2)

    DECLARE @MONEDA_LEGAL INT

    DECLARE @idTipoIdent VARCHAR(2),

        @RNC VARCHAR(20),

        @Nombre VARCHAR(100),

        @idFormaPago INT

		

-- exec LeerParametro 'CTASUPLIDORES', @CTASUP output

    SELECT  @idTrans = CONVERT(INT, Valor)

    FROM    Defaults

    WHERE   Clave = 'CXP_TR_PAGOACH'	  	

    IF @idTrans IS NULL

        SET @idTrans = 29 

    DECLARE @err INT,

	-- @bl varchar(8000),

        @conc VARCHAR(6000),

        @ident INT,

        @numck INT,

        @idMoneda INT,

        @NotaAdicional VARCHAR(100),

        @idCuenta VARCHAR(16),		

        @Valr DECIMAL(19, 2),

        @idAuxBco VARCHAR(16),

        @idAuxSup VARCHAR(16),

        @cxp BIT,

        @GUIDSol UNIQUEIDENTIFIER,

        @TipoGasto VARCHAR(16),

        @tasa FLOAT

	 

    SELECT TOP 1

            @MONEDA_LEGAL = idMoneda

    FROM    Moneda

    WHERE   CursoLegal = 1

    SELECT  @fecha = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, GETDATE())))

    SELECT  @conc = Concepto,

            @Valr = Total,

            @ident = idSuplidor,

            @st = Status,

			@idFormaPago = idPagoForma, 

            @NotaAdicional = NotaAdicional,

            @cxp = mostrarEncxp,

            @GUIDSol = GUIDSolicitud,

            @tasa = Tasa,

            @ctabanco = idCuentaBanco,

            @TipoSol = TipoSolicitud,

            @TipoGasto = TipoGasto

    FROM    cxpSolicitudes

    WHERE   idSolicitud = @idSol

    IF @TipoSol = 3

        RETURN -98

    IF @st <> 'A'

        RETURN -99

    IF @cxp = 1

        SET @total_ret = dbo.cxpRetencionXSolicitud(@idSol)

    ELSE

        SET @total_ret = 0.00

    SET @iddoc = 0

    SELECT  @CTASUP = idCuenta,

            @idAuxSup = idAuxiliar,

            @idTipoIdent = idTipoIdentificacion,

            @RNC = RNC,

            @Nombre = Nombre

    FROM    cxpSuplidores

    WHERE   idSuplidor = @ident

    IF (@Valr > 0)

        AND (@st = 'A')

        BEGIN

            BEGIN TRANSACTION

            SELECT  @idCuenta = idCuentaMayor,

                    @idAuxBco = idAuxiliar,

                    @idMoneda = idMoneda

            FROM    cxpBancos

            WHERE   idCuentaBanco = @ctabanco

    -- ... y generar el header 

            EXEC spGetNextCounterINT 'PAGO_ACH', @numck OUTPUT

            EXEC @err = cxpGuardarDocumento 0, @idTrans, @fecha, @ident,

                @numck, @Valr, 0.00, 0.00, @total_ret, @conc, @idMoneda, 1,

                @idCuenta, @idAuxBco, 'P', @fecha, @ctabanco, 'S', @idSol, 0,

                @cxp, NULL, @NotaAdicional, 0, 0, @idFormaPago, @idDoc OUTPUT,

                NULL, NULL, @tasa, @idTipoIdent, @RNC, @Nombre, @fecha, @fecha,

                @TipoGasto 

    --  set @err = @@ERROR

            IF @err > 0

                BEGIN

                    ROLLBACK TRANSACTION 

                    RETURN @err

                END

            IF @cxp = 0

                BEGIN

                    INSERT  INTO cxpDocCuentas

                            (idDocumento,

                             DebCre,

                             idCuenta,

                             idAuxiliar,

                             Valor,

                             idCentroCosto,

                             CentroCosto,

                             idPartida

                            )

                            SELECT  @iddoc AS IdDocumento,

                                    DebCre,

                                    idCuenta,

                                    idAuxiliar,

                                    Valor,

                                    idCentroCosto,

                                    CentroCosto,

                                    idPartida

                            FROM    cgCodificacion

                            WHERE   GUIDDocumento = @GUIDSol

                END

            ELSE

                BEGIN

	    

	    --insert into cxpDocCuentas (Iddocumento, DebCre, IdCuenta, idAuxiliar, Valor)

	    --values (@iddoc, 1, @ctasup, @idAuxSup, @valr)

	    --set @err = @@ERROR

	    --if @err > 0

	    --begin

	      --rollback transaction 

	      --return @err

	    --end

	    --

                    INSERT  INTO cxpDocCuentas

                            (idDocumento,

                             DebCre,

                             idCuenta,

                             idAuxiliar,

                             Valor

                            )

                    VALUES  (@iddoc,

                             2,

                             @idCuenta,

                             @idAuxBco,

                             @Valr - @total_ret

                            )

                    SET @err = @@ERROR

                    IF @err > 0

                        BEGIN

                            ROLLBACK TRANSACTION 

                            RETURN @err

                        END

	    

                    INSERT  INTO cxpDocCuentas

                            (idDocumento,

                             DebCre,

                             idCuenta,

                             Valor

                            )

                            SELECT  @iddoc,

                                    2,

                                    tr.idCuenta,

                                    SUM(dd.Valor)

                            FROM    cxpSolicitudes s

                                    JOIN cxpSolicitudesDtl d ON s.idSolicitud = d.idSolicitud

                                    JOIN cxpDocumentos doc ON d.idDocumento = doc.idDocumento

                                    JOIN cxpSolicitudRet dd ON s.idSolicitud = dd.idSolicitud

                                                              AND d.idDocumento = dd.idDocumento

                                    JOIN cxpRetencion tr ON dd.idRetencion = tr.idRetencion

                            WHERE   s.idSolicitud = @idSol

                            GROUP BY tr.idCuenta

	   

                    IF ISNULL(@tasa, 0) > 1

                        AND (@idMoneda <> @MONEDA_LEGAL)

                        BEGIN

                            INSERT  INTO cxpDocCuentas

                                    (idDocumento,

                                     DebCre,

                                     idCuenta,

                                     Valor

                                    )

                                    SELECT  @iddoc,

                                            c.DebCre,

                                            p.idCuentaPrima,

                                            c.Valor * (@tasa - 1)

                                    FROM    cxpDocCuentas c

                                            JOIN cgCuentaPrima p ON c.idCuenta = p.idCuenta

                                                              AND p.idMoneda = @idMoneda

                                    WHERE   c.idDocumento = @iddoc

                        END 

	   

                    INSERT  INTO cxpDocCuentas

                            (idDocumento,

                             DebCre,

                             idCuenta,

                             Valor

                            )

                            SELECT  @iddoc,

                                    1 AS DebCre,

                                    idCuenta,

                                    Debito

                            FROM    dbo.cxpCodificarPagoDocs(@idSol)



	    -- Registrar documentos a los que se aplica el cheque

                    INSERT  INTO cxpDocumentosDtl

                            (idDocumento,

                             IdDocXPagar,

                             Fecha,

                             Valor,

                             Tasa

                            )

                            SELECT  @iddoc,

                                    d.idDocumento,

                                    @fecha,

                                    d.Valor,

                                    d.Tasa

                            FROM    cxpSolicitudesDtl d

                            WHERE   d.idSolicitud = @idSol

                    SET @err = @@ERROR

                    IF @err > 0

                        BEGIN

                            ROLLBACK TRANSACTION 

                            RETURN @err

                        END

                    INSERT  INTO cxpPagoRetencion

                            (idDocumento,

                             idDocXPagar,

                             Valor,

                             Porcentaje,

                             idRetencion,

                             Retencion,

                             idPagoRetencion,

                             idTipoRetencionDGII

                            )

                            SELECT  @iddoc,

                                    idDocumento,

                                    Valor,

                                    Porcentaje,

                                    idRetencion,

                                    Retencion,

                                    NEWID(),

                                    idTipoRetencionDGII

                            FROM    cxpSolicitudRet

                            WHERE   idSolicitud = @idSol

                    SET @err = @@ERROR

                    IF @err > 0

                        BEGIN

                            ROLLBACK TRANSACTION 

                            RETURN @err

                        END

                END

  -- Actualizar las solicitudes con el cheque que las pago

            UPDATE  cxpSolicitudes

            SET     Status = 'P' --, FechaStatus = @fecha

            WHERE   idSolicitud = @idSol

            SET @err = @@ERROR

            IF @err > 0

                BEGIN

                    ROLLBACK TRANSACTION 

                    RETURN @err

                END

    -- mover el cheque al auxiliar de efectivo para que salga en la disponibilidad

            EXEC @err = cxpMovPagoAuxiliar @iddoc

            IF @err > 0

                BEGIN

                    ROLLBACK TRANSACTION 

                    RETURN @err

                END



            IF @cxp = 0

                BEGIN 	

                    EXEC @err = cxpGenerarCostoChequeAbierto @iddoc 

                END

    

            COMMIT TRANSACTION

        END

    RETURN 0


GO
GO
-- >>> FIN: cxpGenerarPagoACH.sql <<<

-- >>> INICIO: cxpGenSolicitudCuentas.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxpGenSolicitudCuentas]  

 @idSol int,  

 @CtaBanco int   

as  

 declare @Cuentas table (  

         idCuenta varchar(16),  

       idAuxiliar varchar(16),  

         Debito decimal(19,2),  

         Credito decimal(19,2))  

  

 declare @CTASUP varchar(16),  

   @AuxSup varchar(16)  

  

 declare @idTrans int set @idTrans = 20  

 declare @st char(1)  

 declare @total_ret decimal(19,2)  

 declare @idmoneda int,  

   @tasa decimal(19,2)  

     

-- exec LeerParametro 'CTASUPLIDORES', @CTASUP output  

 declare @err int,  

      @ident int,          

      @idCuenta varchar(16),  

      @Valr decimal(19,2),  

      @cxp bit,  

      @GUIDSol uniqueidentifier  

  

 select @Valr = Total ,  

     @ident = idSuplidor,  

     @St = Status,  

     @cxp = MostrarEnCXP,   

        @GUIDSol = GUIDSolicitud,  

  @idMoneda = idMoneda,  

  @tasa = Tasa  

   from cxpSolicitudes   

   where idSolicitud = @idSol  

     

  if (@cxp = 1)   

  begin  

    select @total_ret = dbo.cxpRetencionXSolicitud(@idSol)  

   

   --select @CtaSup = idCuenta  

    --from cxpSuplidores  

    --where idSuplidor = @idEnt  

      

   select @idCuenta = idCuentaMayor,  

         --@idMoneda = idMoneda,  

       @AuxSup = idAuxiliar   

   from cxpBancos    

   where idCuentaBanco = @ctaBanco  

      

   --insert into @Cuentas (IdCuenta,  idAuxiliar, Debito, Credito)  

    --values (@ctasup, @AuxSup, @valr, 0.00)  

      

   insert into @Cuentas (IdCuenta, Debito, Credito)  

    values (@idCuenta, 0.00, @valr - @total_ret)  

      

 insert into @Cuentas(IdCuenta, Debito, Credito)  

 select tr.idCuenta,  

        0.00,  

        sum(((dd.Valor * d.tasa) / s.tasa))  

  from cxpSolicitudes s join cxpSolicitudesDtl d  

    on s.idSolicitud = d.idSolicitud  

    join cxpDocumentos doc on d.idDocumento = doc.idDocumento  

    join cxpSolicitudRet dd on s.idSolicitud = dd.idSolicitud and d.idDocumento = dd.idDocumento   

    join cxpRetencion tr on dd.idRetencion = tr.idRetencion   

  where s.idSolicitud = @idSol    

  group by tr.idCuenta  

    

   if @tasa > 1  

   begin  

     insert into @Cuentas (idCuenta, idAuxiliar, Debito, Credito)  

     select  cp.idCuentaPrima,   

         null,  

    Debito = Debito * (@tasa - 1),  

    Credito = Credito * (@tasa - 1)  

    from @Cuentas c join cgCuentaPrima cp on c.idCuenta = cp.idCuenta and cp.idMoneda = @idMoneda   

    --where c.GUIDDocumento = @GUIDSol    

   end  

     

   insert into @Cuentas (idCuenta, Debito, Credito)  

   select idCuenta, Debito, Credito   

   from dbo.cxpCodificarPagoDocs(@idSol)  

end  

else begin  

  insert into @Cuentas (idCuenta, idAuxiliar, Debito, Credito)  

  select idCuenta,   

   idAuxiliar,  

   Debito = case debcre when 1 then Valor else 0.00 end,  

      Credito = case debcre when 2 then Valor else 0.00 end  

  from cgCodificacion c  

  where c.GUIDDocumento = @GUIDSol    

end  

select  c.*,  

 cat.Descripcion as Cuenta  

   from @cuentas c left join cgCatalogoCuentas cat  

  on c.idCuenta = cat.idCuenta COLLATE SQL_Latin1_General_CP1_CI_AI  

  order by c.Credito, c.idCuenta   

return 0   

  


GO
GO
-- >>> FIN: cxpGenSolicitudCuentas.sql <<<

-- >>> INICIO: cxpGenTransferBco.sql <<<
CREATE OR ALTER PROCEDURE cxpGenTransferBco

  @IdSolicitud int,

  @idDoc int output

as

declare @Err int,

		@nid int,

		@CtaOrigen varchar(16),

		@CtaDest varchar(16),

		@AuxOrigen varchar(16),

		@AuxDest varchar(16),

		@TotalNeto decimal(19,2),

	    @GUIDDoc uniqueidentifier,

	    @Fec datetime



set @GUIDDoc = newid()		

set @fec = convert(datetime,floor(convert(float, getdate())))



declare @IdTrDB int,

		@idTrCR int



select @IdTrDB = convert(int,valor)

from defaults

where clave = 'BCO_TR_DB_TRANS'



select @IdTrCR = convert(int,valor)

from defaults

where clave = 'BCO_TR_CR_TRANS'



begin transaction 

if exists (select 1 from bcoDocumentos 

	   where TipoDocOrigen = 'SOL'

		 and DocOrigen = @idSolicitud)

begin

  delete from bcoDocumentos 

	   where TipoDocOrigen = 'SOL'

		 and DocOrigen = @idSolicitud

end

insert into bcoDocumentos (IdTrans, Referencia, Status, Fecha, 

                           FechaStatus, idCuentaBanco, TipoDocOrigen, 

                           DocOrigen, Valor, DebCre, Concepto, GUIDDocumento,

						   idMoneda, Tasa, Contabilizar) 

select 	@idTrDB,

	t.Numero,

	'$' as Status,

	@Fec, 

	@Fec,

	t.idCuentaBanco,

	'SOL',

	t.idSolicitud,

	t.Total,

	1,

	substring(t.Concepto,1,500) as Concepto,

  	@GUIDDoc,

	t.idMoneda,

	t.Tasa,

	1 as Contabilizar

from cxpSolicitudes t 

where t.IdSolicitud = @idSolicitud



set @Err = @@ERROR

if @Err > 0

begin

  rollback transaction

  return @err

end

set @nid = @@IDENTITY



select 	@CtaOrigen = b.idCuentaMayor,

		@AuxOrigen = b.idAuxiliar,

		@TotalNeto = d.Total,

		@CtaDest = b2.idCuentaMayor,

		@AuxDest = b2.idAuxiliar 

from cxpSolicitudes d join cxpBancos b on d.idCuentaBanco = b.idCuentaBanco

     join cxpBancos b2 on d.idCuentaBancoDestino = b2.idCuentaBanco

where d.idSolicitud = @idSolicitud



insert into bcoDocumentosDtl

 (idCuenta, idAuxiliar, DebCre, Valor, Automatica, GUIDDocumento)

values

 (@CtaOrigen, @AuxOrigen, 1, @TotalNeto, 1, @GUIDDoc)



set @Err = @@ERROR

if @Err > 0

begin

  rollback transaction

  return @err

end



insert into bcoDocumentosDtl

 (idCuenta, idAuxiliar, DebCre, Valor, Automatica, GUIDDocumento)

values

 (@CtaDest, @AuxDest, 2, @TotalNeto, 1, @GUIDDoc)



set @Err = @@ERROR

if @Err > 0

begin

  rollback transaction

  return @err

end



set @idDoc = @nid



---- ahora el credito de la transferencia !



set @GUIDDoc = newid()		



insert into bcoDocumentos (IdTrans, Referencia, Status, Fecha, 

                           FechaStatus, idCuentaBanco, TipoDocOrigen, 

                           DocOrigen, Valor, DebCre, Concepto, GUIDDocumento,

						   idMoneda, Tasa, Contabilizar) 

select 	@idTrCR,

	t.Numero,

	'$' as Status,

	@Fec, 

	@Fec,

	t.idCuentaBancoDestino,

	'SOL',

	t.idSolicitud,

	t.Total,

	2,

	substring(t.Concepto,1,500) as Concepto,

  	@GUIDDoc,

	t.idMoneda,

	t.Tasa ,

	1 as Contabilizar

from cxpSolicitudes t 

where t.IdSolicitud = @idSolicitud 



set @Err = @@ERROR

if @Err > 0

begin

  rollback transaction

  return @err

end

set @nid = @@IDENTITY



insert into bcoDocumentosDtl

 (idCuenta, idAuxiliar, DebCre, Valor, Automatica, GUIDDocumento)

values

 (@CtaOrigen, @AuxOrigen, 2, @TotalNeto, 1, @GUIDDoc)



set @Err = @@ERROR

if @Err > 0

begin

  rollback transaction

  return @err

end



insert into bcoDocumentosDtl

 (idCuenta, idAuxiliar, DebCre, Valor, Automatica, GUIDDocumento)

values

 (@CtaDest, @AuxDest, 1, @TotalNeto, 1, @GUIDDoc)



set @Err = @@ERROR

if @Err > 0

begin

  rollback transaction

  return @err

end  



commit transaction

return 0


GO
GO
-- >>> FIN: cxpGenTransferBco.sql <<<

-- >>> INICIO: cxpGuardarChequeAbierto.sql <<<
-- cxpGuardarChequeAbierto 76226, 'JORGE MONTAS', '05/06/2008', 100, 'TEST', 187, '','2','','COSTO'



CREATE OR ALTER PROCEDURE cxpGuardarChequeAbierto

 @idSuplidor int,

 @Nombre varchar(100),

 @Fecha datetime,

 @Valor decimal(19,2),

 @Concepto varchar(6000),

 @CtaBanco int,

 @NotaAdicional varchar(100), 

 @idDoc int output,

 @idTipoIdent varchar(2),

 @RNC varchar(20),

 @TipoGasto varchar(16) = 'COSTO',

 @Tasa decimal(19,4) = 1

as

 

 declare @Err int,

	 @idMoneda int,

	 @idCuenta varchar(16),

	 @numck int,

	 @idTrans int,

	 @idEnt int,

 	 @TipoProveedor int --agregado por tito

--el tipo de proveedor local debe ponerse en la tabla de defaults

 Set @TipoProveedor = (select convert(int,valor) from defaults where clave = '#PROVEEDORLOCAL')

 set @idTrans = 20

 

 begin transaction

  update cxpBancos 

   set UltimoCheque = UltimoCheque + 1

  where idCuentaBanco = @ctaBanco   

  select @numck = UltimoCheque,

	 @idCuenta = idCuentaMayor,

	 @idMoneda = idMoneda

   from cxpBancos  

   where idCuentaBanco = @ctaBanco

  if @idSuplidor <= 0

  begin

    insert into cxpSuplidores (Nombre,TipoSuplidor, idMoneda, MostrarEnCXP,Estatus)

      values (@Nombre, @TipoProveedor, @idMoneda, 0,1)

    set @idEnt = @@IDENTITY

  end

  else

    set @idEnt = @idSuplidor

  -- ... y generar el header 

  

  EXEC @err = cxpGuardarDocumento 0, @idTrans, @Fecha, @idEnt, @numck, @Valor, 0.00, 0.00, 0.00, @Concepto, @IdMoneda, 1, 

                                  @idCuenta, null, 'P', @Fecha, @Ctabanco, null, null, 0, 0, null, @NotaAdicional, @idDoc OUTPUT, null, null,

				  @Tasa, @idTipoIdent, @RNC, @Nombre, @Fecha, @Fecha, @TipoGasto  

--  set @err = @@ERROR

  if @err > 0

  begin

    rollback transaction 

    return @err

  end

  

  commit transaction

return 0
















GO
GO
-- >>> FIN: cxpGuardarChequeAbierto.sql <<<

-- >>> INICIO: cxpGuardarCtasDoc.sql <<<
CREATE OR ALTER PROCEDURE cxpGuardarCtasDoc

 @IdDocumento int,

 @Cta varchar(16),

 @Aux varchar(16),

 @dbcr smallint,

 @Valor money,

 @Automatica bit,

 @idCentroCosto uniqueidentifier = null,

 @CentroCosto varchar(16) = null,

 @idPartida varchar(16) = null

AS

if (isnull(@Cta,'') <> '') and (@Valor <> 0) 

 insert into cxpDocCuentas (idDocumento, idCuenta, DebCre, Valor, Automatica, idAuxiliar,

							idCentroCosto, CentroCosto, idPartida)

   values (@idDocumento, @Cta, @dbcr, @Valor, @Automatica, @Aux,

			@idCentroCosto, @CentroCosto, @idPartida)

			

return @@ERROR








GO
GO
-- >>> FIN: cxpGuardarCtasDoc.sql <<<

-- >>> INICIO: cxpGuardarDocDtl.sql <<<
CREATE OR ALTER PROCEDURE cxpGuardarDocDtl

 @idDocumento int,

 @idDocXPagar int,

 @Fec datetime,

 @Valor decimal(19,2),

 @Tasa decimal(19,2)

as

  insert into cxpDocumentosDtl (Iddocumento, idDocXPagar, Fecha, Valor, Tasa)

  values(@idDocumento, @idDocXPagar, @fec, @Valor, @Tasa)

return @@ERROR






GO
GO
-- >>> FIN: cxpGuardarDocDtl.sql <<<

-- >>> INICIO: cxpGuardarDocItem.sql <<<
CREATE OR ALTER PROCEDURE cxpGuardarDocItem

 @iddocumentoItem uniqueidentifier,

 @idDocumento int,

 @idProducto varchar(30),

 @descripcion varchar(500),

 @Cantidad float, 

 @idUnidad varchar(16),

 @Costo decimal(19,2),

 @IdCuenta varchar(16),

 @Itbis decimal(19,2),

 @descuento decimal(5,2),

 @TipoItem char(1)

as

 insert into cxpDocumentoItems 

  (idDocumentoItem, idDocumento, idProducto, Descripcion, Cantidad, IdUnidad,

   Costo, Idcuenta, Itbis, Descuento, TipoItem)

values

  (@idDocumentoItem,@idDocumento, @idProducto, @Descripcion, @Cantidad, @IdUnidad,

   @Costo, @Idcuenta, @Itbis, @Descuento, @TipoItem)

return @@ERROR




GO
GO
-- >>> FIN: cxpGuardarDocItem.sql <<<

-- >>> INICIO: cxpGuardarDocumento.sql <<<
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
GO
-- >>> FIN: cxpGuardarDocumento.sql <<<

-- >>> INICIO: cxpGuardarSolDtl.sql <<<
CREATE OR ALTER PROCEDURE cxpGuardarSolDtl

 @idSolicitud int,

 @IdDocumento int,

 @Valor decimal(19,2),

 @Tasa decimal(18,2) 

as

 insert into cxpSolicitudesDtl (idSolicitud, IdDocumento, Valor,Tasa)

  values (@idSolicitud, @idDocumento, @Valor, @Tasa)

return @@ERROR






GO
GO
-- >>> FIN: cxpGuardarSolDtl.sql <<<

-- >>> INICIO: cxpGuardarSolicitud.sql <<<
CREATE OR ALTER PROCEDURE dbo.cxpGuardarSolicitud

 @idSol int,

 @Num int output,

 @Fec datetime,

 @IdEnt int,

 @Nombre varchar(100), 

 @Valr money,

 @Conc varchar(6000),

 @St char(1),

 @Usuario varchar(30),

 @FechaReg datetime,

 @ValidadoPor varchar(30),

 @validadoEn datetime,

 @revpor varchar(30),

 @reven datetime,

 @valfinal varchar(30),

 @valfinalen datetime,

 @NotaAdicional varchar(100),

 @MostrarEnCXP bit,

 @GUIDSolicitud uniqueidentifier,

 @nid int output,

 @tasa decimal(18,2) ,

 @idCuentaBanco int,

 @idMoneda int,

 @TipoAbono char(1),

 @BancoDestino varchar(5),

 @CuentaDestino varchar(20),

 @TipoSolicitud int,

 @idCuentaBancoDestino int,

 @idOrden uniqueidentifier,

 @OrdenCompra varchar(16),

 @idPagoForma INT = 2 

AS



 declare @idSuplidor int,

	    -- @idMoneda int,

         @TipoProveedor int



 Set @TipoProveedor = (select convert(int,valor) from defaults where clave = '#PROVEEDORLOCAL')



 /*

select top 1 @idMoneda = idMoneda

 from moneda 

 where cursolegal = 1

*/

 if @idEnt <= 0

   begin

	 insert into cxpSuplidores (Nombre,TipoSuplidor, idMoneda, MostrarEnCXP,Estatus)

	   values (@Nombre, @TipoProveedor, @idMoneda, @MostrarEnCXP,1)

	 set @idSuplidor = @@IDENTITY

   end

 else

   set @idSuplidor = @idEnt



 if (coalesce(@idSol,0) = 0)

 begin

   set @Num = coalesce((select max(Numero) 

			from cxpSolicitudes),0) + 1

   insert into cxpSolicitudes (	Numero, 				

				Fecha,

				idSuplidor,

				Total,

				Concepto,

				Status,

				Usuario, FechaRegistro, ValidadaPor, ValidadaEn,

				RevisadaPor, RevisadaEn, ValidadaFinalPor, ValidadaFinalEn,

				NotaAdicional,

				MostrarEnCXP,

	        		GUIDSolicitud,

				Tasa,

				idCuentabanco, idMoneda,

			    TipoAbono, BancoDestino, 

				CuentaDestino, TipoSolicitud, idCuentaBancoDestino, OrdenCompra, idOrden,

				IdPagoForma)

   values (@Num, @Fec, @idSuplidor, @Valr, @Conc, @St, @usuario, @fechaReg,

	         @ValidadoPor, @ValidadoEn, @RevPor, @RevEn, @ValFinal, @ValFinalEn,

           @NotaAdicional, @MostrarEnCXP, @GUIDSolicitud, @Tasa, @idCuentabanco, @idMoneda,

	       @TipoAbono, @BancoDestino, @CuentaDestino, @TipoSolicitud, @idCuentaBancoDestino, 

		   @OrdenCompra, @idOrden, @IdPagoForma)

   set @nid = @@IDENTITY

 end

 else 

 begin

   update cxpSolicitudes

     set Fecha = @Fec,

 	       idSuplidor = @idSuplidor,

	       Total = @Valr,

	       Concepto = @Conc,

	       Status = @st,

	       Usuario = @usuario,

	       FechaRegistro = @FechaReg,

	       ValidadaPor = @ValidadoPor,

	       ValidadaEn = @ValidadoEn,

	       RevisadaPor = @RevPor,

	       RevisadaEn = @RevEn,

	       ValidadaFinalPor = @ValFinal,

	       ValidadaFinalEn = @ValFinalEn,

	       NotaAdicional = @NotaAdicional,

 		   MostrarEnCXP = @MostrarEnCXP,

	       GUIDSolicitud = @GUIDSolicitud,

		Tasa = @Tasa ,

		idCuentabanco = @idCuentabanco,

		idMoneda = @idMoneda,

		TipoAbono = @TipoAbono, 

		BancoDestino = @BancoDestino, 

		CuentaDestino = @CuentaDestino, 

		TipoSolicitud = @TipoSolicitud,

	    idCuentaBancoDestino = @idCuentaBancoDestino,

               OrdenCompra= @OrdenCompra,

               idOrden = @idOrden, 

			   IdPagoForma = @idPagoForma

   where idSolicitud = @idSol

   set @nid = @idSol

 end

return @@ERROR






GO
GO
-- >>> FIN: cxpGuardarSolicitud.sql <<<

-- >>> INICIO: cxpGuardarSolicitudRet.sql <<<
CREATE OR ALTER PROCEDURE dbo.cxpGuardarSolicitudRet

 @idSolicitud int,

 @idSolicitudRet uniqueidentifier,

 @idDocumento int,

 @Porc float,

 @Valor decimal(19,2),

 @idRetencion int,

 @Retencion varchar(100),

 @idTipoRetencionDGII INT 

as

 insert into cxpSolicitudRet 

  (idSolicitudRet, idSolicitud, IdDocumento, Porcentaje, Valor, idRetencion, Retencion, idTipoRetencionDGII)

 values

  (@idSolicitudRet, @idSolicitud, @idDocumento, @Porc, @Valor, @idRetencion, @Retencion, @idTipoRetencionDGII)

return 0 




GO
GO
-- >>> FIN: cxpGuardarSolicitudRet.sql <<<

-- >>> INICIO: cxpGuardarStatusDoc.sql <<<
CREATE OR ALTER PROCEDURE cxpGuardarStatusDoc

 @idDoc int,

 @st char(1),

 @Fec datetime

as

-- Procedure Name : bcoGuardarStatusDoc

-- Created By : Jorge

-- Created On : 20/12/2004 3:37:26 PM

begin

	-- local variables

	-- set nocount on and default isolation level

	set nocount on

	set transaction isolation level Read Committed

    update cxpDocumentos

	  set Status = @st,

		  FechaStatus = @Fec

	where idDocumento = @idDoc

	

	return @@ERROR

end




GO
GO
-- >>> FIN: cxpGuardarStatusDoc.sql <<<

-- >>> INICIO: cxpInsCostoDocumento.sql <<<
------------ final de:cxpGuardarSolicitudRet ------------



------------ inicio de:cxpInsCostoDocumento ------------



CREATE OR ALTER PROCEDURE cxpInsCostoDocumento

 @IdDocumento uniqueidentifier,

 @idCostoDocumento uniqueidentifier,

 @idCentroCosto uniqueidentifier,

 @CentroCosto varchar(16),

 @CentroCostoGasto varchar(200),

 @Fecha datetime,

 @idpartida varchar(16),

 @Referencia varchar(16),

 @idTipoDoc varchar(10),

 @Cantidad float,

 @Gasto decimal(19,2),

 @idUnidad varchar(16),

 @Notas varchar(500),

 @TipoGasto varchar(16),

 @DebCre tinyint  

as

 insert into costCostoDocumento

    (idDocumento, idCostoDocumento, idCentroCosto, CentroCosto, CentroCostoGasto,

	 Fecha, IdPartida, Referencia, IdTipoDoc, Cantidad, Gasto, idUnidad, Notas,

     TipoGasto, DebCre)

  values 

    (@idDocumento, @idCostoDocumento, @idCentroCosto, @CentroCosto, @CentroCostoGasto,

	 @Fecha, @IdPartida, @Referencia, @IdTipoDoc, @Cantidad, @Gasto, @idUnidad, @Notas,

     @TipoGasto, @debCre)

return @@ERROR


GO
GO
-- >>> FIN: cxpInsCostoDocumento.sql <<<

-- >>> INICIO: cxpInsDocRetencion.sql <<<
CREATE OR ALTER PROCEDURE dbo.cxpInsDocRetencion

 @idDocumento int,

 @idRetencion int,

 @Descr varchar(50),

 @Porc FLOAT,

 @idTipoRetencionDGII INT 

as

 insert into cxpdocRetencion

   (idDocumento, idRetencion, Retencion, Porcentaje, idTipoRetencionDGII)

 values

   (@idDocumento, @idRetencion, @Descr, @Porc, @idTipoRetencionDGII)

return @@ERROR


GO
GO
-- >>> FIN: cxpInsDocRetencion.sql <<<

-- >>> INICIO: cxpInsPagoRetencion.sql <<<
CREATE OR ALTER PROCEDURE dbo.cxpInsPagoRetencion

    @idDocumento INT,

    @idPagoRetencion UNIQUEIDENTIFIER,

    @idDocXPagar INT,

    @Porcentaje FLOAT,

    @Valor DECIMAL(19, 2),

    @idRetencion INT,

    @Retencion VARCHAR(100),

    @idTipoRetencionDGII INT

AS

    INSERT  INTO cxpPagoRetencion

            (idDocumento,

             idPagoRetencion,

             idDocXPagar,

             Porcentaje,

             Valor,

             idRetencion,

             Retencion,

             idTipoRetencionDGII

            )

    VALUES  (@idDocumento,

             @idPagoRetencion,

             @idDocXPagar,

             @Porcentaje,

             @Valor,

             @idRetencion,

             @Retencion,

             @idTipoRetencionDGII

            ) 

    RETURN @@ERROR 


GO
GO
-- >>> FIN: cxpInsPagoRetencion.sql <<<

-- >>> INICIO: cxpListaBancos.sql <<<
CREATE OR ALTER PROCEDURE cxpListaBancos

as

  select idCuentaBanco,

	 NumCuenta,

	 idMoneda, 

	 Nombre, idCuentaMayor,UltimoCheque

  from cxpBancos

  order by Nombre

return 0






GO
GO
-- >>> FIN: cxpListaBancos.sql <<<

-- >>> INICIO: cxpListaRetenciones.sql <<<
CREATE OR ALTER PROCEDURE cxpListaRetenciones  

 @orden varchar(10) = null 

as  

 select * from cxpRetencion  

 order by Retencion  

return @@ERROR  

  
GO
GO
-- >>> FIN: cxpListaRetenciones.sql <<<

-- >>> INICIO: cxpListaSuplidores.sql <<<
CREATE OR ALTER PROCEDURE cxpListaSuplidores

as

 select idSuplidor, RNC, Nombre, Telefono1 from cxpSuplidores

 order by Nombre

return 0 

 

 




GO
GO
-- >>> FIN: cxpListaSuplidores.sql <<<

-- >>> INICIO: cxpListaSuplidoresStatus.sql <<<
CREATE OR ALTER PROCEDURE cxpListaSuplidoresStatus

 @Todos bit

as

 select idSuplidor, RNC, Nombre, Telefono1 

from cxpSuplidores

 where @Todos = 1 or Estatus = 1

 order by Nombre

return 0 

 




GO
GO
-- >>> FIN: cxpListaSuplidoresStatus.sql <<<

-- >>> INICIO: cxpMarcarCkImpreso.sql <<<
CREATE OR ALTER PROCEDURE cxpMarcarCkImpreso

 @idDoc int,

 @Fec datetime

as

 declare @st char(1),

	 @rc int

 select @st = Status

  from cxpDocumentos

  where idDocumento = @idDoc

 if @st = 'P' 

 begin

  EXEC @RC = cxpGuardarStatusDoc @idDoc, 'T', @Fec

 end

return isnull(@rc,0)




GO
GO
-- >>> FIN: cxpMarcarCkImpreso.sql <<<

-- >>> INICIO: cxpMovCKAuxiliar.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxpMovCKAuxiliar]

  @IdDoc int

as

declare @Err int,

	@nid int

begin transaction 

if exists (select 'T' from bcoDocumentos 

	   where TipoDocOrigen = 'CK'

		 and DocOrigen = @idDoc)

begin

  delete from bcoDocumentos 

	   where TipoDocOrigen = 'CK'

		 and DocOrigen = @idDoc

end

insert into bcoDocumentos (IdTrans, Referencia, Status, Fecha, 

                           FechaStatus, idCuentaBanco, TipoDocOrigen, 

                           DocOrigen, Valor, DebCre, Concepto, GUIDDocumento,

			   idMoneda, Tasa ) 

select 	2 as IdTrans,

	t.Referencia,

	case t.Status when 'P' then 'T' else t.status end,

	t.Fecha, 

	t.FechaStatus,

	t.idCuentaBanco,

	'CK',

	t.idDocumento,

	t.TotalNeto, 

	2,

	substring(e.Nombre + ' - ' + isnull(t.Concepto,''),1,500) as Concepto,

  	GUIDDocumento,

	t.idMoneda,

	t.Tasa 

from cxpDocumentos t join cxpSuplidores e on t.idSuplidor = e.idSuplidor 

where t.Iddocumento = @iddoc 



set @Err = @@ERROR

if @Err > 0

begin

  rollback transaction

  return @err

end

set @nid = @@IDENTITY

insert into bcoDocumentosDtl

 (idCuenta, idAuxiliar, DebCre, Valor, Automatica, GUIDDocumento)

select 	c.idCuenta,

  	c.idAuxiliar,

	c.DebCre,

	c.valor,

	isnull(c.Automatica,0) as Automatica,

	d.GUIDDocumento

from cxpDocumentos d join cxpDocCuentas c on d.idDocumento = c.idDocumento

where d.idDocumento = @iddoc



-- si el cheque ya no esta cancelado, hay que borrar la tr de CK/CAN del banco,

-- si aun esta cancelado, hay que revisar la fecha de cancelacion

declare @st char(1),

	@fecha datetime,

	@fecst datetime	

select  @st = status,

	@fecha = fecha,

	@fecst = FechaStatus

from cxpDocumentos

where idDocumento = @iddoc

if (@st <> 'C') or (@fecha = @fecst)

begin

  delete from bcoDocumentos

  where TipoDocOrigen = 'CC' and DocOrigen = @iddoc

end

else begin

  update bcoDocumentos

   set fecha = @fecst

  where TipoDocOrigen = 'CC' and DocOrigen = @iddoc

end

commit transaction

return 0








GO
GO
-- >>> FIN: cxpMovCKAuxiliar.sql <<<

-- >>> INICIO: cxpMovPagoAuxiliar.sql <<<
CREATE OR ALTER PROCEDURE cxpMovPagoAuxiliar

  @IdDoc int

as

declare @Err int,

	    @nid INT,

	    @idTr INT



select @idTr = convert(INT, valor)

from defaults

where Clave = 'BCO_TR_PAGOACH'	  	



if @idTr is null  

  set @idTr = 29 



begin transaction 

if exists (select 1 from bcoDocumentos 

	   where TipoDocOrigen = 'ACH'

		 and DocOrigen = @idDoc)

begin

  delete from bcoDocumentos 

	   where TipoDocOrigen = 'ACH'

		 and DocOrigen = @idDoc

end

insert into bcoDocumentos (IdTrans, Referencia, Status, Fecha, 

                           FechaStatus, idCuentaBanco, TipoDocOrigen, 

                           DocOrigen, Valor, DebCre, Concepto, GUIDDocumento,

						   idMoneda, Tasa, Contabilizar ) 

select	@idTr as IdTrans,

		t.Referencia,

		case t.Status when 'P' then 'T' else t.status end,

		t.Fecha, 

		t.FechaStatus,

		t.idCuentaBanco,

		'ACH',

		t.idDocumento,

		t.TotalNeto,

		2,

		substring(e.Nombre + ' - ' + isnull(t.Concepto,''),1,500) as Concepto,

  		GUIDDocumento,

		t.idMoneda,

		t.Tasa,

	    0

from cxpDocumentos t join cxpSuplidores e on t.idSuplidor = e.idSuplidor 

where t.Iddocumento = @iddoc 



set @Err = @@ERROR

if @Err > 0

begin

  rollback transaction

  return @err

end

set @nid = @@IDENTITY

insert into bcoDocumentosDtl

 (idCuenta, idAuxiliar, DebCre, Valor, Automatica, GUIDDocumento)

select 	c.idCuenta,

  		c.idAuxiliar,

		c.DebCre,

		c.valor,

		isnull(c.Automatica,0) as Automatica,

		d.GUIDDocumento

from cxpDocumentos d join cxpDocCuentas c on d.idDocumento = c.idDocumento

where d.idDocumento = @iddoc



commit transaction

return 0


GO
GO
-- >>> FIN: cxpMovPagoAuxiliar.sql <<<

-- >>> INICIO: cxpPagoToBancoACH.sql <<<
CREATE OR ALTER PROCEDURE cxpPagoToBancoACH(@Desde DateTime, @Hasta DateTime)

AS

SELECT

  dc.CuentaDestino + ';' +

  bc.Codigo + ';' + 

  bs.TipoCuenta + ';' +

  Convert(VarChar(22), su.Nombre) + ';' +

  'C' + ';' + 

  Convert(VarChar(15), dc.Total) + ';' +

  Convert(VarChar(10), dc.Numero) + ';' +

  Convert(VarChar(80), Replace(dc.Concepto, ';',',')) As Cadena

FROM

  cxpSolicitudes   dc                                         Inner Join 

  cxpSuplidores    su On (su.IdSuplidor = dc.IdSuplidor) Left Outer Join

  cxpBancoACH      bc On (bc.Codigo = dc.BancoDestino)   Left Outer Join

  cxpBancoSuplidor bs On (bs.BancoCodigo = dc.BancoDestino And bs.Cuenta = dc.CuentaDestino)

WHERE

  dc.TipoSolicitud = 2 AND

  dc.Status = 'A'      AND

  dc.Fecha Between @Desde And @Hasta




GO
GO
-- >>> FIN: cxpPagoToBancoACH.sql <<<

-- >>> INICIO: cxpPagoToBancoACHrpt.sql <<<
CREATE OR ALTER PROCEDURE cxpPagoToBancoACHrpt(@Desde DateTime, @Hasta DateTime)

AS

SELECT

  dc.IdSolicitud As IdDocumento,

  dc.CuentaDestino As CuentaDestino,

  bc.Codigo As CodigoBanco,

  bs.TipoCuenta AS TipoCuenta,

  su.Nombre As Suplidor,

  'C' As TipoMovimiento,

  dc.Total As Total,

  Convert(VarChar(10), dc.Numero) As Referencia,

  Convert(VarChar(80), Replace(dc.Concepto, ';',',')) As Descripcion,

  su.eMail As eMail

FROM

  cxpSolicitudes   dc                                         Inner Join 

  cxpSuplidores    su On (su.IdSuplidor = dc.IdSuplidor) Left Outer Join

  cxpBancoACH      bc On (bc.Codigo = dc.BancoDestino)   Left Outer Join

  cxpBancoSuplidor bs On (bs.BancoCodigo = dc.BancoDestino And bs.Cuenta = dc.CuentaDestino)

WHERE

  dc.TipoSolicitud = 2 AND

  dc.Status = 'A'      AND

  dc.Fecha Between @Desde And @Hasta






GO
GO
-- >>> FIN: cxpPagoToBancoACHrpt.sql <<<

-- >>> INICIO: cxpPagoToBancoPagoTercero.sql <<<
CREATE OR ALTER PROCEDURE cxpPagoToBancoPagoTercero(@Desde DateTime, @Hasta DateTime)

AS

SELECT

  dc.TipoAbono + ';' + 

  Convert(VarChar(22), su.Nombre) + ';' +

  Convert(VarChar(15), dc.Total) + ';' +

  Convert(VarChar(10), dc.Numero) + ';' +

--  Convert(VarChar(80), 'Pago ' + su.Nombre + ' Solic.#' + Convert(VarChar(10), dc.Numero) + 'de fecha ' + Convert(VarChar(10), dc.Fecha, 103) + ' por valor ' + Convert(VarChar, dc.Total)) + ';' +

  Convert(VarChar(80), Replace(dc.Concepto, ';',',')) + ';' +

  bs.TipoCuenta + ';' +

  dc.CuentaDestino + ';' +

  IsNull(su.eMail,'') As Cadena

FROM

  cxpSolicitudes   dc                                         Inner Join 

  cxpSuplidores    su On (su.IdSuplidor = dc.IdSuplidor) Left Outer Join

  cxpBancoSuplidor bs On (bs.BancoCodigo = dc.BancoDestino And bs.Cuenta = dc.CuentaDestino)

WHERE

  dc.TipoSolicitud = 2 AND

  dc.Status = 'A'      AND

  dc.Fecha Between @Desde And @Hasta




GO
GO
-- >>> FIN: cxpPagoToBancoPagoTercero.sql <<<

-- >>> INICIO: cxpPostearCostos.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxpPostearCostos]

 @desde datetime,

 @hasta datetime

as

--set @desde = '12/01/2006'

--set @hasta = '12/31/2006'



declare @tipo varchar(10)



declare c cursor for 

select substring(Abrev,1,10)

from TiposTrans t

where sistema = 'CXP'    

      and exists (select 1 from cxpdocumentos 

                   where idtrans = t.idTrans 

                         and fecha between @desde and @hasta)

open c

fetch next from c into @tipo



while @@FETCH_STATUS = 0 

begin

  print @tipo 

  exec costPostearCostoDocumentos @desde, @hasta, @tipo



  fetch next from c into @tipo

end



close c 

deallocate c



return 0   




GO
GO
-- >>> FIN: cxpPostearCostos.sql <<<

-- >>> INICIO: cxpProcesarBatchACH.sql <<<
CREATE OR ALTER PROCEDURE cxpProcesarBatchACH

 @idBatchACH uniqueidentifier

as

 update cxpBatchACH set status = 'PROCESADO', fechastatus = getdate()

 where idBatchACH = @idBatchACH

return @@ERROR 
GO
GO
-- >>> FIN: cxpProcesarBatchACH.sql <<<

-- >>> INICIO: cxpProcesarSolicitud.sql <<<
CREATE OR ALTER PROCEDURE cxpProcesarSolicitud

 @idSolicitud int,

 @idDoc int output

as

 declare @tipo int,

	     @cta int,

	     @err int



 select @tipo = TipoSolicitud,

		@cta = idCuentaBanco 

 from cxpSolicitudes

 where idSolicitud = @idSolicitud



 declare @fec datetime



 set @fec = convert(datetime,floor(convert(float, getdate())))



 if @tipo = 1 

 begin

   exec @err = cxpGenerarCheque @idSolicitud, @cta, @fec, @idDoc output

   return @err

 end



 --generar transaccion de pago ACH

 if @tipo = 2

 begin

   exec @err = cxpGenerarPagoACH @idSolicitud, @idDoc output

   return @err

 end



 if @tipo = 3

 begin

   exec @err = cxpGenTransferBco @idSolicitud, @idDoc output

   return @err

 end



 return -1


GO
GO
-- >>> FIN: cxpProcesarSolicitud.sql <<<

-- >>> INICIO: cxpRelacionCheques.sql <<<
CREATE OR ALTER PROCEDURE cxpRelacionCheques

 @inicio datetime, @final datetime 

AS  

SELECT convert(int, h.Referencia) AS Numero, h.IdDocumento, h.Fecha,   

    h.idSuplidor as IdEntidad, b.NumCuenta as CuentaBanco, e.Nombre, h.IdCuenta,   

    b.Nombre as DescripcionCuenta, h.TotalNeto AS ValorCheque, h.TotalNeto,   

    h.Concepto as TextoConcepto, h.Status AS ST, h.idCuentaBanco,   

    h.FechaStatus as FechaProcesado  

FROM cxpDocumentos h INNER JOIN  

    cxpSuplidores e ON h.IdSuplidor = e.IdSuplidor INNER JOIN  

    cxpBancos b ON h.IdCuentaBanco = b.IdCuentaBanco   

WHERE h.IdTrans = 20 and fecha between @inicio and @final

order by h.idCuentaBanco, 1, Fecha 
GO
GO
-- >>> FIN: cxpRelacionCheques.sql <<<

-- >>> INICIO: cxpRelacionDocumentos.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxpRelacionDocumentos]--  '01/01/2009','01/01/2010',99,0,0

  @inicio datetime,

  @final datetime,

  @idTr int,

  @idMoneda int,

  @idSuplidor int  ,

  @MostrarEnCXP int

as

declare @ctaImp varchar(16)

SET @ctaImp = (select top 1 convert(varchar(16), valor) from defaults where clave = 'CTAITBIS')



select  h.idDocumento,

 h.idTrans,

 h.Referencia,

 Abrev = tt.Abrev + case when h.MostrarEnCXP = 1 then '' else '* Abierto *' end,

 h.Fecha,

 case h.Status when 'C' then 0.00 else h.Total end as Total,

 h.idSuplidor,

 e.Nombre as Nombre,

 case h.Status when 'C' then 0.00 else dbo.cxpTotalItbisDoc(h.idDocumento) end as MontoImpuestos,

        h.BienesServicio,

 h.rnc,

        h.Concepto,

 m.Moneda,

 h.CompFiscal ,

 cg.ClaseGasto,

  tt.DebCre

from

  cxpDocumentos h

  join TiposTrans tt on h.idtrans = tt.idTrans and tt.Sistema = 'CXP'

  join cxpSuplidores e on h.idSuplidor = e.idSuplidor

  join Moneda m on h.idMoneda = m.idMoneda

  left join cxpClaseGasto cg on h.idClaseGasto = cg.idClaseGasto

where  h.Fecha between @inicio and @final

 and (@idTr = 0 or h.idTrans = @idTr)

  and (@MostrarEnCXP = -1 or h.MostrarEnCXP = convert(bit, @mostrarEnCXP))

 and ((@idMoneda = 0) or (@idMoneda = h.idMoneda))

        and ((@idSuplidor = 0) or (@idSuplidor = h.idSuplidor))

order by

  e.Nombre,

  h.Fecha,

  h.idDocumento



return 0


GO
GO
-- >>> FIN: cxpRelacionDocumentos.sql <<<

-- >>> INICIO: cxpRelDocsCtas.sql <<<
------------ final de:cxpRelacionDocumentos ------------



------------ inicio de:cxpRelDocsCtas ------------



CREATE OR ALTER PROCEDURE cxpRelDocsCtas

  @inicio datetime,

  @final datetime,

  @idTr int,

  @idMoneda int,

  @idSuplidor int,

  @MostrarEnCXP int

as



select  h.idDocumento,

 h.idTrans,

 h.Referencia,

 Abrev = tt.Abrev + case when h.MostrarEnCXP = 1 then '' else '* Abierto *' end,

 h.Fecha,

 case h.Status when 'C' then 0.00 else h.Total end as Total,

 h.idSuplidor,

 case h.status when 'C' then '**NULO** ' ELSE '' END + h.Nombre as Nombre,

 dc.idCuenta,

 cat.Descripcion,

 Debito = case dc.DebCre when 1 then dc.Valor else 0.00 end,

 Credito = case dc.DebCre when 2 then dc.Valor else 0.00 end,

 Movimiento = case dc.DebCre when 1 then dc.Valor else -dc.Valor end,

    h.rnc,

 m.Moneda,

 h.CompFiscal ,

 cg.ClaseGasto,

  tt.DebCre   , h.Concepto ,

  h.Tasa,

 h.Total - (dbo.cxpTotalItbisDoc(h.idDocumento) / h.tasa) as Neto

from cxpDocumentos h join TiposTrans tt

  on h.idtrans = tt.idTrans and tt.Sistema = 'CXP'

  join cxpSuplidores e on h.idSuplidor = e.idSuplidor

  join Moneda m on h.idMoneda = m.idMoneda

  left join cxpDocCuentas dc on (h.idDocumento = dc.idDocumento and h.status <> 'C')

  left join cgCatalogoCuentas cat on dc.idCuenta = cat.idCuenta

  left join cxpClaseGasto cg on h.idClaseGasto = cg.idClaseGasto

where  h.Fecha between @inicio and @final

  and (@idTr = 0 or h.idTrans = @idTr)

  and (@MostrarEnCXP = -1 or h.MostrarEnCXP = convert(bit, @mostrarEnCXP))

  and ((@idMoneda = 0) or (@idMoneda = h.idMoneda))

        and ((@idSuplidor = 0) or (@idSuplidor = h.idSuplidor))

order by h.fecha, h.referencia

return 0



 


GO
GO
-- >>> FIN: cxpRelDocsCtas.sql <<<

-- >>> INICIO: cxpRemisionGastosDGII.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxpRemisionGastosDGII] --'01/01/2007','03/31/2007'      

    @desde DATETIME,

    @hasta DATETIME

AS

    DECLARE @ctaRets VARCHAR(16),

        @mi_rnc VARCHAR(11)      

           

    SELECT TOP 1

            @mi_rnc = RNC

    FROM    Configuracion      

      

    DECLARE @tbl TABLE

        (

         keyfield UNIQUEIDENTIFIER,

         idDocumento INT,

         tipoDoc INT,

         rnc_cedula VARCHAR(11),

         tipo_identificacion INT,

         tipo_compra VARCHAR(2),

         compfiscal VARCHAR(19),

         compfiscal_modif VARCHAR(19),

         fecha_compfiscal DATETIME,

         fecha_pago DATETIME,

         itbis_facturado DECIMAL(19, 2),

         itbis_retenido DECIMAL(19, 2),

         monto_facturado DECIMAL(19, 2),

         isr_retenido DECIMAL(19, 2)

        )      

      

    INSERT  INTO @tbl

            SELECT  h.GUIDDocumento,

                    h.idDocumento,

                    1,

                    SUBSTRING(REPLACE(h.RNC, '-', ''), 1, 11) AS rnc_cedula,

                    CONVERT(INT, h.idTipoIdentificacion) AS tipo_identificacion,

                    CASE tt.DebCre

                      WHEN 2 THEN h.idClaseGasto

                      ELSE dbo.cxpBuscarClaseGtoModificado(h.idDocumento)

                    END AS tipo_compra,

                    h.CompFiscal,

                    dbo.cxpBuscarNCFModificado(h.idDocumento) AS compfiscal_modif,

                    h.Fecha AS fecha_compfiscal,

                    dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) AS fecha_pago,      

                    --dbo.cxpTotalItbisDoc(h.idDocumento) AS itbis_facturado ,	       

                    CASE WHEN h.idTrans = 25

                         THEN (dbo.cxpTotalItbisDoc(h.idDocumento) * -1)

                         ELSE dbo.cxpTotalItbisDoc(h.idDocumento)

                    END AS itbis_facturado,

                    CASE WHEN h.idTrans = 25

                         THEN (dbo.cxpRetenidoDoc(h.idDocumento, @desde,

                                                  @hasta, 'ITBIS') * -1)

                         ELSE dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta,

                                                 'ITBIS')

                    END AS itbis_retenido,

                    CASE WHEN h.idTrans = 25

                         THEN (((h.Total * h.Tasa)

                                - dbo.cxpTotalItbisDoc(h.idDocumento)) * -1)

                         ELSE ((h.Total * h.Tasa)

                               - dbo.cxpTotalItbisDoc(h.idDocumento))

                    END AS monto_facturado,

                    CASE WHEN h.idTrans = 25

                         THEN (dbo.cxpRetenidoDoc(h.idDocumento, @desde,

                                                  @hasta, 'ISR') * -1)

                         ELSE dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta,

                                                 'ISR')

                    END AS isr_retenido

            FROM    cxpDocumentos h

                    JOIN cxpSuplidores s ON h.idSuplidor = s.idSuplidor

                    JOIN TiposTrans tt ON h.idTrans = tt.idTrans

                                          AND tt.Sistema = 'CXP'

            WHERE   --tt.DebCre = 2 and      

                    h.Fecha BETWEEN @desde AND @hasta

                    AND ISNULL(h.Status, 'A') <> 'C'

                    AND ISNULL(h.CompFiscal, '') <> ''

                    AND h.idTrans <> 20

            ORDER BY tipo_compra,

                    h.Fecha,

                    h.idDocumento     

      

    INSERT  INTO @tbl

            SELECT  h.GUIDDocumento,

                    h.idDocumento,

                    1,

                    SUBSTRING(REPLACE(h.RNC, '-', ''), 1, 11) AS rnc_cedula,

                    CONVERT(INT, h.idTipoIdentificacion) AS tipo_identificacion,

                    CASE tt.DebCre

                      WHEN 2 THEN h.idClaseGasto

                      ELSE '00'

                    END AS tipo_compra,

                    h.CompFiscal,

                    dbo.cxpBuscarNCFModificado(h.idDocumento) AS compfiscal_modif,

                    h.Fecha AS fecha_compfiscal,

                    dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) AS fecha_pago,

                    dbo.cxpTotalItbisDoc(h.idDocumento) AS itbis_facturado,

                    dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta, 'ITBIS') AS itbis_retenido,

                    (h.Total * h.Tasa) - dbo.cxpTotalItbisDoc(h.idDocumento) AS monto_facturado,

                    dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta, 'ISR') AS isr_retenido

            FROM    cxpDocumentos h

                    JOIN cxpSuplidores s ON h.idSuplidor = s.idSuplidor

                    JOIN TiposTrans tt ON h.idTrans = tt.idTrans

                                          AND tt.Sistema = 'CXP'

            WHERE   tt.DebCre = 2

                    AND h.Fecha < @desde

                    AND EXISTS ( SELECT 1

                                 FROM   cxpDocumentosDtl

                                 WHERE  IdDocXPagar = h.idDocumento

                                        AND Fecha BETWEEN @desde AND @hasta )

                    AND dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) BETWEEN @desde

                                                              AND

                                                              @hasta

                    AND dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta, '') > 0.00

                    AND ISNULL(h.CompFiscal, '') <> ''      

 --and h.idTrans <> 20      

ORDER BY            tipo_compra,

                    h.Fecha,

                    h.idDocumento      

            

    INSERT  INTO @tbl

            SELECT  h.GUIDDocumento,

                    h.idDocumento,

                    2,

                    REPLACE(b.RNC_Banco, '-', '') AS rnc_cedula,

                    '1' AS tipo_identificacion,

                    '07' AS tipo_compra,

                    h.CompFiscal,

                    ' ' AS compfiscal_modif,

                    h.Fecha AS fecha_compfiscal,

                    NULL AS fecha_pago,

                    0.00 AS itbis_facturado,

                    itbis_retenido = 0.00,

                    h.Valor * h.Tasa AS monto_facturado,

                    isr_retenido = 0.00

            FROM    bcoDocumentos h

                    JOIN cxpBancos b ON h.idCuentaBanco = b.idCuentaBanco      

 --join TiposTrans tt on h.idTrans = tt.idTrans and tt.Sistema = 'CXP'      

            WHERE   --tt.DebCre = 2 and      

                    h.Fecha BETWEEN @desde AND @hasta

                    AND ISNULL(h.Status, 'A') <> 'C'

                    AND ISNULL(h.CompFiscal, '') <> ''

            ORDER BY tipo_compra,

                    h.Fecha,

                    h.idDocumento      

      

    INSERT  INTO @tbl

            SELECT  h.GUIDDocumento,

                    0 AS idDocumento,

                    3,

                    REPLACE(@mi_rnc, '-', '') AS rnc_cedula,

                    '1' AS tipo_identificacion,

                    h.idClaseGasto AS tipo_compra,

                    h.CompFiscal,

                    ' ' AS compfiscal_modif,

                    h.Fecha AS fecha_compfiscal,

                    NULL AS fecha_pago,

                    0.00 AS itbis_facturado,

                    itbis_retenido = 0.00,

                    SUM(d.Importe) AS monto_facturado,

                    isr_retenido = 0.00

            FROM    bcoGastosMenores h

                    JOIN bcoGastosMenoresDet d ON h.GUIDDocumento = d.GUIDDocumento

            WHERE   h.Fecha BETWEEN @desde AND @hasta

                    AND ISNULL(h.CompFiscal, '') <> ''

            GROUP BY h.GUIDDocumento,

                    h.CompFiscal,

                    h.idClaseGasto,

                    h.Fecha

            ORDER BY tipo_compra,

                    h.Fecha,

                    h.CompFiscal      

      

    SELECT  *

    FROM    @tbl

    ORDER BY fecha_compfiscal  

      

    RETURN 0      


GO
GO
-- >>> FIN: cxpRemisionGastosDGII.sql <<<

-- >>> INICIO: cxpRemisionGastosDGII2011.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxpRemisionGastosDGII2011] --'01/01/2007','03/31/2007'      

    @desde DATETIME ,

    @hasta DATETIME

AS

    DECLARE @ctaRets VARCHAR(16) ,

        @mi_rnc VARCHAR(11)      

           

    SELECT TOP 1

            @mi_rnc = RNC

    FROM    Configuracion      

      

    DECLARE @tbl TABLE

        (

          keyfield UNIQUEIDENTIFIER ,

          idDocumento INT ,

          tipoDoc INT ,

          rnc_cedula VARCHAR(11) ,

          tipo_identificacion INT ,

          tipo_compra VARCHAR(2) ,

          compfiscal VARCHAR(19) ,

          compfiscal_modif VARCHAR(19) ,

          fecha_compfiscal DATETIME ,

          fecha_pago DATETIME ,

          itbis_facturado DECIMAL(19, 2) ,

          itbis_retenido DECIMAL(19, 2) ,

          monto_facturado DECIMAL(19, 2) ,

          isr_retenido DECIMAL(19, 2)

        )      

      

    INSERT  INTO @tbl

            SELECT  h.GUIDDocumento ,

                    h.idDocumento ,

                    1 ,

                    SUBSTRING(REPLACE(h.RNC, '-', ''), 1, 11) AS rnc_cedula ,

                    CONVERT(INT, h.idTipoIdentificacion) AS tipo_identificacion ,

                    CASE tt.DebCre

                      WHEN 2 THEN h.idClaseGasto

                      ELSE dbo.cxpBuscarClaseGtoModificado(h.idDocumento)

                    END AS tipo_compra ,

                    h.CompFiscal ,

                    dbo.cxpBuscarNCFModificado(h.idDocumento) AS compfiscal_modif ,

                    h.Fecha AS fecha_compfiscal ,

                    dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) AS fecha_pago ,      

                    --dbo.cxpTotalItbisDoc(h.idDocumento) AS itbis_facturado ,	       

                    CASE WHEN h.idTrans = 25

                         THEN ( dbo.cxpTotalItbisDoc(h.idDocumento) * -1 )

                         ELSE dbo.cxpTotalItbisDoc(h.idDocumento)

                    END AS itbis_facturado ,

                    CASE WHEN h.idTrans = 25

                         THEN ( dbo.cxpRetenidoDoc(h.idDocumento, @desde,

                                                   @hasta, 'ITBIS') * -1 )

                         ELSE dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta,

                                                 'ITBIS')

                    END AS itbis_retenido ,

                    CASE WHEN h.idTrans = 25

                         THEN ( ( ( h.Total * h.Tasa )

                                  - dbo.cxpTotalItbisDoc(h.idDocumento) ) * -1 )

                         ELSE ( ( h.Total * h.Tasa )

                                - dbo.cxpTotalItbisDoc(h.idDocumento) )

                    END AS monto_facturado ,

                    CASE WHEN h.idTrans = 25

                         THEN ( dbo.cxpRetenidoDoc(h.idDocumento, @desde,

                                                   @hasta, 'ISR') * -1 )

                         ELSE dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta,

                                                 'ISR')

                    END AS isr_retenido

            FROM    cxpDocumentos h

                    JOIN cxpSuplidores s ON h.idSuplidor = s.idSuplidor

                    JOIN TiposTrans tt ON h.idTrans = tt.idTrans

                                          AND tt.Sistema = 'CXP'

            WHERE   --tt.DebCre = 2 and      

                    h.Fecha BETWEEN @desde AND @hasta

                    AND ISNULL(h.Status, 'A') <> 'C'

                    AND ISNULL(h.CompFiscal, '') <> ''

                    AND h.idTrans <> 20

            ORDER BY tipo_compra ,

                    h.Fecha ,

                    h.idDocumento     

      

    INSERT  INTO @tbl

            SELECT  h.GUIDDocumento ,

                    h.idDocumento ,

                    1 ,

                    SUBSTRING(REPLACE(h.RNC, '-', ''), 1, 11) AS rnc_cedula ,

                    CONVERT(INT, h.idTipoIdentificacion) AS tipo_identificacion ,

                    CASE tt.DebCre

                      WHEN 2 THEN h.idClaseGasto

                      ELSE '00'

                    END AS tipo_compra ,

                    h.CompFiscal ,

                    dbo.cxpBuscarNCFModificado(h.idDocumento) AS compfiscal_modif ,

                    h.Fecha AS fecha_compfiscal ,

                    dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) AS fecha_pago ,

                    dbo.cxpTotalItbisDoc(h.idDocumento) AS itbis_facturado ,

                    dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta, 'ITBIS') AS itbis_retenido ,

                    ( h.Total * h.Tasa ) - dbo.cxpTotalItbisDoc(h.idDocumento) AS monto_facturado ,

                    dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta, 'ISR') AS isr_retenido

            FROM    cxpDocumentos h

                    JOIN cxpSuplidores s ON h.idSuplidor = s.idSuplidor

                    JOIN TiposTrans tt ON h.idTrans = tt.idTrans

                                          AND tt.Sistema = 'CXP'

            WHERE   tt.DebCre = 2

                    AND h.Fecha < @desde

                    AND EXISTS ( SELECT 1

                                 FROM   cxpDocumentosDtl

                                 WHERE  IdDocXPagar = h.idDocumento

                                        AND Fecha BETWEEN @desde AND @hasta )

                    AND dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) BETWEEN @desde

                                                              AND

                                                              @hasta

                    AND dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta, '') > 0.00

                    AND ISNULL(h.CompFiscal, '') <> ''      

 --and h.idTrans <> 20      

ORDER BY            tipo_compra ,

                    h.Fecha ,

                    h.idDocumento      

      

      

    INSERT  INTO @tbl

            SELECT  h.GUIDDocumento ,

                    h.idDocumento ,

                    2 ,

                    REPLACE(b.RNC_Banco, '-', '') AS rnc_cedula ,

                    '1' AS tipo_identificacion ,

                    '07' AS tipo_compra ,

                    h.CompFiscal ,

                    ' ' AS compfiscal_modif ,

                    h.Fecha AS fecha_compfiscal ,

                    NULL AS fecha_pago ,

                    0.00 AS itbis_facturado ,

                    itbis_retenido = 0.00 ,

                    h.Valor * h.Tasa AS monto_facturado ,

                    isr_retenido = 0.00

            FROM    bcoDocumentos h

                    JOIN cxpBancos b ON h.idCuentaBanco = b.idCuentaBanco      

 --join TiposTrans tt on h.idTrans = tt.idTrans and tt.Sistema = 'CXP'      

            WHERE   --tt.DebCre = 2 and      

                    h.Fecha BETWEEN @desde AND @hasta

                    AND ISNULL(h.Status, 'A') <> 'C'

                    AND ISNULL(h.CompFiscal, '') <> ''

            ORDER BY tipo_compra ,

                    h.Fecha ,

                    h.idDocumento      

      

    INSERT  INTO @tbl

            SELECT  h.GUIDDocumento ,

                    0 AS idDocumento ,

                    3 ,

                    REPLACE(@mi_rnc, '-', '') AS rnc_cedula ,

                    '1' AS tipo_identificacion ,

                    h.idClaseGasto AS tipo_compra ,

                    h.CompFiscal ,

                    ' ' AS compfiscal_modif ,

                    h.Fecha AS fecha_compfiscal ,

                    NULL AS fecha_pago ,

                    0.00 AS itbis_facturado ,

                    itbis_retenido = 0.00 ,

                    SUM(d.Importe) AS monto_facturado ,

                    isr_retenido = 0.00

            FROM    bcoGastosMenores h

                    JOIN bcoGastosMenoresDet d ON h.GUIDDocumento = d.GUIDDocumento

            WHERE   h.Fecha BETWEEN @desde AND @hasta

                    AND ISNULL(h.CompFiscal, '') <> ''

            GROUP BY h.GUIDDocumento ,

                    h.CompFiscal ,

                    h.idClaseGasto ,

                    h.Fecha

            ORDER BY tipo_compra ,

                    h.Fecha ,

                    h.CompFiscal      

      

    SELECT  *

    FROM    @tbl

    ORDER BY fecha_compfiscal  





      

    RETURN 0      






GO
GO
-- >>> FIN: cxpRemisionGastosDGII2011.sql <<<

-- >>> INICIO: cxpRemisionGastosDGII2018.sql <<<
CREATE OR ALTER PROCEDURE dbo.cxpRemisionGastosDGII2018

    @desde DATETIME ,

    @hasta DATETIME

AS

    DECLARE @ctaRets VARCHAR(16) ,

			@mi_rnc VARCHAR(11)        

               

    SELECT TOP 1

            @mi_rnc = RNC

    FROM    Configuracion        

        

    DECLARE @tbl TABLE

        (

          keyfield UNIQUEIDENTIFIER ,

          idDocumento INT ,

          tipoDoc INT ,

          rnc_cedula VARCHAR(11) ,

          tipo_identificacion INT ,

          tipo_compra VARCHAR(2) ,

          compfiscal VARCHAR(19) ,

          compfiscal_modif VARCHAR(19) ,

          fecha_compfiscal DATETIME ,

          fecha_pago DATETIME ,

		  monto_servicios DECIMAL(19,2),

		  monto_bienes DECIMAL(19,2), 

		  monto_facturado DECIMAL(19, 2) ,

          itbis_facturado DECIMAL(19, 2) ,

          itbis_retenido DECIMAL(19, 2) ,

		  itbis_prop DECIMAL(19,2), 

		  itbis_costo DECIMAL(19,2), 

		  itbis_adelantar DECIMAL(19,2),

		  itbis_percibido DECIMAL(19,2),

		  tipo_retencion INT,           

          isr_retenido DECIMAL(19, 2),

		  isr_percibido DECIMAL(19,2), 

		  monto_isc DECIMAL(19,2),

		  otros_imp DECIMAL(19,2),

		  propina DECIMAL(19,2), 

		  FormaPago INT 

        )        

        

    INSERT  INTO @tbl

    (

        keyfield,

        idDocumento,

        tipoDoc,

        rnc_cedula,

        tipo_identificacion,

        tipo_compra,

        compfiscal,

        compfiscal_modif,

        fecha_compfiscal,

        fecha_pago,

        monto_servicios,

        monto_bienes,

        monto_facturado,

        itbis_facturado,

        itbis_retenido,

        itbis_prop,

        itbis_costo,

        itbis_adelantar,

        itbis_percibido,

        tipo_retencion,

        isr_retenido,

        isr_percibido,

        monto_isc,

        otros_imp,

        propina,

        FormaPago

    )    

            SELECT  h.GUIDDocumento ,

                    h.idDocumento ,

                    1 ,

                    SUBSTRING(REPLACE(h.RNC, '-', ''), 1, 11) AS rnc_cedula ,

                    CONVERT(INT, h.idTipoIdentificacion) AS tipo_identificacion ,

                    CASE tt.DebCre

                      WHEN 2 THEN h.idClaseGasto

                      ELSE dbo.cxpBuscarClaseGtoModificado(h.idDocumento)

                    END AS tipo_compra ,

                    h.CompFiscal ,

                    dbo.cxpBuscarNCFModificado(h.idDocumento) AS compfiscal_modif ,

                    h.Fecha AS fecha_compfiscal ,

                    dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) AS fecha_pago ,         

					h.montoFacturadoServicios * h.Tasa, 

					h.montoFacturadoBienes * h.Tasa, 

					(h.montoFacturadoBienes + h.montoFacturadoServicios) * h.Tasa, 

                    h.montoImpuestos * h.Tasa AS itbis_facturado ,                    

                    dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta,'ITBIS') AS itbis_retenido ,

					0.00, -- itbis sujeto a prop. 

					h.ItbisCosto * h.Tasa, -- itbis llevado al costo ?                    

                    (h.MontoImpuestos - h.itbisCosto) * h.Tasa AS monto_facturado ,

					NULL AS itbis_percibido, 

					dbo.cxpBuscarTipoRetencionDoc(h.idDocumento, @desde, @hasta, 'ISR'),

                    dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta,'ISR') AS isr_retenido,

					NULL AS isr_percibido,

					h.montoIsc,

					h.OtrosImpuestos,

					h.PropinaLegal,

					dbo.cxpBuscarFormaPago(h.idDocumento, @desde, @hasta)					

            FROM    cxpDocumentos h

                    JOIN cxpSuplidores s ON h.idSuplidor = s.idSuplidor

                    JOIN TiposTrans tt ON h.idTrans = tt.idTrans

                                          AND tt.Sistema = 'CXP'

            WHERE   --tt.DebCre = 2 and        

                    h.Fecha BETWEEN @desde AND @hasta

                    AND ISNULL(h.Status, 'A') <> 'C'

                    AND ISNULL(h.CompFiscal, '') <> ''

                    AND h.idTrans <> 20

            ORDER BY tipo_compra ,

                    h.Fecha ,

                    h.idDocumento       

        

    INSERT  INTO @tbl

	  (

        keyfield,idDocumento,tipoDoc,rnc_cedula,tipo_identificacion,

        tipo_compra,compfiscal,compfiscal_modif,fecha_compfiscal,

        fecha_pago,monto_servicios,monto_bienes,monto_facturado,

        itbis_facturado,itbis_retenido,itbis_prop,itbis_costo,

        itbis_adelantar,itbis_percibido,tipo_retencion,isr_retenido,

        isr_percibido,monto_isc,otros_imp,propina, FormaPago

      )    

            SELECT  h.GUIDDocumento ,

                    h.idDocumento ,

                    1 ,

                    SUBSTRING(REPLACE(h.RNC, '-', ''), 1, 11) AS rnc_cedula ,

                    CONVERT(INT, h.idTipoIdentificacion) AS tipo_identificacion ,

                    CASE tt.DebCre

                      WHEN 2 THEN h.idClaseGasto

                      ELSE '00'

                    END AS tipo_compra ,

                    h.CompFiscal ,

                    dbo.cxpBuscarNCFModificado(h.idDocumento) AS compfiscal_modif ,

                    h.Fecha AS fecha_compfiscal ,

                    dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) AS fecha_pago ,

					h.montoFacturadoServicios * h.Tasa,

					h.montoFacturadoBienes * h.Tasa,

					(h.montoFacturadoBienes + h.montoFacturadoServicios) * h.Tasa,

                    dbo.cxpTotalItbisDoc(h.idDocumento) AS itbis_facturado ,

                    dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta, 'ITBIS') AS itbis_retenido , 

					0.00,

					0.00,

					dbo.cxpTotalItbisDoc(h.idDocumento) AS itbis_adelantar,

					NULL,

					dbo.cxpBuscarTipoRetencionDoc(h.idDocumento, @desde, @hasta, 'ISR') AS tipo_retencion, 

                    dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta, 'ISR') AS isr_retenido,

					NULL,

					0,

					0,

					0,

					dbo.cxpBuscarFormaPago(h.idDocumento, @desde, @hasta)

            FROM    cxpDocumentos h

                    JOIN cxpSuplidores s ON h.idSuplidor = s.idSuplidor

                    JOIN TiposTrans tt ON h.idTrans = tt.idTrans

                                          AND tt.Sistema = 'CXP'

            WHERE   tt.DebCre = 2

                    AND h.Fecha < @desde

                    AND EXISTS ( SELECT 1

                                 FROM   cxpDocumentosDtl

                                 WHERE  IdDocXPagar = h.idDocumento

                                        AND Fecha BETWEEN @desde AND @hasta )

                    AND dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) BETWEEN @desde

                                                              AND

                                                              @hasta

                    AND dbo.cxpRetenidoDoc(h.idDocumento, @desde, @hasta, '') > 0.00

                    AND ISNULL(h.CompFiscal, '') <> ''              

ORDER BY            tipo_compra ,

                    h.Fecha ,

                    h.idDocumento        

                

    INSERT  INTO @tbl

	  (

        keyfield,idDocumento,tipoDoc,rnc_cedula,tipo_identificacion,

        tipo_compra,compfiscal,compfiscal_modif,fecha_compfiscal,

        fecha_pago,monto_servicios,monto_bienes,monto_facturado,

        itbis_facturado,itbis_retenido,itbis_prop,itbis_costo,

        itbis_adelantar,itbis_percibido,tipo_retencion,isr_retenido,

        isr_percibido,monto_isc,otros_imp,propina, FormaPago

      )  

            SELECT  h.GUIDDocumento ,

                    h.idDocumento ,

                    2 ,

                    REPLACE(b.RNC_Banco, '-', '') AS rnc_cedula ,

                    '1' AS tipo_identificacion ,

                    '07' AS tipo_compra ,

                    h.CompFiscal ,

                    ' ' AS compfiscal_modif ,

                    h.Fecha AS fecha_compfiscal ,

                    NULL AS fecha_pago ,

					h.valor * h.Tasa AS monto_servicios,

					0.00 AS monto_bienes,

					h.Valor * h.Tasa AS monto_facturado ,

                    0.00 AS itbis_facturado ,

                    itbis_retenido = 0.00 ,

					0 AS itbis_prop,

					0 AS itbis_costo,

					0 AS itbis_adelantar,

					NULL AS itbis_percibido,

					NULL AS tipo_retencion,

					isr_retenido = 0.00,

					NULL AS isr_percibido,

					0,

					0, 

					0,

					2 AS FormaPago 

            FROM    bcoDocumentos h

                    JOIN cxpBancos b ON h.idCuentaBanco = b.idCuentaBanco        

 --join TiposTrans tt on h.idTrans = tt.idTrans and tt.Sistema = 'CXP'        

            WHERE   --tt.DebCre = 2 and        

                    h.Fecha BETWEEN @desde AND @hasta

                    AND ISNULL(h.Status, 'A') <> 'C'

                    AND ISNULL(h.CompFiscal, '') <> ''

            ORDER BY tipo_compra ,

                    h.Fecha ,

                    h.idDocumento        

        

    INSERT  INTO @tbl

	  (

        keyfield,idDocumento,tipoDoc,rnc_cedula,tipo_identificacion,

        tipo_compra,compfiscal,compfiscal_modif,fecha_compfiscal,

        fecha_pago,monto_servicios,monto_bienes,monto_facturado,

        itbis_facturado,itbis_retenido,itbis_prop,itbis_costo,

        itbis_adelantar,itbis_percibido,tipo_retencion,isr_retenido,

        isr_percibido,monto_isc,otros_imp,propina, FormaPago

      )  

            SELECT  h.GUIDDocumento ,

                    0 AS idDocumento ,

                    3 ,

                    REPLACE(@mi_rnc, '-', '') AS rnc_cedula ,

                    '1' AS tipo_identificacion ,

                    h.idClaseGasto AS tipo_compra ,

                    h.CompFiscal ,

                    ' ' AS compfiscal_modif ,

                    h.Fecha AS fecha_compfiscal ,

                    NULL AS fecha_pago ,

					SUM(d.Importe) AS servicios,

					0.00 AS bienes,                                         

                    SUM(d.Importe) AS monto_facturado ,

					itbis_facturado = 0.00,

					itbis_retenido = 0.00 ,

					itbis_prop = 0,

					itbis_costo = 0,

					itbis_adelantar = 0,

					NULL AS itbis_perc,

					NULL AS tipo_retencion,

                    isr_retenido = 0.00,

					NULL AS isr_percibido,

					0,

					0,

					0,

					ISNULL(h.IdPagoForma,1) AS forma_pago 

            FROM    bcoGastosMenores h

                    JOIN bcoGastosMenoresDet d ON h.GUIDDocumento = d.GUIDDocumento

            WHERE   h.Fecha BETWEEN @desde AND @hasta

                    AND h.Cancelado = 0

                    AND ISNULL(h.CompFiscal, '') <> ''

            GROUP BY h.GUIDDocumento ,

					ISNULL(h.IdPagoForma,1), 

                    h.CompFiscal ,

                    h.idClaseGasto ,

                    h.Fecha

            ORDER BY tipo_compra ,

                    h.Fecha ,

                    h.CompFiscal        

        

    SELECT  *

    FROM    @tbl

    ORDER BY fecha_compfiscal        



    RETURN 0        


GO
GO
-- >>> FIN: cxpRemisionGastosDGII2018.sql <<<

-- >>> INICIO: cxpRepAplicaciones.sql <<<
CREATE OR ALTER PROCEDURE cxpRepAplicaciones

 @idSup int,

 @fec datetime

as

--set @idSup = 645

--set @fec = '06/04/2005'

select 	h.idDocumento,

	h.Fecha,

	tt.Abrev + '-' + h.Referencia as Referencia,

	h.Total,

	p.Fecha as FechaPago,

	p.Referencia as Pago,

	tt2.Abrev as TipoPago,

	d.Valor as MontoPago

from cxpDocumentos h join TiposTrans tt

  on tt.Sistema = 'CXP' and h.idTrans = tt.idTrans

  left join cxpDocumentosDtl d 

  on h.idDocumento = d.idDocXPagar

  left join cxpDocumentos p on d.idDocumento = p.idDocumento

  left join TiposTrans tt2 on tt2.Sistema = 'CXP' and p.idTrans = tt2.idTrans

where 	h.idSuplidor = @idSup 

	and h.Fecha <= @fec

	and h.Status <> 'C'

	and tt.DebCre = 2 

	and isnull(p.Status,'T') <> 'C' 

	and h.Total <> isnull((select sum(docdtl.Valor) 

				from cxpDocumentos doc join cxpDocumentosDtl docdtl 

					on doc.idDocumento = docdtl.idDocumento

				where doc.Status <> 'C' 

					and docdtl.idDocXPagar = h.idDocumento),0.00)

order by h.Fecha, h.Referencia, p.Fecha, p.Referencia




GO
GO
-- >>> FIN: cxpRepAplicaciones.sql <<<

-- >>> INICIO: cxpReporteACHEmitidos.sql <<<
------------ final de:cxpItbisRetenido ------------



------------ inicio de:cxpReporteACHEmitidos ------------





CREATE OR ALTER PROC cxpReporteACHEmitidos

 @inicio datetime, 

 @final datetime,

 @idCta int

AS

SELECT 	h.Referencia AS Numero, 

	h.IdDocumento, 

	h.Fecha, 

    	0 as IdSuplidor, -- quitar esto !!!!

	b.NumCuenta as CuentaBanco, 

	h.Concepto as Nombre, -- quitar esto tambien !!!

	b.IdCuentaMayor as idCuenta,

	b.Nombre as DescripcionCuenta, 

	(case when (h.Status = 'C' and h.fecha = h.fechastatus) then 0.00 else h.Valor end) AS ValorCheque, 

    	h.Concepto as TextoConcepto, 

	h.Status AS ST , h.fechastatus,

	case h.Status 

  	  when 'T' then 'Transito'

	  when '$' then 'Pagado'

	  when 'C' then 'Cancelado'

	 else 'Error'

	end as DescStatus 

FROM bcoDocumentos h --INNER JOIN cxpSuplidores e ON h.IdSuplidor = e.idSuplidor

    INNER JOIN cxpBancos b on h.idCuentaBanco = b.idCuentaBanco

WHERE 	h.IdTrans = 29 

	and h.Fecha between @inicio and @final

	and h.idCuentaBanco = @idCta

	--and (h.Status = 'T' or h.FechaStatus > @final)

	--and (not h.Status in ('C', '$') or h.FechaStatus < @final)

order by h.Referencia

return 0




GO
GO
-- >>> FIN: cxpReporteACHEmitidos.sql <<<

-- >>> INICIO: cxpReporteCksCancelados.sql <<<
CREATE OR ALTER PROC cxpReporteCksCancelados

 @inicio datetime,

 @final datetime,

 @idCta int

AS

SELECT 	h.Referencia AS Numero, 

	h.IdDocumento, 

	h.Fecha, 

    	h.IdSuplidor, 

	b.NumCuenta as CuentaBanco, 

	h.Nombre, 

	b.IdCuentaMayor as idCuenta,

	b.Nombre as DescripcionCuenta, 

	h.Valor AS ValorCheque, 

    	h.Concepto as TextoConcepto, 

	h.Status AS ST, 

	h.FechaStatus

FROM cxpDocumentos h INNER JOIN cxpSuplidores e ON h.IdSuplidor = e.idSuplidor

    INNER JOIN cxpBancos b on h.idCuentaBanco = b.idCuentaBanco

WHERE 	h.IdTrans = 20 

	--and h.Fecha between @inicio and @final

	and h.idCuentaBanco = @idCta

	and (h.Status = 'C' and h.FechaStatus between @inicio and @final)

order by h.Referencia

return 0 






GO
GO
-- >>> FIN: cxpReporteCksCancelados.sql <<<

-- >>> INICIO: cxpReporteCksEmitidos.sql <<<
------------ final de:cxpReporteACHEmitidos ------------



------------ inicio de:cxpReporteCksEmitidos ------------





CREATE OR ALTER PROC cxpReporteCksEmitidos

 @inicio datetime, 

 @final datetime,

 @idCta int

AS

SELECT 	h.Referencia AS Numero, 

	h.IdDocumento, 

	h.Fecha, 

    	0 as IdSuplidor, -- quitar esto !!!!

	b.NumCuenta as CuentaBanco, 

	h.Concepto as Nombre, -- quitar esto tambien !!!

	b.IdCuentaMayor as idCuenta,

	b.Nombre as DescripcionCuenta, 

	(case when (h.Status = 'C' and h.fecha = h.fechastatus) then 0.00 else h.Valor end) AS ValorCheque, 

    	h.Concepto as TextoConcepto, 

	h.Status AS ST , h.fechastatus,

	case h.Status 

  	  when 'T' then 'Transito'

	  when '$' then 'Pagado'

	  when 'C' then 'Cancelado'

	 else 'Error'

	end as DescStatus 

FROM bcoDocumentos h --INNER JOIN cxpSuplidores e ON h.IdSuplidor = e.idSuplidor

    INNER JOIN cxpBancos b on h.idCuentaBanco = b.idCuentaBanco

WHERE 	h.IdTrans = 2 

	and h.Fecha between @inicio and @final

	and h.idCuentaBanco = @idCta

	--and (h.Status = 'T' or h.FechaStatus > @final)

	--and (not h.Status in ('C', '$') or h.FechaStatus < @final)

order by h.Referencia

return 0




GO
GO
-- >>> FIN: cxpReporteCksEmitidos.sql <<<

-- >>> INICIO: cxpReporteCksPagados.sql <<<
CREATE OR ALTER PROC cxpReporteCksPagados

 @inicio datetime,

 @final datetime,

 @idCta int

AS

SELECT 	h.Referencia AS Numero, 

	h.IdDocumento, 

	h.Fecha, 

    	h.IdSuplidor, 

	b.NumCuenta as CuentaBanco, 

	h.Nombre, 

	b.IdCuentaMayor as idCuenta,

	b.Nombre as DescripcionCuenta, 

	h.Valor AS ValorCheque, 

    	h.Concepto as TextoConcepto, 

	h.Status AS ST,

	h.FechaStatus

FROM cxpDocumentos h INNER JOIN cxpSuplidores e ON h.IdSuplidor = e.idSuplidor

    INNER JOIN cxpBancos b on h.idCuentaBanco = b.idCuentaBanco

WHERE 	h.IdTrans = 20 

	--and h.Fecha between @inicio and @final

	and h.idCuentaBanco = @idCta

	and (h.Status = '$' and h.FechaStatus between @inicio and @final)

order by h.Referencia

return 0 






GO
GO
-- >>> FIN: cxpReporteCksPagados.sql <<<

-- >>> INICIO: cxpReporteCksTransito.sql <<<
CREATE OR ALTER PROC cxpReporteCksTransito

 @final datetime,

 @idCta int

AS

SELECT 	h.Referencia AS Numero, 

	h.IdDocumento, 

	h.Fecha, 

    	h.IdSuplidor, 

	b.NumCuenta as CuentaBanco, 

	h.Nombre, 

	b.IdCuentaMayor as idCuenta,

	b.Nombre as DescripcionCuenta, 

	h.Valor AS ValorCheque, 

    	h.Concepto as TextoConcepto, 

	h.Status AS ST --, h.fechastatus 

FROM cxpDocumentos h INNER JOIN cxpSuplidores e ON h.IdSuplidor = e.idSuplidor

    INNER JOIN cxpBancos b on h.idCuentaBanco = b.idCuentaBanco

WHERE 	h.IdTrans = 20 

	and h.Fecha <= @final

	and h.idCuentaBanco = @idCta

	and (h.Status = 'T' or h.FechaStatus > @final)

	--and (not h.Status in ('C', '$') or h.FechaStatus < @final)

order by h.Referencia

return 0 






GO
GO
-- >>> FIN: cxpReporteCksTransito.sql <<<

-- >>> INICIO: cxpReporteItbisRet.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxpReporteItbisRet]

  @desde datetime,

  @hasta datetime

as

declare	@ctaRets varchar(16),

	@mi_rnc varchar(11)



declare @tbl table (

 keyfield uniqueidentifier, 

 rnc_cedula varchar(11),

 tipo_identificacion int,

 suplidor varchar(100),

 tipo_compra varchar(2),

 compfiscal varchar(19),

 compfiscal_modif varchar(19),

 fecha_compfiscal datetime,

 fecha_pago datetime,

 itbis_facturado decimal(19,2),

 itbis_retenido decimal(19,2),

 monto_facturado decimal(19,2)

)



insert into @tbl 

select 	h.guiddocumento,

	substring(replace(h.rnc,'-',''),1,11) as rnc_cedula,

	convert(int,s.idTipoIdentificacion) as tipo_identificacion,

	h.Nombre as Suplidor, 

	case tt.DebCre 

		when 2 then h.idClaseGasto 

		else dbo.cxpBuscarClaseGtoModificado(h.idDocumento) 

	end as tipo_compra,

	h.compfiscal,

	dbo.cxpBuscarNCFModificado(h.idDocumento) as compfiscal_modif,

	h.fecha as fecha_compfiscal,

	dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) as fecha_pago,	

    dbo.cxpTotalItbisDoc(h.idDocumento) as itbis_facturado,

	dbo.cxpItbisRetenido(h.idDocumento, @desde, @hasta) as itbis_retenido, 

	(h.Total*h.tasa) - dbo.cxpTotalItbisDoc(h.idDocumento) as monto_facturado

from cxpDocumentos h join cxpSuplidores s 

  on h.idSuplidor = s.idSuplidor

  join tipostrans tt on h.idtrans = tt.idTrans and tt.Sistema = 'CXP'  

where tt.DebCre = 2 and

	h.Fecha between @desde and @hasta

	and isnull(h.Status,'A') <> 'C'

--	and isnull(h.compfiscal,'') <> ''

	and h.idTrans <> 20

order by h.Fecha, h.idDocumento



insert into @tbl 

select 	h.guiddocumento,

	substring(replace(h.rnc,'-',''),1,11) as rnc_cedula,

	convert(int,s.idTipoIdentificacion) as tipo_identificacion,

	h.Nombre as Suplidor,  

	case tt.DebCre when 2 then h.idClaseGasto else '00' end as tipo_compra,

	h.compfiscal,

	dbo.cxpBuscarNCFModificado(h.idDocumento) as compfiscal_modif,

	h.fecha as fecha_compfiscal,

	dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) as fecha_pago,

	dbo.cxpTotalItbisDoc(h.idDocumento) as itbis_facturado,

	dbo.cxpItbisRetenido(h.idDocumento, @desde, @hasta) as itbis_retenido, --h.Valor * isnull((select sum(r.Porcentaje / 100.00) from cxpDocRetencion r where idDocumento = h.idDocumento),0.00),

	(h.Total*h.tasa) - dbo.cxpTotalItbisDoc(h.idDocumento) as monto_facturado

from cxpDocumentos h join cxpSuplidores s 

  on h.idSuplidor = s.idSuplidor

  join tipostrans tt on h.idtrans = tt.idTrans and tt.Sistema = 'CXP'  

where   tt.DebCre = 2 and

	h.Fecha < @desde 

	and exists (select 1 from cxpdocumentosdtl where iddocxpagar = h.idDocumento and fecha between @desde and @hasta) 

	and dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) between @desde and @hasta 

	and dbo.cxpItbisRetenido(h.idDocumento, @desde, @hasta) > 0.00  

	and isnull(h.compfiscal,'') <> ''

	--and h.idTrans <> 20

order by h.Fecha, h.idDocumento



select * from @tbl 

where itbis_retenido > 0.00

order by fecha_compfiscal



return 0






GO
GO
-- >>> FIN: cxpReporteItbisRet.sql <<<

-- >>> INICIO: cxpReportSuplidores.sql <<<
CREATE OR ALTER PROCEDURE cxpReportSuplidores  

as  

select  s.idSuplidor,  

 s.Nombre,  

 s.Telefono1,  

 s.Telefono2,  

 s.Fax,  

 s.RNC,  

 s.Direccion,  

 t.Descripcion as Tipo,  

 m.Moneda,

 s.LimiteCredito,

 s.FormaPago,

 s.DiasCredito,

 case s.PedirNCF when 'S' then 'Pedir' 

			     when 'G' then 'Generar'

				 when 'N' then 'No aplica'

 end as TipoNCF ,

 s.Estatus 

from cxpSuplidores s left join cxpTiposSuplidor t  

  on s.TipoSuplidor = t.TipoSuplidor  

  left join Moneda m on s.idMoneda = m.idMoneda  

where s.MostrarEnCXP = 1   

order by t.Descripcion, s.Nombre  

return 0  








GO
GO
-- >>> FIN: cxpReportSuplidores.sql <<<

-- >>> INICIO: cxpRPTAplicaciones.sql <<<
CREATE OR ALTER PROCEDURE cxpRPTAplicaciones

  @desde datetime, @hasta datetime

as

--set @desde = '10/01/2009'

--set @hasta = '10/31/2009'



select h.idDocumento,

	   h.Nombre as Proveedor,

	   h.Fecha as FechaFact, 

	   h.Referencia as Factura ,

	   h.Total as TotalFact, 

	   tt.Abrev as Tipo, 

	   ck.Referencia as Cheque,

	   ck.Fecha as FechaCKS,

	   ck.Total as TotalCk,

	   d.Valor as Aplicado

from cxpDocumentos h join cxpDocumentosDtl d on h.idDocumento = d.idDocXPagar

join cxpDocumentos ck on d.idDocumento = ck.idDocumento 

join tipostrans tt on ck.idTrans = tt.idTrans and tt.sistema = 'CXP'

where h.idTrans = 1 and ck.fecha between @desde and @hasta 

order by ck.Fecha, h.Nombre, h.Referencia

return 
GO
GO
-- >>> FIN: cxpRPTAplicaciones.sql <<<

-- >>> INICIO: cxpRPTGastosPorClase.sql <<<
CREATE OR ALTER PROCEDURE cxpRPTGastosPorClase

  @desde datetime,  

  @hasta datetime  

as  

declare @ctaRets varchar(16),  

	    @mi_rnc varchar(11)  

 

select top 1 @mi_rnc = RNC  

from configuracion  



declare @tbl table (  

 keyfield uniqueidentifier,   

 Nombre varchar(100), 

 rnc_cedula varchar(11),  

 tipo_identificacion int,  

 tipo_compra varchar(2),  

 compfiscal varchar(19),  

 compfiscal_modif varchar(19),  

 fecha_compfiscal datetime,  

 fecha_pago datetime,  

 itbis_facturado decimal(19,2),  

 itbis_retenido decimal(19,2),  

 monto_facturado decimal(19,2)  

)  

insert into @tbl   

select 

	 h.guiddocumento,  

	 h.Nombre, 

	 substring(replace(h.rnc,'-',''),1,11) as rnc_cedula,  

	 convert(int,h.idTipoIdentificacion) as tipo_identificacion,  

	 case tt.DebCre   

	  when 2 then h.idClaseGasto   

	  else dbo.cxpBuscarClaseGtoModificado(h.idDocumento)   

	 end as tipo_compra,  

	 h.compfiscal,  

	 dbo.cxpBuscarNCFModificado(h.idDocumento) as compfiscal_modif,  

	 h.fecha as fecha_compfiscal,  

	 dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) as fecha_pago,  

	 --dbo.cxpTotalImpuestosDoc(h.idDocumento) as itbis_facturado,  

		 dbo.cxpTotalItbisDoc(h.idDocumento) as itbis_facturado,  

	 dbo.cxpItbisRetenido(h.idDocumento, @desde, @hasta) as itbis_retenido, --h.Valor * isnull((select sum(r.Porcentaje / 100.00) from cxpDocRetencion r where idDocumento = h.idDocumento),0.00),  

	 (h.Total*h.tasa) - dbo.cxpTotalItbisDoc(h.idDocumento) as monto_facturado  

from cxpDocumentos h join cxpSuplidores s   

  on h.idSuplidor = s.idSuplidor  

  join tipostrans tt on h.idtrans = tt.idTrans and tt.Sistema = 'CXP'    

where --tt.DebCre = 2 and  

 h.Fecha between @desde and @hasta  

 and isnull(h.Status,'A') <> 'C'  

 and isnull(h.compfiscal,'') <> ''  

 and h.idTrans <> 20  

order by h.Fecha, h.idDocumento  



insert into @tbl   

select 

	h.guiddocumento,  

	h.Nombre, 

	substring(replace(h.rnc,'-',''),1,11) as rnc_cedula,  

	convert(int,h.idTipoIdentificacion) as tipo_identificacion,  

	case tt.DebCre when 2 then h.idClaseGasto else '00' end as tipo_compra,  

	h.compfiscal,  

	dbo.cxpBuscarNCFModificado(h.idDocumento) as compfiscal_modif,  

	h.fecha as fecha_compfiscal,  

	dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) as fecha_pago,  

	dbo.cxpTotalItbisDoc(h.idDocumento) as itbis_facturado,  

	dbo.cxpItbisRetenido(h.idDocumento, @desde, @hasta) as itbis_retenido, --h.Valor * isnull((select sum(r.Porcentaje / 100.00) from cxpDocRetencion r where idDocumento = h.idDocumento),0.00),  

	(h.Total*h.tasa) - dbo.cxpTotalItbisDoc(h.idDocumento) as monto_facturado  

from cxpDocumentos h join cxpSuplidores s   

  on h.idSuplidor = s.idSuplidor  

  join tipostrans tt on h.idtrans = tt.idTrans and tt.Sistema = 'CXP'    

where   tt.DebCre = 2 and  

 h.Fecha < @desde   

 and exists (select 1 from cxpdocumentosdtl where iddocxpagar = h.idDocumento and fecha between @desde and @hasta)   

 and dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) between @desde and @hasta   

 and dbo.cxpItbisRetenido(h.idDocumento, @desde, @hasta) > 0.00    

 --and isnull(h.compfiscal,'') <> ''  

 --and h.idTrans <> 20  

order by h.Fecha, h.idDocumento  



insert into @tbl   

select  

	h.guiddocumento,  

	b.Nombre, 

	replace(b.rnc_banco,'-','') as rnc_cedula,   

	'1' as tipo_identificacion,  

	'07' as tipo_compra,  

	h.compfiscal,  

	' ' as compfiscal_modif,  

	h.fecha as fecha_compfiscal,  

	null as fecha_pago,  

	0.00 as itbis_facturado,  

	itbis_retenido = 0.00,  

	h.Valor * h.tasa as monto_facturado  

from bcoDocumentos h join cxpBancos b   

  on h.idCuentabanco = b.idCuentabanco  

 --join TiposTrans tt on h.idTrans = tt.idTrans and tt.Sistema = 'CXP'  

where --tt.DebCre = 2 and  

 h.Fecha between @desde and @hasta  

 and isnull(h.Status,'A') <> 'C'  

 and isnull(h.compfiscal,'') <> ''  

order by h.Fecha, h.idDocumento  



insert into @tbl   

select  

	h.guiddocumento,  

	'GASTOS MENORES',

	replace(@mi_rnc,'-','') as rnc_cedula,  

	'1' as tipo_identificacion,  

	'02' as tipo_compra,  

	h.compfiscal,  

	' ' as compfiscal_modif,  

	h.fecha as fecha_compfiscal,  

	null as fecha_pago,  

	0.00 as itbis_facturado,  

	itbis_retenido = 0.00,  

	sum(d.Importe) as monto_facturado  

from bcoGastosMenores h join bcoGastosMenoresDet d   

  on h.GUIDDocumento = d.GUIDDocumento  

where h.Fecha between @desde and @hasta  

      and isnull(h.compfiscal,'') <> ''  

group by h.guiddocumento, h.compfiscal, h.fecha   

order by h.Fecha, h.compFiscal  



select t.*, cg.ClaseGasto

  from @tbl t join cxpClaseGasto cg on t.tipo_compra = cg.idClaseGasto

order by cg.ClaseGasto, fecha_compfiscal, compfiscal 



return 0  

  
GO
GO
-- >>> FIN: cxpRPTGastosPorClase.sql <<<

-- >>> INICIO: cxpRPTOCPendientes.sql <<<
CREATE OR ALTER PROCEDURE cxpRPTOCPendientes

  @hasta datetime

as

 

select *, Pendiente = GranTotal - Pagado

from (

select o.idOrden,

	   o.Numero,

	   o.Tipo, 

	   o.Fecha,

	   s.Nombre as Suplidor,

	   o.idSuplidor,

	   o.SubTotal,

	   o.TotalImpuestos as ITBIS,

	   o.GranTotal,

	   m.Moneda,

	   o.Referencia, 

	   o.Notas,

	   dbo.ocPagadoOrdenCompra(o.idOrden, o.idMoneda, @hasta) as Pagado 

from ocOrdenes o join cxpSuplidores s on o.idSuplidor = s.idSuplidor 

	join Moneda m on o.idMoneda = m.idMoneda 

where o.fecha <= @hasta 

	  and o.Status in ('A','D')

	  and dbo.ocPagadoOrdenCompra(o.idOrden, o.idMoneda, @hasta) <> o.GranTotal 

) as data 

order by data.fecha, data.Numero 

return 


GO
GO
-- >>> FIN: cxpRPTOCPendientes.sql <<<

-- >>> INICIO: cxpRPTSolicitud.sql <<<
------------ final de:cxpRetencionXSolicitud ------------

------------ inicio de:cxpRPTSolicitud ------------

CREATE OR ALTER PROCEDURE cxpRPTSolicitud

  @idSol int

as

declare @TT_CHEQUE int set @TT_CHEQUE = 20

select

	  s.*,

	  b.Nombre as Banco, 

	  m.Moneda, 

	  case s.Status 

	  when 'A' then 'Aprobada'

	  when '1' then 'No revisada'

	  when '3' then 'Primera Aprob.'

	  when '4' then 'Revisada'

	  when 'P' then 'Pagada: CK #' + (select top 1 referencia from cxpDocumentos

					 where 	idTrans = @TT_CHEQUE 

						and TipoDocOrigen = 'S' 

						and DocOrigen = @idSol 

						and Status <> 'C')

	  when 'C' then 'Anulada'

	end as DescrStatus,

	e.Nombre,

	e.Telefono1,

	e.RNC,

	TotalRetenciones = dbo.cxpRetencionXSolicitud(@idSol),

	doc.Referencia,

	doc.Fecha,

	(d.Valor * d.tasa) / s.tasa as Valor,

	RetencionDoc = (isnull((select sum(Valor) from cxpSolicitudRet where idSolicitud = s.idSolicitud and idDocumento = doc.idDocumento),0.00) * d.Tasa) / s.Tasa

from cxpsolicitudes s left join cxpsuplidores e

  on s.idSuplidor = e.idSuplidor

  left join cxpSolicitudesDtl d on s.idSolicitud = d.idSolicitud

  left join cxpDocumentos doc on d.idDocumento = doc.idDocumento 

  left join cxpBancos b on s.idCuentaBanco = b.idCuentaBanco 

  left join moneda m on s.idMoneda = m.idMoneda 

where s.idSolicitud = @idSol

order by doc.Fecha, doc.Referencia 

return 0 






GO
GO
-- >>> FIN: cxpRPTSolicitud.sql <<<

-- >>> INICIO: cxpRSBancosACH.sql <<<
CREATE OR ALTER PROCEDURE cxpRSBancosACH

AS

  SELECT

    *

  FROM

    cxpBancoACH


GO
GO
-- >>> FIN: cxpRSBancosACH.sql <<<

-- >>> INICIO: cxpRSBancoSuplidor.sql <<<
CREATE OR ALTER PROCEDURE cxpRSBancoSuplidor

 (@IdSuplidor Int)

AS

  SELECT

    *

  FROM

    cxpBancoSuplidor

  WHERE

    IdSuplidor = @IdSuplidor




GO
GO
-- >>> FIN: cxpRSBancoSuplidor.sql <<<

-- >>> INICIO: cxpRSBatchACH.sql <<<
CREATE OR ALTER PROCEDURE cxpRSBatchACH

 @idBatchACH uniqueidentifier

as

 select * from cxpBatchACH

 where idBatchACH = @idBatchACH

return 0 
GO
GO
-- >>> FIN: cxpRSBatchACH.sql <<<

-- >>> INICIO: cxpRSBatchACHDet.sql <<<
CREATE OR ALTER PROCEDURE cxpRSBatchACHDet

 @idBatchACH uniqueidentifier

as

 select * from cxpBatchACHDet

 where idBatchACH = @idBatchACH

return 0 
GO
GO
-- >>> FIN: cxpRSBatchACHDet.sql <<<

-- >>> INICIO: cxpRSClaseGasto.sql <<<
CREATE OR ALTER PROCEDURE cxpRSClaseGasto

as

 select * from cxpClaseGasto

 order by ClaseGasto

return 0




GO
GO
-- >>> FIN: cxpRSClaseGasto.sql <<<

-- >>> INICIO: cxpRSDocumentoItems.sql <<<
CREATE OR ALTER PROCEDURE cxpRSDocumentoItems

 @idDocumento int

as

 select * from cxpDocumentoItems

 where iddocumento = @idDocumento

return 0 




GO
GO
-- >>> FIN: cxpRSDocumentoItems.sql <<<

-- >>> INICIO: cxpRSPagoRetencion.sql <<<
------------ final de:cxpRPTSolicitud ------------



------------ inicio de:cxpRSPagoRetencion ------------



CREATE OR ALTER PROCEDURE cxpRSPagoRetencion

 @idDocumento int

as

 select * from cxpPagoRetencion

 where idDocumento = @idDocumento

return 0 


GO
GO
-- >>> FIN: cxpRSPagoRetencion.sql <<<

-- >>> INICIO: cxpRSRetenciones.sql <<<
CREATE OR ALTER PROCEDURE cxpRSRetenciones

as

 select * from cxpTiposRetencion

return


GO
GO
-- >>> FIN: cxpRSRetenciones.sql <<<

-- >>> INICIO: cxpRSSolicitudRet.sql <<<
------------ final de:cxpRSPagoRetencion ------------



------------ inicio de:cxpRSSolicitudRet ------------



CREATE OR ALTER PROCEDURE cxpRSSolicitudRet

 @idSolicitud int

as

 select *

 from cxpSolicitudRet

 where idSolicitud = @idSolicitud

return 




GO
GO
-- >>> FIN: cxpRSSolicitudRet.sql <<<

-- >>> INICIO: cxpRSSuplidorCuenta.sql <<<
CREATE OR ALTER PROCEDURE cxpRSSuplidorCuenta

 @idSuplidor int 

as

  select * from cxpSuplidorCuenta

  where idSuplidor = @idSuplidor

  order by idCuenta

return 0 


GO
GO
-- >>> FIN: cxpRSSuplidorCuenta.sql <<<

-- >>> INICIO: cxpSolicitudesPendientes.sql <<<
CREATE OR ALTER PROCEDURE cxpSolicitudesPendientes

as

select	s.Numero,

		s.idSolicitud,

		s.Fecha,	

		s.Total,

		s.Concepto,

		case s.tipoSolicitud when 3 then b2.Nombre 

							 else e.Nombre 

		end as Nombre,

		s.TipoSolicitud,

		case s.TipoSolicitud 

			when 1 then 'Cheque'

			when 2 then 'ACH'

			when 3 then 'Transferencia'

			else 'Cheque'

		end as Tipo, 

		s.idCuentaBanco,		

		b.Nombre as CuentaBanco 

from cxpSolicitudes s left join cxpSuplidores e

  on s.idSuplidor = e.idSuplidor

  left join cxpBancos b on s.idCuentaBanco = b.idCuentaBanco

  left join cxpBancos b2 on s.idCuentaBancoDestino = b2.idCuentaBanco 

where s.Status = 'A'

order by s.Fecha desc

return 0


GO
GO
-- >>> FIN: cxpSolicitudesPendientes.sql <<<

-- >>> INICIO: cxpSolicitudRetencion.sql <<<
CREATE OR ALTER PROCEDURE cxpSolicitudRetencion

 @idSol int

as

 select dd.idRetencion,

	dd.Retencion,

	dd.Porcentaje,

	MontoRetener = sum(d.Valor * (dd.Porcentaje / 100)),

	tr.idCuenta

   from cxpSolicitudes s join cxpSolicitudesDtl d

  on s.idSolicitud = d.idSolicitud

  join cxpDocumentos doc on d.idDocumento = doc.idDocumento

  join cxpDocRetencion dd on d.idDocumento = dd.idDocumento 

  join cxpRetencion tr on dd.idRetencion = tr.idRetencion 

 where s.idSolicitud = @idSol

 group by dd.idRetencion,

	  dd.Retencion,

	  tr.idCuenta,

	  dd.Porcentaje

return 0 




GO
GO
-- >>> FIN: cxpSolicitudRetencion.sql <<<

-- >>> INICIO: cxpSolsPorValidar.sql <<<
------------ final de:cxpRSSolicitudRet ------------



------------ inicio de:cxpSolsPorValidar ------------





CREATE OR ALTER PROCEDURE cxpSolsPorValidar

 @st char(1)

as

 select s.idSolicitud,

	s.Numero,

	s.Fecha,

	s.Usuario,

	s.Total,

	e.Nombre,

 	s.Concepto,

	s.status,

	case s.TipoSolicitud 

		when 1 then 'Cheque'

		when 2 then 'Pago ACH'

		when 3 then 'Transferencia'

	end as Tipo,

	b.Nombre as CtaBanco

 from cxpSolicitudes s join cxpSuplidores e

  on s.idSuplidor = e.idSuplidor

  join cxpBancos b on s.idCuentaBanco = b.idCuentaBanco

 where s.Status = @st

 order by s.Fecha, s.Numero

return 0




GO
GO
-- >>> FIN: cxpSolsPorValidar.sql <<<

-- >>> INICIO: cxpSolsPorValidarRPT.sql <<<
CREATE OR ALTER PROCEDURE cxpSolsPorValidarRPT

 @st char(1)  ,

 @desde datetime,

 @hasta datetime

as  

 select s.idSolicitud,  

 s.Numero,  

 s.Fecha,  

 s.Usuario,  

 s.Total,  

 e.Nombre,  

 s.Concepto,  

 s.status,  

 case s.TipoSolicitud   

  when 1 then 'Cheque'  

  when 2 then 'Pago ACH'  

  when 3 then 'Transferencia'  

 end as Tipo,  

 b.Nombre as CtaBanco  ,

 m.Moneda 

 from cxpSolicitudes s join cxpSuplidores e  

  on s.idSuplidor = e.idSuplidor  

  join cxpBancos b on s.idCuentaBanco = b.idCuentaBanco  

  join moneda m on s.idMoneda = m.idMoneda

 where s.Status = @st  and s.fecha between @desde and @hasta 

 order by s.Fecha, s.Numero  

return 0  

  




GO
GO
-- >>> FIN: cxpSolsPorValidarRPT.sql <<<

-- >>> INICIO: cxpSuplidorFind.sql <<<
CREATE OR ALTER PROCEDURE cxpSuplidorFind 

 @Todos bit,

 @filtro varchar(100)

as

 select idSuplidor, Nombre, Telefono1, Telefono2, RNC, Contacto

 from cxpSuplidores

 where (Estatus = 1 or @Todos = 1)

          and (Nombre like '%' + isnull(@filtro,'') + '%'

               or RNC like '%' + isnull(@filtro,'') + '%'

               or Telefono1 like '%' + isnull(@filtro,'') + '%'

               or Telefono2 like '%' + isnull(@filtro,'') + '%'

               or TelContacto like '%' + isnull(@filtro,'') + '%'

               or Contacto like '%' + isnull(@filtro,'') + '%'               

               or convert(varchar(20),idSuplidor) like '%' + isnull(@filtro,'') + '%')

 order by Nombre

return


GO
GO
-- >>> FIN: cxpSuplidorFind.sql <<<

-- >>> INICIO: cxpValidarDoc.sql <<<
CREATE OR ALTER PROCEDURE cxpValidarDoc

 @idTr int,

 @Ref varchar(20),

 @idSup int,

 @idDoc int,

 @OtroDoc int output

as

 select top 1 @OtroDoc = idDocumento

   from cxpDocumentos 

   where idTrans = @idTr 

	 and Referencia = @Ref 

	 and idSuplidor = @idSup

	 and idDocumento <> @idDoc

if @@ROWCOUNT < 1 

  set @OtroDoc = -1

return 0




GO
GO
-- >>> FIN: cxpValidarDoc.sql <<<

-- >>> INICIO: cxpValidarSolicitud.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[cxpValidarSolicitud]

 @idSolicitud int,

 @st char(1),

 @newst char(1),

 @usuario varchar(30)

as

 if @st = '1'

 begin

   update cxpSolicitudes

     set Status = @newst,

	 ValidadaPor = @usuario,

	 ValidadaEn = getdate()

   where idSolicitud = @idSolicitud

   return @@ERROR

 end

 if @st = '3'

 begin

   update cxpSolicitudes

     set Status = @newst,

	 RevisadaPor = @usuario,

	 RevisadaEn = getdate()

   where idSolicitud = @idSolicitud

   return @@ERROR

 end

 if @st = '4'

 begin

   update cxpSolicitudes

     set Status = @newst,

	 ValidadaFinalPor = @usuario,

	 ValidadaFinalEn = getdate()

   where idSolicitud = @idSolicitud

   return @@ERROR

 end

 

return 0 

 

 






GO
GO
-- >>> FIN: cxpValidarSolicitud.sql <<<

-- >>> INICIO: dac_cxc_Pendientes.sql <<<
CREATE OR ALTER PROCEDURE dac_cxc_Pendientes

 @idCliente int,

 @hasta datetime

as

 

select c.*, 

	   Balance = c.Valor - dbo.eduPagadoDocumentoCXC(c.idcxc,@hasta)

from cxc c join CXCTipo t on c.idCXCTipo = t.idCXCTipo 

where c.idCliente = @idCliente

	  and c.Fecha <= @hasta

	  and c.cancelado = 0

	  and c.esCredito = 0

	  and c.Valor > dbo.eduPagadoDocumentoCXC(c.idcxc,@hasta)


GO
GO
-- >>> FIN: dac_cxc_Pendientes.sql <<<

-- >>> INICIO: Devolucion2CxC.sql <<<
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
GO
-- >>> FIN: Devolucion2CxC.sql <<<

-- >>> INICIO: eduClienteActivo.sql <<<
------------ final de:cxpTotalItbisDoc ------------



------------ inicio de:eduClienteActivo ------------





CREATE OR ALTER PROCEDURE [dbo].[eduClienteActivo](@idCliente int) AS

Select  

  c.*,

  cc.Cliente as Familia

From

  Cliente c 

  left join eduEstudiante e ON e.idCliente = c.idCliente

  left join Cliente cc on c.idClienteParent = cc.idCliente

where

  c.idCliente = @idCliente




GO
GO
-- >>> FIN: eduClienteActivo.sql <<<

-- >>> INICIO: eduFindCliente.sql <<<
------------ final de:eduFamilia ------------



------------ inicio de:eduFindCliente ------------





CREATE OR ALTER PROCEDURE [dbo].[eduFindCliente](@Orden varchar(10)) AS

Select  

  e.Apellidos, 

  e.Nombres,

  c.Telefono,

  e.idCliente,

  ct.ClienteTipo, 

  e.FechaNac,

  cc.cliente as Familia,

  isnull(c.idClienteParent, c.idCliente) as idClienteParent

From

  Cliente c 

  join eduEstudiante e on c.idCliente = e.idCliente 

  left join Cliente cc on cc.idCliente = c.idClienteParent

  join ClienteTipo ct on c.idClienteTipo = ct.idClienteTipo

  join ClienteStatus cs on c.idClienteStatus = cs.idClienteStatus

Order by 

  1




GO
GO
-- >>> FIN: eduFindCliente.sql <<<

-- >>> INICIO: eduGenCodifCxcColegio.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[eduGenCodifCxcColegio]

 @idCxc uniqueidentifier

as



declare 

        @tipo varchar(2),

        @Fecha datetime,

        @idcliente int,

        @ctacxc varchar(16),

        @ctaavance varchar(16),

        @ctacaja varchar(16),

        @ctacom varchar(16),

        @porcCom float,

        @Total decimal(19,2),

        @fp varchar(16),

        @idMon int,

        @Tasa float,

        @referencia varchar(20),

        @ctaing varchar(16),

		@porcItbis float,

		@ctaitbis varchar(16),

        @PorcImpuesto float

        

declare @ctas table (

 idCuenta varchar(16),

 Debito decimal(19,2),

 Credito decimal(19,2),

 Referencia varchar(20),

 Descripcion varchar(50) 

)



if exists (select 1 from Recibo

		    where idRecibo = @idCxc 

		    and esCxc = 0)

 return 0

 



Set @ctaavance = isnull((Select convert(varchar(30), Valor) from Defaults where Clave = 'CtaAvanceCliente'),'CtaAvanceCliente')

        

select @tipo = c.idTipoDocumento,

	   @fecha = c.fecha,

       @idCliente = c.idCliente,

       @Total = c.valor,

       @idMon = c.idMoneda,

       @fp = r.idPagoForma, 

       @Tasa = c.Tasa,

       @referencia = c.idTipoDocumento + '-' + Cxc,

       @ctaing = tc.cc

from 

  cxc c 

  join cxctipo tc on c.idcxctipo = tc.idcxctipo

  left join recibo r on r.idrecibo = c.idcxc

where 

  c.idcxc = @idcxc



select @ctacxc = idcuentacredito

from Cliente c join ClienteTipoCuenta cm

  on c.idClienteTipo = cm.idClienteTipo and cm.idMoneda = @idMon

where c.idCliente = @idCliente

 

if @tipo = 'RC' 

begin

  select @porcCom = f.Comision,

         @ctacaja = f.CC,

         @ctacom = isnull(CtaComision,0.00),

         @porcItbis = 0, --isnull(@PorcImpuesto,0.00),

         @CtaItbis = Ctaimpuesto

  from pagoForma f 

   where idPagoForma = @fp



  -- aumenta dep cliente

  insert into @ctas (idCuenta, Debito, Credito, Referencia)

  VALUES (@ctaAvance,0,@Total,@referencia)

  

  -- aumenta la caja 

  insert into @ctas (idCuenta, Debito, Credito, Referencia)

  values (@ctacaja, @Total * (1 - ((@porcItbis + @porcCom) / 100.00)), 0 , @referencia)

  

  --if @porcitbis > 0 

    --insert into @ctas (idCuenta, Debito, Credito, Referencia)

    --values (@ctaItbis, @Total * (@porcitbis / 100.00),0,@referencia)

    --

  

  if @porcCom > 0 

    insert into @ctas (idCuenta, Debito, Credito, Referencia)

    values (@ctacom, @Total * (@porcCom / 100.00),0,@referencia)

  

  -- rebaja el avance

  insert into @ctas (idCuenta, Debito, Credito, Referencia, Descripcion)

  select 

    @ctaAvance,

	det.Valor,

    0,

    @referencia,

    '(R) Reduce el Deposito por ' + cargo.cxc

  from cxc pago join cxcdet det on pago.idcxc = det.idcxc

  join cxc cargo on det.idcxcdebito = cargo.idcxc

  where cargo.vencimiento <= pago.fecha and pago.idcxc = @idcxc

 union

  select 

    @ctacxc,

  	0, 

  	det.Valor,

    @referencia,

    '(R) Reduce la Cxc de ' + cargo.cxc

  from cxc pago join cxcdet det on pago.idcxc = det.idcxc

  join cxc cargo on det.idcxcdebito = cargo.idcxc

  where cargo.vencimiento <= pago.fecha and pago.idcxc = @idcxc

  

  if @@ROWCOUNT = 0

    print 'no reduccion avance ' + @referencia

    

end

else 

begin

    --Cxc

    insert into @ctas (idCuenta, Debito, Credito, Referencia)

     VALUES (@ctacxc,@Total,0,@referencia)

    -- Ingreso

    insert into @ctas (idCuenta, Debito, Credito, Referencia)

     VALUES (@ctaing, 0,@Total, @referencia)



    insert into @ctas (idCuenta, Debito, Credito, Referencia, Descripcion)

    select 

      @ctaavance,

      det.Valor,

      0,

      @referencia,

      'Descargue de Avance a ' + pago.cxc

    from 

      cxc cargo join cxcdet det on cargo.idcxc = det.idcxcdebito

      join cxc pago on det.idcxc = pago.idcxc

    where 

      pago.fecha < cargo.vencimiento and cargo.idcxc = @idcxc

    union

    select 

      @ctacxc,

      0,

      det.Valor,

      @referencia,

      'Descargue de Avance a ' + pago.cxc

    from 

      cxc cargo join cxcdet det on cargo.idcxc = det.idcxcdebito

      join cxc pago on det.idcxc = pago.idcxc

    where 

      pago.fecha < cargo.vencimiento and cargo.idcxc = @idcxc

end



delete from cgCodificacion 

where guiddocumento = @idcxc



insert into cgCodificacion 

(idCodificacion, guiddocumento, idCuenta, DebCre, Valor, Referencia, Nota, Tipo, Fecha, TipoDocumento)

select newid(),

	   @idcxc,

       idcuenta,       

       case when sum(debito) > sum(credito) then 1 else 2 end,

       case when sum(debito) > sum(credito) then sum(debito) - sum(credito) else sum(credito) - sum(debito) end,              

       Referencia,

       '',

       @Tipo,

       @Fecha,

       @Tipo 

from @ctas

group by idcuenta, referencia 

having (sum(debito) <> sum(credito)) 



--select newid(),

	   --@idcxc,

       --idcuenta,

       --case when debito > 0 then 1 else 2 end,

       --case when debito > 0 then debito else credito end,

       --Referencia,

       --Descripcion

--from @ctas

--

return 0 



-- exec EntradaContNDColegio '08/01/2007', '08/01/2007','Tito'
GO
GO
-- >>> FIN: eduGenCodifCxcColegio.sql <<<

-- >>> INICIO: eduListClienteHijo.sql <<<
------------ final de:eduListadoEstudiantes ------------



------------ inicio de:eduListClienteHijo ------------





CREATE OR ALTER PROCEDURE [dbo].[eduListClienteHijo](@idCliente int) AS

  Select 

    *

  From 

    Cliente c

    join eduEstudiante e on c.idCliente = e.idCliente

  where 

    c.idClienteParent = @idCliente




GO
GO
-- >>> FIN: eduListClienteHijo.sql <<<

-- >>> INICIO: eduListCursoCliente.sql <<<
------------ final de:eduListClienteHijo ------------



------------ inicio de:eduListCursoCliente ------------





CREATE OR ALTER PROCEDURE [dbo].[eduListCursoCliente](@idCliente int) as

  Select

    NULL idCurso,

    '(Todos)' as Curso,

    NULL idInscripcion,

    NULL idPeriodo,

    NULL idNivel,

    NULL Activo

union all

  Select

    c.idCurso,

    c.Curso,

    i.idInscripcion,

    c.idPeriodo,

    c.idNivel,

    c.Activo

  From

    eduInscripcion i

    join eduCurso c on c.idCurso = i.idCurso

  where

    i.idCliente = @idCliente

  order by

    idperiodo desc




GO
GO
-- >>> FIN: eduListCursoCliente.sql <<<

-- >>> INICIO: eduReporteCXC.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[eduReporteCXC]  

 @final datetime  

as  

--set @final = '09/30/2007'  

  

declare @data table (  

 idCliente int,  

 idcxc uniqueidentifier,  

 Tipo varchar(30),   

 CXC varchar(30),  

 Fecha datetime,  

 Valor decimal(19,2),  

 Balance decimal(19,2)   

)  

  

insert into @data  

 (idCliente, idCXc, Tipo, CXc, Fecha, Valor, Balance)  

select c.idCliente,  

    c.idcxc,  

    t.CXCTipo,   

    c.cxc,  

    c.Vencimiento as Fecha,  

    c.Valor,   

    c.Valor - dbo.eduPagadoDocumentoCXC(c.idcxc,@final)  

from cxc c join CXCTipo t on c.idCXCTipo = t.idCXCTipo   

where c.Vencimiento <= @final  

   and c.cancelado = 0  

   and c.esCredito = 0  

   and c.Valor > dbo.eduPagadoDocumentoCXC(c.idcxc,@final)  

  

--select count(*), sum(d.Valor)  

--from @data d join Cliente c   

--  on d.idCliente = c.idCliente  

  

select c.Cliente,  c.Telefono, c.Notas, 

    d.*  

from @data d join Cliente c   

  on d.idCliente = c.idCliente  

order by c.Cliente, d.Fecha, d.CXC  

  
GO
GO
-- >>> FIN: eduReporteCXC.sql <<<

-- >>> INICIO: eduRPTCXCCodif.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[eduRPTCXCCodif] 

 @desde datetime,

 @hasta datetime    

as    



select newid() as ID, 

c.idCliente,    

cl.Cliente, 

    c.idcxc,    

    t.CXCTipo,     

    c.cxc as Documento,    

    c.Vencimiento as Fecha,    

    c.Valor,

    c.Concepto, 

    cg.idCuenta,

    cat.Descripcion,

    case cg.DebCre when 1 then cg.Valor else 0.00 end as Debito,

    case cg.DebCre when 2 then cg.Valor else 0.00 end as Credito

from cxc c join CXCTipo t on c.idCXCTipo = t.idCXCTipo     

  join Cliente cl on c.idCliente = cl.idCliente 

left join cgCodificacion cg on c.idcxc = cg.GUIDDocumento

left join cgCatalogoCuentas cat on cg.idCuenta = cat.idCuenta 

where c.Vencimiento between @desde and @hasta 

   and c.cancelado = 0    

order by t.CXCTipo, c.fecha, c.cxc, cg.DebCre, cg.idCuenta 

return 


GO
GO
-- >>> FIN: eduRPTCXCCodif.sql <<<

-- >>> INICIO: eduRsCliente.sql <<<
------------ final de:eduListCursoCliente ------------



------------ inicio de:eduRsCliente ------------





CREATE OR ALTER PROCEDURE [dbo].[eduRsCliente](@idCliente int) AS

  Select *

  From Cliente c

       join eduEstudiante e on c.idCliente = e.idCliente

  where c.idCliente = @idCliente




GO
GO
-- >>> FIN: eduRsCliente.sql <<<

-- >>> INICIO: entradacontVentas.sql <<<
CREATE OR ALTER PROCEDURE entradacontVentas  

  @Desde DateTime,   

  @Hasta DateTime,  

  @usuario varchar(30),

  @ED varchar(4)

as  

    

exec svGenCodificacionFacturas @Desde, @Hasta  

  

declare  

  @NumED varchar(20)  

  

declare  

  @TablaTMP Table(NumEntrada Varchar(10), Descripcion Varchar(50), Cuenta Varchar(20), Valor Money, DebCre tinyint, Fecha Datetime, Referencia varchar(20), idCentrocosto uniqueidentifier, idPartida varchar(16))  

  

Set @NumEd = @ED -- convert(varchar(20),(Select Valor From Defaults where Clave = 'NumEDVentas'))  

  

INSERT @TablaTMP (NumEntrada, Descripcion, Cuenta, Valor, DebCre, Fecha, Referencia, idCentrocosto, idPartida)  

SELECT  

  @NumEd,      

  'Ventas de Productos y Servicios',   

  cc.idCuenta,  

  cc.Valor,  

  cc.DebCre,  

  @Hasta,  

  cc.Referencia,  

  cc.idCentroCosto,  

  cc.idPartida  

FROM  

  Factura    ft   

  join cgCodificacion cc on ft.idFactura = cc.GuidDocumento  

WHERE  

--  ((ft.cancelado = 0) or (ft.cancelado = 1 and ft.Fechacancelado > @hasta))   

  ((ft.cancelado = 0) )   

  AND ft.Fecha Between @Desde And @Hasta  

  

----------------------------------------    VENTAS   ---------------------------------------------     

  

exec cgLimpiarIntermedio @NumEd, @Hasta  

  

insert into cgEDIntermedio(EntradaNum, Fecha, idCuenta, DebCre, Valor, Descripcion)  

select NumEntrada,  

       Fecha,  

       Cuenta,  

       DebCre,  

       round(Valor,2),  

       Descripcion  

from @TablaTMP  

  

exec cgImportarEntradaDiario @NumEd, @Hasta, @usuario   

  

return @@ERROR  

  

  

  


GO
GO
-- >>> FIN: entradacontVentas.sql <<<

-- >>> INICIO: Factura2Conduce.sql <<<
CREATE OR ALTER PROCEDURE Factura2Conduce(@idFactura uniqueidentifier) AS  

--declare @idfactura uniqueidentifier

--set @idfactura='83778433-BC0A-45BF-9533-F554EAD0985B' 

Select   

  f.idFactura,   

  f.Factura,   

  f.Fecha,   

  f.Referencia,   

  f.idCliente,  

  f.Total,   

  convert(varchar(25), f.cliente) as Cliente,

  d.idproducto,d.producto,d.idUnidad,d.Cantidad

 

  From   

  Factura f join Facturadet d on d.idfactura=f.idfactura

Where   

 f.idFactura = @idFactura  



--select * from factura








GO
GO
-- >>> FIN: Factura2Conduce.sql <<<

-- >>> INICIO: Factura2CxC.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[Factura2CxC](@idFactura uniqueidentifier) AS  

    

declare  

  @TipoDoc varchar(16),  

  @error int  

  

set @Error = 0  

set @TipoDoc = 'FT' --select valor from defaults where clave = 'TIPO.DOC.FACTURA'  

  

  

  

IF exists (select top 1 1 from cxc where idcxc = @idFactura) BEGIN  

  

  if exists ( select top 1 1   

   from cxc c join cxcdet cd on c.idcxc = cd.idcxc  

  where cd.idcxcdebito = @idFactura and c.cancelado = 0)  begin  

    RETURN -1  

  end  

  

  delete  

    cxc  

  from   

    cxc c   

    join factura f on c.idcxc = f.idfactura  

  where  

    c.idcxc = @idFactura and f.Credito = 0  

  

  update   

    cxc  

  set  

    idCliente = f.idCliente,  

    Cliente   = f.Cliente,  

    fecha     = f.fecha,  

    valor     = f.Total,  

    idMoneda  = f.idMoneda,  

    tasa      = f.tasa,      

    idDocumento = f.factura,  

    concepto  = 'FACTURA CREDITO '+f.factura,  

    usuario   = f.usuario,  

    condicion = f.condicion,  

    vencimiento = f.fecha + f.condicion,  

    CompFiscal = f.CompFiscal,

    idClienteObra=f.idClienteObra,

    ClienteObra = co.ClienteObra 

  from   

    cxc c   

    join factura f on c.idcxc = f.idfactura  

    left join clienteObra co on f.idCliente = co.idCliente and f.idClienteObra = co.idClienteObra 

  where  

    c.idcxc = @idFactura and f.Credito = 1      

  

  Set @Error =  @@Error  

  if @Error <> 0 begin  

    RETURN @Error  

  end  

  

END ELSE BEGIN  

  

  insert into cxc (idcxc, cxc, idcliente, cliente, idtipodocumento, valor, fecha, concepto, idcxctipo, escredito, cancelado, referencia, usuario, Descuento, Condicion, Vencimiento, CompFiscal, idMoneda, Tasa,idClienteObra, ClienteObra)  

  select   

    f.idFactura,  

    f.Factura,  

    f.idCliente,  

    f.Cliente,  

    @TipoDoc,  

    f.Total,  

    f.Fecha,  

    'FACTURA CREDITO '+f.factura,  

    -1, --idcxcTipo  

    0, --esCredito  

    0, --cancelado  

    f.idFactura,  

    f.usuario,  

    0.00,  

    f.Condicion,  

    f.Fecha + f.Condicion,  

    f.CompFiscal,  

    f.idMoneda,  

    f.tasa ,

    f.idClienteObra ,

    co.ClienteObra 

  from  

    factura f  left join ClienteObra co on f.idCliente = co.idCliente and f.idClienteObra = co.idClienteObra 

  where   

    f.idfactura = @idFactura and f.Credito = 1  

  

  Set @Error =  @@Error  

  if @Error <> 0 begin  

    RETURN @Error  

  end  

    

END  

  

RETURN @@Error


GO
GO
-- >>> FIN: Factura2CxC.sql <<<

-- >>> INICIO: Factura2CxCpornumero.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[Factura2CxCpornumero](@Factura varchar(16)) AS

 

declare

  @TipoDoc varchar(16),

  @idFactura uniqueidentifier



Set @idFactura = (Select top 1 idFactura from factura where Factura = @Factura)



set @TipoDoc = 'FT' --select valor from defaults where clave = 'TIPO.DOC.FACTURA'



update factura set credito = 1 where credito = 0 and idfactura = @idFactura and cancelado = 0



insert into cxc (idcxc, cxc, idcliente, cliente, idtipodocumento, valor, fecha, concepto, idcxctipo, escredito, cancelado, referencia, usuario, Condicion, Vencimiento, idMoneda, Tasa, idClienteObra, ClienteObra)

  select 

    f.idFactura,

    f.Factura,

    f.idCliente,

    f.Cliente,

    @TipoDoc,

    f.Total,

    f.Fecha,

    'FACTURA CREDITO '+f.factura,

    -1, --idcxcTipo

    0, --esCredito

    0, --cancelado

    f.idFactura,

    f.usuario,

    f.Condicion,

    f.fecha + condicion,

    f.idmoneda,

    f.Tasa,

    f.idClienteObra,

    co.ClienteObra 

  from

    factura f left join ClienteObra co on f.idCliente = co.idCliente and f.idClienteObra = co.idClienteObra 

  where 

    f.idfactura = @idFactura and f.Credito = 1 and cancelado = 0

  

RETURN @@Error




GO
GO
-- >>> FIN: Factura2CxCpornumero.sql <<<

-- >>> INICIO: Factura2Dev.sql <<<
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
GO
-- >>> FIN: Factura2Dev.sql <<<

-- >>> INICIO: Factura2NCInterna.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[Factura2NCInterna](@idFactura uniqueidentifier) AS  

    

declare  

  @TipoDoc varchar(16),  

  @error int  

  

set @Error = 0  

set @TipoDoc = 'NC' --select valor from defaults where clave = 'TIPO.DOC.FACTURA'  

  

  

  

--IF exists (select top 1 1 from cxc where idcxc = @idFactura) BEGIN  

  

--  if exists ( select top 1 1   

--   from cxc c join cxcdet cd on c.idcxc = cd.idcxc  

--  where cd.idcxcdebito = @idFactura and c.cancelado = 0)  begin  

--    RETURN -1  

--  end  

  

--  delete  

--    cxc  

--  from   

--    cxc c   

--    join factura f on c.idcxc = f.idfactura  

--  where  

--    c.idcxc = @idFactura and f.Credito = 0  

  

--  update   

--    cxc  

--  set  

--    idCliente = f.idCliente,  

--    Cliente   = f.Cliente,  

--    fecha     = f.fecha,  

--    valor     = f.Total,  

--    idMoneda  = f.idMoneda,  

--    tasa      = f.tasa,      

--    idDocumento = f.factura,  

--    concepto  = 'FACTURA CREDITO '+f.factura,  

--    usuario   = f.usuario,  

--    condicion = f.condicion,  

--    vencimiento = f.fecha + f.condicion,  

--    CompFiscal = f.CompFiscal,

--    idClienteObra=f.idClienteObra,

--    ClienteObra = co.ClienteObra 

--  from   

--    cxc c   

--    join factura f on c.idcxc = f.idfactura  

--    left join clienteObra co on f.idCliente = co.idCliente and f.idClienteObra = co.idClienteObra 

--  where  

--    c.idcxc = @idFactura and f.Credito = 1      

  

--  Set @Error =  @@Error  

--  if @Error <> 0 begin  

--    RETURN @Error  

--  end  

  

--END ELSE BEGIN  

  select * from cxc where cxc='00000197'

  select * from CxcTipo

  Insert into cxc (idcxc, cxc, idcliente, cliente, idtipodocumento, valor, fecha,

   concepto, idcxctipo, escredito, cancelado, referencia, usuario, Descuento, 

   --Condicion, Vencimiento, CompFiscal, 

   idMoneda, Tasa)  

  select   

    newid(),  --f.idFactura,  

    f.Factura,  

    f.idCliente,  

    f.Cliente,  

    @TipoDoc,  

    f.Total,  

    convert(datetime,CONVERT(varchar(10), GETDATE(), 103),103), --f.Fecha,  

    'FACTURA  '+f.factura,  

    3, --idcxcTipo  

    1, --esCredito  

    0, --cancelado  

    f.idFactura,  

    f.usuario,  

    0.00,  

    --f.Condicion,  

    --f.Fecha + f.Condicion,  

    --f.CompFiscal,  

    f.idMoneda,  

    f.tasa

   

  from  

    factura f   

  where   

    f.idfactura = @idFactura  

  

  Set @Error =  @@Error  

  if @Error <> 0 begin  

    RETURN @Error  

  end  

    

--END  

  

RETURN @@Error


GO
GO
-- >>> FIN: Factura2NCInterna.sql <<<

-- >>> INICIO: FindCliente.sql <<<
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
GO
-- >>> FIN: FindCliente.sql <<<

-- >>> INICIO: FindClienteActivo.sql <<<
CREATE OR ALTER PROCEDURE FindClienteActivo(@Orden varchar(100)) AS  

Select    

  c.Cliente,   

  c.idCliente,   

  c.RNC_Cedula,  

  c.Telefono,   

  --(CASE WHEN cs.activo > 0 THEN 'Activo' ELSE 'Inactivo' END)  as Activo,   

  (CASE WHEN c.limiteCredito > 0 THEN 'Credito' ELSE 'No Credito' END) as Credito,  

  Convert(varchar(20), Notas) as Notas  

From   

  Cliente c   

  join ClienteStatus cs ON c.idClienteStatus = cs.idClienteStatus   

  where cs.Activo = 1 

Order by 1  

return 


GO
GO
-- >>> FIN: FindClienteActivo.sql <<<

-- >>> INICIO: Findcxc.sql <<<
CREATE OR ALTER PROCEDURE Findcxc(@Orden varchar(2), @Desde datetime, @Hasta datetime) AS  

  

declare @sql varchar(500),  

        @Ord varchar(2)  

  

  if @orden is null or @orden = ''   

   set @ord = ' 2'  

  else  

   set @ord = @Orden  

  

  Set @sql =   

'Select   

  t.IdCXC, t.cxc,   

  convert(varchar(10),tt.cxcTipo) as cxcTipo,   

  t.Fecha,   

  t.Valor,   

  convert(varchar(20),t.Concepto) as Concepto,   

  convert(varchar(25),t.Cliente) as Cliente,

  t.idcliente

From   

  cxc t   

  join cxcTipo tt on t.idCXCTipo = tt.idCXCTipo   

Where   

  Fecha between ''' + convert(varchar,@Desde,112)+ ''' and ''' + convert(varchar,@Hasta,112)+ '''  

Order by ' + @Ord   

   

  exec (@sql)
GO
GO
-- >>> FIN: Findcxc.sql <<<

-- >>> INICIO: FindFactura.sql <<<
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
GO
-- >>> FIN: FindFactura.sql <<<

-- >>> INICIO: FindFacturaFR.sql <<<
CREATE OR ALTER PROCEDURE FindFacturaFR(@Orden varchar(100)) AS



Select 

  idfrFactura, 

  factura,

  FechaInicio as Inicio, 

  FechaFin as Fin,

  convert(varchar(25), cliente) as Cliente ,

  DiaProceso as Dia, 

  Total, 

  DiaProceso

From 

  frFactura 

--Where 

--  Fecha between @Desde and @Hasta

--  and Credito = @Credito

Order by

  Fecha, Factura




GO
GO
-- >>> FIN: FindFacturaFR.sql <<<

-- >>> INICIO: FindOrdComp.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[FindOrdComp](@Orden varchar(100), @Desde Datetime, @Hasta Datetime) AS



Select 

  idOrdComp, 

  OrdComp, 

  Fecha, 

  Referencia, 

  idCliente, 

  Cliente, 

  NotaReferencia AS "Nota de Referencia",

  Total,

  idOrdCompStatus 

From 

  OrdComp 

Where 

  Fecha between @Desde and @Hasta 

Order by 

  Fecha desc




GO
GO
-- >>> FIN: FindOrdComp.sql <<<

-- >>> INICIO: frGenerarFactura.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[frGenerarFactura]

    @idfr UNIQUEIDENTIFIER,

    @fec DATETIME,

    @usuario VARCHAR(30)

AS

    IF EXISTS ( SELECT  1

                FROM    Factura

                WHERE   idReferencia = @idfr

                        AND Fecha = @fec )

        RETURN 1

 

    DECLARE @fno VARCHAR(16),

        @idFact UNIQUEIDENTIFIER,

        @RC INT,

        @XContador VARCHAR(16),

        @ncf VARCHAR(19),

        @host VARCHAR(50),

        @idCliente INT,

        @VencimientoNCF DATETIME,

        @reorden BIT,

        @idTipoIngreso INT



    SET @idTipoIngreso = (SELECT    CAST(Valor AS INT)

                          FROM      dbo.Defaults

                          WHERE     Clave = 'DEF_TIPOINGRESO'

                         )

  

    SELECT  @idCliente = idCliente

    FROM    frFactura

    WHERE   idfrFactura = @idfr  

  

    SET @XContador = 'FACTURA'  

    EXEC @RC = spGetNextCounterSTR @XContador, @fno OUTPUT  

    EXEC @RC = svCompFiscal @ncf OUTPUT, @host, 'FT', @idCliente,

        @VencimientoNCF OUTPUT, @reorden OUTPUT

  

    SET @idFact = NEWID()  

    INSERT  INTO Factura

            (idFactura,

             Factura,

             idCliente,

             Cliente,

             ClienteRNC,

             Contacto,

             Direccion,

             Sector,

             Ciudad,

             Telefono,

             idEmpleado,

             Fecha,

             Hora,

             Referencia,

             Cancelado,

             Credito,

             idCompania,

             SubTotal,

             Itbis,

             Descuento,

             Total,

             Nota,

             Usuario,

             idClienteObra,

             PagaItbis,

             idOrdComp,

             OrdComp,

             Fax,

             eMail,

             PorcDesc,

             Condicion,

             FechaCancelado,

             CompFiscal,

             idCondicion,

             idMoneda,

             Tasa,

             idReferencia,

             FechaVenceNCF,

             idTipoIngreso

            )

            SELECT  @idFact,

                    @fno,

                    idCliente,

                    Cliente,

                    ClienteRNC,

                    Contacto,

                    Direccion,

                    Sector,

                    Ciudad,

                    Telefono,

                    idEmpleado,

                    @fec,

                    Hora,

                    Referencia,

                    Cancelado,

                    Credito,

                    idCompania,

                    SubTotal,

                    Itbis,

                    Descuento,

                    Total,

                    REPLACE(Nota, '<MES>', dbo.cbsNombreMes(@fec)),

                    @usuario,

                    idClienteObra,

                    PagaItbis,

                    idOrdComp,

                    OrdComp,

                    Fax,

                    eMail,

                    PorcDesc,

                    Condicion,

                    FechaCancelado,

                    @ncf,

                    idCondicion,

                    idMoneda,

                    dbo.fTasaActual(idMoneda, @fec),

                    @idfr,

                    @VencimientoNCF,

                    @idTipoIngreso

            FROM    frFactura

            WHERE   idfrFactura = @idfr  

  

    INSERT  INTO FacturaDet

            (idFacturaDet,

             idFactura,

             idProducto,

             Producto,

             Cantidad,

             Precio,

             idUnidad,

             Descuento,

             Itbis,

             LineTotal,

             Linea,

             DevCantidad,

             DevItbis,

             DevDescuento,

             DevLineTotal,

             idCargo  

            )

            SELECT  NEWID() AS idFacturaDet,

                    @idFact,

                    idProducto,

                    Producto,

                    Cantidad,

                    Precio,

                    idUnidad,

                    Descuento,

                    Itbis,

                    LineTotal,

                    Linea,

                    DevCantidad,

                    DevItbis,

                    DevDescuento,

                    DevLineTotal,

                    idCargo

            FROM    frFacturaDet

            WHERE   idfrFactura = @idfr  

  

    EXEC Factura2CxC @idFact  

  

    RETURN 0  

  


GO
GO
-- >>> FIN: frGenerarFactura.sql <<<

-- >>> INICIO: GetFacturaDetEspec.sql <<<
CREATE OR ALTER PROCEDURE GetFacturaDetEspec(@idFacturaDet uniqueidentifier) as



  Select

    Especificacion,

    FechaEspec

  from

    FacturaDetEspec

  Where

    idFacturaDet = @idFacturaDet


GO
GO
-- >>> FIN: GetFacturaDetEspec.sql <<<

-- >>> INICIO: InventarioList.sql <<<
CREATE OR ALTER PROCEDURE InventarioList AS





Select 

  '-1' as idInventario,

  'Todos los Inventarios' as Inventario

Union all



Select 

  idInventario, 

  Inventario

From

  Inventario

Order by

 1






GO
GO
-- >>> FIN: InventarioList.sql <<<

-- >>> INICIO: mantOT2SolCompra.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[mantOT2SolCompra](@idOrdenTrab uniqueidentifier, @Usuario varchar(30)) as



--declare

--  @idOrdenTrab uniqueidentifier, 

--  @Usuario varchar(30)



--set @idOrdentrab ='53ADC3B5-23AD-48BA-8037-FD22C2179279' 

--set @usuario = 'tito'





declare

  @id uniqueidentifier,

  @contador varchar(16),

  @idEstado varchar(16),

  @DeptoMantto varchar(16)

    

Set @DeptoMantto = (select convert(varchar(16),valor) from defaults where Clave = 'COD_DEPTO_MANTTO')  

Set @idEstado = (Select convert(varchar(16),valor) from defaults where Clave = 'OT2SOLIC_STATUS')  

Set @id = newid()

Exec spGetNextCounterSTR 'SOL_COMPRA', @Output = @Contador output



Insert into ocsolicitud(idSolicitud, Solicitud, Fecha, Solicitante, Usuario, Motivacion, Ubicacion, DepartamentoId)

select top 1

  @id, @Contador, convert(varchar(14),getdate(),112), @usuario, @usuario, '['+ot.idgfh+'] '+ot.Descripcion, null, 'Mantenimiento'

from

  ordentrab ot

  join ordentrabdet otd on ot.idOrdenTrab = otd.idOrdenTrab

where

  ot.idordentrab = @idordentrab 

  and otd.compras > 0

  and otd.solicitado = 0

  

insert into ocSolicitudDet(

  idSolicitudDet, 

  idSolicitud, 

  ItemNo, 

  Fecha, 

  Cantidad, 

  idUnidad, 

  idProducto, 

  Referencia, 

  Descripcion, 

  idCentroCosto, 

  CentroCosto, 

  idPartida, 

  Prioridad, 

  FechaPrioridad, 

  Notas, 

  Usuario, 

  idEstado, 

  DepartamentoId, 

  Cancelado, 

  Devuelta, 

  Grupo, 

  Suplidores, 

  Pendiente)

select

  newid(), 

  @id, 

  1, 

  convert(varchar(14),getdate(),112), 

  otd.compras, 

  isnull(p.idUnidad,'UNIDAD'), 

  otd.idproducto, 

  convert(varchar(30), p.Referencia), 

  convert(varchar(400),otd.OrdenTrabDet), 

  otd.idOrdentrab, 

  ot.OrdenTrab, 

  null, 

  ot.OTprioridad, 

  null, 

  convert(varchar(200),ot.descripcion), 

  @usuario, 

  @idEstado, 

  @DeptoMantto, 

  0, 

  0, 

  isnull(g.Grupo,'MANTENIMIENTO'), 

  '', 

  1 

from

 OrdenTrabDet otd

 join Ordentrab ot on otd.idordentrab = ot.idordentrab

 left join Producto p on otd.idproducto = p.idproducto

 left join Grupo g on p.idgrupo = g.idgrupo

Where

  otd.idordentrab = @idordentrab 

  and otd.compras > 0

  and otd.solicitado = 0

  



update

  ordentrabdet

set

  Solicitado = 1

from

 OrdenTrabDet otd

Where

  otd.idordentrab = @idordentrab 

  and otd.compras > 0

  and otd.solicitado = 0




GO
GO
-- >>> FIN: mantOT2SolCompra.sql <<<

-- >>> INICIO: nomCxCEmpleadosXNomina.sql <<<
--------------------------------------------------





CREATE OR ALTER PROCEDURE [dbo].[nomCxCEmpleadosXNomina](@NominaID int) AS      



declare

  @Fecha datetime



Set @Fecha = (select fecha from nomina where nominaid = @nominaid)





SELECT       

 e.EmpleadoID,       

 e.Nombre,       

 e.Apellido,       

 c.Fecha,       

 tt.TipoTransaccion,       

 c.Total,       

 c.Cuotas,       

 Descontado = isnull((select sum(Monto) from cxcEmpDet where CxcEmpId = c.CxcEmpId and fecha <= @fecha),0.00),            

 DescNomina = isnull((select sum(Monto) from cxcEmpDet where CxcEmpId = c.CxcEmpId and fecha <= @fecha and nominaid = @NominaID),0.00),            

 Balance = c.Total - isnull((select sum(Monto) from cxcEmpDet where CxcEmpId = c.CxcEmpId and fecha <= @fecha),0.00),       

 c.CXCEmp,       

 c.Activo,

 @Fecha as FechaNom,

 @NominaID as Nomina     

FROM               

  dbo.Empleado e 

  INNER JOIN CxCEmp c ON e.EmpleadoID = c.EmpleadoID 

  INNER JOIN dbo.TipoTransaccion tt ON c.TipoTransaccionID = tt.TipoTransaccionID      

WHERE           

 c.Fecha <= @Fecha   

 and c.Total > (isnull((select sum(Monto) from cxcEmpDet where CxcEmpId = c.CxcEmpId and fecha <= @fecha),0.00)  - isnull((select sum(Monto) from cxcEmpDet where CxcEmpId = c.CxcEmpId and fecha <= @fecha and nominaid = @NominaID),0.00))

ORDER BY       

 c.Fecha


GO
GO
-- >>> FIN: nomCxCEmpleadosXNomina.sql <<<

-- >>> INICIO: nomFindCxcEmp.sql <<<
CREATE OR ALTER PROCEDURE nomFindCxcEmp(@Orden VarChar(20))

AS

SELECT c.CxcEmpID, c.CxcEmp, c.EmpleadoID, c.Total, c.Balance,  E.Apellido + '' As Apellido, '' + E.Nombre as Empleado, c.Activo

              FROM CxCEmp c JOIN Empleado E ON c.EmpleadoId = E.EmpleadoID




GO
GO
-- >>> FIN: nomFindCxcEmp.sql <<<

-- >>> INICIO: ocCompraPendiente.sql <<<
CREATE OR ALTER PROCEDURE ocCompraPendiente(@idproducto varchar(30)) as



   Select

     sd.idProducto,     

     sd.idSolicitudDet,

     s.Solicitud,     

     sd.Fecha,

     sd.Cantidad,

     sd.idUnidad as Unidad,     

     

     Orden = (Select sum(cantidad) 

     		  from ocDetalleOrden od

              where od.idSolicitudDet = sd.idSolicitudDet),

              

     Recibido = (Select sum(cantidad) 

        	     from ocRecepcionDet rd 

                 where rd.idSolicitudDet = sd.idSolicitudDet)

   into #tmp               

   From

     ocSolicitudDet sd

     join ocSolicitud s on s.idSolicitud = sd.idSolicitud

   Where

     sd.idproducto = @idProducto

     and sd.cancelado = 0

     and isnull((Select sum(cantidad) 

     		      from ocRecepcionDet rd 

                      where rd.idSolicitudDet = sd.idSolicitudDet),0) < sd.cantidad

   Order by

     sd.Fecha desc, s.Solicitud Desc





declare @reserv float



select @reserv = dbo.invReservadoProducto(@idProducto)



select *, @reserv as Reservado, (Cantidad - Orden) as enSolicitado, (Orden - Recibido) as BackOrder

from #tmp




GO
GO
-- >>> FIN: ocCompraPendiente.sql <<<

-- >>> INICIO: ocDiarioCompras.sql <<<
------------ final de:ocBuscarOrdenesRango ------------



------------ inicio de:ocDiarioCompras ------------





------------ final de:ocDetalleLiquidacion ------------

------------ inicio de:ocDiarioCompras ------------

CREATE OR ALTER PROCEDURE [dbo].[ocDiarioCompras]

 @desde datetime,

 @hasta datetime,

 @idSuplidor int,

 @idProducto varchar(30)

as

 select oc.idOrden,

	    do.idDetalleOrden,

	    oc.idSuplidor,

	    oc.Numero, 

	    s.Nombre as Suplidor,

		oc.Fecha,

		do.idProducto,

	    p.Producto,

	    do.Cantidad,

	    do.Costo,

	    do.Itbis,

		do.Descuento,

	    do.idUnidad,

		LineTotal = (do.Cantidad * do.Costo),

        Total = (do.Cantidad * do.Costo) - do.Descuento + do.Itbis ,

        m.Moneda 

 from ocOrdenes oc join ocDetalleOrden do on oc.idOrden = do.idOrden

   join cxpSuplidores s on oc.idSuplidor = s.idSuplidor

   join producto p on do.idProducto = p.idProducto 

   join Moneda m on oc.idMoneda = m.idMoneda 

 where oc.Fecha between @desde and @Hasta

	   and do.TipoItem = 'I'

       and (@idSuplidor = -1 or oc.idSuplidor = @idSuplidor)

       and (@idProducto = '' or do.idProducto = @idProducto)

 order by m.Moneda, oc.Fecha, oc.Numero 








GO
GO
-- >>> FIN: ocDiarioCompras.sql <<<

-- >>> INICIO: ocDiarioComprasDetallado.sql <<<
------------ final de:ocDiarioCompras ------------



------------ inicio de:ocDiarioComprasDetallado ------------



CREATE OR ALTER PROCEDURE [dbo].[ocDiarioComprasDetallado]

 @desde datetime,

 @hasta datetime

as

declare @tbl table (

 idLiquidacion uniqueidentifier,

 idLiquidacionDet uniqueidentifier, 

 idProducto varchar(30),

 Producto varchar(500),

 Tasa float, 

 ValorFOB decimal(19,2),

 Partida varchar(30),

 PorcArancel float,

 Cantidad float,

 Flete decimal(19,2),

 Seguro decimal(19,2),

 ValorCIF as Flete + Seguro + ValorFOB,

 Gravamen decimal(19,2),

 ServAduana decimal(19,2),

 Portuaria decimal(19,2),

 ITBIS decimal(19,2),

 Gestion decimal(19,2),

 OtrosAduana decimal(19,2),

 Transporte decimal(19,2),

 Impuestos as (Gravamen + ServAduana + Portuaria + ITBIS),

 Importacion as (Gestion + OtrosAduana + Transporte),

 Total as ((Flete + Seguro + (ValorFOB )) * Tasa) + (Gravamen + ServAduana + Portuaria) + (Gestion + OtrosAduana + Transporte)

)

insert into @tbl 

 (idLiquidacion, idLiquidacionDet, idProducto, Producto, Tasa, ValorFOB, Partida, PorcArancel, Cantidad, Flete,

  Seguro, Gravamen, ServAduana, Portuaria, Itbis, Gestion, OtrosAduana, Transporte)

select  l.idLiquidacion,

		d.idLiquidacionDet, 

		d.idproducto,

		d.Producto,

		l.Tasa, 

		d.ValorFOB * Cantidad,

		p.partidaArancel as Partida,

		p.porcArancel as porcArancel,

		d.Cantidad,

		FleteUS = dbo.ocTotalCargoLiqPesos('FLETE',d.idLiquidacionDet) / l.Tasa,

		Seguro = dbo.ocTotalCargoLiqPesos('SEGURO',d.idLiquidacionDet) / l.Tasa,

		Gravamen = dbo.ocTotalCargoLiqPesos('ARANCELES',d.idLiquidacionDet),

		ServAduana = dbo.ocTotalCargoLiqPesos('SERVADUANA',d.idLiquidacionDet),

		Portuaria = dbo.ocTotalCargoLiqPesos('PORTUARIA',d.idLiquidacionDet),

		ITBIS = dbo.ocTotalCargoLiqPesos('ITBIS',d.idLiquidacionDet),

		Gestion = dbo.ocTotalCargoLiqPesos('GESTION',d.idLiquidacionDet),

		OtrosAduana = dbo.ocTotalCargoLiqPesos('OTROS',d.idLiquidacionDet),

		Transporte = dbo.ocTotalCargoLiqPesos('TRANSPORTE',d.idLiquidacionDet)	    

from ocLiquidacion l join ocLiquidacionDet d 

  on l.idLiquidacion = d.idLiquidacion

  join producto p on d.idProducto = p.idProducto 

where l.fecha between @desde and @hasta 

select	l.idLiquidacion, 

	    ld.idLiquidacionDet,

		l.Liquidacion,

		l.Suplidor,

		l.Fecha,

		l.OrdenCompra as Orden,

		l.Tasa,

		ld.idProducto,

		ld.Producto,

		ld.Cantidad,

		ld.idUnidad,

		ld.ValorFOB,

		t.Total / ld.Cantidad as CostoUnitarioRD,

		(t.Total / ld.Cantidad) / l.Tasa as CostoUnitarioUS,

		t.Total as CostoTotal,

		TotalLiquidacionRD = (select sum(Total) from @tbl where idLiquidacion = l.idLiquidacion),

		TotalLiquidacionUS = (select sum(Total) from @tbl where idLiquidacion = l.idLiquidacion) / l.Tasa	

from ocLiquidacion l join ocLiquidacionDet ld on l.idLiquidacion = ld.idLiquidacion

 join @tbl t on ld.idLiquidacionDet = t.idLiquidacionDet

where l.fecha between @desde and @hasta 








GO
GO
-- >>> FIN: ocDiarioComprasDetallado.sql <<<

-- >>> INICIO: ocDiarioComprasResumido.sql <<<
------------ final de:ocDiarioComprasDetallado ------------



------------ inicio de:ocDiarioComprasResumido ------------



CREATE OR ALTER PROCEDURE [dbo].[ocDiarioComprasResumido]

 @desde datetime,

 @hasta datetime

as

declare @tbl table (

 idLiquidacion uniqueidentifier,

 idLiquidacionDet uniqueidentifier, 

 idProducto varchar(30),

 Producto varchar(500),

 Tasa float, 

 ValorFOB decimal(19,2),

 Partida varchar(30),

 PorcArancel float,

 Cantidad float,

 Flete decimal(19,2),

 Seguro decimal(19,2),

 ValorCIF as Flete + Seguro + ValorFOB,

 Gravamen decimal(19,2),

 ServAduana decimal(19,2),

 Portuaria decimal(19,2),

 ITBIS decimal(19,2),

 Gestion decimal(19,2),

 OtrosAduana decimal(19,2),

 Transporte decimal(19,2),

 Impuestos as (Gravamen + ServAduana + Portuaria + ITBIS),

 Importacion as (Gestion + OtrosAduana + Transporte),

 Total as ((Flete + Seguro + (ValorFOB )) * Tasa) + (Gravamen + ServAduana + Portuaria) + (Gestion + OtrosAduana + Transporte)

)

insert into @tbl 

 (idLiquidacion, idLiquidacionDet, idProducto, Producto, Tasa, ValorFOB, Partida, PorcArancel, Cantidad, Flete,

  Seguro, Gravamen, ServAduana, Portuaria, Itbis, Gestion, OtrosAduana, Transporte)

select  l.idLiquidacion,

		d.idLiquidacionDet, 

		d.idproducto,

		d.Producto,

		l.Tasa, 

		d.ValorFOB * Cantidad,

		p.partidaArancel as Partida,

		p.porcArancel as porcArancel,

		d.Cantidad,

		FleteUS = dbo.ocTotalCargoLiqPesos('FLETE',d.idLiquidacionDet) / l.Tasa,

		Seguro = dbo.ocTotalCargoLiqPesos('SEGURO',d.idLiquidacionDet) / l.Tasa,

		Gravamen = dbo.ocTotalCargoLiqPesos('ARANCELES',d.idLiquidacionDet),

		ServAduana = dbo.ocTotalCargoLiqPesos('SERVADUANA',d.idLiquidacionDet),

		Portuaria = dbo.ocTotalCargoLiqPesos('PORTUARIA',d.idLiquidacionDet),

		ITBIS = dbo.ocTotalCargoLiqPesos('ITBIS',d.idLiquidacionDet),

		Gestion = dbo.ocTotalCargoLiqPesos('GESTION',d.idLiquidacionDet),

		OtrosAduana = dbo.ocTotalCargoLiqPesos('OTROS',d.idLiquidacionDet),

		Transporte = dbo.ocTotalCargoLiqPesos('TRANSPORTE',d.idLiquidacionDet)	    

from ocLiquidacion l join ocLiquidacionDet d 

  on l.idLiquidacion = d.idLiquidacion

  join producto p on d.idProducto = p.idProducto 

where l.fecha between @desde and @hasta 

select	l.idLiquidacion, 	    

		l.Liquidacion,

		l.Suplidor,

		l.Fecha,

		l.OrdenCompra as Orden,

		l.Tasa,		

		o.GranTotal as TotalOrdenUS, 

		o.GranTotal * l.Tasa as TotalOrdenRD, 

		TotalLiquidacionRD = (select sum(Total) from @tbl where idLiquidacion = l.idLiquidacion),

		TotalLiquidacionUS = (select sum(Total) from @tbl where idLiquidacion = l.idLiquidacion) / l.Tasa	

from ocLiquidacion l left join ocOrdenes o on l.idOrdenCompra = o.idOrden 

where l.fecha between @desde and @hasta 

order by l.fecha, l.liquidacion 








GO
GO
-- >>> FIN: ocDiarioComprasResumido.sql <<<

-- >>> INICIO: ocGenerarCXP.sql <<<
------------ final de:ocDiarioCompras ------------



------------ inicio de:ocGenerarCXP ------------



CREATE OR ALTER PROCEDURE [dbo].[ocGenerarCXP]

 @idOrd int,

 @fec datetime

as

declare @idEnt int,	

	@total decimal(19,2),

	@itbis decimal(19,2),

	@ctaitbis varchar(16),

	@ctaRet varchar(16),

	@MtoRet decimal(19,2),

	@CtaProv varchar(16),

	@idTr int,

	@Err int, 

	@St char(1), 

	@Porc decimal(8,4)

set @idTr = 14

/*

select 	@idEnt = o.idSuplidor,

	@total = sum(d.costo * d.Cantidad),

	@itbis = o.itbis,

	@St = o.Status 

from ocOrdenes o join ocDetalleOrden d

  on o.idOrden = d.idOrden

where o.idOrden = @idOrd

group by o.idSuplidor, o.itbis, o.Status 

begin tran 

if @st = 'R' 

  delete from TransaccionCXP 

	where 	idTrans = @idTr 

		and idDocumento = @idOrd 

exec cxpBuscarRetencion @idEnt, @ctaRet output, @Porc output

if isnull(@Porc,0) > 0

  set @MtoRet = (@Total + @itbis) * (@Porc / 100)

else

  set @MtoRet = 0.00

insert into Transaccioncxp (idTrans, IdDocumento, idOrden, Fecha, Relacion, idEntidad, Total)

values (@idTr, @idOrd, 1, @Fec, @idOrd, @idEnt, (@total + @itbis) - @MtoRet)

if @@ERROR > 0 

begin

  rollback tran

  return 1

end

insert into detalleTranscxp (idTrans, idDocumento, idOrden, idCuenta, Debcre, Valor)

select 	@idTr,

	@idOrd,

	1, 

	d.idCuenta,

	1 as DebCre,

	sum(d.Costo * d.Cantidad)

from ocDetalleOrden d

where d.idOrden = @idOrd

group by d.idCuenta

if @@ERROR > 0 

begin

  rollback tran

  return 1

end

if @itbis > 0

begin

  insert into detalleTranscxp (idTrans, idDocumento, idOrden, idCuenta, Debcre, Valor)

    values (@idTr, @idOrd, 1, @CtaITBIS, 1, @itbis)

  if @@ERROR > 0 

  begin

    rollback tran

    return 1

  end

end

if @MtoRet > 0 

begin

  insert into detalleTranscxp (idTrans, idDocumento, idOrden, idCuenta, Debcre, Valor)

    values (@idTr, @idOrd, 1, @CtaRet, 2, @MtoRet)

  if @@ERROR > 0 

  begin

    rollback tran

    return 1

  end

end

insert into detalleTranscxp (idTrans, idDocumento, idOrden, idCuenta, Debcre, Valor)

  values (@idTr, @idOrd, 1, @CtaProv, 2, (@Total + @itbis) - isnull(@MtoRet,0.00))

if @@ERROR > 0 

begin

  rollback tran

  return 1

end

update ocOrdenes

  set status = 'R'

where idOrden = @idOrd

if @@ERROR > 0 

begin

  rollback tran

  return 1

end

commit tran 

*/

return 0








GO
GO
-- >>> FIN: ocGenerarCXP.sql <<<

-- >>> INICIO: presClienteAct.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[presClienteAct](@idCliente int) as



Select 

  c.* , s.activo

from 

  presCliente c

  join presClienteStatus s on c.Status = s.Status

where 

  idCliente = @idCliente


GO
GO
-- >>> FIN: presClienteAct.sql <<<

-- >>> INICIO: presClienteList.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[presClienteList](@Activo bit) as



  Select 

    c.idCliente,

    c.Nombre,

    c.Apellido,

    c.Cedula,

    convert(varchar(15), c.Telefono) as Telefono,

    convert(varchar(20), s.descripcion) as Status

  From

    presCliente c

    join presClienteStatus s on c.status = s.status 

  where

    (s.activo = @Activo) or (@Activo is null)


GO
GO
-- >>> FIN: presClienteList.sql <<<

-- >>> INICIO: presFindCliente.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[presFindCliente](@Orden varchar(10)) AS





Select  

  c.Cedula,

  c.Apellido, 

  c.Nombre,

  c.idCliente, 

  Convert(varchar(15), c.Telefono) as Telefono, 

  c.Status,

  (CASE WHEN cs.activo = 1 THEN 'Activo' ELSE 'Inactivo' END)  as Activo,

  Convert(varchar(10), Empresa) as Empresa,

  Convert(varchar(20), Nota) as Nota

From 

  presCliente c 

  join presClienteStatus cs ON c.Status = cs.Status 

Order by 1


GO
GO
-- >>> FIN: presFindCliente.sql <<<

-- >>> INICIO: presReporteCXC.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[presReporteCXC] (@hasta datetime) as



select  t.idTransaccion,

	t.Transaccion, 

	t.Prestamo,

	p.Cliente, 

	c.Telefono,

	c.Direccion, 

	t.idPrestamo,

	t.idTipo,

	t.Fecha,

	t.Capital,

	t.Interes,

	t.Monto ,

	dbo.presPagadoTransaccion(t.idtransaccion, @hasta) Pagado

from 

  prestransaccion t 

  join presPrestamo p on t.idPrestamo = p.idPrestamo 

  join presCliente c on p.idCliente = c.idCliente 

where   

  t.Cancelado = 0

  and t.DebCre = 1 

  and t.fecha <= @hasta  

  and t.Monto > dbo.presPagadoTransaccion(t.idtransaccion, @hasta)

order by 

  p.Cliente, p.Prestamo, t.Fecha, t.idtransaccion


GO
GO
-- >>> FIN: presReporteCXC.sql <<<

-- >>> INICIO: presRSCliente.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[presRSCliente](@idCliente int) AS



  Select 

    *

  From

    presCliente

  Where

    idCliente = @idCliente


GO
GO
-- >>> FIN: presRSCliente.sql <<<

-- >>> INICIO: pvFacturasAbiertas.sql <<<
--alter table factura add Cobrada bit not null default (1)

--go

CREATE OR ALTER PROCEDURE [dbo].[pvFacturasAbiertas]

as

select 	f.idFactura,

	f.Factura,

	f.Fecha,

	f.Hora,

	f.IdCliente,

	f.Cliente,

	f.Usuario, 

	f.Total

from factura f 

where f.Cobrada = 0 and f.fecha >= dateadd(day,-5,getdate())

order by f.Factura

return 0


GO
GO
-- >>> FIN: pvFacturasAbiertas.sql <<<

-- >>> INICIO: pvListaclientesParcial.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[pvListaclientesParcial]  

 @fld varchar(30),

 @valr varchar(100),

 @lookin bit

as

 declare @Whr varchar(200)

 declare @SQL varchar(500)



 if @lookin = 0 

   set @Whr = 'where idClienteStatus = 1  and ' + @fld + ' like ''' + @valr + '%'''

 else

   set @Whr = 'where idClienteStatus = 1  and ' + @fld + ' like ''%' + @valr + '%'''



 set @SQL = 'select Telefono,Cliente,idCliente from cliente o '

 set @SQL = @SQL + @Whr 

 set @SQL = @SQL + ' order by ' + @fld



 exec (@SQL)





 select Telefono,Cliente,idCliente from cliente 



return 0 




GO
GO
-- >>> FIN: pvListaclientesParcial.sql <<<

-- >>> INICIO: Recibo2CxC.sql <<<
------------ final de:PrdcRsTickets ------------



------------ inicio de:Recibo2CxC ------------



CREATE OR ALTER PROCEDURE [dbo].[Recibo2CxC](@idRecibo uniqueidentifier) AS

declare

  @TipoDoc varchar(16)

set @TipoDoc = 'RC' --select valor from defaults where clave = 'TIPO.DOC.FACTURA'

if exists (select 1 from cxc where idcxc = @idRecibo)

begin

  if exists (select 1 from cxcdet where idcxc = @idrecibo)

   -- return -1

  delete from cxc where idcxc = @idRecibo

end

insert into cxc (idcxc, cxc, idcliente, cliente, idtipodocumento, valor, fecha, concepto, idcxctipo, escredito, cancelado, referencia, usuario, Descuento, Tasa, idmoneda)

  select 

    f.idRecibo,

    f.Recibo,

    f.idCliente,

    f.Cliente,

    @TipoDoc,

    f.TotalNeto,

    f.Fecha,

    f.Concepto,

    -2, --idcxcTipo

    1, --esCredito

    0, --cancelado

    f.idRecibo,

    f.usuario,

    0.00,

    f.tasa,

    f.idmoneda    

  from

    Recibo f

  where 

    f.idRecibo = @idRecibo and f.esCxc = 1    

RETURN @@Error




GO
GO
-- >>> FIN: Recibo2CxC.sql <<<

-- >>> INICIO: RPTAplicaciondeCobros.sql <<<
CREATE OR ALTER PROCEDURE RPTAplicaciondeCobros(@Desde datetime, @Hasta Datetime) AS



declare @Fecha datetime



Set @Fecha = @Desde



SELECT TOP 100 PERCENT 

  @Desde as Desde,

  @Hasta as Hasta,

  f.idCxc AS idFactura, 

  f.Cxc AS Factura, 

  c.idCliente, 

  c.Cliente, 

  f.idTipoDocumento, 

  f.Valor, 

  f.Fecha, 

  pd.Valor AS Aplicado, 

  pd.Fecha AS FechaAplicado, 

  p.Cxc AS Recibo, 

  p.Fecha AS FechaRecibo, 

  p.idCxc AS idRecibo,

  (CASE WHEN (Month(pd.fecha) = month(@Fecha) and year(pd.fecha) = year(@Fecha)) THEN pd.Valor ELSE $0.00 END) as Mes1,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,1,@Fecha)) and year(pd.fecha) = year(dateadd(m,1,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes2,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,2,@Fecha)) and year(pd.fecha) = year(dateadd(m,2,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes3,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,3,@Fecha)) and year(pd.fecha) = year(dateadd(m,3,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes4,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,4,@Fecha)) and year(pd.fecha) = year(dateadd(m,4,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes5,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,5,@Fecha)) and year(pd.fecha) = year(dateadd(m,5,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes6,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,6,@Fecha)) and year(pd.fecha) = year(dateadd(m,6,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes7,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,7,@Fecha)) and year(pd.fecha) = year(dateadd(m,7,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes8,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,8,@Fecha)) and year(pd.fecha) = year(dateadd(m,8,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes9,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,9,@Fecha)) and year(pd.fecha) = year(dateadd(m,9,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes10,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,10,@Fecha)) and year(pd.fecha) = year(dateadd(m,10,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes11,

  (CASE WHEN (Month(pd.fecha) = month(dateadd(m,11,@Fecha)) and year(pd.fecha) = year(dateadd(m,11,@Fecha))) THEN pd.Valor ELSE $0.00 END) as Mes12

FROM         

  dbo.Cliente c INNER JOIN

  dbo.Cxc f ON c.idCliente = f.idCliente INNER JOIN

  dbo.CxcDet pd ON f.idCxc = pd.idCxcDebito INNER JOIN

  dbo.Cxc p ON pd.idCxc = p.idCxc

WHERE     

  (f.esCredito = 0) 

  AND (f.Cancelado = 0) 

  AND (p.Cancelado = 0)

  AND (f.fecha between @Desde and @Hasta)

ORDER BY f.Fecha, f.Cxc
GO
GO
-- >>> FIN: RPTAplicaciondeCobros.sql <<<

-- >>> INICIO: RPTCobrosMensuales.sql <<<
CREATE OR ALTER PROCEDURE RPTCobrosMensuales (@Desde datetime) as





SELECT     -- la fact se saca de factura para incluir factura al contado sin cxc

  (isnull((SELECT     

	    SUM(c.Total)

	  FROM         

	    dbo.Factura c

	  WHERE

	    (Month(c.Fecha) = Month(@Desde) 

	    and Year(c.Fecha)= Year(@Desde))  

	    and (c.Cancelado = 0))

	,0))  AS Facturacion,



  (isnull((SELECT     -- los pagos al contado se sacan de las factura que no son a credito

	     SUM(c.Total)

 	   FROM         

 	     dbo.Factura c

	   WHERE

    	     (Month(c.Fecha) = Month(@Desde) 

             and Year(c.Fecha)= Year(@Desde))  

             AND (c.Cancelado = 0)

             AND (Credito = 0))

	,0))  AS Contado,



  SUM(pd.Valor) as TotalCobrado,

  SUM(CASE WHEN pd.Fecha BETWEEN @Desde AND @Desde + 29 THEN pd.Valor ELSE 0.00 END) as Cobrado30,

  SUM(CASE WHEN pd.Fecha BETWEEN @Desde+30 AND @Desde+59 THEN pd.Valor ELSE 0.00 END) as Cobrado60,

  SUM(CASE WHEN pd.Fecha BETWEEN @Desde+60 AND @Desde+89 THEN pd.Valor ELSE 0.00 END) as Cobrado90,

  SUM(CASE WHEN pd.Fecha BETWEEN @Desde+90 AND @Desde+119 THEN pd.Valor ELSE 0.00 END) as Cobrado120,

  SUM(CASE WHEN pd.Fecha BETWEEN @Desde+120 AND @Desde+149 THEN pd.Valor ELSE 0.00 END) as Cobrado150,

  SUM(CASE WHEN pd.Fecha BETWEEN @Desde+150 AND Getdate() THEN pd.Valor ELSE 0.00 END) as CobradoMas

INTO

  #TMP

FROM         

  dbo.Cxc p 

  INNER JOIN dbo.CxcDet pd ON p.idCxc = pd.idCxc 

  INNER JOIN dbo.Cxc f ON pd.idCxcDebito = f.idCxc

WHERE       

  (Month(f.Fecha) = Month(@Desde) and Year(f.Fecha)= Year(@Desde))  

  AND (f.esCredito = 0) 

  AND (p.Cancelado = 0) 

  AND (f.Cancelado = 0)



Select

  Compania,

  DateName(m,@Desde) as Mes,

  Year(@Desde) as Ano,	

  Facturacion,

  Contado,

  convert(decimal(19,2),(Contado    / Facturacion)) as ContadoPorc,  

  Cobrado30,

  convert(decimal(19,2),(Cobrado30  / Facturacion)) as Cobrado30Porc,

  Cobrado60,

  convert(decimal(19,2),(Cobrado60  / Facturacion)) as Cobrado60Porc,

  Cobrado90,

  convert(decimal(19,2),(Cobrado90  / Facturacion)) as Cobrado90Porc,

  Cobrado120,

  convert(decimal(19,2),(Cobrado120  / Facturacion)) as Cobrado120Porc,

  Cobrado150,

  convert(decimal(19,2),(Cobrado150  / Facturacion)) as Cobrado150Porc,

  CobradoMas,

  convert(decimal(19,2),(CobradoMas  / Facturacion)) as CobradoMasPorc,

  (TotalCobrado + Contado) as TotalCobrado,

  convert(decimal(19,2),((TotalCobrado+Contado) / Facturacion)) as TotalCobradoPorc

    

From

  #TMP t

    cross join configuracion f
GO
GO
-- >>> FIN: RPTCobrosMensuales.sql <<<

-- >>> INICIO: RPTComisionVentasDetalle.sql <<<
CREATE OR ALTER PROCEDURE RPTComisionVentasDetalle

 @desde datetime, 

 @hasta datetime, 

 @idVend int, 

 @idEmp int,

 @Todos bit

AS



-- Comisiones para los que cobran por todos los productos y de todos los vendedores

-- como el gte de ventas

/*



declare

 @desde datetime, 

 @hasta datetime, 

 @idVend int, 

 @idEmp int,

 @Todos bit



set @Desde = '01/01/01'

set @Hasta = '01/01/05'

set @idVend = null

set @idEmp = 135

set @Todos = 0



*/

IF exists (

  select top 1 1

  from EmpleadoCom e 

  where e.idEmpleado = @idEmp)



BEGIN



select 	

        newid() as id,

	f.idEmpleado Vendedor,

	r.CxC as Pago,

	dr.fecha as FechaApli,

	f.factura,

	f.cliente,

	f.fecha as FechaFact,	

	datediff(day, f.fecha, dr.fecha) as Antiguedad,

	dr.Valor as Aplicado,

	convert(decimal(19,2),(dr.Valor / f.Total)* 100 )as Porciento,

	df.idproducto,

	df.producto,

	df.Cantidad,

	convert(decimal(19,2),(df.LineTotal-df.Descuento)/df.Cantidad) as PrecioUnidad,

	df.LineTotal-df.Descuento as TotalRenglon,

        isnull((select top 1 convert(decimal(19,6),Comision) from EmpleadoCom  where idEmpleado = @idEmp and datediff(day, f.fecha, dr.Fecha) between Desde and Hasta),0.00)  as Comision,

 	convert(decimal(19,2),(dr.Valor / f.Total) * (df.LineTotal - df.Descuento) * isnull(

		(select top 1 Comision/100 from EmpleadoCom 

		 where  idEmpleado = @idEmp

			and datediff(day, f.fecha, dr.Fecha) between Desde and Hasta),0.00)) as  TotalPagar



from 

  CXC r 

  join CXCDet dr on r.idCXC = dr.IdCXC

  join Factura f on dr.idCXCDebito = f.idFactura

  join FacturaDet df on f.idFactura = df.idFactura

  join Producto p on df.idProducto = p.idProducto

where 	

  

  r.idTipoDocumento = 'RC'

  and dr.fecha between @desde and @hasta 

  and (@Todos = 1 or p.Comisiona = 1) 

  and f.Total > 0

  and (@idVend is null or @idVend = f.idEmpleado)

order by 

  f.idEmpleado



END

ELSE

BEGIN



select 	

        newid() as id,

	f.idEmpleado Vendedor,

	r.CxC as Pago,

	dr.fecha as FechaApli,

	f.factura,

	f.cliente,

	f.fecha as FechaFact,	

	datediff(day, f.fecha, getdate()) as Antiguedad,

	dr.Valor as Aplicado,

	convert(decimal(19,2),(dr.Valor / f.Total)* 100 )as Porciento,

	df.idproducto,

	df.producto,

	df.Cantidad,

	convert(decimal(19,2),(df.LineTotal-df.Descuento)/df.Cantidad) as PrecioUnidad,

	df.LineTotal-df.Descuento as TotalRenglon,

        isnull((select top 1 convert(decimal(19,6), xec.Comision) 

		from svEmpleado xe join EmpleadoCom xec on xe.idempleadoRoll = xec.idEmpleadoRoll

  		where xe.idEmpleado = @idEmp and datediff(day, f.fecha, dr.Fecha) between Desde and Hasta),0.00)  as Comision,



 	convert(decimal(19,2),(dr.Valor / f.Total) * (df.LineTotal - df.Descuento) * isnull(

		(select top 1 xec.Comision/100 

 		 from svEmpleado xe join EmpleadoCom xec on xe.idempleadoRoll = xec.idEmpleadoRoll

		 where  xe.idEmpleado = @idEmp

			and datediff(day, f.fecha, dr.Fecha) between Desde and Hasta),0.00)) as  TotalPagar



from 

  CXC r 

  join CXCDet dr on r.idCXC = dr.IdCXC

  join Factura f on dr.idCXCDebito = f.idFactura

  join FacturaDet df on f.idFactura = df.idFactura

  join Producto p on df.idProducto = p.idProducto

where 	

  

  r.idTipoDocumento = 'RC'

  and dr.fecha between @desde and @hasta 

  and (@Todos = 1 or p.Comisiona = 1) 

  and f.Total > 0

  and (@idVend is null or @idVend = f.idEmpleado)

order by 

  f.idEmpleado





END


GO
GO
-- >>> FIN: RPTComisionVentasDetalle.sql <<<

-- >>> INICIO: RPTCxc.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[RPTCxc] -- '64A8C1A2-81D2-4FA9-9FB9-71572704146A'

    (  

     @idCxc UNIQUEIDENTIFIER  

    )  

AS  

 declare @rncEmisor varchar(20)      

      

 select @rncEmisor = replace(RNC, '-','')       

 from configuracion       



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

            d.Valor AplicadoValor,  

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

            c.Itbi,  

            c.ncfModificado as CompFiscalAplica  ,

            c.ncfModificado, 

            QrUrl = dbo.ecf_buildQR(ecf.ncf, ecf.TipoNcf, co.RNC, ecf.DocumentoIdentidad, ecf.fecha, ecf.CodigoSeguridadEcf, ecf.FechaFirmaDigital, ecf.Total) ,

            c.CodigoSeguridadEcf, 

            c.FechaFirmaDigital

    FROM    Cxc c  

            INNER JOIN CxcTipo ct ON (c.idCxcTipo = ct.idCxcTipo)  

            INNER JOIN Moneda m ON c.idMoneda = m.idMoneda  

			left join ECFWorker..ecf_comprobante ecf on c.idcxc = ecf.Referencia  

            LEFT  JOIN CxcDet d ON c.idCxc = d.idCxc  

            LEFT  JOIN Cxc f ON d.idCxcDebito = f.idCxc  

            LEFT JOIN Moneda m2 ON f.idMoneda = m2.idMoneda  

            CROSS JOIN Configuracion co  

    WHERE   c.idCxc = @idCxc      








GO
GO
-- >>> FIN: RPTCxc.sql <<<

-- >>> INICIO: RPTCXCList.sql <<<
CREATE OR ALTER PROCEDURE RPTCXCList(@Desde datetime, @Hasta datetime, @idCxcTipo Varchar(10)) AS  

  

SELECT       

  c.idCxc,   

  c.idTipoDocumento,   

  c.idCliente,   

  (Case when cancelado = 1 then 'NULO' else c.Cliente end) as Cliente,   

  c.Fecha,   

  c.Cxc,   

  (Case when cancelado = 1 then 0.00 else c.Valor end) as Valor,  

  c.Concepto,   

  c.Referencia,   

  c.Cancelado,   

  c.idCxcTipo,   

  ct.CxcTipo,   

  ct.CC,   

  c.Usuario,   

  c.Descuento,   

  (Case when cancelado = 1 then 0.00 else c.Total end) as Total ,

  c.idMoneda,

  c.Tasa, 

  m.Moneda 

FROM           

  Cxc c JOIN CxcTipo ct ON c.idCxcTipo = ct.idCxcTipo  

  join Moneda m on c.idMoneda = m.idMoneda 

WHERE       

  (c.idTipoDocumento like  @idCxcTipo)   

  AND (c.Fecha BETWEEN @Desde AND @Hasta)  

ORDER BY  

  m.Moneda, 

  c.idCxcTipo,   

  c.Fecha,   

  c.Cxc
GO
GO
-- >>> FIN: RPTCXCList.sql <<<

-- >>> INICIO: RPTFactura.sql <<<
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
GO
-- >>> FIN: RPTFactura.sql <<<

-- >>> INICIO: RPTFacturacion.sql <<<
CREATE OR ALTER PROCEDURE RPTFacturacion(@Desde datetime, @Hasta Datetime) AS



SELECT     TOP 100 PERCENT 

  c.idCliente, 

  c.Cliente, 

  f.Factura, 

  f.Fecha, 

  fd.idProducto, 

  fd.Producto, 

  fd.Cantidad, 

  fd.Precio, 

  fd.LineTotal, 

  fd.Descuento, 

  fd.Itbis, 

  fd.LineTotal - c.Descuento + f.Itbis AS PrecioFinal

FROM         

  dbo.Cliente c INNER JOIN

  dbo.Factura f ON c.idCliente = f.idCliente INNER JOIN

  dbo.FacturaDet fd ON f.idFactura = fd.idFactura

WHERE     

  (f.Cancelado = 0) and (f.fecha between @Desde and @Hasta)

ORDER BY 

  c.idCliente, 

  f.Fecha, 

  f.Factura, 

  fd.Producto
GO
GO
-- >>> FIN: RPTFacturacion.sql <<<

-- >>> INICIO: RPTFacturaList.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[RPTFacturaList]  

 @Desde datetime, @Hasta datetime  

as      

SELECT TOP 100 PERCENT      

  idFactura,       

  Factura,       

  idCliente,       

  Fecha,       

  Hora,    

  f.idAlmacen as Almacen,

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

  Usuario,      

  Condicion,      

  Credito,        

  idCondicion,      

  e.idEmpleado,      

  e.Empleado,      

  m.idMoneda,      

  m.Moneda,      

  f.CompFiscal,  

  f.Tasa   

FROM               

  Factura f      

  left join svEmpleado e on f.idEmpleado = e.idEmpleado      

  join Moneda m on f.idMoneda = m.idMoneda      

WHERE      

  Fecha BETWEEN @Desde AND @Hasta      

ORDER BY       

  m.idMoneda,      

  f.Fecha,      

  f.Factura  


GO
GO
-- >>> FIN: RPTFacturaList.sql <<<

-- >>> INICIO: RPTOrdCompProg.sql <<<
CREATE OR ALTER PROCEDURE RPTOrdCompProg(@idPlanta varchar(16), @Desde Datetime, @Hasta Datetime) AS





Select 

    Datos.* , 

    (Datos.Cantidad - Datos.despachado) as Pendiente

from (

  Select 

    op.* , 

    o.OrdComp,

    o.Cliente,

    isnull((

        SELECT     

            SUM(pd.Cantidad)

        FROM         

            Conduce p INNER JOIN

            ConduceDet pd ON p.idConduce = pd.idConduce

        WHERE     

            (pd.idProducto = op.idProducto)

            AND (p.idOrdComp = o.idOrdComp)

            AND (p.idOrdCompProg = op.idOrdCompProg)

    ),0.00) as Despachado



  from 

    OrdCompProg op 

    join OrdComp o on o.idOrdComp = op.idOrdComp

  where 

    (op.fecha between @Desde and @Hasta) and (op.idPlanta = @idPlanta or @idPlanta = 'Todos')

) Datos

Order by

   Datos.Fecha, Datos.OrdComp, Datos.OrdCompProg


GO
GO
-- >>> FIN: RPTOrdCompProg.sql <<<

-- >>> INICIO: RPTVentadeProductosporVendedor.sql <<<
CREATE OR ALTER PROCEDURE RPTVentadeProductosporVendedor(@Desde datetime, @Hasta datetime, @idVendedor int) AS





SELECT     TOP 100 PERCENT 

  @Desde as Desde,

  @Hasta as Hasta,

  e.idEmpleado, 

  e.Empleado, 

  c.idCliente, 

  c.Cliente, 

  f.Factura, 

  f.Fecha, 

  f.total as TotalFactura,

  fd.idProducto, 

  fd.Producto, 

  fd.Cantidad, 

  fd.Precio,

  fd.LineTotal, 

  fd.Descuento, 

  fd.Itbis, 

  (fd.LineTotal - c.Descuento) AS PrecioFinal

into #temp

FROM         

  dbo.Cliente c INNER JOIN

  dbo.Factura f ON c.idCliente = f.idCliente INNER JOIN

  dbo.FacturaDet fd ON f.idFactura = fd.idFactura INNER JOIN

  dbo.svEmpleado e ON f.idEmpleado = e.idEmpleado INNER JOIN

  dbo.Producto p ON p.idProducto = fd.idProducto 

WHERE     

  ((f.cancelado = 0) or (f.cancelado = 1 and f.fechacancelado > @Hasta)) 

  and (f.fecha between @Desde and @Hasta)

  and (@idVendedor = -1 or @idVendedor = f.idEmpleado)

  and p.comisiona = 1

ORDER BY 

  e.Empleado, 

  fd.Producto





 select t.*,

	PromedioVendProd = (select sum(cantidad * Precio) / sum(cantidad)

		        from #temp

			where idProducto = t.idProducto and idEmpleado = t.idEmpleado),

	PromedioVend = (select sum(cantidad * Precio) / sum(cantidad)

		        from #temp where idEMpleado = t.idEmpleado)

 from #temp t

 order by Empleado, Producto



 drop table #temp






GO
GO
-- >>> FIN: RPTVentadeProductosporVendedor.sql <<<

-- >>> INICIO: RPTVentasdeProductosResumen.sql <<<
CREATE OR ALTER PROCEDURE RPTVentasdeProductosResumen(@Desde datetime, @Hasta datetime) AS



SELECT     TOP 100 PERCENT 

  @Desde as Desde,

  @Hasta as Hasta,

  cc.Compania,

  g.idGrupo,

  g.Grupo,

  p.idProducto, 

  p.Producto, 

  f.tasa,

  fd.idFacturaDet,

  fd.Cantidad, 

  fd.Precio * f.tasa as  Precio, 

  fd.LineTotal * f.tasa as LineTotal,

  fd.Descuento * f.tasa as Descuento, 

  fd.Itbis * f.tasa as Itbis, 

  (fd.LineTotal-fd.Descuento) * f.tasa AS TotalBruto,

  (fd.LineTotal-fd.Descuento+fd.Itbis) * f.tasa AS TotalNeto,

  Sum(isnull(dd.DevCantidad,0)) as DevCantidad,

  Sum(isnull(dd.DevDescuento * dv.Tasa ,0)) as DevDescuento,

  Sum(isnull(dd.DevItbis * dv.Tasa ,0)) as DevItbis,

  Sum(isnull(dd.DevLineTotal * dv.Tasa,0)) as DevLineTotal,

  Sum(isnull(dd.DevLineTotal* dv.Tasa,0)-isnull(dd.DevDescuento* dv.Tasa,0)) AS DevTotalBruto,

  Sum(isnull(dd.DevLineTotal* dv.Tasa,0)-isnull(dd.DevDescuento* dv.Tasa,0)+isnull(dd.DevItbis* dv.Tasa,0)) AS DevTotalNeto

INTO

  #Tmp

FROM         

  dbo.Factura f 

  INNER JOIN dbo.FacturaDet fd ON f.idFactura = fd.idFactura

  INNER JOIN dbo.Producto p ON p.idProducto = fd.idProducto

  INNER JOIN Grupo g on g.idGrupo = p.idGrupo  

  LEFT Join DevolucionDet dd ON fd.idFacturaDet = dd.idFacturaDet

  Left Join Devolucion dv ON dd.iddevolucion = dv.idDevolucion and dv.fecha between @Desde and @hasta

  Cross Join Configuracion cc

WHERE

  f.fecha between @Desde and @Hasta 

  and ((f.cancelado = 0) or (f.cancelado = 1 and f.fechacancelado > @Hasta))

--  and (isnull(dv.cancelado, 0) = 0)

GROUP BY 

  cc.Compania,

  g.idGrupo,

  g.Grupo,

  p.idProducto, 

  p.Producto, 

  f.tasa,

  fd.idFacturaDet,

  fd.Cantidad, 

  fd.Precio, 

  fd.LineTotal,

  fd.Descuento, 

  fd.Itbis, 

  fd.LineTotal-fd.Descuento,

  fd.LineTotal-fd.Descuento+fd.Itbis







SELECT     TOP 100 PERCENT 

  Desde,

  Hasta,

  Compania,

  idGrupo,

  Grupo,

  idProducto, 

  Producto, 

  SUM(Cantidad-DevCantidad)AS Cantidad, 

  AVG(Precio) AS Precio, 

  SUM(LineTotal-DevLineTotal) AS Total,

  SUM(Descuento-DevDescuento) AS Descuento, 

  SUM(Itbis-DevItbis) AS Itbis, 

  SUM(TotalBruto-DevTotalBruto) AS TotalBruto,

  SUM(TotalNeto-DevTotalNeto) AS TotalNeto,

  sum(precio * cantidad) / sum(cantidad) as Promedio,

  PromedioCat = (select sum(precio * cantidad) / sum(cantidad)

		 from #tmp

		 where idGrupo = fd.idGrupo),

  PromedioGral = (select sum(precio * cantidad) / sum(cantidad)

		 from #tmp)

FROM         

  #Tmp fd   

GROUP BY 

  Desde,

  Hasta,

  Compania,

  idGrupo,

  Grupo,

  idProducto, 

  Producto

ORDER BY 

  idGrupo, 

  Grupo, 

  Producto





Drop table #Tmp








GO
GO
-- >>> FIN: RPTVentasdeProductosResumen.sql <<<

-- >>> INICIO: RPTVentasdeProductosResumenPorMoneda.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[RPTVentasdeProductosResumenPorMoneda](@Desde datetime, @Hasta datetime) AS    

SELECT     TOP 100 PERCENT     

  @Desde as Desde,    

  @Hasta as Hasta,    

  cc.Compania,    

  g.idGrupo,    

  g.Grupo,    

  p.idProducto,     

  p.Producto,     

  f.tasa,    

  m.Moneda,    

  fd.idFacturaDet,    

  fd.Cantidad,     

  fd.Precio as  Precio,     

  fd.LineTotal as LineTotal,    

  fd.Descuento as Descuento,     

  fd.Itbis as Itbis,     

  fd.Itbis * f.Tasa as ItbisRD,   

  fd.Descuento * f.Tasa as DescuentoRD,   

  fd.LineTotal * f.Tasa as LineTotalRD,   

  (fd.LineTotal-fd.Descuento) AS TotalBruto,    

  (fd.LineTotal-fd.Descuento+fd.Itbis) AS TotalNeto,    

  f.Tasa * (fd.LineTotal-fd.Descuento) AS TotalBrutoRD,    

  f.Tasa * (fd.LineTotal-fd.Descuento+fd.Itbis) AS TotalNetoRD,    

  Sum(isnull(dd.DevCantidad,0)) as DevCantidad,    

  Sum(isnull(dd.DevDescuento,0)) as DevDescuento,    

  Sum(isnull(dd.DevItbis,0)) as DevItbis,    

  Sum(isnull(dd.DevLineTotal,0)) as DevLineTotal,    

  Sum(isnull(dd.DevLineTotal,0)-isnull(dd.DevDescuento,0)) AS DevTotalBruto,    

  Sum(isnull(dd.DevLineTotal,0)-isnull(dd.DevDescuento,0)+isnull(dd.DevItbis,0)) AS DevTotalNeto    

INTO    

  #Tmp    

FROM             

  dbo.Factura f     

  INNER JOIN dbo.FacturaDet fd ON f.idFactura = fd.idFactura    

  INNER JOIN dbo.Producto p ON p.idProducto = fd.idProducto    

  INNER JOIN Grupo g on g.idGrupo = p.idGrupo    

  Inner Join Moneda m On (m.IdMoneda = f.IdMoneda)    

  LEFT Join DevolucionDet dd ON fd.idFacturaDet = dd.idFacturaDet    

  Left Join Devolucion dv ON dd.iddevolucion = dv.idDevolucion and dv.fecha between @Desde and @hasta    

  Cross Join Configuracion cc    

WHERE    

  f.fecha between @Desde and @Hasta     

  and ((f.cancelado = 0))-- or (f.cancelado = 1 and f.fechacancelado > @Hasta))    

--  and (isnull(dv.cancelado, 0) = 0)    

GROUP BY     

  cc.Compania,    

  g.idGrupo,    

  g.Grupo,    

  p.idProducto,     

  p.Producto,     

  f.tasa,    

  m.Moneda,    

  fd.idFacturaDet,    

  fd.Cantidad,     

  fd.Precio,     

  fd.LineTotal,    

  fd.Descuento,     

  fd.Itbis,     

  fd.LineTotal-fd.Descuento,    

  fd.LineTotal-fd.Descuento+fd.Itbis    

    

SELECT TOP 100 PERCENT     

  Desde,    

  Hasta,    

  Compania,    

  idGrupo,    

  Grupo,    

  idProducto,     

  Producto,     

  Moneda,    

  SUM(Cantidad-DevCantidad)AS Cantidad,     

  AVG(Precio) AS Precio,     

  SUM(LineTotal-DevLineTotal) AS Total,    

  SUM(Descuento-DevDescuento) AS Descuento,     

  SUM(Itbis-DevItbis) AS Itbis,     

  SUM(TotalBruto-DevTotalBruto) AS TotalBruto,    

  SUM(TotalNeto-DevTotalNeto) AS TotalNeto,    

  sum(TotalBrutoRD) as TotalbrutoRD,  

  SUM(TotalNetoRD) as TotalNetoRD,   

  sum(ItbisRD) as ItbisRD,  

  SUM(DescuentoRD) as DescuentoRD,  

  SUM(LineTotalRD) as LineTotalRD,   

  sum(precio * cantidad) / sum(cantidad) as Promedio,    

  PromedioCat = (select sum(precio * cantidad) / sum(cantidad)    

   from #tmp    

   where idGrupo = fd.idGrupo),    

  PromedioGral = (select sum(precio * cantidad) / sum(cantidad)    

   from #tmp)    

FROM             

  #Tmp fd       

GROUP BY     

  Desde,    

  Hasta,    

  Compania,    

  idGrupo,    

  Grupo,    

  idProducto,     

  Producto,    

  Moneda    

ORDER BY     

  Moneda,    

  idGrupo,     

  Grupo,     

  Producto    

Drop table #Tmp    
GO
GO
-- >>> FIN: RPTVentasdeProductosResumenPorMoneda.sql <<<

-- >>> INICIO: rsCliente.sql <<<
CREATE OR ALTER PROCEDURE rsCliente(@idCliente int) AS



select * from cliente where idCliente = @idCliente


GO
GO
-- >>> FIN: rsCliente.sql <<<

-- >>> INICIO: rsClienteDet.sql <<<
CREATE OR ALTER PROCEDURE rsClienteDet(@idCliente int) AS



  Select 

    *

  From 

    ClienteObra

  Where

    idCliente = @idCliente


GO
GO
-- >>> FIN: rsClienteDet.sql <<<

-- >>> INICIO: RSClienteOpcion.sql <<<
CREATE OR ALTER PROCEDURE RSClienteOpcion

 @idCliente int

as

 select * from ClienteOpcion

 where idCliente = @idCliente

 order by idClienteOpciontipo




GO
GO
-- >>> FIN: RSClienteOpcion.sql <<<

-- >>> INICIO: RSClienteOpcionTipo.sql <<<
CREATE OR ALTER PROCEDURE RSClienteOpcionTipo

as

 select * from ClienteOpciontipo

 order by ClienteOpcion




GO
GO
-- >>> FIN: RSClienteOpcionTipo.sql <<<

-- >>> INICIO: rsCompFiscal.sql <<<
CREATE OR ALTER PROCEDURE rsCompFiscal AS



  Select * from CompFiscal
GO
GO
-- >>> FIN: rsCompFiscal.sql <<<

-- >>> INICIO: rsCompFiscalSecuencia.sql <<<
CREATE OR ALTER PROCEDURE rsCompFiscalSecuencia

    (

     @uidCompFiscal UNIQUEIDENTIFIER

    )

AS

    SELECT  *

    FROM    CompFiscalSecuencia

    WHERE   uidCompFiscal = @uidCompFiscal

    ORDER BY ValidoHasta DESC


GO
GO
-- >>> FIN: rsCompFiscalSecuencia.sql <<<

-- >>> INICIO: rsCXC.sql <<<
CREATE OR ALTER PROCEDURE rsCXC

 @idCXC uniqueidentifier

as

 select 

   * 

 from 

   cxc

 where 

   idCXC = @idCXC

return 0
GO
GO
-- >>> FIN: rsCXC.sql <<<

-- >>> INICIO: rsCxcCuentaDet.sql <<<
CREATE OR ALTER PROCEDURE rsCxcCuentaDet(@idCxc uniqueidentifier) AS



  Select

    *

  From

    CxcCuentaDet

  where

    idCxc = @idCxc

  order by

    credito
GO
GO
-- >>> FIN: rsCxcCuentaDet.sql <<<

-- >>> INICIO: rsCXCDet.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[rsCXCDet]

    @idCXC UNIQUEIDENTIFIER,

    @idCliente INT

AS

    DECLARE @FechaPago DATETIME  

    SET @FechaPago = (SELECT    Fecha

                      FROM      Cxc

                      WHERE     idCxc = @idCXC

                     )  

  

    DECLARE @tbl TABLE

        (

         idCXCDet UNIQUEIDENTIFIER,

         idCXC UNIQUEIDENTIFIER,

         idCXCDebito UNIQUEIDENTIFIER,

         Aplicado DECIMAL(19, 2),

         AplicadoOtros DECIMAL(19, 2),

         Documento VARCHAR(20),

         idTipoDocumento VARCHAR(16),

         idMoneda INT,

         Moneda VARCHAR(16),

         FechaDoc DATETIME,

         TotalDoc DECIMAL(19, 2),

         FechaAplicado DATETIME,

         Tasa FLOAT,

         Tipo TINYINT,

         Descuento DECIMAL(19, 2),

         idClienteObra VARCHAR(16),

         ClienteObra VARCHAR(100)

        )  

  

    INSERT  INTO @tbl

            (idCXCDet,

             idCXC,

             idCXCDebito,

             Aplicado,

             AplicadoOtros,

             Documento,

             idTipoDocumento,

             idMoneda,

             Moneda,

             FechaDoc,

             TotalDoc,

             FechaAplicado,

             Tasa,

             Tipo,

             Descuento,

             idClienteObra,

             ClienteObra

            )

            SELECT  d.idCxcDet,

                    d.idCxc,

                    d.idCxcDebito,

                    d.Valor AS Aplicado,   

--         AplicadoOtros = dbo.cxcBalanceDocumento(d.idCXCDebito, getdate(), d.idCXC),  

                    AplicadoOtros = ISNULL((SELECT  SUM(d2.TotalAplicado)

                                            FROM    Cxc c2

                                                    JOIN CxcDet d2 ON c2.idCxc = d2.idCxc

                                            WHERE   c2.Cancelado = 0

                                                    AND d2.idCxcDebito = d.idCxcDebito

                                                    AND c2.idCxc <> d.idCxc

                                           ), 0.00),

                    c.Cxc,

                    c.idTipoDocumento,

                    c.idMoneda,

                    m.Moneda,

                    c.Fecha AS FechaDoc,

                    c.Valor AS TotalDoc,

                    d.Fecha AS FechaAplicado,

                    d.Tasa,

                    0 AS Tipo,

                    d.Descuento AS Descuento,

                    c.idClienteObra,

                    ISNULL(c.ClienteObra, co.ClienteObra) AS ClienteObra

            FROM    CxcDet d

                    JOIN Cxc c ON d.idCxcDebito = c.idCxc

                    JOIN Moneda m ON c.idMoneda = m.idMoneda

                    LEFT JOIN ClienteObra co ON c.idCliente = co.idCliente

                                                AND c.idClienteObra = co.idClienteObra

            WHERE   d.idCxc = @idCXC  

  

    INSERT  INTO @tbl

            (idCXCDebito,

             Aplicado,

             AplicadoOtros,

             Documento,

             idTipoDocumento,

             idMoneda,

             Moneda,

             FechaDoc,

             TotalDoc,

             FechaAplicado,

             Tasa,

             Tipo,

             Descuento,

             idClienteObra,

             ClienteObra

            )

            SELECT  c.idCxc AS idCXCDebito,

                    0.00 AS Aplicado,  

--       AplicadoOtros = dbo.cxcBalanceDocumento(c.idCXC, getdate(), null),  

                    AplicadoOtros = ISNULL((SELECT  SUM(d2.TotalAplicado)

                                            FROM    Cxc c2

                                                    JOIN CxcDet d2 ON c2.idCxc = d2.idCxc

                                            WHERE   c2.Cancelado = 0

                                                    AND d2.idCxcDebito = c.idCxc

                                           ), 0.00),

                    c.Cxc,

                    c.idTipoDocumento,

                    c.idMoneda,

                    m.Moneda,

                    c.Fecha AS FechaDoc,

                    c.Valor AS TotalDoc,

                    NULL AS FechaAplicado,

                    dbo.fTasaActual(c.idMoneda, @FechaPago) AS Tasa,

                    1 AS Tipo,

                    0.00 AS Descuento,

                    c.idClienteObra,

                    ISNULL(c.ClienteObra, co.ClienteObra) AS ClienteObra

            FROM    Cxc c

                    JOIN Moneda m ON c.idMoneda = m.idMoneda

                    LEFT JOIN ClienteObra co ON c.idCliente = co.idCliente

                                                AND c.idClienteObra = co.idClienteObra

            WHERE   c.idCliente = @idCliente

                    AND c.esCredito = 0

                    AND NOT EXISTS ( SELECT 1

                                     FROM   @tbl

                                     WHERE  idCXCDebito = c.idCxc )    

  

    SELECT  *,

            Balance = TotalDoc - (Aplicado + AplicadoOtros + Descuento)

    FROM    @tbl

    WHERE   (Tipo = 0

             OR TotalDoc > (Aplicado + AplicadoOtros)

            )

    ORDER BY FechaDoc,

            Documento               

           

    RETURN 0    


GO
GO
-- >>> FIN: rsCXCDet.sql <<<

-- >>> INICIO: rsCxcDetCreditos.sql <<<
CREATE OR ALTER PROCEDURE rsCxcDetCreditos(@idCxc uniqueidentifier) AS



  Select    

    p.idTipoDocumento as Tipo,

    p.Cxc as Documento,

    pd.idCxcDet,

    pd.Valor as MontoAplicado,

    pd.Fecha as FechaAplicado

  From

    Cxc p

    INNER JOIN CxcDet pd on p.idCxc = pd.idCxc

  Where

    pd.idCxcDebito = @idCxc and p.cancelado = 0
GO
GO
-- >>> FIN: rsCxcDetCreditos.sql <<<

-- >>> INICIO: rsCxCEmp.sql <<<
CREATE OR ALTER PROCEDURE rsCxCEmp(@CxCEmpID integer) AS

  Select * From CxCEmp Where CxCEmpID = @CxCEmpID


GO
GO
-- >>> FIN: rsCxCEmp.sql <<<

-- >>> INICIO: rsCxCEmpDet.sql <<<
CREATE OR ALTER PROCEDURE rsCxCEmpDet(@CxCEmpID integer) AS

  Select * 

  From CxCEmpDet

  Where CxCEmpID = @CxCEmpID


GO
GO
-- >>> FIN: rsCxCEmpDet.sql <<<

-- >>> INICIO: rsCxpBancosACH.sql <<<
CREATE OR ALTER PROCEDURE rsCxpBancosACH

AS

  SELECT

    *

  FROM

    cxpBancoACH


GO
GO
-- >>> FIN: rsCxpBancosACH.sql <<<

-- >>> INICIO: rsCxpBancoSuplidor.sql <<<
CREATE OR ALTER PROCEDURE rsCxpBancoSuplidor(@IdSuplidor Int)

AS

  SELECT

    *

  FROM

    cxpBancoSuplidor

  WHERE

    IdSuplidor = @IdSuplidor




GO
GO
-- >>> FIN: rsCxpBancoSuplidor.sql <<<

-- >>> INICIO: rsFactura.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[rsFactura](@idFactura uniqueidentifier) AS



  Select * from Factura Where idFactura = @idFactura


GO
GO
-- >>> FIN: rsFactura.sql <<<

-- >>> INICIO: rsFacturaConduce.sql <<<
CREATE OR ALTER PROCEDURE rsFacturaConduce(@idFactura uniqueidentifier) AS



  Select * From facturaconduce where idfactura = @idFactura


GO
GO
-- >>> FIN: rsFacturaConduce.sql <<<

-- >>> INICIO: rsFacturaDet.sql <<<
CREATE OR ALTER PROCEDURE rsFacturaDet(@idFactura uniqueidentifier) AS



  Select * From FacturaDet 

  Where idFactura = @idFactura

  order by linea


GO
GO
-- >>> FIN: rsFacturaDet.sql <<<

-- >>> INICIO: rsFacturaDetEspec.sql <<<
CREATE OR ALTER PROCEDURE rsFacturaDetEspec(@idFactura uniqueidentifier) As



  Select *

  from FacturaDetEspec

  where idFactura = @idFactura

    




GO
GO
-- >>> FIN: rsFacturaDetEspec.sql <<<

-- >>> INICIO: rsFacturaRec.sql <<<
CREATE OR ALTER PROCEDURE rsFacturaRec(@idFactura uniqueidentifier) AS



  Select * from frFactura Where idfrFactura = @idFactura








GO
GO
-- >>> FIN: rsFacturaRec.sql <<<

-- >>> INICIO: rsFacturaRecDet.sql <<<
CREATE OR ALTER PROCEDURE rsFacturaRecDet(@idFactura uniqueidentifier) AS



  Select * From frFacturaDet 

  Where idfrFactura = @idFactura

  order by linea








GO
GO
-- >>> FIN: rsFacturaRecDet.sql <<<

-- >>> INICIO: rsOrdComp.sql <<<
CREATE OR ALTER PROCEDURE rsOrdComp(@idOrdComp uniqueidentifier) AS



  Select 

    * 

  from 

    OrdComp

  Where 

    idOrdComp = @idOrdComp


GO
GO
-- >>> FIN: rsOrdComp.sql <<<

-- >>> INICIO: rsOrdCompDet.sql <<<
CREATE OR ALTER PROCEDURE rsOrdCompDet(@idOrdComp uniqueidentifier) AS



  Select 

    * 

  from 

    OrdCompDet

  Where 

    idOrdComp = @idOrdComp

  order by

    linea


GO
GO
-- >>> FIN: rsOrdCompDet.sql <<<

-- >>> INICIO: rsOrdCompDetalle.sql <<<
------------ final de:RPTVentasdeProductosResumenPorMoneda ------------



------------ inicio de:rsOrdCompDetalle ------------





CREATE OR ALTER PROCEDURE rsOrdCompDetalle(@idOrdComp uniqueidentifier) AS

  Select 

    od.*, 

    p.ubicacion,

    Entregado = isnull((select sum(Despachado) from OrdCompEntDet where idOrdComp = od.idOrdComp and idOrdCompdet = od.idOrdCompDet),0),

    Pendiente = od.Cantidad - isnull((select sum(Despachado) from OrdCompEntDet where idOrdComp = od.idOrdComp and idOrdCompdet = od.idOrdCompDet),0)     

  from 

    OrdCompDet od

    join producto p on od.idproducto = p.idproducto

  Where 

    idOrdComp = @idOrdComp

  order by

    linea




GO
GO
-- >>> FIN: rsOrdCompDetalle.sql <<<

-- >>> INICIO: rssFacturadoyCobrado.sql <<<
------------ final de:rsOrdCompDetalle ------------



------------ inicio de:rssFacturadoyCobrado ------------





CREATE OR ALTER PROCEDURE rssFacturadoyCobrado(@Ano Int)

AS

SELECT

  1 As Orden,

  'FACTURADO' As Que,

  Sum(CASE When Month(Fecha) = 01 Then Total Else 0.00 END) As Enero,

  Sum(CASE When Month(Fecha) = 02 Then Total Else 0.00 END) As Febrero,

  Sum(CASE When Month(Fecha) = 03 Then Total Else 0.00 END) As Marzo,

  Sum(CASE When Month(Fecha) = 04 Then Total Else 0.00 END) As Abril,

  Sum(CASE When Month(Fecha) = 05 Then Total Else 0.00 END) As Mayo,

  Sum(CASE When Month(Fecha) = 06 Then Total Else 0.00 END) As Junio,

  Sum(CASE When Month(Fecha) = 07 Then Total Else 0.00 END) As Julio,

  Sum(CASE When Month(Fecha) = 08 Then Total Else 0.00 END) As Agosto,

  Sum(CASE When Month(Fecha) = 09 Then Total Else 0.00 END) As Septiembre,

  Sum(CASE When Month(Fecha) = 10 Then Total Else 0.00 END) As Octubre,

  Sum(CASE When Month(Fecha) = 11 Then Total Else 0.00 END) As Noviembre,

  Sum(CASE When Month(Fecha) = 12 Then Total Else 0.00 END) As Diciembre,

  @Ano As Ano

FROM

  Factura

WHERE

  Cancelado = 0 AND

  Year(Fecha) = @Ano

UNION

SELECT

  2,

  'COBRADO',

  Sum(CASE When Month(Fecha) = 01 Then Valor Else 0.00 END) As Enero,

  Sum(CASE When Month(Fecha) = 02 Then Valor Else 0.00 END) As Febrero,

  Sum(CASE When Month(Fecha) = 03 Then Valor Else 0.00 END) As Marzo,

  Sum(CASE When Month(Fecha) = 04 Then Valor Else 0.00 END) As Abril,

  Sum(CASE When Month(Fecha) = 05 Then Valor Else 0.00 END) As Mayo,

  Sum(CASE When Month(Fecha) = 06 Then Valor Else 0.00 END) As Junio,

  Sum(CASE When Month(Fecha) = 07 Then Valor Else 0.00 END) As Julio,

  Sum(CASE When Month(Fecha) = 08 Then Valor Else 0.00 END) As Agosto,

  Sum(CASE When Month(Fecha) = 09 Then Valor Else 0.00 END) As Septiembre,

  Sum(CASE When Month(Fecha) = 10 Then Valor Else 0.00 END) As Octubre,

  Sum(CASE When Month(Fecha) = 11 Then Valor Else 0.00 END) As Noviembre,

  Sum(CASE When Month(Fecha) = 12 Then Valor Else 0.00 END) As Diciembre,

  @Ano As Ano

FROM

  Recibo

WHERE

  Cancelado = 0 AND

  Year(Fecha) = @Ano




GO
GO
-- >>> FIN: rssFacturadoyCobrado.sql <<<

-- >>> INICIO: rssFacturadoyCobradoGrafico.sql <<<
------------ final de:rssFacturadoyCobrado ------------



------------ inicio de:rssFacturadoyCobradoGrafico ------------



CREATE OR ALTER PROCEDURE rssFacturadoyCobradoGrafico(@Ano Int)

AS

SELECT

  1 As Orden,

  'Enero' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 01) As Facturado,

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 01) As Cobrado

UNION

SELECT

  2 As Orden,

  'Febrero' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 02),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 02)

UNION

SELECT

  3 As Orden,

  'Marzo' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 03),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 03)

UNION

SELECT

  4 As Orden,

  'Abril' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 04),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 04)

UNION

SELECT

  5 As Orden,

  'Mayo' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 05),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 05)

UNION

SELECT

  6 As Orden,

  'Junio' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 06),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 06)

UNION

SELECT

  7 As Orden,

  'Julio' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 07),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 07)

UNION

SELECT

  8 As Orden,

  'Agosto' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 08),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 08)

UNION

SELECT

  9 As Orden,

  'Septiembre' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 09),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 09)

UNION

SELECT

  10 As Orden,

  'Octubre' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 10),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 10)

UNION

SELECT

  11 As Orden,

  'Noviembre' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 11),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 11)

UNION

SELECT

  12 As Orden,

  'Diciembre' As Mes,

  (Select Sum(Total) From Factura Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 12),

  (Select Sum(Valor) From Recibo Where Cancelado = 0 And Year(Fecha) = @Ano And Month(Fecha) = 12)




GO
GO
-- >>> FIN: rssFacturadoyCobradoGrafico.sql <<<

-- >>> INICIO: rssFacturaProducto.sql <<<
------------ final de:rssFacturadoyCobradoGrafico ------------



------------ inicio de:rssFacturaProducto ------------



CREATE OR ALTER PROCEDURE rssFacturaProducto(@Desde DateTime, @Hasta DateTime)

AS

SELECT

  ft.IdFactura,

  ft.Fecha,

  Year(ft.Fecha) As Ano,

  Month(ft.Fecha) As Mes,

  ft.Total,

  ft.Itbis,

  fd.IdProducto,

  fd.Producto

FROM

  Factura ft Inner Join

  FacturaDet fd On (ft.IdFactura = fd.IdFactura)

WHERE

  ft.Fecha Between @Desde And @Hasta




GO
GO
-- >>> FIN: rssFacturaProducto.sql <<<

-- >>> INICIO: sgRPTInventario.sql <<<
CREATE OR ALTER PROCEDURE sgRPTInventario

 @retirados bit 

as  

 select pl.idPlaca,  

	   pl.Placa, 

	    pl.Nombre,  

	    pl.Sexo,  

	    pl.FechaNac,  

	    pl.Tipo,  

	    pl.PlacaMadre,

	    pl.PlacaPadre, 

	    Madre = (select top 1 Placa from sgPlaca where idPlaca = pl.PlacaMadre),

	    Padre = (select top 1 Placa from sgPlaca where idPlaca = pl.PlacaPadre),

	    pl.Status,  

	    pl.PrecioVenta,

	    IncluirCuenta = case when st.Activo = 1 then 1 else 0 end

 from sgPlaca pl join sgPlacaStatus st on pl.status = st.status

 where (@retirados = 1 or st.Activo = 1)

 order by pl.idPlaca  

return   










GO
GO
-- >>> FIN: sgRPTInventario.sql <<<

-- >>> INICIO: sgRPTInventarioResumen.sql <<<
CREATE OR ALTER PROCEDURE sgRPTInventarioResumen

 @retirados bit 

as  



 declare @machos int, @hembras int, @Totalretirados int, @venta decimal(19,2)





 select @machos = count(*) from sgPlaca p 

 join sgPlacaStatus st on p.Status = st.Status 

 where Sexo = 'M' 

 and (@retirados = 1 or st.Activo = 1)

 

 select @hembras = count(*)

 from sgPlaca p join sgPlacaStatus st on p.Status = st.Status 

 where Sexo <> 'M' and (@retirados = 1 or st.Activo = 1)

 

 select @TotalRetirados = count(*)

 from sgPlaca p join sgPlacaStatus st on p.Status = st.Status 

 where st.Activo = 0

 

 select @venta = sum(p.PrecioVenta)

 from sgPlaca p join sgPlacaStatus st on p.Status = st.Status 

 where st.Activo = 0



 select Machos = isnull(@machos,0), 

	    Hembras = isnull(@hembras,0),

	    Retirados = isnull(@Totalretirados,0),

	    TotalVenta = isnull(@venta,0.00)

 

return   








GO
GO
-- >>> FIN: sgRPTInventarioResumen.sql <<<

-- >>> INICIO: SPCxCAnular.sql <<<
CREATE OR ALTER PROCEDURE SPCxCAnular(@idCxc uniqueidentifier, @Anulado bit output) AS





declare @err int



Set     @err = 0



Set @Anulado = 0  --retornar false



BEGIN TRAN  



IF not exists (

  SELECT Top 1 -- si no existen pago para la cxc de esta factura

    1

  FROM

    Cxcdet    

  WHERE

   (idCxc  = @idcxc or idCxcDebito = @idCxc))

begin



  Update 

    Cxc 

  set 

    cancelado = 1, 

    fechacancelado = round(convert(float, getdate()),0,1)

  where 

    idCxc = @idCxc --marcar factura como cancelado

    and idCxcTipo  >= 0



  set @err = @@Error   

  

  if @@Rowcount > 0

  begin

    Set @Anulado = 1  -- retornar true

  end

end





if @err <> 0 

begin

  ROLLBACK TRAN

  Set @Anulado = 0

end

else

begin

  COMMIT TRAN

end








GO
GO
-- >>> FIN: SPCxCAnular.sql <<<

-- >>> INICIO: SPCxCEmpleados.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[SPCxCEmpleados] AS  

SELECT     TOP 100 PERCENT   

 dbo.Empleado.EmpleadoID,   

 dbo.Empleado.Nombre,   

 dbo.Empleado.Apellido,   

 dbo.CxCEmp.Fecha,   

 dbo.TipoTransaccion.TipoTransaccion,   

 dbo.CxCEmp.Total,   

 dbo.CxCEmp.Cuotas,   

 dbo.CxCEmp.Descontado,   

 dbo.CxCEmp.Balance,   

 dbo.CxCEmp.CXCEmp,   

        dbo.CxCEmp.Activo  

FROM           

 dbo.Empleado INNER JOIN  

        dbo.CxCEmp ON dbo.Empleado.EmpleadoID = dbo.CxCEmp.EmpleadoID INNER JOIN  

        dbo.TipoTransaccion ON dbo.CxCEmp.TipoTransaccionID = dbo.TipoTransaccion.TipoTransaccionID  

WHERE       

 (dbo.CxCEmp.Balance <> 0)  

ORDER BY   

 dbo.CxCEmp.Fecha  




GO
GO
-- >>> FIN: SPCxCEmpleados.sql <<<

-- >>> INICIO: SPCxCEmpleadosXFecha.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[SPCxCEmpleadosXFecha]   

 @fecha datetime  

AS      

SELECT       

 e.EmpleadoID,       

 e.Nombre,       

 e.Apellido,       

 c.Fecha,       

 tt.TipoTransaccion,       

 c.Total,       

 c.Cuotas,       

 Descontado = isnull((select sum(Monto) from cxcEmpDet where CxcEmpId = c.CxcEmpId and fecha <= @fecha),0.00),            

 Balance = c.Total - isnull((select sum(Monto) from cxcEmpDet where CxcEmpId = c.CxcEmpId and fecha <= @fecha),0.00),       

 c.CXCEmp,       

 c.Activo      

FROM               

 dbo.Empleado e INNER JOIN      

 CxCEmp c ON e.EmpleadoID = c.EmpleadoID INNER JOIN      

 dbo.TipoTransaccion tt ON c.TipoTransaccionID = tt.TipoTransaccionID      

WHERE           

 c.Fecha <= @Fecha   

 and c.Total > isnull((select sum(Monto) from cxcEmpDet where CxcEmpId = c.CxcEmpId and fecha <= @fecha),0.00)  

ORDER BY       

 c.Fecha   


GO
GO
-- >>> FIN: SPCxCEmpleadosXFecha.sql <<<

-- >>> INICIO: SPCxCEmpleadosXFechaResumido.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[SPCxCEmpleadosXFechaResumido] 

 @fecha datetime

AS    



select 

  EmpleadoID,     

  Nombre,     

  Apellido,     

 sum(Total) as Total,     

 sum(Descontado) as Descontado,          

 sum(Balance) as Balance

from ( 

SELECT     

 e.EmpleadoID,     

 e.Nombre,     

 e.Apellido,     

 c.Fecha,     

 tt.TipoTransaccion,     

 c.Total,     

 c.Cuotas,     

 Descontado = isnull((select sum(Monto) from cxcEmpDet where CxcEmpId = c.CxcEmpId and fecha <= @fecha),0.00),          

 Balance = c.Total - isnull((select sum(Monto) from cxcEmpDet where CxcEmpId = c.CxcEmpId and fecha <= @fecha),0.00),     

 c.CXCEmp,     

 c.Activo    

FROM             

 dbo.Empleado e INNER JOIN    

 CxCEmp c ON e.EmpleadoID = c.EmpleadoID INNER JOIN    

 dbo.TipoTransaccion tt ON c.TipoTransaccionID = tt.TipoTransaccionID    

WHERE         

 c.Fecha <= @Fecha

 and c.Activo = 1  

 and c.Total > isnull((select sum(Monto) from cxcEmpDet where CxcEmpId = c.CxcEmpId and fecha <= @fecha),0.00)

) as datos

group by   EmpleadoID,     

  Nombre,     

  Apellido 


GO
GO
-- >>> FIN: SPCxCEmpleadosXFechaResumido.sql <<<

-- >>> INICIO: SPFacturaAnular.sql <<<
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
GO
-- >>> FIN: SPFacturaAnular.sql <<<

-- >>> INICIO: SPFacturaesAnulable.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[SPFacturaesAnulable](@idFactura uniqueidentifier, @Anulable bit output) AS

  

Set @Anulable = isnull((select Top 1 

                            0

		                FROM         

                          dbo.CxcDet ccd INNER JOIN

                          dbo.Cxc db ON ccd.idCxc = db.idCxc INNER JOIN

                          dbo.Cxc cr ON ccd.idCxc = cr.idCxc INNER JOIN

                          dbo.Factura f ON db.Referencia = f.idFactura

  		                where 

                            f.idfactura  = @idFactura 

                            and cr.cancelado = 0

                       ),1)


GO
GO
-- >>> FIN: SPFacturaesAnulable.sql <<<

-- >>> INICIO: spfrNotasFacturas.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[spfrNotasFacturas] ( @idNota INT )

AS

    SELECT  idNota ,

            Nota

    FROM    frNotasFacturas 

 




GO
GO
-- >>> FIN: spfrNotasFacturas.sql <<<

-- >>> INICIO: svBorrarCxcDesdeRecibo.sql <<<
CREATE OR ALTER PROCEDURE svBorrarCxcDesdeRecibo(@IdRecibo UniqueIdentifier)

AS

  Delete From

    Cxc

  Where

    IdCxc = @IdRecibo




GO
GO
-- >>> FIN: svBorrarCxcDesdeRecibo.sql <<<

-- >>> INICIO: svBuscarCompFiscal.sql <<<
CREATE OR ALTER PROCEDURE svBuscarCompFiscal

 @NCF varchar(19),

 @idFactura uniqueidentifier output

as

 select top 1 @idFactura = idFactura

 from factura

 where CompFiscal = @NCF



return @@ROWCOUNT
GO
GO
-- >>> FIN: svBuscarCompFiscal.sql <<<

-- >>> INICIO: svBuscarNumFactCliente.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[svBuscarNumFactCliente]  --1, 'CLIENTE DE CONTADO', '04/21/2011', @num output, @ncf output  

    @idCliente INT,

    @Cliente VARCHAR(100),

    @fec DATETIME,

    @num VARCHAR(16) OUTPUT,

    @ncf VARCHAR(19) OUTPUT

AS

    DECLARE @contado INT,

        @ultimo VARCHAR(16),

        @Cuenta INT,

        @reps INT,

        @host VARCHAR(50),

        @VencimientoNCF DATETIME,

        @reorden BIT     

    

    SET @ultimo = NULL    

    

    SELECT  @contado = CONVERT(INT, Valor)

    FROM    Defaults

    WHERE   Clave = 'CLIENTEDEFECTO'    

    

    DECLARE @cte VARCHAR(100)    

    SELECT  @cte = Cliente

    FROM    Cliente

    WHERE   idCliente = @contado    

  

    SELECT  @reps = CONVERT(INT, Valor)

    FROM    Defaults

    WHERE   Clave = 'CYCLES'    

    

    IF @reps IS NULL

        SET @reps = 0  

    

    IF @contado = @idCliente

        AND @Cliente = @cte

        BEGIN    

    

            SELECT TOP 1

                    @ultimo = f.Factura

            FROM    (SELECT Factura,

                            COUNT(*) AS Cuenta

                     FROM   Factura

                     WHERE  idCliente = @idCliente

                            AND Fecha = @fec

                            AND Credito = 0

                            AND Cliente = @cte

                     GROUP BY Factura

                     HAVING COUNT(*) <= @reps

                    ) f

            ORDER BY f.Cuenta    

    

            SELECT TOP 1

                    @ncf = CompFiscal

            FROM    Factura

            WHERE   Factura = @ultimo

            ORDER BY Factura     

        END    

    

    IF @reps <= 1

        OR @ultimo IS NULL

        BEGIN     

            EXEC spGetNextCounterSTR 'FACTURA', @ultimo OUTPUT  

    

            SELECT  @host = HOST_NAME()    

            EXEC svCompFiscal @ncf OUTPUT, @host, 'FT', @idcliente,

                @VencimientoNCF OUTPUT, @reorden OUTPUT       

        END    

    

    SET @num = @ultimo    

    

    RETURN 0     


GO
GO
-- >>> FIN: svBuscarNumFactCliente.sql <<<

-- >>> INICIO: svCalcComisionCobros.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[svCalcComisionCobros]

  @desde datetime,

	    @hasta datetime

as

 

declare @weekend datetime



declare @tbl table (

 Inicio datetime,

 Final datetime, 

 PNoVenc decimal(19,2) ,

 P15 decimal(19,2), 

 P30 decimal(19,2), 

 P45 decimal(19,2), 

 P60 decimal(19,2),

 PMas60 decimal(19,2)

)



declare @aging table (

 inicio datetime,

 final datetime,

 NoVenc decimal(19,2), 

 A15 decimal(19,2), 

 A30 decimal(19,2), 

 A45 decimal(19,2), 

 A60 decimal(19,2),

 AMas60 decimal(19,2))

 	  

declare @fecha datetime



set @fecha = @desde



while @fecha <= @hasta begin

  set @weekend = dateadd(day,6,@fecha)

  if @weekend > @hasta

    set @weekend = @hasta 

  

  insert into @aging

  select @fecha,

	     @weekend,

	     NoVenc,

	     A15,

	     A30,

	     A45,

	     A60,

	     AMas60

  from dbo.cxcResumenAging(@fecha)

  

  -- cobros

  insert into @tbl 

  select @fecha, @weekend, 

		 sum(case when dias <= 0 then d.Valor else 0.00 end) as NoVenc,

		 sum(case when dias between 01 and 15 then d.Valor else 0.00 end) as A15,

		 sum(case when dias between 16 and 30 then d.Valor else 0.00 end) as A30,

		 sum(case when dias between 31 and 45 then d.Valor else 0.00 end) as A45,

		 sum(case when dias between 46 and 60 then d.Valor else 0.00 end) as A60,

		 sum(case when dias between 61 and 120 then d.Valor else 0.00 end) as AMas60		  

  from (

  select dias = datediff(day, (f.Fecha + 30), d.fecha),  

		 d.Valor

  from cxc c 

  join cxcdet d on c.idcxc = d.idcxc

  join factura f on d.idcxcdebito = f.idfactura 

  where d.fecha between @fecha and @weekend

  ) as d 

 

  set @fecha = dateadd(day,7,@fecha)

end



--select * from @aging

--select * from @tbl 

declare @Objetivo decimal(19,2)



set @objetivo = (23000 * 0.15) / (datediff(day, @desde,@hasta) + 1.0)



select KeyField = newid(), 

	   data.*,

	   @objetivo as Objetivo, 

	   Comision15 = (@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.5) * Logro15,

	   Comision30 = (@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.25) * Logro30,

	   Comision45 = (@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.15) * Logro45,

	   Comision65 = (@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.10) * Logro60,

	   Penalidad  = (@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.10) * LogroMas60,

	   ComisionTotal = ((@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.5) * Logro15) + 

	   ((@Objetivo * (datediff(day,inicio, final) + 1) * 0.25) * Logro30) + 

						((@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.15) * Logro45) + 

						((@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.1) * Logro60) + 

						(@Objetivo * (datediff(day,inicio, final) + 1.0) * 0.10) * LogroMas60

from (

select  p.Inicio,

		p.Final,

		datediff(day, p.inicio, p.final) + 1 as Dias, 

		p.PNovenc + p.P15 as P15,

		c.A15 as A15,

		p.P30,

		c.A30,

		p.P45,

		c.A45,

		p.P60,

		c.A60,

		p.PMas60,

		c.AMas60, 

		Logro15 = ((p.PNoVenc + p.P15) / ( c.A15)),

		Logro30 = ((p.P30 / c.A30) ),

		Logro45 = ((p.P45 / c.A45) ),

		Logro60 = ((p.P60 / c.A60)),		

		LogroMas60 = (1.00 - (p.PMas60 / c.AMas60)) * -1 

from @tbl p join @aging c on p.Inicio = c.Inicio) as data

return


GO
GO
-- >>> FIN: svCalcComisionCobros.sql <<<

-- >>> INICIO: svClienteBalanceRpt.sql <<<
CREATE OR ALTER PROCEDURE svClienteBalanceRpt(@FechaAl DateTime)

AS

SELECT

  cl.IdCliente,

  cl.Cliente,

  mo.Moneda,

  Sum(dbo.cxcBalanceDocumentoReal(cx.IdCxc, @FechaAl)) As Balance

FROM

  cxc     cx Inner Join

  Cliente cl On (cl.IdCliente = cx.IdCliente) Inner Join

  Moneda  mo On (mo.IdMoneda = cx.IdMoneda) Inner Join

  CxcTipo ct On (ct.IdCxcTipo = cx.IdCxcTipo)

WHERE

  ct.EsCredito = 0 AND

  cx.Cancelado = 0

GROUP BY

  cl.IdCliente,

  cl.Cliente,

  mo.Moneda

ORDER BY

  mo.Moneda,

  cl.Cliente  


GO
GO
-- >>> FIN: svClienteBalanceRpt.sql <<<

-- >>> INICIO: svClienteNotasList.sql <<<
CREATE OR ALTER PROCEDURE svClienteNotasList(@IdCliente Int)

AS

SELECT

  Notas,

  IdCliente,

  Cliente

FROM

  Cliente

WHERE

  IdCliente = @IdCliente


GO
GO
-- >>> FIN: svClienteNotasList.sql <<<

-- >>> INICIO: svClientePorSub.sql <<<
CREATE OR ALTER PROCEDURE svClientePorSub 

 @idSubCliente int

as



 declare @idcliente int

 

 select @idCliente = c.idClienteParent

 from cliente c

 where c.idCliente = @idSubCliente 

 

 if @idCliente is null

   set @idCliente = @idSubCliente

   

 select * from cliente

 where idCliente = @idCliente 

 

return 


GO
GO
-- >>> FIN: svClientePorSub.sql <<<

-- >>> INICIO: svCobrosporVendedor.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[svCobrosporVendedor](@desde datetime, @hasta datetime, @idVend int) as  

  

  select    

        newid() as id,  

 e.Empleado as Vendedor,  

 r.fecha,  

 r.CxC as Pago,  

 r.Valor,  

 r.Tasa,  

 m.Moneda,  

 dr.fecha as FechaApli,  

 f.factura,  

 f.cliente,  

 f.fecha as FechaFact,  

 dr.Valor as Aplicado,  

 dr.Valor * dr.Tasa as Pagado  

from   

  CXC r  

  join CXCDet dr on r.idCXC = dr.IdCXC  

  join Factura f on dr.idCXCDebito = f.idFactura  

  join svEmpleado e on f.idEmpleado = e.idempleado  

  join cliente c on f.idcliente = c.idcliente  

  join Moneda m on f.idMoneda = m.idMoneda  

where    

  r.idTipoDocumento = 'RC'  

  and dr.fecha between @desde and @hasta   

  and f.credito = 1  

  and ((@idVend is null) or (f.idEmpleado = @idVend))  

  

  

UNION ALL  

  

select    

        newid() as id,  

 e.Empleado as Vendedor,  

 f.fecha,  

 'Contado' as Pago,  

        f.Total,  

        f.Tasa,  

 m.Moneda,  

 f.fecha as FechaApli,  

 f.factura,  

 f.cliente,  

 f.fecha as FechaFact,   

 f.subtotal - f.descuento as Aplicado,  

 (f.subtotal - f.descuento) * f.Tasa  

from  

  Factura f  

  join cliente c on f.idcliente = c.idcliente  

  join svEmpleado e on f.idEmpleado = e.idEmpleado  

  join Moneda m on f.idMoneda = m.idMoneda  

where  

  f.fecha between @desde and @hasta   

  and f.credito = 0 and f.cancelado = 0  

  and ((@idVend is null) or (f.idEmpleado = @idVend))  

order by  

  3  

  

  
GO
GO
-- >>> FIN: svCobrosporVendedor.sql <<<

-- >>> INICIO: svCompFiscal.sql <<<
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



    SET @NEW_VER_NCF = ISNULL((SELECT   CAST(Valor AS BIT)

                               FROM     Defaults

                               WHERE    Clave = 'NEW_VER_NCF'

                              ), 0)

    SET @UsarECF = ISNULL((SELECT   CAST(Valor AS BIT)

                               FROM     Defaults

                               WHERE    Clave = 'UsarECF'

                              ), 0)

    SET @OutPut = NULL



    IF @TipoDoc = 'ND'

        BEGIN

            --SET @TipoCompFiscal = '03'

			IF @UsarECF=1 SET @TipoCompFiscal = '33' ELSE SET @TipoCompFiscal = '03' 

        END

    ELSE

        IF @TipoDoc = 'NC'

            BEGIN

                --SET @TipoCompFiscal = '04'

				IF @UsarECF=1 SET @TipoCompFiscal = '34' ELSE SET @TipoCompFiscal = '04' 

            END

        ELSE

            IF @TipoDoc = 'GM' 

                BEGIN

					--SET @TipoCompFiscal = '13'

				    IF @UsarECF=1 SET @TipoCompFiscal = '43' ELSE SET @TipoCompFiscal = '13'           

			   

			   END

            ELSE

                IF @TipoDoc = 'PI'

                    BEGIN

                        --SET @TipoCompFiscal = '11'

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
GO
-- >>> FIN: svCompFiscal.sql <<<

-- >>> INICIO: svConsumoClienteporCategoria.sql <<<
CREATE OR ALTER PROCEDURE svConsumoClienteporCategoria(@Desde datetime, @Hasta Datetime, @idClienteGrupo int) as



Select newid() as ID, * 

from 

(SELECT DISTINCT 

  g.ClienteGrupo as Categoria,   

  d.idCliente,

  d.Cliente,  

  pg.Grupo,

  p.idProducto,

  p.Producto,

  isnull((Select sum(xfd.cantidad)

          from facturadet xfd join factura xf on xfd.idfactura = xf.idFactura

          where f.cancelado = 0 

                and xfd.idproducto = p.idProducto 

                and f.idCliente = d.idCliente

                and f.fecha between @Desde and @Hasta),0) as Compra

FROM         

  dbo.Cliente c  

  INNER JOIN dbo.Factura f ON f.idCliente = c.idCliente 

  INNER JOIN dbo.FacturaDet fd ON fd.idFactura = f.idFactura

  INNER JOIN dbo.Producto p ON p.idProducto = fd.idProducto

  INNER JOIN dbo.Grupo pg ON p.idGrupo = pg.idGrupo

  LEFT JOIN dbo.ClienteGrupo g ON c.idClienteGrupo = g.idClienteGrupo

  CROSS JOIN (SELECT DISTINCT xc.idCliente, xc.Cliente   

              FROM  dbo.Cliente xc  

                    LEFT JOIN dbo.ClienteGrupo xg ON xc.idClienteGrupo = xg.idClienteGrupo

              WHERE xc.idClienteGrupo = @idClienteGrupo) d

WHERE     

  c.idClienteGrupo = @idClienteGrupo

  and (f.Cancelado = 0)

  and f.fecha between @Desde and @Hasta) Datos

ORDER BY 

   1,3,2,4,6




GO
GO
-- >>> FIN: svConsumoClienteporCategoria.sql <<<

-- >>> INICIO: svCxcInsertar.sql <<<
CREATE OR ALTER PROCEDURE svCxcInsertar(

@idcxc uniqueidentifier, 

@cxc varchar(1), 

@idcliente int, 

@idtipodocumento varchar(16), 

@valor decimal(19,2), 

@fecha datetime, 

@concepto varchar(100), 

@idcxctipo int, 

@escredito bit, 

@cancelado bit, 

@referencia uniqueidentifier, 

@Cliente varchar(50), 

@usuario varchar(30), 

@idDocumento varchar(20), 

@Descuento decimal(19,2), 

@Condicion int, 

@Vencimiento datetime, 

@idMoneda int, 

@FechaCancelado datetime)

AS





begin tran



 insert into cxc (idCxc,   Cxc,  idCliente,  idTipoDocumento,  Valor,  Fecha,  Concepto,  idCxcTipo,  esCredito,  Cancelado,  Referencia,  Cliente,  Usuario,  idDocumento,  Descuento,  Condicion,  Vencimiento,  idMoneda,  FechaCancelado)

          values (@idcxc, @cxc, @idcliente, @idtipodocumento, @valor, @fecha, @concepto, @idcxctipo, @escredito, @cancelado, @referencia, @Cliente, @usuario, @idDocumento, @Descuento, @Condicion, @Vencimiento, @idMoneda, @FechaCancelado)





if @@Error <> 0 

begin

  rollback tran

  Return -1

end



if @@Rowcount = 0 

begin

  rollback tran

  Return -2

end



commit tran






GO
GO
-- >>> FIN: svCxcInsertar.sql <<<

-- >>> INICIO: svFactura2ProMov.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[svFactura2ProMov](@idFactura uniqueidentifier) AS



Declare 

  @TipoMov int,

  @Secuencia Varchar(16),

  @RecCount int,

  @Error int,

  @CCVentas uniqueidentifier,

  @CCCVenta varchar(16),

  @idAlmacen varchar(16),

  @contador varchar(16),

  @id Uniqueidentifier

  

-- si existen mov debe borrarse para generarse nuevamente

  delete promovdet

  from promovdet pd join promov p on p.idpromov = pd.idpromov

  where p.idReferencia = @idfactura



if Not Exists (Select top 1 1 from facturadet fd join producto p on p.idproducto = fd.idproducto where idfactura = @idFactura and p.calcexistencia = 1) begin

  Return 0

end



Set @Error = 0

Set @TipoMov = null

Set @TipoMov = convert(varchar,(Select Valor from Defaults where clave = 'Def_Tipo_MovInv'))



Declare Almacenes Cursor for

  Select distinct 

  fd.idAlmacen

  from 

    facturadet fd 

  where 

    idFactura = @idFactura

Open Almacenes

Fetch next from Almacenes Into @idAlmacen



  

Set @Error = @@Error

if (@Error <> 0) or (@TipoMov is null)  begin

  rollback tran

  Return -1

end          

begin tran

While @@Fetch_Status = 0 Begin

 set @secuencia = null   

Select @Secuencia = Promov From Promov where idReferencia =@idfactura and idAlmacen = @idAlmacen

if @Secuencia is null begin

    select @contador=isnull(ContadorSalidas,'MovimientoAlm') from Almacen where idAlmacen=@idAlmacen

    Exec spGetNextCounterSTR @contador ,@OutPut = @Secuencia OutPut

end



  delete from promov where idReferencia = @idFactura and idAlmacen =@idAlmacen



--Set @CCCVenta = convert(varchar(16),(Select Valor from Defaults where clave = 'CENTROCOSTOVENTA'))

--Set @CCVentas = (Select top 1 idCentroCosto from centrocosto where centrocosto = @CCCVenta)

Set @CCCVenta = (Select top 1 CentroCosto from centrocosto where centrocosto = @idAlmacen)

Set @CCVentas = (Select top 1 idCentroCosto from centrocosto where centrocosto = @idAlmacen)



--select * from almacen

--select * from centrocosto where centrocosto='9110CB40-858A-46A2-AEBF-89BE278B4091'



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

	  idAlmacenDestino)

	Select 

	  @id, 

	  @TipoMov, 

	  @Secuencia, 

	  Fecha, 

	  1, 

	  NULL, 

	  Factura, 

	  Usuario, 

	  Null, 

	  Null, 

	  Usuario, 

	  Null, 

	  @idAlmacen,

	  'Salida Fact.' + Factura,

	  Convert(varchar(30),Cliente),

	  Null,

	  Null,

	  0,

	  Null,

	  Null,

	  Null,

	  idFactura,

	  Null

	From 

	  Factura

	Where

	  idFactura = @idFactura and Cancelado = 0

	Set @Error = @@Error

	if (@Error <> 0)   begin

	  rollback tran

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

	idPartida)

	Select

--	  fd.idFacturaDet,

          NewId(),

	  @id,

	  substring(fd.Producto,1,60),

	  fd.idProducto,

	  fd.Producto,

	  fd.Cantidad,

	  dbo.InvProdCosto(fd.idProducto, f.Fecha, fd.idAlmacen) * fd.Cantidad,

	  fd.idUnidad,

	  0,

	  Null,

	  Null,

	  fd.Linea,

	  Null,

	  @CCCVenta,

	  @CCVentas, --CentroCosto

	  Null  -- Partida

	from

	  FacturaDet fd

	  join Factura f on fd.idFactura = f.idFactura join

          producto p on p.idproducto = fd.idproducto

	Where

	  fd.idFactura = @idFactura 

          and f.Cancelado = 0

          and fd.idAlmacen = @idAlmacen

          and p.calcexistencia = 1

	Set @Error = @@Error

	if (@Error <> 0)  begin

	  rollback tran

	  Return -3

	end





--******************

Fetch next from Almacenes Into @idAlmacen

end -- While

CLOSE Almacenes

DEALLOCATE Almacenes

Commit Tran






GO
GO
-- >>> FIN: svFactura2ProMov.sql <<<

-- >>> INICIO: svFactura2Recibo.sql <<<
--select * from Recibo r

--join recibodet rd on r.idRecibo=rd.idRecibo







CREATE OR ALTER PROCEDURE [dbo].[svFactura2Recibo](@idFactura uniqueidentifier,@Monto decimal(19,2),@idforma varchar(20) ) AS

  

--declare

--@idFactura uniqueidentifier

--,@Monto decimal(19,2)

--,@idforma varchar(20)

--,@Recibo int



--Set @idFactura= 'B2C91846-77CD-425A-938A-02C933F18E55'

--set @Monto = 350

--set @idforma ='Efectivo'

--set @Recibo=1670







Insert into Recibo(idRecibo,Recibo,idCliente, Cliente,esCxc,idEmpleado,Fecha,valor,Cancelado,Concepto

					,idCompania,Usuario,idPagoForma,idReciboTipo,idMoneda,tasa,idSucursal)





  select 

    newid(),

    

	1771, --dbo.fGetNextCounterINT('Recibo'),

 

    f.idCliente,

    f.Cliente,

	0,f.idEmpleado,convert(datetime,CONVERT(varchar(10), GETDATE(), 103),103)

	,@Monto,0,'Pago a Factura#'+' '+f.Factura,--'Pago a Factura#'+' '+f.Factura,

    1,f.usuario,@idforma,'CxC',1,f.tasa,f.idAlmacen

   

  from

    factura f

    

  where 

    f.idfactura = @idFactura 

    and f.Credito = 1





RETURN @@Error


GO
GO
-- >>> FIN: svFactura2Recibo.sql <<<

-- >>> INICIO: svFacturacionMes.sql <<<
------------ final de:svDevolucion2ProMov ------------



------------ inicio de:svFacturacionMes ------------



CREATE OR ALTER PROCEDURE svFacturacionMes

 @desde datetime,

 @hasta datetime

as

select data.Mes, data.Total

 from 

(

 select datepart(month,fecha) as iMes,

		datename(month,fecha) as Mes,

		sum(Valor * case when Tasa = 0 then 1 else Tasa end) as Total

 from recibo 

 where fecha between @desde and @hasta

       and cancelado = 0

 group by datepart(month,fecha), datename(month,fecha)  

) data

order by imes

return 0 




GO
GO
-- >>> FIN: svFacturacionMes.sql <<<

-- >>> INICIO: svFacturaPag2CxC.sql <<<
CREATE OR ALTER PROCEDURE svFacturaPag2CxC(@idFactura uniqueidentifier) AS

  

declare

  @TipoDoc varchar(16)



set @TipoDoc = 'FT' --select valor from defaults where clave = 'TIPO.DOC.FACTURA'



insert into cxc (idcxc, cxc, idcliente, cliente, idtipodocumento, valor, fecha, concepto, idcxctipo, escredito, cancelado, referencia, usuario, Descuento, Condicion, Vencimiento)

  select 

    fp.idFacturaPag,

    f.Factura +'-'+ fp.FacturaPag,

    f.idCliente,

    f.Cliente,

    @TipoDoc,

    fp.Monto,

    f.Fecha,

    'FACTURA CREDITO ' + f.factura,

    -1, --idcxcTipo

    0, --esCredito

    0, --cancelado

    fp.idFactura,

    f.usuario,

    0.00,

    f.Condicion,  --plazo antes de iniciar el calculo de mora

    fp.Fecha

  from

    factura f

    join facturaPag fp on fp.idFactura = f.idFactura

  where 

    f.idfactura = @idFactura 

    and f.Credito = 1

  



RETURN @@Error
GO
GO
-- >>> FIN: svFacturaPag2CxC.sql <<<

-- >>> INICIO: svFacturaPagAnular.sql <<<
CREATE OR ALTER PROCEDURE svFacturaPagAnular(@idFactura uniqueidentifier, @Anulado bit output) AS



declare @err int



Set     @err = 0

Set @Anulado = 0  --retornar false



BEGIN TRAN  





IF exists (

  SELECT Top 1 -- si no existen pago para la cxc de esta factura

    1

  FROM

    Cxc p

    INNER JOIN Cxcdet Pd ON p.idCxc = pd.idCxc

    INNER JOIN Cxc f ON pd.idCxcDebito = f.idCxc

  WHERE

    f.Referencia  = @idFactura and p.cancelado = 0)

BEGIN

  RETURN -1

END





IF exists (

  SELECT Top 1 -- si no se ha cerrado el almacen para los movimientos generados por esta factura

    1

  FROM

    ProMov p  

  WHERE

    p.idPromov = @idFactura and p.posteado = 1)

BEGIN

  RETURN -2

END





  Update 

    factura 

  set 

    cancelado = 1, 

    fechacancelado = Getdate()

  where 

    idfactura = @idFactura --marcar factura como cancelado



  set @err = @@Error   



  Delete 

  from cxc 

  where referencia = @idFactura  -- borrar la cxc de la factura



  Set @Err = @@Error



  Delete 

    promovdet

  from 

    Promov p

    join promovdet pd on p.idpromov = pd.idpromov

  where 

    p.idpromov = @idFactura



  set @err = @@Error   

  

  Delete 

  from 

    Promov 

  where 

    idpromov = @idFactura



  set @err = @@Error   



  Set @Anulado = 1  -- retornar true





if @err <> 0 

begin

  ROLLBACK TRAN

end

else

begin

  COMMIT TRAN

end

RETURN 0






GO
GO
-- >>> FIN: svFacturaPagAnular.sql <<<

-- >>> INICIO: svFacturarNDPresupuesto.sql <<<
CREATE OR ALTER PROCEDURE svFacturarNDPresupuesto

 @idCotizacion uniqueidentifier,

 @Usuario varchar(30),

 @idFactura uniqueidentifier output

as

declare @err int

declare @Fecha Datetime



Set @Fecha =(Select Convert(DateTime,Round(Convert(Float,GetDate()),0,1)))



begin tran



exec @err = svGenFacturaNDPresupuesto @idcotizacion, @usuario, @idfactura output



if (@err <> 0 or @idFactura is null)

begin

  rollback tran

  return -1

end



update cxcdet

set idcxcdebito = @idFactura, fecha = @fecha 

where idcxcdebito = @idcotizacion

if @@ERROR <> 0

begin

  rollback tran

  return -2

end



declare @nota varchar(100), @ncf varchar(20)

select @nota = '** FACTURADO: FACT. NUMERO ' + Factura, @ncf = CompFiscal

from factura

where idFactura = @idFactura



update cxc

set cancelado = 1, fechacancelado = @fecha, Concepto = @nota, Compfiscal = @ncf

where idcxc = @idcotizacion

if @@ERROR <> 0

begin

  rollback tran

  return -3

end



declare @st_facturada varchar(16)



select @st_facturada = convert(varchar(16), valor)

from defaults 

where clave = 'COT_FACTURADA'



if @st_facturada is not null

begin

  update Cotizacion

  set idCotizacionStatus = @ST_FACTURADA

  where idcotizacion = @idcotizacion



  if @@ERROR <> 0

  begin

    rollback tran

    return -4

  end

end



commit tran

return 0
GO
GO
-- >>> FIN: svFacturarNDPresupuesto.sql <<<

-- >>> INICIO: svFacturas608List.sql <<<
CREATE OR ALTER PROCEDURE dbo.svFacturas608List

    @Desde DATETIME ,

    @Hasta DATETIME

AS

    SELECT  ft.IdFactura ,

            ft.Factura ,

            REPLACE(ft.ClienteRNC, '-', '') AS ClienteRNC ,

			CASE WHEN LEN(REPLACE(ft.ClienteRNC, '-', '')) = 9 THEN '1'

                 WHEN LEN(REPLACE(ft.ClienteRNC, '-', '')) = 11 THEN '2'

                 ELSE '3'

            END AS idTipoIdentificacion ,

            CASE WHEN LEN(REPLACE(ft.ClienteRNC, '-', '')) = 9 THEN 'RNC'

                 WHEN LEN(REPLACE(ft.ClienteRNC, '-', '')) = 11 THEN 'CEDULA'

                 ELSE 'SIN IDENTIFICACION'

            END AS TipoIdentificacion ,

            ft.CompFiscal ,

            ft.Fecha ,

			ft.TipoAnulacion, 

            ( Subtotal - ft.Descuento + ft.Itbis ) * ft.Tasa AS Total

    FROM    Factura ft

    WHERE   ft.Fecha BETWEEN @Desde AND @Hasta

            AND ft.Cancelado = 1

    ORDER BY ft.CompFiscal ,

            ft.Fecha




GO
GO
-- >>> FIN: svFacturas608List.sql <<<

-- >>> INICIO: svFacturasAbiertas.sql <<<
--alter table factura add Cobrada bit not null default (1)

--go

CREATE OR ALTER PROCEDURE [dbo].[svFacturasAbiertas]

as

select f.idFactura,

	   f.Factura,

	   f.Fecha,

	   f.Hora,

	   f.IdCliente,

	   f.Cliente,

	   f.Usuario, 

	   f.Total

from factura f 

where f.Cobrada = 0 and f.fecha >= dateadd(day,-5,getdate())

order by f.Factura

return 0


GO
GO
-- >>> FIN: svFacturasAbiertas.sql <<<

-- >>> INICIO: svFacturasCanceladas.sql <<<
------------ final de:svFacturacionMes ------------



------------ inicio de:svFacturasCanceladas ------------



CREATE OR ALTER PROCEDURE svFacturasCanceladas (@Desde DateTime, @Hasta DateTime)

AS

SELECT

  IdFactura As Id,

  Factura,

  Fecha,

  Referencia,

  CompFiscal,

  TipoAnulacion

From

  Factura

Where

  Fecha Between @Desde And @Hasta AND

  Cancelado = 1




GO
GO
-- >>> FIN: svFacturasCanceladas.sql <<<

-- >>> INICIO: svFacturasToDgii.sql <<<
CREATE OR ALTER PROCEDURE dbo.svFacturasToDgii

    (

     @Desde DATETIME,

     @Hasta DATETIME

    )

AS

    DECLARE @CtaItbis VARCHAR(16),

        @CtaItbisPrima VARCHAR(16)  

  

    SET @CtaItbis = CONVERT(VARCHAR(20), (SELECT    Valor

                                          FROM      Defaults

                                          WHERE     Clave = 'CuentaITBIS'

                                         ))  

    SET @CtaItbisPrima = (SELECT    idCuentaPrima

                          FROM      cgCuentaPrima

                          WHERE     idCuenta = @CtaItbis

                         )  



    SELECT  ft.idFactura,

            ft.Factura,

            REPLACE(cl.RNC_Cedula, '-', '') AS ClienteRNC,

            CASE WHEN cl.IdTipoIdentificacion = 1 THEN 'RNC'

                 WHEN cl.IdTipoIdentificacion = 2 THEN 'CEDULA'

                 WHEN cl.IdTipoIdentificacion = 3 THEN 'SIN IDENTIFICACION'

            END AS TipoIdentificacion,

            ft.CompFiscal,

            '' AS CompFiscalModificado,

            ft.Fecha,

            ft.Itbis * ft.Tasa AS Itbis,

            (SubTotal - ft.Descuento) * ft.Tasa AS SubTotal

    FROM    Factura ft

            INNER JOIN Cliente cl ON (cl.idCliente = ft.idCliente)

    WHERE   ft.Fecha BETWEEN @Desde AND @Hasta

            AND ft.Cancelado = 0  

--*********  

    UNION ALL

    SELECT  cm.idCxc AS IdFactura,

            cm.Cxc AS Factura,

            REPLACE(cl.RNC_Cedula, '-', '') AS ClienteRNC,

            CASE WHEN cl.IdTipoIdentificacion = 1 THEN 'RNC'

                 WHEN cl.IdTipoIdentificacion = 2 THEN 'CEDULA'

                 WHEN cl.IdTipoIdentificacion = 2 THEN 'SIN IDENTIFICACION'

            END AS TipoIdentificacion,

            cm.CompFiscal,

            cc.CompFiscal AS CompFiscalModificado,

            cm.Fecha,  

  --cd.TotalAplicado / ft.Total as Itbis, 

            Itbis = (ISNULL((SELECT SUM(Valor)

                             FROM   cgCodificacion

                             WHERE  GUIDDocumento = cm.idCxc

                                    AND DebCre = 1

                                    AND (idCuenta = @CtaItbis

                                         OR idCuenta = @CtaItbisPrima

                                        )

                            ), 0.00) * -1), 			

  --((cd.TotalAplicado * cd.Tasa) / (ft.Total * cc.Tasa)) * (ft.Itbis * ft.Tasa) As Itbis,  

            (((cm.Total * cm.Tasa)

              - ISNULL((SELECT  SUM(Valor)

                        FROM    cgCodificacion

                        WHERE   GUIDDocumento = cm.idCxc

                                AND DebCre = 1

                                AND idCuenta = @CtaItbis

                                OR idCuenta = @CtaItbisPrima

                       ), 0.00)) * -1) AS SubTotal

    FROM    CxcDet cd

            INNER JOIN Cxc cc ON (cd.idCxcDebito = cc.idCxc)

            INNER JOIN Cxc cm ON (cm.idCxc = cd.idCxc)

            INNER JOIN Factura ft ON (ft.idFactura = cc.idCxc)

            INNER JOIN Cliente cl ON (cl.idCliente = ft.idCliente)

    WHERE   cm.Fecha BETWEEN @Desde AND @Hasta

            --AND LTRIM(RTRIM(ISNULL(cm.compfiscal, ''))) <> ''

            --AND cm.Cancelado = 0

            --AND cm.IdTipoDocumento = 'NC'  

            AND cm.Cancelado = 0

            AND cm.idTipoDocumento = 'NC'

            AND ((cm.CompFiscal IS NOT NULL)

                 AND (cm.CompFiscal <> '')

                )

            AND ((cc.CompFiscal IS NOT NULL)

                 AND (cc.CompFiscal <> '')

                )    


GO
GO
-- >>> FIN: svFacturasToDgii.sql <<<

-- >>> INICIO: svFacturasToDgii2018.sql <<<
CREATE OR ALTER PROCEDURE dbo.svFacturasToDgii2018

  @Desde DATETIME ,

  @Hasta DATETIME

AS

    DECLARE @CtaItbis VARCHAR(16), @CtaItbisPrima VARCHAR(16)  

	DECLARE @nullDate DATETIME = NULL,

			@nullMoney DECIMAL(19,2) = NULL,

			@TOPE_FC DECIMAL(19,2) = 50000

  

    SET @CtaItbis = CONVERT(VARCHAR(20), ( SELECT   Valor

                                           FROM     Defaults

                                           WHERE    Clave = 'CuentaITBIS'

                                         ))  

    SET @CtaItbisPrima = ( SELECT   idCuentaPrima

                           FROM     cgCuentaPrima

                           WHERE    idCuenta = @CtaItbis

                         )  



    SELECT  ft.idFactura ,

		    'FT' AS TipoDoc, 

            ft.Factura ,

            REPLACE(ft.ClienteRNC, '-', '') AS ClienteRNC ,            

            ft.CompFiscal ,

            '' AS CompFiscalModificado ,

            ft.Fecha ,

            ft.Itbis * ft.Tasa AS Itbis ,

            ( SubTotal - ft.Descuento ) * ft.Tasa AS MontoFacturado,

			ft.idTipoIngreso,

			ti.Tipo AS TipoIngreso,

			@nullDate AS FechaRetencion,

			0.00 AS ItbisRetenido,

			0.00 AS ISRRetenido, 

			@nullMoney AS ItbisPercibido,

			@nullMoney AS ISRPercibido,

			0.00 AS ImpSelectivo,

			0.00 AS OtrosImpuestos,

			CASE ft.Credito WHEN 0 THEN ISNULL(fc.Efectivo,ft.Total) ELSE 0.00 END AS Efectivo,

			CASE ft.Credito WHEN 0 THEN ISNULL(fc.Cheque,00) ELSE 0.00 END AS Cheque,

			CASE ft.Credito WHEN 0 THEN ISNULL(fc.Tarjeta,0.00) ELSE 0.00 END AS Tarjetas,

			CASE ft.Credito WHEN 0 THEN ISNULL(fc.Otros,0.00) ELSE 0.00 END AS OtrasFormasPago,

			CASE ft.Credito WHEN 1 THEN ft.Total ELSE 0.00 END AS MontoCredito,

			0.00 AS Permuta,

			0.00 AS Propina,

			0.00 AS Bonos

    FROM    Factura ft

            INNER JOIN Cliente cl ON ( cl.idCliente = ft.idCliente )

			LEFT JOIN dbo.svTipoIngreso ti ON ft.idTipoIngreso = ti.idTipo

			LEFT JOIN dbo.FacturaCobro fc ON ft.idFactura = fc.idFactura

    WHERE   ft.Fecha BETWEEN @Desde AND @Hasta

            AND ft.Cancelado = 0

			AND (SUBSTRING(ft.CompFiscal,2,2) <> '02' OR ((( SubTotal - ft.Descuento ) * ft.Tasa) > @TOPE_FC))

			AND ISNULL(ft.CompFiscal,'') <> ''

    UNION ALL

    SELECT  cm.idCxc AS IdFactura ,

		    'CXC' AS TipoDoc, 

            cm.Cxc AS Factura ,

            REPLACE(cl.RNC_Cedula, '-', '') AS ClienteRNC ,            

            cm.CompFiscal ,

            cc.CompFiscal AS CompFiscalModificado ,

            cm.Fecha ,

            Itbis = ( ISNULL(x.itbis, 0.00) * -1 ) ,

            ( ( ( cm.Total * cm.Tasa ) - ISNULL(x.itbis, 0.00) ) * 1 ) AS SubTotal,

			ft.idTipoIngreso,

			ti.Tipo AS TipoIngreso,

			@nullDate AS FechaRetencion,

			0.00 AS ItbisRetenido,

			0.00 AS ISRRetenido, 

			@nullMoney AS ItbisPercibido,

			@nullMoney AS ISRPercibido,

			0.00 AS ImpSelectivo,

			0.00 AS OtrosImpuestos,

			0.00 AS Efectivo,

			0.00 AS Cheque,

			0.00 AS Tarjetas,

			0.00 AS OtrasFormasPago,

			cm.Total MontoCredito,

			0.00 AS Permuta,

			0.00 AS Propina,

			0.00 AS Bonos

    FROM    CxcDet cd

            INNER JOIN Cxc cc ON ( cd.idCxcDebito = cc.idCxc )

            INNER JOIN Cxc cm ON ( cm.idCxc = cd.idCxc )

            INNER JOIN Factura ft ON ( ft.idFactura = cc.idCxc )

            INNER JOIN Cliente cl ON ( cl.idCliente = ft.idCliente )

			LEFT JOIN dbo.svTipoIngreso ti ON ft.idTipoIngreso = ti.idTipo 

            LEFT JOIN ( SELECT  GUIDDocumento ,

                                SUM(Valor) AS itbis

                        FROM    cgCodificacion

                        WHERE   DebCre = 1

                                AND idCuenta = @CtaItbis

                                OR idCuenta = @CtaItbisPrima

                        GROUP BY GUIDDocumento

                      ) x ON x.GUIDDocumento = cm.idCxc

    WHERE   cm.Fecha BETWEEN @Desde AND @Hasta

            AND cm.Cancelado = 0

            AND cm.idTipoDocumento = 'NC'

            AND ( ( cm.CompFiscal IS NOT NULL )

                  AND ( cm.CompFiscal <> '' )

                )

            AND ( ( cc.CompFiscal IS NOT NULL )

                  AND ( cc.CompFiscal <> '' )

                )    

	ORDER BY 5 


GO
GO
-- >>> FIN: svFacturasToDgii2018.sql <<<

-- >>> INICIO: svFacturasToDgiiResumen2018.sql <<<
CREATE OR ALTER PROCEDURE dbo.svFacturasToDgiiResumen2018

  @Desde DATETIME ,

  @Hasta DATETIME

AS

    DECLARE @CtaItbis VARCHAR(16), @CtaItbisPrima VARCHAR(16)  

  

    SET @CtaItbis = CONVERT(VARCHAR(20), ( SELECT   Valor

                                           FROM     Defaults

                                           WHERE    Clave = 'CuentaITBIS'

                                         ))  

    SET @CtaItbisPrima = ( SELECT   idCuentaPrima

                           FROM     cgCuentaPrima

                           WHERE    idCuenta = @CtaItbis

                         )  

	DECLARE @resumen TABLE (id INT, Concepto VARCHAR(200), Valor VARCHAR(100))



	DECLARE @cant INT, 

			@itbis MONEY,

			@montoFacturado  MONEY,

			@efectivo MONEY,

			@cheque MONEY,

			@tarjeta MONEY,

			@otras MONEY,

			@credito MONEY



	SELECT  @cant = COUNT(*),

		    @itbis = SUM(ft.Itbis * ft.Tasa),

            @montoFacturado = SUM(( SubTotal - ft.Descuento ) * ft.Tasa),			

			@efectivo = SUM(CASE ft.Credito WHEN 0 THEN ISNULL(fc.Efectivo,ft.Total) ELSE 0.00 END),

			@cheque = SUM(CASE ft.Credito WHEN 0 THEN ISNULL(fc.Cheque,00) ELSE 0.00 END),

			@tarjeta = SUM(CASE ft.Credito WHEN 0 THEN ISNULL(fc.Tarjeta,0.00) ELSE 0.00 END),

			@otras = SUM(CASE ft.Credito WHEN 0 THEN ISNULL(fc.Otros,0.00) ELSE 0.00 END),

			@credito = SUM(CASE ft.Credito WHEN 1 THEN ft.Total ELSE 0.00 END)

    FROM    Factura ft            			

			LEFT JOIN dbo.FacturaCobro fc ON ft.idFactura = fc.idFactura

    WHERE   ft.Fecha BETWEEN @Desde AND @Hasta

            AND ft.Cancelado = 0

			AND SUBSTRING(ft.CompFiscal,2,2) = '02'

			AND ISNULL(ft.CompFiscal,'') <> ''



  INSERT INTO @resumen

  (id, Concepto, Valor )

  VALUES

  (01, 'Cantidad de NCFs Emitidos de F.C.', CONVERT(VARCHAR(20), @cant)),

  (02, 'Total Monto Facturado', CONVERT(VARCHAR(100), @montoFacturado, 101)),

  (03, 'Total ITBIS Facturado', CONVERT(VARCHAR(100), @itbis, 101)),

  (04, 'Impuesto Selectivo al Consumo', '0'),

  (05, 'Total Otros Impuestos/Tasas', '0'),

  (06, 'Total Monto Propina Legal', '0'),

  (07, 'EFECTIVO', CONVERT(VARCHAR(100), @efectivo, 101)),

  (08, 'CHEQUE/TRANSFERENCIA/DEPOSITO', CONVERT(VARCHAR(100), @cheque, 101)),

  (09, 'TARJETA DEBITO/CREDITO', CONVERT(VARCHAR(100), @tarjeta, 101)),

  (10, 'BONOS O CERTIFICADOS DE REGALO', '0'),

  (11, 'PERMUTA', '0'),

  (12, 'OTRAS FORMAS DE VENTAS', '0')



  SELECT * FROM @resumen ORDER BY id 


GO
GO
-- >>> FIN: svFacturasToDgiiResumen2018.sql <<<

-- >>> INICIO: svFacturasXCobrador.sql <<<
CREATE OR ALTER PROCEDURE svFacturasXCobrador

 @desde datetime,

 @hasta datetime,

 @todas bit

as

 select f.idFactura,

	f.Factura,

	f.fecha,

	f.Total,

	dbo.cxcBalanceDocumento(f.idFactura, @hasta,null) as Cobrado,

	f.idCobrador, 

	e.Empleado as Cobrador,

	f.Cliente,

	f.Condicion,

	f.Referencia

 from factura f left join svempleado e 

  on f.idCobrador = e.idEmpleado

 where f.fecha between @desde and @hasta

	and f.Credito = 1

	and (@todas = 1 or dbo.cxcBalanceDocumento(f.idFactura, @hasta,null) < f.Total)

 order by 

   e.Empleado, 

   f.fecha, 

   f.factura

return 0


GO
GO
-- >>> FIN: svFacturasXCobrador.sql <<<

-- >>> INICIO: svFacturasXTipoNave.sql <<<
CREATE OR ALTER PROCEDURE svFacturasXTipoNave --'05/01/2006' , '05/29/2006'

 @desde datetime,

 @hasta datetime

as



select  tn.TipoNave,

	fd.idProducto,

	p.Producto, 

	sum(fd.LineTotal) as Total,

	count(*) as Cuenta,

	@desde as Desde,

	@hasta as Hasta

from factura f join facturadet fd 

  on f.idFactura = fd.idFactura

join ss..avisollegada a on f.NumRegistro = convert(varchar,a.NumRegistro)

  join ss..ssTipoNave tn on tn.idTipoNave = a.idTipoNave

  join producto p on fd.idProducto = p.idProducto 

where f.fecha between @desde and @hasta

group by tn.TipoNave, fd.idProducto, p.Producto

order by tn.TipoNave, p.Producto

return 0 






GO
GO
-- >>> FIN: svFacturasXTipoNave.sql <<<

-- >>> INICIO: svFindCliente.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[svFindCliente]

 @mask VARCHAR(200)

AS

 DECLARE @m VARCHAR(202) = ISNULL('%' + LTRIM(RTRIM(@mask)) + '%','%')



select TOP 500     

	c.Cliente, 

	c.IdCliente AS Codigo, 

  c.RNC_Cedula,

  c.Telefono, 

  (CASE WHEN cs.activo > 0 THEN 'Activo' ELSE 'Inactivo' END)  as Activo, 

  (CASE WHEN c.limiteCredito > 0 THEN 'Credito' ELSE 'No Credito' END) as Credito,

  convert(varchar(40), Notas) as Notas

From 

  Cliente c 

  join ClienteStatus cs ON c.idClienteStatus = cs.idClienteStatus 

	WHERE ( CONVERT(VARCHAR(20), idcliente) LIKE @m

	      OR cliente LIKE @m

				OR c.Telefono LIKE @m

				OR c.RNC_Cedula LIKE @m

				OR isnull(c.Notas,'') LIKE @m )AND cs.Activo=1

Order by Cliente 




GO
GO
-- >>> FIN: svFindCliente.sql <<<

-- >>> INICIO: svFindClientecentral.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[svFindClientecentral] --'4','4'

 @mask VARCHAR(200),@id int

AS

 DECLARE @m VARCHAR(202) = ISNULL('%' + LTRIM(RTRIM(@mask)) + '%','%')



if isnull(@id,'')=''  

select TOP 500     

	c.Cliente, 

	c.Telefono,

	c.Beeper,

	c.Contacto,

	c.EMail,

	c.IdCliente , 

  c.RNC_Cedula,

  convert(varchar(40), Notas) as Notas



From 

  Cliente c 

  join ClienteStatus cs ON c.idClienteStatus = cs.idClienteStatus

  	WHERE 	( CONVERT(VARCHAR(20), c.idcliente) LIKE @m

	      OR c.cliente LIKE @m

				OR c.Telefono LIKE @m

				OR c.Beeper LIKE @m

				OR c.Contacto LIKE @m

				OR c.EMail LIKE @m

				OR c.RNC_Cedula LIKE @m

				OR isnull(c.Notas,'') LIKE @m )   and cs.Activo=1

Order by Cliente;

else

select TOP 500     

	c.Cliente, 

	c.Telefono,

	c.Beeper,

	c.Contacto,

	c.EMail,

	c.IdCliente , 

  c.RNC_Cedula,

  convert(varchar(40), Notas) as Notas



From 

  Cliente c 

  join ClienteStatus cs ON c.idClienteStatus = cs.idClienteStatus

  	WHERE 	 c.idcliente=@id;

 




GO
GO
-- >>> FIN: svFindClientecentral.sql <<<

-- >>> INICIO: svGenCodifFactura.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[svGenCodifFactura]

  @idFactura uniqueidentifier

as



declare

  @CuentaITBIS varchar(20),

--  @ITBISUS varchar(16),

  @MONEDA_LEGAL int,

  @Tipo Varchar (16),

  @TipoDocumento varchar(16),

  @Fecha datetime,

  @Referencia varchar(16)



declare

  @TablaTMP Table(

    idCuenta Varchar(20), 

    Valor Money, 

    DebCre tinyint, 

    Nota varchar(100),

    idCentroCosto uniqueidentifier,

    CentroCosto varchar(16))



Set @CuentaITBIS  = convert(varchar(20),(Select Valor From Defaults where Clave = 'CuentaITBIS'))

--Set @ITBISUS  = convert(varchar(20),(Select Valor From Defaults where Clave = 'ITBIS_DOLARES'))

Set @Tipo = 'INGRESO'

Set @tipoDocumento ='FT'



Select

  @Fecha =fecha,

  @Referencia = Factura

from

  factura

where

  idfactura = @idFactura



select top 1 @MONEDA_LEGAL = idMoneda

from moneda

where CursoLegal = 1



INSERT @TablaTMP (idCuenta, Valor, DebCre,  Nota, idCentroCosto, CentroCosto)

SELECT   

  p.cc as Cuenta,

  round(fd.linetotal*ft.tasa,2) as valor,

  2 as DebCre,

  convert(varchar(60),'Ing. Prod:[' + p.idProducto + '] ' + p.Producto),

  ft.idCentroCosto,

  ft.CentroCosto

FROM

  Factura    ft Join

  FacturaDet fd On (ft.IdFactura = fd.IdFactura) Join

  producto p on fd.idProducto = p.idProducto

WHERE

  ft.idFactura = @idFactura





UNION ALL



SELECT

  p.ccDescuento as Cuenta,

  round(fd.Descuento*ft.tasa,2) as Valor,

  1 as DebCre,

  convert(varchar(60),'Desc.Ventas:' + p.idProducto),

  Null,

  Null

FROM

  Factura    ft Join

  FacturaDet fd On (ft.IdFactura = fd.IdFactura) Join

  producto p on fd.idProducto = p.idProducto

WHERE

  fd.descuento > 0

  AND ft.idFactura = @idFactura



UNION ALL



SELECT    

  @CuentaITBIS as Cuenta,

  fd.Itbis * ft.Tasa as Valor,

  2 as DebCre,

  convert(varchar(60),'ITBIS POR :' + fd.idProducto),

  Null,

  Null

FROM

  Factura    ft 

  Join FacturaDet fd On (ft.IdFactura = fd.IdFactura) 

WHERE

  fd.itbis > 0

  --and ft.idMoneda = @MONEDA_LEGAL 

  and ft.idFactura = @idFactura



/*UNION ALL



SELECT

  @ITBISUS as Cuenta,

  fd.Itbis as Valor,

  2 as DebCre,

  convert(varchar(60),'ITBIS POR :' + fd.idProducto),

  Null,

  Null

FROM

  Factura    ft 

  Join FacturaDet fd On (ft.IdFactura = fd.IdFactura) 

WHERE 

  fd.itbis > 0

  and ft.idMoneda <> @MONEDA_LEGAL 

  and ft.idFactura = @idFactura



UNION ALL



SELECT

  @ITBISUS as Cuenta,

  round(fd.Itbis * (ft.Tasa - 1.00),2) as Valor,

  2 as DebCre,

  convert(varchar(60),'PRIMA ITBIS POR :' + fd.idProducto),

  Null,

  Null

FROM

  Factura  ft 

  Join FacturaDet fd On (ft.IdFactura = fd.IdFactura) 

  join cgCuentaPrima cp on cp.idCuenta = @ITBISUS

WHERE

  fd.itbis > 0

  and ft.idMoneda <> @MONEDA_LEGAL 

  AND ft.idFactura = @idFactura*/



----------------------------------------------------------------------------------------------------



if exists (select 1 from @TablaTMP where Valor <> 0)

begin

  insert into @TablaTMP(idCuenta, Valor, DebCre, Nota)

  Select

    (CASE WHEN ft.credito = 1 then ctc.idCuentaCredito else ctc.idCuentaContado end) as Cuenta,

    ft.SubTotal-ft.Descuento+ft.Itbis as Valor,

    1 as DebCre,

    convert(varchar(60),'CxC - '+ m.Moneda + ' Cliente: ' + convert(varchar(16),c.idCliente))

  FROM

    Factura    ft

    join cliente c on ft.idCliente = c.idCliente

    join Moneda m on ft.idMoneda = m.idMoneda

    join ClienteTipoCuenta ctc on (c.idClienteTipo = ctc.idClienteTipo and ft.idMoneda = ctc.idMoneda)

  WHERE

    ft.idFactura = @idFactura



UNION ALL



  Select

    cp.idCuentaPrima as Cuenta,

    round((ft.SubTotal-ft.Descuento+ft.Itbis) * ft.tasa,2)  - (ft.SubTotal-ft.Descuento+ft.Itbis) as Valor,

    1 as DebCre,

    convert(varchar(60),'CxC Prima de: ' + m.Moneda)

  FROM

    Factura ft

    join cliente c on ft.idCliente = c.idCliente

    join Moneda m on ft.idMoneda = m.idMoneda

    join clienteTipoCuenta ctc on c.idClienteTipo = ctc.idClienteTipo and ft.idMoneda = ctc.idMoneda 

   join cgCuentaPrima cp on cp.idCuenta = (CASE WHEN ft.credito = 1 then ctc.idCuentaCredito else ctc.idCuentaContado end)

  WHERE

    ft.idFactura = @idFactura

    and m.cursolegal <> 1

end



----------------------------------------    VENTAS   ---------------------------------------------

delete cgcodificacion where GuidDocumento = @idFactura



insert into cgcodificacion (idCodificacion, GUIDDocumento, idCuenta, Valor, DebCre,  idCentroCosto, CentroCosto, Nota, Referencia, Automatica, Tipo, TipoDocumento, Fecha)

Select

  newid(),

  @idFactura, 

  idCuenta, 

  Valor, 

  DebCre, 

  idCentroCosto, 

  CentroCosto,

  Nota, 

  @Referencia, 

  1,

  @Tipo,

  @TipoDocumento,

  @Fecha

from 

  @TablaTMP






GO
GO
-- >>> FIN: svGenCodifFactura.sql <<<

-- >>> INICIO: svGenCodificacionFacturas.sql <<<
CREATE OR ALTER PROCEDURE svGenCodificacionFacturas(@Desde datetime, @Hasta datetime) as    

    

DECLARE     

  @idfactura uniqueidentifier    , @factura varchar(16)

    

DECLARE facturas CURSOR FOR     

select distinct idfactura, factura

from    

  factura f    

  left join cgcodificacion c on f.idfactura = c.Guiddocumento    

where    

  f.fecha between @Desde and @Hasta    

--  and c.Guiddocumento is null    

order by    

  idfactura    

    

OPEN facturas    

    

FETCH NEXT FROM facturas     

INTO @idfactura, @factura

    

WHILE @@FETCH_STATUS = 0    

BEGIN    

    print @factura

    exec svGenCodifFactura @idFactura    

    

   -- Get the next author.    

   FETCH NEXT FROM facturas    

   INTO @idfactura, @factura

END    

    

CLOSE facturas    

DEALLOCATE facturas 


GO
GO
-- >>> FIN: svGenCodificacionFacturas.sql <<<

-- >>> INICIO: svGenFacturaNDPresupuesto.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[svGenFacturaNDPresupuesto]

    @idCotizacion UNIQUEIDENTIFIER,

    @Usuario VARCHAR(30),

    @idFactura UNIQUEIDENTIFIER OUTPUT

AS

    DECLARE @Fecha DATETIME

    SET @Fecha = (SELECT    CONVERT(DATETIME, ROUND(CONVERT(FLOAT, GETDATE()),

                                                    0, 1))

                 )



    SET @idFactura = NULL

    IF EXISTS ( SELECT  1

                FROM    Factura

                WHERE   idReferencia = @idCotizacion

                        AND Cancelado = 0 )

        BEGIN

            RETURN -2

        END



    DECLARE @idFact UNIQUEIDENTIFIER 

    DECLARE @fno VARCHAR(16)

    DECLARE @itbisCliente BIT,

        @idCliente INT,

        @Terminal VARCHAR(100),

        @Tasa FLOAT,

        @Desc FLOAT,

        @MtoDesc DECIMAL(19, 2)



    SELECT  @Terminal = HOST_NAME()



    DECLARE @SubTotal DECIMAL(19, 2),

        @itbis DECIMAL(19, 2),

        @Total DECIMAL(19, 2),

        @TotalItbis DECIMAL(19, 2),

        @VencimientoNCF DATETIME,

        @reorden BIT



    DECLARE @RC INT

    DECLARE @XContador VARCHAR(16)

    SET @XContador = 'FACTURA'

    SELECT  @Desc = 0

    SET @MtoDesc = 0



    SET @idFact = NEWID()  

    EXEC @RC = spGetNextCounterSTR @XContador, @fno OUTPUT

    

    DECLARE @ncf VARCHAR(19)

    EXEC svCompFiscal @ncf OUTPUT, @Terminal, 'FT', @idCliente,

        @VencimientoNCF OUTPUT, @reorden OUTPUT 



    INSERT  INTO Factura

            (idFactura,

             Factura,

             idCliente,

             Cliente,

             Contacto,

             Direccion,

             Sector,

             Ciudad,

             Telefono,

             idEmpleado,

             Fecha,

             Hora,

             Referencia,

             Cancelado,

             Credito,

             idCompania,

             SubTotal,

             Itbis,

             Descuento,

             Total,

             Nota,

             Usuario,

             Cotizacion,

             idCotizacion,

             idClienteObra,

             PagaItbis,

             idOrdComp,

             OrdComp,

             Fax,

             eMail,

             PorcDesc,

             Condicion,

             FechaCancelado,

             NumRegistro,

             CompFiscal,

             ClienteRNC,

             idMoneda,

             idCondicion,

             Tasa,

             idReferencia

            )

            SELECT  @idFact,

                    @fno,

                    c.idCliente,

                    SUBSTRING(c.Cliente, 1, 50) AS Cliente,

                    c.Contacto,

                    c.Direccion,

                    c.Sector,

                    c.Ciudad,

                    c.Telefono,

                    c.idEmpleado,

                    @Fecha,

                    GETDATE() AS Hora,

                    c.Cotizacion AS Referencia,

                    0 AS Cancelado,

                    1 AS Credito,

                    1 AS idCompania,

                    ISNULL(c.SubTotal, 0.00) AS SubTotal,

                    ISNULL(c.Itbis, 0.00) AS Itbis,

                    0 AS Descuento,

                    c.Total AS Total,

                    c.Nota AS Nota,

                    @Usuario AS Usuario,

                    c.Cotizacion AS Cotizacion,

                    c.idCotizacion AS idCotizacion,

                    c.idClienteObra AS idClienteObra,

                    c.PagaItbis,

                    NULL, --c.idOrdComp as idOrdComp, 

                    NULL, --c.OrdComp as OrdComp, 

                    c.Fax,

                    c.eMail,

                    0.00 AS PorcDesc,

                    c.Condicion,

                    NULL AS FechaCancelado,

                    NULL AS NumRegistro,

                    @ncf,

                    cl.RNC_Cedula,

                    c.idMoneda,

                    c.idCondicion,

                    1 AS Tasa,

                    @idCotizacion

            FROM    Cotizacion c

                    JOIN Cliente cl ON c.idCliente = cl.idCliente

            WHERE   c.idCotizacion = @idCotizacion

			  

    INSERT  INTO FacturaDet

            (idFacturaDet,

             idFactura,

             idProducto,

             Producto,

             Cantidad,

             Precio,

             idUnidad,

             Descuento,

             Itbis,

             LineTotal,

             Linea,

             DevCantidad,

             DevItbis,

             DevDescuento,

             DevLineTotal,

             idCargo,

             dias,

             PrecioDia

            )

            SELECT  d.idCotizacionDet,

                    @idFact,

                    d.idProducto,

                    d.Producto,

                    d.Cantidad AS Cantidad,

                    d.Precio,

                    d.idUnidad,

                    d.Descuento,

                    d.Itbis,

                    d.LineTotal,

                    d.Linea,

                    0 AS DevCantidad,

                    0 AS DevItbis,

                    0 AS DevDescuento,

                    0 AS DevLineTotal,

                    @idCotizacion,

                    1 AS Dias,

                    d.Precio AS PrecioDia

            FROM    CotizacionDet d

            WHERE   idCotizacion = @idCotizacion

                    AND d.Precio > 0.00 



    EXEC Factura2CxC @idFact



    SET @idFactura = @idFact

    RETURN @@ERROR


GO
GO
-- >>> FIN: svGenFacturaNDPresupuesto.sql <<<

-- >>> INICIO: svHistorialCliente.sql <<<
CREATE OR ALTER PROCEDURE svHistorialCliente

 @desde datetime,

 @hasta datetime,

 @idCliente int

as



declare @tbl table (

 idcxc uniqueidentifier,

 Documento varchar(20),

 Cargo varchar(20),

 Fecha datetime,

 Vence datetime,

 Tipo varchar(10),

 Monto decimal(19,2),

 idMoneda int,

 Credito bit,

 Dias int,

 idCliente int 

)



insert into @tbl 

select	c.idcxc,

		c.cxc,

		c.cxc, 

		c.Fecha,

		c.Vencimiento,

		c.idTipoDocumento,

		c.Valor,

		c.idMoneda,

		0 as Credito,

		null as Dias ,

		c.idCliente 

from cxc c 

where c.cancelado = 0

	  and c.fecha between @desde and @hasta	  

	  and c.escredito = 0

	  and (@idCliente = -1 or c.idCliente = @idCliente)



insert into @tbl 

select	c.idcxc,

		c.cxc,

		c2.cxc, 

		cd.Fecha,

		null,

		c.idTipoDocumento,

		cd.Valor,

		c2.idMoneda,

		1 as Credito,

		Dias = datediff(day, c2.Fecha, cd.Fecha),

		c.idCliente 

from cxc c join cxcdet cd on c.idcxc = cd.idcxc

 join cxc c2 on cd.idcxcdebito = c2.idcxc 

where c.cancelado = 0

	  and cd.fecha between @desde and @hasta	  

	  and c.escredito = 1

	  and c2.cancelado = 0

	  and (@idCliente = -1 or c.idCliente = @idCliente)



select	newid() as id,

		t.idcxc,

		t.Documento,

		t.Cargo,

		t.Fecha,

		t.Vence,

		t.Tipo,

		t.Credito, 		

		m.Moneda,

		cl.idCliente, 

		cl.Cliente,

		cl.LimiteCredito,

		cl.idCondicion,

		TotalCargos = (select sum(Monto) from @tbl where idCliente = t.idCliente and idMoneda = t.idMoneda and Credito = 0),

		TotalPagos = (select sum(Monto) from @tbl where idCliente = t.idCliente and idMoneda = t.idMoneda and Credito = 1),

		PromedioDias = (select avg(Dias) from @tbl where idCliente = t.idCliente and idMoneda = t.idMoneda and Credito = 1),

		Monto = case Credito when 1 then 0 else t.Monto end,

		Rango91 = case when t.Credito = 1 and t.Dias >= 91 then t.Monto else 0 end,

		Rango61 = case when t.Credito = 1 and t.Dias between 61 and 90 then t.Monto else 0 end,

		Rango31 = case when t.Credito = 1 and t.Dias between 31 and 60 then t.Monto else 0 end,

		Rango01 = case when t.Credito = 1 and t.Dias between 01 and 30 then t.Monto else 0 end,

		Rango00 = case when t.Credito = 1 and t.Dias <= 0 then t.Monto else 0 end

from @tbl t join cliente cl on t.idCliente = cl.idCliente join moneda m on t.idmoneda = m.idMoneda

order by cl.Cliente, m.Moneda, t.Cargo, t.Credito, t.fecha, t.Documento



return 0 


GO
GO
-- >>> FIN: svHistorialCliente.sql <<<

-- >>> INICIO: svHistoricoCliente.sql <<<
CREATE OR ALTER PROCEDURE svHistoricoCliente 

 @idCliente int, @desde datetime, @hasta datetime

as



declare @datos table 

 ([ID] uniqueidentifier,

  Documento varchar(20),

  Fecha datetime,

  Tipo varchar(16),

  Concepto varchar(200),

  Valor decimal(19,2),

  Tasa decimal(19,2),

  ValorRD as Valor * Tasa

 )

 

 

 insert into @datos

 (id, documento, fecha, tipo, concepto, valor, tasa)

 select idFactura,

		Factura,

		Fecha,

		'FACT/CONT.',

		'FACTURA DE CONTADO',

		Total,

		Tasa

 from factura 

 where cancelado = 0 

	   and idCliente = @idCliente

	   and Fecha between @desde and @hasta

	   and Credito = 0 

	   

		

insert into @datos

 (id, documento, fecha, tipo, concepto, valor, tasa)

 select idcxc,

		cxc,

		Fecha,

		idTipoDocumento,

		Concepto,

		Total,

		Tasa

 from cxc

 where cancelado = 0 

	   and idCliente = @idCliente

	   and Fecha between @desde and @hasta

	   --and Credito = 0 

	   

insert into @datos

 (id, documento, fecha, tipo, concepto, valor, tasa)

 select idRecibo,

		Recibo,

		Fecha,

		'RECIBO ING.',

		Concepto,

		Valor,

		Tasa

 from recibo 

 where cancelado = 0 

	   and idCliente = @idCliente

	   and Fecha between @desde and @hasta

	   and esCXC = 0 

	   --and Credito = 0 

	   

select * from @datos				

order by fecha, tipo, documento



return 


GO
GO
-- >>> FIN: svHistoricoCliente.sql <<<

-- >>> INICIO: svImpFactura.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[svImpFactura]

 @tipo varchar(16),    

 @id varchar(8000)      



as



--set @id='D4C84277-42E0-446C-A627-190DAC4C3B98'

--set @tipo='autogen'



declare @tipovallas table (idcontrato uniqueidentifier,pagadas int,bonificables int,rotativa int,fija int)

declare @Cadenatipovallas varchar(600)





insert into @tipovallas (idcontrato ,pagadas ,bonificables )

select

idcontrato,

case cd.idClase when 'P' then count(cd.idClase)end as Padadas,

case cd.idClase when 'B' then count(cd.idClase)end as Bonificables

from vpContratoDet cd group by idcontrato,idClase



select @Cadenatipovallas =  convert(varchar(3),isnull(sum(pagadas),0))+' Pagadas '+convert(varchar(3),isnull(sum(bonificables),0))+' Bonificables' from @tipovallas group by idcontrato



 --if @tipo = 'autogen' begin     

    declare @keys table (id uniqueidentifier)    

        

    insert into @keys     

    select distinct idContratoCuota    

    from vpContratoCuota    

    where charindex(convert(varchar(50), idContratoCuota), @id) > 0     

     

 declare @idprod varchar(25)    

 select @idprod = convert(varchar(25), valor) from defaults where clave = 'PROD_CUOTA'    

 if @idprod is null set @idprod = 'CUOTA'    

     

 declare @prod varchar(200)    

 select @prod = producto from producto where idproducto = @idprod    

     

    select c.idCliente,    

     ct.idContratoCuota as IdRow,     

     c.Cliente,    

     idProducto = @idprod,    

     1.00 as Cantidad,     

     Producto = 'CUOTA CORESPONDIENTE A '+convert(varchar(12), ct.Fecha, 103),    

     Nota = 'CONTRATO #'+c.contrato+' '+c.contratodesc+' '+@CadenatipoVallas,

     Precio = ct.Valor       

    from @keys k join vpContratoCuota ct on k.id = ct.idContratoCuota     

    join vpContrato c on ct.idContrato = c.idContrato        

    order by ct.Fecha     

 --end    

 return


GO
GO
-- >>> FIN: svImpFactura.sql <<<

-- >>> INICIO: svMarcarFacturaCobrada.sql <<<
CREATE OR ALTER PROCEDURE svMarcarFacturaCobrada

  @idfactura uniqueidentifier

as

 update factura set Cobrada = 1 where idFactura = @idFactura

return


GO
GO
-- >>> FIN: svMarcarFacturaCobrada.sql <<<

-- >>> INICIO: svOrdCompEnt.sql <<<
------------ final de:svGetDescuentoXCantidad ------------



------------ inicio de:svOrdCompEnt ------------





CREATE OR ALTER PROCEDURE svOrdCompEnt(@idOrdComp uniqueidentifier) AS

  Select

   e. *,

   ee.Empleado,

   f.factura,

   p.promov

  from

    OrdCompEnt e

    left join factura f on e.idfactura = f.idfactura

    left join promov p on e.idpromov = p.idpromov

    left join svEmpleado ee on e.idEmpleado = ee.idempleado

  where

    (@idOrdComp is null) OR (e.idOrdComp = @idOrdComp)

  order by

    e.fecha desc, e.hora desc




GO
GO
-- >>> FIN: svOrdCompEnt.sql <<<

-- >>> INICIO: svOrdCompEnt2ProMov.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[svOrdCompEnt2ProMov](@idOrdCompEnt uniqueidentifier) AS



--declare @idOrdCompEnt uniqueidentifier

--set @idOrdCompEnt = '3C6AD17D-4C48-4EFA-9F99-C1B4975A04D6'



Declare 

  @TipoMov int,

  @Secuencia Varchar(16),

  @RecCount int,

  @Error int,

  @CCVentas uniqueidentifier,

  @CCCVenta varchar(16)





Set @CCCVenta = convert(varchar(16),(Select Valor from Defaults where clave = 'CENTROCOSTOVENTA'))

Set @CCVentas = (Select top 1 idCentroCosto from centrocosto where centrocosto = @CCCVenta)



Set @Error = 0

Set @TipoMov = null



begin tran

  

Set @TipoMov = convert(varchar,(Select Valor from Defaults where clave = 'Def_Tipo_MovInv'))



select @Secuencia = ProMov

from promov

where idProMov = @idOrdCompEnt



if @Secuencia is null

  Exec spGetNextCounterSTR 'MovimientoAlm',@OutPut = @Secuencia OutPut

else begin

  delete from promovdet

  where idPromov = @idOrdCompEnt



  delete from promov

  where idProMov = @idOrdCompEnt

end



Set @Error = @@Error

if (@Error <> 0) or (@TipoMov is null)  begin

  rollback tran

--  Return -1

end



--if not exists (select top 1 1 from promov where idpromov = @idFactura)

--begin



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

  idAlmacenDestino)

Select 

  e.idOrdCompEnt, 

  @TipoMov, 

  @Secuencia, 

  e.Fecha, 

  1, 

  NULL, 

  e.OrdCompEnt, 

  e.Usuario, 

  Null, 

  Null, 

  e.Usuario, 

  Null, 

  e.idAlmacen,

  'Salida Generada por Despacho Alm.',

  Convert(varchar(30), oc.idCliente),

  Null,

  Null,

  0,

  Null,

  Null,

  Null,

  e.idOrdCompEnt,

  Null

From 

  OrdCompEnt e

  join OrdComp oc on e.idOrdComp = oc.idOrdComp  

Where

  idOrdCompEnt = @idOrdCompEnt 

  and e.Cancelado = 0



Set @Error = @@Error



if (@Error <> 0)   begin

  rollback tran

--  Return -2

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

idPartida)

Select

  fd.idOrdCompEntDet,

  fd.idOrdCompEnt,

  substring(fd.Producto,1,60),

  fd.idProducto,

  fd.Producto,

  fd.Despachado,

  dbo.InvProdCosto(fd.idProducto, f.Fecha, f.idAlmacen) * fd.Despachado,

  od.idUnidad,

  0,

  Null,

  Null,

  fd.Linea,

  Null,

  @CCCVenta,

  @CCVentas, --CentroCosto

  Null  -- Partida

from

  OrdCompEntDet fd

  join OrdCompEnt f on fd.idOrdCompEnt = f.idOrdCompEnt

  join OrdCompDet od on fd.idOrdCompDet = od.idOrdCompDet

Where

  fd.idOrdCompEnt = @idOrdCompEnt

  and f.Cancelado = 0



--end



Set @Error = @@Error



if (@Error <> 0)  begin

  rollback tran

--  Return -3

end





Commit Tran






GO
GO
-- >>> FIN: svOrdCompEnt2ProMov.sql <<<

-- >>> INICIO: svOrdCompEntDet.sql <<<
CREATE OR ALTER PROCEDURE svOrdCompEntDet(@idOrdCompEnt uniqueidentifier) AS

  Select  

    *

  from

    OrdCompEntDet

  where

    idOrdCompEnt = @idOrdCompEnt


GO
GO
-- >>> FIN: svOrdCompEntDet.sql <<<

-- >>> INICIO: svOrdCompEntList.sql <<<
------------ final de:svOrdCompEnt ------------



------------ inicio de:svOrdCompEntList ------------





CREATE OR ALTER PROCEDURE svOrdCompEntList(@idOrdComp uniqueidentifier) AS

  Select

   e. *,

   o.idCliente,

   o.Cliente,

   ee.Empleado,

   f.factura,

   p.promov

  from

    OrdCompEnt e

    inner join OrdComp o on e.idOrdComp = o.idOrdComp

    inner join Cliente c on c.idCliente = o.idCliente 

    left  join factura f on e.idfactura = f.idfactura

    left  join promov p on e.idpromov = p.idpromov

    left  join svEmpleado ee on e.idEmpleado = ee.idempleado

  where

    (@idOrdComp is null) OR (e.idOrdComp = @idOrdComp)

  order by

    e.fecha desc, e.hora desc




GO
GO
-- >>> FIN: svOrdCompEntList.sql <<<

-- >>> INICIO: svOrdCompPendiente.sql <<<
CREATE OR ALTER PROCEDURE svOrdCompPendiente(@idOrdCompStatus varchar(16)) AS



select 

  c.idOrdComp, 

  c.OrdComp, 

  c.Fecha, 

  c.Cliente,

  c.idCliente,

  c.Sector, 

  c.Ciudad, 

  c.Telefono, 

  c.Usuario, 

  c.Observacion,

  c.idCondicion,

  s.OrdCompStatus,

  s.Facturable

from 

  ordcomp c

  INNER JOIN OrdCompStatus s ON s.idOrdCompStatus = c.idOrdCompStatus

where 

  c.idordcompstatus = @idOrdCompStatus

order by

  fecha desc


GO
GO
-- >>> FIN: svOrdCompPendiente.sql <<<

-- >>> INICIO: svOrdCompSetStatus.sql <<<
CREATE OR ALTER PROCEDURE svOrdCompSetStatus(@idOrdCompEnt uniqueidentifier, @status varchar(16)) as

if @Status = 'ENVIADO' 

begin

  Update 

    OrdCompEnt

  Set 

    Status = @Status,

    FechaEnviado = getdate()

  where

    idOrdCompEnt = @idOrdCompEnt

end else begin

  Update 

    OrdCompEnt

  Set 

    Status = @Status,

    fechacompletado = getdate()

  where

    idOrdCompEnt = @idOrdCompEnt

end
GO
GO
-- >>> FIN: svOrdCompSetStatus.sql <<<

-- >>> INICIO: svProductoBenefVenta.sql <<<
CREATE OR ALTER PROCEDURE svProductoBenefVenta(@Desde datetime, @Hasta datetime) as    

    

Select     

  f.idFactura,    

  f.Factura,    

  f.Fecha,    

  f.idCliente,    

  f.Cliente,    

  (Case When f.Credito = 1 then 'Credito' else 'Contado' end) Credito,    

  fd.idFacturadet,    

  fd.idProducto,    

  fd.Producto,    

  fd.Cantidad,    

  Co.Precio,    

  co.Costo,    

  co.Precio - Co.Costo as Beneficio,    

  co.Precio * fd.Cantidad as ValorTotal,    

  co.Costo  * fd.Cantidad as CostoTotal,    

  (Co.Precio*fd.Cantidad) - (Co.Costo*fd.Cantidad) as BeneficioTotal,    

  (Case when co.costo <> 0 then (((Co.Precio*fd.Cantidad) - (Co.Costo*fd.Cantidad)) / (Co.Precio*fd.Cantidad))*100 else 100.00 end) as Porcentaje,    

  G.Grupo as ProdGrupo,    

  L.Linea,    

  e.Empleado,    

  c.idZona,    

  c.Grupo,    

  cg.ClienteGrupo as Categoria,  

  (Select Top 1 CostoBase From ProductoCostoBase Where IdMoneda = f.IdMoneda And IdProducto = p.IdProducto) As CostoBase,  

  (Select Top 1 (Costo / Cantidad) From ProMov m Inner Join ProMovDet d On (m.IdProMov = d.IdProMov) Where d.IdProducto = fd.IdProducto And m.Salida = 0 And m.Posteado = 1 Order By Fecha Desc) As UltCosto  

  Into #Beneficio  

from    

  Factura f    

  join Facturadet fd on f.idfactura = fd.idfactura    

  join     

    (Select fd.idfacturadet, (((fd.LineTotal - fd.Descuento)*f.tasa) / fd.Cantidad) as Precio, dbo.invProdCosto(fd.idProducto, f.Fecha, f.idAlmacen) as Costo  

     from  Factura f join Facturadet fd on f.idfactura = fd.idfactura) Co     

  on fd.idFacturadet = co.idFacturadet    

  join Producto p on p.idProducto = fd.idproducto    

  join grupo g on p.idgrupo = g.idgrupo    

  join linea l on g.idlinea = l.idlinea    

  join svEmpleado e on f.idEmpleado = e.idempleado    

  join Cliente c on f.idCliente = c.idCliente    

  left join ClienteGrupo cg on c.idClienteGrupo = cg.idClienteGrupo    

where    

  f.cancelado = 0    

  and f.fecha between @Desde and @Hasta    

order by    

  f.fecha, f.factura    

  

SELECT  

  *,  

  (CostoBase - UltCosto)As DifMontUltCosto,  

  (CostoBase - Costo) As DifMontCostoProm,  

  Case

    When CostoBase = 0 Then

      1

    Else

      ((CostoBase - UltCosto) / CostoBase) 

  End As DifPorcUltCosto,

  Case

    When CostoBase = 0 Then

      1

    Else

      ((CostoBase - Costo) / CostoBase)

  End As DifPorcCostoProm

FROM  

  #Beneficio  

      


GO
GO
-- >>> FIN: svProductoBenefVenta.sql <<<

-- >>> INICIO: svRecodificarFacturas.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[svRecodificarFacturas](@Desde datetime, @Hasta datetime) as



DECLARE 

  @idfactura uniqueidentifier, @factura varchar(30)



DECLARE facturas CURSOR FOR 

select idfactura, Factura 

from

  factura f  

where

  f.fecha between @Desde and @Hasta  

order by

  factura



OPEN facturas



FETCH NEXT FROM facturas 

INTO @idfactura, @factura



WHILE @@FETCH_STATUS = 0

BEGIN

	print 'Procesando factura #' + @factura + '...'

	

    exec svGenCodifFactura @idFactura



   -- Get the next author.

   FETCH NEXT FROM facturas

   INTO @idfactura, @factura

END



CLOSE facturas

DEALLOCATE facturas




GO
GO
-- >>> FIN: svRecodificarFacturas.sql <<<

-- >>> INICIO: svRenumerarFactura.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[svRenumerarFactura]

    @idfact UNIQUEIDENTIFIER,

    @ultimo VARCHAR(16) OUTPUT,

    @ncf VARCHAR(19) OUTPUT

AS

    DECLARE @host VARCHAR(200)  

  

    DECLARE @idCliente INT,

        @actual VARCHAR(16),

        @ncfactual VARCHAR(19),

        @VencimientoNCF DATETIME,

        @reorden BIT

      

    SELECT  @idCliente = idCliente,

            @actual = Factura,

            @ncfactual = CompFiscal

    FROM    Factura

    WHERE   idFactura = @idfact  

  

    IF EXISTS ( SELECT  1

                FROM    Factura

                WHERE   Factura = @actual

                        AND idFactura <> @idfact )

        BEGIN  

            EXEC spGetNextCounterSTR 'FACTURA', @ultimo OUTPUT   

       

            SELECT  @host = HOST_NAME()  

            EXEC svCompFiscal @ncf OUTPUT, @host, 'FT', @idCliente,

                @VencimientoNCF OUTPUT, @reorden OUTPUT

      

            UPDATE  Factura

            SET     Factura = @ultimo,

                    CompFiscal = @ncf

            WHERE   idFactura = @idfact        

        END  

    ELSE

        BEGIN  

            SET @ultimo = @actual  

            SET @ncf = @ncfactual   

        END   

  

    RETURN @@ERROR   


GO
GO
-- >>> FIN: svRenumerarFactura.sql <<<

-- >>> INICIO: svRSClienteContacto.sql <<<
------------ inicio de:svRSClienteContacto ------------  

  

CREATE OR ALTER PROCEDURE svRSClienteContacto  

 @idCliente int  

as  

 select * from svclienteContacto  

 where idCliente = @idCliente  

 order by Nombre  

return 0   

  


GO
GO
-- >>> FIN: svRSClienteContacto.sql <<<

-- >>> INICIO: svrsClientePag.sql <<<
CREATE OR ALTER PROCEDURE svrsClientePag(@idCliente int) as



  Select 

    *

  From

    Cliente c

    left join ClienteData cd on c.idCliente = cd.idClienteData

  where

    c.idCliente = @idCliente




GO
GO
-- >>> FIN: svrsClientePag.sql <<<

-- >>> INICIO: svRsClienteTipoCuenta.sql <<<
CREATE OR ALTER PROCEDURE svRsClienteTipoCuenta(@IdClienteTipo Int)

AS

SELECT

  *

FROM

  ClienteTipoCuenta

WHERE

  IdClienteTipo = @IdClienteTipo




GO
GO
-- >>> FIN: svRsClienteTipoCuenta.sql <<<

-- >>> INICIO: svRSCuentaCliente.sql <<<
CREATE OR ALTER PROCEDURE svRSCuentaCliente

 @idCliente int,

 @idMoneda int 

as

 select ctc.idCuentaCredito,

		ctc.idCuentaContado

 from cliente c join ClienteTipoCuenta ctc

  on c.idClienteTipo = ctc.idClienteTipo and ctc.idMoneda = @idMoneda

 where c.idCliente = @idCliente

return 0 

 


GO
GO
-- >>> FIN: svRSCuentaCliente.sql <<<

-- >>> INICIO: svrsFacturaCobro.sql <<<
CREATE OR ALTER PROCEDURE svrsFacturaCobro(@idFactura uniqueidentifier) AS



Select 

  *   

from 

  FacturaCobro

where 

  idFactura = @idFactura






GO
GO
-- >>> FIN: svrsFacturaCobro.sql <<<

-- >>> INICIO: svrsFacturaPag.sql <<<
CREATE OR ALTER PROCEDURE svrsFacturaPag(@idFactura uniqueidentifier) AS



  Select 

    * 

  From 

    FacturaPag 

  where 

    idfactura = @idFactura

  Order by

    Fecha








GO
GO
-- >>> FIN: svrsFacturaPag.sql <<<

-- >>> INICIO: svSoporteEntradaContVentas.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[svSoporteEntradaContVentas]

    @Desde DATETIME ,

    @Hasta DATETIME

AS

    SELECT  c.idCodificacion AS ID ,

            f.Factura ,

            f.Fecha ,

            f.Cliente ,

            c.idCuenta ,

            ISNULL(cat.Descripcion, '*** ERROR DE CUENTA ***') AS Descripcion ,

            Debito = CASE WHEN c.DebCre = 1 THEN Valor

                          ELSE 0.00

                     END ,

            Credito = CASE WHEN c.DebCre = 2 THEN Valor

                           ELSE 0.00

                      END

    FROM    factura f

            LEFT JOIN cgCodificacion c ON f.idFactura = c.GuidDocumento

            LEFT JOIN cgCatalogoCuentas cat ON c.idCuenta = cat.idCuenta

    WHERE   f.fecha BETWEEN @desde AND @hasta

            AND f.Cancelado = 0

    ORDER BY f.Fecha ,

            f.Factura ,

            8 DESC ,

            --c.Credito ,

            c.idCuenta

  



    RETURN   


GO
GO
-- >>> FIN: svSoporteEntradaContVentas.sql <<<

-- >>> INICIO: svSubClientesCliente.sql <<<
CREATE OR ALTER PROCEDURE svSubClientesCliente

 @idClienteParent int 

as

 select idCliente, Cliente

 from Cliente

 where idClienteParent = @idClienteParent

 order by Cliente

return


GO
GO
-- >>> FIN: svSubClientesCliente.sql <<<

-- >>> INICIO: svToDGINCFVentas.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[svToDGINCFVentas]

    (

     @Desde DATETIME,

     @Hasta DATETIME

    )

AS

    DECLARE @Registro INT,

        @TotalFact DECIMAL(19, 2),

        @TotalNCR DECIMAL(19, 2),

        @RNC VARCHAR(11),

        @Regular BIT  

  

    DECLARE @CtaItbis VARCHAR(16),

        @CtaItbisPrima VARCHAR(16)  

  

    SELECT  @CtaItbis = CONVERT(VARCHAR(20), (SELECT    Valor

                                              FROM      Defaults

                                              WHERE     Clave = 'CuentaITBIS'

                                             )),

            @CtaItbisPrima = (SELECT    idCuentaPrima

                              FROM      cgCuentaPrima

                              WHERE     idCuenta = @CtaItbis

                             ),

            @Regular = ISNULL((SELECT   CASE WHEN CONVERT(BIT, Valor) = 1

                                             THEN 1

                                             ELSE 0

                                        END

                               FROM     Defaults

                               WHERE    Clave = 'INICIO_AÑO'

                              ), 1)  

  

    SELECT  ft.Fecha,

            dbo.rpad(REPLACE(ISNULL(ft.ClienteRNC, ''), '-', ''), ' ', 11)

            + CASE DATALENGTH(REPLACE(ISNULL(ft.ClienteRNC, ''), '-', ''))

                WHEN 9 THEN '1'

                WHEN 11 THEN '2'

                ELSE CASE WHEN DATALENGTH(ft.CompFiscal) > 10

                               AND SUBSTRING(ft.CompFiscal, 10, 2) = '01'

                          THEN '1'

                          ELSE '3'

                     END

              END + CASE WHEN @Regular = 0 THEN dbo.lpad(Factura, ' ', 25)

                         ELSE ''

                    END + ft.CompFiscal + REPLICATE(' ', 19)

            + CONVERT(VARCHAR(8), Fecha, 112)

            + dbo.lpad(CONVERT(VARCHAR(12), CONVERT(DECIMAL(12, 2), ROUND(ft.Itbis

                                                              * ft.Tasa, 2))),

                       '0', 12)

            + dbo.lpad(CONVERT(VARCHAR(12), CONVERT(DECIMAL(12, 2), ROUND(ft.Tasa

                                                              * (ft.SubTotal

                                                              - ft.Descuento),

                                                              2))), '0', 12) AS Cadena

    INTO    #Tmp

    FROM    Factura ft

    WHERE   ft.Fecha BETWEEN @Desde AND @Hasta

            AND Cancelado = 0  

--************** NOTAS DE CREDITO********************

    UNION ALL

    SELECT  cc.Fecha,

            dbo.rpad(REPLACE(ISNULL(ft.ClienteRNC, ''), '-', ''), ' ', 11)

            + CASE DATALENGTH(REPLACE(ISNULL(ft.ClienteRNC, ''), '-', ''))

                WHEN 9 THEN '1'

                WHEN 11 THEN '2'

                ELSE CASE WHEN DATALENGTH(ft.CompFiscal) > 10

                               AND SUBSTRING(ft.CompFiscal, 10, 2) = '01'

                          THEN '1'

                          ELSE '3'

                     END

              END + CASE WHEN @Regular = 0 THEN dbo.lpad(Factura, ' ', 25)

                         ELSE ''

                    END + cm.CompFiscal + cc.CompFiscal

            + CONVERT(VARCHAR(8), cm.Fecha, 112)

            + dbo.lpad(CONVERT(VARCHAR(12), ISNULL((SELECT  SUM(Valor)

                                                    FROM    cgCodificacion

                                                    WHERE   GUIDDocumento = cm.idCxc

                                                            AND DebCre = 1

                                                            AND (idCuenta = @CtaItbis

                                                              OR idCuenta = @CtaItbisPrima

                                                              )

                                                   ), 0.00)), '0', 12)

            + dbo.lpad(CONVERT(VARCHAR(12), CONVERT(DECIMAL(12, 2), ((cd.TotalAplicado

                                                              * cd.Tasa)

                                                              - ISNULL((SELECT

                                                              SUM(Valor)

                                                              FROM

                                                              cgCodificacion

                                                              WHERE

                                                              GUIDDocumento = cm.idCxc

                                                              AND DebCre = 1

                                                              AND (idCuenta = @CtaItbis

                                                              OR idCuenta = @CtaItbisPrima

                                                              )

                                                              ), 0.00)))), '0',

                       12)

    FROM    CxcDet cd

            INNER JOIN Cxc cc ON (cd.idCxcDebito = cc.idCxc)

            INNER JOIN Cxc cm ON (cm.idCxc = cd.idCxc)

            INNER JOIN Factura ft ON (ft.idFactura = cc.idCxc)

    WHERE   cm.Fecha BETWEEN @Desde AND @Hasta

            AND cm.Cancelado = 0

            AND cm.idTipoDocumento = 'NC'

            AND ((cm.CompFiscal IS NOT NULL)

                 AND (cm.CompFiscal <> '')

                )

            AND ((cc.CompFiscal IS NOT NULL)

                 AND (cc.CompFiscal <> '')

                )

    ORDER BY 1 



    SELECT  @Registro = COUNT(*)

    FROM    #Tmp  

  

    SELECT  @TotalFact = SUM((SubTotal - Descuento) * Tasa)

    FROM    Factura ft

    WHERE   ft.Fecha BETWEEN @Desde AND @Hasta

            AND Cancelado = 0  

  

    SELECT  @TotalNCR = SUM(cd.TotalAplicado * cd.Tasa) --cm.total * cm.tasa

            - ISNULL(SUM(x.Valor), 0)

    FROM    CxcDet cd

            INNER JOIN Cxc cc ON (cd.idCxcDebito = cc.idCxc)

            INNER JOIN Cxc cm ON (cm.idCxc = cd.idCxc)

            INNER JOIN Factura ft ON (ft.idFactura = cc.idCxc)

            LEFT JOIN (SELECT   GUIDDocumento,

                                Valor

                       FROM     cgCodificacion

                       WHERE    DebCre = 1

                                AND (idCuenta = @CtaItbis

                                     OR idCuenta = @CtaItbisPrima

                                    )

                      ) x ON x.GUIDDocumento = cm.idCxc

    WHERE   cm.Fecha BETWEEN @Desde AND @Hasta

            AND cm.Cancelado = 0

            AND cm.idTipoDocumento = 'NC'

            AND ((cm.CompFiscal IS NOT NULL)

                 AND (cm.CompFiscal <> '')

                )

            AND ((cc.CompFiscal IS NOT NULL)

                 AND (cc.CompFiscal <> '')

                )  

  

    SELECT  @TotalFact = ISNULL(@TotalFact, 0.00),

            @TotalNCR = ISNULL(@TotalNCR, 0.00)  

  

    SET @RNC = REPLACE((SELECT TOP 1

                                RNC

                        FROM    Configuracion

                       ), '-', '')  

  

    SELECT  CASE WHEN @Regular = 1 THEN '607'

                 ELSE '611'

            END + REPLACE(ISNULL(@RNC, ''), '-', '') + REPLICATE(' ',

                                                              11

                                                              - DATALENGTH(REPLACE(ISNULL(@RNC,

                                                              ''), '-', '')))

            + CONVERT(VARCHAR(4), YEAR(@Desde)) + REPLICATE('0',

                                                            2

                                                            - DATALENGTH(CONVERT(VARCHAR(2), MONTH(@Desde))))

            + CONVERT(VARCHAR(2), MONTH(@Desde)) + REPLICATE('0',

                                                             12

                                                             - DATALENGTH(CONVERT(VARCHAR(12), @Registro)))

            + CONVERT(VARCHAR(12), @Registro) + REPLICATE('0',

                                                          16

                                                          - DATALENGTH(CONVERT(VARCHAR(16), SUM(@TotalFact

                                                              - @TotalNCR))))

            + CONVERT(VARCHAR(16), SUM(@TotalFact - @TotalNCR)) AS Cadena

    UNION ALL

    SELECT  Cadena

    FROM    #Tmp




GO
GO
-- >>> FIN: svToDGINCFVentas.sql <<<

-- >>> INICIO: svVentaLineaGrupoProductoAnual.sql <<<
CREATE OR ALTER PROCEDURE svVentaLineaGrupoProductoAnual(@Desde datetime, @Hasta Datetime) as



SELECT     

  TOP 100 PERCENT 

  Newid() as id,

  l.linea,

  pg.Grupo,

  p.idProducto,

  p.Producto,

  e.idEmpleado as EmpleadoID,

  e.Empleado, 

  c.Sector, 

  c.Ciudad, 

  c.Grupo as ClintGrupo, 

  z.Zona, 

  g.ClienteGrupo as  Categoria, 

  SUM(CASE WHEN Month(f.fecha) = 1  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Enero,

  SUM(CASE WHEN Month(f.fecha) = 2  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Febrero,

  SUM(CASE WHEN Month(f.fecha) = 3  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Marzo,

  SUM(CASE WHEN Month(f.fecha) = 4  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Abril,

  SUM(CASE WHEN Month(f.fecha) = 5  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Mayo,

  SUM(CASE WHEN Month(f.fecha) = 6  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Junio,

  SUM(CASE WHEN Month(f.fecha) = 7  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Julio,

  SUM(CASE WHEN Month(f.fecha) = 8  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Agosto,

  SUM(CASE WHEN Month(f.fecha) = 9  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Septiembre,

  SUM(CASE WHEN Month(f.fecha) = 10 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Octubre,

  SUM(CASE WHEN Month(f.fecha) = 11 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Noviembre,

  SUM(CASE WHEN Month(f.fecha) = 12 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Diciembre,

  SUM(((fd.LineTotal-fd.Descuento)*f.tasa) ) AS TotalGral

FROM         

  dbo.svEmpleado e 

  INNER JOIN dbo.Factura f ON e.idEmpleado = f.idEmpleado 

  INNER JOIN dbo.FacturaDet fd ON fd.idFactura = f.idFactura

  INNER JOIN dbo.Producto p ON p.idProducto = fd.idProducto

  INNER JOIN dbo.Grupo pg ON p.idGrupo = pg.idGrupo

  INNER JOIN dbo.Linea l ON pg.idLinea = l.idLinea

  INNER JOIN dbo.Cliente c ON f.idCliente = c.idCliente 

  LEFT JOIN dbo.Zona z ON c.idZona = z.idZona

  LEFT JOIN dbo.ClienteGrupo g ON c.idClienteGrupo = g.idClienteGrupo

WHERE     

  (f.Cancelado = 0)

  and f.fecha between @Desde and @Hasta

GROUP BY 

  l.linea,

  pg.Grupo,

  p.idProducto,

  p.Producto,

  e.idEmpleado,

  e.Empleado, 

  c.Sector, 

  c.Ciudad, 

  c.Grupo, 

  z.Zona, 

  g.ClienteGrupo

ORDER BY 

  l.linea,

  pg.Grupo,

  p.idProducto




GO
GO
-- >>> FIN: svVentaLineaGrupoProductoAnual.sql <<<

-- >>> INICIO: svVentaporClienteAnual.sql <<<
CREATE OR ALTER PROCEDURE svVentaporClienteAnual(@Desde datetime, @Hasta Datetime) as



SELECT     

  TOP 100 PERCENT 

  newid() as ID,

  c.idCliente, 

  c.Cliente, 

  c.Sector, 

  c.Ciudad, 

  c.Grupo, 

  z.Zona, 

  g.ClienteGrupo as Categoria, 

  (Select Max(ff.fecha) 

   from Factura ff 

   where ff.cancelado = 0 and idCliente = c.idCliente) as UltimaFact,

  SUM(CASE WHEN Month(f.fecha) = 1  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Enero,

  SUM(CASE WHEN Month(f.fecha) = 2  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Febrero,

  SUM(CASE WHEN Month(f.fecha) = 3  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Marzo,

  SUM(CASE WHEN Month(f.fecha) = 4  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Abril,

  SUM(CASE WHEN Month(f.fecha) = 5  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Mayo,

  SUM(CASE WHEN Month(f.fecha) = 6  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Junio,

  SUM(CASE WHEN Month(f.fecha) = 7  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Julio,

  SUM(CASE WHEN Month(f.fecha) = 8  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Agosto,

  SUM(CASE WHEN Month(f.fecha) = 9  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Septiembre,

  SUM(CASE WHEN Month(f.fecha) = 10 THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Octubre,

  SUM(CASE WHEN Month(f.fecha) = 11 THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Noviembre,

  SUM(CASE WHEN Month(f.fecha) = 12 THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Diciembre,

  SUM((f.SubTotal-f.Descuento)* f.tasa) AS TotalGral

FROM         

  dbo.Cliente c 

  INNER JOIN dbo.Factura f ON f.idCliente = c.idCliente 

  LEFT JOIN dbo.Zona z ON c.idZona = z.idZona

  LEFT JOIN dbo.ClienteGrupo g ON c.idClienteGrupo = g.idClienteGrupo

  join ClienteStatus cs on c.idClienteStatus = cs.idClienteStatus

where  

  cs.activo = 1

  and (f.Cancelado = 0)

  and f.fecha between @Desde and @Hasta

GROUP BY 

  c.idCliente, 

  c.Cliente, 

  c.Sector, 

  c.Ciudad, 

  z.Zona, 

  c.Grupo, 

  g.ClienteGrupo

ORDER BY

  g.ClienteGrupo,

  c.Cliente


GO
GO
-- >>> FIN: svVentaporClienteAnual.sql <<<

-- >>> INICIO: svVentaporClienteAnualporVendedor.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[svVentaporClienteAnualporVendedor](@Desde datetime, @Hasta Datetime) as



SELECT     

  TOP 100 PERCENT 

 -- newid() as key,

  e.empleado as Vendedor,

  c.idCliente, 

  c.Cliente, 

  c.Sector, 

  c.Ciudad, 

  c.Grupo, 

  z.Zona, 

  g.ClienteGrupo as Categoria, 

  (Select Max(ff.fecha) 

   from Factura ff 

   where ff.cancelado = 0 and idCliente = c.idCliente) as UltimaFact,

  SUM(CASE WHEN Month(f.fecha) = 1  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Enero,

  SUM(CASE WHEN Month(f.fecha) = 2  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Febrero,

  SUM(CASE WHEN Month(f.fecha) = 3  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Marzo,

  SUM(CASE WHEN Month(f.fecha) = 4  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Abril,

  SUM(CASE WHEN Month(f.fecha) = 5  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Mayo,

  SUM(CASE WHEN Month(f.fecha) = 6  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Junio,

  SUM(CASE WHEN Month(f.fecha) = 7  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Julio,

  SUM(CASE WHEN Month(f.fecha) = 8  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Agosto,

  SUM(CASE WHEN Month(f.fecha) = 9  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Septiembre,

  SUM(CASE WHEN Month(f.fecha) = 10 THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Octubre,

  SUM(CASE WHEN Month(f.fecha) = 11 THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Noviembre,

  SUM(CASE WHEN Month(f.fecha) = 12 THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Diciembre,

  SUM((f.SubTotal-f.Descuento)* f.tasa) AS TotalGral

FROM         

  dbo.Cliente c 

  inner join dbo.svempleado e on c.idempleado = e.idempleado

  INNER JOIN dbo.Factura f ON f.idCliente = c.idCliente 

  LEFT JOIN dbo.Zona z ON c.idZona = z.idZona

  LEFT JOIN dbo.ClienteGrupo g ON c.idClienteGrupo = g.idClienteGrupo

  join ClienteStatus cs on c.idClienteStatus = cs.idClienteStatus

where  

  cs.activo = 1

  and (f.Cancelado = 0)

  and f.fecha between @Desde and @Hasta

GROUP BY 

  e.empleado,

  c.idCliente, 

  c.Cliente, 

  c.Sector, 

  c.Ciudad, 

  z.Zona, 

  c.Grupo, 

  g.ClienteGrupo

ORDER BY

  e.empleado,

  g.ClienteGrupo,

  c.Cliente


GO
GO
-- >>> FIN: svVentaporClienteAnualporVendedor.sql <<<

-- >>> INICIO: svVentaporClienteAnualporVendedorDet.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[svVentaporClienteAnualporVendedorDet](@Desde datetime, @Hasta Datetime) as



SELECT     

  TOP 100 PERCENT 

 -- newid() as key,

  e.empleado as Vendedor,

  c.idCliente, 

  c.Cliente, 

  c.Sector, 

  c.Ciudad, 

  c.Grupo, 

  z.Zona, 

  g.ClienteGrupo as Categoria, 

  fd.idproducto,

  fd.producto,

  (Select Max(ff.fecha) 

   from Factura ff 

   where ff.cancelado = 0 and idCliente = c.idCliente) as UltimaFact,

  SUM(CASE WHEN Month(f.fecha) = 1  THEN ((fd.cantidad)) ELSE 0.00 END) AS Enero,

  SUM(CASE WHEN Month(f.fecha) = 2  THEN ((fd.cantidad)) ELSE 0.00 END) AS Febrero,

  SUM(CASE WHEN Month(f.fecha) = 3  THEN ((fd.cantidad)) ELSE 0.00 END) AS Marzo,

  SUM(CASE WHEN Month(f.fecha) = 4  THEN ((fd.cantidad)) ELSE 0.00 END) AS Abril,

  SUM(CASE WHEN Month(f.fecha) = 5  THEN ((fd.cantidad)) ELSE 0.00 END) AS Mayo,

  SUM(CASE WHEN Month(f.fecha) = 6  THEN ((fd.cantidad)) ELSE 0.00 END) AS Junio,

  SUM(CASE WHEN Month(f.fecha) = 7  THEN ((fd.cantidad)) ELSE 0.00 END) AS Julio,

  SUM(CASE WHEN Month(f.fecha) = 8  THEN ((fd.cantidad)) ELSE 0.00 END) AS Agosto,

  SUM(CASE WHEN Month(f.fecha) = 9  THEN ((fd.cantidad)) ELSE 0.00 END) AS Septiembre,

  SUM(CASE WHEN Month(f.fecha) = 10 THEN ((fd.cantidad)) ELSE 0.00 END) AS Octubre,

  SUM(CASE WHEN Month(f.fecha) = 11 THEN ((fd.cantidad)) ELSE 0.00 END) AS Noviembre,

  SUM(CASE WHEN Month(f.fecha) = 12 THEN ((fd.cantidad)) ELSE 0.00 END) AS Diciembre,

  SUM((fd.cantidad)) AS TotalGral

FROM         

  dbo.Cliente c 

  inner join dbo.svempleado e on c.idempleado = e.idempleado

  INNER JOIN dbo.Factura f ON f.idCliente = c.idCliente 

  INNER JOIN dbo.facturadet fd on f.idfactura = fd.idfactura

  LEFT JOIN dbo.Zona z ON c.idZona = z.idZona

  LEFT JOIN dbo.ClienteGrupo g ON c.idClienteGrupo = g.idClienteGrupo

  join ClienteStatus cs on c.idClienteStatus = cs.idClienteStatus

where  

  cs.activo = 1

  and (f.Cancelado = 0)

  and f.fecha between @Desde and @Hasta

GROUP BY 

  e.empleado,

  c.idCliente, 

  c.Cliente, 

  c.Sector, 

  c.Ciudad, 

  z.Zona, 

  c.Grupo, 

  g.ClienteGrupo,

  fd.idproducto,

  fd.producto

ORDER BY

  e.empleado,

  g.ClienteGrupo,

  c.Cliente,

  fd.idproducto,

  fd.producto


GO
GO
-- >>> FIN: svVentaporClienteAnualporVendedorDet.sql <<<

-- >>> INICIO: svVentaporVendedorAnual.sql <<<
CREATE OR ALTER PROCEDURE svVentaporVendedorAnual(@Desde datetime, @Hasta Datetime) as



SELECT     

  TOP 100 PERCENT 

  newid() as ID,

  e.idEmpleado as  EmpleadoID, 

  e.Empleado, 

  c.Sector, 

  c.Ciudad, 

  c.Grupo, 

  z.Zona, 

  g.ClienteGrupo as  Categoria, 

  SUM(CASE WHEN Month(f.fecha) = 1  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Enero,

  SUM(CASE WHEN Month(f.fecha) = 2  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Febrero,

  SUM(CASE WHEN Month(f.fecha) = 3  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Marzo,

  SUM(CASE WHEN Month(f.fecha) = 4  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Abril,

  SUM(CASE WHEN Month(f.fecha) = 5  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Mayo,

  SUM(CASE WHEN Month(f.fecha) = 6  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Junio,

  SUM(CASE WHEN Month(f.fecha) = 7  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Julio,

  SUM(CASE WHEN Month(f.fecha) = 8  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Agosto,

  SUM(CASE WHEN Month(f.fecha) = 9  THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Septiembre,

  SUM(CASE WHEN Month(f.fecha) = 10 THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Octubre,

  SUM(CASE WHEN Month(f.fecha) = 11 THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Noviembre,

  SUM(CASE WHEN Month(f.fecha) = 12 THEN ((f.SubTotal-f.Descuento)* f.tasa) ELSE 0.00 END) AS Diciembre,

  SUM((f.SubTotal-f.Descuento)* f.tasa) AS TotalGral

FROM         

  dbo.svEmpleado e 

  INNER JOIN dbo.Factura f ON e.idEmpleado = f.idEmpleado 

  INNER JOIN dbo.Cliente c ON f.idCliente = c.idCliente 

  LEFT JOIN dbo.Zona z ON c.idZona = z.idZona

  LEFT JOIN dbo.ClienteGrupo g ON c.idClienteGrupo = g.idClienteGrupo

WHERE

  (f.Cancelado = 0)

  and f.fecha between @Desde and @Hasta

GROUP BY 

  e.idEmpleado, 

  e.Empleado, 

  c.Sector, 

  c.Ciudad, 

  z.Zona, 

  c.Grupo, 

  g.ClienteGrupo

ORDER BY 

  e.idEmpleado, 

  e.Empleado, 

  c.Sector, 

  c.Ciudad, 

  z.Zona, 

  c.Grupo, 

  g.ClienteGrupo




GO
GO
-- >>> FIN: svVentaporVendedorAnual.sql <<<

-- >>> INICIO: svVentaProductoAnual.sql <<<
CREATE OR ALTER PROCEDURE svVentaProductoAnual(@Desde datetime, @Hasta Datetime, @idZona varchar(16)) as



SELECT TOP 100 PERCENT 

  Newid() as id,

  l.linea,

  g.Grupo,  

  p.idProducto,

  p.Producto,

  SUM(CASE WHEN Month(f.fecha) = 1  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Enero,

  SUM(CASE WHEN Month(f.fecha) = 1  THEN (fd.cantidad) ELSE 0.00 END) AS EneCant,

  SUM(CASE WHEN Month(f.fecha) = 2  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Febrero,

  SUM(CASE WHEN Month(f.fecha) = 2  THEN (fd.cantidad) ELSE 0.00 END) AS FebCant,

  SUM(CASE WHEN Month(f.fecha) = 3  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Marzo,

  SUM(CASE WHEN Month(f.fecha) = 3  THEN (fd.cantidad) ELSE 0.00 END) AS MarCant,

  SUM(CASE WHEN Month(f.fecha) = 4  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Abril,

  SUM(CASE WHEN Month(f.fecha) = 4  THEN (fd.cantidad) ELSE 0.00 END) AS AbrCant,

  SUM(CASE WHEN Month(f.fecha) = 5  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Mayo,

  SUM(CASE WHEN Month(f.fecha) = 5  THEN (fd.cantidad) ELSE 0.00 END) AS MayCant,

  SUM(CASE WHEN Month(f.fecha) = 6  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Junio,

  SUM(CASE WHEN Month(f.fecha) = 6  THEN (fd.cantidad) ELSE 0.00 END) AS JunCant,

  SUM(CASE WHEN Month(f.fecha) = 7  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Julio,

  SUM(CASE WHEN Month(f.fecha) = 7  THEN (fd.cantidad) ELSE 0.00 END) AS JulCant,

  SUM(CASE WHEN Month(f.fecha) = 8  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Agosto,

  SUM(CASE WHEN Month(f.fecha) = 8  THEN (fd.cantidad) ELSE 0.00 END) AS AgoCant,

  SUM(CASE WHEN Month(f.fecha) = 9  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Septiembre,

  SUM(CASE WHEN Month(f.fecha) = 9  THEN (fd.cantidad) ELSE 0.00 END) AS SepCant,

  SUM(CASE WHEN Month(f.fecha) = 10 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Octubre,

  SUM(CASE WHEN Month(f.fecha) = 10  THEN (fd.cantidad) ELSE 0.00 END) AS OctCant,

  SUM(CASE WHEN Month(f.fecha) = 11 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Noviembre,

  SUM(CASE WHEN Month(f.fecha) = 11  THEN (fd.cantidad) ELSE 0.00 END) AS NovCant,

  SUM(CASE WHEN Month(f.fecha) = 12 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Diciembre,

  SUM(CASE WHEN Month(f.fecha) = 12  THEN (fd.cantidad) ELSE 0.00 END) AS DicCant,

  SUM(((fd.LineTotal-fd.Descuento)*f.tasa) ) AS TotalGral,

  SUM(fd.Cantidad) AS TotalCant

FROM         

  dbo.Factura f

  INNER JOIN dbo.FacturaDet fd ON fd.idFactura = f.idFactura

  INNER JOIN dbo.Producto p ON p.idProducto = fd.idProducto

  INNER JOIN dbo.Grupo g ON p.idGrupo = g.idGrupo

  INNER JOIN dbo.Linea l ON g.idLinea = l.idLinea

  INNER JOIN Cliente c on f.idCliente = c.idCliente

WHERE     

  (f.Cancelado = 0)

  and f.fecha between @Desde and @Hasta

  and ((@idZona is null) or (c.idZona = @idZona))

GROUP BY 

  l.linea,

  g.Grupo,  

  p.idProducto,

  p.Producto

ORDER BY   

  l.linea,

  g.Grupo,

  p.idProducto








GO
GO
-- >>> FIN: svVentaProductoAnual.sql <<<

-- >>> INICIO: svVentaProductoDet.sql <<<
CREATE OR ALTER PROC [dbo].[svVentaProductoDet] (@Desde datetime, @Hasta Datetime)    

AS    



select      

 d.idFacturadet as id,     

 f.idCliente,    

 f.Cliente,    

 f.fecha,    

 f.factura,    

 f.referencia, 

 f.subtotal,

 f.itbis,

 f.descuento,

 f.total,   

 f.tasa,

 m.Moneda,    

 g.Grupo,    

 e.Empleado As Vendedor,    

 cg.ClienteGrupo As Categoria,    

 ct.ClienteTipo,    

 d.idProducto,    

 d.Producto,    

 d.cantidad,    

 d.Descuento * f.Tasa As Descuento,    

 d.Itbis * f.Tasa As Itbis,    

 d.Precio * f.Tasa As Precio,    

 d.LineTotal * f.Tasa As LineTotal,    

(d.LineTotal-d.Descuento+d.itbis) * f.Tasa as TotalValor

from     

  Cliente c     

  join Factura    f on c.idCliente = f.idCliente    

  join FacturaDet d on f.idFactura = d.idFactura    

  join Producto   p on d.idProducto = p.idProducto    

  join Moneda     m on (m.IdMoneda = f.IdMoneda)     

  Join svEmpleado e on (e.IdEmpleado = f.IdEmpleado)

  Left Outer Join svGrupo g on (g.IdGrupo = c.Grupo)    

  Left Outer Join ClienteGrupo cg on (cg.IdClienteGrupo = c.IdClienteGrupo)    

  Left Outer Join ClienteTipo  ct on (ct.IdClienteTipo = c.IdClienteTipo)

where    

  f.fecha between @Desde and @hasta 

  and (f.cancelado = 0)

order by     

  f.fecha,    

  f.factura    

  



 

return 0


GO
GO
-- >>> FIN: svVentaProductoDet.sql <<<

-- >>> INICIO: svVentaProductoporCliente.sql <<<
CREATE OR ALTER PROCEDURE svVentaProductoporCliente(@Desde datetime, @Hasta Datetime) as



SELECT     

  TOP 100 PERCENT 

  Newid() as id,

  @Desde as Desde,

  @Hasta as Hasta,

  c.idCliente,

  c.Cliente, 

  c.Sector, 

  c.Ciudad, 

  c.Grupo as ClintGrupo, 

  z.Zona, 

  g.ClienteGrupo as  Categoria, 

  p.idProducto,

  p.Producto,

  pg.Grupo,

  l.linea,

  SUM(CASE WHEN Month(f.fecha) = 1  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Enero,

  SUM(CASE WHEN Month(f.fecha) = 1  THEN (fd.cantidad) ELSE 0.00 END) AS EneCant,

  SUM(CASE WHEN Month(f.fecha) = 2  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Febrero,

  SUM(CASE WHEN Month(f.fecha) = 2  THEN (fd.cantidad) ELSE 0.00 END) AS FebCant,

  SUM(CASE WHEN Month(f.fecha) = 3  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Marzo,

  SUM(CASE WHEN Month(f.fecha) = 3  THEN (fd.cantidad) ELSE 0.00 END) AS MarCant,

  SUM(CASE WHEN Month(f.fecha) = 4  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Abril,

  SUM(CASE WHEN Month(f.fecha) = 4  THEN (fd.cantidad) ELSE 0.00 END) AS AbrCant,

  SUM(CASE WHEN Month(f.fecha) = 5  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Mayo,

  SUM(CASE WHEN Month(f.fecha) = 5  THEN (fd.cantidad) ELSE 0.00 END) AS MayCant,

  SUM(CASE WHEN Month(f.fecha) = 6  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Junio,

  SUM(CASE WHEN Month(f.fecha) = 6  THEN (fd.cantidad) ELSE 0.00 END) AS JunCant,

  SUM(CASE WHEN Month(f.fecha) = 7  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Julio,

  SUM(CASE WHEN Month(f.fecha) = 7  THEN (fd.cantidad) ELSE 0.00 END) AS JulCant,

  SUM(CASE WHEN Month(f.fecha) = 8  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Agosto,

  SUM(CASE WHEN Month(f.fecha) = 8  THEN (fd.cantidad) ELSE 0.00 END) AS AgoCant,

  SUM(CASE WHEN Month(f.fecha) = 9  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Septiembre,

  SUM(CASE WHEN Month(f.fecha) = 9  THEN (fd.cantidad) ELSE 0.00 END) AS SepCant,

  SUM(CASE WHEN Month(f.fecha) = 10 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Octubre,

  SUM(CASE WHEN Month(f.fecha) = 10  THEN (fd.cantidad) ELSE 0.00 END) AS OctCant,

  SUM(CASE WHEN Month(f.fecha) = 11 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Noviembre,

  SUM(CASE WHEN Month(f.fecha) = 11  THEN (fd.cantidad) ELSE 0.00 END) AS NovCant,

  SUM(CASE WHEN Month(f.fecha) = 12 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Diciembre,

  SUM(CASE WHEN Month(f.fecha) = 12  THEN (fd.cantidad) ELSE 0.00 END) AS DicCant,

  SUM(((fd.LineTotal-fd.Descuento)*f.tasa) ) AS TotalGral,

  SUM(fd.Cantidad) AS TotalCant

FROM         

  dbo.Cliente c  

  INNER JOIN dbo.Factura f ON f.idCliente = c.idCliente 

  INNER JOIN dbo.FacturaDet fd ON fd.idFactura = f.idFactura

  INNER JOIN dbo.Producto p ON p.idProducto = fd.idProducto

  INNER JOIN dbo.Grupo pg ON p.idGrupo = pg.idGrupo

  INNER JOIN dbo.Linea l ON pg.idLinea = l.idLinea

  LEFT JOIN dbo.Zona z ON c.idZona = z.idZona

  LEFT JOIN dbo.ClienteGrupo g ON c.idClienteGrupo = g.idClienteGrupo

WHERE     

  (f.Cancelado = 0)

  and f.fecha between @Desde and @Hasta

GROUP BY 

  c.idCliente,

  c.Cliente, 

  c.Sector, 

  c.Ciudad, 

  c.Grupo, 

  z.Zona, 

  g.ClienteGrupo, 

  p.idProducto,

  p.Producto,

  pg.Grupo,

  l.linea

ORDER BY 

  c.Cliente,

  p.Producto




GO
GO
-- >>> FIN: svVentaProductoporCliente.sql <<<

-- >>> INICIO: svVentasPorClienteSeg.sql <<<
CREATE OR ALTER PROC svVentasPorClienteSeg

 @idCli int, @Desde datetime, @Hasta Datetime, @idProducto varchar(25) AS  

select    

 @Desde as Desde,  

 @Hasta as Hasta,  

 NewId() As Id,

 c.idCliente,  

 c.Cliente,  

  IsNull(g.Grupo, 'NO ASIGNADO') As Grupo,

 cg.ClienteGrupo As Categoria,

 d.idProducto,  

 p.Producto,  

 f.fecha,  

 f.factura,  

 f.referencia,  

 f.idEmpleado,

 e.Empleado as Vendedor,

 d.cantidad as TotalCant,  

 d.LineTotal-d.Descuento+d.itbis as TotalValor,  

 d.Precio  

from Cliente c join Factura f  

  on c.idCliente = f.idCliente  

  join FacturaDet d on f.idFactura = d.idFactura  

  join Producto p on d.idProducto = p.idProducto Left Outer Join

  svGrupo g On (g.IdGrupo = c.Grupo) Left Outer Join

  ClienteGrupo cg On (cg.IdClienteGrupo = c.IdClienteGrupo)

  left join svEmpleado e on f.idEmpleado = e.idEmpleado

where  

  (@idCli = -1 or c.idCliente = @idCli)  

  and (@idProducto is null or p.idProducto = @idProducto)  

  and (f.fecha between @Desde and @Hasta)   

  and (f.cancelado = 0)  

order by

  g.Grupo,

  c.Cliente,   

  p.Producto,  

  f.fecha,  

  f.factura  

return 0  

  






GO
GO
-- >>> FIN: svVentasPorClienteSeg.sql <<<

-- >>> INICIO: svVentasPorProdCliente.sql <<<
CREATE OR ALTER PROC svVentasPorProdCliente    

 @idCli int, @Desde datetime, @Hasta Datetime, @idProducto varchar(25) AS    

select      

 @Desde as Desde,    

 @Hasta as Hasta,    

 d.idFacturaDet,   

 c.idCliente,    

 c.Cliente,    

 p.idProducto,    

 p.Producto,    

 f.fecha,    

 f.factura,    

 f.referencia,    

 d.cantidad as TotalCant,    

 d.LineTotal-d.Descuento+d.itbis as TotalValor,    

        d.Precio    

from Cliente c join Factura f    

  on c.idCliente = f.idCliente    

  join FacturaDet d on f.idFactura = d.idFactura    

  join Producto p on d.idProducto = p.idProducto    

where    

  (@idCli = -1 or c.idCliente = @idCli)    

  and (@idProducto is null or p.idProducto = @idProducto)    

  and (f.fecha between @Desde and @Hasta)     

  and (f.cancelado = 0)    

order by     

  p.idproducto,  

  c.Cliente,     

  f.fecha,    

  f.factura    

return 0




GO
GO
-- >>> FIN: svVentasPorProdCliente.sql <<<

-- >>> INICIO: svVentasPorProducto.sql <<<
CREATE OR ALTER PROC [dbo].[svVentasPorProducto] (@Desde datetime, @Hasta Datetime)    

AS    





select      

 NewId() As Id,    

 @Desde as Desde,    

 @Hasta as Hasta,    

 f.idCliente,    

 f.Cliente,    

 f.fecha,    

 f.factura,    

 f.referencia,    

 m.Moneda,    

 g.Grupo,    

 e.Empleado As Vendedor,    

 cg.ClienteGrupo As Categoria,    

 ct.ClienteTipo,    

 d.idProducto,    

 d.Producto,    

 d.cantidad,    

 d.Descuento * f.Tasa As Descuento,    

 d.Itbis * f.Tasa As Itbis,    

 d.Precio * f.Tasa As Precio,    

 d.LineTotal * f.Tasa As LineTotal,    

 (d.LineTotal-d.Descuento+d.itbis) * f.Tasa as TotalValor,  

 a.Almacen,

 isnull(sum(dd.DevCantidad),0) as DevCantidad,  

 isnull(sum(dd.DevDescuento * dv.Tasa) ,0) as DevDescuento,  

 isnull(sum(dd.DevItbis * dv.Tasa) ,0) as DevItbis,  

 isnull(sum(dd.DevLineTotal * dv.Tasa),0) as DevLineTotal,  

 isnull(sum(isnull(dd.DevLineTotal* dv.Tasa,0.00) -isnull(dd.DevDescuento* dv.Tasa,0)),0) AS DevTotalBruto,  

 isnull(sum(isnull(dd.DevLineTotal* dv.Tasa,0)-isnull(dd.DevDescuento* dv.Tasa,0)+isnull(dd.DevItbis* dv.Tasa,0)),0) AS DevTotalNeto  

from     

  Cliente c     

  join Factura    f on c.idCliente = f.idCliente    

  join FacturaDet d on f.idFactura = d.idFactura    

  join Producto   p on d.idProducto = p.idProducto    

  join Moneda     m on (m.IdMoneda = f.IdMoneda)     

  Join svEmpleado e on (e.IdEmpleado = f.IdEmpleado)

  Left Outer Join Almacen a on (a.idAlmacen = d.IdAlmacen)

  Left Outer Join svGrupo g on (g.IdGrupo = c.Grupo)    

  Left Outer Join ClienteGrupo cg on (cg.IdClienteGrupo = c.IdClienteGrupo)    

  Left Outer Join ClienteTipo  ct on (ct.IdClienteTipo = c.IdClienteTipo)    

  Left Outer Join DevolucionDet dd ON d.idFacturaDet = dd.idFacturaDet  

  Left Outer Join Devolucion dv 

    ON dd.iddevolucion = dv.idDevolucion and dv.fecha between @Desde and @hasta and dv.Cancelado = 0

where    

  f.fecha between @Desde and @hasta 

  and (f.cancelado = 0)

group by 

 f.idCliente,    

 f.Cliente,    

 f.fecha,    

 f.factura,    

 f.referencia, 

 c.cliente, 

 p.producto,    

 m.Moneda,    

 g.Grupo,    

 e.Empleado  ,    

 cg.ClienteGrupo ,    

 ct.ClienteTipo,    

 d.idProducto,    

 d.Producto,    

 d.cantidad,

 d.descuento,

 f.tasa, 

d.itbis,      

d.precio, 

d.linetotal,

 a.Almacen    

order by     

  m.Moneda,    

  c.Cliente,     

  p.Producto,    

  f.fecha,    

  f.factura    

  



 

return 0    

  






GO
GO
-- >>> FIN: svVentasPorProducto.sql <<<

-- >>> INICIO: svVentasPorProductoRpt.sql <<<
CREATE OR ALTER PROC svVentasPorProductoRpt(@Desde datetime, @Hasta Datetime)

AS    

select      

 NewId() As Id,    

 @Desde as Desde,    

 @Hasta as Hasta,    

 f.idCliente,    

 f.Cliente,    

 f.fecha,    

 f.factura,    

 f.referencia,    

 f.CompFiscal,

 f.Total * f.Tasa As Total,

 m.Moneda,    

 d.idProducto,    

 d.Producto,    

 d.cantidad,    

 d.Descuento * f.Tasa As Descuento,    

 d.Itbis * f.Tasa As Itbis,    

 d.Precio * f.Tasa As Precio,    

 d.LineTotal * f.Tasa As LineTotal,    

 (d.LineTotal-d.Descuento+d.itbis) * f.Tasa as TotalValor,

 a.Almacen

from     

  Cliente c     

  join Factura      f on c.idCliente = f.idCliente

  join FacturaDet   d on f.idFactura = d.idFactura

  join Producto     p on d.idProducto = p.idProducto

  join Moneda       m on (m.IdMoneda = f.IdMoneda)

  left join Almacen a on (d.IdAlmacen = a.IdAlmacen)

where    

  f.fecha between @Desde and @Hasta     

--  and (f.cancelado = 0)    

order by     

  m.Moneda,

  f.Factura,

  p.Producto,    

  f.fecha



return 0


GO
GO
-- >>> FIN: svVentasPorProductoRpt.sql <<<

-- >>> INICIO: svVentaXGrupo12Meses.sql <<<
CREATE OR ALTER PROCEDURE svVentaXGrupo12Meses(@Desde datetime, @Hasta Datetime) 

AS

SELECT       

  TOP 100 PERCENT   

  Newid() as id,  

  pg.Grupo,  

  SUM(CASE WHEN Month(f.fecha) = 1  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Enero,  

  SUM(CASE WHEN Month(f.fecha) = 2  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Febrero,  

  SUM(CASE WHEN Month(f.fecha) = 3  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Marzo,  

  SUM(CASE WHEN Month(f.fecha) = 4  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Abril,  

  SUM(CASE WHEN Month(f.fecha) = 5  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Mayo,  

  SUM(CASE WHEN Month(f.fecha) = 6  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Junio,  

  SUM(CASE WHEN Month(f.fecha) = 7  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Julio,  

  SUM(CASE WHEN Month(f.fecha) = 8  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Agosto,  

  SUM(CASE WHEN Month(f.fecha) = 9  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Septiembre,  

  SUM(CASE WHEN Month(f.fecha) = 10 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Octubre,  

  SUM(CASE WHEN Month(f.fecha) = 11 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Noviembre,  

  SUM(CASE WHEN Month(f.fecha) = 12 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Diciembre,  

  SUM(((fd.LineTotal-fd.Descuento)*f.tasa) ) AS TotalGral  

FROM           

  dbo.svEmpleado e   

  INNER JOIN dbo.Factura f ON e.idEmpleado = f.idEmpleado   

  INNER JOIN dbo.FacturaDet fd ON fd.idFactura = f.idFactura  

  INNER JOIN dbo.Producto p ON p.idProducto = fd.idProducto  

  INNER JOIN dbo.Grupo pg ON p.idGrupo = pg.idGrupo  

  INNER JOIN dbo.Linea l ON pg.idLinea = l.idLinea  

  INNER JOIN dbo.Cliente c ON f.idCliente = c.idCliente   

  LEFT JOIN dbo.Zona z ON c.idZona = z.idZona  

  LEFT JOIN dbo.ClienteGrupo g ON c.idClienteGrupo = g.idClienteGrupo  

WHERE       

  (f.Cancelado = 0)  

  and f.fecha between @Desde and @Hasta  

GROUP BY   

  pg.Grupo

ORDER BY 

  pg.Grupo

  


GO
GO
-- >>> FIN: svVentaXGrupo12Meses.sql <<<

-- >>> INICIO: svVentaZonaGrupoAnual.sql <<<
CREATE OR ALTER PROCEDURE svVentaZonaGrupoAnual(@Desde datetime, @Hasta Datetime) as



SELECT TOP 100 PERCENT 

  Newid() as id,

  f.idEmpleado as Vendedor,

  c.idZona as Zona,

  l.linea,

  g.Grupo,  

  SUM(CASE WHEN Month(f.fecha) = 1  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Enero,

  SUM(CASE WHEN Month(f.fecha) = 2  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Febrero,

  SUM(CASE WHEN Month(f.fecha) = 3  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Marzo,

  SUM(CASE WHEN Month(f.fecha) = 4  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Abril,

  SUM(CASE WHEN Month(f.fecha) = 5  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Mayo,

  SUM(CASE WHEN Month(f.fecha) = 6  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Junio,

  SUM(CASE WHEN Month(f.fecha) = 7  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Julio,

  SUM(CASE WHEN Month(f.fecha) = 8  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Agosto,

  SUM(CASE WHEN Month(f.fecha) = 9  THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Septiembre,

  SUM(CASE WHEN Month(f.fecha) = 10 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Octubre,

  SUM(CASE WHEN Month(f.fecha) = 11 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Noviembre,

  SUM(CASE WHEN Month(f.fecha) = 12 THEN ((fd.LineTotal-fd.Descuento)*f.tasa) ELSE 0.00 END) AS Diciembre,

  SUM(((fd.LineTotal-fd.Descuento)*f.tasa) ) AS TotalGral

FROM         

  dbo.Factura f

  INNER JOIN dbo.FacturaDet fd ON fd.idFactura = f.idFactura

  INNER JOIN dbo.Producto p ON p.idProducto = fd.idProducto

  INNER JOIN dbo.Grupo g ON p.idGrupo = g.idGrupo

  INNER JOIN dbo.Linea l ON g.idLinea = l.idLinea

  INNER JOIN Cliente c on f.idCliente = c.idCliente  	  

  LEFT Join DevolucionDet dd ON fd.idFacturaDet = dd.idFacturaDet

  Left Join Devolucion dv ON dd.iddevolucion = dv.idDevolucion and dv.fecha between @Desde and @hasta

WHERE     

  ((f.Cancelado = 0) or (f.cancelado =1 and f.fechacancelado >@Hasta))

  and f.fecha between @Desde and @Hasta

GROUP BY 

  f.idEmpleado,

  c.idZona,

  l.linea,

  g.Grupo

ORDER BY 

  f.idEmpleado,

  c.idZona,  

  l.linea,

  g.Grupo






GO
GO
-- >>> FIN: svVentaZonaGrupoAnual.sql <<<

-- >>> INICIO: tsProyectoSelectByIdCliente.sql <<<
CREATE OR ALTER PROCEDURE tsProyectoSelectByIdCliente

 @idCliente int 

as

 select idProyecto, Proyecto, idCliente, Referencia, HorasEstimadas, TarifaHoras, idMoneda

 from tsProyecto

 where idCliente = idCliente 

return


GO
GO
-- >>> FIN: tsProyectoSelectByIdCliente.sql <<<

-- >>> INICIO: tsTimeSheetSelectByIdCliente.sql <<<
CREATE OR ALTER PROCEDURE tsTimeSheetSelectByIdCliente

 @idCliente int,

 @desde datetime,

 @Hasta datetime 

as

 select idTimeSheet, TimeSheet, FechaRegistro, idCliente, idConsultor, idTimeSheetTipo, Status, Referencia

 from tsTimeSheet

 where idCliente = @idCliente and FechaRegistro between @desde and @hasta 

return 


GO
GO
-- >>> FIN: tsTimeSheetSelectByIdCliente.sql <<<

-- >>> INICIO: VentasPorCliente.sql <<<
------------ final de:ValidarCuenta ------------



------------ inicio de:VentasPorCliente ------------







CREATE OR ALTER PROC VentasPorCliente

 @idCli int, @Desde datetime, @Hasta Datetime, @idProducto varchar(25) AS

select  

	@Desde as Desde,

	@Hasta as Hasta,

	c.idCliente,

	c.Cliente,

	d.idProducto,

	p.Producto,

	f.fecha,

	f.factura,

	f.referencia,

	d.cantidad as TotalCant,

	d.LineTotal-d.Descuento+d.itbis as TotalValor,

        d.Precio

from Cliente c join Factura f

  on c.idCliente = f.idCliente

  join FacturaDet d on f.idFactura = d.idFactura

  join Producto p on d.idProducto = p.idProducto

where

  (@idCli = -1 or c.idCliente = @idCli)

  and (@idProducto is null or p.idProducto = @idProducto)

  and (f.fecha between @Desde and @Hasta) 

  and (f.cancelado = 0)

order by 

  c.Cliente, 

  p.Producto,

  f.fecha,

  f.factura

return 0




GO
GO
-- >>> FIN: VentasPorCliente.sql <<<

-- >>> INICIO: webcxcAging.sql <<<
CREATE OR ALTER PROCEDURE webcxcAging

 @final datetime

as

declare 

 @ident int,     

 @persize int,    

 @idVend int,  

 @Vencimiento Bit,

 @SoloVencido bit  



select @ident = 0, @persize = 30, @idVend = 0, @Vencimiento = 0, @SoloVencido = 0



  declare @TotalCli int    

  select      

    ct.ClienteTipo,  

    e.idCliente,    

    e.Cliente as Nombre,    

    e.Contacto,    

    e.telefono,  

    IsNull(g.Grupo, 'SIN GRUPO') As Grupo,    

    t.idMoneda,    

    m.Moneda,    

    t.idCXC,     

    Dias = datediff(day, (CASE WHEN @Vencimiento = 0 THEN t.Fecha ELSE IsNull(t.Vencimiento, t.Fecha) END), @final),     

    t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura,     

    IDRow = t.idCXC,    

    t.Fecha,   

    t.Vencimiento,   

    t.Valor as Total,    

    Pagado = (isnull(    

   (select sum(d.TotalAplicado)    

          from     

              cxc c     

              join cxcDet d on c.idCXC = d.idCXC    

          where     

              d.fecha <= @final    

     and c.cancelado = 0  

              and d.idCXCDebito = t.idCXC    

          ),0)),

    cg.ClienteGrupo As Categoria,

    em.Empleado As Vendedor

  into     

    #tempcxp  

  from     

    CXC t     

    join Moneda m on t.idMoneda = m.idMoneda    

    right join Cliente e on t.idCliente = e.idCliente    

    right join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo  

    left join svGrupo g on e.grupo = g.idGrupo   

    left join ClienteGrupo cg on (cg.IdClienteGrupo = e.IdClienteGrupo)

    left join svEmpleado em on (em.IdEmpleado = e.IdEmpleado)

  where         

    t.EsCredito = 0    

    and  (Case when @SoloVencido = 1 then t.Vencimiento else t.fecha end)  <=  @final

    and t.cancelado = 0    

  insert into #tempcxp    

  select   

    ct.ClienteTipo,  

    e.idCliente,    

    e.Cliente as Nombre,    

    e.Contacto,    

    e.telefono,   

    IsNull(g.Grupo, 'SIN GRUPO') As Grupo,   

    t.idMoneda,    

    m.Moneda,    

    t.idCXC,     

    Dias = datediff(day, t.Fecha, @final),     

    t.idTipoDocumento + '-' + ltrim(ltrim(t.CXC)) as Factura,     

    IDRow = t.idCXC,    

    t.Fecha,    

    t.Vencimiento,  

    -(t.Valor - isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)) as Total,    

    Pagado = 0.00,

    cg.ClienteGrupo As Categoria,

    em.Empleado As Vendedor

  from     

    cxc t     

    left join cxcDet d on t.idCXC = d.idCXC and d.fecha <= @final     

    join Moneda m on t.idMoneda = m.idMoneda    

    join Cliente e on t.idCliente = e.idCliente    

    join ClienteTipo ct on e.idClienteTipo = ct.idClienteTipo   

    left join svGrupo g on e.grupo = g.idGrupo  

    left join ClienteGrupo cg on (cg.IdClienteGrupo = e.IdClienteGrupo)

    left join svEmpleado em on (em.IdEmpleado = e.IdEmpleado)

  where         

    t.EsCredito = 1    

    and t.fecha <= @final      

    and t.cancelado = 0    

  group by     

    ct.ClienteTipo,   

    e.idCliente,    

    e.Cliente ,    

    e.Contacto,    

    e.telefono,  

    g.grupo,    

    t.idMoneda,    

    m.Moneda,    

    t.idCXC,     

    datediff(day, t.Fecha, @final),    

    t.idTipoDocumento,      

    t.CXC,     

    t.idCXC,    

    t.Fecha,    

    t.Vencimiento,  

    t.Valor,

    cg.ClienteGrupo,

    em.Empleado

  having t.Valor <> isnull(sum((d.Valor*d.tasa)/t.tasa),0.00)  

--------    

select  

  idMoneda,     

  idCliente,    

  sum(Valor) - sum(Aplicado) as PorDist      

into    

  #TmpDist    

from (    

  SELECT     

    c.idMoneda,      

    c.idCliente,    

    c.Valor,    

    SUM(isnull((cd.Valor * cd.tasa) / c.tasa,0.00)) AS Aplicado    

  FROM             

    dbo.Cxc c LEFT JOIN    

    dbo.CxcDet cd ON c.idCxc = cd.idCxc    

  WHERE         

    (c.esCredito = 1)    

    and (c.fecha <= @Final)    

    and (@idEnt = 0 or c.idCliente = @idEnt)     

    and (c.Cancelado = 0)    

    and ((cd.fecha is null) or (cd.fecha <= @Final))    

  GROUP BY     

    c.idMoneda,  

    c.idCliente,     

    c.idCxc,    

    c.Valor) Datos    

Group by    

  Datos.idMoneda,  

  Datos.idCliente    

Order by    

  Datos.idMoneda,  

  Datos.idCliente    



Set @TotalCli = (select count(distinct idcliente) from #tempcxp x where  x.Total <> x.pagado)    



select    

   x.Moneda,    

   x.idcliente,    

   x.Nombre,    

   NoVenc = case when dias <= 0 then Total - Pagado else $0 end,    

   A30    = case when dias between 1 and @persize then Total - Pagado else $0 end,    

   A60    = case when dias between (@persize + 1) and (@persize * 2) then Total - Pagado else $0 end,    

   A90    = case when dias between (@persize * 2) + 1 and (@persize * 3) then Total - Pagado else $0 end,    

   AMas90 = case when dias > (@persize * 3) then Total - Pagado else $0 end,

   Factura,     

   IDRow,    

   Fecha,    

   Total,   

   BalanceFinal = isnull((select sum(Total - Pagado) from #tempcxp     

      where idCliente = x.idCliente),0.00)   

  from     

    #tempcxp x   

    left join #TmpDist d on x.idcliente = d.idcliente and x.idMoneda = d.idmoneda  

    cross join configuracion c    

  where    

    x.Total <> x.pagado     

  order by     

    x.Moneda,   

    x.Nombre,     

    x.Fecha    

drop table #tempcxp    

drop table #tmpDist    

return 0






GO
GO
-- >>> FIN: webcxcAging.sql <<<

-- >>> INICIO: ws_lg_ConsumosCliente.sql <<<
CREATE OR ALTER PROCEDURE [dbo].[ws_lg_ConsumosCliente] 

 @idcliente int

as

declare @hasta datetime,

	    @desde datetime



set @hasta = GETDATE()

set @desde = '01/01/' + convert(varchar,YEAR(@hasta))

	    

select dbo.cbsNombreMes(CONVERT(datetime, sMes + '/01/' + sAnno)) + '/' + sAnno as Mes,

	   CONVERT(datetime, sMes + '/01/' + sAnno) as Corte,

	   TotalRD,

	   Total

from (

select convert(varchar,MONTH(Fecha)) as sMes,

	   convert(varchar,YEAR(Fecha)) as sAnno,	   

	   SUM(Total * Tasa) as TotalRD,

	   SUM(Total) as Total

from Factura 

where idCliente = @idcliente

	  and Cancelado = 0 

	  and Fecha between @desde and @hasta

group by convert(varchar,MONTH(Fecha)), convert(varchar,YEAR(Fecha))

) as data

order by convert(int, sAnno), convert(int, sMes)

return


GO
GO
-- >>> FIN: ws_lg_ConsumosCliente.sql <<<

-- >>> INICIO: 005_CompFiscal_ECF_Data.sql <<<
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
GO
-- >>> FIN: 005_CompFiscal_ECF_Data.sql <<<

-- >>> INICIO: 006_Fix_Bit_Columns.sql <<<
UPDATE dbo.Devolucion SET [PendValidacion] = 0 WHERE [PendValidacion] IS NULL;
ALTER TABLE dbo.Devolucion ALTER COLUMN [PendValidacion] bit NOT NULL;
IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Devolucion') AND col_name(parent_object_id, parent_column_id) = 'PendValidacion')
    ALTER TABLE dbo.Devolucion ADD CONSTRAINT DF_Devolucion_PendValidacion DEFAULT 0 FOR [PendValidacion];

UPDATE dbo.Devolucion SET [PendEnvioEcf] = 0 WHERE [PendEnvioEcf] IS NULL;
ALTER TABLE dbo.Devolucion ALTER COLUMN [PendEnvioEcf] bit NOT NULL;
IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Devolucion') AND col_name(parent_object_id, parent_column_id) = 'PendEnvioEcf')
    ALTER TABLE dbo.Devolucion ADD CONSTRAINT DF_Devolucion_PendEnvioEcf DEFAULT 0 FOR [PendEnvioEcf];

UPDATE dbo.cxpDocumentos SET [PendValidacion] = 0 WHERE [PendValidacion] IS NULL;
ALTER TABLE dbo.cxpDocumentos ALTER COLUMN [PendValidacion] bit NOT NULL;
IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.cxpDocumentos') AND col_name(parent_object_id, parent_column_id) = 'PendValidacion')
    ALTER TABLE dbo.cxpDocumentos ADD CONSTRAINT DF_cxpDocumentos_PendValidacion DEFAULT 0 FOR [PendValidacion];

UPDATE dbo.cxpDocumentos SET [PendEnvioEcf] = 0 WHERE [PendEnvioEcf] IS NULL;
ALTER TABLE dbo.cxpDocumentos ALTER COLUMN [PendEnvioEcf] bit NOT NULL;
IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.cxpDocumentos') AND col_name(parent_object_id, parent_column_id) = 'PendEnvioEcf')
    ALTER TABLE dbo.cxpDocumentos ADD CONSTRAINT DF_cxpDocumentos_PendEnvioEcf DEFAULT 0 FOR [PendEnvioEcf];

UPDATE dbo.cxpDocumentos SET [RetenerTotalFactura] = 0 WHERE [RetenerTotalFactura] IS NULL;
ALTER TABLE dbo.cxpDocumentos ALTER COLUMN [RetenerTotalFactura] bit NOT NULL;
IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.cxpDocumentos') AND col_name(parent_object_id, parent_column_id) = 'RetenerTotalFactura')
    ALTER TABLE dbo.cxpDocumentos ADD CONSTRAINT DF_cxpDocumentos_RetenerTotalFactura DEFAULT 0 FOR [RetenerTotalFactura];

UPDATE dbo.Cxc SET [PendValidacion] = 0 WHERE [PendValidacion] IS NULL;
ALTER TABLE dbo.Cxc ALTER COLUMN [PendValidacion] bit NOT NULL;
IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Cxc') AND col_name(parent_object_id, parent_column_id) = 'PendValidacion')
    ALTER TABLE dbo.Cxc ADD CONSTRAINT DF_Cxc_PendValidacion DEFAULT 0 FOR [PendValidacion];

UPDATE dbo.Cxc SET [PendEnvioEcf] = 0 WHERE [PendEnvioEcf] IS NULL;
ALTER TABLE dbo.Cxc ALTER COLUMN [PendEnvioEcf] bit NOT NULL;
IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Cxc') AND col_name(parent_object_id, parent_column_id) = 'PendEnvioEcf')
    ALTER TABLE dbo.Cxc ADD CONSTRAINT DF_Cxc_PendEnvioEcf DEFAULT 0 FOR [PendEnvioEcf];

UPDATE dbo.Factura SET [PendValidacion] = 0 WHERE [PendValidacion] IS NULL;
ALTER TABLE dbo.Factura ALTER COLUMN [PendValidacion] bit NOT NULL;
IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Factura') AND col_name(parent_object_id, parent_column_id) = 'PendValidacion')
    ALTER TABLE dbo.Factura ADD CONSTRAINT DF_Factura_PendValidacion DEFAULT 0 FOR [PendValidacion];

UPDATE dbo.Factura SET [PendEnvioEcf] = 0 WHERE [PendEnvioEcf] IS NULL;
ALTER TABLE dbo.Factura ALTER COLUMN [PendEnvioEcf] bit NOT NULL;
IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Factura') AND col_name(parent_object_id, parent_column_id) = 'PendEnvioEcf')
    ALTER TABLE dbo.Factura ADD CONSTRAINT DF_Factura_PendEnvioEcf DEFAULT 0 FOR [PendEnvioEcf];

UPDATE dbo.Cliente SET [NoRecibirConduces] = 0 WHERE [NoRecibirConduces] IS NULL;
ALTER TABLE dbo.Cliente ALTER COLUMN [NoRecibirConduces] bit NOT NULL;
IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Cliente') AND col_name(parent_object_id, parent_column_id) = 'NoRecibirConduces')
    ALTER TABLE dbo.Cliente ADD CONSTRAINT DF_Cliente_NoRecibirConduces DEFAULT 0 FOR [NoRecibirConduces];

UPDATE dbo.Cliente SET [RequiereOrdenCliente] = 0 WHERE [RequiereOrdenCliente] IS NULL;
ALTER TABLE dbo.Cliente ALTER COLUMN [RequiereOrdenCliente] bit NOT NULL;
IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Cliente') AND col_name(parent_object_id, parent_column_id) = 'RequiereOrdenCliente')
    ALTER TABLE dbo.Cliente ADD CONSTRAINT DF_Cliente_RequiereOrdenCliente DEFAULT 0 FOR [RequiereOrdenCliente];

UPDATE dbo.Cliente SET [Monto_Bono_Mortero] = 0 WHERE [Monto_Bono_Mortero] IS NULL;
ALTER TABLE dbo.Cliente ALTER COLUMN [Monto_Bono_Mortero] bit NOT NULL;
IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Cliente') AND col_name(parent_object_id, parent_column_id) = 'Monto_Bono_Mortero')
    ALTER TABLE dbo.Cliente ADD CONSTRAINT DF_Cliente_Monto_Bono_Mortero DEFAULT 0 FOR [Monto_Bono_Mortero];

UPDATE dbo.Cliente SET [OCRequerida] = 0 WHERE [OCRequerida] IS NULL;
ALTER TABLE dbo.Cliente ALTER COLUMN [OCRequerida] bit NOT NULL;
IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Cliente') AND col_name(parent_object_id, parent_column_id) = 'OCRequerida')
    ALTER TABLE dbo.Cliente ADD CONSTRAINT DF_Cliente_OCRequerida DEFAULT 0 FOR [OCRequerida];

UPDATE dbo.bcoGastosMenores SET [Cancelado] = 0 WHERE [Cancelado] IS NULL;
ALTER TABLE dbo.bcoGastosMenores ALTER COLUMN [Cancelado] bit NOT NULL;
IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.bcoGastosMenores') AND col_name(parent_object_id, parent_column_id) = 'Cancelado')
    ALTER TABLE dbo.bcoGastosMenores ADD CONSTRAINT DF_bcoGastosMenores_Cancelado DEFAULT 0 FOR [Cancelado];

UPDATE dbo.bcoGastosMenores SET [PendValidacion] = 0 WHERE [PendValidacion] IS NULL;
ALTER TABLE dbo.bcoGastosMenores ALTER COLUMN [PendValidacion] bit NOT NULL;
IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.bcoGastosMenores') AND col_name(parent_object_id, parent_column_id) = 'PendValidacion')
    ALTER TABLE dbo.bcoGastosMenores ADD CONSTRAINT DF_bcoGastosMenores_PendValidacion DEFAULT 0 FOR [PendValidacion];

UPDATE dbo.bcoGastosMenores SET [PendEnvioEcf] = 0 WHERE [PendEnvioEcf] IS NULL;
ALTER TABLE dbo.bcoGastosMenores ALTER COLUMN [PendEnvioEcf] bit NOT NULL;
IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.bcoGastosMenores') AND col_name(parent_object_id, parent_column_id) = 'PendEnvioEcf')
    ALTER TABLE dbo.bcoGastosMenores ADD CONSTRAINT DF_bcoGastosMenores_PendEnvioEcf DEFAULT 0 FOR [PendEnvioEcf];
GO
-- >>> FIN: 006_Fix_Bit_Columns.sql <<<

-- >>> INICIO: 007_Fix_ECF_Defaults.sql <<<
DECLARE @ConstraintName_Cxc_PendEnvioEcf nvarchar(200);
SELECT @ConstraintName_Cxc_PendEnvioEcf = Name FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Cxc') AND col_name(parent_object_id, parent_column_id) = 'PendEnvioEcf';
IF @ConstraintName_Cxc_PendEnvioEcf IS NOT NULL EXEC('ALTER TABLE dbo.Cxc DROP CONSTRAINT ' + @ConstraintName_Cxc_PendEnvioEcf);
ALTER TABLE dbo.Cxc ADD CONSTRAINT DF_Cxc_PendEnvioEcf_ECF DEFAULT 0 FOR [PendEnvioEcf];

DECLARE @ConstraintName_Cxc_PendValidacion nvarchar(200);
SELECT @ConstraintName_Cxc_PendValidacion = Name FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Cxc') AND col_name(parent_object_id, parent_column_id) = 'PendValidacion';
IF @ConstraintName_Cxc_PendValidacion IS NOT NULL EXEC('ALTER TABLE dbo.Cxc DROP CONSTRAINT ' + @ConstraintName_Cxc_PendValidacion);
ALTER TABLE dbo.Cxc ADD CONSTRAINT DF_Cxc_PendValidacion_ECF DEFAULT 0 FOR [PendValidacion];

UPDATE dbo.Cxc SET [StatusEcf] = 'PENDIENTE' WHERE [StatusEcf] IS NULL;
ALTER TABLE dbo.Cxc ALTER COLUMN [StatusEcf] varchar(16) NOT NULL;
DECLARE @ConstraintName_Cxc_StatusEcf nvarchar(200);
SELECT @ConstraintName_Cxc_StatusEcf = Name FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Cxc') AND col_name(parent_object_id, parent_column_id) = 'StatusEcf';
IF @ConstraintName_Cxc_StatusEcf IS NOT NULL EXEC('ALTER TABLE dbo.Cxc DROP CONSTRAINT ' + @ConstraintName_Cxc_StatusEcf);
ALTER TABLE dbo.Cxc ADD CONSTRAINT DF_Cxc_StatusEcf_ECF DEFAULT 'PENDIENTE' FOR [StatusEcf];

DECLARE @ConstraintName_Factura_PendEnvioEcf nvarchar(200);
SELECT @ConstraintName_Factura_PendEnvioEcf = Name FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Factura') AND col_name(parent_object_id, parent_column_id) = 'PendEnvioEcf';
IF @ConstraintName_Factura_PendEnvioEcf IS NOT NULL EXEC('ALTER TABLE dbo.Factura DROP CONSTRAINT ' + @ConstraintName_Factura_PendEnvioEcf);
ALTER TABLE dbo.Factura ADD CONSTRAINT DF_Factura_PendEnvioEcf_ECF DEFAULT 1 FOR [PendEnvioEcf];

DECLARE @ConstraintName_Factura_PendValidacion nvarchar(200);
SELECT @ConstraintName_Factura_PendValidacion = Name FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Factura') AND col_name(parent_object_id, parent_column_id) = 'PendValidacion';
IF @ConstraintName_Factura_PendValidacion IS NOT NULL EXEC('ALTER TABLE dbo.Factura DROP CONSTRAINT ' + @ConstraintName_Factura_PendValidacion);
ALTER TABLE dbo.Factura ADD CONSTRAINT DF_Factura_PendValidacion_ECF DEFAULT 1 FOR [PendValidacion];

UPDATE dbo.Factura SET [StatusEcf] = 'PENDIENTE' WHERE [StatusEcf] IS NULL;
ALTER TABLE dbo.Factura ALTER COLUMN [StatusEcf] varchar(16) NOT NULL;
DECLARE @ConstraintName_Factura_StatusEcf nvarchar(200);
SELECT @ConstraintName_Factura_StatusEcf = Name FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Factura') AND col_name(parent_object_id, parent_column_id) = 'StatusEcf';
IF @ConstraintName_Factura_StatusEcf IS NOT NULL EXEC('ALTER TABLE dbo.Factura DROP CONSTRAINT ' + @ConstraintName_Factura_StatusEcf);
ALTER TABLE dbo.Factura ADD CONSTRAINT DF_Factura_StatusEcf_ECF DEFAULT 'PENDIENTE' FOR [StatusEcf];

DECLARE @ConstraintName_bcoGastosMenores_PendEnvioEcf nvarchar(200);
SELECT @ConstraintName_bcoGastosMenores_PendEnvioEcf = Name FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.bcoGastosMenores') AND col_name(parent_object_id, parent_column_id) = 'PendEnvioEcf';
IF @ConstraintName_bcoGastosMenores_PendEnvioEcf IS NOT NULL EXEC('ALTER TABLE dbo.bcoGastosMenores DROP CONSTRAINT ' + @ConstraintName_bcoGastosMenores_PendEnvioEcf);
ALTER TABLE dbo.bcoGastosMenores ADD CONSTRAINT DF_bcoGastosMenores_PendEnvioEcf_ECF DEFAULT 1 FOR [PendEnvioEcf];

DECLARE @ConstraintName_bcoGastosMenores_PendValidacion nvarchar(200);
SELECT @ConstraintName_bcoGastosMenores_PendValidacion = Name FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.bcoGastosMenores') AND col_name(parent_object_id, parent_column_id) = 'PendValidacion';
IF @ConstraintName_bcoGastosMenores_PendValidacion IS NOT NULL EXEC('ALTER TABLE dbo.bcoGastosMenores DROP CONSTRAINT ' + @ConstraintName_bcoGastosMenores_PendValidacion);
ALTER TABLE dbo.bcoGastosMenores ADD CONSTRAINT DF_bcoGastosMenores_PendValidacion_ECF DEFAULT 1 FOR [PendValidacion];

UPDATE dbo.bcoGastosMenores SET [StatusEcf] = 'PENDIENTE' WHERE [StatusEcf] IS NULL;
ALTER TABLE dbo.bcoGastosMenores ALTER COLUMN [StatusEcf] varchar(16) NOT NULL;
DECLARE @ConstraintName_bcoGastosMenores_StatusEcf nvarchar(200);
SELECT @ConstraintName_bcoGastosMenores_StatusEcf = Name FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.bcoGastosMenores') AND col_name(parent_object_id, parent_column_id) = 'StatusEcf';
IF @ConstraintName_bcoGastosMenores_StatusEcf IS NOT NULL EXEC('ALTER TABLE dbo.bcoGastosMenores DROP CONSTRAINT ' + @ConstraintName_bcoGastosMenores_StatusEcf);
ALTER TABLE dbo.bcoGastosMenores ADD CONSTRAINT DF_bcoGastosMenores_StatusEcf_ECF DEFAULT 'PENDIENTE' FOR [StatusEcf];

DECLARE @ConstraintName_cxpDocumentos_PendEnvioEcf nvarchar(200);
SELECT @ConstraintName_cxpDocumentos_PendEnvioEcf = Name FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.cxpDocumentos') AND col_name(parent_object_id, parent_column_id) = 'PendEnvioEcf';
IF @ConstraintName_cxpDocumentos_PendEnvioEcf IS NOT NULL EXEC('ALTER TABLE dbo.cxpDocumentos DROP CONSTRAINT ' + @ConstraintName_cxpDocumentos_PendEnvioEcf);
ALTER TABLE dbo.cxpDocumentos ADD CONSTRAINT DF_cxpDocumentos_PendEnvioEcf_ECF DEFAULT 0 FOR [PendEnvioEcf];

DECLARE @ConstraintName_cxpDocumentos_PendValidacion nvarchar(200);
SELECT @ConstraintName_cxpDocumentos_PendValidacion = Name FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.cxpDocumentos') AND col_name(parent_object_id, parent_column_id) = 'PendValidacion';
IF @ConstraintName_cxpDocumentos_PendValidacion IS NOT NULL EXEC('ALTER TABLE dbo.cxpDocumentos DROP CONSTRAINT ' + @ConstraintName_cxpDocumentos_PendValidacion);
ALTER TABLE dbo.cxpDocumentos ADD CONSTRAINT DF_cxpDocumentos_PendValidacion_ECF DEFAULT 0 FOR [PendValidacion];

UPDATE dbo.cxpDocumentos SET [StatusEcf] = 'PENDIENTE' WHERE [StatusEcf] IS NULL;
ALTER TABLE dbo.cxpDocumentos ALTER COLUMN [StatusEcf] varchar(16) NOT NULL;
DECLARE @ConstraintName_cxpDocumentos_StatusEcf nvarchar(200);
SELECT @ConstraintName_cxpDocumentos_StatusEcf = Name FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.cxpDocumentos') AND col_name(parent_object_id, parent_column_id) = 'StatusEcf';
IF @ConstraintName_cxpDocumentos_StatusEcf IS NOT NULL EXEC('ALTER TABLE dbo.cxpDocumentos DROP CONSTRAINT ' + @ConstraintName_cxpDocumentos_StatusEcf);
ALTER TABLE dbo.cxpDocumentos ADD CONSTRAINT DF_cxpDocumentos_StatusEcf_ECF DEFAULT 'PENDIENTE' FOR [StatusEcf];

DECLARE @ConstraintName_Devolucion_PendEnvioEcf nvarchar(200);
SELECT @ConstraintName_Devolucion_PendEnvioEcf = Name FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Devolucion') AND col_name(parent_object_id, parent_column_id) = 'PendEnvioEcf';
IF @ConstraintName_Devolucion_PendEnvioEcf IS NOT NULL EXEC('ALTER TABLE dbo.Devolucion DROP CONSTRAINT ' + @ConstraintName_Devolucion_PendEnvioEcf);
ALTER TABLE dbo.Devolucion ADD CONSTRAINT DF_Devolucion_PendEnvioEcf_ECF DEFAULT 1 FOR [PendEnvioEcf];

DECLARE @ConstraintName_Devolucion_PendValidacion nvarchar(200);
SELECT @ConstraintName_Devolucion_PendValidacion = Name FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Devolucion') AND col_name(parent_object_id, parent_column_id) = 'PendValidacion';
IF @ConstraintName_Devolucion_PendValidacion IS NOT NULL EXEC('ALTER TABLE dbo.Devolucion DROP CONSTRAINT ' + @ConstraintName_Devolucion_PendValidacion);
ALTER TABLE dbo.Devolucion ADD CONSTRAINT DF_Devolucion_PendValidacion_ECF DEFAULT 1 FOR [PendValidacion];

UPDATE dbo.Devolucion SET [StatusEcf] = 'PENDIENTE' WHERE [StatusEcf] IS NULL;
ALTER TABLE dbo.Devolucion ALTER COLUMN [StatusEcf] varchar(16) NOT NULL;
DECLARE @ConstraintName_Devolucion_StatusEcf nvarchar(200);
SELECT @ConstraintName_Devolucion_StatusEcf = Name FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.Devolucion') AND col_name(parent_object_id, parent_column_id) = 'StatusEcf';
IF @ConstraintName_Devolucion_StatusEcf IS NOT NULL EXEC('ALTER TABLE dbo.Devolucion DROP CONSTRAINT ' + @ConstraintName_Devolucion_StatusEcf);
ALTER TABLE dbo.Devolucion ADD CONSTRAINT DF_Devolucion_StatusEcf_ECF DEFAULT 'PENDIENTE' FOR [StatusEcf];
GO
-- >>> FIN: 007_Fix_ECF_Defaults.sql <<<

-- >>> INICIO: 008_Activar_ECF.sql <<<
IF NOT EXISTS(SELECT 1 FROM Defaults WHERE Clave = 'AUTO_ENVIAR_ECF') INSERT INTO Defaults (Clave, Valor) VALUES ('AUTO_ENVIAR_ECF', '0');                                                                                                                      
IF NOT EXISTS(SELECT 1 FROM Defaults WHERE Clave = 'USAR_ECF') INSERT INTO Defaults (Clave, Valor) VALUES ('USAR_ECF', '1');                                                                                                                                    
IF NOT EXISTS(SELECT 1 FROM Defaults WHERE Clave = 'UsarEcfs') INSERT INTO Defaults (Clave, Valor) VALUES ('UsarEcfs', '1');
GO
-- >>> FIN: 008_Activar_ECF.sql <<<

-- >>> INICIO: 009_Nuevas_Funciones.sql <<<
CREATE FUNCTION svCadenaProductosCotizacion
 (@id UNIQUEIDENTIFIER) 
RETURNS VARCHAR(MAX)
AS BEGIN
  DECLARE @cad VARCHAR(MAX)

  SELECT @cad = ISNULL(@cad + ', ', '') + Producto
  FROM dbo.CotizacionDet WITH (NOLOCK) 
  WHERE idCotizacion = @id

  RETURN ISNULL(@cad, '')
END

GO


	CREATE FUNCTION dbo.fn_diagramobjects() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
	
GO

CREATE FUNCTION AgregarDiasLaborales
    (
      @Add INT ,
      @FechaInicial DATETIME       
    )
RETURNS DATETIME
AS
    BEGIN
        DECLARE @weeks INT ,
            @libres INT ,
            @Res DATETIME;

        IF DATEPART(WEEKDAY, @FechaInicial) = 7 --sabado
            BEGIN 
                SET @FechaInicial = DATEADD(DAY, 2, @FechaInicial); 
            END;

        IF DATEPART(WEEKDAY, @FechaInicial) = 1 --domingo
            BEGIN 
                SET @FechaInicial = DATEADD(DAY, 1, @FechaInicial); 
            END;

        SET @weeks = ( @Add / 5 ); 

        SET @Add += @weeks * 2; 

        IF ( DATEPART(WEEKDAY, @FechaInicial) > DATEPART(WEEKDAY,
                                                         DATEADD(DAY, @Add,
                                                              @FechaInicial)) )
            BEGIN
                SET @Add += 2;
            END; 

        IF ( DATEPART(WEEKDAY, DATEADD(DAY, @Add, @FechaInicial)) = 7 )
            BEGIN 
                SET @Add += 2; 
            END;
    
        SET @libres = 0; --(SELECT diaslibres FROM Feriados WHERE fecha BETWEEN @FechaInicial AND DATEADD(DAY, @FechaInicial, @Add)); 

        IF ( @libres > 0 )
            BEGIN
                SET @Res = dbo.AgregarDiasLaborales(0,
                                                    DATEADD(DAY,
                                                            ( @libres + @Add ),
                                                            @FechaInicial));				 
            END; 

        ELSE
            BEGIN
                SET @Res = DATEADD(DAY, @Add, @FechaInicial);
            END;

        RETURN  @Res;
    END;

GO


CREATE function [dbo].[RoundCorrect](@R DECIMAL(19,4))
RETURNS DECIMAL(19,2)
AS BEGIN
  DECLARE @tmp DECIMAL(19,2), @result DECIMAL(19,2) 

  SET @tmp = (@R * 100.00);

  SET @result = floor(@tmp);

  if (@tmp - @result) >= 0.5 
    set @result = (@result + 1);

  RETURN (@Result / 100.00);
END


GO

 

create function [dbo].[LimpiarRnc] (@str varchar(20))  
returns varchar(20)  
as  
begin  
 declare @instr varchar(20), @outstr varchar(20)  
 set @outstr = ''  
 declare @j int  
 set @j = 1  
  
 set @instr = @str  
 while @j <= len(@instr) begin  
   if substring(@instr,@j,1) in ('0','1','2','3','4','5','6','7','8','9','N','n','A','a','/') begin     
      set @outstr = @outstr + substring(@instr,@j,1)        
      set @j = @j + 1  
   end  
   else  
      set @j = len(@instr) + 1  
 end  
  
 return @outstr  
end


GO


create function [dbo].[ecf_buildQRGM]    
 (@id uniqueidentifier) returns varchar(1000)    
as begin     
     
 declare @url varchar(200)    
  
 select @url= convert(varchar(200), valor) from defaults where clave = 'URL_VALQR'  
     
 declare @ncf varchar(20),    
   @itbis varchar(20),    
   @rncEmisor varchar(20),    
   @rncComprador varchar(20),    
   @emision varchar(20),    
   @TipoEcf varchar(20),    
   @secuencia varchar(30),    
   @fechafirma varchar(30),    
   @total varchar(20)    
     
 select @rncEmisor = replace(RNC, '-','')     
 from configuracion     
    
 select @total = convert(varchar(20), sum(Importe))  
 from bcoGastosMenoresDet  
 where GUIDDocumento = @id   
    
 select @ncf = d.compfiscal,     
  @TipoEcf = '34',    
  ---@total = convert(varchar(20), @Total),     
  @rncComprador = @rncEmisor,  
  @emision = convert(varchar(20), d.Fecha, 105),    
  @secuencia = d.CodigoSeguridadEcf    ,
  @fechaFirma = convert(varchar(20), FechaFirmaDigital, 105) + '%20' + convert(varchar(20), FechaFirmaDigital, 108)   
 from bcoGastosMenores d with (NOLOCK)    
 where GUIDDocumento = @id     
    
 --set @fechafirma = @emision + '%2000:00:00'    
    
 if isnull(@secuencia,'') = ''     
   return ''    
    
 return @url + '?RncEmisor=' + @rncEmisor +    
  --'&RncComprador=' + @rncComprador +    
  '&ENCF=' + @ncf +     
  '&FechaEmision=' + @emision +     
  '&MontoTotal=' + @total +     
  '&FechaFirma=' + @fechaFirma +       
  '&CodigoSeguridad=' + @secuencia    
end    

GO


CREATE function [dbo].[ecf_buildQRFacturaConsumo]      
 (@ncf varchar(20),     
  @rncEmisor varchar(20),    
  @codSeg varchar(50),     
  @total decimal(19,2)) returns varchar(1000)      
as begin       
      
 declare @url varchar(200)        
    
 select @url = convert(varchar(200), valor) from defaults where clave = 'ECF_URLQR_FC'    
 if @url is null       
   select @url= 'https://fc.dgii.gov.do/testecf/ConsultaTimbreFC';      
     
 if isnull(@codSeg,'') = ''       
   return ''      
      
return @url + '?RncEmisor=' + @rncEmisor +        
  '&ENCF=' + @ncf +         
  '&MontoTotal=' + convert(varchar(20), @total) +         
  '&CodigoSeguridad=' + dbo.urlEncode(@codSeg)    
    
end

GO

CREATE FUNCTION FtSemanaMes ( @fecha DATETIME )
RETURNS INT
AS
    BEGIN
        DECLARE @semanas INT

        SELECT  @semanas = DATEDIFF(week, dbo.StartOfTheMonth(@fecha),
                                    dbo.EndOfTheMonth(@fecha))  
        RETURN @semanas
    END
GO

  
CREATE function [dbo].[ecf_buildQR]    
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
 returns varchar(1000)    
as begin     
     
 declare @url varchar(200)      
    
 select @url= convert(varchar(200), valor) from defaults where clave = 'URL_VALQR'    
    
 if isnull(@codSeg,'') = ''     
   return ''    
  
 if @tipoEcf in ('47', '43')    
   set @rncComprador = ''    
    
 --if @tipoEcf in ('47', '43')    
 --  set @rncComprador = ''     
    
 return @url + '?RncEmisor=' + @rncEmisor +    
  case when isnull(@rncComprador,'') = '' then '' else '&RncComprador=' + @rncComprador end +    
  '&ENCF=' + @ncf +     
  '&FechaEmision=' + convert(varchar(20), @emision, 105) +     
  '&MontoTotal=' + convert(varchar(20), @total) +     
  '&FechaFirma=' + convert(varchar(20), @fechaFirma, 105) + '%20' + convert(varchar(20), @fechaFirma, 108) +       
  '&CodigoSeguridad=' + dbo.UrlEncode(@codSeg)    
end    
  

GO
GO
-- >>> FIN: 009_Nuevas_Funciones.sql <<<

-- >>> INICIO: 010_Nuevas_Vistas.sql <<<

GO
-- >>> FIN: 010_Nuevas_Vistas.sql <<<

-- >>> INICIO: 011_Fix_UConfiguracion.sql <<<
UPDATE c
SET UConfiguracion = e.Id
FROM Configuracion c
JOIN ECFWorker.dbo.ecf_emisor e ON LTRIM(RTRIM(REPLACE(c.Rnc,'-',''))) COLLATE DATABASE_DEFAULT = LTRIM(RTRIM(REPLACE(e.Rnc,'-',''))) COLLATE DATABASE_DEFAULT
WHERE c.UConfiguracion <> e.Id;
GO
GO
-- >>> FIN: 011_Fix_UConfiguracion.sql <<<

-- >>> INICIO: 012_Secuencias_Prueba_ECF.sql <<<
-- =============================================
-- MIGRATION 012: Generar Secuencias de Prueba para ECF
-- =============================================
-- Objetivo: Insertar secuencias de prueba (1 al 5) para todos los 
--           comprobantes electronicos (Serie E) que no tengan una configurada.
-- Uso: Solo para ambientes de Desarrollo / Piloto para evitar errores de NCF en pruebas.
-- =============================================

INSERT INTO dbo.CompFiscalSecuencia (idCompFiscalSecuencia, uidCompFiscal, Secuencia, SecuenciaFinal, ValidoHasta, FechaRegistro, inactivo, reorden)
SELECT 
    NEWID(), 
    c.uidCompFiscal, 
    1, 
    5, 
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

PRINT 'Secuencias de prueba para ECF creadas o verificadas exitosamente.';
GO
GO
-- >>> FIN: 012_Secuencias_Prueba_ECF.sql <<<

-- >>> INICIO: 013_Entidades_Genericas_ECF.sql <<<
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
GO
-- >>> FIN: 013_Entidades_Genericas_ECF.sql <<<

-- >>> INICIO: 014_Tipos_Clientes_ECF.sql <<<
-- =============================================
-- MIGRATION 014: Crear Tipos de Clientes ECF
-- =============================================

DECLARE @maxId INT;
SELECT @maxId = ISNULL(MAX(idClienteTipo), 0) FROM dbo.ClienteTipo;

IF NOT EXISTS (SELECT 1 FROM dbo.ClienteTipo WHERE TipoCompFiscal = '31')
BEGIN
    SET @maxId = @maxId + 1;
    INSERT INTO dbo.ClienteTipo (idClienteTipo, ClienteTipo, NoPagaItbis, UidClienteTipo, TipoCompFiscal) 
    VALUES (@maxId, 'Credito Fiscal ECF', 0, NEWID(), '31');
    PRINT 'Insertado: Credito Fiscal ECF';
END

IF NOT EXISTS (SELECT 1 FROM dbo.ClienteTipo WHERE TipoCompFiscal = '32')
BEGIN
    SET @maxId = @maxId + 1;
    INSERT INTO dbo.ClienteTipo (idClienteTipo, ClienteTipo, NoPagaItbis, UidClienteTipo, TipoCompFiscal) 
    VALUES (@maxId, 'Consumo ECF', 0, NEWID(), '32');
    PRINT 'Insertado: Consumo ECF';
END

IF NOT EXISTS (SELECT 1 FROM dbo.ClienteTipo WHERE TipoCompFiscal = '44')
BEGIN
    SET @maxId = @maxId + 1;
    INSERT INTO dbo.ClienteTipo (idClienteTipo, ClienteTipo, NoPagaItbis, UidClienteTipo, TipoCompFiscal) 
    VALUES (@maxId, 'Regimen Especial ECF', 1, NEWID(), '44');
    PRINT 'Insertado: Regimen Especial ECF';
END

IF NOT EXISTS (SELECT 1 FROM dbo.ClienteTipo WHERE TipoCompFiscal = '45')
BEGIN
    SET @maxId = @maxId + 1;
    INSERT INTO dbo.ClienteTipo (idClienteTipo, ClienteTipo, NoPagaItbis, UidClienteTipo, TipoCompFiscal) 
    VALUES (@maxId, 'Gubernamental ECF', 0, NEWID(), '45');
    PRINT 'Insertado: Gubernamental ECF';
END

-- Actualizar el Cliente Generico para que use el tipo 31 (Credito Fiscal ECF)
UPDATE c
SET c.idClienteTipo = ct.idClienteTipo
FROM dbo.Cliente c
CROSS JOIN dbo.ClienteTipo ct
WHERE c.Cliente = 'CLIENTE GENERICO ECF'
  AND ct.TipoCompFiscal = '31';
GO
GO
-- >>> FIN: 014_Tipos_Clientes_ECF.sql <<<
