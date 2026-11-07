CREATE OR ALTER PROCEDURE CxcEstadoCuentaDetallado(@FechaAl DateTime,

					  @IdClienteParametro Int,

					  @IdMoneda Int,

 					  @PorVencimiento Bit)

AS

Declare

  @IdCxc UniqueIdentifier,

  @Cxc   VarChar(20),

  @Fecha DateTime,

  @Vencimiento DateTime,

  @IdTipoDocumento VarChar(2),

  @Total Numeric(18,2),

  @Balance Numeric(18,2),

  @DocumentoCredito VarChar(20),

  @IdTipoDocumentoCredito VarChar(2),

  @FechaCredito DateTime,

  @TotalCredito Numeric(18,2),

  @Documento VarChar(20),

  @IdCliente Int,

  @Cliente VarChar(60)



Declare

  @Tabla Table (Id Int Identity (1,1),

                IdCxc UniqueIdentifier,

                Cxc   VarChar(20),

                Fecha DateTime,

	        Vencimiento DateTime,

 		IdTipoDocumento VarChar(2),

		Total Numeric(18,2),

		Balance Numeric(18,2),

--		DocumentoCredito VarChar(20),

-- 		IdTipoDocumentoCredito VarChar(2),

--		FechaCredito DateTime,

--		TotalCredito Numeric(18,2)),

-- 		Documento VarChar(20),

 		IdCliente Int,

		Cliente VarChar(60),

                BalanceAPresentar Numeric(18,2),

                FechaACalcular DateTime)



Declare

  @DocActual UniqueIdentifier





Declare

  docCursor Cursor For

SELECT

  cx.IdCxc,

  cx.Cxc,

  cx.Fecha,

  cx.Vencimiento,

  cx.IdTipoDocumento,

  cx.Total,

  dbo.cxcBalanceDocumentoReal(cx.IdCxc, @FechaAl) As Balance,

  IsNull(cc.Cxc, '*') As DocumentoCredito,

  cc.IdTipoDocumento As IdTipoDocumentoCredito,

  cd.Fecha As FechaCredito,

  cd.TotalAplicado As TotalCredito,

  cx.IdTipoDocumento + cx.Cxc As Documento,

  cl.IdCliente,

  cl.Cliente

FROM

  Cxc     cx                                  Inner Join

  Cliente cl On (cl.IdCliente = cx.IdCliente) Inner Join

  CxcTipo ct On (ct.IdCxcTipo = cx.IdCxcTipo) Left Outer Join

  CxcDet  cd On (cd.IdCxcDebito = cx.IdCxc)   Left Outer Join

  Cxc     cc On (cc.IdCxc = cd.IdCxc)

WHERE

  cx.Cancelado = 0 AND

  cx.IdCliente = @IdClienteParametro AND

  ct.EsCredito = 0 AND

  cx.IdMoneda = @IdMoneda AND

  dbo.cxcBalanceDocumentoReal(cx.IdCxc, @FechaAl) > 0

ORDER BY

  cx.Fecha Asc,

  IsNull(cd.Fecha, GetDate()) Asc



Open

  docCursor



Fetch Next From docCursor Into

  @IdCxc,

  @Cxc,

  @Fecha,

  @Vencimiento,

  @IdTipoDocumento,

  @Total,

  @Balance,

  @DocumentoCredito,

  @IdTipoDocumentoCredito,

  @FechaCredito,

  @TotalCredito,

  @Documento,

  @IdCliente,

  @Cliente



Set

  @docActual = NewId()



While @@Fetch_Status = 0

Begin

  If @docActual = @IdCxc

  Begin

    Insert Into @Tabla (IdCxc, IdCliente, Cliente, Cxc, IdTipoDocumento, Fecha, Total)

    Values (@IdCxc, @IdCliente, @Cliente, @DocumentoCredito, @IdTipoDocumentoCredito, @FechaCredito, (@TotalCredito * -1))

  End

  Else

  Begin

    Insert Into @Tabla (IdCxc, IdCliente, Cliente, Cxc, Fecha, Vencimiento, IdTipoDocumento, Total, Balance)

    Values (@IdCxc, @IdCliente, @Cliente, @Cxc, @Fecha, @Vencimiento, @IdTipoDocumento, @Total, @Balance)

    If @DocumentoCredito <> '*'

    Begin

      Insert Into @Tabla (IdCxc, IdCliente, Cliente, Cxc, IdTipoDocumento, Fecha, Total)

      Values (@IdCxc, @IdCliente, @Cliente, @DocumentoCredito, @IdTipoDocumentoCredito, @FechaCredito, (@TotalCredito * -1))

    End

  End

  Set

    @docActual = @IdCxc





  Fetch Next From docCursor Into

    @IdCxc,

    @Cxc,

    @Fecha,

    @Vencimiento,

    @IdTipoDocumento,

    @Total,

    @Balance,

    @DocumentoCredito,

    @IdTipoDocumentoCredito,

    @FechaCredito,

    @TotalCredito,

    @Documento,

    @IdCliente,

    @Cliente

End



Declare

  @IdCxcGrupo UniqueIdentifier,

  @Bal Numeric(18,2),

  @Id Int,

  @Fec DateTime



Declare

  IdCxcCursor Cursor For

SELECT

  IdCxc

FROM

  @Tabla

GROUP BY

  IdCxc



Open

  IdCxcCursor



Fetch Next From IdCxcCursor

  Into @IdCxcGrupo 



While @@Fetch_Status = 0

Begin

  Set
    @Bal = (Select Top 1 Balance From @Tabla Where IdCxc = @IdCxcGrupo Order By Id Asc)

  Set

    @Id = (Select Max(Id) From @Tabla Where IdCxc = @IdCxcGrupo)

  Set

    @Fec = (Select Top 1 Case When @PorVencimiento = 1 Then Vencimiento Else Fecha End From @Tabla Where IdCxc = @IdCxcGrupo Order By Id Asc)



  Update

    @Tabla

  Set

    BalanceAPresentar = @Bal,

    FechaACalcular = @Fec

  Where

    Id = @Id



  Fetch Next From IdCxcCursor

    Into @IdCxcGrupo 

End



SELECT

  *,

  Case 

    When DateDiff(Day, FechaACalcular, @FechaAl) Between -30 And 0 Then

       BalanceAPresentar

    Else

      0

  End As Escala1,

  Case 

    When DateDiff(Day, FechaACalcular, @FechaAl) Between 1 And 30 Then

       BalanceAPresentar

    Else

      0

  End As Escala2,

  Case 

    When DateDiff(Day, FechaACalcular, @FechaAl) Between 31 And 60 Then

       BalanceAPresentar

    Else

      0

  End As Escala3,

  Case 

    When DateDiff(Day, FechaACalcular, @FechaAl) Between 61 And 90 Then

       BalanceAPresentar

    Else

      0

  End As Escala4,

  Case 

    When DateDiff(Day, FechaACalcular, @FechaAl) > 91 Then

       BalanceAPresentar

    Else

      0

  End As Escala5

FROM

  @Tabla



Close

  IdCxcCursor

Deallocate

  IdCxcCursor



Close

  docCursor

Deallocate

  docCursor




GO
