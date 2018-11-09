-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Nov 08, 2018 at 01:15 PM
-- Server version: 5.7.22
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chanter`
--

--
-- Dumping data for table `Articles`
--

INSERT INTO `Articles` (`id`, `titleFR`, `titleDE`, `chapeauFR`, `chapeauDE`, `textFR`, `textDE`, `refPicture`, `createdAt`, `updatedAt`, `PersonId`, `CategoryId`) VALUES
(3, 'Historique AVCC', 'AVCC-Historie', 'chapeau fr', 'chapeau de', '<h3>Objectif</h3>Soucieuse d’offrir aux responsables de la musique chorale l’occasion de parfaire leur formation auprès d’animateurs compétents ou de partager soucis et joies entre collègues, l’AVCC poursuit son activité initiale en proposant ses encouragements et ses services.<h3>Fondation</h3>\r\nA la suite d’un week-end de l’AVDC (Association Vaudoise des Directeurs de Chœurs) à Vérossaz, une dizaine de chefs de chœur valaisans décidèrent de la fondation de l’AVCC, l’Association Valaisanne des Chefs de Chœur. Cette fondation eut lieu le 11 octobre 1969 autour de M. Fernand Dubois, le regretté président de la Fédération Cantonale de Chant. L’assemblée fondatrice eut lieu à Sion le 13 décembre 1969 en présence d’une trentaine de chefs qui répondirent à l’appel.<h3>Présidents</h3>Présidée successivement par MM. Armand Blanc, Jean-Pierre Salamin, Pierre-Louis Nanchen, Pierre-Alain Barras, Samuel Emery et, depuis 2014, Jean-David Waeber, l’AVCC n’a cessé de poursuivre, tout en les adaptant aux goûts et aux besoins du moment, les objectifs que s’étaient fixés les initiateurs et fondateurs.<h3>Foyer</h3>Le Foyer Musical, ouvert par l’AVCC le 28 août 1979 en la Maison Supersaxo à Martigny fut déplacé à Sion en 1981, au Foyer Don Bosco, puis au home de Mazerette jusqu’en 2009. Cette année-là, l’AVCC a légué à la Médiathèque Valais son fonds de partitions afin de lui donner une plus grande visibilité auprès du public. Année après année ce fonds s’est étoffé pour rassembler et proposer aujourd’hui près de 20’000 partitions et de nombreux recueils, collections ou supports audio, le tout répertorié par M. Edouard Delaloye, premier animateur, puis par Mme Anne-Françoise Andenmatten-Sierro, actuelle archiviste de l’association, en activité depuis 1985.', '<h3>Zielsetzung</h3>Um den Chorleitern die Möglichkeit zu geben, ihre Ausbildung mit kompetenten Dozenten zu perfektionieren oder Anliegen und Freuden mit Kollegen zu teilen, setzt das AVCC seine anfängliche Tätigkeit mit seinen Förderungen und Dienstleistungen fort.<h3>Fundament</h3>Nach einem Wochenende der AVDC (Association Vaudoise des Directeurs de Chœurs) in Vérossaz beschlossen rund zehn walliserische Chordirigenten, die AVCC, die Association Wallisanne des Chefs de Chœur zu gründen. Diese Stiftung fand am 11. Oktober 1969 um Herrn Fernand Dubois, den verstorbenen Präsidenten des Kantonalen Gesangsverbandes, statt. Die Gründungsversammlung fand am 13. Dezember 1969 in Sion statt, in Anwesenheit von etwa dreißig Leitern, die den Aufruf entgegennahmen.<h3>Präsidenten</h3>Unter dem Vorsitz von Armand Blanc, Jean-Pierre Salamin, Pierre-Louis Nanchen, Pierre-Alain Barras, Samuel Emery und seit 2014 Jean-David Waeber hat die AVCC die von den Initiatoren und Gründern festgelegten Ziele ständig verfolgt und an den Geschmack und die Bedürfnisse des Augenblicks angepasst.<h3>Foyer</h3>Das Foyer Musical, das vom AVCC am 28. August 1979 im Maison Supersaxo in Martigny eröffnet wurde, wurde 1981 nach Sion verlegt, in das Foyer Don Bosco, dann bis 2009 in das Foyer de Mazerette. In diesem Jahr vermachte das AVCC seine Partiturensammlung der Médiathèque Wallis, um ihr mehr Sichtbarkeit in der Öffentlichkeit zu verschaffen. Diese Sammlung umfasst seit Jahren fast 20.000 Partituren und zahlreiche Sammlungen, Sammlungen und Tonträger, die alle von Edouard Delaloye, dem ersten Animateur, und dann von Anne-Françoise Andenmatten-Sierro, der derzeitigen Archivarin des Vereins, die seit 1985 tätig ist, aufgeführt werden.', 'article1.jpg', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),
(4, 'Présentation AVCC', 'AVCC-Presentation', 'chapeau fr', 'chapeau de', '<p>L&rsquo;Association Valaisanne des Chefs de Choeurs (AVCC) est une association qui, depuis plus de 40 ans, veut promouvoir la formation continue des chefs de chœur grâce à des cours donnés par des intervenants réputés et de qualité. Elle tient à défendre les intérêts des chefs de chœurs, à promouvoir une formation continue de qualité, à favoriser les contacts entre ses sociétaires et les organes officiels, à offrir à ses membres une documentation spécialisée dans le domaine du chant choral.</p>\r\n<p>Elle organise chaque année, seule ou en collaboration avec la Fédération des Sociétés de Chant du Valais, des séminaires avec des chefs renommés :</p>\r\n<ul>\r\n<li>des journées de formation</li>\r\n<li>des soirées à thème</li>\r\n<li>des journées spéciales pour chefs de chœurs de jeunes ou d’enfants</li>\r\n<li>des activités autour du fonds choral déposé auprès de la Médiathèque Valais</li>\r\n</ul>\r\n<p>Elle favorise également la rencontre et les échanges entre chefs et propose un vaste choix de plus de 20’000 partitions.</p>\r\n<p>Merci de nous aider à faire connaître l’AVCC ! N’hésitez pas à nous communiquer vos souhaits, vos soucis, vos coups de cœur ou vos questions. Nous essayons de tout mettre en œuvre pour répondre à vos besoins.</p>\r\n\r\n\r\n\r\n\r\n', 'Die Vereinigung Wallis des Chefs de Chœur (AVCC) ist eine Vereinigung, die seit mehr als 40 Jahren die Weiterbildung von Chordirigenten durch Kurse von renommierten und qualifizierten Lehrern fördern will. Sie setzt sich für die Interessen der Chorleiter ein, fördert eine qualitativ hochwertige Weiterbildung, pflegt die Kontakte zwischen ihren Mitgliedern und den offiziellen Stellen und bietet ihren Mitgliedern eine spezielle Dokumentation im Bereich des Chorgesangs.\r\n\r\nJedes Jahr organisiert sie allein oder in Zusammenarbeit mit der Fédération des Sociétés de Chant du Valais Seminare mit renommierten Köchen:\r\n\r\n<ul>\r\n<li>Schulungstage</li>\r\n<li>Themenabende</li>\r\n<li>spezielle Tage für Jugend- oder KinderchorleiterInnen</li>\r\n<li>Aktivitäten rund um den bei der Médiathèque Wallis hinterlegten Chorfonds</li>\r\n<li>Es fördert auch die Begegnung und den Austausch zwischen Dirigenten und bietet eine große Auswahl von mehr als 20.000 Partituren.</li>\r\n\r\nVielen Dank, dass Sie uns helfen, die AVCC bekannt zu machen! Zögern Sie nicht, uns Ihre Wünsche, Anliegen, Favoriten oder Fragen mitzuteilen. Wir versuchen, unser Bestes zu geben, um Ihren Bedürfnissen gerecht zu werden.\r\n\r\n', 'article1.jpg', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),
(5, 'Fonds choral et Foyer AVCC', 'Fonds choral et Foyer AVCC', 'chapeau fr', 'chapeau de', 'Le Foyer AVCC est un lieu de rencontre convivial où venir seul, avec sa commission de musique ou avec son comité pour consulter des partitions et des documents avant de bâtir un programme. Tous les documents sont à consulter sur place. Ils sont visibles dans le catalogue RERO, avec une multitude de renseignements utiles aux chefs de chœurs. Dès le début 2018, une partie de cette musique a été placée au libre accès de la Médiathèque-Valais pour être consultée librement. Cependant, il sera encore possible de prendre rendez-vous avec l’archiviste pour une recherche spécifique ou des conseils.\r\n\r\nLa Médiathèque Valais à Sion se trouve à la Rue de Lausanne 45.\r\n\r\n\r\nPour la recherche et la consultation des partitions, prendre préalablement contact avec :\r\nAnne-Françoise Andenmatten Sierro\r\nTél. privé : 027 323 19 28 ou 079 232 54 02\r\nE-mail : annef-vociamici@bluewin.ch\r\n<br/>\r\nPrès de 20’000 partitions\r\n\r\n<ul>\r\n<li>Profanes</li>\r\n<li>Religieuses</li>\r\n<li>De toutes époques et de tous genres</li>\r\n<li>De différentes maisons d’édition</li>\r\n<li>Pour tous types de choeurs: mixtes, dames, hommes, jeunes, enfants</li>\r\n</ul>\r\nDes livres et des documentaires</li>\r\n\r\n<ul>\r\n<li>Théorie musicale</li>\r\n<li>Musique chorale et compositeurs</li>\r\n<li>Direction chorale</li>\r\n<li>Pose de voix</li>\r\n<li>Enregistrements</li>\r\n<li>Revues liturgiques (Choristes, Voix Nouvelles, Signes Musiques, Chantons en Eglise, etc.)</li>\r\n<li>Documents sur la liturgie, ses acteurs, ses rites, etc.</li>\r\n</ul>', 'Das AVCC Foyer ist ein freundlicher Treffpunkt, an dem Sie allein, mit Ihrem Musikkomitee oder mit Ihrem Komitee kommen können, um Partituren und Dokumente einzusehen, bevor Sie ein Programm erstellen. Alle Dokumente sind vor Ort einzusehen. Sie sind im RERO-Katalog zu finden, mit einer Fülle von Informationen, die für Chorleiter nützlich sind. Ab Anfang 2018 wurde ein Teil dieser Musik in den freien Zugang des Médiathèque-Valais gestellt und kostenlos konsultiert. Es ist jedoch weiterhin möglich, einen Termin mit dem Archivar für eine gezielte Recherche oder Beratung zu vereinbaren.\r\n\r\nDie Médiathèque Wallis in Sion befindet sich an der Rue de Lausanne 45.\r\n\r\n\r\nFür die Recherche und Beratung von Partituren wenden Sie sich bitte vorab an uns:\r\nAnne-Françoise Andenmatten Sierro\r\nPrivattelefon: 027 323 19 28 oder 079 232 54 54 54 02 02\r\nE-Mail: annef-vociamici@bluewin.ch\r\n<br/>\r\nFast 20000 Partituren\r\n<ul>\r\n<li>Säkulare</li>\r\n<li>Religiöse Frauen</li>\r\n<li>Von allen Zeiten und allen möglichen Arten.</li>\r\n<li>Aus verschiedenen Verlagen</li>\r\n<li>Für alle Arten von Chören: gemischt, Damen, Herren, Jugendliche, Kinder, etc.</li>\r\n</ul>\r\nBücher und Dokumentationen\r\n<ul>\r\n<li>Musikalische Theorie</li>\r\n<li>Chormusik und Komponisten</li>\r\n<li>Chorleitung</li>\r\n<li>Pose der Stimme</li>\r\n<li>Aufzeichnungen</li>\r\n<li>Liturgische Rezensionen (Choristen, Neue Stimmen, Musikzeichen, Kirchenlieder, etc.)</li>\r\n<li>Dokumente über die Liturgie, ihre Akteure, ihre Riten usw.</li></ul>', 'article1.jpg', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),
(6, 'Prochaine formation AVCC', 'Prochainbildung AVCC', 'chapeau fr', 'chapeau de', 'Cette journée animée par Charles Barbier se veut interactive et propose de réfléchir aux aspects cachés de notre pratique de chefs de chœur, notamment la communication non verbale et les choix que nous faisons avant même d’être face au chœur. En choisissant comme fil rouge la prise de risque, nous aurons l’occasion de partager des regards neufs sur nos pratiques. Quels risques prend-on en élaborant un programme de concert ? Sans faire de mise en voix fait-on courir un risque aux chanteurs ? Y a-t-il un risque à ne pas prêter attention au choix de ses mots, en répétition ?\r\n\r\nCours gratuit pour les membres cotisants AVCC, 40.- CHF pour les non cotisants à l’AVCC / Repas : 25.- CHF / Encaissement sur place.\r\n\r\nInscriptions jusqu’au 10 novembre 2018 à associationavcc@gmail.com ou au 079 930 25 43. Merci d’indiquer si vous souhaitez partager le repas avec les autres participants.', 'Dieser Tag unter der Leitung von Charles Barbier soll interaktiv sein und schlägt vor, über die verborgenen Aspekte unserer Praxis als Chorleiter nachzudenken, insbesondere die nonverbale Kommunikation und die Entscheidungen, die wir treffen, bevor wir überhaupt dem Chor gegenüber stehen. Wenn wir uns für die Risikobereitschaft als gemeinsamen Nenner entscheiden, haben wir die Möglichkeit, neue Perspektiven auf unsere Praktiken auszutauschen. Welche Risiken werden bei der Entwicklung eines Konzertprogramms eingegangen? Ohne Stimme, setzen wir die Sänger in Gefahr? Besteht das Risiko, dass man bei der Probe nicht auf die Wortwahl achtet?\r\n\r\nKostenloser Kurs für AVCC-Mitglieder, CHF 40 für nicht AVCC-Mitglieder / Mahlzeiten: CHF 25 / Abholung vor Ort.\r\n\r\nAnmeldungen bis zum 10. November 2018 unter associationavcc@gmail.com oder 079 930 25 43. Bitte geben Sie an, ob Sie das Essen mit den anderen Teilnehmern teilen möchten.', 'newsFormation.png', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 2),
(7, 'Présentation', 'Presentation', 'chapeau fr', 'chapeau de', 'La Fédération des Sociétés de Chant du Valais (FSCV) est une association membre de l’Union Suisse des Chorales (USC) regroupant des chœurs d’adultes, de jeunes et d’enfants du Valais Romand et du Haut-Valais.\r\n\r\nFondée en 1906, elle chapeaute l’Association Valaisanne des Chefs de Chœurs (AVCC) et 4 groupements régionaux : le Groupement des Sociétés de Chant du Bas-Valais (GSCBV), l’Union Chorale du Centre (UCC), le Groupement des Chanteurs du Valais Central (GCVC) et le Oberwalliser Chor- und Cäcilien Verband (OCV).\r\n\r\nA ce jour, plus de 160 chorales d’adultes avec plus de 5000 chanteurs sont réunis au sein de la Fédération. Les chœurs de jeunes et d’enfants sont également membres de la Fédération, ce qui leur permet d’accéder aux offres de formation et au soutien des chorales d’adultes.\r\n\r\n\r\n<h3>Organisation</h3>\r\nLa FSCV est présidée avec compétence et enthousiasme par Laurent Bovier. Elle est composée d’un comité directeur, d’un comité cantonal et de la commission de musique. Les présidents des groupements régionaux et de l’AVCC sont également membres d’office du comité directeur.', 'Die Fédération des Sociétés de Chant du Valais (FSCV) ist Mitglied im Schweizerischen Chorverband (USC), der Chöre von Erwachsenen, Jugendlichen und Kindern aus dem Wallis Romand und Haut-Valais vereint.\r\n\r\nSie wurde 1906 gegründet und betreut den Verband der Walliser Köche (AVCC) und 4 regionale Gruppen: die Groupement des Sociétés de Chant du Bas-Valais (GSCBV), die Union Chorale du Centre (UCC), die Groupement des Chanteurs du Valais Central (GCVC) und den Oberwalliser Chor- und Cäcilien Verband (OCV).\r\n\r\nBis heute haben sich mehr als 160 Erwachsenenchöre mit mehr als 5000 Sängern dem Verband angeschlossen. Jugend- und Kinderchöre sind ebenfalls Mitglieder des Verbandes, was ihnen den Zugang zu Ausbildungsmöglichkeiten und Unterstützung durch Erwachsenenchöre ermöglicht.\r\n\r\n<h3>Unternehmen</h3>\r\nDer FSCV wird von Laurent Bovier mit Kompetenz und Begeisterung geleitet. Er besteht aus einem Lenkungsausschuss, einem kantonalen Ausschuss und der Musikkommission. Die Präsidenten der Regionalzusammenschlüsse und des AVCC sind ebenfalls von Amts wegen Mitglieder des Lenkungsausschusses.', 'organigrammeFSCV.png', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),
(8, 'Mouvement et musique', 'Bewegung und Musik', 'chapeau fr', 'Die wechselseitige Verbindung zwischen Bewegung und Musik...', 'Le lien réciproque entre le mouvement et la musique, du geste corporel à l’expression musicale. Conférence du Dr Philippe Vuadens, Neurologue, Médecin adjoint à la Suva/Sion, chanteur.', 'Die wechselseitige Verbindung zwischen Bewegung und Musik, von der körperlichen Geste bis zum musikalischen Ausdruck. Konferenz von Dr. Philippe Vuadens, Neurologe, Assistenzarzt an der Suva/Sion, Sänger.', 'news3.png', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 2),
(9, 'Offre d\'emploi', 'Stellenangebot', NULL, NULL, 'Suite à la démission de son titulaire actuel après plus de vingt ans d’activité le\r\n\r\nCHOEUR PRO ARTE DE SION  https://proarte-sion.ch/\r\n\r\nFormation chorale mixte de 50 membres du Valais Central dont les répétitions se tiennent en français, en principe le lundi soir, lance un appel d’offres pour confier sa DIRECTION dès le 1er septembre 2019.\r\n\r\nProfil requis : Formation musicale avec bachelor ou master ou formation jugée équivalente.\r\nExpérience dans la conception et la direction de projets multidisciplinaires. Réseau élargi dans les milieux artistiques. Bon contact social .\r\n\r\n<h4>Tâches principales </h4>\r\n<ul>\r\n\r\n<li>Responsabilité musicale et artistique du Chœur </li>\r\n<li>Choix de la programmation </li>\r\n<li>Recherche des lieux de concerts et des partenaires </li>\r\n<li>Organisation des répétitions </li>\r\n</ul>\r\nRémunération sur la base des tarifs de la Fédération des sociétés de chant du Valais.\r\n\r\n<h4>Dépôt des dossiers de candidatures</h4> \r\n\r\nLes dossiers complets avec curriculum vitae, certificats et lettre de motivation doivent être déposés jusqu’au 31 octobre 2018 à l’adresse suivante : <br/>\r\nM. François Genoud<br/> président du Chœur pro Arte<br/> chemin des Moulins 42 <br/> 3960 Sierre <br/><br/>ou par courriel à <br/> mifr.genoud@gmail.com.<br/>\r\nIls seront examinés par une commission d’audition.<br/> Les candidats retenus seront invités à une répétition probatoire en janvier 2019 en vue d’une décision avant le 15 février 2019.', 'Nach dem Rücktritt des derzeitigen Inhabers nach mehr als zwanzig Jahren Tätigkeit am\r\n\r\nPRO ARTE DE SION CHOIR https://proarte-sion.ch/\r\n\r\nEin gemischter Chor aus dem Zentralwallis, dessen Proben grundsätzlich am Montagabend auf Französisch stattfinden, startet eine Ausschreibung, um seiner Direktion ab dem 1. September 2019 den Auftrag zu erteilen.\r\n\r\nErforderliches Profil: Musikalische Ausbildung mit Bachelor- oder Masterabschluss oder gleichwertigem Abschluss.\r\nErfahrung in der Gestaltung und Leitung von multidisziplinären Projekten. Erweitertes Netzwerk in der Kunstszene. Guter sozialer Kontakt.\r\n\r\n<h4>Hauptaufgaben </h4>Aufgaben\r\n<ul>\r\n\r\n<li>Musikalische und künstlerische Verantwortung des Chores </li>\r\n<li>Auswahl der Programmierung </li>\r\n<li>Suche nach Konzerthäusern und Partnern </li>\r\n<li>Probenorganisation </li>\r\n</ul>\r\nDie Vergütung basiert auf den Sätzen des Fédération des sociétés de chant du Valais.\r\n\r\n<h4>Anmeldung von Bewerbungen</h4>> \r\n\r\nVollständige Bewerbungen mit Lebenslauf, Zeugnissen und Anschreiben sind bis zum 31. Oktober 2018 an folgende Adresse zu richten: <br/>\r\nHerr François Genoud<br/> Präsident des Choeur pro Arte<br/> chemin des Moulins 42 <br/> 3960 Sierre <br/>>><br/> oder per E-Mail an <br/> mifr.genoud@gmail.com.<br/>\r\nSie werden von einem Anhörungsausschuss geprüft. <br/> Die ausgewählten Kandidaten werden zu einer Probe im Januar 2019 für eine Entscheidung vor dem 15. Februar 2019 eingeladen.\r\n', NULL, '2018-11-05 09:08:39', '2018-11-05 09:08:39', 3, NULL),
(10, 'FRAPP‘ Festival 2016', 'FRAPP‘ Festival 2016', 'Le Frapp\'Festival est un rassemblement des chœurs de jeunes valaisans...', 'chapeau', 'Le Frapp\'Festival est un rassemblement des chœurs de jeunes valaisans, des chœurs des lycées, de l\'OS et de la Maîtrise. Trois studios sont au programme pour découvrir des facettes originales de la musique chorale.', 'Das Frapp’Festival ist eine Zusammenkunft der Walliser Jugendchöre, der Chöre der Mittelschulen, der OS sowie der Maîtrise. Drei Ateliers stehen auf dem Programm, in denen originelle Facetten der Chormusik entdeckt werden können.', 'carrenoir.jpg', '2018-11-06 15:47:49', '2018-11-06 15:47:49', 1, 2);

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`id`, `categoryFR`, `categoryDE`, `createdAt`, `updatedAt`) VALUES
(1, 'Page', 'Seite', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'News', 'News', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(3, 'Evenement', 'Event', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(4, 'Demande', 'Frage', '2018-11-02 00:00:00', '2018-11-02 00:00:00'),
(5, 'Reclamation', 'Reklamation', '2018-11-02 00:00:00', '2018-11-03 00:00:00');

--
-- Dumping data for table `Choirs`
--

INSERT INTO `Choirs` (`id`, `choirName`, `address1`, `address2`, `website`, `otherType`, `yearOfCreation`, `chEglise`, `chGospel`, `memberfc`, `entryfc`, `entryGroup`, `remarks`, `createdAt`, `updatedAt`, `ChoirTypeId`, `GroupeId`, `LanguageId`, `LocalityId`, `UscmemberId`) VALUES
(1, 'Mixed Choir The Lily of the Valley', '1994 Aproz', '', 'website.ch', 'Mixed choir', '1945-01-30', 1, 0, 1, '2010-09-08', '2012-10-15', '30 singers rehersal', '2018-11-08 09:11:37', '2018-11-08 09:11:37', 1, 1, 1, 1, 1),
(2, 'Ste-Famile MixedChoir', '1976 Erde', '', 'website2.ch', 'Mixed Choir', '1975-01-01', 1, 1, 1, '1999-11-03', '2012-12-12', '39 singers rehersal', '2018-11-08 09:11:37', '2018-11-08 09:11:37', 2, 2, 1, 2, NULL);

--
-- Dumping data for table `ChoirTypes`
--

INSERT INTO `ChoirTypes` (`id`, `choirType`, `createdAt`, `updatedAt`) VALUES
(1, 'Adulte', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Jeunes', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(3, 'Mixte', '2018-11-08 00:00:00', '2018-11-08 00:00:00');

--
-- Dumping data for table `Comities`
--

INSERT INTO `Comities` (`id`, `comityName`, `createdAt`, `updatedAt`) VALUES
(1, 'Comite FCC', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Comite FCVS', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(3, 'Comission de la musique', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(4, 'Groupements', '2018-11-01 00:00:00', '2018-11-01 00:00:00');

--
-- Dumping data for table `Comity_Person`
--

INSERT INTO `Comity_Person` (`createdAt`, `updatedAt`, `ComityId`, `PersonId`) VALUES
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 5),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 6),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 3, 7),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 3, 8),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 3, 9),
('2018-11-01 00:00:00', '2018-11-01 00:00:00', 4, 10);

--
-- Dumping data for table `Events`
--

INSERT INTO `Events` (`id`, `title`, `info`, `start`, `end`, `image`, `createdAt`, `updatedAt`, `GroupeId`) VALUES
(2, 'Concert Jazz', 'Ensemble Vocal Cantamabile - Concert Jazz', '2018-11-11 17:00:00', '2018-11-11 18:00:00', NULL, '2018-11-08 12:47:34', '2018-11-08 12:47:34', 3),
(3, 'Trois choeurs 35 ans ', 'Trois choeurs fêtent les 35 ans de direction de Patricia Montangero-Crausaz', '2018-11-16 20:30:00', '2018-11-16 21:30:00', NULL, '2018-11-08 12:52:26', '2018-11-08 12:52:26', 1),
(4, 'L\'Echo des Cimes de Vérossaz', 'A la grande salle de Vérossaz', '2018-11-22 20:30:00', '2018-11-22 21:30:00', NULL, '2018-11-08 12:55:06', '2018-11-08 13:00:21', 1),
(5, 'Konzert Visp', 'Centrale platz Visp', '2018-11-13 17:00:00', '2018-11-13 18:00:00', NULL, '2018-11-08 12:57:46', '2018-11-08 12:57:46', 4),
(6, 'Chanter Valais', 'Présentation du nouveau site', '2018-11-21 18:00:00', '2018-11-21 19:00:00', NULL, '2018-11-08 12:59:02', '2018-11-08 12:59:02', 2);

--
-- Dumping data for table `Functions`
--

INSERT INTO `Functions` (`id`, `functionName`, `createdAt`, `updatedAt`) VALUES
(1, 'President', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Director', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(4, 'Co-présidente de la Commission de Musique Choeur en Herbe', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(5, 'Co-Présidente de la Commission de Musique un Air de Montagne', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(6, 'Co-président de la Commission de Musique et président de AVCC', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(7, 'Présidente OCV', '2018-11-01 00:00:00', '2018-11-01 00:00:00'),
(8, 'Président GSBV', '2018-11-01 00:00:00', '2018-11-01 00:00:00');

--
-- Dumping data for table `Genders`
--

INSERT INTO `Genders` (`id`, `genderName`, `createdAt`, `updatedAt`) VALUES
(1, 'Female', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Male', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(3, 'Other', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

--
-- Dumping data for table `Groupes`
--

INSERT INTO `Groupes` (`id`, `groupName`, `createdAt`, `updatedAt`) VALUES
(1, 'Groupement des Sociétés de Chant du Bas-Valais (GSCBV)', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Union Chorale du Centre (UCC)', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(3, 'Groupement des Chanteurs du Valais Central (GCVC)', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(4, 'Oberwalliser Chor- und Cäcilien Verband (OCV)', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(5, 'Association Valaisanne des chefs de choeurs (AVCC)', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

--
-- Dumping data for table `Languages`
--

INSERT INTO `Languages` (`id`, `language`, `createdAt`, `updatedAt`) VALUES
(1, 'Français', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Deutsch', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

--
-- Dumping data for table `Localities`
--

INSERT INTO `Localities` (`id`, `localityName`, `npa`, `createdAt`, `updatedAt`) VALUES
(1, 'Sion', 1950, '2018-10-19 00:00:00', '2018-10-19 00:00:00'),
(2, 'Sierre', 3960, '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(3, 'Conthey', 1964, '2018-10-24 00:00:00', '2018-10-24 00:00:00');

--
-- Dumping data for table `People`
--

INSERT INTO `People` (`id`, `lastname`, `firstname`, `birthdate`, `address1`, `adress2`, `phone`, `phoneprof`, `fax`, `email`, `refPicture`, `mobile`, `lastupdate`, `username`, `password_hash`, `createdAt`, `updatedAt`, `GenderId`, `LanguageId`, `LocalityId`, `FunctionId`) VALUES
(1, 'Ahmad', 'Célia', '1991-12-23', NULL, NULL, NULL, NULL, NULL, NULL, 'article1.jpg', NULL, '2018-11-06 00:00:00', 'superadmin', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-11-06 00:00:00', '2018-11-06 00:00:00', 1, 1, 1, NULL),
(2, 'Mitrovic', 'Vlado', '1995-09-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'editeur', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-11-06 00:00:00', '2018-11-06 00:00:00', 1, 1, 1, NULL),
(3, 'Schnyder', 'Jonathan', '1991-12-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webmaster', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-11-06 00:00:00', '2018-11-06 00:00:00', 1, 1, 1, NULL),
(4, 'Bovier', 'Laurent ', '1991-12-12', 'Rue de la rue 23<br/>1950 Sion', NULL, '0233216546', '1234567890', '1234567890', 'john@doe.com', 'lbovier.jpg', '079/725.30.67', NULL, 'bl', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-10-03 00:00:00', '2018-10-03 00:00:00', 1, 1, 1, 1),
(5, 'Lovisa', 'Blaise ', '1989-01-01', 'Rte du St-Bernard 14<br/>1937 Orsières', NULL, '', NULL, NULL, 'donotcont@me', 'article1.jpg', '079/725.30.67', NULL, 'lb', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-10-07 00:00:00', '2018-10-07 00:00:00', 3, 2, 3, 1),
(6, 'Meyer', 'Nadine ', '1989-01-01', 'Rue de la dixence 13<br/>1913 Saillon', NULL, '', NULL, NULL, 'donotcont@me', 'article1.jpg', '079/725.30.67', NULL, 'mn', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-10-07 00:00:00', '2018-10-07 00:00:00', 3, 2, 3, 2),
(7, 'Bender', 'Sophie', '1989-01-01', 'Rue du Tilleul 62<br/>1926 Fully', NULL, '', NULL, NULL, 'donotcont@me', 'sophie.jpg', '079/725.30.67', NULL, 'bs', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-10-07 00:00:00', '2018-10-07 00:00:00', 3, 2, 3, 4),
(8, 'Favre', 'Marie', '1989-01-01', 'Ch. de la Crête 17<br/>1950 Sion', NULL, '', NULL, NULL, 'donotcont@me', 'article1.jpg', '079/725.30.67', NULL, 'fm', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-10-07 00:00:00', '2018-10-07 00:00:00', 3, 2, 3, 5),
(9, 'Jean-David', 'Waeber', '1989-01-01', 'Rte de Crans 27<br/>1978 Lens', NULL, '', NULL, NULL, 'donotcont@me', 'jd.jpg', '079/725.30.67', NULL, 'jdw', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-10-07 00:00:00', '2018-10-07 00:00:00', 3, 2, 3, 6),
(10, 'Knubel', 'Isabelle ', NULL, 'Mühlackerstrasse 8B<br/>\r\n3930 Visp', NULL, NULL, NULL, NULL, NULL, 'article1.jpg', '079/725.30.67', NULL, '', NULL, '2018-11-02 00:00:00', '2018-11-02 00:00:00', NULL, NULL, NULL, 7),
(12, 'Gay-des-Combes', 'Robert', NULL, 'Rue des Epineys 16 B<br/>\r\n1920 Martigny', NULL, NULL, NULL, NULL, NULL, 'gayr.jpg', '079/725.30.67', NULL, 'robertgay', NULL, '2018-11-01 00:00:00', '2018-11-02 00:00:00', NULL, NULL, NULL, 8);

--
-- Dumping data for table `Person_Chorus`
--

INSERT INTO `Person_Chorus` (`createdAt`, `updatedAt`, `PersonId`, `ChoirId`) VALUES
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),
('2018-11-08 00:00:00', '2018-11-08 00:00:00', 2, 1),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 2),
('2018-11-08 00:00:00', '2018-10-23 00:00:00', 5, 1),
('2018-11-08 00:00:00', '2018-11-08 00:00:00', 6, 1);

--
-- Dumping data for table `Roles`
--

INSERT INTO `Roles` (`id`, `roleName`, `layout`, `createdAt`, `updatedAt`) VALUES
(1, 'SuperAdmin', 'admin/adminLayout', '2018-11-07 00:00:00', '2018-11-07 00:00:00'),
(2, 'Editeur', 'admin/editeurLayout', '2018-11-07 00:00:00', '2018-11-07 00:00:00'),
(3, 'Webmaster', 'admin/webmasterLayout', '2018-11-07 00:00:00', '2018-11-07 00:00:00');

--
-- Dumping data for table `Role_Person`
--

INSERT INTO `Role_Person` (`createdAt`, `updatedAt`, `PersonId`, `RoleId`) VALUES
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 2),
('2018-11-06 00:00:00', '2018-11-06 00:00:00', 3, 3);

--
-- Dumping data for table `Tickets`
--

INSERT INTO `Tickets` (`id`, `nom`, `email`, `sujet`, `message`, `statut`, `createdAt`, `updatedAt`, `CategoryId`) VALUES
(1, 'Johnathan', 'jonathan@gmail.com', NULL, '...', 'answered', '2018-11-02 12:38:26', '2018-11-02 13:20:06', 4),
(2, 'Vlado', 'vlado@gmail.com', NULL, '...', 'answered', '2018-11-02 12:40:58', '2018-11-02 13:27:38', 5),
(3, 'Mayura', 'mayura@gmail.com', NULL, '...', 'answered', '2018-11-02 12:41:17', '2018-11-02 13:20:15', 4),
(4, 'Célia Ahm', 'ahmad.celia@gmail.com', NULL, 'Bonjour...', 'answered', '2018-11-02 13:32:29', '2018-11-02 13:32:53', 4),
(5, 'Célia Ahmad', 'ahmad.celia@gmail.com', NULL, '...', 'answered', '2018-11-02 13:33:16', '2018-11-08 11:57:40', 4),
(6, 'Célia Ahmad', 'ahmad.celia@gmail.com', NULL, 'Bonjour...', 'toAnswer', '2018-11-02 13:33:53', '2018-11-02 13:34:04', 5),
(7, 'Célia Ahmad', 'ahmad.celia@gmail.com', NULL, 'Bonjour, j\'ai une demande concernant', 'toAnswer', '2018-11-07 09:17:35', '2018-11-07 09:17:35', 4);

--
-- Dumping data for table `Uscmembers`
--

INSERT INTO `Uscmembers` (`id`, `password_hash`, `dateEntry`, `createdAt`, `updatedAt`) VALUES
(1, '$2a$04$jgq50olE1RGhdBx1/iG/z.7tkCHtjwm9HNFkWpJ3dTonW.bOgQ/cy', '2017-10-02', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, '$2a$04$jgq50olE1RGhdBx1/iG/z.7tkCHtjwm9HNFkWpJ3dTonW.bOgQ/cy', '2015-10-02', '2018-10-18 00:00:00', '2018-10-24 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
