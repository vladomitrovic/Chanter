INSERT INTO `People` (`id`, `lastname`, `firstname`, `birthdate`, `address1`, `adress2`, `phone`, `phoneprof`, `fax`, `email`,`refPicture`, `mobile`, `username`, `password_hash`, `createdAt`, `updatedAt`, `GenderId`, `LanguageId`, `LocalityId`, `FunctionId`) VALUES
(3, 'Bovier', 'Laurent ', '1991-12-12', 'Rue de la rue 23<br/>1950 Sion', NULL, '0233216546', '1234567890', '1234567890', 'john@doe.com','lbovier.jpg', '1234567890', 'j', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-10-03 00:00:00', '2018-10-03 00:00:00', 1, 1, 1,1),
(5, 'Lovisa', 'Blaise ', '1989-01-01', 'Rte du St-Bernard 14<br/>1937 Orsières', NULL, '', NULL, NULL, 'donotcont@me','article1.jpg', '0777777777', 'usr1', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-10-07 00:00:00', '2018-10-07 00:00:00', 3, 2, 3,1),
(6, 'Meyer', 'Nadine ', '1989-01-01', 'Rue de la dixence 13', NULL, '', NULL, NULL, 'donotcont@me','article1.jpg', '0777777777', 'er1', '$2a$10$PpSWF8s1l/qf1HDrmQsj/.aerK96nCfNO3ynjxX88MIXy1LnZxANq', '2018-10-07 00:00:00', '2018-10-07 00:00:00', 3, 2, 3,1);

INSERT INTO `Articles`(`id`, `titleFR`, `titleDE`, `chapeauFR`, `chapeauDE`, `textFR`, `textDE`, `refPicture`, `createdAt`, `updatedAt`, `PersonId`, `CategoryId`) VALUES
(3, 'Historique AVCC', 'AVCC-Historie', 'chapeau fr', 'chapeau de', '<h3>Objectif</h3>Soucieuse d’offrir aux responsables de la musique chorale l’occasion de parfaire leur formation auprès d’animateurs compétents ou de partager soucis et joies entre collègues, l’AVCC poursuit son activité initiale en proposant ses encouragements et ses services.<h3>Fondation</h3>
A la suite d’un week-end de l’AVDC (Association Vaudoise des Directeurs de Chœurs) à Vérossaz, une dizaine de chefs de chœur valaisans décidèrent de la fondation de l’AVCC, l’Association Valaisanne des Chefs de Chœur. Cette fondation eut lieu le 11 octobre 1969 autour de M. Fernand Dubois, le regretté président de la Fédération Cantonale de Chant. L’assemblée fondatrice eut lieu à Sion le 13 décembre 1969 en présence d’une trentaine de chefs qui répondirent à l’appel.<h3>Présidents</h3>Présidée successivement par MM. Armand Blanc, Jean-Pierre Salamin, Pierre-Louis Nanchen, Pierre-Alain Barras, Samuel Emery et, depuis 2014, Jean-David Waeber, l’AVCC n’a cessé de poursuivre, tout en les adaptant aux goûts et aux besoins du moment, les objectifs que s’étaient fixés les initiateurs et fondateurs.<h3>Foyer</h3>Le Foyer Musical, ouvert par l’AVCC le 28 août 1979 en la Maison Supersaxo à Martigny fut déplacé à Sion en 1981, au Foyer Don Bosco, puis au home de Mazerette jusqu’en 2009. Cette année-là, l’AVCC a légué à la Médiathèque Valais son fonds de partitions afin de lui donner une plus grande visibilité auprès du public. Année après année ce fonds s’est étoffé pour rassembler et proposer aujourd’hui près de 20’000 partitions et de nombreux recueils, collections ou supports audio, le tout répertorié par M. Edouard Delaloye, premier animateur, puis par Mme Anne-Françoise Andenmatten-Sierro, actuelle archiviste de l’association, en activité depuis 1985.',
'<h3>Zielsetzung</h3>Um den Chorleitern die Möglichkeit zu geben, ihre Ausbildung mit kompetenten Dozenten zu perfektionieren oder Anliegen und Freuden mit Kollegen zu teilen, setzt das AVCC seine anfängliche Tätigkeit mit seinen Förderungen und Dienstleistungen fort.<h3>Fundament</h3>Nach einem Wochenende der AVDC (Association Vaudoise des Directeurs de Chœurs) in Vérossaz beschlossen rund zehn walliserische Chordirigenten, die AVCC, die Association Wallisanne des Chefs de Chœur zu gründen. Diese Stiftung fand am 11. Oktober 1969 um Herrn Fernand Dubois, den verstorbenen Präsidenten des Kantonalen Gesangsverbandes, statt. Die Gründungsversammlung fand am 13. Dezember 1969 in Sion statt, in Anwesenheit von etwa dreißig Leitern, die den Aufruf entgegennahmen.<h3>Präsidenten</h3>Unter dem Vorsitz von Armand Blanc, Jean-Pierre Salamin, Pierre-Louis Nanchen, Pierre-Alain Barras, Samuel Emery und seit 2014 Jean-David Waeber hat die AVCC die von den Initiatoren und Gründern festgelegten Ziele ständig verfolgt und an den Geschmack und die Bedürfnisse des Augenblicks angepasst.<h3>Foyer</h3>Das Foyer Musical, das vom AVCC am 28. August 1979 im Maison Supersaxo in Martigny eröffnet wurde, wurde 1981 nach Sion verlegt, in das Foyer Don Bosco, dann bis 2009 in das Foyer de Mazerette. In diesem Jahr vermachte das AVCC seine Partiturensammlung der Médiathèque Wallis, um ihr mehr Sichtbarkeit in der Öffentlichkeit zu verschaffen. Diese Sammlung umfasst seit Jahren fast 20.000 Partituren und zahlreiche Sammlungen, Sammlungen und Tonträger, die alle von Edouard Delaloye, dem ersten Animateur, und dann von Anne-Françoise Andenmatten-Sierro, der derzeitigen Archivarin des Vereins, die seit 1985 tätig ist, aufgeführt werden.',
'article1.jpg', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),

(4, 'Présentation AVCC', 'AVCC-Presentation', 'chapeau fr', 'chapeau de', '<p>L&rsquo;Association Valaisanne des Chefs de Choeurs (AVCC) est une association qui, depuis plus de 40 ans, veut promouvoir la formation continue des chefs de chœur grâce à des cours donnés par des intervenants réputés et de qualité. Elle tient à défendre les intérêts des chefs de chœurs, à promouvoir une formation continue de qualité, à favoriser les contacts entre ses sociétaires et les organes officiels, à offrir à ses membres une documentation spécialisée dans le domaine du chant choral.</p>
<p>Elle organise chaque année, seule ou en collaboration avec la Fédération des Sociétés de Chant du Valais, des séminaires avec des chefs renommés :</p>
<ul>
<li>des journées de formation</li>
<li>des soirées à thème</li>
<li>des journées spéciales pour chefs de chœurs de jeunes ou d’enfants</li>
<li>des activités autour du fonds choral déposé auprès de la Médiathèque Valais</li>
</ul>
<p>Elle favorise également la rencontre et les échanges entre chefs et propose un vaste choix de plus de 20’000 partitions.</p>
<p>Merci de nous aider à faire connaître l’AVCC ! N’hésitez pas à nous communiquer vos souhaits, vos soucis, vos coups de cœur ou vos questions. Nous essayons de tout mettre en œuvre pour répondre à vos besoins.</p>
<p>N&rsquo;hésitez pas à découvrir :</p>
<ul>
<li><a title="notre historique AVCC" href="http://www.chanter.ch/wp/avcc/historique/">l&rsquo;historique AVCC</a></li>
<li><a title="Comité AVCC" href="http://www.chanter.ch/wp/avcc/comite-avcc/">notre comité</a></li>
<li><a title="Formation AVCC" href="http://www.chanter.ch/wp/avcc/formation-avcc/">notre offre de formation</a></li>
<li><a title="Fonds choral et Foyer AVCC" href="http://www.chanter.ch/wp/avcc/fonds-choral-avcc/">notre fonds de partitions</a></li>
<li><a title="Photos AVCC" href="http://www.chanter.ch/wp/avcc/photos-avcc-3/">les photos de nos activités passées</a></li>
</ul>



',
'Die Vereinigung Wallis des Chefs de Chœur (AVCC) ist eine Vereinigung, die seit mehr als 40 Jahren die Weiterbildung von Chordirigenten durch Kurse von renommierten und qualifizierten Lehrern fördern will. Sie setzt sich für die Interessen der Chorleiter ein, fördert eine qualitativ hochwertige Weiterbildung, pflegt die Kontakte zwischen ihren Mitgliedern und den offiziellen Stellen und bietet ihren Mitgliedern eine spezielle Dokumentation im Bereich des Chorgesangs.

Jedes Jahr organisiert sie allein oder in Zusammenarbeit mit der Fédération des Sociétés de Chant du Valais Seminare mit renommierten Köchen:

<ul>
<li>Schulungstage</li>
<li>Themenabende</li>
<li>spezielle Tage für Jugend- oder KinderchorleiterInnen</li>
<li>Aktivitäten rund um den bei der Médiathèque Wallis hinterlegten Chorfonds</li>
<li>Es fördert auch die Begegnung und den Austausch zwischen Dirigenten und bietet eine große Auswahl von mehr als 20.000 Partituren.</li>

Vielen Dank, dass Sie uns helfen, die AVCC bekannt zu machen! Zögern Sie nicht, uns Ihre Wünsche, Anliegen, Favoriten oder Fragen mitzuteilen. Wir versuchen, unser Bestes zu geben, um Ihren Bedürfnissen gerecht zu werden.

',
'article1.jpg', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),



(5, 'Fonds choral et Foyer AVCC', 'Fonds choral et Foyer AVCC', 'chapeau fr', 'chapeau de',

'Le Foyer AVCC est un lieu de rencontre convivial où venir seul, avec sa commission de musique ou avec son comité pour consulter des partitions et des documents avant de bâtir un programme. Tous les documents sont à consulter sur place. Ils sont visibles dans le catalogue RERO, avec une multitude de renseignements utiles aux chefs de chœurs. Dès le début 2018, une partie de cette musique a été placée au libre accès de la Médiathèque-Valais pour être consultée librement. Cependant, il sera encore possible de prendre rendez-vous avec l’archiviste pour une recherche spécifique ou des conseils.

La Médiathèque Valais à Sion se trouve à la Rue de Lausanne 45.


Pour la recherche et la consultation des partitions, prendre préalablement contact avec :
Anne-Françoise Andenmatten Sierro
Tél. privé : 027 323 19 28 ou 079 232 54 02
E-mail : annef-vociamici@bluewin.ch
<br/>
Près de 20’000 partitions

<ul>
<li>Profanes</li>
<li>Religieuses</li>
<li>De toutes époques et de tous genres</li>
<li>De différentes maisons d’édition</li>
<li>Pour tous types de choeurs: mixtes, dames, hommes, jeunes, enfants</li>
</ul>
Des livres et des documentaires</li>

<ul>
<li>Théorie musicale</li>
<li>Musique chorale et compositeurs</li>
<li>Direction chorale</li>
<li>Pose de voix</li>
<li>Enregistrements</li>
<li>Revues liturgiques (Choristes, Voix Nouvelles, Signes Musiques, Chantons en Eglise, etc.)</li>
<li>Documents sur la liturgie, ses acteurs, ses rites, etc.</li>
</ul>',
'Das AVCC Foyer ist ein freundlicher Treffpunkt, an dem Sie allein, mit Ihrem Musikkomitee oder mit Ihrem Komitee kommen können, um Partituren und Dokumente einzusehen, bevor Sie ein Programm erstellen. Alle Dokumente sind vor Ort einzusehen. Sie sind im RERO-Katalog zu finden, mit einer Fülle von Informationen, die für Chorleiter nützlich sind. Ab Anfang 2018 wurde ein Teil dieser Musik in den freien Zugang des Médiathèque-Valais gestellt und kostenlos konsultiert. Es ist jedoch weiterhin möglich, einen Termin mit dem Archivar für eine gezielte Recherche oder Beratung zu vereinbaren.

Die Médiathèque Wallis in Sion befindet sich an der Rue de Lausanne 45.


Für die Recherche und Beratung von Partituren wenden Sie sich bitte vorab an uns:
Anne-Françoise Andenmatten Sierro
Privattelefon: 027 323 19 28 oder 079 232 54 54 54 02 02
E-Mail: annef-vociamici@bluewin.ch
<br/>
Fast 20000 Partituren
<ul>
<li>Säkulare</li>
<li>Religiöse Frauen</li>
<li>Von allen Zeiten und allen möglichen Arten.</li>
<li>Aus verschiedenen Verlagen</li>
<li>Für alle Arten von Chören: gemischt, Damen, Herren, Jugendliche, Kinder, etc.</li>
</ul>
Bücher und Dokumentationen
<ul>
<li>Musikalische Theorie</li>
<li>Chormusik und Komponisten</li>
<li>Chorleitung</li>
<li>Pose der Stimme</li>
<li>Aufzeichnungen</li>
<li>Liturgische Rezensionen (Choristen, Neue Stimmen, Musikzeichen, Kirchenlieder, etc.)</li>
<li>Dokumente über die Liturgie, ihre Akteure, ihre Riten usw.</li></ul>',
'article1.jpg', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),



(6, 'Prochaine formation AVCC', 'Prochainbildung AVCC', 'chapeau fr', 'chapeau de',
'Cette journée animée par Charles Barbier se veut interactive et propose de réfléchir aux aspects cachés de notre pratique de chefs de chœur, notamment la communication non verbale et les choix que nous faisons avant même d’être face au chœur. En choisissant comme fil rouge la prise de risque, nous aurons l’occasion de partager des regards neufs sur nos pratiques. Quels risques prend-on en élaborant un programme de concert ? Sans faire de mise en voix fait-on courir un risque aux chanteurs ? Y a-t-il un risque à ne pas prêter attention au choix de ses mots, en répétition ?

Cours gratuit pour les membres cotisants AVCC, 40.- CHF pour les non cotisants à l’AVCC / Repas : 25.- CHF / Encaissement sur place.

Inscriptions jusqu’au 10 novembre 2018 à associationavcc@gmail.com ou au 079 930 25 43. Merci d’indiquer si vous souhaitez partager le repas avec les autres participants.',
'Dieser Tag unter der Leitung von Charles Barbier soll interaktiv sein und schlägt vor, über die verborgenen Aspekte unserer Praxis als Chorleiter nachzudenken, insbesondere die nonverbale Kommunikation und die Entscheidungen, die wir treffen, bevor wir überhaupt dem Chor gegenüber stehen. Wenn wir uns für die Risikobereitschaft als gemeinsamen Nenner entscheiden, haben wir die Möglichkeit, neue Perspektiven auf unsere Praktiken auszutauschen. Welche Risiken werden bei der Entwicklung eines Konzertprogramms eingegangen? Ohne Stimme, setzen wir die Sänger in Gefahr? Besteht das Risiko, dass man bei der Probe nicht auf die Wortwahl achtet?

Kostenloser Kurs für AVCC-Mitglieder, CHF 40 für nicht AVCC-Mitglieder / Mahlzeiten: CHF 25 / Abholung vor Ort.

Anmeldungen bis zum 10. November 2018 unter associationavcc@gmail.com oder 079 930 25 43. Bitte geben Sie an, ob Sie das Essen mit den anderen Teilnehmern teilen möchten.',
'article1.jpg', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),


(7, 'Présentation', 'Presentation', 'chapeau fr', 'chapeau de',
'La Fédération des Sociétés de Chant du Valais (FSCV) est une association membre de l’Union Suisse des Chorales (USC) regroupant des chœurs d’adultes, de jeunes et d’enfants du Valais Romand et du Haut-Valais.

Fondée en 1906, elle chapeaute l’Association Valaisanne des Chefs de Chœurs (AVCC) et 4 groupements régionaux : le Groupement des Sociétés de Chant du Bas-Valais (GSCBV), l’Union Chorale du Centre (UCC), le Groupement des Chanteurs du Valais Central (GCVC) et le Oberwalliser Chor- und Cäcilien Verband (OCV).

A ce jour, plus de 160 chorales d’adultes avec plus de 5000 chanteurs sont réunis au sein de la Fédération. Les chœurs de jeunes et d’enfants sont également membres de la Fédération, ce qui leur permet d’accéder aux offres de formation et au soutien des chorales d’adultes.


<h3>Organisation</h3>
La FSCV est présidée avec compétence et enthousiasme par Laurent Bovier. Elle est composée d’un comité directeur, d’un comité cantonal et de la commission de musique. Les présidents des groupements régionaux et de l’AVCC sont également membres d’office du comité directeur.',
'Die Fédération des Sociétés de Chant du Valais (FSCV) ist Mitglied im Schweizerischen Chorverband (USC), der Chöre von Erwachsenen, Jugendlichen und Kindern aus dem Wallis Romand und Haut-Valais vereint.

Sie wurde 1906 gegründet und betreut den Verband der Walliser Köche (AVCC) und 4 regionale Gruppen: die Groupement des Sociétés de Chant du Bas-Valais (GSCBV), die Union Chorale du Centre (UCC), die Groupement des Chanteurs du Valais Central (GCVC) und den Oberwalliser Chor- und Cäcilien Verband (OCV).

Bis heute haben sich mehr als 160 Erwachsenenchöre mit mehr als 5000 Sängern dem Verband angeschlossen. Jugend- und Kinderchöre sind ebenfalls Mitglieder des Verbandes, was ihnen den Zugang zu Ausbildungsmöglichkeiten und Unterstützung durch Erwachsenenchöre ermöglicht.

<h3>Unternehmen</h3>
Der FSCV wird von Laurent Bovier mit Kompetenz und Begeisterung geleitet. Er besteht aus einem Lenkungsausschuss, einem kantonalen Ausschuss und der Musikkommission. Die Präsidenten der Regionalzusammenschlüsse und des AVCC sind ebenfalls von Amts wegen Mitglieder des Lenkungsausschusses.',
'organigrammeFSCV.png', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),


(8, 'Présentation', 'Presentation', 'chapeau fr', 'chapeau de',
'Cette journée animée par Charles Barbier se veut interactive et propose de réfléchir aux aspects cachés de notre pratique de chefs de chœur, notamment la communication non verbale et les choix que nous faisons avant même d’être face au chœur. En choisissant comme fil rouge la prise de risque, nous aurons l’occasion de partager des regards neufs sur nos pratiques. Quels risques prend-on en élaborant un programme de concert ? Sans faire de mise en voix fait-on courir un risque aux chanteurs ? Y a-t-il un risque à ne pas prêter attention au choix de ses mots, en répétition ?

Cours gratuit pour les membres cotisants AVCC, 40.- CHF pour les non cotisants à l’AVCC / Repas : 25.- CHF / Encaissement sur place.

Inscriptions jusqu’au 10 novembre 2018 à associationavcc@gmail.com ou au 079 930 25 43. Merci d’indiquer si vous souhaitez partager le repas avec les autres participants.',
'Dieser Tag unter der Leitung von Charles Barbier soll interaktiv sein und schlägt vor, über die verborgenen Aspekte unserer Praxis als Chorleiter nachzudenken, insbesondere die nonverbale Kommunikation und die Entscheidungen, die wir treffen, bevor wir überhaupt dem Chor gegenüber stehen. Wenn wir uns für die Risikobereitschaft als gemeinsamen Nenner entscheiden, haben wir die Möglichkeit, neue Perspektiven auf unsere Praktiken auszutauschen. Welche Risiken werden bei der Entwicklung eines Konzertprogramms eingegangen? Ohne Stimme, setzen wir die Sänger in Gefahr? Besteht das Risiko, dass man bei der Probe nicht auf die Wortwahl achtet?

Kostenloser Kurs für AVCC-Mitglieder, CHF 40 für nicht AVCC-Mitglieder / Mahlzeiten: CHF 25 / Abholung vor Ort.

Anmeldungen bis zum 10. November 2018 unter associationavcc@gmail.com oder 079 930 25 43. Bitte geben Sie an, ob Sie das Essen mit den anderen Teilnehmern teilen möchten.
r',
'article1.jpg', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 2);







INSERT INTO `Comity_Person` (`createdAt`, `updatedAt`, `ComityId`, `PersonId`) VALUES
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 3),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 4),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 5),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 6);

-- --------------------------------------------------------
