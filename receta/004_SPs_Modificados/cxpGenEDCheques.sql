


CREATE OR ALTER PROCEDURE [dbo].[cxpGenEDCheques] 

 @desde datetime,

 @hasta datetime,

 @Usuario varchar(30),

 @ED varchar(4) 

as

 declare @err int

 declare @numed varchar(6)



 select @numed = @ED --convert(varchar,valor)

 --from defaults

 --where clave = 'NUMED_CHEQUES'



 exec @err = cxpGenED @desde, @hasta, @numed, 20, @usuario



return isnull(@ERR,0)






GO
