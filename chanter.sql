-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 192.168.99.100:3306
-- Généré le :  jeu. 01 nov. 2018 à 10:03
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `chanter`
--

-- --------------------------------------------------------

--
-- Structure de la table `Articles`
--

CREATE TABLE `Articles` (
  `id` int(11) NOT NULL,
  `titleFR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `titleDE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `chapeauFR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `chapeauDE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `textFR` text COLLATE utf8_bin,
  `textDE` text COLLATE utf8_bin,
  `refPicture` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `PersonId` int(11) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `Articles`
--

INSERT INTO `Articles` (`id`, `titleFR`, `titleDE`, `chapeauFR`, `chapeauDE`, `textFR`, `textDE`, `refPicture`, `createdAt`, `updatedAt`, `PersonId`, `CategoryId`) VALUES
(3, 'Historique AVCC', 'AVCC-Historie', 'chapeau fr', 'chapeau de', '<h3>Objectif</h3>Soucieuse d’offrir aux responsables de la musique chorale l’occasion de parfaire leur formation auprès d’animateurs compétents ou de partager soucis et joies entre collègues, l’AVCC poursuit son activité initiale en proposant ses encouragements et ses services.<h3>Fondation</h3>\r\nA la suite d’un week-end de l’AVDC (Association Vaudoise des Directeurs de Chœurs) à Vérossaz, une dizaine de chefs de chœur valaisans décidèrent de la fondation de l’AVCC, l’Association Valaisanne des Chefs de Chœur. Cette fondation eut lieu le 11 octobre 1969 autour de M. Fernand Dubois, le regretté président de la Fédération Cantonale de Chant. L’assemblée fondatrice eut lieu à Sion le 13 décembre 1969 en présence d’une trentaine de chefs qui répondirent à l’appel.<h3>Présidents</h3>Présidée successivement par MM. Armand Blanc, Jean-Pierre Salamin, Pierre-Louis Nanchen, Pierre-Alain Barras, Samuel Emery et, depuis 2014, Jean-David Waeber, l’AVCC n’a cessé de poursuivre, tout en les adaptant aux goûts et aux besoins du moment, les objectifs que s’étaient fixés les initiateurs et fondateurs.<h3>Foyer</h3>Le Foyer Musical, ouvert par l’AVCC le 28 août 1979 en la Maison Supersaxo à Martigny fut déplacé à Sion en 1981, au Foyer Don Bosco, puis au home de Mazerette jusqu’en 2009. Cette année-là, l’AVCC a légué à la Médiathèque Valais son fonds de partitions afin de lui donner une plus grande visibilité auprès du public. Année après année ce fonds s’est étoffé pour rassembler et proposer aujourd’hui près de 20’000 partitions et de nombreux recueils, collections ou supports audio, le tout répertorié par M. Edouard Delaloye, premier animateur, puis par Mme Anne-Françoise Andenmatten-Sierro, actuelle archiviste de l’association, en activité depuis 1985.', '<h3>Zielsetzung</h3>Um den Chorleitern die Möglichkeit zu geben, ihre Ausbildung mit kompetenten Dozenten zu perfektionieren oder Anliegen und Freuden mit Kollegen zu teilen, setzt das AVCC seine anfängliche Tätigkeit mit seinen Förderungen und Dienstleistungen fort.<h3>Fundament</h3>Nach einem Wochenende der AVDC (Association Vaudoise des Directeurs de Chœurs) in Vérossaz beschlossen rund zehn walliserische Chordirigenten, die AVCC, die Association Wallisanne des Chefs de Chœur zu gründen. Diese Stiftung fand am 11. Oktober 1969 um Herrn Fernand Dubois, den verstorbenen Präsidenten des Kantonalen Gesangsverbandes, statt. Die Gründungsversammlung fand am 13. Dezember 1969 in Sion statt, in Anwesenheit von etwa dreißig Leitern, die den Aufruf entgegennahmen.<h3>Präsidenten</h3>Unter dem Vorsitz von Armand Blanc, Jean-Pierre Salamin, Pierre-Louis Nanchen, Pierre-Alain Barras, Samuel Emery und seit 2014 Jean-David Waeber hat die AVCC die von den Initiatoren und Gründern festgelegten Ziele ständig verfolgt und an den Geschmack und die Bedürfnisse des Augenblicks angepasst.<h3>Foyer</h3>Das Foyer Musical, das vom AVCC am 28. August 1979 im Maison Supersaxo in Martigny eröffnet wurde, wurde 1981 nach Sion verlegt, in das Foyer Don Bosco, dann bis 2009 in das Foyer de Mazerette. In diesem Jahr vermachte das AVCC seine Partiturensammlung der Médiathèque Wallis, um ihr mehr Sichtbarkeit in der Öffentlichkeit zu verschaffen. Diese Sammlung umfasst seit Jahren fast 20.000 Partituren und zahlreiche Sammlungen, Sammlungen und Tonträger, die alle von Edouard Delaloye, dem ersten Animateur, und dann von Anne-Françoise Andenmatten-Sierro, der derzeitigen Archivarin des Vereins, die seit 1985 tätig ist, aufgeführt werden.', 'article1.jpg', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),
(4, 'Présentation AVCC', 'AVCC-Presentation', 'chapeau fr', 'chapeau de', '<p>L&rsquo;Association Valaisanne des Chefs de Choeurs (AVCC) est une association qui, depuis plus de 40 ans, veut promouvoir la formation continue des chefs de chœur grâce à des cours donnés par des intervenants réputés et de qualité. Elle tient à défendre les intérêts des chefs de chœurs, à promouvoir une formation continue de qualité, à favoriser les contacts entre ses sociétaires et les organes officiels, à offrir à ses membres une documentation spécialisée dans le domaine du chant choral.</p>\r\n<p>Elle organise chaque année, seule ou en collaboration avec la Fédération des Sociétés de Chant du Valais, des séminaires avec des chefs renommés :</p>\r\n<ul>\r\n<li>des journées de formation</li>\r\n<li>des soirées à thème</li>\r\n<li>des journées spéciales pour chefs de chœurs de jeunes ou d’enfants</li>\r\n<li>des activités autour du fonds choral déposé auprès de la Médiathèque Valais</li>\r\n</ul>\r\n<p>Elle favorise également la rencontre et les échanges entre chefs et propose un vaste choix de plus de 20’000 partitions.</p>\r\n<p>Merci de nous aider à faire connaître l’AVCC ! N’hésitez pas à nous communiquer vos souhaits, vos soucis, vos coups de cœur ou vos questions. Nous essayons de tout mettre en œuvre pour répondre à vos besoins.</p>\r\n<p>N&rsquo;hésitez pas à découvrir :</p>\r\n<ul>\r\n<li><a title=\"notre historique AVCC\" href=\"http://www.chanter.ch/wp/avcc/historique/\">l&rsquo;historique AVCC</a></li>\r\n<li><a title=\"Comité AVCC\" href=\"http://www.chanter.ch/wp/avcc/comite-avcc/\">notre comité</a></li>\r\n<li><a title=\"Formation AVCC\" href=\"http://www.chanter.ch/wp/avcc/formation-avcc/\">notre offre de formation</a></li>\r\n<li><a title=\"Fonds choral et Foyer AVCC\" href=\"http://www.chanter.ch/wp/avcc/fonds-choral-avcc/\">notre fonds de partitions</a></li>\r\n<li><a title=\"Photos AVCC\" href=\"http://www.chanter.ch/wp/avcc/photos-avcc-3/\">les photos de nos activités passées</a></li>\r\n</ul>\r\n\r\n\r\n\r\n', 'Die Vereinigung Wallis des Chefs de Chœur (AVCC) ist eine Vereinigung, die seit mehr als 40 Jahren die Weiterbildung von Chordirigenten durch Kurse von renommierten und qualifizierten Lehrern fördern will. Sie setzt sich für die Interessen der Chorleiter ein, fördert eine qualitativ hochwertige Weiterbildung, pflegt die Kontakte zwischen ihren Mitgliedern und den offiziellen Stellen und bietet ihren Mitgliedern eine spezielle Dokumentation im Bereich des Chorgesangs.\r\n\r\nJedes Jahr organisiert sie allein oder in Zusammenarbeit mit der Fédération des Sociétés de Chant du Valais Seminare mit renommierten Köchen:\r\n\r\n<ul>\r\n<li>Schulungstage</li>\r\n<li>Themenabende</li>\r\n<li>spezielle Tage für Jugend- oder KinderchorleiterInnen</li>\r\n<li>Aktivitäten rund um den bei der Médiathèque Wallis hinterlegten Chorfonds</li>\r\n<li>Es fördert auch die Begegnung und den Austausch zwischen Dirigenten und bietet eine große Auswahl von mehr als 20.000 Partituren.</li>\r\n\r\nVielen Dank, dass Sie uns helfen, die AVCC bekannt zu machen! Zögern Sie nicht, uns Ihre Wünsche, Anliegen, Favoriten oder Fragen mitzuteilen. Wir versuchen, unser Bestes zu geben, um Ihren Bedürfnissen gerecht zu werden.\r\n\r\n', 'article1.jpg', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),
(5, 'Fonds choral et Foyer AVCC', 'Fonds choral et Foyer AVCC', 'chapeau fr', 'chapeau de', 'Le Foyer AVCC est un lieu de rencontre convivial où venir seul, avec sa commission de musique ou avec son comité pour consulter des partitions et des documents avant de bâtir un programme. Tous les documents sont à consulter sur place. Ils sont visibles dans le catalogue RERO, avec une multitude de renseignements utiles aux chefs de chœurs. Dès le début 2018, une partie de cette musique a été placée au libre accès de la Médiathèque-Valais pour être consultée librement. Cependant, il sera encore possible de prendre rendez-vous avec l’archiviste pour une recherche spécifique ou des conseils.\r\n\r\nLa Médiathèque Valais à Sion se trouve à la Rue de Lausanne 45.\r\n\r\n\r\nPour la recherche et la consultation des partitions, prendre préalablement contact avec :\r\nAnne-Françoise Andenmatten Sierro\r\nTél. privé : 027 323 19 28 ou 079 232 54 02\r\nE-mail : annef-vociamici@bluewin.ch\r\n<br/>\r\nPrès de 20’000 partitions\r\n\r\n<ul>\r\n<li>Profanes</li>\r\n<li>Religieuses</li>\r\n<li>De toutes époques et de tous genres</li>\r\n<li>De différentes maisons d’édition</li>\r\n<li>Pour tous types de choeurs: mixtes, dames, hommes, jeunes, enfants</li>\r\n</ul>\r\nDes livres et des documentaires</li>\r\n\r\n<ul>\r\n<li>Théorie musicale</li>\r\n<li>Musique chorale et compositeurs</li>\r\n<li>Direction chorale</li>\r\n<li>Pose de voix</li>\r\n<li>Enregistrements</li>\r\n<li>Revues liturgiques (Choristes, Voix Nouvelles, Signes Musiques, Chantons en Eglise, etc.)</li>\r\n<li>Documents sur la liturgie, ses acteurs, ses rites, etc.</li>\r\n</ul>', 'Das AVCC Foyer ist ein freundlicher Treffpunkt, an dem Sie allein, mit Ihrem Musikkomitee oder mit Ihrem Komitee kommen können, um Partituren und Dokumente einzusehen, bevor Sie ein Programm erstellen. Alle Dokumente sind vor Ort einzusehen. Sie sind im RERO-Katalog zu finden, mit einer Fülle von Informationen, die für Chorleiter nützlich sind. Ab Anfang 2018 wurde ein Teil dieser Musik in den freien Zugang des Médiathèque-Valais gestellt und kostenlos konsultiert. Es ist jedoch weiterhin möglich, einen Termin mit dem Archivar für eine gezielte Recherche oder Beratung zu vereinbaren.\r\n\r\nDie Médiathèque Wallis in Sion befindet sich an der Rue de Lausanne 45.\r\n\r\n\r\nFür die Recherche und Beratung von Partituren wenden Sie sich bitte vorab an uns:\r\nAnne-Françoise Andenmatten Sierro\r\nPrivattelefon: 027 323 19 28 oder 079 232 54 54 54 02 02\r\nE-Mail: annef-vociamici@bluewin.ch\r\n<br/>\r\nFast 20000 Partituren\r\n<ul>\r\n<li>Säkulare</li>\r\n<li>Religiöse Frauen</li>\r\n<li>Von allen Zeiten und allen möglichen Arten.</li>\r\n<li>Aus verschiedenen Verlagen</li>\r\n<li>Für alle Arten von Chören: gemischt, Damen, Herren, Jugendliche, Kinder, etc.</li>\r\n</ul>\r\nBücher und Dokumentationen\r\n<ul>\r\n<li>Musikalische Theorie</li>\r\n<li>Chormusik und Komponisten</li>\r\n<li>Chorleitung</li>\r\n<li>Pose der Stimme</li>\r\n<li>Aufzeichnungen</li>\r\n<li>Liturgische Rezensionen (Choristen, Neue Stimmen, Musikzeichen, Kirchenlieder, etc.)</li>\r\n<li>Dokumente über die Liturgie, ihre Akteure, ihre Riten usw.</li></ul>', 'article1.jpg', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),
(6, 'Prochaine formation AVCC', 'Prochainbildung AVCC', 'chapeau fr', 'chapeau de', 'Cette journée animée par Charles Barbier se veut interactive et propose de réfléchir aux aspects cachés de notre pratique de chefs de chœur, notamment la communication non verbale et les choix que nous faisons avant même d’être face au chœur. En choisissant comme fil rouge la prise de risque, nous aurons l’occasion de partager des regards neufs sur nos pratiques. Quels risques prend-on en élaborant un programme de concert ? Sans faire de mise en voix fait-on courir un risque aux chanteurs ? Y a-t-il un risque à ne pas prêter attention au choix de ses mots, en répétition ?\r\n\r\nCours gratuit pour les membres cotisants AVCC, 40.- CHF pour les non cotisants à l’AVCC / Repas : 25.- CHF / Encaissement sur place.\r\n\r\nInscriptions jusqu’au 10 novembre 2018 à associationavcc@gmail.com ou au 079 930 25 43. Merci d’indiquer si vous souhaitez partager le repas avec les autres participants.', 'Dieser Tag unter der Leitung von Charles Barbier soll interaktiv sein und schlägt vor, über die verborgenen Aspekte unserer Praxis als Chorleiter nachzudenken, insbesondere die nonverbale Kommunikation und die Entscheidungen, die wir treffen, bevor wir überhaupt dem Chor gegenüber stehen. Wenn wir uns für die Risikobereitschaft als gemeinsamen Nenner entscheiden, haben wir die Möglichkeit, neue Perspektiven auf unsere Praktiken auszutauschen. Welche Risiken werden bei der Entwicklung eines Konzertprogramms eingegangen? Ohne Stimme, setzen wir die Sänger in Gefahr? Besteht das Risiko, dass man bei der Probe nicht auf die Wortwahl achtet?\r\n\r\nKostenloser Kurs für AVCC-Mitglieder, CHF 40 für nicht AVCC-Mitglieder / Mahlzeiten: CHF 25 / Abholung vor Ort.\r\n\r\nAnmeldungen bis zum 10. November 2018 unter associationavcc@gmail.com oder 079 930 25 43. Bitte geben Sie an, ob Sie das Essen mit den anderen Teilnehmern teilen möchten.', 'newsFormation.png', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 2),
(7, 'Présentation', 'Presentation', 'chapeau fr', 'chapeau de', 'La Fédération des Sociétés de Chant du Valais (FSCV) est une association membre de l’Union Suisse des Chorales (USC) regroupant des chœurs d’adultes, de jeunes et d’enfants du Valais Romand et du Haut-Valais.\r\n\r\nFondée en 1906, elle chapeaute l’Association Valaisanne des Chefs de Chœurs (AVCC) et 4 groupements régionaux : le Groupement des Sociétés de Chant du Bas-Valais (GSCBV), l’Union Chorale du Centre (UCC), le Groupement des Chanteurs du Valais Central (GCVC) et le Oberwalliser Chor- und Cäcilien Verband (OCV).\r\n\r\nA ce jour, plus de 160 chorales d’adultes avec plus de 5000 chanteurs sont réunis au sein de la Fédération. Les chœurs de jeunes et d’enfants sont également membres de la Fédération, ce qui leur permet d’accéder aux offres de formation et au soutien des chorales d’adultes.\r\n\r\n\r\n<h3>Organisation</h3>\r\nLa FSCV est présidée avec compétence et enthousiasme par Laurent Bovier. Elle est composée d’un comité directeur, d’un comité cantonal et de la commission de musique. Les présidents des groupements régionaux et de l’AVCC sont également membres d’office du comité directeur.', 'Die Fédération des Sociétés de Chant du Valais (FSCV) ist Mitglied im Schweizerischen Chorverband (USC), der Chöre von Erwachsenen, Jugendlichen und Kindern aus dem Wallis Romand und Haut-Valais vereint.\r\n\r\nSie wurde 1906 gegründet und betreut den Verband der Walliser Köche (AVCC) und 4 regionale Gruppen: die Groupement des Sociétés de Chant du Bas-Valais (GSCBV), die Union Chorale du Centre (UCC), die Groupement des Chanteurs du Valais Central (GCVC) und den Oberwalliser Chor- und Cäcilien Verband (OCV).\r\n\r\nBis heute haben sich mehr als 160 Erwachsenenchöre mit mehr als 5000 Sängern dem Verband angeschlossen. Jugend- und Kinderchöre sind ebenfalls Mitglieder des Verbandes, was ihnen den Zugang zu Ausbildungsmöglichkeiten und Unterstützung durch Erwachsenenchöre ermöglicht.\r\n\r\n<h3>Unternehmen</h3>\r\nDer FSCV wird von Laurent Bovier mit Kompetenz und Begeisterung geleitet. Er besteht aus einem Lenkungsausschuss, einem kantonalen Ausschuss und der Musikkommission. Die Präsidenten der Regionalzusammenschlüsse und des AVCC sind ebenfalls von Amts wegen Mitglieder des Lenkungsausschusses.', 'organigrammeFSCV.png', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),
(8, 'Mouvement et musique', 'Bewegung und Musik', 'chapeau fr', 'chapeau de', 'Le lien réciproque entre le mouvement et la musique, du geste corporel à l’expression musicale. Conférence du Dr Philippe Vuadens, Neurologue, Médecin adjoint à la Suva/Sion, chanteur.', 'Die wechselseitige Verbindung zwischen Bewegung und Musik, von der körperlichen Geste bis zum musikalischen Ausdruck. Konferenz von Dr. Philippe Vuadens, Neurologe, Assistenzarzt an der Suva/Sion, Sänger.', 'news3.png', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `Categories`
--

CREATE TABLE `Categories` (
  `id` int(11) NOT NULL,
  `categoryFR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `categoryDE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `Categories`
--

INSERT INTO `Categories` (`id`, `categoryFR`, `categoryDE`, `createdAt`, `updatedAt`) VALUES
(1, 'Page', 'Seite', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'News', 'News', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(3, 'Evenement', 'Event', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `Choirs`
--

CREATE TABLE `Choirs` (
  `id` int(11) NOT NULL,
  `choirName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `otherType` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `yearOfCreation` date DEFAULT NULL,
  `chEglise` tinyint(1) DEFAULT NULL,
  `chGospel` tinyint(1) DEFAULT NULL,
  `memberfc` tinyint(1) DEFAULT NULL,
  `entryfc` date DEFAULT NULL,
  `entryGroup` date DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ChoirTypeId` int(11) DEFAULT NULL,
  `GroupeId` int(11) DEFAULT NULL,
  `LanguageId` int(11) DEFAULT NULL,
  `LocalityId` int(11) DEFAULT NULL,
  `UscmemberId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `Choirs`
--

INSERT INTO `Choirs` (`id`, `choirName`, `address1`, `address2`, `website`, `otherType`, `yearOfCreation`, `chEglise`, `chGospel`, `memberfc`, `entryfc`, `entryGroup`, `remarks`, `createdAt`, `updatedAt`, `ChoirTypeId`, `GroupeId`, `LanguageId`, `LocalityId`, `UscmemberId`) VALUES
(1, 'test1', 'test1', NULL, 'test.com', NULL, '2018-10-19', NULL, NULL, 1, NULL, NULL, NULL, '2018-10-19 00:00:00', '2018-10-19 00:00:00', NULL, NULL, NULL, 1, NULL),
(2, 'Choeur chanter.ch', 'Rue de là 32', NULL, 'chanter.ch/', 'de quoi ?', '2000-01-01', 1, 1, 1, '1991-01-01', '1991-01-01', 'Des remarques', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1, 1, 1, 1),
(3, 'Choeur perdu', 'Rue du perdu', NULL, 'perdu.com', NULL, '2010-01-01', 0, 0, 0, NULL, NULL, NULL, '2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 1, 2, 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `ChoirTypes`
--

CREATE TABLE `ChoirTypes` (
  `id` int(11) NOT NULL,
  `choirType` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `ChoirTypes`
--

INSERT INTO `ChoirTypes` (`id`, `choirType`, `createdAt`, `updatedAt`) VALUES
(1, 'Adulte', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Jeunes', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `Comities`
--

CREATE TABLE `Comities` (
  `id` int(11) NOT NULL,
  `comityName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `Comities`
--

INSERT INTO `Comities` (`id`, `comityName`, `createdAt`, `updatedAt`) VALUES
(1, 'Comite FCC', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Comite FCVS', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(3, 'Comission de la musique', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `Comity_Person`
--

CREATE TABLE `Comity_Person` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ComityId` int(11) NOT NULL,
  `PersonId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `Comity_Person`
--

INSERT INTO `Comity_Person` (`createdAt`, `updatedAt`, `ComityId`, `PersonId`) VALUES
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 3),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 4),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 5),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 6),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 3, 7),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 3, 8),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 3, 9);

