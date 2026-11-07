CREATE OR ALTER PROCEDURE cxpBatchACHFind

 @orden varchar(10),

 @desde datetime,

 @hasta datetime

as

 select * from cxpBatchACH

 where fecha between @desde and @hasta

 order by fecha desc 

return 0 
GO
