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
			<?php if ($result = $dbc->query($sql)) {
							$row = $result->fetch_assoc(); ?>
				<div class="vertical-center">
					<p class="article" style="font-size: 18px;">
						<?php print $row['ctext']; ?>                   
					</p>
					<form action="" method="post">
						<input type="submit" name="event" value="aktivalas">
						<input type="submit" name="event" value="torles">
					</form>
				</div>
			<?php } ?>
		</div>
	<h1 class="version">
		v.0.1
	</h1>
    </div>
</body>
</html>
