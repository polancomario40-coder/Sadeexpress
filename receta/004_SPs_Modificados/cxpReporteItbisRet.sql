



CREATE OR ALTER PROCEDURE [dbo].[cxpReporteItbisRet]

  @desde datetime,

  @hasta datetime

as

declare	@ctaRets varchar(16),

	@mi_rnc varchar(11)



declare @tbl table (

 keyfield uniqueidentifier, 

 rnc_cedula varchar(11),

 tipo_identificacion int,

 suplidor varchar(100),

 tipo_compra varchar(2),

 compfiscal varchar(19),

 compfiscal_modif varchar(19),

 fecha_compfiscal datetime,

 fecha_pago datetime,

 itbis_facturado decimal(19,2),

 itbis_retenido decimal(19,2),

 monto_facturado decimal(19,2)

)



insert into @tbl 

select 	h.guiddocumento,

	substring(replace(h.rnc,'-',''),1,11) as rnc_cedula,

	convert(int,s.idTipoIdentificacion) as tipo_identificacion,

	h.Nombre as Suplidor, 

	case tt.DebCre 

		when 2 then h.idClaseGasto 

		else dbo.cxpBuscarClaseGtoModificado(h.idDocumento) 

	end as tipo_compra,

	h.compfiscal,

	dbo.cxpBuscarNCFModificado(h.idDocumento) as compfiscal_modif,

	h.fecha as fecha_compfiscal,

	dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) as fecha_pago,	

    dbo.cxpTotalItbisDoc(h.idDocumento) as itbis_facturado,

	dbo.cxpItbisRetenido(h.idDocumento, @desde, @hasta) as itbis_retenido, 

	(h.Total*h.tasa) - dbo.cxpTotalItbisDoc(h.idDocumento) as monto_facturado

from cxpDocumentos h join cxpSuplidores s 

  on h.idSuplidor = s.idSuplidor

  join tipostrans tt on h.idtrans = tt.idTrans and tt.Sistema = 'CXP'  

where tt.DebCre = 2 and

	h.Fecha between @desde and @hasta

	and isnull(h.Status,'A') <> 'C'

--	and isnull(h.compfiscal,'') <> ''

	and h.idTrans <> 20

order by h.Fecha, h.idDocumento



insert into @tbl 

select 	h.guiddocumento,

	substring(replace(h.rnc,'-',''),1,11) as rnc_cedula,

	convert(int,s.idTipoIdentificacion) as tipo_identificacion,

	h.Nombre as Suplidor,  

	case tt.DebCre when 2 then h.idClaseGasto else '00' end as tipo_compra,

	h.compfiscal,

	dbo.cxpBuscarNCFModificado(h.idDocumento) as compfiscal_modif,

	h.fecha as fecha_compfiscal,

	dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) as fecha_pago,

	dbo.cxpTotalItbisDoc(h.idDocumento) as itbis_facturado,

	dbo.cxpItbisRetenido(h.idDocumento, @desde, @hasta) as itbis_retenido, --h.Valor * isnull((select sum(r.Porcentaje / 100.00) from cxpDocRetencion r where idDocumento = h.idDocumento),0.00),

	(h.Total*h.tasa) - dbo.cxpTotalItbisDoc(h.idDocumento) as monto_facturado

from cxpDocumentos h join cxpSuplidores s 

  on h.idSuplidor = s.idSuplidor

  join tipostrans tt on h.idtrans = tt.idTrans and tt.Sistema = 'CXP'  

where   tt.DebCre = 2 and

	h.Fecha < @desde 

	and exists (select 1 from cxpdocumentosdtl where iddocxpagar = h.idDocumento and fecha between @desde and @hasta) 

	and dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) between @desde and @hasta 

	and dbo.cxpItbisRetenido(h.idDocumento, @desde, @hasta) > 0.00  

	and isnull(h.compfiscal,'') <> ''

	--and h.idTrans <> 20

order by h.Fecha, h.idDocumento



select * from @tbl 

where itbis_retenido > 0.00

order by fecha_compfiscal



return 0






GO
