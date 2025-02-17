<!DOCTYPE html>
<html lang="ca-ES">
  <head>
    <meta charset="utf-8"/>
    <title>Bilal Tabla de multiplicar php clase 1</title> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    <h1>Tabla de multiplicar 1 al 10</h1>
    <table>
      <thead>
          <tr>
            <th>x</th>
              <?php
                for ($a = 1; $a <= 10; $a++) {
                    echo "<th>$a</th>";
                  }
              ?>
          </tr>
        </thead>
        <tbody>
          <?php
            for ($a = 1; $a <= 10; $a++) {
              echo "<tr>";
                echo "<th>$a</th>";
                  for ($b = 1; $b <= 10; $b++) {
                    $r = $a * $b;
                      echo "<td>$r</td>";
                    }
                  echo "</tr>";
              }
            ?>
        </tbody>
      </table>
  </body>
</html>
