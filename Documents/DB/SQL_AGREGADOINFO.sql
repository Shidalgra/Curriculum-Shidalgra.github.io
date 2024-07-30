--COMPRA = 317
--VENTA = 318

USE [LN_Servicio_BD]

--ACTUALMENTE NO ESTA EL PROCEDIMIENTO 6
--PARA QUE SIRVA CON LA VENTA

--HAY UN SELECT COMENTADO EN EL QUE NO ESTA TERMIANDO 
--LA MANERA DE TRAER EL NUMERO 3 MAS ALTO

--------------------------
--Procedimiento 1
--------------------------
ALTER PROCEDURE Consulta_uno 

	@COD_INDICARDORINTERNOCOMPRA INT,
	@COD_INDICARDORINTERNOVENTA INT
AS
BEGIN
	select NUM_VALOR, COD_INDICADORINTERNO, DES_FECHA from TDATOS_BANCO
	Where (COD_INDICADORINTERNO = @COD_INDICARDORINTERNOCOMPRA AND DAY(DES_Fecha) = 1)
	OR (COD_INDICADORINTERNO = @COD_INDICARDORINTERNOVENTA AND DAY(DES_Fecha) = 1)
	;
END
GO

--------------------------
--Procedimiento 2
--------------------------
alter PROCEDURE Consulta_dos 

	@COD_INDICARDORINTERNOCOMPRA INT,
	@COD_INDICARDORINTERNOVENTA INT
AS
BEGIN
	
	select NUM_VALOR, COD_INDICADORINTERNO from TDATOS_BANCO
	Where COD_INDICADORINTERNO = @COD_INDICARDORINTERNOCOMPRA AND DAY(DES_Fecha) = 15
	or
	COD_INDICADORINTERNO = @COD_INDICARDORINTERNOVENTA AND DAY(DES_Fecha) = 15;

END
GO

--------------------------
--Procedimiento 3
--------------------------
alter PROCEDURE Consulta_Tres 

	@COD_INDICARDORINTERNOCOMPRA INT,
	@COD_INDICARDORINTERNOVENTA INT
AS
BEGIN
	
	select NUM_VALOR, EOMONTH(DES_Fecha) as 'Ultimo dia de mes', COD_INDICADORINTERNO from TDATOS_BANCO
	Where COD_INDICADORINTERNO = @COD_INDICARDORINTERNOCOMPRA and Des_Fecha = EOMONTH(DES_Fecha)
	or
	COD_INDICADORINTERNO = @COD_INDICARDORINTERNOVENTA and Des_Fecha = EOMONTH(DES_Fecha);
END
GO

--------------------------
--Procedimiento 4
--------------------------
alter procedure Consulta_Cuatro
 @COD_INDICARDORINTERNOCOMPRA INT,
	@COD_INDICARDORINTERNOVENTA INT
AS
BEGIN

--COMPRA 
SELECT MONTH(DES_FECHA) as 'Mes', AVG(NUM_VALOR) as 'Promedio Compra'
FROM TDATOS_BANCO
WHERE COD_INDICADORINTERNO = @COD_INDICARDORINTERNOCOMPRA AND
datepart(month,dateadd(MONTH, 0,DES_FECHA)) = datepart(month,dateadd(MONTH, 0,getdate()))
and 
datepart(YEAR,dateadd(YEAR, 0,DES_FECHA)) = datepart(YEAR,dateadd(YEAR, 0 ,getdate()))
GROUP BY MONTH(DES_FECHA)

SELECT MONTH(DES_FECHA) as 'Mes', AVG(NUM_VALOR) as 'Promedio Compra'
FROM TDATOS_BANCO
WHERE COD_INDICADORINTERNO = @COD_INDICARDORINTERNOCOMPRA AND
datepart(month,dateadd(MONTH, 0,DES_FECHA)) = datepart(month,dateadd(MONTH, -1,getdate()))
and 
datepart(YEAR,dateadd(YEAR, 0,DES_FECHA)) = datepart(YEAR,dateadd(YEAR, 0 ,getdate()))
GROUP BY MONTH(DES_FECHA)

