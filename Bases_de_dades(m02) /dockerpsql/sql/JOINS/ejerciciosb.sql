/* a241482bb 
Bilal Balghouch El Gourari
Escola del treball 2024-2025 */

/*-- 1. Mostrar el nombre de los representantes, la ciudad de su oficina y su región.*/
SELECT nombre, ciudad, region 
FROM repventa 
JOIN oficina ON repventa.ofinum = oficina.ofinum;

/*-- 2. Obtener una lista de todas las comandes, mostrando el número de comanda, su importe, el nombre del cliente que la hizo y el límite de crédito del cliente.*/
SELECT pednum, importe, nombre, limcred 
FROM pedido 
JOIN cliente ON pedido.cliecod = cliente.cliecod;

/*-- 3. Obtener una lista de representantes ordenada alfabéticamente, mostrando el nombre del representante, código de la oficina donde trabaja, ciudad y región.*/
SELECT nombre, repcod, repventa.ofinum, ciudad, region 
FROM repventa 
JOIN oficina ON repventa.ofinum = oficina.ofinum 
ORDER BY nombre;

/*-- 4. Obtener una lista de las oficinas (ciudades, no códigos) que tienen un objetivo superior a 360.000 euros. Para cada oficina mostrar la ciudad, su objetivo, el nombre del director y su puesto.*/
SELECT ciudad, oficina.director, repventa.puesto, objetivo 
FROM oficina
JOIN repventa ON repventa.ofinum = oficina.ofinum 
WHERE oficina.objetivo > 360000;

/*-- 5. Obtener una lista de todas las comandes mostrando su número, importe y la descripción de los productos solicitados.*/
SELECT pednum, importe, producto.descrip 
FROM pedido 
JOIN producto ON producto.prodcod = pedido.prodcod;

/*-- 6. Obtener una lista de las comandes con importes superiores a 4000. Mostrar el nombre del cliente que solicitó la comanda, número de la comanda, importe, descripción del producto solicitado y el nombre del representante que la tomó. Ordenar la lista por cliente alfabéticamente y luego por importe de mayor a menor.*/
SELECT cliente.nombre AS "Nom Client", pednum, importe, producto.descrip, repventa.nombre AS "Nom Representant" 
FROM pedido 
JOIN cliente ON cliente.cliecod = pedido.cliecod 
JOIN producto ON producto.prodcod = pedido.prodcod 
JOIN repventa ON repventa.repcod = pedido.repcod 
WHERE importe > 4000 
ORDER BY cliente.nombre, importe DESC;
