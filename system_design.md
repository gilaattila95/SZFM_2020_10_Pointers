# 1. A rendszer célja
- Az oldal látogatóinak:
    - Egy olyan weblap elérése, amely nevéhez hűen érdekesebbnél érdekesebb tényekkel igyekszik megfogni látagatóit.
    - Könnyen megszokható, tanulást nem igénylő felhasználói felület biztosítása
    - Alapvetően érdekes cikkek olvasása
    - Igény esetén egyszerű váltás a témák között
    - Az adott témájú tények közötti navigáció "Következő" és "Vissza" gombokkal
- Adminoknak:
    - Hozzáférés a bejelentkezési űrlaphoz 
    - Hozzáférés a cikkfeltöltő oldalhoz
    - Hozzáférés a cikkeket tartalmazó adatbázishoz
    
## A rendszernek nem célja:
   - Minden látagató számára lehetőséget adni új cikk bejegyzésére
   - A felhasználó regisztráció lehetősége
   - Az említettnél több témakörben cikkeket gyűjteni
   - Hírlevél feliratkozás lehetősége

# 2. Projekt terv

4 fős, fiatal csapatunk minden tagja egyetért abban, hogy egy ilyen projekt készítése során az egyik, ha 
nem a legfontosabb teendő a feladatok egymás közötti igazságos felosztása. Csapatunk néhány tagja már rendelkezik
webprogramozói múlttal, így a fejlesztői feladatok nagy része alapvetően rájuk hárulnak majd.
A csapat másik két tagja az oldal igényes megjelenésének megvalósításával lesz megbízva.

Az ütemtervünk a következőképp nézett ki: egyeztettünk elöljáróban a megrendelővel arról, mi lenne a cél. 
Ezen beszélgetést követően készítettük el a követelményspecifikációt ahol rögzítettük az igényeket.
Ezt követően funkcionális specifikációban részletekbe menően, számos szempont alapján tisztáztuk a projekt 
során felmerülő esetlegesen nem egyértelmű pontokat. Végül ezt követően készült el jelen dokumentum, 
a rendszerterv is. A következő fő lépés és mérföldkő maga a kódolás illetve a tesztelés lesz, amit a napokban fogunk elkezdeni.

# 3. Üzleti folyamatok modellje

A felhasználó a weblapot megnyitva egy egyszerű, könnyen átlátható főképernyőn találja magát, 
ahol alapértelmezetten az érdekes tényeket tartalmazó cikkek jönnek majd vele szembe.
Innen a fenti menüsorból navigálhat tovább a felhasználó. A menüsor tartalma:

- 'Érdekességek' gomb: A gombra kattintva eljuthatunk az érdekes cikkek listájához. A főképernyőről ezen menüpontra kattintva nem érzékelünk 
újdonságot, hiszen alapértelmezés szerint is ezeket a cikkeket látjuk.

- 'Viccesek' gomb: A gombra kattintva a felhasználó eljut a vicces cikkek listájához.

- 'Cikk beküldése' gomb: A felhasználónak lehetőséged ad saját cikkek beküldésére. Az oldalon való megjelenést viszont
adminisztrátori jóváhagyás előz meg.

- 'Admin belépés' gomb: Az adminisztrátori bejelentkező űrlapra viszi a felhasználót. 

# 4. Követelmények

## Funkcionális követelmények:

- Reszponzív design
- Az adatbázisba könnyen hozzáadhatók legyenek a cikkek.
- Böngészőfüggetlenség

## Nemfunkcionális követelmények:

- Letisztult, egyszerű, átlátható felület

# 5. Funkcionális terv

- Rendszer szereplők
- Rendszer használati esetek és lefutásaik
- Határ osztályok
- Menü hierarchiák
- Képernyő tervek

# 6. Fizikai környezet

## Fejlesztő eszközök
- HTML
- CSS
##Keretrendszer
- Bootstrap

# 7. Absztrakt domain modell

- Domain specifikáció, fogalmak
- Absztrakt komponensek, ezek kapcsolatai

# 8. Architekturális terv

- Egy architekturális tervezési minta (pl. MVC, 3-rétegű alkalmazás, …)
- Az alkalmazás rétegei, fő komponensei, ezek kapcsolatai
- Változások kezelése
- Rendszer bővíthetősége
- Biztonsági funkciók

# 9. Adatbázis terv

- Logikai adatmodell
- Tárolt eljárások
- Fizikai adatmodellt legeneráló SQL szkript

# 10. Implementációs terv

- Perzisztencia osztályok
- Üzleti logika osztályai
- Kliens oldal osztályai

# 11. Tesztterv

Leginkább adat tesztelés elvégzésére lesz szükség:
- Adminisztrátor bejelentkezésére vonatkozó tesztelés: több különböző adatot beírni (helyes és helytelen). Helyes adat esetén az adminisztrátor sikeresen bejelentkezik a felületre. Helytelen adat megadása esetén hibaüzenetet kellene kapnunk.
- Az adminisztrátor kijelentkezés megfelelően működik-e? Ha igen, az adminisztrátor kijelentkezik az adminisztrációs felületből és a boolean értéke 0 lesz.
- Az adminisztrátori cikk feltöltési mező tesztelése: üres mező beküldése esetén hibaüzenetet kellene kapnunk. Ha minden mezőt kitöltöttünk, a beküldésnek sikeresnek kellene lennie.
- Cikk feltöltésekor azt is ellenőrízni, hogy a képformátumot figyelembe veszi-e a program. Rossz képformátum (minden, ami nem jpg, jpeg vagy png) feltöltése esetén visszajelzést kellene kapnunk, hogy a cikk feltöltése nem sikerült.
- A munkatársak általi cikk beküldési mező tesztelése: minden mezőnek kitöltve kell lennie a sikeres cikk beküldéshez. Ellenkező esetben hibaüzenetet kell kapnunk.
- Like vagy dislike gomb tesztelése. Az egyikre klikkelve annak értéke eggyel kellene nőnie.
- Annak ellenőrzése, hogy a weboldal reszponzívan működik-e.


# 12. Telepítési terv

A felhasználó esetében a következőképp néz majd ki:
- Egy telefon vagy mobileszköz megléte, használható állapotban
- Internetelérés
- A rendszeren alapértelmezett böngésző használata vagy harmadik féltől származó böngésző letöltése és telepítése
- Az oldal URL-jének címsorba történő begépelése

# 13. Karbantartási terv

Mivel mind jól tudjuk, hogy az informatika egy folyamatosan megújuló iparág, fontosnak tartjuk, hogy naprakészek maradjunk az aktuális szabványokkal,
technológiákkal kapcsolatban. Ebből adódóan kötelességünknek érezzük, hogy weblapunkat átadás után is
karbantartsuk, illetve korszerűsítsük azzal, hogy mindig naprakész technológiákat használunk.

A tartalomra vonatkozóan pedig mindkét kategóriájú cikkek rendszeres frissítését tervezzük, így az adatbázisban nem lesznek
megtalálhatók több hetes, a felhasználók által már megunt cikkek.
