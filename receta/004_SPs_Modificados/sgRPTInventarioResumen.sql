
CREATE OR ALTER PROCEDURE sgRPTInventarioResumen

 @retirados bit 

as  



 declare @machos int, @hembras int, @Totalretirados int, @venta decimal(19,2)





 select @machos = count(*) from sgPlaca p 

 join sgPlacaStatus st on p.Status = st.Status 

 where Sexo = 'M' 

 and (@retirados = 1 or st.Activo = 1)

 

 select @hembras = count(*)

 from sgPlaca p join sgPlacaStatus st on p.Status = st.Status 

 where Sexo <> 'M' and (@retirados = 1 or st.Activo = 1)

 

 select @TotalRetirados = count(*)

 from sgPlaca p join sgPlacaStatus st on p.Status = st.Status 

 where st.Activo = 0

 

 select @venta = sum(p.PrecioVenta)

 from sgPlaca p join sgPlacaStatus st on p.Status = st.Status 

 where st.Activo = 0



 select Machos = isnull(@machos,0), 

	    Hembras = isnull(@hembras,0),

	    Retirados = isnull(@Totalretirados,0),

	    TotalVenta = isnull(@venta,0.00)

 

return   








GO
