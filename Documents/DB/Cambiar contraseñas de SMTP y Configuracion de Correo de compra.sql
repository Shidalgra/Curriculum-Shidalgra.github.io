use rnpconta

--SMTP
--cambiar contraseņas a compaņias con el mismo correo de smtp
select * from CompaniaParam
where CompaniaId in (
						select CompaniaId from CompaniaParam
						where CompaniaParamCodigo='SmtpSenderAdress'
						and  CompaniaParamValor='ronaldnavarropinto@gmail.com')
and CompaniaParamCodigo='SmtpPwd'



update C
set C.CompaniaParamValor='svvorhzosqiwoozg'
from CompaniaParam C
where C.CompaniaId in (
						select P.CompaniaId from CompaniaParam P
						where P.CompaniaParamCodigo='SmtpSenderAdress'
						and  P.CompaniaParamValor='ronaldnavarropinto@gmail.com')
and C.CompaniaParamCodigo='SmtpPwd'


---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------
--cambiar contraseņa de configuracion de correo de compra

select * from FEMailPar
where FEMailParUser='ronaldnavarropinto@gmail.com'


update F
set F.FEMailParPwd='svvorhzosqiwoozg'
from FEMailPar F
where F.FEMailParUser='ronaldnavarropinto@gmail.com'