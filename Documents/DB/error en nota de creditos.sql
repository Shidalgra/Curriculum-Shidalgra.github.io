
use msc

select * from FEProc order by FEProcId desc
select * from FEProc where FEProcNCDFacturasId in (116,117)

select * from NCDFacturasNCDFacturasDetalle where NCDFacturasId in (116,117)

select * from FacturasFacturas1 where FacturasId = 15326




-- pasar facturas a estado de error para volverlas a enviar
update Facturas set FacturasFeEstado = 5 where facturasid in (15349,15350,15351,15352) 


-- pasar Nota de credito a error para enviarlas generando un nuevo consecutivo
update FEProc set FEProcEstado = 5 where FEProcNCDFacturasId in (116,117) 


