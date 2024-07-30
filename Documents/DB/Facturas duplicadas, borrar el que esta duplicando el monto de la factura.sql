use aseamsa

--sacamos el numero de operacion de la factura a gestionar agarramos el AmCrDId
select * from AmCrD where AmCrDConsec = 2020022896

--hacemos un select a AmCrDDetalle usando el AmCrDId que sacamos con el select anterior
select AmCrDDetObservacion from AmCrDDetalle where AmCrDId = 571549

--antes de borrar nos fijamos en el sistema cual es la que esta con recibido exitoso PARA NO BORRARLA
select * from AmCrDDetalle where AmCrDId = 571547 and AmCrDDetDoc = 3416

--una vez seguros de lo que estamos haciendo borramos
delete from AmCrDDetalle where AmCrDId = 571549 and AmCrDDetDoc = 3419