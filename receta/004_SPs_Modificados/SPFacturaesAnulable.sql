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
