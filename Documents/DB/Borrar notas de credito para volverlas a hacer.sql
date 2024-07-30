use msc
--para borrar la nota de credito debemos saber cuales son los codigos de cada uno en general tienen un detalle, ese dellate casi
--siempre es el mismo de  la factura, estar seguro antes

select * from NCDFacturasNCDFacturasDetalle where NCDFacturasid = 200762

delete from NCDFacturasNCDFacturasDetalle where NCDFacturasId = 200762
delete from NCDFacturas where NCDFacturasId = 200762



-- borrar el FeProcId que tiene el registro
select * from FEProc where FEProcNCDFacturasid = 200762

delete FEProcBit where FEProcId = 370249
delete FEProc where FEProcId = 370249


-- por aparte luego cambiar la fact que tiene la nota de credito


begin tran
-- hace que la factura ya no tenga la nota de credito 
update Facturas set FacturaEstado = 1 where FacturasId = 409740

rollback;
commit;

--para ver si tienen alguna nota de credito y si fuera el caso del tema borrarlo
select * from cxp where CxpIdDoc = '15667'

delete Cxp where CxpId = 23996