--VENTA
SELECT MONTH(DES_FECHA) as 'Mes', AVG(NUM_VALOR) as 'Promedio Venta'
FROM TDATOS_BANCO
WHERE COD_INDICADORINTERNO = @COD_INDICARDORINTERNOVENTA AND
datepart(month,dateadd(MONTH, 0,DES_FECHA)) = datepart(month,dateadd(MONTH, 0,getdate()))
and 
datepart(YEAR,dateadd(YEAR, 0,DES_FECHA)) = datepart(YEAR,dateadd(YEAR, 0 ,getdate()))
GROUP BY MONTH(DES_FECHA)

SELECT MONTH(DES_FECHA) as 'Mes', AVG(NUM_VALOR) as 'Promedio Venta'
FROM TDATOS_BANCO
WHERE COD_INDICADORINTERNO = @COD_INDICARDORINTERNOVENTA AND
datepart(month,dateadd(MONTH, 0,DES_FECHA)) = datepart(month,dateadd(MONTH, -1,getdate()))
and 
datepart(YEAR,dateadd(YEAR, 0,DES_FECHA)) = datepart(YEAR,dateadd(YEAR, 0 ,getdate()))
GROUP BY MONTH(DES_FECHA)
END

--------------------------
--PROCEDIMIENTO 5
--------------------------
alter procedure Consulta_Cinco
 @COD_INDICARDORINTERNOCOMPRA INT,
	@COD_INDICARDORINTERNOVENTA INT
AS
BEGIN
 
SELECT MAX(NUM_VALOR) as 'Máximo', MIN(NUM_VALOR) as 'Mínimo', 
MAX(NUM_VALOR) - MIN(NUM_VALOR) as 'Diferencia Mínimo', AVG(NUM_VALOR) as 'Promedio',
MAX(NUM_VALOR) - AVG(NUM_VALOR) as 'Diferencia Promedio'
from TDATOS_BANCO
WHERE COD_INDICADORINTERNO = @COD_INDICARDORINTERNOCOMPRA

SELECT MAX(NUM_VALOR) as 'Máximo', MIN(NUM_VALOR) as 'Mínimo', 
MAX(NUM_VALOR) - MIN(NUM_VALOR) as 'Diferencia Mínimo', AVG(NUM_VALOR) as 'Promedio',
MAX(NUM_VALOR) - AVG(NUM_VALOR) as 'Diferencia Promedio'
from TDATOS_BANCO
WHERE COD_INDICADORINTERNO = @COD_INDICARDORINTERNOVENTA
END
GO

--------------------------
--PROCEDIMIENTO 6
--------------------------

alter procedure Consulta_Seis
  @COD_INDICADORINTERNOCOMPRA INT
AS
BEGIN

SELECT MONTH(DES_FECHA) as 'Mes',MAX(NUM_VALOR) as 'Máximo Mes actual Compra' 
FROM TDATOS_BANCO
where 
datepart(MONTH,dateadd(MONTH, 0,DES_FECHA)) = datepart(MONTH,dateadd(MONTH, 0,getdate()))
GROUP BY MONTH(DES_FECHA)

SELECT MONTH(DES_FECHA) as 'Mes', MAX(NUM_VALOR) as 'Máximo Mes anterior Compra' 
FROM TDATOS_BANCO
where 
datepart(MONTH,dateadd(MONTH, 0,DES_FECHA)) = datepart(MONTH,dateadd(MONTH, -1,getdate()))
GROUP BY MONTH(DES_FECHA)

SELECT MONTH(DES_FECHA) as 'Mes',MAX(NUM_VALOR) as 'Máximo Mes trasanterior Compra' 
FROM TDATOS_BANCO
where 
datepart(MONTH,dateadd(MONTH, 0,DES_FECHA)) = datepart(MONTH,dateadd(MONTH, -2,getdate()))
GROUP BY MONTH(DES_FECHA)


SELECT * FROM TDATOS_BANCO WHERE COD_INDICADORINTERNO = 317 AND NUM_VALOR = 
         (
            SELECT MIN(NUM_VALOR) FROM TDATOS_BANCO 
            WHERE   NUM_VALOR IN (
                                 SELECT DISTINCT TOP 3
                                     NUM_VALOR FROM TDATOS_BANCO 
                                         ORDER BY NUM_VALOR DESC
                             ) 
        ) 
		
END
GO

---------------------------------------
--	Execute
---------------------------------------
Execute Consulta_uno 317, 318;

Execute Consulta_dos 317, 318;

Execute Consulta_tres 317, 318;

Execute Consulta_Cuatro 317, 318;

Execute Consulta_Cinco 317, 318;

Execute Consulta_Seis 317;