  

CREATE OR ALTER PROCEDURE cxpRPTGastosPorClase

  @desde datetime,  

  @hasta datetime  

as  

declare @ctaRets varchar(16),  

	    @mi_rnc varchar(11)  

 

select top 1 @mi_rnc = RNC  

from configuracion  



declare @tbl table (  

 keyfield uniqueidentifier,   

 Nombre varchar(100), 

 rnc_cedula varchar(11),  

 tipo_identificacion int,  

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

select 

	 h.guiddocumento,  

	 h.Nombre, 

	 substring(replace(h.rnc,'-',''),1,11) as rnc_cedula,  

	 convert(int,h.idTipoIdentificacion) as tipo_identificacion,  

	 case tt.DebCre   

	  when 2 then h.idClaseGasto   

	  else dbo.cxpBuscarClaseGtoModificado(h.idDocumento)   

	 end as tipo_compra,  

	 h.compfiscal,  

	 dbo.cxpBuscarNCFModificado(h.idDocumento) as compfiscal_modif,  

	 h.fecha as fecha_compfiscal,  

	 dbo.cxpBuscarFechaPago(h.idDocumento, @desde, @hasta) as fecha_pago,  

	 --dbo.cxpTotalImpuestosDoc(h.idDocumento) as itbis_facturado,  

		 dbo.cxpTotalItbisDoc(h.idDocumento) as itbis_facturado,  

	 dbo.cxpItbisRetenido(h.idDocumento, @desde, @hasta) as itbis_retenido, --h.Valor * isnull((select sum(r.Porcentaje / 100.00) from cxpDocRetencion r where idDocumento = h.idDocumento),0.00),  

	 (h.Total*h.tasa) - dbo.cxpTotalItbisDoc(h.idDocumento) as monto_facturado  

from cxpDocumentos h join cxpSuplidores s   

  on h.idSuplidor = s.idSuplidor  

  join tipostrans tt on h.idtrans = tt.idTrans and tt.Sistema = 'CXP'    

where --tt.DebCre = 2 and  

 h.Fecha between @desde and @hasta  

 and isnull(h.Status,'A') <> 'C'  

 and isnull(h.compfiscal,'') <> ''  

 and h.idTrans <> 20  

order by h.Fecha, h.idDocumento  



insert into @tbl   

select 

	h.guiddocumento,  

	h.Nombre, 

	substring(replace(h.rnc,'-',''),1,11) as rnc_cedula,  

	convert(int,h.idTipoIdentificacion) as tipo_identificacion,  

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

 --and isnull(h.compfiscal,'') <> ''  

 --and h.idTrans <> 20  

order by h.Fecha, h.idDocumento  



insert into @tbl   

select  

	h.guiddocumento,  

	b.Nombre, 

	replace(b.rnc_banco,'-','') as rnc_cedula,   

	'1' as tipo_identificacion,  

	'07' as tipo_compra,  

	h.compfiscal,  

	' ' as compfiscal_modif,  

	h.fecha as fecha_compfiscal,  

	null as fecha_pago,  

	0.00 as itbis_facturado,  

	itbis_retenido = 0.00,  

	h.Valor * h.tasa as monto_facturado  

from bcoDocumentos h join cxpBancos b   

  on h.idCuentabanco = b.idCuentabanco  

 --join TiposTrans tt on h.idTrans = tt.idTrans and tt.Sistema = 'CXP'  

where --tt.DebCre = 2 and  

 h.Fecha between @desde and @hasta  

 and isnull(h.Status,'A') <> 'C'  

 and isnull(h.compfiscal,'') <> ''  

order by h.Fecha, h.idDocumento  



insert into @tbl   

select  

	h.guiddocumento,  

	'GASTOS MENORES',

	replace(@mi_rnc,'-','') as rnc_cedula,  

	'1' as tipo_identificacion,  

	'02' as tipo_compra,  

	h.compfiscal,  

	' ' as compfiscal_modif,  

	h.fecha as fecha_compfiscal,  

	null as fecha_pago,  

	0.00 as itbis_facturado,  

	itbis_retenido = 0.00,  

	sum(d.Importe) as monto_facturado  

from bcoGastosMenores h join bcoGastosMenoresDet d   

  on h.GUIDDocumento = d.GUIDDocumento  

where h.Fecha between @desde and @hasta  

      and isnull(h.compfiscal,'') <> ''  

group by h.guiddocumento, h.compfiscal, h.fecha   

order by h.Fecha, h.compFiscal  



select t.*, cg.ClaseGasto

  from @tbl t join cxpClaseGasto cg on t.tipo_compra = cg.idClaseGasto

order by cg.ClaseGasto, fecha_compfiscal, compfiscal 



return 0  

  
GO
