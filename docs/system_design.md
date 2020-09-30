# A rendszer célja
- Az oldal látogatóinak:
    - Egy olyan weblap elérése, amely nevéhez hűen érdekesebbnél érdekesebb tényekkel igyekszik megfogni látogatóit
    - Könnyen megszokható, tanulást nem igénylő felhasználói felület biztosítása
    - Alapvetően érdekes cikkek olvasása
    - Két kategória közötti választás (Komoly és vicces tény)
    - Like és dislike gomb minden egyes cikk alatt
    - Saját cikk beküldésére egy gomb (Amit, hogy megjelenjen az oldalon, egy adminnak el kell fogadnia)
    - Egy kategória kiválasztás után visszalépési lehetőség egy gombbal
    - Egy kategória kiválasztás után előrelépési lehetőség az adott kategóriában egy gombbal
    
- Adminoknak:
    - Hozzáférés a bejelentkezési űrlaphoz 
    - Hozzáférés a cikkfeltöltő oldalhoz
    - Hozzáférés a cikkeket tartalmazó adatbázishoz
    
## A rendszernek nem célja:
   - Felhasználó regisztráció
   - Animációk és videók elhelyezése az oldalon
   - Reklámok elhelyezése az oldalon
   - Egyazon cikket kétszer egymás után mutasson

# Projekt terv  

Csapatunk tagjai:

- Gila Attila (fejlesztő)
- Halász Dávid (fejlesztő)
- Kincs Ákos (fejlesztő)
- Tóth László (fejlesztő)

Négy fős, fiatal, motivált csapatunk minden tagja egyetért abban, hogy egy ilyen projekt készítése során az egyik, ha 
nem a legfontosabb teendő a feladatok egymás közötti igazságos felosztása. Csapatunk néhány tagja már rendelkezik
nem elhanyagolható webfejlesztői múlttal, így segítséget tudnak majd nyújtani csapatunk azon tagjai számára,
akik még nem érzik teljesen magukénak ezt a területet. A projekt készítése során mindemellett természetesen figyeltünk
arra is, hogy nagyjából ugyanolyan munkamennyiségben is nagyjából egységes legyen a feladatok egymás közötti felosztása.

Az ütemtervünk a következőképp nézett ki: egyeztettünk elöljáróban a megrendelővel arról, mi lenne a cél. 
- Ezen beszélgetést követően készítettük el a követelményspecifikációt ahol rögzítettük az igényeket. (2020. 09. 14)
- Ezt követően funkcionális specifikációban részletekbe menően, számos szempont alapján tisztáztuk a projekt 
során felmerülő esetlegesen nem egyértelmű pontokat. (2020. 09. 21)
- Végül, elkészítésre került jelen dokumentum, a rendszerterv is. (2020. 09. 21)
- A következő fő lépés és mérföldkő maga a kódolás és 
- A tesztelés, amely a jelen dokumentum írásától számított néhány napon belül kerül végrehajtásra (2020. 09. 28)

# Üzleti folyamatok modellje

A felhasználó a weblapot megnyitva egy egyszerű, könnyen átlátható főképernyőn találja magát, 
ahol alapértelmezetten az érdekes tényeket tartalmazó cikkek jönnek majd vele szembe.
Innen a fenti menüsorból navigálhat tovább a felhasználó. A menüsor tartalma:

- 'Érdekességek' gomb: A gombra kattintva eljuthatunk az érdekes cikkek listájához. A főképernyőről ezen menüpontra kattintva nem érzékelünk 
újdonságot, hiszen alapértelmezés szerint is ezeket a cikkeket látjuk.

- 'Viccesek' gomb: A gombra kattintva a felhasználó eljut a vicces cikkek listájához.

- 'Cikk beküldése' gomb: A felhasználónak lehetőséged ad saját cikkek beküldésére.
Az oldalon való megjelenést viszont adminisztrátori jóváhagyás előz meg.

- 'Admin belépés' gomb: Az adminisztrátori bejelentkező űrlapra viszi a felhasználót. Hibás bejelentkezési adatok esetén
    meghiúsul a belépés.
    - Cikk beküldése: Egy szövegmező áll rendelkezésre, ahová a cikk szövege írható. Lehetőség van kiválasztani egy legördülő
     listából, hogy melyik kategóriába szeretnénk feltölteni cikkünket, amelyet igény szerint akár képpel együtt is
     feltölthetünk.

- Like és dislike gomb: Lenyomásuk száma tárolásra kerül, egyfajta visszajelzésként szolgál a cikk népszerűségéről.

