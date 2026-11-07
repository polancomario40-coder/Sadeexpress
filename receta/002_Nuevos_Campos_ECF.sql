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

