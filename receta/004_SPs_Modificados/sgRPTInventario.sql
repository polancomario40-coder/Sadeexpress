

CREATE OR ALTER PROCEDURE sgRPTInventario

 @retirados bit 

as  

 select pl.idPlaca,  

	   pl.Placa, 

	    pl.Nombre,  

	    pl.Sexo,  

	    pl.FechaNac,  

	    pl.Tipo,  

	    pl.PlacaMadre,

	    pl.PlacaPadre, 

	    Madre = (select top 1 Placa from sgPlaca where idPlaca = pl.PlacaMadre),

	    Padre = (select top 1 Placa from sgPlaca where idPlaca = pl.PlacaPadre),

	    pl.Status,  

	    pl.PrecioVenta,

	    IncluirCuenta = case when st.Activo = 1 then 1 else 0 end

 from sgPlaca pl join sgPlacaStatus st on pl.status = st.status

 where (@retirados = 1 or st.Activo = 1)

 order by pl.idPlaca  

return   










GO
