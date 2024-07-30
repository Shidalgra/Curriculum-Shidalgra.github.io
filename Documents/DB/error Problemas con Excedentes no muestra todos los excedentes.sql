use aseincae

--Alejandra Maria Abarca Soto
select * from AmAsoc1
where AmAsocNDoc='112680266'

select * from AmExced
where AmAsocId=2210
and AmExcedFechaFin>'2022-01-01'
and AmExcedFechaFin<='2022-05-31'

select SUM(AmExcedBruto) from AmExced
where AmAsocId=2210
and AmExcedFechaFin>'2022-01-01'
and AmExcedFechaFin<='2022-05-31'


--Jorge Arturo Acevedo Montero
select * from AmAsoc1
where AmAsocNDoc='117270824'

select * from AmExced
where AmAsocId=2409
and AmExcedFechaFin>'2022-01-01'
and AmExcedFechaFin<='2022-05-31'

select SUM(AmExcedBruto) from AmExced
where AmAsocId=2409
and AmExcedFechaFin>'2022-01-01'
and AmExcedFechaFin<='2022-05-31'




--Alexander Aguilar Rodriguez
select * from AmAsoc1
where AmAsocNDoc='109450092'

select * from AmExced
where AmAsocId=2211
and AmExcedFechaFin>'2022-01-01'
and AmExcedFechaFin<='2022-05-31'

select SUM(AmExcedBruto) from AmExced
where AmAsocId=2211
and AmExcedFechaFin>'2022-01-01'
and AmExcedFechaFin<='2022-05-31'