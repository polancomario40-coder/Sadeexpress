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

