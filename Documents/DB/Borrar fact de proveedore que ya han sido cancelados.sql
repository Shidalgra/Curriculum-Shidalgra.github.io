--Borrar facturas de proveedores que ya han sido canceladas
use aseamsa

--No descomentar el delete entonces agarro el select desde arriba para ver si existe, luego
--Si existe y estoy seguro de lo que voy a hacer entonces omito el select y los dos guines, agarro desde el
--delete y borramos, luego vuelvo a repetir el procedimiento

select * 
--delete
from Cxp where CxpIdDoc = '04200029010000005895'

