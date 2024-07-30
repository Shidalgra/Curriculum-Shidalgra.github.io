use rnpconta

---------------------Factura----------------------------------
-- sin cobrar __________________________________________	3
-- Actualizada	________________________________________    1
-- Anulada (NC completa rechazada por hacienda) ________	2
-- Sin actualizar ______________________________________	4
-- Act sin inv _________________________________________	5
-- Proforma ____________________________________________	6
-- Formalizada _________________________________________	7
-- Vacio _______________________________________________	0
-- Pendiente ___________________________________________	0
-- Anulada _____________________________________________	8
-- Por liberar _________________________________________	10
-- Contingencia ________________________________________	11

-----------------------FeProc---------------------------------
-- Pendiente ___________________________________________	1
-- Firmado _____________________________________________    2
-- Enviado _____________________________________________	3
-- Recibido exitoso ____________________________________	4
-- Con error ___________________________________________	5
-- Con error reemplada _________________________________	6
-- Interna no electronica ______________________________	7

--cuando es solo 1
update FEProc set FEProcEstado = 5 where  FacturasId = 381748
update Facturas set FacturaEstado = 1, FacturasFeEstado = 5 where  FacturasId = 381748

-- cuando son varias----------------------------------------------------------------
update FEProc set FEProcEstado = 5 where  FacturasId in (
381748,
422748,
422765,
422766,
422768,
422814,
422815,
422817,
422823,
422840,
422841)

update Facturas set FacturaEstado = 1, FacturasFeEstado = 5 where  FacturasId in (
381748,
422748,
422765,
422766,
422768,
422814,
422815,
422817,
422823,
422840,
422841)
------------------------------------------------------------------------------------------


select * from FEProcBit order by FEProcBitFecha desc


select * from Compania
select * from Facturas where FacturasId = 277826


--							Pendiente				null

update Facturas set FacturaEstado = 9, FacturasFeEstado = 0 where  FacturasId=267701
