use grupola
--DESCOMENTAR PARA UTILIZAR
select * from Compania
select * from Compania where CompaniaNombre like 'RODRIGO ANTONIO AGÜERO %'
select * from NCDFacturas where NCDFacturasId = 412296							--llave al visualizar nota de credito
select * from NCDFacturasNCDFacturasDetalle where NCDFacturasId = 412296		--nunca sale algo
select * from NCDFacturas where FacturasId = 412296								--Numero de factura al visualar nota de credito




--para ver cual es el maximo consecutivo de la compañia seleccionada
select * from NCDFacturas N														--correr solo linea 10 si es una sola compañia
join Facturas F on F.FacturasId = N.FacturasId
where F.FacturasCompaniaId = 15	and F.FacturasId = 412296						--correr desde la linea 10 a la 12 si son varias compañias

/*

update NCDFacturas 
set NCDfacturasNumero = 865				--En esta ponemos el que consecutivo que deseamos		
where NCDFacturasId = 100928 and		--
FacturasId = 237450 and					--En orde de lo que vimos en la linea 10 a la 12... de izquierda a derecha cambiamos valores
NCDFacturasNumero = 851 and				--del Where hacia abajo fijandonosbien en el nombre de la columna
NCDFacturasCtMovimientosId = 716173

*/

--OJO Importante --darle a boton generar comprobante electronico antes de enviarla en el server


select NCDFacturasNumero from NCDFacturas order by NCDFacturasNumero desc 
select * from NCDFacturas order by NCDFacturasNumero desc

--update NCDFacturas set NCDFacturasNumero = 1147 where NCDFacturasId = 71408 and FacturasId = 73792 and NCDFacturasCtMovimientosId = 743558
--1146
select * from NCDFacturas

select NCDFacturasId, FacturasId, NCDFacturasNumero, NCDFacturasCtMovimientosId from NCDFacturas where NCDFacturasId = 71411

