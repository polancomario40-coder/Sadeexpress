CREATE OR ALTER PROCEDURE cxpSuplidorFind 

 @Todos bit,

 @filtro varchar(100)

as

 select idSuplidor, Nombre, Telefono1, Telefono2, RNC, Contacto

 from cxpSuplidores

 where (Estatus = 1 or @Todos = 1)

          and (Nombre like '%' + isnull(@filtro,'') + '%'

               or RNC like '%' + isnull(@filtro,'') + '%'

               or Telefono1 like '%' + isnull(@filtro,'') + '%'

               or Telefono2 like '%' + isnull(@filtro,'') + '%'

               or TelContacto like '%' + isnull(@filtro,'') + '%'

               or Contacto like '%' + isnull(@filtro,'') + '%'               

               or convert(varchar(20),idSuplidor) like '%' + isnull(@filtro,'') + '%')

 order by Nombre

return


GO
