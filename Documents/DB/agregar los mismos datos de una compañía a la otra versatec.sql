use versatec

select * from compania


--compañía info sacar:companiaid 1
--compañia info dejar:companiaid 20
select * from grupos where CompaniaId = 1
--DECLARE @i int
--DECLARE @cantidad int
--DECLARE @cantidadL int
--DECLARE @j int
--DECLARE @contadorj int
--DECLARE @cantidadj int
--DECLARE @Grupos1 Table (g1id int identity, g1grupoid int, g1CompaniaId int, g1GruposNombre varchar(100), g1GruposLineas int)

--SET @i = (select NumeradorGNro from NumeradorG where NumeradorGId = 'GRUPOS')
--SET @cantidad = (select count(GruposId) from Grupos where CompaniaId = 1)
--SET @cantidadL = @i + @cantidad

--insert into @Grupos1 (g1grupoid, g1CompaniaId, g1GruposNombre, g1GruposLineas) 
--select GruposId, CompaniaId, GruposNombre, GruposLineas from Grupos  where CompaniaId = 1
--SET @cantidadj = (select count(g1id) from @Grupos1)
--SET @j = 1
--while @j <= @cantidadj
--BEGIN
--SET @i = @i + 1
--UPDATE NumeradorG 
--SET NumeradorGNro = @i
--where NumeradorGId = 'GRUPOS'
--insert into Grupos (GruposId, CompaniaId, GruposNombre, GruposLineas) 
--select (select NumeradorGNro from NumeradorG where NumeradorGId = 'GRUPOS'), 20, g1GruposNombre, g1GruposLineas from @Grupos1 where g1id = @j
--if EXISTS (select 1 from GruposLineas where GruposId = (select g1grupoid from @Grupos1 where g1id = @j ))
--BEGIN
--insert into GruposLineas (GruposId, LineasId, LineasNombre) 
--select (select NumeradorGNro from NumeradorG where NumeradorGId = 'GRUPOS'), LineasId, LineasNombre From GruposLineas  where GruposId = (select g1grupoid from @Grupos1 where g1id = @j )
--END
--SET @j = @j + 1
--END



--delete from Grupos where CompaniaId = 20

select * from Grupos where CompaniaID = 1

select * from GruposLineas where gruposid in (select gruposid from grupos where CompaniaId = 20)

-------------------------------------------------------------


--DECLARE @i int
--DECLARE @cantidad int
--DECLARE @cantidadL int
--DECLARE @j int
--DECLARE @contadorj int
--DECLARE @cantidadj int
--DECLARE @Marcas1 Table (m1id int identity, m1marcasid int, m1MarcasCompaniaId int, m1MarcasNombre varchar(100))
--Declare @TablaId Table (tid int)
--insert into @TablaId
--select MAX(MarcasId)
--from Marcas


--SET @i = (select tid from @TablaId)
--SET @cantidad = (select count(MarcasId) from Marcas where MarcasCompaniaId = 1)
--SET @cantidadL = @i + @cantidad

--insert into @Marcas1 ( m1marcasid , m1MarcasCompaniaId , m1MarcasNombre) 
--select MarcasId, MarcasCompaniaId, MarcasNombre from Marcas  where CompaniaId = 1
--SET @cantidadj = (select count(m1id) from @Marcas1)
--SET @j = 1
--while @j <= @cantidadj
--BEGIN
--SET @i = @i + 1
--UPDATE @TablaId 
--SET tid = @i
----insert into marcas ( MarcasCompaniaId, MarcasNombre) 
--select 20, m1MarcasNombre from @Marcas1 where m1id = @j
--if EXISTS (select 1 from MarcasEstilo where MarcasId = (select m1marcasid from @Marcas1 where m1id = @j ))
--BEGIN
----insert into MarcasEstilo (MarcasID, MarcaEstiloId, MarcasEstiloNombre) 
--select (select tid from @Tablaid), MarcasEstiloId, MarcasEstiloNombre From MarcasEstilo  where MarcasId = (select m1marcasid from @Marcas1 where m1id = @j )
--END
--SET @j = @j + 1
--END


select * from marcas where MarcasCompaniaId = 20

