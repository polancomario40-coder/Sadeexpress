  

CREATE OR ALTER PROCEDURE Findcxc(@Orden varchar(2), @Desde datetime, @Hasta datetime) AS  

  

declare @sql varchar(500),  

        @Ord varchar(2)  

  

  if @orden is null or @orden = ''   

   set @ord = ' 2'  

  else  

   set @ord = @Orden  

  

  Set @sql =   

'Select   

  t.IdCXC, t.cxc,   

  convert(varchar(10),tt.cxcTipo) as cxcTipo,   

  t.Fecha,   

  t.Valor,   

  convert(varchar(20),t.Concepto) as Concepto,   

  convert(varchar(25),t.Cliente) as Cliente,

  t.idcliente

From   

  cxc t   

  join cxcTipo tt on t.idCXCTipo = tt.idCXCTipo   

Where   

  Fecha between ''' + convert(varchar,@Desde,112)+ ''' and ''' + convert(varchar,@Hasta,112)+ '''  

Order by ' + @Ord   

   

  exec (@sql)
GO
