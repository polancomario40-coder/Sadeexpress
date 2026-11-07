CREATE OR ALTER PROCEDURE [dbo].[svImpFactura]

 @tipo varchar(16),    

 @id varchar(8000)      



as



--set @id='D4C84277-42E0-446C-A627-190DAC4C3B98'

--set @tipo='autogen'



declare @tipovallas table (idcontrato uniqueidentifier,pagadas int,bonificables int,rotativa int,fija int)

declare @Cadenatipovallas varchar(600)





insert into @tipovallas (idcontrato ,pagadas ,bonificables )

select

idcontrato,

case cd.idClase when 'P' then count(cd.idClase)end as Padadas,

case cd.idClase when 'B' then count(cd.idClase)end as Bonificables

from vpContratoDet cd group by idcontrato,idClase



select @Cadenatipovallas =  convert(varchar(3),isnull(sum(pagadas),0))+' Pagadas '+convert(varchar(3),isnull(sum(bonificables),0))+' Bonificables' from @tipovallas group by idcontrato



 --if @tipo = 'autogen' begin     

    declare @keys table (id uniqueidentifier)    

        

    insert into @keys     

    select distinct idContratoCuota    

    from vpContratoCuota    

    where charindex(convert(varchar(50), idContratoCuota), @id) > 0     

     

 declare @idprod varchar(25)    

 select @idprod = convert(varchar(25), valor) from defaults where clave = 'PROD_CUOTA'    

 if @idprod is null set @idprod = 'CUOTA'    

     

 declare @prod varchar(200)    

 select @prod = producto from producto where idproducto = @idprod    

     

    select c.idCliente,    

     ct.idContratoCuota as IdRow,     

     c.Cliente,    

     idProducto = @idprod,    

     1.00 as Cantidad,     

     Producto = 'CUOTA CORESPONDIENTE A '+convert(varchar(12), ct.Fecha, 103),    

     Nota = 'CONTRATO #'+c.contrato+' '+c.contratodesc+' '+@CadenatipoVallas,

     Precio = ct.Valor       

    from @keys k join vpContratoCuota ct on k.id = ct.idContratoCuota     

    join vpContrato c on ct.idContrato = c.idContrato        

    order by ct.Fecha     

 --end    

 return


GO
