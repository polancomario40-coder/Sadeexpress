







CREATE  PROCEDURE [dbo].[nomToBancoACHPopular] ( @NominaId INT )

AS

    DECLARE @Ene TABLE

        (

          IdEne INT IDENTITY(1, 1) ,

          Cadena VARCHAR(320)

        )    



    DECLARE @RNC VARCHAR(15) ,

        @Secuencia INT ,

        @CodigoOperacion VARCHAR(2) ,

        @TotalDebito INT ,

        @MontoDebito NUMERIC(18, 2) ,

        @eMail VARCHAR(40) ,

        @NombreCompania VARCHAR(35) ,

        @NombreArchivo VARCHAR(40) ,

        @NomCodigoParaBanco VARCHAR(5) ,

        @Hasta DATETIME



    EXEC nomNextCounter 'BCOSECUENCIA'



    SET @Hasta = ( SELECT   Hasta

                   FROM     Nomina

                   WHERE    NominaID = @NominaID

                 )



    SET @NomCodigoParaBanco = ISNULL(( SELECT   CONVERT(VARCHAR, Valor)

                                       FROM     Defaults

                                       WHERE    Clave = 'NomCodParaBanco'

                                     ), 'XXXXX')    



    SET @NombreCompania = ( SELECT  Compania

                            FROM    Configuracion

                          )    



    SET @RNC = REPLACE(( SELECT TOP 1

                                RNC

                         FROM   Configuracion

                       ), '-', '')    



    SET @Secuencia = ISNULL(( SELECT    Valor

                              FROM      Contador

                              WHERE     Contador = 'BCOSECUENCIA'

                            ), 1001)   

							 

    SET @CodigoOperacion = ISNULL(( SELECT  CONVERT(VARCHAR, Valor)

                                    FROM    Defaults

                                    WHERE   Clave = 'CodigoOperacion'

                                  ), '32')   

								   

    SET @eMail = ISNULL(( SELECT    CONVERT(VARCHAR, Valor)

                          FROM      Defaults

                          WHERE     Clave = 'eMailParaNomina'

                        ), '****@*****.com')    



    SELECT  @MontoDebito = SUM(x.Neto) ,

            @TotalDebito = COUNT(*)

    FROM    ( SELECT    COUNT(*) AS Cantidad ,

                        SUM(ne.Neto) AS Neto

              FROM      ( SELECT    *

                          FROM      NominaEmp

                          WHERE     NominaId = @NominaId

                                    AND Neto > 0

                        ) AS ne

                        INNER JOIN Empleado em ON ( em.EmpleadoId = ne.EmpleadoId )

                        LEFT OUTER JOIN nomBancoDestino bd ON ( bd.IdBancoDestino = em.IdBancoDestino )

              WHERE     ISNULL(em.NumeroCuenta, '') <> ''

              GROUP BY  em.EmpleadoId

            ) AS x    



    SET @NombreArchivo = ( SELECT   'PE' + @NomCodigoParaBanco + '01'

                                    + REPLICATE('0',

                                                2

                                                - DATALENGTH(CONVERT(VARCHAR(2), MONTH(GETDATE()))))

                                    + CONVERT(VARCHAR(2), MONTH(GETDATE()))

                                    + REPLICATE('0',

                                                2

                                                - DATALENGTH(CONVERT(VARCHAR(2), DAY(GETDATE()))))

                                    + CONVERT(VARCHAR(2), DAY(GETDATE()))

                                    + REPLICATE('0',

                                                7

                                                - DATALENGTH(CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia))))

                                    + CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia))

                                    + 'E.txt'

                         )    



    INSERT  INTO @Ene

            ( Cadena

            )

            SELECT  ( 'N' + @RNC + REPLICATE(' ', 15 - DATALENGTH(@RNC))

                      + REPLICATE('0',

                                  7

                                  - DATALENGTH(CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia))))

                      + CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia))

                      + --Replicate('0', 7 - DataLength(Convert(VarChar(7), Convert(Int, 0)))) + Convert(VarChar(7), Convert(Int, 0)) +    

                      '0000000' + CONVERT(VARCHAR(20), em.NumeroCuenta)

                      + REPLICATE(' ',

                                  20

                                  - DATALENGTH(CONVERT(VARCHAR(20), em.NumeroCuenta)))

                      + ISNULL(em.TipoCuentaDestino, '*') + '214'

                      + -- Moneda Destino Pesos    

                      ISNULL(CONVERT(VARCHAR(8), em.IdBancoDestino), '101010708')

                      + ISNULL(CONVERT(VARCHAR(1), bd.DigitoVerificacion), '8')

                      + ISNULL(@CodigoOperacion, '**') + REPLICATE('0',

                                                              13

                                                              - DATALENGTH(REPLACE(CONVERT(VARCHAR(13), CONVERT(NUMERIC(18,

                                                              2), SUM(av.Neto))),

                                                              '.', '')))

                      + REPLACE(CONVERT(VARCHAR(13), CONVERT(NUMERIC(18, 2), SUM(av.Neto))),

                                '.', '') 

					--+ REPLICATE(' ', 2) + REPLICATE(' ',15)

                    

					  +'CE'                                      

                      + ISNULL(CONVERT(VARCHAR(15), REPLACE(em.cedula, ',','')), ' ')

                      + REPLICATE(' ',15 - DATALENGTH(ISNULL(CONVERT(VARCHAR(15), REPLACE(em.cedula,',', '')), ' ')))



                      + ISNULL(CONVERT(VARCHAR(35), REPLACE(em.Empleado, ',',

                                                            '')), ' ')

                      + REPLICATE(' ',

                                  35

                                  - DATALENGTH(ISNULL(CONVERT(VARCHAR(35), REPLACE(em.Empleado,

                                                              ',', '')), ' ')))

                      + ISNULL('NumReferenci', ' ') + REPLICATE(' ',

                                                              12

                                                              - DATALENGTH(ISNULL('NumReferenci',

                                                              ' ')))

                      + --  IsNull('PAGO AVANCES POR COMISION', ' ') + Replicate(' ', 40 - DataLength(IsNull('PAGO AVANCE POR COMISION', ' '))) +    

                      'PAGO NOMINA                             '

                      + REPLICATE(' ', 4)

                      + CASE WHEN ISNULL(em.TipoNotificacionBanco, ' ') = '0'

                             THEN ' '

                             ELSE ISNULL(em.TipoNotificacionBanco, ' ')

                        END

                      + CASE WHEN ISNULL(em.TipoNotificacionBanco, 0) <> 0

                             THEN CASE WHEN em.TipoNotificacionBanco = 1

                                       THEN ISNULL(em.DireccionNotificacionBanco,

                                                   ' ') + REPLICATE(' ',

                                                              40

                                                              - DATALENGTH(ISNULL(em.DireccionNotificacionBanco,

                                                              ' ')))

                                       ELSE REPLICATE(' ', 40)

                                  END

                             ELSE REPLICATE(' ', 40)

                        END

                      + CASE WHEN ISNULL(em.TipoNotificacionBanco, 0) <> 0

                             THEN CASE WHEN em.TipoNotificacionBanco = 2

                                       THEN ISNULL(em.DireccionNotificacionBanco,

                                                   ' ') + REPLICATE(' ',

                                                              12

    - DATALENGTH(ISNULL(em.DireccionNotificacionBanco,

                                                              ' ')))

                                       ELSE REPLICATE(' ', 12)

                                  END

                             ELSE REPLICATE(' ', 12)

                        END

                      + --  Replicate('0', 2) + El filler que dice en la especificaciones que lo le pongan 0   

  REPLICATE(' ', 2) + REPLICATE(' ', 15) + REPLICATE(' ', 3) + REPLICATE(' ',

                                                              3)

                      + REPLICATE(' ', 3) + REPLICATE(' ', 1) + REPLICATE(' ',

                                                              2)

                      + REPLICATE(' ', 52) ) AS Cadena

            FROM    ( SELECT    *

                      FROM      NominaEmp

                      WHERE     NominaId = @NominaId

                                AND Neto > 0

                    ) AS av

                    INNER JOIN Empleado em ON ( em.EmpleadoId = av.EmpleadoId )

                    LEFT OUTER JOIN nomBancoDestino bd ON ( bd.IdBancoDestino = em.IdBancoDestino )

            WHERE   ISNULL(em.NumeroCuenta, '') <> ''

            GROUP BY em.NumeroCuenta ,

                    em.TipoCuentaDestino ,

                    em.IdBancoDestino ,

                    bd.DigitoVerificacion ,

                    em.Empleado ,

                    em.TipoNotificacionBanco ,

                    em.DireccionNotificacionBanco ,

                    em.TipoNotificacionBanco  ,

					em.cedula  

