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

