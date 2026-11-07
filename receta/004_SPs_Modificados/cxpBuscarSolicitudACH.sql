CREATE OR ALTER PROCEDURE cxpBuscarSolicitudACH

 @orden varchar(10),

 @desde datetime,

 @hasta datetime

as

 select s.Numero,

	    e.Nombre as Suplidor,

	    s.Fecha,

	    TotalNeto = s.Total - dbo.cxpRetencionXSolicitud(s.idSolicitud),

		s.Concepto

  from cxpSolicitudes s join cxpSuplidores e on s.idSuplidor = e.idSuplidor 

  where s.TipoSolicitud = 2 

		and s.Status = 'A' 

	    and s.fecha between @desde and @hasta

  order by s.Numero desc

return 0 
GO
