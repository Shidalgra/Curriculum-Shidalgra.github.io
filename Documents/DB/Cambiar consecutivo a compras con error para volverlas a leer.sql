use daitomo

select * from CompFEProc order by CompFEProcConsecutivoNum desc

begin tran
update CompFEProc set CompFEProcConsecutivoNum = 58,

CompFEProcRespuestaTrib = '',

CompFEProcEstado = 1,

CompFEProcXmlFirmado = '',

CompFEProcConsecutivo = ''  where CompFEProcId = 185223

rollback
commit