-- --------------------------------------------------------

--
-- Structure de la table `Events`
--

CREATE TABLE `Events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `info` text,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `GroupeId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Functions`
--

CREATE TABLE `Functions` (
  `id` int(11) NOT NULL,
  `functionName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `Functions`
--

INSERT INTO `Functions` (`id`, `functionName`, `createdAt`, `updatedAt`) VALUES
(1, 'President', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Director', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(4, 'Co-présidente de la Commission de Musique Choeur en Herbe', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(5, 'Co-Présidente de la Commission de Musique un Air de Montagne', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(6, 'Co-président de la Commission de Musique et président de AVCC', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `Genders`
--

CREATE TABLE `Genders` (
  `id` int(11) NOT NULL,
  `genderName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `Genders`
--

INSERT INTO `Genders` (`id`, `genderName`, `createdAt`, `updatedAt`) VALUES
(1, 'Female', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Male', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(3, 'Other', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `Groupes`
--

CREATE TABLE `Groupes` (
  `id` int(11) NOT NULL,
  `groupName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `Groupes`
--

INSERT INTO `Groupes` (`id`, `groupName`, `createdAt`, `updatedAt`) VALUES
(1, '<h4 style=\"color:#f60;padding-bottom:10px;\">Groupement des Sociétés de Chant du Bas-Valais (GSCBV)</h4>', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, '<h4 style=\"color:#ff0;padding-bottom:10px;\">Union Chorale du Centre (UCC)</h4>', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(3, '<h4 style=\"color:#90c;padding-bottom:10px;\">Groupement des Chanteurs du Valais Central (GCVC)', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(4, '<h4 style=\"color:#0f0;padding-bottom:10px;\">Oberwalliser Chor- und Cäcilien Verband (OCV)</h4>', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(5, '<h4>Association Valaisanne des chefs de choeurs (AVCC)</h4>', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `Languages`
--

CREATE TABLE `Languages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `Languages`
--

INSERT INTO `Languages` (`id`, `language`, `createdAt`, `updatedAt`) VALUES
(1, 'Français', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Deutsch', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `Localities`
--

CREATE TABLE `Localities` (
  `id` int(11) NOT NULL,
  `localityName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `npa` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `Localities`
--

INSERT INTO `Localities` (`id`, `localityName`, `npa`, `createdAt`, `updatedAt`) VALUES
(1, 'Sion', 1950, '2018-10-19 00:00:00', '2018-10-19 00:00:00'),
(2, 'Sierre', 3960, '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(3, 'Conthey', 1964, '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `People`
--

CREATE TABLE `People` (
  `id` int(11) NOT NULL,
  `lastname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `adress2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phoneprof` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `refPicture` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `GenderId` int(11) DEFAULT NULL,
  `LanguageId` int(11) DEFAULT NULL,
  `LocalityId` int(11) DEFAULT NULL,
  `FunctionId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `People`
--

INSERT INTO `People` (`id`, `lastname`, `firstname`, `birthdate`, `address1`, `adress2`, `phone`, `phoneprof`, `fax`, `email`, `refPicture`, `mobile`, `lastupdate`, `username`, `password_hash`, `createdAt`, `updatedAt`, `GenderId`, `LanguageId`, `LocalityId`, `FunctionId`) VALUES
(3, 'Bovier', 'Laurent ', '1991-12-12', 'Rue de la rue 23<br/>1950 Sion', NULL, '0233216546', '1234567890', '1234567890', 'john@doe.com', 'lbovier.jpg', '1234567890', NULL, 'bl', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-10-03 00:00:00', '2018-10-03 00:00:00', 1, 1, 1, 1),
(5, 'Lovisa', 'Blaise ', '1989-01-01', 'Rte du St-Bernard 14<br/>1937 Orsières', NULL, '', NULL, NULL, 'donotcont@me', 'article1.jpg', '0777777777', NULL, 'lb', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-10-07 00:00:00', '2018-10-07 00:00:00', 3, 2, 3, 1),
(6, 'Meyer', 'Nadine ', '1989-01-01', 'Rue de la dixence 13<br/>1913 Saillon', NULL, '', NULL, NULL, 'donotcont@me', 'article1.jpg', '0777777777', NULL, 'mn', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-10-07 00:00:00', '2018-10-07 00:00:00', 3, 2, 3, 1),
(7, 'Bender', 'Sophie', '1989-01-01', 'Rue du Tilleul 62<br/>1926 Fully', NULL, '', NULL, NULL, 'donotcont@me', 'sophie.jpg', '0777777777', NULL, 'bs', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-10-07 00:00:00', '2018-10-07 00:00:00', 3, 2, 3, 4),
(8, 'Favre', 'Marie', '1989-01-01', 'Ch. de la Crête 17<br/>1950 Sion', NULL, '', NULL, NULL, 'donotcont@me', 'article1.jpg', '0777777777', NULL, 'fm', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-10-07 00:00:00', '2018-10-07 00:00:00', 3, 2, 3, 5),
(9, 'Jean-David', 'Waeber', '1989-01-01', 'Rte de Crans 27<br/>1978 Lens', NULL, '', NULL, NULL, 'donotcont@me', 'jd.jpg', '0777777777', NULL, 'jdw', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-10-07 00:00:00', '2018-10-07 00:00:00', 3, 2, 3, 6);

-- --------------------------------------------------------

--
-- Structure de la table `Person_Chorus`
--

CREATE TABLE `Person_Chorus` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `PersonId` int(11) NOT NULL,
  `ChoirId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `Person_Chorus`
--

INSERT INTO `Person_Chorus` (`createdAt`, `updatedAt`, `PersonId`, `ChoirId`) VALUES
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `Roles`
--

CREATE TABLE `Roles` (
  `id` int(11) NOT NULL,
  `roleName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `Roles`
--

INSERT INTO `Roles` (`id`, `roleName`, `createdAt`, `updatedAt`) VALUES
(1, 'Administrator', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Chef Federation des choeurs', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(3, 'Responsable cantonal', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `Role_Person`
--

CREATE TABLE `Role_Person` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `PersonId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `Role_Person`
--

INSERT INTO `Role_Person` (`createdAt`, `updatedAt`, `PersonId`, `RoleId`) VALUES
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `Uscmembers`
--

CREATE TABLE `Uscmembers` (
  `id` int(11) NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dateEntry` date DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `Uscmembers`
--

INSERT INTO `Uscmembers` (`id`, `password_hash`, `dateEntry`, `createdAt`, `updatedAt`) VALUES
(1, '$2a$04$jgq50olE1RGhdBx1/iG/z.7tkCHtjwm9HNFkWpJ3dTonW.bOgQ/cy', '2017-10-02', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, '$2a$04$jgq50olE1RGhdBx1/iG/z.7tkCHtjwm9HNFkWpJ3dTonW.bOgQ/cy', '2015-10-02', '2018-10-18 00:00:00', '2018-10-24 00:00:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Articles`
--
ALTER TABLE `Articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PersonId` (`PersonId`),
  ADD KEY `CategoryId` (`CategoryId`);

--
-- Index pour la table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Choirs`
--
ALTER TABLE `Choirs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ChoirTypeId` (`ChoirTypeId`),
  ADD KEY `GroupeId` (`GroupeId`),
  ADD KEY `LanguageId` (`LanguageId`),
  ADD KEY `LocalityId` (`LocalityId`),
  ADD KEY `UscmemberId` (`UscmemberId`);

--
-- Index pour la table `ChoirTypes`
--
ALTER TABLE `ChoirTypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Comities`
--
ALTER TABLE `Comities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Comity_Person`
--
ALTER TABLE `Comity_Person`
  ADD PRIMARY KEY (`ComityId`,`PersonId`),
  ADD KEY `PersonId` (`PersonId`);

--
-- Index pour la table `Events`
--
ALTER TABLE `Events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `GroupeId` (`GroupeId`);

--
-- Index pour la table `Functions`
--
ALTER TABLE `Functions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Genders`
--
ALTER TABLE `Genders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Groupes`
--
ALTER TABLE `Groupes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Languages`
--
ALTER TABLE `Languages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Localities`
--
ALTER TABLE `Localities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `People`
--
ALTER TABLE `People`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `GenderId` (`GenderId`),
  ADD KEY `LanguageId` (`LanguageId`),
  ADD KEY `LocalityId` (`LocalityId`),
  ADD KEY `FunctionId` (`FunctionId`);

--
-- Index pour la table `Person_Chorus`
--
ALTER TABLE `Person_Chorus`
  ADD PRIMARY KEY (`PersonId`,`ChoirId`),
  ADD KEY `ChoirId` (`ChoirId`);

--
-- Index pour la table `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Role_Person`
--
ALTER TABLE `Role_Person`
  ADD PRIMARY KEY (`PersonId`,`RoleId`),
  ADD KEY `RoleId` (`RoleId`);

--
-- Index pour la table `Uscmembers`
--
ALTER TABLE `Uscmembers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Articles`
--
ALTER TABLE `Articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Choirs`
--
ALTER TABLE `Choirs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `ChoirTypes`
--
ALTER TABLE `ChoirTypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Comities`
--
ALTER TABLE `Comities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Events`
--
ALTER TABLE `Events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Functions`
--
ALTER TABLE `Functions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `Genders`
--
ALTER TABLE `Genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Groupes`
--
ALTER TABLE `Groupes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `Languages`
--
ALTER TABLE `Languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Localities`
--
ALTER TABLE `Localities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `People`
--
ALTER TABLE `People`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `Roles`
--
ALTER TABLE `Roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Uscmembers`
--
ALTER TABLE `Uscmembers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Choirs`
--
ALTER TABLE `Choirs`
  ADD CONSTRAINT `Choirs_ibfk_1` FOREIGN KEY (`ChoirTypeId`) REFERENCES `ChoirTypes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Choirs_ibfk_2` FOREIGN KEY (`GroupeId`) REFERENCES `Groupes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Choirs_ibfk_3` FOREIGN KEY (`LanguageId`) REFERENCES `Languages` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Choirs_ibfk_4` FOREIGN KEY (`LocalityId`) REFERENCES `Localities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Choirs_ibfk_5` FOREIGN KEY (`UscmemberId`) REFERENCES `Uscmembers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `Events`
--
ALTER TABLE `Events`
  ADD CONSTRAINT `Events_ibfk_1` FOREIGN KEY (`GroupeId`) REFERENCES `Groupes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
