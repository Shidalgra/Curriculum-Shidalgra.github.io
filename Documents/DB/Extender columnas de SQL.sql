use asolce
--recordemos que tenemos que saber cual tabla es, luego buscamos la tabla en la jerarquia
--de la Iz, nos fijamos de cuantos caracteres es y la editamos con estas dos lineas de abajo,
--recordemos tambien que tenemos que decir cual compañia con la linea de arriba

select * from RVtasProd

alter table RVtasProd
alter column RVtasProdProductosNombre varchar (500) not null;

