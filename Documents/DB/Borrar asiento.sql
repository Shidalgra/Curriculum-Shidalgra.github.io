--Borrar asiento

begin tran

delete from Mayorizacion where CtMovimientosId = 104747  
delete from CtMovimentosCuentas where CtMovimientosId = 104747  
delete from CtMovimentosImg where CtMovimientosId = 104747  
delete from CtMovimentos where CtMovimientosId = 104747  

rollback;

commit;

