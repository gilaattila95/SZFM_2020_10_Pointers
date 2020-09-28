<?php
  require_once("action_page.php");
?>

<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
<title>SZFM_Fact_Portal</title>
<link rel="stylesheet" href="style.css">
</head>

<body>
	<h2 class="header">
	Tény Portál
	</h2>
    <div class="container" align="center">
      <div class="vertical-center">	
        <a href="index.php">
           <button type="button" class="button1">
             Érdekességek 		
           </button>
        </a>
        <a href="vicces.php">
            <button type="button" class="button2">
             Viccesek
            </button>
        </a>
        <a href="cikk.php">
            <button type="button" class="button1">
             Cikk beküldése
            </button>
        </a>
        <a href="admin.php">
            <button type="button" class="button2">
             Admin belépés
            </button>
        </a>
        <h1 class="article">
	    	<?php if ($result = $dbc->query($sql)) {
          $erdekes = $result->fetch_assoc(); 
          $elozo = $result->fetch_assoc(); 
          print $erdekes['ctext'];
          }?>
        <h1>  
        <img src="images/<?php print $erdekes["kep"] ?>" class="fact_pic" width="30%" height="30%"></p>
        <div class="thumbs">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
            <i id="fa fa-thumbs-up" class="fa fa-thumbs-up" ></i>
            <i>&nbsp;&nbsp;</i>
            <i id="fa fa-thumbs-down" class="fa fa-thumbs-down"></i>
         <script src="main.js"></script>
         </div>
         <button type="button" class="back">	
                Vissza
         </button>
         <a href="index.php">
            <button type="button" class="forward">
                Következő
            </button>
          </a>
        </div>
    </div>
    <h1 class="version">
    v.0.1
    </h1>
</body>
</html>
