# Funkcionális Specifikáció

## 1. A rendszer céljai és nem céljai. 
### Célok:
#### A fő célja az oldalnak, hogy random tényeket tárjon a nagyvilágból a fellhasználó elé.
- Két kategória közötti választás (Komoly és vicces tény)
- Like és dislike gomb minden egyes cikk alatt
- Saját cikk beküldésére egy gomb (Amit, hogy megjelenjen az oldalon, egy adminnak el kell fogadnia)
- Egy kategória kiválasztás után visszalépési lehetőség egy gombbal
- Egy kategória kiválasztás után előrelépési lehetőség az adott kategóriában egy gombbal

### Nem célok:
- Felhasználó regisztráció
- Hírlevél feliratkozás lehetősége
- Animációk és videók elhelyezése az oldalon
- Reklámok elhelyezése az oldalon
- Egyazon cikket kétszer egymás után mutasson
- Az említettnél több témakörben cikkeket gyűjteni

## 2. Jelenlegi helyzet leírása.
-- Követelmény specifikációban részletezésre került

## 3. Vágyálom rendszer leírása.
-- Követelmény specifikációban részletezésre került

## 4. A rendszerre vonatkozó pályázat, törvények, rendeletek, szabványok és ajánlások felsorolása.

//Folyamatban//

## 5. Jelenlegi üzleti folyamatok modellje.
-- Követelmény specifikációban részletezésre került

## 6. Igényelt üzleti folyamatok modellje.
-- Követelmény specifikációban részletezésre került

## 7. Követelmény lista.
-- Követelmény specifikációban részletezésre került

## 8. Használati esetek.
<p>Jelen esetünkben az aktorok lehetnek a weboldalt látogató munkatársak, akik a fact portált kikapcsolódás céljából látogatják és a weboldalt üzemeltető adminisztrátorok, akik újabb és újabb cikkeket adhatnak hozzá.<br>
Az elsődleges szereplők, azaz a vállalat munkatársai gép előtt ülő munkát végeznek. Rendelkeznek legalább felhasználói szintű számítógépes ismeretekkel, de elvárás, hogy a weboldal kezelőfelülete ne legyen bonyolult. <br>
Ugyanez vonatkozik az adminisztrátorokra is. Jelen esetünkben ők a másodlagos szereplők az esetünkben. A bejelentkezés után azonnal, egyszerűen tudjon cikkekel kapcsolatos adatokat bevinni és eltárolni. Fontos, hogy az adatok beküldése után azonnali visszajelzést kapjon az adminisztrátor, ha valami miatt nem sikerült az adatok eltárolása (pl.: kitöltetlen mező, nem megfelelő képformátum)</p>

<p align="center">
UML ábra</br>
    <img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/fact_UML.png">
</p>
<br>

## 9. Megfeleltetés, hogyan fedik le a használati esetek a követelményeket.
<b>Eset 1: Főképernyő látogatása</b>
- A weboldal címének beírása után megjelenő főoldal megjelenítése.
- Alapértelmezettként az Érdekes tényekkel kapcsolatos cikkek vannak beállítva, így először ez lesz látható.
- A főoldalon látható elemek: Érdekes- és vicces tényeket megjelenítő gombok, a cikklista alatt oldalszámokat jelző gombok </br>

<b>Eset 2: Érdekes gomb</b>
- A felhasználó erre kattintva az érdekes tények csoportjába tartozó cikkek listáját jelenítheti meg.
- Alapértelmezettként az Érdekes tényekkel kapcsolatos cikkek vannak beállítva, így először ez lesz látható.</br>

<b>Eset 3: Vicces gomb</b>
- A felhasználó erre kattintva a vicces tények csoportjába tartozó cikkek listáját jelenítheti meg.</br>

<b>Eset 4: Cikk beküldése</b>
- A felhasználó erre kattintva cikkeket küldhet be.
- A cikk beküldése után nem jelenik meg azonnal az oldalon. Ahhoz előbb az adminisztrátornak is engedélyeznie kell.</br>

<b>Eset 5: Adminisztrátor bejelentkező</b>
- Admin bejelentkezési űrlap megjelenítése.
- Beküldés után az űrlap adatainak ellenőrzése
- Az adatok helyes megadása után, átirányítás a cikkfeltöltő oldalra.

<b>Eset 6: Cikkek feltöltése</b>
- Cikkfeltöltő űrlap megjelenítése. 
- Űrlap adatainak tárolása.
- At űrlap adatainak ellenőrzése (hiányzó elemek, helyes képformátumok használata)