# Követelmények

## Funkcionális követelmények:

- K01: Reszponzív design
- K02: Az adatbázisba könnyen hozzáadhatók legyenek a cikkek.
- K03: Böngészőfüggetlenség

## Nemfunkcionális követelmények:

- K04: Letisztult, egyszerű, átlátható felület

# Funkcionális terv

Weboldalunkat tervezése során törekedtünk arra, hogy a cég minden dolgozója egyből magáénak érezze azzal, hogy használata
kezdetétől fogva könnyen átlátható, egyszerű felhasználói felülettel találja szemben magát. Nem láttuk értelmét annak,
hogy a dolgozóknak az oldal olvasásához bejelentkezésre vagy regisztrációra legyen szükségük, így ettől a lépéstől is 
megkíméltük őket.

Az oldal meglátogatásakor az érdekes témakörű tényekből egy véletlenszerű jelenik meg a felhasználó előtt.

Az oldal tetején lévő menüsorból az oldal összes funkciója elérhető, beleértve:

- tények olvasása két témakörben
- saját cikk beküldése: beküldés után az admin manuálisan felülvizsgálja a cikk tartalmát, ha megfelelőnek tartja, az csak
    csak akkor kerül ki az oldalra
- admin belépés: a beküldött cikkek ellenőrzése, saját cikk feltöltése

## Képernyő tervek:

- Az összes menüpont képernyőterve, beleértve a cikk beküldésére szolgáló oldalt, az admin-bejelentkező oldalt, illetve
a cikkek like-olását illetve dislike-olását lehetővé tevő funkcionalitást.

<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%201.png" width="50%" height="50%">
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%202.png" width="50%" height="50%">
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%203.png" width="50%" height="50%">
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%204.png" width="50%" height="50%">
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%205.png" width="50%" height="50%">
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%206.png" width="50%" height="50%">

## Menü hierarchiák:
- A menüpontokon belül nincsen különösebb hierarchia, az összes menüpontból egytől egyig elérhető az összes többi másik is.
Az admin bejelentkezés után további menüpontok mindegyike szinten elérhető.

# Fizikai környezet

### Frontend
- Visual Studio Code
- Sublime Text
- Brackets

### Backend

- Visual Studio Code
- phpMyAdmin

### Egyéb

- XAMPP

Böngészők:

- Firefox
- Google Chrome
- Opera
- MS Edge 

### Fejlesztő eszközök
- HTML
- CSS
- PHP
- JavaScript

### Keretrendszer
- Bootstrap

## Hardver amelyre fejleszteni fogunk:
- Intel Core I7 4770 processzor
- 8GB DDR4 memória
- Integrált GPU

# Absztrakt domain modell

## Absztrakt komponensek, ezek kapcsolatai

Weblapunk rendszere alapvetően 3 jól elkülöníthető komponensből áll. Ezek a tartalom megjelenítését és a felhasználóval való
interaktivitást lehetővé tevő frontend, a felhasználó cselekvéseit értelmező és feldolgozó backend, illetve az adatok 
tárolására szolgáló adatbázis.

A 3 fő komponens közötti kapcsolat a következőképp alakul: 

Abban az esetben például, ha <b>a felhasználó saját cikket</b> szeretne beküldeni:

A felhasználó ellátogat a Cikk beküldése menüpontra, mindez a frontenden történik. A cikk beküldésével járó információkat 
a backend értelmezi. A backend az adatok feldolgozása után továbbítja azokat az adatbázisnak tárolás céljából.
A MySQL adatbázisunk pedig tárolja a küldött tényt.

Abban az esetben, ha az <b>admin bejelentkezne</b> a rendszerbe:

Az adminisztrátor a főoldalról az Admin belépés menüpontra való kattintás után eljut
a bejelentkezési oldalra ahol felhasználónév és jelszó páros szükséges a belépéshez.

A bejelentkezési adatok a backend számára kerülnek továbbításra, ahol a bejelentkezési információk összehasonlításra 
kerülnek az adatbázisban külön az admin felhasználók adatainak tárolására létrehozott tábla megfelelő attribútumaival.
Amennyiben egyezés van, az admin bejelentkezés sikeres. Ellenkező esetben meghiúsul.

# Architekturális terv

### Architekturális tervezési minta

Esetünkben ez nem más, mint a 3 Layered architecture vagyis magyarul a 3-rétegű alkalmazás, amely alapesetben így néz
ki:

<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/3layered_architecture.png" width="50%" height="50%">

A projektünk során ez alapján a tervezési minta alapján dolgozunk.

