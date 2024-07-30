use independientes
go
-- En caso de eliminar un ingreso de BIOMED
select * from LabResultadoMachote

delete from LabResultadoMachote where LabIngresoId=651588
delete from LabIngresoExamen where LabIngresoId=651588
delete from LabIngreso where LabIngresoId=651588

select * from LabIngreso where LabIngresoConsecutivo=16327