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
A [követelményspecifikációban](https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/requirement_specification.md) 
részletezésre került

## 3. Vágyálom rendszer leírása.
A [követelményspecifikációban](https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/requirement_specification.md) 
részletezésre került

## 4. Jelenlegi üzleti folyamatok modellje.
A [követelményspecifikációban](https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/requirement_specification.md) 
részletezésre került

## 5. Igényelt üzleti folyamatok modellje.
A [követelményspecifikációban](https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/requirement_specification.md) 
részletezésre került

## 6. Követelménylista.
A [követelményspecifikációban](https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/requirement_specification.md) 
részletezésre került

## 7. Használati esetek.
<p>Jelen esetünkben az aktorok lehetnek a weboldalt látogató munkatársak, akik a fact portált kikapcsolódás céljából látogatják és a weboldalt üzemeltető adminisztrátorok, akik újabb és újabb cikkeket adhatnak hozzá.<br>
Az elsődleges szereplők, azaz a vállalat munkatársai gép előtt ülő munkát végeznek. Rendelkeznek legalább felhasználói szintű számítógépes ismeretekkel, de elvárás, hogy a weboldal kezelőfelülete ne legyen bonyolult. <br>
Ugyanez vonatkozik az adminisztrátorokra is. Jelen esetünkben ők a másodlagos szereplők az esetünkben. A bejelentkezés után azonnal, egyszerűen tudjon cikkekel kapcsolatos adatokat bevinni és eltárolni. Fontos, hogy az adatok beküldése után azonnali visszajelzést kapjon az adminisztrátor, ha valami miatt nem sikerült az adatok eltárolása (pl.: kitöltetlen mező, nem megfelelő képformátum)</p>

<p align="center">
UML ábra</br>
    <img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/fact_UML.png">
</p>
<br>

## 8. Megfeleltetés, hogyan fedik le a használati esetek a követelményeket.
<b>Eset 1: Főképernyő látogatása</b>
- A weboldal címének beírása után megjelenő főoldal megjelenítése.
- Alapértelmezettként az Érdekes tényekkel kapcsolatos cikkek vannak beállítva, így először ez lesz látható.
- A főoldalon látható elemek: Érdekes- és vicces tényeket megjelenítő gombok, a cikklista alatt oldalszámokat jelző gombok. </br>

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
- Beküldés után az űrlap adatainak ellenőrzése.
- Az adatok helyes megadása után, átirányítás a cikkfeltöltő oldalra.

<b>Eset 6: Cikkek feltöltése</b>
- Cikkfeltöltő űrlap megjelenítése. 
- Űrlap adatainak tárolása.
- Az űrlap adatainak ellenőrzése (hiányzó elemek, helyes képformátumok használata).

<b>Eset 7: Beküldött cikkek kezelése</b>
- Az adminisztrátor láthatja, ha az egyik munkatárs cikket küldött be.
- Az adminisztrátor a beküldött cikkeket elfogadhatja vagy elutasíthatja.

## 9. Képernyő tervek.

<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%201.png" width="50%" height="50%">
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%202.png" width="50%" height="50%">
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%203.png" width="50%" height="50%">
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%204.png" width="50%" height="50%">
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%205.png" width="50%" height="50%">
<img src="https://github.com/gilaattila95/SZFM_2020_10_Pointers/blob/master/images/Kepernyoterv%206.png" width="50%" height="50%">

## 10. Forgatókönyvek.

Amikor a felhasználó felkeresi a weboldalt, a kezdőképernyőn találja magát. Ebben az esetben máris egy érdekes cikket lát,
hiszen ez az alapértelmezés. A fenti menüsor segítségével navigálhat a további menüpontok között.

- Minden cikk alatt helyet kapott egy like és egy dislike gomb is, hogy a felhasználók ilyen formában ki tudják nyilvánítani
az adott cikkel kapcsolatos (nem)tetszésüket.

- A "Viccesek" gombra kattintva a vicces cikkek gyűjteményét látja majd a felhasználó

- A "Cikk beküldése" gombra kattintva ha a felhasználó ha saját cikket szeretne beküldeni, alapvetően kétféle kimenet lehet:
    -  az admin szemrevételezi a beküldendő cikket
és úgy dönt, hogy megfelel a kritériumoknak és kikerül az oldalra 
    - vagy ellenkező esetben meg is tagadhatja annak megjelenítését
az oldalon.

- Az "Admin belépése" gomb megnyomását követően a megfelelő felhasználónév-jelszó párost követően már adminként vagyunk bejelentkezve. Ilyenkor a fenti menüsorban 4 új
menüpont jelenik meg. 
    - Az "Összes cikk" gombra kattintva az adminisztrátori főképernyőre juthatunk, 
    - a "Beküldött cikkek" a dolgozók által beküldött cikkjavaslatokat tartalmazzák. 
 
Értelemszerűen ebből a menüpontból van lehetőségünk 
- saját magunk által új cikket is hozzáadnunk az "Új cikk hozzáadása" gombbal, 
- míg az utolsó menüpont az "Admin kilépés" a felületről való kilépésre szolgál.

## 11. Funkció – követelmény megfeleltetés.
<b>Követelményspecifikáció - K01: </b>

A követelményspecifikációban követelményként megadott reszponzív design feltétele teljesülni fog, ugyanis a front-end Bootsrtrap
keretrendszerrel kerül majd megvalósításra.

<b>Követelményspecifikáció - K02: </b>

A letisztult, egyszerű felület evidens, manapság a modern weblapoknál ez alapelvárás.
Ezzel teljes mértékben tisztában is vagyunk, természetesen törekedni fogunk ezen követelmény
kielégítésére. A képernyő terveken látható is az erre irányuló törekvés.

<b>Követelményspecifikáció - K03: </b>

Jelen dokumentum több pontos is részletezi az adminisztrátori belépőfelületet, képernyőterveken is megfigyelhető.
A végleges weboldalon is helyet fog kapni.

<b>Követelményspecifikáció - K04: </b>

A cikkek MySQL-ben történő tárolása lehetőséget ad majd azok könnyű manipulálására, kezelésére. Ebből következik, hogy az adatbázisba történő új cikkek hozzáadása a mai napig egyik legnépszerűbb adatbázis-kezelővel, a MySQL-lel könnyen kivitelezhető lesz majd.

<b>Követelményspecifikáció - K05: </b>

Az adminisztrátor számára elérhető funkciók rejtve maradnak majd az admin funkciókkal nem rendelkező felhasználók
számára.

<b>Követelményspecifikáció - K06: </b>

A weblapunk a követelményspecifikációkban meghatározott technológiákkal megvalósítva a böngészőfüggetlenségi követelménynek is maradéktalanul eleget tesz majd, ugyanúgy fog megjelenni az összes asztali böngészőben egyaránt.

## 12. Fogalomszótár.

[Reszponzív design](https://en.wikipedia.org/wiki/Responsive_web_design)

[Böngészőfüggetlenség](https://en.wikipedia.org/wiki/Cross-browser_compatibility)

[Front-end](https://en.wikipedia.org/wiki/Front-end_web_development)

[Boostrap](https://en.wikipedia.org/wiki/Bootstrap_(front-end_framework))

[MySQL](https://en.wikipedia.org/wiki/MySQL)