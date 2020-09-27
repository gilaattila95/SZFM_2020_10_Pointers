-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Sze 27. 19:06
-- Kiszolgáló verziója: 10.4.14-MariaDB
-- PHP verzió: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `fact`
--
CREATE DATABASE IF NOT EXISTS `fact` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `fact`;
-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `admin_userek`
--

CREATE TABLE `admin_userek` (
  `auid` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `jelszo` char(255) COLLATE utf8_hungarian_ci NOT NULL,
  `uname` varchar(60) COLLATE utf8_hungarian_ci NOT NULL,
  `aktiv` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `admin_userek`
--

INSERT INTO `admin_userek` (`auid`, `email`, `jelszo`, `uname`, `aktiv`) VALUES
(1, 'admin@admin.hu', '$2y$10$FNvUJOOdM5/HiBzC9TESJeT.XxSTMKdvGt8vNthPYLB7vuQMa/Jdu', 'admin', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cikkek`
--

CREATE TABLE `cikkek` (
  `cid` int(11) NOT NULL,
  `ctext` text COLLATE utf8_hungarian_ci NOT NULL,
  `kep` varchar(60) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `asent` int(11) NOT NULL,
  `aktiv` int(11) NOT NULL,
  `kategoria` varchar(60) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `cikkek`
--

INSERT INTO `cikkek` (`cid`, `ctext`, `kep`, `asent`, `aktiv`, `kategoria`) VALUES
(1, 'A diétás Coca Cola nagyjából 30%-kal több koffeint tartalmaz mint a klasszikus.', 'erdekes_1.jpg', 1, 1, 'érdekes'),
(2, 'Az ókori görögök olívaolajat használtak napolajként.', 'erdekes_2.jpg', 1, 1, 'érdekes'),
(3, 'Svájcban illegálisnak minősül lehúzni a WC-t este 10 óra után.', 'erdekes_3.jpg', 1, 1, 'érdekes'),
(4, 'A Twitter logójában található madár neve \"Larry\" amelyet a legendás NBA játékosról, Larry Bird-ről kapott.', 'erdekes_4.jpg', 1, 1, 'érdekes'),
(5, 'Körülbelül a Föld férfipopulációjának 0.5%-a, vagyis kb. 16 millió férfi, Dzsingisz Kán leszármazottja.', 'erdekes_5.jpg', 1, 1, 'érdekes'),
(6, 'A láma tudományos neve Lama glama.', 'erdekes_6.jpg', 1, 1, 'érdekes'),
(7, 'A National Geographic állítása szerint minden második héten kihal egy nyelv.', 'erdekes_7.jpg', 1, 1, 'érdekes'),
(8, 'Hozzávetőlegesen ugyanannyi fa található Londonban mint ahány ember lakik New Yorkban.', 'erdekes_8.jpg', 1, 1, 'érdekes'),
(9, 'A tevék képesek 113 liter vizet meginni csupán 13 perc alatt.', 'erdekes_9.jpg', 1, 1, 'érdekes'),
(10, 'A Szezám utcából ismert karakter, Sütiszörny valódi neve Sid.', 'erdekes_10.jpg', 1, 1, 'érdekes'),
(11, 'Zeller rágásával több kalóriát égethetünk el, mint amennyit az tartalmaz.', 'erdekes_11.jpg', 1, 1, 'érdekes'),
(12, 'A McDonald\'s egyszer megpróbálkozott rágógumi ízű brokkoli előállításával.', 'erdekes_12.jpg', 1, 1, 'érdekes'),
(13, 'A világ első weboldala, amely 1991 augusztus 6-án indult, még a mai napig is üzemel.', 'erdekes_13.jpg', 1, 1, 'érdekes'),
(14, 'Nepál zászlaja háromszögletű. Jelenleg ez az egyetlen ország amely nem négyszögletű zászlóval rendelkezik.', 'erdekes_14.jpg', 1, 1, 'érdekes'),
(15, 'Oroszország területének felszíne majdnem olyan nagy, mint a Plútóé.', 'erdekes_15.jpg', 1, 1, 'érdekes'),
(16, 'A skótok 421-féleképpen tudják kifejezni a \"hó\" szót.', 'erdekes_16.jpg', 1, 1, 'érdekes'),
(17, 'A macskák kevesebb lábujjal rendelkeznek a hátsó mancsain (4), mint az elsőn (5).', 'erdekes_10.jpg', 1, 1, 'érdekes'),
(18, 'Az NBA-ban játszó valaha volt legalacsonyabb játékos, Muggsy Bogues mindössze 160 cm. volt.', 'erdekes_18.jpg', 1, 1, 'érdekes'),
(19, 'Két testrészünk van, ami életünk során folyamatosan növekszik. Ezek az orr és a fül.', 'erdekes_19.jpg', 1, 1, 'érdekes'),
(20, 'A Pringles csomagolásán található ember neve Julius.', 'erdekes_20.jpg', 1, 1, 'érdekes'),
(21, 'Vlagyimir Putyin, Oroszország elnöke a mai napig Windows XP-t használ számítógépén.', 'erdekes_21.jpg', 1, 1, 'érdekes'),
(22, 'Elvis Presley menedzsere \"Utálom Elvist\" feliratú kitűzőket adott el azok számára, akik nem rajongtak a zenészért. Ezzel a lépésével elérte, hogy azoktól is folyjon be összeg, akik nem támogatták Elvis munkásságát.', 'erdekes_22.jpg', 1, 1, 'érdekes'),
(23, 'A leghosszabb televíziós kereskedelmi reklám 14 órás volt.', 'erdekes_23.jpg', 1, 1, 'érdekes'),
(24, 'A Microsoft Japan felmérése szerint a 4 napos munkahét 40%-kal megnöveli a dolgozók produktivitását.', 'erdekes_24.jpg', 1, 1, 'érdekes'),
(25, 'Egy 2019-es statisztika szerint az internetes e-mail-forgalom 56%-a spam volt.', 'erdekes_25.jpg', 1, 1, 'érdekes'),
(26, 'A teljes népesség körülbelül 10%-a balkezes.', 'erdekes_26.jpg', 1, 1, 'érdekes'),
(27, 'Létezik a rögbinek víz alatti verziója aminek a neve egyszerűen \"víz alatti rögbi\".', 'erdekes_27.jpg', 1, 1, 'érdekes'),
(28, 'Tennessee államban illegálisnak minősül megosztani a Netflix jelszavadat mással.', 'erdekes_28.jpg', 1, 1, 'érdekes'),
(29, 'A bikák valójában színvakok, így a vörös szín nem teszi mérgessé őket.', 'erdekes_29.jpg', 1, 1, 'érdekes'),
(30, 'Szudánban több piramis található, mint bármely másik országban, szám szerint 255 db. Ez több, mint kétszerese az Egyiptomban találhatóknak.', 'erdekes_30.jpg', 1, 1, 'érdekes'),
(31, 'Az emberek több, mint fele úgy gondolja, az esős időjárás befolyásolja a felhő szolgáltatások működését.', 'vicces_1.jpg', 1, 1, 'vicces'),
(32, 'Hippopotomonstrosesquippedaliophobiának hívják a hosszú szavaktól való félelmet.', 'vicces_2.jpg', 1, 1, 'vicces'),
(33, '2011-ben egy nő vett egy láthatatlan műtárgyat 10000 dollárért.', 'vicces_3.jpg', 1, 1, 'vicces'),
(34, 'Átlagosan 10-ből 1 amerikai azt hiszi, a HTML egy szexuális úton terjedő betegség.', 'vicces_4.jpg', 1, 1, 'vicces'),
(35, 'A vírusok is képesek elkapni vírusokat.', 'vicces_5.jpg', 1, 1, 'vicces'),
(36, 'Az egyik minnesotai város polgármestere 2011-ben egy 3 éves kisfiú volt.', 'vicces_6.jpg', 1, 1, 'vicces'),
(37, 'Napi 8 órás munkaidővel számolva, évi 76 munkanap lenne szükséges ahhoz, hogy minden, egy év alatt velünk szembejövő adatvédelmi nyilatkozatot elolvassunk.', 'vicces_7.jpg', 1, 1, 'vicces'),
(38, 'A krumplinak több kromoszómája van, mint az embernek.', 'vicces_8.jpg', 1, 1, 'vicces'),
(39, 'Papaphobia nem más, mint a Pápától való félelem.', 'vicces_9.jpg', 1, 1, 'vicces'),
(40, 'A kék bálnának van a legnagyobb pénisze, hozzávetőlegesen 2.5 m nagyságú.', 'vicces_10.jpg', 1, 1, 'vicces'),
(41, 'Átlagosan egy liter taknyot nyelünk le minden egyes nap.', 'vicces_11.jpg', 1, 1, 'vicces'),
(42, 'Texas államban ha megtalálod, legálisan megölheted a Bigfoot-ot.', 'vicces_12.jpg', 1, 1, 'vicces'),
(43, 'Az Egyesült Állomokban hozzávetőlegesen 100 embernek \"LOL\" a keresztneve.', 'vicces_13.jpg', 1, 1, 'vicces'),
(44, 'Llanfairpwllgwyngyllgogerychwyrndrobwllllantysiliogogogoch - egy walesi falu neve.', 'vicces_14.jpg', 1, 1, 'vicces'),
(45, 'Az ókori görögök gyakran dobálták egymást almával - számukra ez a másik személy iránti szeretet kimutatására szolgált.', 'vicces_15.jpg', 1, 1, 'vicces'),
(46, 'A zsiráfok képesek a fülüket a saját nyelvükkel tisztítani.', 'vicces_16.jpg', 1, 1, 'vicces'),
(47, 'A norvég nyelvben a Texas szó őrültet jelent.', 'vicces_17.jpg', 1, 1, 'vicces'),
(48, 'Jack Daniel utolsó szavai a \"Kérnék még egy italt!\" voltak.', 'vicces_18.jpg', 1, 1, 'vicces'),
(49, 'A Harry Pottert alakító színész, Daniel Radcliffe korábban 6 hónapig minden nap ugyanolyan ruhát viselt csak azért, hogy a paparazzikat felidegesítse.', 'vicces_19.jpg', 1, 1, 'vicces'),
(50, '2014-ben Németországban egy amerikai cserediákot a tűzoltóknak kellett kimenteni, mert az beszorult egy vaginát-ábrázoló szoborba.', 'vicces_20.jpg', 1, 1, 'vicces'),
(51, 'A \"Pee Cola\" egy népszerű ghánai üdítőital.', 'vicces_21.jpg', 1, 1, 'vicces'),
(52, 'A 16. századi Európában úgy hitték, egy paradicsom elfogyasztása vérfarkassá változtatja az embert.', 'vicces_22.jpg', 1, 1, 'vicces'),
(53, 'Cockburn - egy dél-ausztrál város neve.', 'vicces_23.jpg', 1, 1, 'vicces'),
(54, '150 kalóriát lehet égetni azzal, ha egy órán át a fejünket a falba verjük.', 'vicces_24.jpg', 1, 1, 'vicces'),
(55, 'Az amerikaiak 7%-a hiszi azt, hogy a csokis tejet barna tehenek adják.', 'vicces_25.jpg', 1, 1, 'vicces'),
(56, 'Nagy mennyiségű sárgarépa fogyasztásától narancssárgává színeződik bőrünk.', 'vicces_26.jpg', 1, 1, 'vicces'),
(57, ' A Hewlett-Packard (HP) cégnévet egy érmefeldobás döntötte el.', 'vicces_27.jpg', 1, 1, 'vicces'),
(58, 'Mike Tyson egyszer 10000 dollárt ajánlott egy állatkerti dolgozónak, hogy megküzdhessen egy gorillával. Az ajánlatát elutasították.', 'vicces_28.jpg', 1, 1, 'vicces'),
(59, 'A Ronald McDonaldként ismert McDonald\'s kabala vezetékneve Japánban Donald, hogy megkönnyítse a japánok számára a kiejtést.', 'vicces_29.jpg', 1, 1, 'vicces'),
(60, 'Kenyában 2.6 millió ember űző az \"éjszakai futás meztelenül\" sportot.', 'vicces_30.jpg', 1, 1, 'vicces');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cikkek`
--
ALTER TABLE `cikkek`
  ADD PRIMARY KEY (`cid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `cikkek`
--
ALTER TABLE `cikkek`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
