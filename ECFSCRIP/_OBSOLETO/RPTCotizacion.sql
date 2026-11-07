



--select * from cotizacion order by fecha desc

--[RPTCotizacion] '0CB6A1EE-FF6C-4F0D-87D1-CABAE1FAF005'



create PROCEDURE [dbo].[RPTCotizacion]

    (

     @idCotizacion UNIQUEIDENTIFIER

    )

AS

    DECLARE @RptCotizacion TABLE

        (

         IdCotizacion UNIQUEIDENTIFIER,

         Cotizacion VARCHAR(16),

         IdCotizacionStatus VARCHAR(32),

         CotizacionStatus VARCHAR(50),

         RNC_Cedula VARCHAR(20),

         Cliente VARCHAR(200),---------

         Email VARCHAR(100),

         IdVendedor INT,

         Contacto VARCHAR(200),

         Direccion VARCHAR(500),--------

         Sector VARCHAR(100),

         Ciudad VARCHAR(100),

         Telefono VARCHAR(20),

         Celular VARCHAR(29),

         SolicitadoPor VARCHAR(100),

         Empleado VARCHAR(80),

         TelefonoEmpleado VARCHAR(20),

         Fecha DATETIME,

         Referencia VARCHAR(50),

         Cancelado BIT,

         Credito BIT,

         Condicion VARCHAR(30),

         SubTotal NUMERIC(18, 2),

         Itbis NUMERIC(18, 2),

         Descuento NUMERIC(18, 2),

         Total NUMERIC(18, 2),

         Nota VARCHAR(2000),

         ValidoHasta DATETIME,

         IdClienteObra VARCHAR(50),----------

         IdMoneda INT,

         Moneda VARCHAR(20),

         IdCotizacionDet UNIQUEIDENTIFIER,

         DetIdProducto VARCHAR(25),

         DetProducto VARCHAR(120),

         DetCantidad NUMERIC(18, 2),

         DetPrecio NUMERIC(18, 2),

         DetServicioBombeo NUMERIC(18, 2),

         DetDescuento NUMERIC(18, 2),

         detDescuentoAdd DECIMAL(19, 2),

         detPrecioNeto DECIMAL(19, 2),

         DetItbis NUMERIC(18, 2),

         DetLineTotal NUMERIC(18, 2),

         NetLineTotal DECIMAL(19, 2),

         Dias INT,

         PrecioDia NUMERIC(18, 2),

         Especificacion VARCHAR(3000),

         coCompania VARCHAR(200),

         coDireccion VARCHAR(200),

         coTelefono VARCHAR(15),

         coFax VARCHAR(15),

         coEmail VARCHAR(100),

         coRNC VARCHAR(20),

         Fax VARCHAR(25),

         Linea INT,

         NumeroSuplidor VARCHAR(16),

         IdUnidad VARCHAR(16),

         SecuenciaDet INT IDENTITY(1, 1),

         Usuario VARCHAR(100),

         DireccionObra VARCHAR(500),

         SectorObra VARCHAR(100),

         TelefonoObra VARCHAR(10),

         Foto IMAGE,

         NotaReferencia VARCHAR(2000),

         CotizadoPor VARCHAR(100)

        )

	

    INSERT  INTO @RptCotizacion

            (IdCotizacion,

             Cotizacion,

             idCotizacionStatus,

             CotizacionStatus,

             RNC_Cedula,

             Cliente,

             EMail,

             IdVendedor,

             Contacto,

             Direccion,

             Sector,

             Ciudad,

             Telefono,

             Celular,

             SolicitadoPor,

             Empleado,

             TelefonoEmpleado,

             Fecha,

             Referencia,

             Cancelado,

             Credito,

             Condicion,

             SubTotal,

             Itbis,

             Descuento,

             Total,

             Nota,

             ValidoHasta,

             idClienteObra,

             idMoneda,

             Moneda,

             IdCotizacionDet,

             DetIdProducto,

             DetProducto,

             DetCantidad,

             DetServicioBombeo,

             DetPrecio,

             DetDescuento,

             detPrecioNeto,

             detDescuentoAdd,

             DetItbis,

             DetLineTotal,

             NetLineTotal,

             Dias,

             PrecioDia,

             Especificacion,

             coCompania,

             coDireccion,

             coTelefono,

             coFax,

             coEmail,

             coRNC,

             Fax,

             Linea,

             NumeroSuplidor,

             IdUnidad,

             Usuario,

             DireccionObra,

             SectorObra,

             TelefonoObra,

             NotaReferencia,

             CotizadoPor

	        )

            SELECT  c.idCotizacion,

                    c.Cotizacion,

                    cs.idCotizacionStatus,

                    cs.CotizacionStatus,

                    cl.RNC_Cedula,

                    CONVERT(VARCHAR(8), c.idCliente) + ' - ' + c.Cliente AS Cliente,

                    c.eMail,

                    c.idEmpleado AS idVendedor,

                    c.Contacto,

                    c.Direccion,

                    c.Sector,

                    c.Ciudad,

                    c.Telefono,

                    cl.Beeper,

                    c.SolicitadoPor,

                    e.Empleado,

                    e.Telefono,

                    c.Fecha,

                    c.Referencia,

                    c.Cancelado,

                    c.Credito,

					cl.idCondicion as condicion,

                    --(CASE WHEN c.Condicion <> 0 THEN 'CREDITO' ELSE 'CONTADO' END) AS Condicion,

                    c.SubTotal,

                    c.Itbis,

                    c.Descuento,

                    c.Total,

                    c.Nota,

                    c.ValidoHasta,

                    c.idClienteObra,

                    m.idMoneda,

                    m.Moneda,

                    cd.idCotizacionDet,

                    cd.idProducto AS DetidProducto,

                    cd.Producto AS DetProducto,

                    cd.Cantidad AS DetCantidad,

                    cd.ServicioBombeo AS DetServicioBombeo,

                    cd.Precio AS DetPrecio,

                    cd.Descuento AS DetDescuento,

                    DetPrecioNeto = CASE WHEN cd.Cantidad > 0

                                         THEN cd.Precio - (cd.Descuento

                                                           / cd.Cantidad)

                                         ELSE 0.00

                                    END,

                    cd.DescuentoAdd AS DetDescuentoAdd,

                    cd.Itbis AS DetITBIS,

                    cd.LineTotal AS DetLineTotal,

                    cd.LineTotal + (cd.Itbis) AS NetLineTotal,

                    cd.dias,

                    cd.PrecioDia,

                    LEFT(Esp.Especificacion, 2000),

                    co.Compania AS coCompania,

                    co.Direccion AS coDireccion,

                    co.Telefono AS coTelefono,

                    co.Fax AS coFax,

                    co.Email AS coEmail,

                    co.RNC AS coRNC,

                    c.Fax,

                    cd.Linea,

                    cl.NumeroSuplidor,

                    cd.idUnidad,

                    c.Usuario,

                    clo.DireccionObra,

                    clo.SectorObra,

                    clo.TelefonoObra,

                    c.NotaReferencia,

                    c.CotizadoPor

            FROM    dbo.Cotizacion c

                    INNER JOIN Moneda m ON c.idMoneda = m.idMoneda

                    INNER JOIN dbo.CotizacionDet cd ON c.idCotizacion = cd.idCotizacion

                    INNER JOIN Cliente cl ON (cl.idCliente = c.idCliente)

                    LEFT JOIN FacturaDetEspec Esp ON cd.idCotizacionDet = Esp.idFacturaDet

                    INNER JOIN dbo.CotizacionStatus cs ON c.idCotizacionStatus = cs.idCotizacionStatus

                    LEFT JOIN dbo.svEmpleado e ON c.idEmpleado = e.idEmpleado

                    CROSS JOIN dbo.Configuracion co --ON c.idCompania = co.idCompania     

                    LEFT JOIN ClienteObra clo ON clo.idClienteObra = c.idClienteObra

            WHERE   (c.idCotizacion = @idCotizacion)

            ORDER BY cd.Linea

	

    SELECT  IdCotizacion,

            Cotizacion,

            IdCotizacionStatus,

            CotizacionStatus,

            RNC_Cedula,

            Cliente,

            Email,

            Contacto,

            Direccion,

            Sector,

            Ciudad,

            Telefono,

            Celular,

            SolicitadoPor,

            Empleado,

            TelefonoEmpleado,

            Fecha,

            Referencia,

            Cancelado,

            Credito,

            Condicion,

            SubTotal,

            Itbis,

            Descuento,

            Total,

            Nota,

            ValidoHasta,

            IdClienteObra,

            IdMoneda,

            Moneda,

            IdCotizacionDet,

            DetIdProducto,

            DetProducto,

            DetCantidad,

            DetPrecio,

            DetDescuento,

            detDescuentoAdd,

            DetServicioBombeo,

            PrecioNeto = DetPrecio - ((DetDescuento + detDescuentoAdd)

                                      / DetCantidad),

            CASE WHEN DetLineTotal > 0

                 THEN (DetDescuento / DetLineTotal) * 100.00

                 ELSE 0.00

            END AS DetPorcDescuento,

            CASE WHEN DetLineTotal > 0

                 THEN (detDescuentoAdd / (DetLineTotal - DetDescuento))

                      * 100.00

                 ELSE 0.00

            END AS DetPorcDescuentoAdd,

            DetNeto = DetLineTotal - (DetDescuento + detDescuentoAdd),

            DetItbis,

            DetLineTotal,

            Dias,

            PrecioDia,

            Especificacion,

            coCompania,

            coDireccion,

            coTelefono,

            coFax,

            coEmail,

            coRNC,

            Fax,

            SecuenciaDet AS Linea,

            NumeroSuplidor,

            IdUnidad,

            NetLineTotal,

            Usuario,

            DireccionObra,

            SectorObra,

            TelefonoObra,

            Foto,

            NotaReferencia,

            CotizadoPor

    FROM    @RptCotizacion





