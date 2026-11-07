

CREATE OR ALTER PROCEDURE Factura2Conduce(@idFactura uniqueidentifier) AS  

--declare @idfactura uniqueidentifier

--set @idfactura='83778433-BC0A-45BF-9533-F554EAD0985B' 

Select   

  f.idFactura,   

  f.Factura,   

  f.Fecha,   

  f.Referencia,   

  f.idCliente,  

  f.Total,   

  convert(varchar(25), f.cliente) as Cliente,

  d.idproducto,d.producto,d.idUnidad,d.Cantidad

 

  From   

  Factura f join Facturadet d on d.idfactura=f.idfactura

Where   

 f.idFactura = @idFactura  



--select * from factura








GO
