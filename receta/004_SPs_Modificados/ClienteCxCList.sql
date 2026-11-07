


CREATE OR ALTER PROCEDURE ClienteCxCList(@Activo bit) AS



SELECT  TOP 100 PERCENT 

	e.EstacionID, 

	e.Estacion, 

	e.Contacto, 

	e.Calle, 

	e.Telefono, 

	e.Remision, 

	e.TipoClienteID, 

	s.Sector, 

	z.Zona, 

	c.Ciudad, 

	r.Ruta

FROM         

	dbo.Zona z RIGHT OUTER JOIN

        dbo.Sector s RIGHT OUTER JOIN

        dbo.Estacion e INNER JOIN

        dbo.EstacionEst ee ON e.EstacionEstID = ee.EstacionEstID ON s.SectorID = e.SectorID LEFT OUTER JOIN

        dbo.Ruta r ON e.RutaID = r.RutaID ON z.ZonaID = r.ZonaID LEFT OUTER JOIN

        dbo.Ciudad c ON z.CiudadID = c.CiudadID

WHERE

 	ee.activo = @Activo

ORDER BY 

	e.Estacion












GO
