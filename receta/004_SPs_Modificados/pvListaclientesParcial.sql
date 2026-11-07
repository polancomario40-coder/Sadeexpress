CREATE OR ALTER PROCEDURE [dbo].[pvListaclientesParcial]  

 @fld varchar(30),

 @valr varchar(100),

 @lookin bit

as

 declare @Whr varchar(200)

 declare @SQL varchar(500)



 if @lookin = 0 

   set @Whr = 'where idClienteStatus = 1  and ' + @fld + ' like ''' + @valr + '%'''

 else

   set @Whr = 'where idClienteStatus = 1  and ' + @fld + ' like ''%' + @valr + '%'''



 set @SQL = 'select Telefono,Cliente,idCliente from cliente o '

 set @SQL = @SQL + @Whr 

 set @SQL = @SQL + ' order by ' + @fld



 exec (@SQL)





 select Telefono,Cliente,idCliente from cliente 



return 0 




GO
