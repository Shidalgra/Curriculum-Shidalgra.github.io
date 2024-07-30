--CAMBIARLE EL ESTADO A FACT COMPRA REGIMEN SIMPLIFICADO

use rnpconta
--cuando una factura de compra cambiar estado a recibido exitoso
select * from CompFEProc where  CompFEProcId in (371050, 371051)

update CompFEProc set CompFEProcEstado = 4 where CompFEProcId in (371050, 371051);

--una fact de venta para cambiar a recibido exitosos una factura que ya esta recibida

select * from Facturas where FacturasId = 402060

update Facturas set FacturasFeEstado = 4 where FacturasId = 402060

