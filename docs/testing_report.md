# Tesztjegyzőkönyv

### Tesztelendő program, alkalmazás:

SZFM_Fact_Portal

### Tesztelési környezet:
Google Chrome, Firefox, Microsoft Edge

### Tesztelés tárgya:

Fejlesztői- és Elfogadási teszt

### Tesztelés célja:

Az esetleges rossz funkcionalitás megtalálása, javítása 

### Tesztesetek:
- Teszt 1 : Reszponzivitás vizsgálata:
<br>Az oldal mindhárom fent említett asztali böngészőn reszponzívan viselkedik.</br>  

- Teszt 2 : Főoldal helyes betöltése:
<br>Elvárás az érdekes cikkek megjelenítése véletlenszerű sorrendben, amely teljesül is.</br>  

- Teszt 3 : A főoldalről további menüpontokba való eljutás:
<br>A menüpontokra mutató hivatkozások helyesek, kattintás után a megfelelő helyre jutunk.</br> 

- Teszt 4 : A vicces kategóriából további menüpontokba való eljutás:
<br>A hivatkozások helyesek, kattintás után a megfelelő helyre jutunk.</br>

- Teszt 5 : Az admin belépés menüből további menüpontokba való eljutás:
<br>A hivatkozások helyesek, kattintás után a megfelelő helyre jutunk.</br> 

- Teszt 6 : Like és dislike gomb működése:
<br>Az egérmutató gombok fölé húzására CSS aktiválódik, kattintás után összesíti az adott reakció számát. Megfelel az 
elvárásnak.</br> 

- Teszt 7 : Admin belépés:
<br>Elvárás: megfelelő felhasználónév és jelszó páros esetén az admin kezdőképernyőre kell jutni. Teljesül az elvárás.</br> 

- Teszt 8 : Összes cikk megjelenítése:
<br>Admin bejelentkezés után jelenjen meg balról az első gomb, "Összes cikk" felirattal. Rákattintva az adatbázisban tárolt
összes cikket látnunk kéne. Teszt után tapasztalom, hogy ez is teljesül.</br>

- Teszt 9 : Következő gomb működése:
<br>Az elvárást, miszerint lenyomására az adott kategóriából való újabb, véletlenszerű cikket dob a rendszer, teljesül.
Jól működik.</br> 

- Teszt 10 : Csak adott kategóriába tartozó cikkek megjelenítése:
<br>Elvárás: egy kategóriában csak az adott kategóriájú cikkek kapjanak helyet. Sikeresen teljesül ez a feltétel is, nincs 
a cikkek között témakör szerinti keveredés.</br> 

- Teszt 11: Az admin jelszavas tesztelésnél a jelszó a 'password' lett megadva és a hashed jelszó szintén ugyanez, így a belépésnek sikeresnek kell lennie. A kapott eredmény alapján hibaüzenet nélkül lefut a kód:
```php
// Admin belépés tesztelése

$psw = 'password';
$hashedpsw = '$2y$10$FNvUJOOdM5/HiBzC9TESJeT.XxSTMKdvGt8vNthPYLB7vuQMa/Jdu';

if(password_verify($psw, $hashedpsw)) {// Beléphet
    $_SESSION["auid"] = 1;
    $_SESSION["uname"] = 'admin';
    if(isset($_SESSION["auid"])) {
        $uzenet = "Sikeres belépés!";
    }
}else { // Nem léphet be
    $uzenet = "Sikertelen belépés!";
}  

echo '<b>Teszt 1:</b> Admin belépés tesztelése helyes jelszó megadása után. <br>';
echo 'A várt eredménynek Sikeres belépés üzenet kiírását kell kapnunk. <br>';
echo 'A kapott eredmény: ' . $uzenet . '<br><br>';
```

<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/teszt1.PNG" width="50%">

- Teszt 12: az előző kódcsipetben a jelszót változtattam meg 'jelszo'-ra így sikertelen belépés hibaüzenetet kell kapnunk, ami teljesül is:

