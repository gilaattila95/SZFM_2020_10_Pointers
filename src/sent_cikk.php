<?php
  require_once("action_page.php");
?>

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
<title>SZFM_Fact_Portal</title>
<link rel="stylesheet" href="style.css">
<style>
	.adminCikkLista a:link {
		text-decoration: none;
	}

	.adminCikkLista .card:hover {
		background-color: #cfe1f4;
	}
</style>
</head>

<body>
	
	<h2 class="header">
		Tény Portál
	</h2>
    <div class="container" align="center">
		<div class="vertical-center">	
		  <a href="administrator.php">
			 <button type="button" class="button1">
			   Összes cikk 		
			 </button>
		  </a>
		  <a href="sent_cikk.php">
			  <button type="button" class="button2">
			   Beküldött cikkek
			  </button>
		  </a>
		  <a href="new_article.php">
			  <button type="button" class="button1">
			   Új cikk hozzáadása
			  </button>
		  </a>
		<a href="index.php?event=kilepes" name="event" id="event" value="kilepes">
            <button type="button" class="button2">Admin kilépés</button>
		</a>  
	</div>
	<div class="container adminCikkLista" align="center" style="margin-top: 10px;">
		<div class="vertical-center">
			<?php 
			if ($result = $dbc->query($sql)) {
				while ($row = $result->fetch_assoc()) { ?>
				<a href="article.php?cid=<?php print $row["cid"]; ?>">
					<div class="card" style="box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); transition: 0.3s; width: 800px; background-color:white;">
						<div class="container" style="padding: 2px 16px; text-align:left;">
							<p><?php print truncate($row["ctext"], 60) ?></p>
						</div>
					</div> 
				</a>	
			<?php } 
			} else {
				$msg = "Nincs adminisztrátori jogosultságod!"; 
				phpAlert($msg);
			}
			?>
		</div>
	</div>
	<h1 class="version">
		v.0.1
	</h1>
    </div>

</body>
</html>
