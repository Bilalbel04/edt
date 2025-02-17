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
   $n = > -1;
   if ($n < -1 ) {
    echo "Esto es un numero nevatigo";
   }
    else {
     echo "Esto es un numero positivo";
    }
   ?>
  </body>
</html>
