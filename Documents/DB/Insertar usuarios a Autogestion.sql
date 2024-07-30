use aseamsa

-- para cargar los asociados a la autogestion 
--ejecutar primero

insert 
into Usuarios(UsuariosCodigo,UsuariosNombre,UsuariosKey,UsuariosIV,UsuariosContrasena,UsuariosAct,UsuariosNivel,UsuariosUltimaAccionFH,UsuariosLugarConexion,UsuariosFechaNac,UsuariosMail,UsuariosTelefono,UsuariosFallidos,UsuariosEC)
  select AmAsocNDoc,cast(CONCAT(AmAsocNom1,' ',AmAsocApe1) as varchar(50)),'Jb3idNTPEI/O11LPUA+LBjELm1FE0O+RK7R7+eQZCR4=                                                        ','Zpru5Bv6+QSC00edkm/qGQ==                                                                            ','gFlnTCcAPECS96Ghutv6Zg==                                                                                                                                                                                                                                                                                    ',1,1,AmAsocFechaIngEmp,'127.0.0.1',AmAsocFechaNac,AmAsocEmailLaboral,AmAsocMovil,0,0 
  from AmAsoc1
  where (select U.UsuariosCodigo from Usuarios U where U.UsuariosCodigo = AmAsocNDoc) is NULL


  --Ejecutar segundo
insert into UsuariosCompania(UsuariosCodigo,CompaniaInicio,UsuarioTipoImpresion,UsuariosHoraIni,UsuariosMinutoIni,UsuariosHoraFin,UsuariosMinutoFin,MenuItemId,RQPerfilId)
 select AmAsocNDoc,1,5,0,0,23,59,1,1 from AmAsoc1
 where (select U.UsuariosCodigo from UsuariosCompania U where U.UsuariosCodigo = AmAsocNDoc) is NULL

