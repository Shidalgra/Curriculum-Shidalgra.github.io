use asoecct

select * from Recibo where ReciboFecha >= '2020-01-01 00:00:00.000' and ReciboFecha <= '2020-12-31 00:00:00.000'
select * from Recibo where ReciboFecha >= '2021-01-01 00:00:00.000' and ReciboFecha <= '2021-12-31 00:00:00.000'



select * from AmCrDDetalle where AmCrDDetObservacion = 'Desembolso inicial del cr�dito'

select AmCrDId, AmCrDDetFechaR , AmCrDDetalleSaldo ,AmCrDDetObservacion from AmCrDDetalle
inner join AmAsoc1
on AmCrDId = AmAsocId 
where AmCrDDetObservacion = 'Desembolso inicial del cr�dito'

select * from AmAsoc1


