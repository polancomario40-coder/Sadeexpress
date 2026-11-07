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