<b>Eset 7: Beküldött cikkek kezelése</b>
- Az adminisztrátor láthatja, ha az egyik munkatárs cikket küldött be.
- Az adminisztrátor a beküldött cikkeket elfogadhatja vagy elutasíthatja.

## 10. Képernyő tervek.

<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%201.png" width="50%" height="50%">
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%202.png" width="50%" height="50%">
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%203.png" width="50%" height="50%">
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%204.png" width="50%" height="50%">
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%205.png" width="50%" height="50%">
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%206.png" width="50%" height="50%">

## 11. Forgatókönyvek.



* 11.1.	Kapcsolatfelvétel.
* 11.2.	Első meeting a céggel.
* 11.3.	Első csapat meeting.
* 11.4. Második meeting a céggel.
* 11.5.	Követelmény specifikációtanulmányozása.<br>	
    * 11.5.1. Jelenlegi helyzet.<br>	
    * 11.5.2. Vágyálom rendszer.<br>	
    * 11.5.3. Igényelt üzleti folyamatok.<br>	
    * 11.5.4. A rendszerre vonatkozó szabályok.<br>	
    * 11.5.5. Követelménylista
* 11.6.	Funkcionális specifikáció készítése.<br>	
    * 11.6.1. A rendszer céljai és nem céljai.<br>		
    * 11.6.2. Jelenlegi helyzet leírása.<br>	
    * 11.6.3. Vágyálom rendszer leírása.<br>	
    * 11.6.4. A rendszerre vonatkozó pályázat, törvények, rendeletek, szabványok és ajánlások felsorolása.<br>
    * 11.6.5. Jelenlegi üzleti folyamatok modellje.<br>	
    * 11.6.6. Igényelt üzleti folyamatok modellje.<br>	
    * 11.6.7. Követelmény lista.<br>
    * 11.6.8. Használati esetek.<br>	
    * 11.6.9. Megfeleltetés, hogyan fedik le a használati esetek a követelményeket.<br>	
    * 11.6.10. Képernyő tervek.<br>	
    * 11.6.11. Forgatókönyvek.<br>	
    * 11.6.12. Funkció – követelmény megfeleltetés.<br>	
    * 11.6.13. Fogalomszótár.
* 11.7.	Hamradik meeting a céggel.
* 11.8.	Második csapat meeting.
* 11.9.	Weboldal elkészítése.<br>	
    * 11.9.1.		Weboldal alapjának kódolása.<br>	
    * 11.9.2.		Weboldal script-elése.<br>	
    * 11.9.3.		Cikkek,Képek hozzáadása.<br>	
    * 11.9.4.		Weboldal tesztelése.Hiba esetén 11.8.5.-es pont.Amennyibel nincs hiba, akkor a 11.9.-es pont.<br>	
    * 11.9.5.		Weboldal hibájának/hibáinak kijavítása. Vissza a 11.8.4.-as pontra.
* 11.10.	Weboldal átadása.
* 11.11.	Weboldal karbantartása.

## 12. Funkció – követelmény megfeleltetés.
A követelményspecifikációban követelményként megadott reszponzív design feltétele teljesülni fog, ugyanis a front-end Bootsrtrap
keretrendszerrel kerül majd megvalósításra.

A letisztult, egyszerű felület evidens, manapság a modern weblapoknál ez alapelvárás.
Ezzel teljes mértékben tisztában is vagyunk, természetesen törekedni fogunk ezen követelmény
kielégítésére. A képernyő terveken látható is az erre irányuló törekvés.

A cikkek MySQL-ben történő tárolása lehetőséget ad majd azok könnyű manipulálására, kezelésére. Ebből következik, hogy az adatbázisba történő új cikkek hozzáadása a mai napig egyik legnépszerűbb adatbázis-kezelővel, a MySQL-lel könnyen kivitelezhető lesz majd.

Az adminisztrátor számára elérhető funkciók rejtve maradnak majd az admin funkciókkal nem rendelkező felhasználók
számára.

A weblapunk a követelményspecifikációkban meghatározott technológiákkal megvalósítva a böngészőfüggetlenségi követelménynek is maradéktalanul eleget tesz majd, ugyanúgy fog megjelenni az összes asztali böngészőben egyaránt.

## 13. Fogalomszótár.

[Reszponzív design](https://en.wikipedia.org/wiki/Responsive_web_design)

[Boostrap](https://en.wikipedia.org/wiki/Bootstrap_(front-end_framework))

[MySQL](https://en.wikipedia.org/wiki/MySQL)
