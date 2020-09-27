<?php
 session_start();
 
 // Adatbázis csatlakozás
$dbc = mysqli_connect("localhost", "root", "", "fact");
$sql = "set names utf8";
mysqli_query($dbc, $sql);

if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

$uzenet = "";

// Eseménykezelés
$pEvent = htmlspecialchars(filter_input(INPUT_POST, "event"));
$gEvent = htmlspecialchars(filter_input(INPUT_GET, "event"));
$uname = htmlspecialchars(filter_input(INPUT_POST, "uname"));
$psw = htmlspecialchars(filter_input(INPUT_POST, "psw"));
$ctext = htmlspecialchars(filter_input(INPUT_POST, "ctext"));
$kategoria = filter_input(INPUT_POST, "kategoria");

if ($pEvent == "bejelentkezés") {
    $sql = "select * from admin_userek where uname = '$uname' and aktiv = 1";
    
    if($result = mysqli_query($dbc, $sql)) {
        
        $row = mysqli_fetch_row($result);
        if(password_verify($psw, $row[2])) {// Beléphet
            $_SESSION["auid"] = $row[0];
            $_SESSION["uname"] = $row[3];
            if(isset($_SESSION["auid"])) {
                header("location: administrator.php");
                exit;
            }
        }else { // Nem léphet be
            $uzenet = "Sikertelen belépés!";
        }  
    }
} else if ($gEvent == "kilepes") {
        unset($_SESSION["auid"]);
        unset($_SESSION["uname"]);
        header("location: index.php");
    }


?>
