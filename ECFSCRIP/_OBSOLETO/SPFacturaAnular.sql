





CREATE PROCEDURE [dbo].[SPFacturaAnular]

 @idFactura uniqueidentifier, 

 @Anulado bit output, 

 @TipoAnulacion VarChar(2) = 04

AS      



declare @err int      

Set     @err = 0      

Set @Anulado = 0  --retornar false      

IF exists (      

  SELECT Top 1 -- si no existen pago para la cxc de esta factura      

    1      

  FROM      

    Cxc p      

    INNER JOIN Cxcdet Pd ON p.idCxc = pd.idCxc      

    INNER JOIN Cxc f ON pd.idCxcDebito = f.idCxc      

  WHERE      

    f.idcxc  = @idFactura and p.cancelado = 0)      

BEGIN      

  RETURN -1      

END      

  

IF exists (      

  SELECT Top 1 -- si no se ha cerrado el almacen para los movimientos generados por esta factura      

    1      

  FROM      

    ProMov p        

  WHERE      

    p.IdReferencia = @idFactura and p.posteado = 1)      

BEGIN      

  RETURN -2      

END      

  

BEGIN TRAN        

  

Update       

    factura       

  set       

    cancelado = 1,       

    fechacancelado =  round(convert(float, fecha),0,1),      

    TipoAnulacion = @TipoAnulacion      

  where       

    idfactura = @idFactura --marcar factura como cancelado      

  set @err = @@Error         

    

  Delete       

  from cxc       

  where idcxc = @idFactura  -- borrar la cxc de la factura      

    

  Set @Err = @@Error      

    

  Delete       

    promovdet      

  from       

    Promov p      

    join promovdet pd on p.idpromov = pd.idpromov      

  where       

    p.idReferencia = @idFactura      

      

  set @err = @@Error         

  Delete       

  from       

    Promov       

  where       

    idreferencia = @idFactura      

      

  set @err = @@Error         

  Set @Anulado = 1  -- retornar true      

  

if isnull(@err,0)  <> 0       

begin      

  ROLLBACK TRAN      

  RETURN 1      

end      

  

COMMIT TRAN      

RETURN 0    