select * from MarcasEstilo where MarcasId in (select MarcasId from marcas where MarcasCompaniaId = 20)








------------------------------------------------------------
--consultar este que realmente no supe








select * from Contrapartidas where companiaid = 20
select * from Contrapartidas where companiaid = 1

--USE [Versatec]
--GO
--declare @ContrapartidasId decimal(14,0)

--select @ContrapartidasId= 0

--if @ContrapartidasId is null
--	set @ContrapartidasId=1

----INSERT INTO [dbo].[Contrapartidas]
----           ([ContrapartidasId]
----           ,[CompaniaId]
----           ,[CuentasId]
----           ,[ContrapartidasTipo])
--     select
--             @ContrapartidasId+ROW_NUMBER() OVER(order by ProductosId Asc)
--           ,20
--           ,[CuentasId]
--           ,[ContrapartidasTipo]
--		From Contrapartidas where companiaid = 1









select * from Cuentas where CompaniaId = 1


-- estas de abajo deben inclurse a partir del grupo





select * from ContrapartidasGrupos where gruposid in(select GruposId from Grupos where CompaniaId = 20)
select * from ContrapartidasGruposContGrupo where ContGruposId in (select ContGruposId from ContrapartidasGrupos where gruposid in(select GruposId from Grupos where CompaniaId = 20))

select * from Grupos where companiaid = 1
select * from Grupos where CompaniaID = 20

--DECLARE @i int
--DECLARE @cantidad int
--DECLARE @cantidadL int
--DECLARE @j int
--DECLARE @contadorj int
--DECLARE @cantidadj int
--DECLARE @ContrapartidasGrupos1 Table (cpid int identity, cp1ContGruposid int, cp1GruposId int, cp1GruposLineas int)

--DECLARE @Grupos Table (ggrupoidcopiar int, ggrupoidpegar int)
--insert into @Grupos ( ggrupoidcopiar , ggrupoidpegar) 
--select (select GruposId From Grupos where CompaniaId = 1 and GruposNombre = a.GruposNombre), (select GruposId From Grupos where CompaniaId = 20 and GruposNombre = a.GruposNombre) from Grupos a where companiaid = 1
----select * from @Grupos
--Declare @TablaId Table (tid int)
--insert into @TablaId
--select MAX(ContGruposId)
--from ContrapartidasGrupos


--SET @i = (select tid from @TablaId)
--SET @cantidad = (select count(ContGruposId) from ContrapartidasGrupos where GruposId in(select GruposId from Grupos where CompaniaId = 20))
--SET @cantidadL = @i + @cantidad

--insert into @ContrapartidasGrupos1 ( cp1ContGruposid , cp1GruposId , cp1GruposLineas) 
--select ContGruposId, GruposId, ContGrupoLineas from ContrapartidasGrupos where gruposid in(select GruposId from Grupos where CompaniaId = 1)
--SET @cantidadj = (select count(cpid) from @ContrapartidasGrupos1)
----select * from  @ContrapartidasGrupos1 
--SET @j = 1


--while @j <= @cantidadj
--BEGIN
--SET @i = @i + 1
--UPDATE @TablaId 
--SET tid = @i
--insert into ContrapartidasGrupos ( GruposId, ContGrupoLineas) 
--select (select ggrupoidpegar from @Grupos where ggrupoidcopiar = (select cp1GruposId from @ContrapartidasGrupos1 where cpid = @j)), cp1GruposLineas from @ContrapartidasGrupos1  where cpid = @j
--if EXISTS (select 1 from ContrapartidasGruposContGrupo where ContGruposId = (select cp1ContGruposid from @ContrapartidasGrupos1 where cpid = @j ))
--BEGIN

--insert into ContrapartidasGruposContGrupo (ContGruposId, ContGrupoLinea, CuentasId, ContGrupoTipo) 
--select (select tid from @Tablaid), ContGrupoLinea, CuentasId, ContGrupoTipo  From ContrapartidasGruposContGrupo  where ContGruposId = (select cp1ContGruposid from @ContrapartidasGrupos1 where cpid = @j)
--END
--SET @j = @j + 1
--END




-----------------------------------------------------------

select * from productos where CompaniaId = 20 order by ProductosId

