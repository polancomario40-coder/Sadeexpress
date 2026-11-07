

CREATE OR ALTER PROCEDURE [dbo].[mantOT2SolCompra](@idOrdenTrab uniqueidentifier, @Usuario varchar(30)) as



--declare

--  @idOrdenTrab uniqueidentifier, 

--  @Usuario varchar(30)



--set @idOrdentrab ='53ADC3B5-23AD-48BA-8037-FD22C2179279' 

--set @usuario = 'tito'





declare

  @id uniqueidentifier,

  @contador varchar(16),

  @idEstado varchar(16),

  @DeptoMantto varchar(16)

    

Set @DeptoMantto = (select convert(varchar(16),valor) from defaults where Clave = 'COD_DEPTO_MANTTO')  

Set @idEstado = (Select convert(varchar(16),valor) from defaults where Clave = 'OT2SOLIC_STATUS')  

Set @id = newid()

Exec spGetNextCounterSTR 'SOL_COMPRA', @Output = @Contador output



Insert into ocsolicitud(idSolicitud, Solicitud, Fecha, Solicitante, Usuario, Motivacion, Ubicacion, DepartamentoId)

select top 1

  @id, @Contador, convert(varchar(14),getdate(),112), @usuario, @usuario, '['+ot.idgfh+'] '+ot.Descripcion, null, 'Mantenimiento'

from

  ordentrab ot

  join ordentrabdet otd on ot.idOrdenTrab = otd.idOrdenTrab

where

  ot.idordentrab = @idordentrab 

  and otd.compras > 0

  and otd.solicitado = 0

  

insert into ocSolicitudDet(

  idSolicitudDet, 

  idSolicitud, 

  ItemNo, 

  Fecha, 

  Cantidad, 

  idUnidad, 

  idProducto, 

  Referencia, 

  Descripcion, 

  idCentroCosto, 

  CentroCosto, 

  idPartida, 

  Prioridad, 

  FechaPrioridad, 

  Notas, 

  Usuario, 

  idEstado, 

  DepartamentoId, 

  Cancelado, 

  Devuelta, 

  Grupo, 

  Suplidores, 

  Pendiente)

select

  newid(), 

  @id, 

  1, 

  convert(varchar(14),getdate(),112), 

  otd.compras, 

  isnull(p.idUnidad,'UNIDAD'), 

  otd.idproducto, 

  convert(varchar(30), p.Referencia), 

  convert(varchar(400),otd.OrdenTrabDet), 

  otd.idOrdentrab, 

  ot.OrdenTrab, 

  null, 

  ot.OTprioridad, 

  null, 

  convert(varchar(200),ot.descripcion), 

  @usuario, 

  @idEstado, 

  @DeptoMantto, 

  0, 

  0, 

  isnull(g.Grupo,'MANTENIMIENTO'), 

  '', 

  1 

from

 OrdenTrabDet otd

 join Ordentrab ot on otd.idordentrab = ot.idordentrab

 left join Producto p on otd.idproducto = p.idproducto

 left join Grupo g on p.idgrupo = g.idgrupo

Where

  otd.idordentrab = @idordentrab 

  and otd.compras > 0

  and otd.solicitado = 0

  



update

  ordentrabdet

set

  Solicitado = 1

from

 OrdenTrabDet otd

Where

  otd.idordentrab = @idordentrab 

  and otd.compras > 0

  and otd.solicitado = 0




GO
