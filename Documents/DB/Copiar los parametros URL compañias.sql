select * from CompaniaURL


insert into CompaniaURL
select 38,
	   CompaniaURLConcepto,
	   CompaniaURLFecha,
	   CompaniaURLURL
from CompaniaURL
where CompaniaId=1