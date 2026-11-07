



CREATE OR ALTER PROCEDURE [dbo].[eduGenCodifCxcColegio]

 @idCxc uniqueidentifier

as



declare 

        @tipo varchar(2),

        @Fecha datetime,

        @idcliente int,

        @ctacxc varchar(16),

        @ctaavance varchar(16),

        @ctacaja varchar(16),

        @ctacom varchar(16),

        @porcCom float,

        @Total decimal(19,2),

        @fp varchar(16),

        @idMon int,

        @Tasa float,

        @referencia varchar(20),

        @ctaing varchar(16),

		@porcItbis float,

		@ctaitbis varchar(16),

        @PorcImpuesto float

        

declare @ctas table (

 idCuenta varchar(16),

 Debito decimal(19,2),

 Credito decimal(19,2),

 Referencia varchar(20),

 Descripcion varchar(50) 

)



if exists (select 1 from Recibo

		    where idRecibo = @idCxc 

		    and esCxc = 0)

 return 0

 



Set @ctaavance = isnull((Select convert(varchar(30), Valor) from Defaults where Clave = 'CtaAvanceCliente'),'CtaAvanceCliente')

        

select @tipo = c.idTipoDocumento,

	   @fecha = c.fecha,

       @idCliente = c.idCliente,

       @Total = c.valor,

       @idMon = c.idMoneda,

       @fp = r.idPagoForma, 

       @Tasa = c.Tasa,

       @referencia = c.idTipoDocumento + '-' + Cxc,

       @ctaing = tc.cc

from 

  cxc c 

  join cxctipo tc on c.idcxctipo = tc.idcxctipo

  left join recibo r on r.idrecibo = c.idcxc

where 

  c.idcxc = @idcxc



select @ctacxc = idcuentacredito

from Cliente c join ClienteTipoCuenta cm

  on c.idClienteTipo = cm.idClienteTipo and cm.idMoneda = @idMon

where c.idCliente = @idCliente

 

if @tipo = 'RC' 

begin

  select @porcCom = f.Comision,

         @ctacaja = f.CC,

         @ctacom = isnull(CtaComision,0.00),

         @porcItbis = 0, --isnull(@PorcImpuesto,0.00),

         @CtaItbis = Ctaimpuesto

  from pagoForma f 

   where idPagoForma = @fp



  -- aumenta dep cliente

  insert into @ctas (idCuenta, Debito, Credito, Referencia)

  VALUES (@ctaAvance,0,@Total,@referencia)

  

  -- aumenta la caja 

  insert into @ctas (idCuenta, Debito, Credito, Referencia)

  values (@ctacaja, @Total * (1 - ((@porcItbis + @porcCom) / 100.00)), 0 , @referencia)

  

  --if @porcitbis > 0 

    --insert into @ctas (idCuenta, Debito, Credito, Referencia)

    --values (@ctaItbis, @Total * (@porcitbis / 100.00),0,@referencia)

    --

  

  if @porcCom > 0 

    insert into @ctas (idCuenta, Debito, Credito, Referencia)

    values (@ctacom, @Total * (@porcCom / 100.00),0,@referencia)

  

  -- rebaja el avance

  insert into @ctas (idCuenta, Debito, Credito, Referencia, Descripcion)

  select 

    @ctaAvance,

	det.Valor,

    0,

    @referencia,

    '(R) Reduce el Deposito por ' + cargo.cxc

  from cxc pago join cxcdet det on pago.idcxc = det.idcxc

  join cxc cargo on det.idcxcdebito = cargo.idcxc

  where cargo.vencimiento <= pago.fecha and pago.idcxc = @idcxc

 union

  select 

    @ctacxc,

  	0, 

  	det.Valor,

    @referencia,

    '(R) Reduce la Cxc de ' + cargo.cxc

  from cxc pago join cxcdet det on pago.idcxc = det.idcxc

  join cxc cargo on det.idcxcdebito = cargo.idcxc

  where cargo.vencimiento <= pago.fecha and pago.idcxc = @idcxc

  

  if @@ROWCOUNT = 0

    print 'no reduccion avance ' + @referencia

    

end

else 

begin

    --Cxc

    insert into @ctas (idCuenta, Debito, Credito, Referencia)

     VALUES (@ctacxc,@Total,0,@referencia)

    -- Ingreso

    insert into @ctas (idCuenta, Debito, Credito, Referencia)

     VALUES (@ctaing, 0,@Total, @referencia)



    insert into @ctas (idCuenta, Debito, Credito, Referencia, Descripcion)

    select 

      @ctaavance,

      det.Valor,

      0,

      @referencia,

      'Descargue de Avance a ' + pago.cxc

    from 

      cxc cargo join cxcdet det on cargo.idcxc = det.idcxcdebito

      join cxc pago on det.idcxc = pago.idcxc

    where 

      pago.fecha < cargo.vencimiento and cargo.idcxc = @idcxc

    union

    select 

      @ctacxc,

      0,

      det.Valor,

      @referencia,

      'Descargue de Avance a ' + pago.cxc

    from 

      cxc cargo join cxcdet det on cargo.idcxc = det.idcxcdebito

      join cxc pago on det.idcxc = pago.idcxc

    where 

      pago.fecha < cargo.vencimiento and cargo.idcxc = @idcxc

end



delete from cgCodificacion 

where guiddocumento = @idcxc



insert into cgCodificacion 

(idCodificacion, guiddocumento, idCuenta, DebCre, Valor, Referencia, Nota, Tipo, Fecha, TipoDocumento)

select newid(),

	   @idcxc,

       idcuenta,       

       case when sum(debito) > sum(credito) then 1 else 2 end,

       case when sum(debito) > sum(credito) then sum(debito) - sum(credito) else sum(credito) - sum(debito) end,              

       Referencia,

       '',

       @Tipo,

       @Fecha,

       @Tipo 

from @ctas

group by idcuenta, referencia 

having (sum(debito) <> sum(credito)) 



--select newid(),

	   --@idcxc,

       --idcuenta,

       --case when debito > 0 then 1 else 2 end,

       --case when debito > 0 then debito else credito end,

       --Referencia,

       --Descripcion

--from @ctas

--

return 0 



-- exec EntradaContNDColegio '08/01/2007', '08/01/2007','Tito'
GO
