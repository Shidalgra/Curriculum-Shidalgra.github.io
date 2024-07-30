use asostia

select * from AmAsoc1 where amasocNdoc = '113020539'

select * from AmLiq where amasocid = 2466

select * from CtMovimentos where CtMovimientosId = 713574
select * from CtMovimentosCuentas where CtMovimientosId = 714114 --numero de consecutivo del asiento

--AmLiqId    AmAsocId       AmLiqFecha            AmLiqTipo      AmliqValor    AmLiqEstado      AmLiqCtMovimiento     AmLiqInteres
-- 20195	   2466   	2022-04-15 00:00:00.000	     2 	          1589117.72	   1           	    713574	               0         	0.00	0.00

update CtMovimentosCuentas set CuentasId = 200030003 where LineaId = 10 and CtMovimientosId = 714114 and CtMovimientosValdebValor = 277.82 and CtMovimientosCuentasDet = 'VALERIO CHAVES BRANDON-Ahorro Escolar-Liquidación' and CuentasId = 500020002

update CtMovimentosCuentas set CuentasId = 200030002 where LineaId = 8 and CtMovimientosId = 714114 and CtMovimientosValdebValor = 784.93 and CtMovimientosCuentasDet = 'VALERIO CHAVES BRANDON-Ahorro Navideño-Liquidación' and CuentasId = 500020001