
--cambiar de master a la compa�ia
use rnpconta


--para saber cual es la compa�ia dentro de la Base de datos que queremos tomar
select * from compania where CompaniaNombre like 'Andr�s %'

--En caso de que hayan compa�ias dentro, para saber cual es el ultimo consecutivo de venta de una compa�ia X
select * from ParamFact where CompaniaId = 38

--Para saber cual es el ultimo consecutivo de facturas de venta de una empresa
select ParamFactConsecutivo from ParamFact where CompaniaId = 60

--en caso de querer ver el ultimo consecutivo
select ParamFactConsecutivo from ParamFact

--cambiar consecutivo a facturas para enviar cuando hacienda da respuesta con error
update facturas set facturasNumero = 255 where facturasId = 422849

----para cambiar el consecutivo y poner el ultimo para que cuando se facture agarre el que sigue
update ParamFact set ParamFactConsecutivo = 255 where CompaniaId = 38

--por aquello que sean varias compa�ias
--where CompaniaId = 15








update Facturas set FacturaEstado = 9, FacturasFeEstado = 0 where  FacturasId = 422849





select * from Compania where CompaniaNombre like '%Andr�s %' 

select ParamFactConsecutivo from ParamFact where CompaniaId = 38

update facturas set facturasNumero = 19 where facturasId = 422859
update facturas set facturasNumero = 20 where facturasId = 422860
update facturas set facturasNumero = 21 where facturasId = 422861
update facturas set facturasNumero = 22 where facturasId = 422879
update facturas set facturasNumero = 23 where facturasId = 422880
update facturas set facturasNumero = 24 where facturasId = 422881
update facturas set facturasNumero = 25 where facturasId = 422882
update facturas set facturasNumero = 26 where facturasId = 422883


update ParamFact set ParamFactConsecutivo = 26 where CompaniaId = 38

update Facturas set FacturaEstado = 9, FacturasFeEstado = 0 where  FacturasId in (
422859,
422860,
422861,
422879,
422880,
422881,
422882,
422883)
