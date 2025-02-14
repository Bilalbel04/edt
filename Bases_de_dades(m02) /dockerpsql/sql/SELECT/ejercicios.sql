/*  A. Consultes simples
1. Obtenir les dades dels productes les existències dels quals estiguin entre 25 i 40 unitats.*/


/*  2. Obtenir els codis dels representants que han pres alguna comanda (evitant-ne la repetició).*/ 
SELECT DISTINCT REPCOD
FROM PEDIDO;

/*  3. Obtenir les dades de les comandes realitzades pel client el codi és el 2111. */ 
SELECT * /* SI PONEMOS * SELECCIONA TODO */
FROM PEDIDO /* DE LA TABLA PEDIDO */
WHERE CLIECOD = 2111; /* SI EL CAMPO CLIECOD CONTIENE 2111 */

/* 4. Obtenir les dades de les comandes realitzades pel client el codi és el 2111 i que han estat presos pel representant el codi és el 103.*/
SELECT *
FROM PEDIDO
WHERE CLIECOD 2111;

/*  5. Obtenir les dades de les comandes realitzades pel client el codi és el 2111, que han estat presos pel representant el codi del qual és el 103 i que sol·liciten articles del fabricant el codi del qual és ACI. */
SELECT *
FROM pedido
WHERE cliecod = 2111
  AND repcod = 103
  AND fabcod = 'ACI';

/* 6. Obtenir una llista de totes les comandes ordenades per client i, per cada client, ordenats per la data de la comanda (ascendentment) */
SELECT *
FROM pedido
ORDER BY cliecod ASC, fecha ASC;

/* 7. Obtenir les dades dels representants que pertanyen a l'oficina de codi 12 i 13 (cada representant només pertany a una oficina). */
SELECT *
FROM repventa
WHERE ofinum IN (12, 13);

/* 8. Obtenir les dades de productes dels quals no hi ha existències o bé aquestes són desconegudes. */
SELECT *
FROM producto
WHERE exist IS NULL OR exist = 0;

/* 9. Mostrar els representants que van ser contractats el 2003 (sumem 5000 a la data de contracte). */
SELECT *
FROM repventa
WHERE EXTRACT(YEAR FROM fcontrato) = 2003;

/* 10. Mostrar el nom i els dies que porta contractats els representants */
SELECT nombre, CURRENT_DATE - fcontrato
FROM repventa;

