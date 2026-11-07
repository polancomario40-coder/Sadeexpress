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