/*

update NCDFacturas set NCDfacturasNumero = 1192 where NCDFacturasId = 71349 and	FacturasId = 155903 and	NCDFacturasNumero = 1087 and NCDFacturasCtMovimientosId = 743499
update NCDFacturas set NCDfacturasNumero = 1193 where NCDFacturasId = 71350 and	FacturasId = 155871 and	NCDFacturasNumero = 1088 and NCDFacturasCtMovimientosId = 743500
update NCDFacturas set NCDfacturasNumero = 1194 where NCDFacturasId = 71351 and	FacturasId = 143465 and	NCDFacturasNumero = 1089 and NCDFacturasCtMovimientosId = 743501
update NCDFacturas set NCDfacturasNumero = 1195 where NCDFacturasId = 71352 and	FacturasId = 155844 and	NCDFacturasNumero = 1090 and NCDFacturasCtMovimientosId = 743502
update NCDFacturas set NCDfacturasNumero = 1196 where NCDFacturasId = 71353 and	FacturasId = 155896 and	NCDFacturasNumero = 1091 and NCDFacturasCtMovimientosId = 743503
update NCDFacturas set NCDfacturasNumero = 1197 where NCDFacturasId = 71354 and	FacturasId = 71901 and	NCDFacturasNumero = 1092 and NCDFacturasCtMovimientosId = 743504
update NCDFacturas set NCDfacturasNumero = 1198 where NCDFacturasId = 71355 and	FacturasId = 166450 and	NCDFacturasNumero = 1093 and NCDFacturasCtMovimientosId = 743505
update NCDFacturas set NCDfacturasNumero = 1199 where NCDFacturasId = 71356 and	FacturasId = 155872 and	NCDFacturasNumero = 1094 and NCDFacturasCtMovimientosId = 743506
update NCDFacturas set NCDfacturasNumero = 1200 where NCDFacturasId = 71357 and	FacturasId = 165988 and	NCDFacturasNumero = 1095 and NCDFacturasCtMovimientosId = 743507
update NCDFacturas set NCDfacturasNumero = 1201 where NCDFacturasId = 71358 and	FacturasId = 166488 and	NCDFacturasNumero = 1096 and NCDFacturasCtMovimientosId = 743508
update NCDFacturas set NCDfacturasNumero = 1202 where NCDFacturasId = 71359 and	FacturasId = 98263 and	NCDFacturasNumero = 1097 and NCDFacturasCtMovimientosId = 743509
update NCDFacturas set NCDfacturasNumero = 1203 where NCDFacturasId = 71360 and	FacturasId = 166381 and	NCDFacturasNumero = 1098 and NCDFacturasCtMovimientosId = 743510
update NCDFacturas set NCDfacturasNumero = 1204 where NCDFacturasId = 71361 and	FacturasId = 166382 and	NCDFacturasNumero = 1099 and NCDFacturasCtMovimientosId = 743511
update NCDFacturas set NCDfacturasNumero = 1205 where NCDFacturasId = 71362 and	FacturasId = 72157 and	NCDFacturasNumero = 1100 and NCDFacturasCtMovimientosId = 743512
update NCDFacturas set NCDfacturasNumero = 1206 where NCDFacturasId = 71363 and	FacturasId = 72157 and	NCDFacturasNumero = 1101 and NCDFacturasCtMovimientosId = 743513
update NCDFacturas set NCDfacturasNumero = 1207 where NCDFacturasId = 71364 and	FacturasId = 122413 and	NCDFacturasNumero = 1102 and NCDFacturasCtMovimientosId = 743514
update NCDFacturas set NCDfacturasNumero = 1208 where NCDFacturasId = 71367 and	FacturasId = 121985 and	NCDFacturasNumero = 1105 and NCDFacturasCtMovimientosId = 743517
update NCDFacturas set NCDfacturasNumero = 1209 where NCDFacturasId = 71368 and	FacturasId = 74076 and	NCDFacturasNumero = 1106 and NCDFacturasCtMovimientosId = 743518
update NCDFacturas set NCDfacturasNumero = 1210 where NCDFacturasId = 71369 and	FacturasId = 122617 and	NCDFacturasNumero = 1107 and NCDFacturasCtMovimientosId = 743519
update NCDFacturas set NCDfacturasNumero = 1211 where NCDFacturasId = 71370 and	FacturasId = 144995 and	NCDFacturasNumero = 1108 and NCDFacturasCtMovimientosId = 743520
update NCDFacturas set NCDfacturasNumero = 1212 where NCDFacturasId = 71371 and	FacturasId = 155342 and	NCDFacturasNumero = 1109 and NCDFacturasCtMovimientosId = 743521
update NCDFacturas set NCDfacturasNumero = 1215 where NCDFacturasId = 71372 and	FacturasId = 166059 and	NCDFacturasNumero = 1110 and NCDFacturasCtMovimientosId = 743522
update NCDFacturas set NCDfacturasNumero = 1216 where NCDFacturasId = 71373 and	FacturasId = 166059 and	NCDFacturasNumero = 1111 and NCDFacturasCtMovimientosId = 743523
update NCDFacturas set NCDfacturasNumero = 1217 where NCDFacturasId = 71374 and	FacturasId = 64986 and	NCDFacturasNumero = 1112 and NCDFacturasCtMovimientosId = 743524
update NCDFacturas set NCDfacturasNumero = 1218 where NCDFacturasId = 71375 and	FacturasId = 155934 and	NCDFacturasNumero = 1113 and NCDFacturasCtMovimientosId = 743525
update NCDFacturas set NCDfacturasNumero = 1219 where NCDFacturasId = 71376 and	FacturasId = 155437 and	NCDFacturasNumero = 1114 and NCDFacturasCtMovimientosId = 743526
update NCDFacturas set NCDfacturasNumero = 1220 where NCDFacturasId = 71377 and	FacturasId = 155595 and	NCDFacturasNumero = 1115 and NCDFacturasCtMovimientosId = 743527
update NCDFacturas set NCDfacturasNumero = 1221 where NCDFacturasId = 71378 and	FacturasId = 166271 and	NCDFacturasNumero = 1116 and NCDFacturasCtMovimientosId = 743528
update NCDFacturas set NCDfacturasNumero = 1222 where NCDFacturasId = 71379 and	FacturasId = 166049 and	NCDFacturasNumero = 1117 and NCDFacturasCtMovimientosId = 743529
update NCDFacturas set NCDfacturasNumero = 1223 where NCDFacturasId = 71380 and	FacturasId = 155854 and	NCDFacturasNumero = 1118 and NCDFacturasCtMovimientosId = 743530
update NCDFacturas set NCDfacturasNumero = 1224 where NCDFacturasId = 71381 and	FacturasId = 155891 and	NCDFacturasNumero = 1119 and NCDFacturasCtMovimientosId = 743531
update NCDFacturas set NCDfacturasNumero = 1225 where NCDFacturasId = 71382 and	FacturasId = 155814 and	NCDFacturasNumero = 1120 and NCDFacturasCtMovimientosId = 743532
update NCDFacturas set NCDfacturasNumero = 1226 where NCDFacturasId = 71383 and	FacturasId = 155844 and	NCDFacturasNumero = 1121 and NCDFacturasCtMovimientosId = 743533
update NCDFacturas set NCDfacturasNumero = 1227 where NCDFacturasId = 71384 and	FacturasId = 155896 and	NCDFacturasNumero = 1122 and NCDFacturasCtMovimientosId = 743534
update NCDFacturas set NCDfacturasNumero = 1228 where NCDFacturasId = 71385 and	FacturasId = 166450 and	NCDFacturasNumero = 1123 and NCDFacturasCtMovimientosId = 743535
update NCDFacturas set NCDfacturasNumero = 1229 where NCDFacturasId = 71386 and	FacturasId = 155872 and	NCDFacturasNumero = 1124 and NCDFacturasCtMovimientosId = 743536
update NCDFacturas set NCDfacturasNumero = 1230 where NCDFacturasId = 71387 and	FacturasId = 165988 and	NCDFacturasNumero = 1125 and NCDFacturasCtMovimientosId = 743537
update NCDFacturas set NCDfacturasNumero = 1231 where NCDFacturasId = 71388 and	FacturasId = 166488 and	NCDFacturasNumero = 1126 and NCDFacturasCtMovimientosId = 743538
update NCDFacturas set NCDfacturasNumero = 1232 where NCDFacturasId = 71391 and	FacturasId = 144347 and	NCDFacturasNumero = 1129 and NCDFacturasCtMovimientosId = 743541
update NCDFacturas set NCDfacturasNumero = 1233 where NCDFacturasId = 71392 and	FacturasId = 177181 and	NCDFacturasNumero = 1130 and NCDFacturasCtMovimientosId = 743542
update NCDFacturas set NCDfacturasNumero = 1234 where NCDFacturasId = 71393 and	FacturasId = 177407 and	NCDFacturasNumero = 1131 and NCDFacturasCtMovimientosId = 743543
update NCDFacturas set NCDfacturasNumero = 1235 where NCDFacturasId = 71394 and	FacturasId = 111231 and	NCDFacturasNumero = 1132 and NCDFacturasCtMovimientosId = 743544
update NCDFacturas set NCDfacturasNumero = 1236 where NCDFacturasId = 71397 and	FacturasId = 144034 and	NCDFacturasNumero = 1135 and NCDFacturasCtMovimientosId = 743547
update NCDFacturas set NCDfacturasNumero = 1237 where NCDFacturasId = 71398 and	FacturasId = 144681 and	NCDFacturasNumero = 1136 and NCDFacturasCtMovimientosId = 743548
update NCDFacturas set NCDfacturasNumero = 1238 where NCDFacturasId = 71399 and	FacturasId = 143628 and	NCDFacturasNumero = 1137 and NCDFacturasCtMovimientosId = 743549
update NCDFacturas set NCDfacturasNumero = 1239 where NCDFacturasId = 71400 and	FacturasId = 143646 and	NCDFacturasNumero = 1138 and NCDFacturasCtMovimientosId = 743550
update NCDFacturas set NCDfacturasNumero = 1240 where NCDFacturasId = 71401 and	FacturasId = 143821 and	NCDFacturasNumero = 1139 and NCDFacturasCtMovimientosId = 743551
update NCDFacturas set NCDfacturasNumero = 1241 where NCDFacturasId = 71402 and	FacturasId = 143341 and	NCDFacturasNumero = 1140 and NCDFacturasCtMovimientosId = 743552
update NCDFacturas set NCDfacturasNumero = 1242 where NCDFacturasId = 71403 and	FacturasId = 133074 and	NCDFacturasNumero = 1141 and NCDFacturasCtMovimientosId = 743553
update NCDFacturas set NCDfacturasNumero = 1243 where NCDFacturasId = 71404 and	FacturasId = 144032 and	NCDFacturasNumero = 1142 and NCDFacturasCtMovimientosId = 743554
update NCDFacturas set NCDfacturasNumero = 1244 where NCDFacturasId = 71406 and	FacturasId = 74076 and	NCDFacturasNumero = 1144 and NCDFacturasCtMovimientosId = 743556
update NCDFacturas set NCDfacturasNumero = 1245 where NCDFacturasId = 71407 and	FacturasId = 74076 and	NCDFacturasNumero = 1145 and NCDFacturasCtMovimientosId = 743557
update NCDFacturas set NCDfacturasNumero = 1246 where NCDFacturasId = 71408 and	FacturasId = 73792 and	NCDFacturasNumero = 1147 and NCDFacturasCtMovimientosId = 743558
update NCDFacturas set NCDfacturasNumero = 1247 where NCDFacturasId = 71409 and	FacturasId = 109775 and	NCDFacturasNumero = 1148 and NCDFacturasCtMovimientosId = 743796
update NCDFacturas set NCDfacturasNumero = 1248 where NCDFacturasId = 71411 and	FacturasId = 71224 and	NCDFacturasNumero = 1150 and NCDFacturasCtMovimientosId = 743798
update NCDFacturas set NCDfacturasNumero = 1249 where NCDFacturasId = 71410 and	FacturasId = 109754 and	NCDFacturasNumero = 1248 and NCDFacturasCtMovimientosId = 743797

*/








