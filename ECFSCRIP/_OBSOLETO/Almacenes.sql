





  CREATE PROCEDURE [dbo].[Almacenes] AS    

    

  Select     

    idAlmacen,     

    Almacen , ContadorEntradas,  

    ContadorSalidas   , CerrarAlmacen 

  From    

    Almacen    

  Where    

    Activo = 1 --and idCompania = @idCompania    

  Order by    

    Almacen    

    







