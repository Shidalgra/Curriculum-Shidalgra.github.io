use Versatec

--Factura que aparece con el monto aun vigente
select * from cxp where cxpllaveid = 99848

select * from cxp where CxpIdDoc = '2DC0B47E-1017334820' and CxpLlaveId = 99848
--se le ve si tiene pendiente en valdeb y valcre, se le cambia la valdeb CxpLlaveSaldo por la que tiene el valcre que queden iguales para que se maten entre ellas 
update cxp set CxpLlaveSaldo = 99848 where CxpIdDoc = '2DC0B47E-1017334820' and CxpLlaveId = 5716499 and CxpId = 17975