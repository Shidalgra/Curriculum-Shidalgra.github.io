--Cuando es una sola compañia
use grupola


select * from Compania
--paso #1 se revisa las notas de credito en el sistema (Ultimo consecutivo)
--paso #2 selecciona la nota con error y le damos al boton "Visualizar" se copia el consecutivo interno ("llave")
--paso #3 se pega en where NCDFacturasId = 120654
--paso #4 nos vamos al sistema se escoge la nota de credito con error y se regenera con el boton ("Generar comprobante electronico")

--depende de la compañia se cambia lo que corresponda
select max(NCDFacturasNumero) from NCDFacturas  --para sacar el ultimo consecutivo

--comprobar si el consecutivo esta disponible
select * from NCDFacturas where NCDFacturasNumero = 1858

--si queremos ver un detalle de una Nota de credito entonces vemos por el detalle el id 
--lo tomamos de la llave que tiene al visualizar la nota 

select * from NCDFacturasNCDFacturasDetalle where NCDFacturasid = 100926

-- 41 es el consecutivo y 150760 es la llave, cambiar los campos con los respectivos valores
select * from NCDFacturas where NCDFacturasNumero = 841 and NCDFacturasId = 100926

begin tran
--para cambiarle el consecutivo a la nota de credito, para volverla a procesar en este caso el ultimo en el sistema es el 195
--entonces seria el 196 el que se pone

-- revisar el ultimo consecutivo en visualizar CONSECUTIVO Cuando es una sola compañia 
update NCDFacturas set NCDfacturasNumero = 854
where  NCDFacturasNumero = 847 and NCDFacturasId = 100932 
--se puede correr sin el begin tran si se esta seguro de lo que se esta haciendo

--OJO Importante
--darle a boton generar comprobante electronico antes de enviarla en el server


------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
--Cuando son mas de una compañia
use rnpconta

select * from Compania where CompaniaNombre like 'Sara %'



select * from NCDFacturas where FacturasId = 422858

--150768

select * from NCDFacturasNCDFacturasDetalle where NCDFacturasId = 150768


--para ver cual es el maximo consecutivo de la compañia seleccionada
select max(NCDFacturasNumero) from NCDFacturas N
join Facturas F on F.FacturasId = N.FacturasId
where F.FacturasCompaniaId = 60

--darle un select para ver a que se le va a cambiar el consecutivo
select * from NCDFacturas N
join Facturas F on F.FacturasId = N.FacturasId 
where F.FacturasCompaniaId = 60
and N.NCDFacturasId = 150769

--Hacerle el cambio
update N set N.NCDFacturasNumero = 51 from NCDFacturas N
join Facturas F on F.FacturasId = N.FacturasId 
where F.FacturasCompaniaId = 60
and
N.NCDFacturasId = 150769

------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------




rollback

commit


select * from Compania where CompaniaId	= 50


