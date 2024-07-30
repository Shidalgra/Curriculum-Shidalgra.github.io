use asocatie
-- cuando hay problemas de que no calsan los montos de ahorro, hay que revisar que la suma de intereses de a la linea cuando se retira dinero
-- el dinero tambien, no puede haber un retiro que no se ha hecho, el ejemplo se da de que si apenas ha hecho 2 aportes de 20'000.00 no puede retirar 60'000.00
-- por que son 40 lo que tiene no los 60, tener mucho cuidado con esto, los valores se tienen que cambiar de manera que las sumas de aportes den...

select * from AmAhDDet where AmAhDDetNDoc = 'Liq-60139' and AmAhDId = 12966

update AmAhDDet set AmAhDDetCredito = 119999.55 where AmAhDDetNDoc = 'Liq-60139' and AmAhDId = 12966