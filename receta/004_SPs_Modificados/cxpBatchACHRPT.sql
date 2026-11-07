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
