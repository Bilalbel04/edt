Que es un join?
Un join en SQL es una operación que combina registros de dos o más tablas en 
base a una condición relacionada entre ellas. 
El resultado de un join es una tabla virtual que contiene columnas de ambas 
tablas, donde los registros coincidentes se combinan en una sola fila.

Como hacer un join?
SELECT columnas
FROM tabla1
JOIN tabla2 ON tabla1.columna_comun = tabla2.columna_comun;

Para que sirve el where?
El WHERE se utiliza para filtrar registros en una consulta SQL

SELECT columnas
FROM tabla
WHERE condicion;

Operadores utilizados en los where
= Igual
< Menor que
<= Menor o igual que
> Mayor que
>= Mayor o igual que
<> Diferente de
!= Diferente de

BETWEEN Entre un rango de valores (incluye los valores límites)
Ejemplo de BETWEEN: SELECT * FROM tabla WHERE columna BETWEEN valor1 
AND valor2; (incluye valor1 y valor2) 

LIKE Busca un patrón en una columna
Ejemplo de LIKE: SELECT * FROM tabla WHERE columna LIKE 'patron%'; (el % 
representa cualquier número de caracteres)

IN Especifica múltiples valores
Ejemplo de IN: SELECT * FROM tabla WHERE columna IN (valor1, valor2, valor3);

AND Devuelve registros si todas las condiciones se cumplen
Ejemplo de and: SELECT * FROM tabla WHERE condicion1 AND condicion2;

Que es un inner join?
El INNER JOIN es un tipo de JOIN que devuelve los registros que tienen 
valores coincidentes en ambas tablas.

SELECT columnas
FROM tabla1
INNER JOIN tabla2 ON tabla1.columna_comun = tabla2.columna_comun;

Que es un left join?
El LEFT JOIN es un tipo de JOIN que devuelve todos los registros de la 
tabla de la izquierda y los registros coincidentes de la tabla de la derecha.

SELECT columnas
FROM tabla1
LEFT JOIN tabla2 ON tabla1.columna_comun = tabla2.columna_comun;

Que es un right join?
El RIGHT JOIN es un tipo de JOIN que devuelve todos los registros de la
tabla de la derecha y los registros coincidentes de la tabla de la izquierda.

SELECT columnas
FROM tabla1
RIGHT JOIN tabla2 ON tabla1.columna_comun = tabla2.columna_comun;

Que es un full join?
El FULL JOIN es un tipo de JOIN que devuelve todos los registros cuando
hay una coincidencia en la tabla de la izquierda o derecha.

SELECT columnas
FROM tabla1
FULL JOIN tabla2 ON tabla1.columna_comun = tabla2.columna_comun;



Inserir en la taula DEPT la informació corresponent a un nou departament de 
consultoria, de codi 50 i que estigui ubicat a SANTANDER. 
Per a l'ocasió creeu la seqüència deptno_seq (la qual començarà en 50 
i s'incrementarà de 10 en 10) i la utilitzeu per la sentència SQL.

Tabla tablasScott_v1.0.sql

