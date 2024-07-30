use rnpconta
go

declare @CtmovimientosId as decimal(10,0)
set @CtmovimientosId=724491

Delete from Mayorizacion Where CtmovimientosId=@CtmovimientosId
Delete from CtMovimentosCuentas Where CtmovimientosId=@CtmovimientosId
Delete from CtMovimentosImg Where CtmovimientosId=@CtmovimientosId
Delete from CtMovimentos Where CtmovimientosId=@CtmovimientosId