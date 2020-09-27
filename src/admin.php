<?php
  require_once("action_page.php");
?>

<!doctype html>
<html>
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
		</div>
	<form class="login" action="" method="post">
		<label for="uname"><b>Felhasználónév</b></label><br>
		<input type="text" placeholder="Enter Username" name="uname" id="uname" required><br><br>
		<label for="psw"><b>Jelszó</b></label><br>
		<input type="password" placeholder="Enter Password" name="psw" id="psw" required><br><br>
		<input type="hidden" name="event" id="event" value="bejelentkezés">
		<button class="admin-button" type="submit">Belépés</button>
	</form>
	<h1 class="version">
		v.0.1
	</h1>
    </div>
</body>
</html>
