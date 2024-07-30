begin tran

INSERT INTO  [dbo].[AmCrDDetalle]
           ([AmCrDId]
           ,[AmCrDDetDoc]
           ,[AmCrDDetSaldo]
           ,[AmCrDDetCuentasId]
           ,[AmCrDDetCtMovId]
           ,[AmCrDDetObservacion]
           ,[AmCrDDetWst]
           ,[AmCrDDetFechaR]
           ,[AmCrDDetUsuario]
           ,[AmCrDDetTasa]
           ,[AmCrDDetCreI]
		   ,[AmCrDDetCreIMorat]
		   ,[AmCrDDetPoliza]
           ,[AmCrDDetDebI]
           ,[AmCrDDetCreP]
           ,[AmCrDDetDebP]
           ,[AmTpMvId]
           ,[AmCrDDetFecha]
           ,[AmCrDDetDocDep]
           ,[AmCrDDetalleSaldo]
           ,[AmCrDDetalleDepValor]
           ,[AmCrDDetalleOrden]
           ,[AmCrDPagoEstado]
           ,AmCrDDetDiasInt
           ,AmCrDDetalleFechaPlanilla
		   ,AmCrDPagoFechaConta)
     Select
           AmCrDId
           ,'P-Cred-'+CONVERT(VARCHAR(14), AmCrDFechaForma)--AmCrDDetDoc, varchar(30),>
           ,AmCrDSaldo
           ,''--AmCrDDetCuentasId, varchar(50),>
           ,0
           ,'Ajuste de saldos Desde deduccion Planilla '
           ,''
           ,AmCrDFechaForma
           ,'LMURCIA'
           ,AmCrDTasaV--AmCrDDetTasa, decimal(9,4),>
           ,0
		   ,0
		   ,0
           ,0
		   ,(dbo.Fn_amcrdSaldo(AmCrDId) - AmCrDSaldo)
           ,0
           ,15--AmTpMvId, decimal(10,0),>
           ,AmCrDFechaForma
           ,'P-Cred-'+CONVERT(VARCHAR(14), AmCrDFechaForma)--AmCrDDetDocDep, varchar(30),>
           ,AmCrDSaldo
           ,0
           ,[dbo].[Fn_AmCrDDetalleOrden](AmCrDId)
           ,1
           ,15
           ,AmCrDFechaForma
		   ,AmCrDFechaForma
    From AmCrD 
	

	Rollback;

	Commit;



	update AmCrD set AmCrDSaldo=dbo.Fn_AmCrDSaldo(AmCrDId) where AmCrDSaldo<>dbo.Fn_AmCrDSaldo(AmCrDId)
	
	select dbo.Fn_AmCrDSaldo(AmCrDId), AmCrDSaldo, * from AmCrD where AmCrDSaldo<>dbo.Fn_AmCrDSaldo(AmCrDId)