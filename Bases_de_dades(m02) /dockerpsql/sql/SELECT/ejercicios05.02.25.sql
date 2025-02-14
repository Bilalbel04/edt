/* Muestra de la base de datos scott la fecha de contrato y cuantos dias lleva */ 
SELECT ename, CURRENT_DATE - hiredate "Dias contratado"
FROM emp;