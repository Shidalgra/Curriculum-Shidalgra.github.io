use rnpconta

select FacturasId, FacturasNumero, FacturasFecha, FacturasFeEstado from Facturas where FacturasId = 485566


update Facturas set FacturaEstado = 9, FacturasFeEstado = 0 where  FacturasId=392008



--cambiar estado de factura para que vuelva a enviar a hacienda agarrar el codigo interno del sistema
