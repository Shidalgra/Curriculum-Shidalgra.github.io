use independientes;

--para borrar las cuentas contables se tiene que hacer desde SQL
--se selecciona la empresa a la que se le van a borrar las cuentas contables
--se hace un 
--select * from Compañia
--aqui revisamos cual es el id de la compañia
--luego se hace un delete a los que uno necesita borrar ejemplo "terceros" o ejemplo "Cuentas"
--OJO tener mucho cuidado con el id de la Compañia... es peligroso que se borre algun otro dato 

select * from Compania
select * from Caja
select * from CuentasOtros
select * from Contrapartidas where CompaniaId = 11
select * from ReciboRecibo1


begin tran

update AmGt set CuentasId = '1' where CompaniaId = 11
update ReciboRecibo1 set CuentasId = '1' where CompaniaId = 11
delete from MovBanco where CompaniaId = 11
delete from AmDstBco where DestCompaniaId = 11
update Bancos set BancosCuentaId = '1' where CompaniaId = 11
delete from CuentasOtros where CompaniaId = 11
delete from cuentas where CompaniaId = 11 and CuentasId <> '1'


rollback
commit;
