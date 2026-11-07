CREATE OR ALTER PROCEDURE [dbo].[RPTCxc] -- '3346040f-095e-40a3-b577-6f4ded3a766f'
    (  
     @idCxc UNIQUEIDENTIFIER  
    )  
AS  
BEGIN
    SET NOCOUNT ON;

    DECLARE @rncEmisor VARCHAR(20);

    SELECT @rncEmisor = REPLACE(RNC, '-', '')       
    FROM Configuracion;

    SELECT  c.idCxc,  
            c.Cxc,  
            c.idCliente,  
            c.idTipoDocumento,  
            c.Valor,  
            c.Fecha,  
            c.Concepto,  
            c.idCxcTipo,  
            c.esCredito,  
            c.Cancelado,  
            c.Referencia,  
            c.Cliente,  
            c.Usuario,  
            c.idDocumento,  
            c.Descuento,  
            c.Total,  
            c.Condicion,  
            c.Vencimiento,  
            d.idCxcDet,  
            d.Valor AS AplicadoValor,  
            d.Fecha AS AplicacionFecha,  
            d.Descuento AS AplicadoDescuento,  
            d.TotalAplicado AS AplicadoTotal,  
            f.idCxc AS DebitoidCxc,  
            f.Cxc AS DebitoCxc,  
            f.idTipoDocumento AS DebitoidTipoDoc,  
            f.Valor AS DebitoValor,  
            f.Fecha AS DebitoFecha,  
            f.Concepto AS DebitoConcepto,  
            c.CompFiscal,  
            co.Compania,  
            co.Direccion,  
            co.Telefono,  
            co.Fax,  
            co.RNC,  
            ct.CxcTipo,  
            m.Moneda,  
            m2.Moneda AS MonedaFact,  
            ISNULL(f.CompFiscal, ISNULL(c.ncfModificado, '')) AS DebitoNCF,
            ISNULL((SELECT valor FROM ConfiguracionPC pc WHERE pc.NombrePC = c.computer AND pc.Configuracion = 'Sucursaldireccion'), '') AS SUCURSARDireccion,
            ISNULL((SELECT valor FROM ConfiguracionPC pc WHERE pc.NombrePC = c.computer AND pc.Configuracion = 'SucursalTelefono'), '') AS SUCURSARLTelefono,
            c.Itbi,  
            ISNULL(c.ncfModificado, '') AS CompFiscalAplica,
            ISNULL(c.ncfModificado, '') AS ncfModificado, 
            QrUrl = dbo.ecf_buildQR(
                ISNULL(ecf.ncf, c.CompFiscal),
                ISNULL(ecf.TipoNcf, SUBSTRING(c.CompFiscal, 2, 2)),
                co.RNC,
                ISNULL(ecf.DocumentoIdentidad, (SELECT TOP 1 REPLACE(REPLACE(RNC_Cedula, '-', ''), ' ', '') FROM cliente clt WHERE clt.idCliente = c.idCliente)),
                ISNULL(ecf.fecha, c.Fecha),
                ISNULL(c.CodigoSeguridadEcf, ecf.CodigoSeguridadEcf),
                ISNULL(c.FechaFirmaDigital, ecf.FechaFirmaDigital),
                ISNULL(ecf.Total, c.Total)
            ),
            ISNULL(c.CodigoSeguridadEcf, ecf.CodigoSeguridadEcf) AS CodigoSeguridadEcf, 
            ISNULL(c.FechaFirmaDigital, ecf.FechaFirmaDigital) AS FechaFirmaDigital
    FROM    Cxc c  
            INNER JOIN CxcTipo ct ON (c.idCxcTipo = ct.idCxcTipo)  
            INNER JOIN Moneda m ON c.idMoneda = m.idMoneda  
            LEFT JOIN ECFWorker..ecf_comprobante ecf ON c.idCxc = ecf.Referencia  
            LEFT JOIN CxcDet d ON c.idCxc = d.idCxc  
            LEFT JOIN Cxc f ON d.idCxcDebito = f.idCxc  
            LEFT JOIN Moneda m2 ON f.idMoneda = m2.idMoneda  
            CROSS JOIN Configuracion co  
    WHERE   c.idCxc = @idCxc;
END
GO
