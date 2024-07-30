use aseamsa;
-- Para Cambiar el estado de un recibo que no mata un credito...

--recordemos que el credito se revisa en "solicitud de credito",
--en "pagos manuales" del credito que esta teniendo problemas revisamos
--si esta en pendiente o no...

--intentamos ir al recibo de caja y desconfirmarlo y darle a regenerar asientos
--si no deja por que el mes esta cerrado entonces ingresamos al SQL y hacemos el select para luego hacer el update
select * from AmCrDDetalle where AmCrDId = 480827 and AmCrDDetDoc = 'Rec-30088'

update AmCrDDetalle set AmCrDPagoEstado = 1 where AmCrDId = 480827 and AmCrDDetDoc = 'Rec-30088';
