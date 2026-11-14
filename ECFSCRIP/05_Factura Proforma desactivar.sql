-- Parámetro: FACT_CREDITO_NCF
-- '1' (o sin configurar): Ventas a crédito generan NCF fiscal directamente.
-- '0': Ventas a crédito generan PROFORMA (flujo antiguo de conduce sin NCF).
IF NOT EXISTS (SELECT 1 FROM dbo.Defaults WHERE Clave = 'FACT_CREDITO_NCF')
BEGIN
    INSERT INTO dbo.Defaults (Clave, Valor, Descripcion, Categoria, UidClave)
    VALUES ('FACT_CREDITO_NCF', CAST('1' AS sql_variant), 'Generar NCF en facturas a credito (1=Si, 0=Proforma)', 'Ventas', NEWID());
END
ELSE
BEGIN
    UPDATE dbo.Defaults 
    SET Valor = CAST('1' AS sql_variant)
    WHERE Clave = 'FACT_CREDITO_NCF';
END
GO