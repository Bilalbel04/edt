/* A. Consultes simples*/
/* 1. Obtenir les dades dels productes les existències dels quals estiguin entre 25 i 40 unitats. */

/* 2. Obtenir els codis dels representants que han pres alguna comanda (evitant-ne la repetició). */

/* 3. Obtenir les dades de les comandes realitzades pel client el codi és el 2111. */

/* 4. Obtenir les dades de les comandes realitzades pel client el codi és el 2111 i que han estat presos pel representant el codi és el 103. */

/* 5. Obtenir les dades de les comandes realitzades pel client el codi és el 2111, que han estat presos pel representant el codi del qual és el 103 i que sol·liciten articles del fabricant el codi del qual és ACI. */

/* 6. Obtenir una llista de totes les comandes ordenades per client i, per cada client, ordenats per la data de la comanda (ascendentment) */

/* 7. Obtenir les dades dels representants que pertanyen a loficina de codi 12 i 13 (cada representant només pertany a una oficina). */

/* 8. Obtenir les dades de productes dels quals no hi ha existències o bé aquestes són desconegudes.*/

/* 9. Mostrar els representants que van ser contractats el 2003 (sumem 5000 a la data de contracte)*/

/* 10. Mostrar el nom i els dies que porta contractats els representants*/

/* B. Consultes Multitaula*/
/* 1. Mostra dels representants el seu nom, la ciutat de la seva oficina, així com la seva regió. */

/* 2. Obtenir una llista de totes les comandes, mostrant el número de comanda, el seu import, el nom del client que el va fer i el límit de crèdit del client.*/

/* 3. Obtenir una llista de representants ordenada alfabèticament, en què es mostri el nom del representant, codi de la oficina on treballa, ciutat i la regió on ven.*/

/* 4. Obtenir una llista de les oficines (ciutats, no codis) que tenen un objectiu superior a 360.000 euros. Per a cada oficina mostrar la ciutat, el seu objectiu,
el nom del director i lloc del mateix.*/

/* 5. Obtenir una llista de totes les comandes mostrant el seu número, el import i la descripció dels productes sol·licitats.*/

/* 6. Obtenir una llista de les comandes amb imports superiors a 4000. Mostrar el nom del client que va sol·licitar la comanda, número de la comanda, 
import de la mateixa, la descripció del producte sol·licitat i el nom del representant que el va prendre. Ordeneu la llista per client alfabèticament 
i després per import de més gran a més petit.*/

/* 7. Obtenir una llista de les comandes amb imports superiors a 2000 euros, mostrant el número de comanda, import, nom del client que ho 
va sol·licitar i el nom del representant que va contactar amb el client per primera vegada.*/

/* 8. Obtenir una llista de les comandes amb imports superiors a 150 euros, mostrant el codi de la comanda, l'import, el nom del client que ho va sol·licitar, 
el nom del representant que va contactar amb ell per primera vegada i la ciutat de loficina on el representant treballa.*/

/* 9. Llista les comandes preses durant el mes d'octubre de l'any 2003 , mostrant només el número de la comanda, el seu import, el nom del client que ho va realitzar,
 la data i la descripció del producte sol·licitat*/

/* 10. Obtenir una llista de totes les comandes preses per representants de oficines de la regió Est, mostrant només el número del comanda, la descripció del 
producte i el nom del representant que ho va prendre*/

/* 11. Obtenir les comandes preses els mateixos dies en què un nou representant va ser contractat. Mostrar número de comanda, import, data comanda.*/

/* 12. Obtenir una llista amb parelles de representants i oficines on la quota del representant és més gran o igual que l'objectiu de la oficina, 
sigui o no l'oficina on treballa. Mostra Nom del representant, quota del mateix, Ciutat de l'oficina, objectiu de la mateixa.*/
SELECT nombre, cuota, ciudad, objetivo
FROM repventa
cross join oficina
where cuota >= objetivo;

/* 13. Mostra el nom, les vendes i la ciutat de l'oficina de cada 
representant de lempresa.*/

SELECT r.nombre, r.ventas, o.ciudad
FROM repventa r
JOIN oficina o ON r.ofinum = o.ofinum;

/* 14. Obtenir una llista de la descripció dels productes per als 
quals existeix alguna comanda en què se sol·licita una quantitat més gran 
a les existències del producte.*/
SELECT descrip, p.cant "Cantitat", pr.exist
FROM producto pr
JOIN pedido p ON p.prodcod = pr.prodcod AND p.fabcod = pr.fabcod
WHERE p.cant > pr.exist;

/* 15. Llista els noms dels representants que tenen una quota superior a la del director.*/
SELECT r.nombre
FROM repventa r
JOIN repventa jefe ON r.jefe = jefe.repcod
WHERE r.cuota > jefe.cuota;

/* 16. Obtenir una llista dels representants que treballen en una oficina diferent de l'oficina on treballa el seu director, mostrant també el nom del director 
i el codi de l'oficina on treballa cadascun.*/
SELECT r.nombre AS representante, jefe.nombre AS director, r.ofinum AS oficina_rep, jefe.ofinum AS oficina_jefe
FROM repventa r
JOIN repventa jefe ON r.jefe = jefe.repcod
WHERE r.ofinum <> jefe.ofinum;

/* 17. El mateix exercici anterior, però en comptes d'ofinum, la ciutat.*/
SELECT r.nombre AS representante, jefe.nombre AS director, o_rep.ciudad AS ciudad_rep, o_jefe.ciudad AS ciudad_jefe
FROM repventa r
JOIN repventa jefe ON r.jefe = jefe.repcod
JOIN oficina o_rep ON r.ofinum = o_rep.ofinum
JOIN oficina o_jefe ON jefe.ofinum = o_jefe.ofinum
WHERE r.ofinum <> jefe.ofinum;

/* 18. Mostrar el nom i el lloc de què són cap.*/
SELECT DISTINCT jefe.nombre, jefe.puesto
FROM repventa jefe
JOIN repventa r ON jefe.repcod = r.jefe;