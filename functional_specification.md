# Funkcionális Specifikáció

## 1. A rendszer céljai és nem céljai. 

## 2. Jelenlegi helyzet leírása.

## 3. Vágyálom rendszer leírása.

## 4. A rendszerre vonatkozó pályázat, törvények, rendeletek, szabványok és ajánlások felsorolása.

## 5. Jelenlegi üzleti folyamatok modellje.

## 6. Igényelt üzleti folyamatok modellje.

## 7. Követelmény lista.

## 8. Használati esetek.
<p>Jelen esetünkben az aktorok lehetnek a weboldalt látogató munkatársak, akik a fact portált kikapcsolódás céljából látogatják és a weboldalt üzemeltető adminisztrátorok, akik újabb és újabb cikkeket adhatnak hozzá.<br>
Az elsődleges szereplők, azaz a vállalat munkatársai gép előtt ülő munkát végeznek. Rendelkeznek legalább felhasználói szintű számítógépes ismeretekkel, de elvárás, hogy a weboldal kezelőfelülete ne legyen bonyolult. <br>
Ugyanez vonatkozik az adminisztrátorokra is. Jelen esetünkben ők a másodlagos szereplők az esetünkben. A bejelentkezés után azonnal, egyszerűen tudjon cikkekel kapcsolatos adatokat bevinni és eltárolni. Fontos, hogy az adatok beküldése után azonnali visszajelzést kapjon az adminisztrátor, ha valami miatt nem sikerült az adatok eltárolása (pl.: kitöltetlen mező, nem megfelelő képformátum)</p>

<p align="center">
UML ábra</br>
    <img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/ff5e21ba06d99c6a5e85ee815fecc640fab08407/images/fact_UML.png">
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

## 12. Funkció – követelmény megfeleltetés.
A követelményspecifikációban követelményként megadott reszponzív design feltétele teljesülni fog, ugyanis a front-end Bootsrtrap
keretrendszerrel kerül majd megvalósításra.

A letisztult, egyszerű felület evidens, manapság a modern weblapoknál ez alapelvárás.
Ezzel teljes mértékben tisztában is vagyunk, természetesen törekedni fogunk ezen követelmény
kielégítésére. A képernyő terveken látható is az erre irányuló törekvés.

A cikkek MySQL-ben történő tárolása lehetőséget ad majd azok könnyű manipulálására, kezelésére. Ebből következik, hogy az adatbázisba történő új cikkek hozzáadása a mai napig egyik legnépszerűbb adatbázis-kezelővel, a MySQL-lel könnyen kivitelezhető lesz majd.

Az adminisztrátor számára elérhető funkciók rejtve maradnak majd az admin funkciókkal nem rendelkező felhasználók
számára. Tehát értelemszerűen a munkatársak "csak" azt látják majd amit látniuk kell. Ezek a következők: a két gomb -amelyekkel kiválaszthatjuk, milyen cikkeket akarunk olvasni- és maguk a cikkek.

A weblapunk a követelményspecifikációkban meghatározott technológiákkal megvalósítva a böngészőfüggetlenségi követelménynek is maradéktalanul eleget tesz majd, ugyanúgy fog megjelenni az összes asztali böngészőben egyaránt.

## 13. Fogalomszótár.

[Reszponzív design](https://en.wikipedia.org/wiki/Responsive_web_design)

[Boostrap](https://en.wikipedia.org/wiki/Bootstrap_(front-end_framework))

[MySQL](https://en.wikipedia.org/wiki/MySQL)
