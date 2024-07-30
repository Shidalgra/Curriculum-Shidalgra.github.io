use daitomo

select * from CompFEProc where CompFEProcId = 529217
--11127 = 11426
select * from CompFEProc order by CompFEProcConsecutivoNum desc

begin tran
update CompFEProc set CompFEProcConsecutivoNum = 11427,
CompFEProcRespuestaTrib = '',
CompFEProcEstado = 1,
CompFEProcXmlFirmado = '',
CompFEProcConsecutivo = ''  
where CompFEProcId = 529217

rollback
commit


