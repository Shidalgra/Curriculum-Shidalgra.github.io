--para ver todos los movimientos de los asientos
--claro acomodar las fechas de mas abajo
use rnpconta  

select 
	(select top 1 M.CtMovimientosId from Mayorizacion M where M.CtMovimientosId = CTM.CtMovimientosId) as Mayorizado, 
	CTM.CtMovimientosId, 
	(select C.CompaniaId from CtMovimentos C where C.CtMovimientosId = CTM.CtMovimientosId) as Compania,
	CTM.CtMovimientosFecha,
	(select C.ComprobanteNombre from Comprobante C where C.ComprobanteId = CTM.ComprobanteId) as Origen,
	(select count(C.CtMovimientosId) from CtMovimentosCuentas C where C.CtMovimientosId = CTM.CtMovimientosId) as CantLineas
from CtMovimentos CTM 
	where CtMovimientosFecha < '2021-05-01 00:00:00.000' 
	and CtMovimientosFecha >= '2021-04-01 00:00:00.000' 
	and (select top 1 M.CtMovimientosId from Mayorizacion M where M.CtMovimientosId = CTM.CtMovimientosId) is null