use rnpconta


select * from Compania

select * from Usuarios where UsuariosNombre = 'GABRIEL MUÑOZ AGUILAR'
select * from Usuarios where UsuariosNombre = 'SERGIO HIDALGO GRANADOS'
select * from Usuarios where UsuariosNombre = 'DAGO ALBERTO BARQUERO SANABRIA';
select * from Usuarios where UsuariosNombre = 'LEONARDO MURCIA MIRANDA';


select * from UsuariosCompania where UsuariosCodigo = 'lmurcia' order by UsuariosCodigo desc


--Cuando un usuario pierde el ingreso y no hay forma de recuperarlo
--dar clic derecho a tabl UsuariosCompania y darle a Edit top 200 Rows
--Luego agregar los datos de usuario y la compañia de ingreso