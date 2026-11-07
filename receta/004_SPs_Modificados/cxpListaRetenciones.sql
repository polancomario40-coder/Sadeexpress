CREATE OR ALTER PROCEDURE cxpListaRetenciones  

 @orden varchar(10) = null 

as  

 select * from cxpRetencion  

 order by Retencion  

return @@ERROR  

  
GO
