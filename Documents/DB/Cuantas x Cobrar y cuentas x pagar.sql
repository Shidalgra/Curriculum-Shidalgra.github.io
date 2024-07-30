use rnpconta

select * from terceros where CompaniaId = 47

select * from Compania where CompaniaNombre like '%Aire%'

select * from cxp where CompaniaId = 47 and CxpCategoria = 'CXP' and CxpIdDoc = '00600006010000023620'
select * from cxp where CompaniaId = 47 and CxpCategoria = 'CXP' and CxpIdDoc = ''
select * from cxp where CompaniaId = 47 and CxpCategoria = 'CXP' and CxpIdDoc = ''
select * from cxp where CompaniaId = 47 and CxpCategoria = 'CXP' and CxpIdDoc = ''

select * from cxp where CompaniaId = 47 and CxpCategoria = 'CXP' and CxpFecha < '2022-05-31' and CxpFecha > '2021-01-01' order by CxpFecha asc


select * from Terceros where CompaniaId = 47 and TerceroId = 9

begin tran
update cxp set CxpValcre = 33900.00 where CompaniaId = 47 and CxpCategoria = 'CXC' and CxpIdDoc = '1987' and CxpId = 90575 and CxpLlaveId = 759558
--update cxp set CxpValcre = 0 where CompaniaId = 47 and CxpCategoria = 'CXC' and CxpIdDoc = '1934' and CxpId = 68730 and CxpLlaveId = 70539
--update cxp set CxpValcre = 0 where CompaniaId = 47 and CxpCategoria = 'CXC' and CxpIdDoc = '1934' and CxpId = 68739 and CxpLlaveId = 70544

rollback;
commit;

--update cxp set CxpValdeb = 570.65 where CompaniaId = 47 and CxpCategoria = 'CXC' and CxpIdDoc = '2314' and CxpId = 84703 and CxpLlaveId = 412268 and CxpUsuario = 'PNAVARRO'

delete from cxp where CompaniaId = 47 and CxpCategoria = 'CXC' and CxpIdDoc = '2214' and CxpId = 86814 and CxpLlaveId = 759531