--------------------    

    SELECT  ( 'H' + @RNC + REPLICATE(' ', 15 - DATALENGTH(@Rnc))

              + ISNULL(CONVERT(VARCHAR(35), @NombreCompania), ' ')

              + REPLICATE(' ',

                          35

                          - DATALENGTH(ISNULL(CONVERT(VARCHAR(35), @NombreCompania),

                                              ' '))) + REPLICATE('0',

                                                              7

                                                              - DATALENGTH(CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia))))

              + CONVERT(VARCHAR(7), CONVERT(INT, @Secuencia)) + '01'

              + CONVERT(VARCHAR(8), @Hasta, 112) + '00000000000'

              + '0000000000000' + REPLICATE('0',

                                            11

                                            - DATALENGTH(CONVERT(VARCHAR(11), CONVERT(INT, @TotalDebito))))

              + CONVERT(VARCHAR(11), CONVERT(INT, @TotalDebito))

              + REPLICATE('0',

                          13

                          - DATALENGTH(REPLACE(CONVERT(VARCHAR(13), CONVERT(NUMERIC(18,

                                                              2), @MontoDebito)),

                                               '.', '')))

              + REPLACE(CONVERT(VARCHAR(13), CONVERT(NUMERIC(18, 2), @MontoDebito)),

                        '.', '') + '000000000000000'

              + CONVERT(VARCHAR(8), GETDATE(), 112)

              + REPLACE(CONVERT(VARCHAR(5), GETDATE(), 108), ':', '')

              + ISNULL(@eMail, ' ') + REPLICATE(' ',

                                                40 - DATALENGTH(ISNULL(@eMail,

                                                              ' '))) + ' '

              + REPLICATE(' ', 136) ) AS Cadena ,

            @NombreArchivo AS NombreArchivo

    UNION

    SELECT  SUBSTRING(Cadena, 1, 23) + REPLICATE('0',

                                                 7

                                                 - DATALENGTH(CONVERT(VARCHAR(7), IdEne)))

            + CONVERT(VARCHAR(7), IdEne) + SUBSTRING(Cadena, 31, 320) ,

            @NombreArchivo

    FROM    @Ene    







