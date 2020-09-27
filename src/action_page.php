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


//ADMIN FELÜLETI CIKKFELTÖLTÉS

function phpAlert($msg) {
    echo  '<div align="center"> <div class="alert" style=" width: 450px; padding: 20px; background-color: #51A9F6; color: white; margin-bottom: 15px;">';
    echo '<span class="closebtn" onclick="this.parentElement.style.display=\'none\'"';
    echo ' style="margin-left: 15px; color: white; font-weight: bold; float: right; font-size: 22px; line-height: 20px; cursor: pointer; transition: 0.3s;"';
    echo '>&times;</span>';
    echo $msg;
    echo '</div></div>'; 
}

if (pathinfo($_SERVER['PHP_SELF'], PATHINFO_FILENAME) == "new_article") {

    if($pEvent == "cikkFel") { 
        $filename = $_FILES["kep"]["name"]; 
        $tempname = $_FILES["kep"]["tmp_name"];     
        $folder = "images/".$filename; 
        $sql = "insert into cikkek (ctext, kep, asent, aktiv, kategoria) values ('$ctext', '$filename', 1, 1, '$kategoria')";
        if (($_FILES["kep"]["type"] == "image/jpeg" || $_FILES["kep"]["type"] == "image/pjpeg") || $_FILES["kep"]["type"] == "image/png" || $_FILES["kep"]["type"] == "image/jpg" || $_FILES["kep"]["size"] == 0) {
            if(mysqli_query($dbc, $sql)) {
                if (move_uploaded_file($tempname, $folder))  { 
                    $msg = "A képfeltöltés sikeres!"; 
                    //phpAlert($msg);
                
                } else { 
                    $msg = "A képfeltöltés sikertelen!"; 
                    //phpAlert($msg);
                }
                $msg = "A cikkfeltöltés sikeres!"; 
                phpAlert($msg);
            } else {
                $msg = "A cikkfeltöltés sikertelen!"; 
                phpAlert($msg);
            }
        } else {
            $msg = "A képformátum nem megfelelő!"; 
            phpAlert($msg);
        }
    } 
}

?>
