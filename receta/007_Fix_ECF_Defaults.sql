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

