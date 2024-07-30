Use geometrico
-- hacer select para saber si es o no
select * from CompFEProc where CompFEProcId = 398132 
--hacemos un update para cambiarle la fecha
update compfeproc set CompFEProcFechaFactura = '2022-05-18 09:43:00.000' where CompFEProcId = 398132 and CompFEProcComprasDocumento = 120

--se le cambia el consecutivo a la aceptacion
update CompFEProc set CompFEProcComprasDocumento = '121',
CompFEProcRespuestaTrib = '',
CompFEProcEstado = 1,
CompFEProcXmlFirmado = '' 
where CompFEProcId = 388082 and CompFEProcComprasDocumento = '120'

--hacemos un cambio de estado para luego correr la tarea desde el servidor (Hay que ir a correrla en el server 9802)
update CompFEProc set CompFEProcEstado = 1 where CompFEProcId in (398132);

