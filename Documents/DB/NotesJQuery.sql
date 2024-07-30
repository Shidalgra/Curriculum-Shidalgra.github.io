-- Comando use para usar una base de datos

use NORTHWIND;    



-- Para mostrar todas las bases de datos en el servidor 
--en MySQL: 
--show sys.databases;
--en SQL Server es
select name, database_id, create_date from sys.databases;
GO

-- mostrar las tablas en una base de datos

select * from sys.tables;

-- mostrar las configuracion de una tabla cuando se crea o como se crea
-- exec sp_help 'database_name.schema_name.table_name' for example:

exec sp_help 'NORTHWIND.dbo.Customers';

-- Mostrar los registros que tiene cada tabla

select * from Customers;

-- mostrar campos (Columans especificas)

select LastName, Title, Country from Employees;

-- Realizar operaciones de multiplicacion

select (4+5);
select (2*8);
select (15-2);
select (4/5);  -- esta devuelve cero porque:

-- hay que hacer una conversion explicita o implicita, esto pasa en SQL Server, en otros motores no me ha pasado

-- Explicita
select convert(float,4)/5;
select convert(decimal,4)/5;

-- Implicita
select 4*1.0/5;


-- mostrar los campos de una tabla
USE NORTHWIND;
exec sp_help 'NORTHWIND.dbo.Employees';

