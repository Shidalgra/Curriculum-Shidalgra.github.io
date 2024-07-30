--Para cuando no manda FacturaElectronica compañia nueva agregarURL_FE


begin tran

INSERT INTO [dbo].[CompaniaURL]
           ([CompaniaId]
           ,[CompaniaURLConcepto]
           ,[CompaniaURLFecha]
           ,[CompaniaURLURL])
     select
           57
           ,CompaniaURLConcepto
           ,CompaniaURLFecha
           ,CompaniaURLURL

	 from CompaniaURL where Companiaid = 1

commit

rollback

select * from Parametro

INSERT INTO [dbo].[Parametro]
           ([CompaniaId]
           ,[ParametroDesc]
           ,[ParametroValor]
           ,[ParametroTexto]
		   ,[UniMedId]
		   )
     select
           57
           ,ParametroDesc
           ,ParametroValor
           ,ParametroTexto
		   ,UniMedId

	 from Parametro where Companiaid = 56


