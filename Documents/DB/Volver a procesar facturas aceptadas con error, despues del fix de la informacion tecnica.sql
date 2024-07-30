use geometrico


-- primero hacer uso de la compañia a la cual vamos a trabajar, luego hacemos un select del numero de 
--fact aceptada y el numero interno que lo vemos en visualizar y convertir en factura...
select * from CompFEProc where CompFEProcComprasDocumento = '0239' and CompFEProcId = 388082

--le hacemos un update despues de hacer un select a ver cual es el ultimo numero consecutivo, ejemplo
-- si estamos viendo la 0239.. entonces vemos si la 0240 esta disponible sino buscamos cual es la que sigue
select * from CompFEProc where CompFEProcComprasDocumento = '0239'

--despues de encontrar cual es la que sigue entonces lo ponemos en set set CompFEProcComprasDocumento = '0239'
--en el where le ponemos el CompFEProcId interno que mencione atras y el CompFEProcComprasDocumento que tiene
--en este momento
update CompFEProc set CompFEProcComprasDocumento = '0239',
CompFEProcRespuestaTrib = '',
CompFEProcEstado = 1,
CompFEProcXmlFirmado = '' 
where CompFEProcId = 388082 and CompFEProcComprasDocumento = '0234'