```php
$psw = 'jelszo';
$hashedpsw = '$2y$10$FNvUJOOdM5/HiBzC9TESJeT.XxSTMKdvGt8vNthPYLB7vuQMa/Jdu';

if(password_verify($psw, $hashedpsw)) {// Beléphet
    $_SESSION["auid"] = 1;
    $_SESSION["uname"] = 'admin';
    if(isset($_SESSION["auid"])) {
        $uzenet = "Sikeres belépés!";
    }
}else { // Nem léphet be
    $uzenet = "Sikertelen belépés!";
}  

echo '<b>Teszt 2:</b> Admin belépés tesztelése helytelen jelszó megadása után. <br>';
echo 'A várt eredménynek Sikeretelen belépés üzenet kiírását kell kapnunk. <br>';
echo 'A kapott eredmény: ' . $uzenet . '<br><br>';
```
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/teszt2.PNG" width="50%">

- Teszt 13: Annak a függvénynek vizsgálata, hogy túl hosszú szöveg esetén elvégzi-e a szöveglevágást.  Ha a string hossza nagyobb, mint 25, rövidítse le és a végére '...'-ot illesszen. Első esetben a string hossza csak 21, ezért a teljes szöveget kell megjelenítenie.

```php
function truncate($str, $chars, $end = '...') {
    if (strlen($str) <= $chars) return $str;
    $new = substr($str, 0, $chars + 1);
    return substr($new, 0, strrpos($new, ' ')) . $end;
}

$text = 'lorem ipsum dolor et.';
echo "<b>Teszt 3:</b> A túl hosszú üzenet levágásának ellenőrzése. Ha a string hossza nagyobb, mint 25, rövidítse le és a végére '...'-ot illesszen. <br>";
echo "A vizsgált szöveg: 'lorem ipsum dolor et.' <br>";
echo "A vizsgált szöveg hossza: " . strlen($text). "<br> A kapott eredmény: ";
echo truncate($text, 25);
```
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/teszt3.PNG" width="70%">

- Teszt 14: Az előző truncate() függvény vizsgálata 25-nél hosszabb szöveggel:

```php
$text2 = 'lorem ipsum dolor et. Sed at auctor libero.';
echo "<br><br><b>Teszt 4:</b> A túl hosszú üzenet levágásának ellenőrzése. Ha a string hossza nagyobb, mint 25, rövidítse le és a végére '...'-ot illesszen. <br>";
echo "A vizsgált szöveg: 'lorem ipsum dolor et. Sed at auctor libero.' <br>";
echo "A vizsgált szöveg hossza: " . strlen($text2). "<br> A kapott eredmény: ";
echo truncate($text2, 25);
```
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/teszt4.PNG" width="70%">

- Teszt 15: Az admin felületben a cikkbeküldésnél üres mezőt nem lehet beküldeni, ha így teszünk, a program az elvárt módon jelez, hogy a mező üres.

- Teszt 16: Cikk feltöltéskor a képformátum ellenőrzése. Csak jpg, jpeg és png képformátumot fogadhat el. Jelen esetben egy pdf formátummal próbálkoztam. A program a várt módon működik: felugró ablakban kiírja, hogy helytelen képformátum.

- Teszt 17: A felhasználói cikkbeküldő felületnél üres mezőt nem lehet beküldeni, ha így teszünk, a program az elvárt módon jelez, hogy a mező üres.

- Teszt 18: Ha egy felhasználó beküld egy cikket, az megjelenik az admin felületen.

- Teszt 19: Az admin felületen a felhasználó által beküldött cikkekre rá lehet kattintani, hogy szerkeszthessük. Itt a törlés gomb megfelelően működik. Az adott cikk törölve lesz az adatbázisból.

- Teszt 20: Az admin felületen a felhasználók által beküldött cikk szerkesztésekor az aktiváló gomb működik. Erre klikkelve megjelenik a főoldalon a cikk.

### Megjegyzés:

A tesztet készítette: 
- Kincs Ákos Levente, 2020.09.27.
- Halász Dávid, 2020. 09. 27.
