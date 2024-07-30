use independientes
go

--primero obtener el id con el consecutivo 
select * from LabIngreso where LabIngresoConsecutivo = 16656 
--verificar el paciente
select * from Pacientes where PacientesId = 406940
--borrar con el id el ingreso que solicitan
delete from LabResultadoMachote where LabIngresoId=651917
delete from LabIngresoExamen where LabIngresoId=651917
delete from LabIngreso where LabIngresoId=651917

--para verificar que no existe en la BD
select * from LabIngreso where LabIngresoConsecutivo=16411

--listo piyuyo