- A Prezentációs rétegben foglal helyet minden, amit a felhasználó lát és használ. Mi ebben a rétegben HTML-t, CSS-t és
JavaScript-et alkalmaztunk.
- A Logikai rétegnek a felhasználó parancsainak feldolgozásában van szerepe. Ennek a rétegnek a funkcionalitására PHP-t
használunk projektünk során, amely a felső rétegből jövő kérést szolgál ki válaszként valamely alsó rétegbeli adattal.
- Az Adat rétegben az adatok kerülnek tárolásra. Az általunk használt technológia a MySQL volt.

### Rendszer bővíthetősége
Weblapunk igény szerint mind tartalomban, mind pedig funkcionalitásában bővíthető.

### Biztonsági funkciók
Mivel a felhasználók csak regisztráció nélkül, vendégként böngészhetik a weboldalt, így nem tárolunk róluk semmilyen
adatot.

# Adatbázis terv

- Logikai adatmodell
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/fact_db.png" width="50%" height="50%">

- Tárolt eljárások

A cikkekkel kapcsolatos adatok tárolására jelenleg a phpMyAdmin nyílt forráskódú eszközt használjuk. A képek feltöltése során a jpg vagy png formátumú fájlokat a projekt saját images mappájába fogjuk átmásolni.

- Fizikai adatmodellt legeneráló SQL szkript

~~~~sql
CREATE TABLE `admin_userek` (
  `auid` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `jelszo` char(255) COLLATE utf8_hungarian_ci NOT NULL,
  `uname` varchar(60) COLLATE utf8_hungarian_ci NOT NULL,
  `aktiv` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE `cikkek` (
  `cid` int(11) NOT NULL,
  `ctext` text COLLATE utf8_hungarian_ci NOT NULL,
  `kep` varchar(60) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `asent` int(11) NOT NULL,
  `aktiv` int(11) NOT NULL,
  `kategoria` varchar(60) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
~~~~

# Implementációs terv

<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/implement_uml.png" width="80%" height="auto">

# Tesztterv

Leginkább adat tesztelés elvégzésére lesz szükség:
- Adminisztrátor bejelentkezésére vonatkozó tesztelés: több különböző adatot beírni (helyes és helytelen). Helyes adat esetén az adminisztrátor sikeresen bejelentkezik a felületre. Helytelen adat megadása esetén hibaüzenetet kellene kapnunk.
- Az adminisztrátor kijelentkezés megfelelően működik-e? Ha igen, az adminisztrátor kijelentkezik az adminisztrációs felületből és a boolean értéke 0 lesz.
- Az adminisztrátori cikk feltöltési mező tesztelése: üres mező beküldése esetén hibaüzenetet kellene kapnunk. Ha minden mezőt kitöltöttünk, a beküldésnek sikeresnek kellene lennie.
- Cikk feltöltésekor azt is ellenőrízni, hogy a képformátumot figyelembe veszi-e a program. Rossz képformátum (minden, ami nem jpg, jpeg vagy png) feltöltése esetén visszajelzést kellene kapnunk, hogy a cikk feltöltése nem sikerült.
- A munkatársak általi cikk beküldési mező tesztelése: minden mezőnek kitöltve kell lennie a sikeres cikk beküldéshez. Ellenkező esetben hibaüzenetet kell kapnunk.
- Like vagy dislike gomb tesztelése. Az egyikre klikkelve annak értéke eggyel kellene nőnie.
- Annak ellenőrzése, hogy a weboldal reszponzívan működik-e.

# Telepítési terv

A felhasználó esetében a következőképp néz majd ki:
- Asztali számítógép vagy laptop megléte, használatra kész állapotban
- Internetelérés
- A rendszeren alapértelmezett böngésző használata vagy harmadik féltől származó böngésző letöltése és telepítése
- Az oldal URL-jének címsorba történő begépelése

# Karbantartási terv

Mivel mind jól tudjuk, hogy az informatika egy folyamatosan megújuló iparág, fontosnak tartjuk, hogy naprakészek maradjunk az aktuális szabványokkal,
technológiákkal kapcsolatban. Ebből adódóan kötelességünknek érezzük, hogy weblapunkat átadás után is
karbantartsuk, illetve korszerűsítsük azzal, hogy mindig naprakész technológiákat használunk.

A tartalomra vonatkozóan pedig mindkét kategóriájú cikkek rendszeres frissítését tervezzük, így az adatbázisban nem lesznek
megtalálhatók több hetes, a felhasználók által már megunt cikkek.