select NumeradorGNro from NumeradorG where NumeradorGId='PRODUCTOS'
--USE [Versatec]
--GO

--declare @ProductosId decimal(14,0)

--select @ProductosId=MAX(ProductosId) from Productos 

--if @ProductosId is null
--	set @ProductosId=1

--INSERT INTO [dbo].[Productos]
--           ([ProductosId]
--           ,[CompaniaId]
--           ,[ProductosCodigo]
--           ,[ProductosNombre]
--           ,[ProductosGrupoId]
--           ,[ProductosLineaId]
--           ,[ProductosTipo]
--           ,[MarcasId]
--           ,[MarcasEstiloId]
--           ,[UniMedId]
--           ,[ProductosAncho]
--           ,[ProductosLargo]
--           ,[ProductosAnchoUniMedId]
--           ,[ProductosIVA]
--           ,[ProductosIMPOCOM]
--           ,[ProductosFoto]
--           ,[ProductosFoto_GXI]
--           ,[ProductosCaracteristicas]
--           ,[MonedasId]
--           ,[ProductosUltimoCosto]
--           ,[ProductosContCosto]
--           ,[ProductosCodBarras]
--           ,[ProductosParaVenta]
--           ,[ProductosServicio]
--           ,[ProductosTarifasIvaCodigo]
--           ,[ProductosPeriodicidad]
--           ,[ProductosTieneSerie]
--           ,[ProductosFrecuenciaComision]
--           ,[ProductosComision]
--           ,[ProductosInsumoTipo]
--           ,[ProductosPlazo]
--           ,[ProductosIDP]
--           ,[ProductosTarifasIdpCodigo]
--           ,[ProductosCxcCuentasId]
--           ,[ProductosCABYS]
--           ,[ProductosEsCodigoMadre])


--     select
--           @ProductosId+ROW_NUMBER() OVER(order by ProductosId Asc)--[ProductosId]
--           ,20
--           ,[ProductosCodigo]
--           ,[ProductosNombre]
--           ,(Select GruposId from Grupos where CompaniaId=20 and GruposNombre=G.GruposNombre) as ProductosGrupoId--[ProductosGrupoId]
--           ,[ProductosLineaId]
--           ,[ProductosTipo]
--           ,(Select MarcasId from Marcas where MarcasCompaniaId=20 and MarcasNombre=M.MarcasNombre) as MarcasId--[MarcasId]
--           ,[MarcasEstiloId]
--           ,[UniMedId]
--           ,[ProductosAncho]
--           ,[ProductosLargo]
--           ,[ProductosAnchoUniMedId]
--           ,[ProductosIVA]
--           ,[ProductosIMPOCOM]
--           ,[ProductosFoto]
--           ,[ProductosFoto_GXI]
--           ,[ProductosCaracteristicas]
--           ,[MonedasId]
--           ,[ProductosUltimoCosto]
--           ,[ProductosContCosto]
--           ,[ProductosCodBarras]
--           ,[ProductosParaVenta]
--           ,[ProductosServicio]
--           ,[ProductosTarifasIvaCodigo]
--           ,[ProductosPeriodicidad]
--           ,[ProductosTieneSerie]
--           ,[ProductosFrecuenciaComision]
--           ,[ProductosComision]
--           ,[ProductosInsumoTipo]
--           ,[ProductosPlazo]
--           ,[ProductosIDP]
--           ,[ProductosTarifasIdpCodigo]
--           ,[ProductosCxcCuentasId]
--           ,[ProductosCABYS]
--           ,[ProductosEsCodigoMadre]
--	from Productos P,Marcas M, Grupos G where P.CompaniaId=1 and P.MarcasId=M.MarcasId and P.ProductosGrupoId=G.GruposId
--GO

--update N
--set N.NumeradorGNro= (select MAX(ProductosId) from Productos)
--from NumeradorG N
--where NumeradorGId='PRODUCTOS'

select * from NumeradorG 
----------------------------------------------------------

select * from Terceros where CompaniaId =1

--USE [Versatec]
--GO
--declare @TerceroId decimal(14,0)

--select @TerceroId=0

