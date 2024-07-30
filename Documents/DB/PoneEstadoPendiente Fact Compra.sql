use rnpconta

declare  @maximo int
declare @table table (CompFEProcId int,
					  ConsecNuevo int
						)
select @maximo = MAX(CompFEProcConsecutivoNum) from CompFEProc

insert into @table
select  CompFEProcId,(ROW_NUMBER() OVER(ORDER BY CompFEProcConsecutivoNum ASC)) + @maximo
from CompFEProc 
where CompFEProcFechaFactura >= '2022-03-01 00:00:00.000' 
and CompFEProcEstado = 5
and CompFEProcAceptacionMensaje = 1

select * from @table


update  C
set C.CompFEProcConsecutivoNum = T.ConsecNuevo,
C.CompFEProcRespuestaTrib = '',
C.CompFEProcEstado = 1, 
C.CompFEProcXmlFirmado = '', 
C.CompFEProcConsecutivo = ''  
from CompFEProc C
join @table T on T.CompFEProcId = C.CompFEProcId




/*
 select  CompFEProcConsecutivoNum,*
from CompFEProc 
where CompFEProcFechaFactura >= '2020-04-01 00:00:00.000' 
and CompFEProcEstado = 5
and CompFEProcAceptacionMensaje = 1

select  CompFEProcConsecutivoNum,*
from CompFEProc 
where CompFEProcFechaFactura >= '2020-04-01 00:00:00.000' 
and CompFEProcEstado = 1
and CompFEProcAceptacionMensaje = 1

select * from CompFEProc
where CompFEProcId in (40515,
40516,
40517,
40518,
40519,
40520,
40521,
40522,
40523,
40524,
40525,
40526,
40527,
40528,
40529)

select * from CompFEProcBit
where CompFEProcId in (40420),
40428,
40433,
40436,
40437,
40438,
50438,
50446,
50447,
50448,
50449,
60453,
60458,
60468,
60469,
60472)

select * from CompFEProc
where CompFEProcId = 40419

select * from Compania where CompaniaId = 4*/