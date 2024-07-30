--Para eliminar informacion de inventarios

use aseamsa

begin tran
delete from FacturasFacturas2
delete from KardexBodegaMov
delete from KardexBodega
delete from Kardex
select * from Kardex
update Facturas set FacturasInvAfectado = 0
where FacturasFecha > '2022-02-18 23:59:00.000'
rollback
commit

select * from Facturas