--if @TerceroId is null
--set @TerceroId=1
--INSERT INTO [dbo].[Terceros]
--           ([CompaniaId]
--           ,[TerceroId]
--           ,[TercerosCodigo]
--           ,[TerceroNombre]
--           ,[TerceroNombre2]
--           ,[TerceroApellido1]
--           ,[TerceroApellido2]
--           ,[TerceroTipo]
--           ,[TerceroTelefono]
--           ,[TerceroFax]
--           ,[TerceroDireccion]
--           ,[TerceroContacto]
--           ,[TarifaId]
--           ,[TerceroCedula]
--           ,[TipoDocId]
--           ,[TerceroPlazo]
--           ,[TerceroMail]
--           ,[TerceroVendedorId]
--           ,[TercerosSecuenciaVisit]
--           ,[TerceroPaisId]
--           ,[TerceroProvinciaId]
--           ,[TerceroCiudadId]
--           ,[TerceroContrato]
--           ,[TerceroContratoFechaIni]
--           ,[TerceroContratoFechaFin]
--           ,[TerceroContratoFecha]
--           ,[TerceroContratoVence]
--           ,[TerceroObservaciones]
--           ,[TerceroExcento]
--           ,[TerceroDtoMax]
--           ,[TercerosDiaSem]
--           ,[TercerosCupoCred]
--           ,[TercerosFotoFrente]
--           ,[TercerosFotoReverso]
--           ,[TercerosFechaNac]
--           ,[TercerosNacPaisesId]
--           ,[TercerosNalPaisesId]
--           ,[TercerosProfesionesId]
--           ,[TercerosActividadEconId]
--           ,[TercerosSexo]
--           ,[TercerosEstadoCivilId]
--           ,[TercerosNombres]
--           ,[TercerosCuentasId]
--           ,[TercerosCuentaNro]
--           ,[TercerosCuentaCliente]
--           ,[TercerosTipoCta]
--           ,[TercerosOficina]
--           ,[TercerosCalidades]
--           ,[TercerosDistritoId]
--           ,[TercerosBarrioId]
--           ,[TercerosExoTipoDoc]
--           ,[TercerosExoFecEmi]
--           ,[TercerosExoDocNro]
--           ,[TercerosExoPorcentaje]
--           ,[TercerosExoTipoExoneracion]
--           ,[TercerosCxcCuentasId]
--           ,[TercerosTipoCodigoSKU]
--           ,[TercerosIvaMax]
--           ,[TercerosComConv])
--   Select
--            20
--           ,@TerceroId +ROW_NUMBER() OVER(order by TerceroId Asc)--[TerceroId]
--           ,[TercerosCodigo]
--           ,[TerceroNombre]
--           ,[TerceroNombre2]
--           ,[TerceroApellido1]
--           ,[TerceroApellido2]
--           ,[TerceroTipo]
--           ,[TerceroTelefono]
--           ,[TerceroFax]
--           ,[TerceroDireccion]
--           ,[TerceroContacto]
--           ,[TarifaId]
--           ,[TerceroCedula]
--           ,[TipoDocId]
--           ,[TerceroPlazo]
--           ,[TerceroMail]
--           ,[TerceroVendedorId]
--           ,[TercerosSecuenciaVisit]
--           ,[TerceroPaisId]
--           ,[TerceroProvinciaId]
--           ,[TerceroCiudadId]
--           ,[TerceroContrato]
--           ,[TerceroContratoFechaIni]
--           ,[TerceroContratoFechaFin]
--           ,[TerceroContratoFecha]
--           ,[TerceroContratoVence]
--           ,[TerceroObservaciones]
--           ,[TerceroExcento]
--           ,[TerceroDtoMax]
--           ,[TercerosDiaSem]
--           ,[TercerosCupoCred]
--           ,[TercerosFotoFrente]
--           ,[TercerosFotoReverso]
--           ,[TercerosFechaNac]
--           ,[TercerosNacPaisesId]
--           ,[TercerosNalPaisesId]
--           ,[TercerosProfesionesId]
--           ,[TercerosActividadEconId]
--           ,[TercerosSexo]
--           ,[TercerosEstadoCivilId]
--           ,[TercerosNombres]
--           ,[TercerosCuentasId]
--           ,[TercerosCuentaNro]
--           ,[TercerosCuentaCliente]
--           ,[TercerosTipoCta]
--           ,[TercerosOficina]
--           ,[TercerosCalidades]
--           ,[TercerosDistritoId]
--           ,[TercerosBarrioId]
--           ,[TercerosExoTipoDoc]
--           ,[TercerosExoFecEmi]
--           ,[TercerosExoDocNro]
--           ,[TercerosExoPorcentaje]
--           ,[TercerosExoTipoExoneracion]
--           ,[TercerosCxcCuentasId]
--           ,[TercerosTipoCodigoSKU]
--           ,[TercerosIvaMax]
--           ,[TercerosComConv]

