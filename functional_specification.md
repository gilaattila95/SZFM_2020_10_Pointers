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
    <img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/ff5e21ba06d99c6a5e85ee815fecc640fab08407/images/UML.png">
</p>
<br>

## 9. Megfeleltetés, hogyan fedik le a használati esetek a követelményeket.

## 10. Képernyő tervek.

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
