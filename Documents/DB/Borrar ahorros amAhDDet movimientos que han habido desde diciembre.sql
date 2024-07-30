use aseamsa
--borra ahorros y luego hay que cargarlos en carga de datos por 
--asociaciones en aporte por fecha de ahorro por deduccion 
--revisar y estar bien seguro de lo que esta haciendo
select * from AmAhDDet

begin tran
delete from AmAhDDet

rollback
commit;
