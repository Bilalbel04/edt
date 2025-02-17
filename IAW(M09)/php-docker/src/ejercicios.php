<!DOCTYPE html>
<html lang="ca-ES">
  <head>
    <meta charset="utf-8"/>
    <title>👶 Exercicis curts d'estructures condicionals</title> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    <h1>Ejercicios PHP</h1>
    <h4>Programa que comprova si una variable és major que zero o no. $n=-23 → dirà "-23 no és major que zero"</h4>
   <?php
    $n = -23;
     if ($n > 0) {
      echo "$n és major que zero";
       } else {
      echo "$n no és major que zero";
     }
   ?>
   <h4>Programa semblant a l'anterior, però que dirà si la variable és positiva, negativa o zero</h4>
   <?php
   $n = -4;
   if ($n < 0 ) {
    echo "El numero $n es un numero negativo";
   }
   elseif ($n > 0 ){
     echo "El numero $n es un numero positivo";
    }
    else {
     echo "Esto es un numero zero";
    }
   ?>
   <h4>A partir del preu recollit a una variable, i el número d'unitats en una altra, el programa et dirà: preu amb IVA (21%) i si cal, preu amb descompte. El descompte (5%) s'aplica si el total resultant és major que 300€.  </h4>
   <h5> Exemple: "Tinc 5 unitats de preu 30,4€. Això són 152€ sense IVA. Serien 183,92€ amb IVA i no té descompte". </h5>
    <h5 Exemple 2: "Tinc 10 unitats de preu 30,4€. Això són 304€ sense IVA. Serien 367,84€ amb IVA i amb descompte, quedaria per 349,448€". 
   </h5>
  </body>
</html>
