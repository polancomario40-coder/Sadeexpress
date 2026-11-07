


CREATE OR ALTER PROCEDURE cxpListaBancos

as

  select idCuentaBanco,

	 NumCuenta,

	 idMoneda, 

	 Nombre, idCuentaMayor,UltimoCheque

  from cxpBancos

  order by Nombre

return 0






GO
