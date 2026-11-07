
CREATE OR ALTER PROCEDURE Conduce2FacturaDet(@idConduceList varchar(5000))  AS



declare 

  @sqlstr varchar(5500)



set  @sqlstr =

	' SELECT    cd.idProducto, cd.Producto, cd.idUnidad, cd.Cantidad, ocd.Precio

 	 FROM         dbo.Conduce c 

		INNER JOIN dbo.ConduceDet cd ON c.idConduce = cd.idConduce 

                INNER join ordCompDet ocd on cd.idOrdCompDet = ocd.idOrdCompDet 

 	  WHERE   c.cancelado = 0 and c.idConduce IN ' + @idConduceList 







exec (@sqlstr)






GO
