


CREATE OR ALTER PROCEDURE [dbo].[cxpPostearCostos]

 @desde datetime,

 @hasta datetime

as

--set @desde = '12/01/2006'

--set @hasta = '12/31/2006'



declare @tipo varchar(10)



declare c cursor for 

select substring(Abrev,1,10)

from TiposTrans t

where sistema = 'CXP'    

      and exists (select 1 from cxpdocumentos 

                   where idtrans = t.idTrans 

                         and fecha between @desde and @hasta)

open c

fetch next from c into @tipo



while @@FETCH_STATUS = 0 

begin

  print @tipo 

  exec costPostearCostoDocumentos @desde, @hasta, @tipo



  fetch next from c into @tipo

end



close c 

deallocate c



return 0   




GO
