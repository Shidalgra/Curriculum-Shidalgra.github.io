use asetropical

--al where CompFEProcId se le pone el numero de consecutivo interno el cual obtenemos al
--darle al boton visualizar y convertir en factura
update CompFEProc set CompFEProcClave = '50611052200310276907800100001080000000108100000108',
CompFEProcComprasDocumento = '80000000108100000108',
CompFEProcRespuestaTrib = '',
CompFEProcEstado = 1,
CompFEProcXmlFirmado = '' 
where CompFEProcId = 90770 and CompFEProcComprasDocumento = '485'


------------------------------------------------------------------------------------------------------------------
--se le cambia el numero de consecutivo en este ejemplo es 1711
select * from Compras where ComprasDocumento = '1720' and ComprasId = 257050

--este se usa solo si el de arriba da resultado en este update se le pone el mismo numero de arriba
--se le pone aqui abajo se le pone el mismo where del select anterior
update compras set ComprasDocumento = '1720' where ComprasDocumento = '1711' and ComprasId = 257050
-------------------------------------------------------------------------------------------------------------------------

use asetropical

select * from Compania

select * from CompFEProc where CompFEProcId = 90770
 
-------------------------------------------------------------------------------------------------------------------------

use geometrico

select * from CompFEProc where CompFEProcComprasDocumento = '107'
select * from CompFEProc where CompFEProcComprasDocumento = '111'





50611052200310276907800100001080000000108100000108			 
							  80000000108100000108
