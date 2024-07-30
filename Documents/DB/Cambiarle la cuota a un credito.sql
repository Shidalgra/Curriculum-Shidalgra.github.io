


select * from AmDst
select * from AmLiqDisp
select * from AmLiq
select * from AmCrDGt
select * from AmCrDFechas
select * from AmCrDArch
select * from AmCrDBit
select * from AmCrDDetalle

select * from AmCrD where AmCrDCuotaV = 77878.37 -----para cambiarle la cuota a un credito
begin tran
update AmCrD set AmCrDCuotaV = 77878.37 where AmCrDConsec = 443 and AmCrDId = 67983
commit
select * from AmAsoc1 where AmAsocNombres = 'MARIO ADOLFO MARIN ALVARADO'


AmAsocNDOC 302620013
AmAsocId   2365