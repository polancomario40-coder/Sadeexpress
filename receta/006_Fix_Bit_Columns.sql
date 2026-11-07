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

