





--sp_helptext'findfactura'



 CREATE PROCEDURE [dbo].[FindFactura](@Orden varchar(100), @Desde Datetime, @Hasta Datetime, @Credito bit) AS  

  

Select   

  idFactura,   

  Factura,   

  Fecha,   

  Referencia,   

  idCliente,   

  Total,   

  convert(varchar(25), cliente) as Cliente   

From   

  Factura   

Where   

  Fecha between @Desde and @Hasta  

  --and Credito = @Credito  

  --and 	  (Cliente like '%' + @Orden + '%'  

  --             or Factura like '%' + isnull(@Orden,'') + '%'  

  --             or Referencia like '%' + isnull(@Orden,'') + '%'  

  --             or convert(varchar(20),idCliente) like '%' + isnull(@Orden,'')

		--	   + '%'

		--	   )  

Order by  

  Fecha, Factura  

