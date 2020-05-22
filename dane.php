<!DOCTYPE html>
<html>
  <head>
    <title>Korona Projekt 01 Kuba Nocoń</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="container">
      <div class="header">
        <div class="bg-header"></div>
        <h1 class="title-logo"><a class="title-every" href="index.html">Elementy Dzieła Muzycznego</a></h1>
        <ul class="menu-header">
          <li class="el-header"><a class="el-menu-header" href="index.html">Strona Główna</a></li>
          <li class="el-header"><a class="el-menu-header" href="index1.html">Czym są?</a></li>
          <li class="el-header"><a class="el-menu-header" href="index2.html">Poszczególne Elementy</a></li>
          <li class="el-header"><a class="el-menu-header" href="index3-kk.html">Kalkulator-JS</a></li>
          <li class="el-header"><a class="el-menu-header" href="dane.php">Tabela PHP</a></li>
        </ul>
      </div>
      <div class="left-sidebar">
        <div class="bg-left"></div>
        <h3 class="left-top">Elementy:</h3>
        <ul class="left-menu">
          <li class="left-menu-el">Melodyka</li>
          <li class="left-menu-el">Rytmika</li>
          <li class="left-menu-el">Dynamika</li>
          <li class="left-menu-el">Agogika</li>
          <li class="left-menu-el">Artykulacja</li>
          <li class="left-menu-el">Harmonia</li>
          <li class="left-menu-el">Kolorystyka</li>
        </ul>
      </div>
      <div class="main">
        <?php

        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "elementy";

        $conn = new mysqli($servername, $username, $password, $dbname);
        

        $result = $conn->query( "SELECT * FROM `dynamika`");
        echo("<table class=table-main BORDER=1>");
    
            echo("<tr>");
            echo("<td>"."ID"." </td>"
                ."<td>"."Nazwa"."</td>"
                ."<td>"."Oznaczenie"."</td>"
                ."<td>"."Znaczenie" ."</td>"
            );
            echo("</tr>");
        while( $wiersz = $result->fetch_assoc()){
            echo("<tr>");
            echo("<td>".$wiersz['id']." </td>"
                ."<td>".$wiersz['nazwa'] ."</td>"
                ."<td>".$wiersz['oznaczenie'] ."</td>"
                ."<td>".$wiersz['znaczenie'] ."</td>"
            );
            echo("</tr>");
        }
        echo("</table>");
        ?>
      </div>
      <div class="footer">
        <h1 class="footer-text">Dziękuję że tutaj jesteś!</h1>
      </div>
    </div>
  </body>
  <script src="index.js"></script>
</html>