--		from Terceros  where CompaniaId=1 
--GO



----------------------------------------------------------
select * from FamiliasCta where CompaniaId = 1
--USE [Versatec]
--GO

--INSERT INTO [dbo].[FamiliasCta]
--           ([CompaniaId]
--           ,[FamiliasCtaCaracter]
--           ,[FamiliasCtaNombre]
--           ,[FamiliasCtaTipoCambio])
--     select
--			20
--           ,[FamiliasCtaCaracter]
--           ,[FamiliasCtaNombre]
--           ,[FamiliasCtaTipoCambio]
--		From FamiliasCta where CompaniaId = 1
--GO




-------------------------------------------------- Formato----------------------------------------------
use Versatec
select * from NumeradorG 

select NumeradorGNro from NumeradorG where NumeradorGId='PRODUCTOS'

--insert into Productos
--select
--((select NumeradorGNro from NumeradorG where NumeradorGId='PRODUCTOS')+(ROW_NUMBER() OVER(ORDER BY ProductosId ASC))) AS [ProductosId],
--	20 as CompaniaId,
--	[ProductosCodigo],
--	[ProductosNombre],
--	[ProductosGrupoId],
--	[ProductosLineaId],
--	[ProductosTipo],
--	[MarcasId],
--	[MarcasEstiloId],
--	[UniMedId],
--	[ProductosAncho],
--	[ProductosLargo],
--	[ProductosAnchoUniMedId],
--	[ProductosIVA],
--	[ProductosIMPOCOM],
--	[ProductosFoto],
--	[ProductosFoto_GXI],
--	[ProductosCaracteristicas],
--	[MonedasId],
--	[ProductosUltimoCosto],
--	[ProductosContCosto],
--	[ProductosCodBarras],
--	[ProductosParaVenta],
--	[ProductosServicio],
--	[ProductosTarifasIvaCodigo],
--	[ProductosPeriodicidad],
--	[ProductosTieneSerie],
--	[ProductosFrecuenciaComision],
--	[ProductosComision],
--	[ProductosInsumoTipo],
--	[ProductosPlazo],
--	[ProductosIDP],
--	[ProductosTarifasIdpCodigo],
--	[ProductosCxcCuentasId],
--	[ProductosCABYS],
--	[ProductosEsCodigoMadre]
--from Productos
--where CompaniaId=1


--select NumeradorGNro from NumeradorG where NumeradorGId='PRODUCTOS'
--select MAX(ProductosId) from Productos

--update N
--set N.NumeradorGNro= (select MAX(ProductosId) from Productos)
--from NumeradorG N
--where NumeradorGId='PRODUCTOS'



----------------------------------------------------------------------------------------------
--contrapartidas trabaja tabla numeradorcia
--terceros

--select * from numeradorcia where companiaid = 20

--select count(*) from terceros where companiaid = 20

--select * from terceros where companiaid = 20

--USE [Versatec]
--GO

--INSERT INTO [dbo].[NumeradorCia]
--           ([NumeradorCiaId]
--           ,[CompaniaId]
--           ,[NumeradorCiaNro]
--           ,[NumeradorCiaFecha]
--           ,[NumeradorCiaWst])
--     select
--          'TERCERO'
--           ,20
--           ,785
--           ,[NumeradorCiaFecha]
--           ,[NumeradorCiaWst]
--	 from numeradorcia where companiaid = 20 and NumeradorCiaId = 'CONTRAPARTIDAS'
--GO

