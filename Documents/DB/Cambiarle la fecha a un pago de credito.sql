use asostia

select * from AmCrDDetalle where AmCrDDetDoc = 'DSC-1111'


update AmCrDDetalle set AmCrDDetFecha = '2022-01-28 00:00:00.000' where AmCrDDetDocDep = 'DSC-1111' and AmCrDId = 88663