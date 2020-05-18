<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">

</head>
<body>

        <?php

        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "nocon";

        $conn = new mysqli($servername, $username, $password, $dbname);
        

        $result = $conn->query( "SELECT `klienci`.`id` AS id_klient ,`imie`, `nazwisko`, `telefon`, `miasto`, `nick`, `produkty`.`id` AS id_produktu, `nazwa`, `kod`, `wykonawca`, `zamowienia`.`id` AS id_zamowienia FROM `zamowienia`, `produkty`, `klienci` WHERE `zamowienia`.`id_klienta`= `klienci`.`id` AND `zamowienia`.`id_produktu`=`produkty`.`id`");
            
        echo("<table BORDER=1>");
        while( $wiersz = $result->fetch_assoc()){
            echo("<tr");
            echo("<td>".$wiersz['id_klient']." </td>"
                ."<td>".$wiersz['imie'] ."</td>"
                ."<td>".$wiersz['nazwisko'] ."</td>"
                ."<td>".$wiersz['telefon'] ."</td>"
                ."<td>".$wiersz['miasto'] ."</td>"
                ."<td>".$wiersz['nick'] ."</td>"
                ."<td>".$wiersz['id_produktu'] ."</td>"
                ."<td>".$wiersz['nazwa'] ."</td>"
                ."<td>".$wiersz['kod'] ."</td>"
                ."<td>".$wiersz['wykonawca'] ."</td>"
                ."<td>".$wiersz['id_zamowienia'] ."</td>"
            );
            echo("</tr>");
        }
        echo("</table>");
        ?>
               

<hr style="width: 400px;">     
</body>
</html>
