use asocatie

select * from Vendedor

select * from Facturas where FacturasId = 293264

begin tran

update Facturas set VendedorId = 16 where FacturasId = 293264

Rollback;

commit;
