


CREATE OR ALTER PROCEDURE [Clientes] 

   @Ciu varchar(30)='%',

   @Zon varchar(30)='%',

   @Rut varchar(30)='%',

   @Sec varchar(30)='%',

   @Emp varchar(30)='%' 

AS

------------------------------------------





SELECT     TOP 100 PERCENT 

    dbo.Ciudad.CiudadID, 

    dbo.Ciudad.Ciudad, 

    dbo.Zona.ZonaID, 

    dbo.Zona.Zona, 

    dbo.Ruta.RutaID, 

    dbo.Ruta.Ruta, 

    dbo.Empleado.EmpleadoID, 

    dbo.Empleado.ApeEmpleado + ', ' + dbo.Empleado.NomEmpleado AS Empleado, 

    dbo.OrdenRutaSector.Orden, 

    dbo.Sector.SectorID, 

    dbo.Sector.Sector, 

    dbo.EstacionRuta.OrdenVisita, 

    dbo.Estacion.EstacionID, 

    dbo.Estacion.Estacion, 

    dbo.Estacion.Contacto, 

    dbo.Estacion.Calle, 0 AS Credito

FROM         

    dbo.Empleado 

    INNER JOIN dbo.Ruta ON dbo.Empleado.EmpleadoID = dbo.Ruta.EmpleadoID 

    INNER JOIN dbo.Zona ON dbo.Ruta.ZonaID = dbo.Zona.ZonaID 

    INNER JOIN dbo.Ciudad ON dbo.Zona.CiudadID = dbo.Ciudad.CiudadID 

    LEFT OUTER JOIN dbo.Sector 

    INNER JOIN dbo.EstacionEst 

    INNER JOIN dbo.Estacion ON dbo.EstacionEst.EstacionEstID = dbo.Estacion.EstacionEstID ON dbo.Sector.SectorID = dbo.Estacion.SectorID 

    LEFT OUTER JOIN dbo.EstacionRuta ON dbo.Estacion.EstacionID = dbo.EstacionRuta.EstacionID ON dbo.Ruta.RutaID = dbo.EstacionRuta.RutaID 

    LEFT OUTER JOIN dbo.OrdenRutaSector ON dbo.Sector.SectorID = dbo.OrdenRutaSector.SectorID AND dbo.Ruta.RutaID = dbo.OrdenRutaSector.RutaID

WHERE     

    (dbo.EstacionEst.Activo = 1)

    AND (ISNULL(dbo.Ciudad.Ciudad, '') LIKE @Ciu) 

    AND (ISNULL(dbo.Zona.Zona, '') LIKE @Zon) 

    AND (ISNULL(dbo.Ruta.Ruta, '') LIKE @Rut) 

    AND (ISNULL(dbo.Sector.Sector, '') LIKE @Sec) 

    AND (dbo.Empleado.ApeEmpleado + ', ' + dbo.Empleado.NomEmpleado LIKE @Emp)

ORDER BY 

    dbo.Ciudad.CiudadID, 

    dbo.Zona.ZonaID, 

    dbo.Ruta.RutaID, 

    dbo.OrdenRutaSector.Orden, 

    dbo.Sector.Sector, 

    dbo.EstacionRuta.OrdenVisita, 

    dbo.Estacion.Estacion














GO
