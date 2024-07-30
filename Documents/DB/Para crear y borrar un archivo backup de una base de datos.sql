
--Crear Backup en Base de datos de Examen
BACKUP DATABASE [Examen] TO  DISK = N'C:\Backups\Examen.bak' WITH NOFORMAT, NOINIT,  NAME = N'Examen', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

--Para borrar el archivo creado
exec master.dbo.xp_cmdshell 'del C:\Backups\Examen.bak'

--Por aquello que no este activado para poder borrar
exec sp_configure 'show advanced options', 1; 
reconfigure; 
exec sp_configure 'xp_cmdshell', 1; 
reconfigure;
