use rnpconta

select * from MailLeasinConf --nada
select * from AmMailSuf  --nada 
select * from FEMailPar where FEMailParUser like '%le%' --nada... hay mucho pero ninguno como el suyo
select * from TercerosMail where TercerosMailEmail like '%leonardo%' --hay dos en terceros

-- Estos correos estan en terceros de las compañias que se muestran abajo
select * from Compania where CompaniaId = 12 --Compañia nombre = RONALD NAVARRO PINTO
select * from Compania where CompaniaId = 25 --Compañia nombre = ONTARIO F C H SOCIEDAD ANONIMA

select * from CompaniaParam where CompaniaParamValor like '%Murcia%' -- hay un Juan Leonardo Flores Solano

select * from 

select * from Terceros where TerceroMail like '%marco%'

select * from Vendedor where VendedorNombre like '%Marco %'

select * from TercerosMail order by TercerosMailEmail asc