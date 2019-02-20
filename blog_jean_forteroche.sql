-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 02 nov. 2018 à 12:40
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog_jean_forteroche`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `author` varchar(155) NOT NULL,
  `comment` text NOT NULL,
  `comment_date` datetime NOT NULL,
  `reporting` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(155) NOT NULL,
  `author` varchar(155) NOT NULL,
  `content` text NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `author`, `content`, `date_creation`) VALUES
(1, 'Chapitre-1 Au coeur de l’Alaska', 'Jean Forteroche', '27 avril 1992Je t’écris de Fairbanks ! Ce sont les dernières nouvelles que tu recevras de moi, Wayne. Je suis arrivé il y a deux jours. Ça n’a pas été facile de faire du stop dans le Yukon. Mais finalement, je suis parvenu jusqu’ici.S’il te plaît, retourne tout mon courrier à l’expéditeur. Il peut s’écouler beaucoup de temps avant que je redescende dans le Sud. Si cette aventure tourne mal et que tu n’entendes plus parler de moi, je veux que tu saches que je te considère comme quelqu’un de formidable.Maintenant, je m’enfonce dans la forêt. Alex.Carte postale reçue par Wayne Westerberg à Carthage, Dakota du Sud.À 6,5 kilomètres après Fairbanks, Jim Gallien aperçut un autostoppeur qui se tenait dans la neige au bord de la route, le pouce levé très haut et grelottant dans l’aube grise de l’Alaska. Il n’avait pas l’air bien vieux ; dix-huit ans, dix-neuf peut-être, pas plus. Une carabine dépassait de son sac à dos, mais il avait l’air d’un bon garçon. Dans le 49e État, une carabine Remington semi-automatique n’étonne personne. Gallien gara sa camionnette Ford sur le bas-côté et dit au jeune homme de monter.L’auto-stoppeur balança son sac sur la banquette et se présenta :— Alex.— Alex ? interrogea Gallien qui attendait un nom de famille.— Simplement Alex, répondit l’auto-stoppeur.C’était un garçon d’environ un mètre soixante-dix, élancé et robuste.Il disait qu’il avait vingt-quatre ans et qu’il venait du Dakota du Sud. Il voulait se faire conduire jusqu’aux confins du parc national du Denali. Delà, il avait l’intention de s’enfoncer dans le sous-bois et de « vivre à l’écartpendant quelques mois ».Gallien, électricien de son état, se rendait à Anchorage, c’est-à-dire àplus de 350 kilomètres au-delà du Denali par l’autoroute George Parks. Il répondit à Alex qu’il le déposerait là où celui-ci le voudrait.', '2018-08-26 17:02:27'),
(2, 'Chapitre-2 La piste Stampede', 'Jean Forteroche', 'Jack London est roi Alexandre Supertramp Mai 1992 Inscription gravée sur une pièce de bois trouvée à l’endroit où mourut Chris McCandless.Une sombre forêt d’épicéas obscurcissait les deux rives du cours d’eau pris par les glaces. Un coup de vent récent avait dépouillé les arbres de leur blanche couverture de givre et, dans la lumière déclinante, ils semblaient se courber les uns vers les autres, noirs et menaçants. Un grand silence régnait sur la terre et cette terre était désolée, sans vie, sans mouvement, si vide et si froide qu’elle n’exprimait même pas la tristesse. Quelque chose en elle suggérait le rire, mais un rire plus terrible que toute tristesse – un rire morne comme le sourire d’un sphinx, un rire froid comme le gel et d’une infaillibilité sinistre.C’était la sagesse puissante et incommunicable de l’éternité qui riait dela futilité de la vie et de l’effort de vivre. C’était la forêt sauvage, la forêt gelée du grand Nord.Jack London, Croc-blancSur la frange nord de la chaîne de l’Alaska, juste avant que le rempart imposant du mont McKinley et de ses satellites ne laisse place à la plainede la Kantishna, une série de sommets de moindre importance – connue sous le nom de Chaîne Extérieure – descend vers les étendues planes comme une couverture plissée sur un lit défait. Entre les arêtes siliceuses des deux derniers escarpements de cette Chaîne Extérieure il y a une combe d’environ huit kilomètres que recouvre un amalgame bourbeux de marécages, de groupes d’aulnes et d’alignements d’épicéas chétifs. Lapiste Stampede y serpente sur un terrain ondulant et touffu : c’est lechemin que suivit Chris McCandless pour s’enfoncer dans cette terreinhabitée.Cette piste a été tracée dans les années 1930 par un célèbre mineurnommé Earl Pilgrim. Elle conduit à des concessions d’antimoine qu’il possédait à la cluse de Stampede, en amont de la fourche de Clear water sur la rivière Toklat. En 1961, une société de Fairbanks, la Yutan Construction, fut choisie par le nouvel État d’Alaska (l’accession au statutd’État datait d’à peine deux ans) pour transformer la piste en une routeque les camions pourraient emprunter tout au long de l’année pour transporter le minerai. Afin de loger les ouvriers pendant les travaux, la Yutan acheta trois autobus hors d’usage, les équipa de couchettes et d’un simple poêle et les fit remorquer par un tracteur dans cette contrée déserte et sauvage.En 1963, le projet fut abandonné. Quelque 80 kilomètres de cette route avaient été construits, mais sans aucun pont pour traverser les nombreux cours d’eau qu’elle croise. Aussi fut-elle rapidement rendue impraticable par la fonte de la couche supérieure du permafrost et par lesinondations saisonnières. La Yutan ramena deux des autobus parl’autoroute. Le troisième fut abandonné à mi-chemin sur le bord de la piste pour servir d’abri aux chasseurs et aux trappeurs. Au cours des trente ans qui ont suivi l’abandon du chantier, la plus grande partie de laroute a été détruite par l’eau, l’érosion et les nids de castors, mais l’autobus est toujours là.Ce véhicule en ruine – un vieil International Harvester des années 40– se trouve à 40 kilomètres à l’ouest de Healy à vol d’oiseau. Sa masse incongrue rouille parmi les mauvaises herbes, juste après la limite duparc national du Denali. Il a perdu son moteur, plusieurs vitres manquent ou sont cassées et des débris de bouteilles de whisky jonchent le plancher.Sur sa carrosserie vert et blanc largement oxydée, on peut lire en lettres à la couleur passée qu’il a appartenu autrefois au Fairbanks City TransitSystem. C’était l’autobus 142. De nos jours, il est fréquent que six ou septmois s’écoulent sans qu’il voie un être humain. Mais, au début deseptembre 1992, six personnes, en trois groupes distincts, s’approchèrent le même après-midi de ce véhicule abandonné.', '2018-08-26 17:02:34'),
(3, 'Chapitre-3 Carthage', 'Jean Forteroche', 'Je désirais le mouvement et non une existence au cours paisible. Je voulais l’excitation et le danger, et le risque de me sacrifier pour mon amour. Je sentais en moi une énergie surabondante qui ne trouvait aucun exutoire dans notre vie tranquille.Léon Tolstoï, Le Bonheur conjugal.Passage souligné dans l’un des livres trouvés parmi les affaires deChris McCandless.On ne devrait pas nier que la liberté de mouvement nous a toujoursexaltés. Dans notre esprit, nous l’associons à la fuite devant l’histoire,l’oppression, la loi et les obligations irritantes, nous l’associons à laliberté absolue, et pour trouver celle-ci nous avons toujours pris le chemin de l’Ouest.Wallace Stenger,L’Ouest américain comme espace vital.Carthage, dans le Dakota du Sud, a 274 habitants. C’est un petit agglomérat assoupi de maisons en bardeaux – avec des cours proprettes et des façades en briques usées par les intempéries – qui s’élèvent humblement dans l’immensité des plaines du Nord, à l’écart du temps.Des rangées de peupliers majestueux ombragent un quadrilatère de rues rarement troublées par la circulation. Il y a une épicerie, une banque, une seule station-service, un bar solitaire – le Cabaret – dans lequel Westerberg sirote un cocktail et mâchonne un petit cigare tout en se remémorant l’étrange jeune homme qu’il connaissait sous le nom d’Alex.Les murs recouverts de contreplaqué du Cabaret portent des bois decerf, des publicités pour la bière Old Milwaukee et des peintures naïves représentant l’envol de gibier à plumes.Des cercles de fumée de cigarette s’élèvent au-dessus de groupes de fermiers vêtus de salopettes et coiffés de casquettes fourrées pleines depoussière. Les visages fatigués de ces hommes sont aussi crasseux queceux des mineurs. En phrases courtes, terre à terre, ils se plaignent bruyamment du temps incertain, des champs de tournesols encore trop humides pour être moissonnés, tandis qu’au-dessus de leurs têtes lafigure grimaçante de Ross Perrot clignote sur l’écran muet d’un téléviseur. Dans huit jours, la nation élira Clinton à la présidence. Cela fait maintenant presque deux mois que le corps de Chris McCandless a été retrouvé en Alaska.', '2018-08-26 17:02:41'),
(4, 'Chapitre-4 Detrital Wash', 'Jean Forteroche', 'Le désert est le milieu de la révélation, il est génétiquement et physiologiquement autre, sensoriellement austère, esthétiquement abstrait, historiquement hostile… Ses formes sont puissantes et suggestives. L’esprit est cerné par la lumière et l’espace, par lanouveauté cénesthésique de la sécheresse, par la température et par levent. Le ciel du désert nous entoure de toute part, majestueux, terrible.Dans d’autres lieux, la ligne d’horizon est brisée ou cachée ; ici, unie à cequi se trouve au-dessus de notre tête, elle est infiniment plus vaste quedans les paysages ondoyants et les régions de forêts. Quand le ciel est dégagé, les nuages paraissent plus massifs et parfois ils donnent surleur surface inférieure concave un reflet grandiose de la courbure de laterre…Les prophètes et les ermites vont dans le désert. Les exilés et lespèlerins le traversent. C’est ici que les fondateurs des grandes religionsont cherché les vertus spirituelles et thérapeutiques de la retraite, nonpour fuir mais pour trouver le réel.Paul Shepard, L’Homme dans le paysage, un aperçu historique del’esthétique de la nature.', '2018-08-26 17:02:48'),
(5, 'Chapitre-5 Bullhead City', 'Jean Forteroche', 'En Buck, la bête primaire et dominatrice était puissante, et dans les dures conditions de sa vie errante, elle ne fit que grandir encore. Mais c’était une croissance cachée. Sa toute nouvelle aptitude à la ruse lui donnait aisance et maîtrise de soi.Jack London, L’Appel de la forêt.Tous acclament la bête primaire et dominatrice ! Et aussi le capitaine Achab !Alexandre Supertramp. Mai 1992.Inscription trouvée dans l’autobus abandonné sur la piste Stampede.Quand son appareil photo fut devenu inutilisable, et qu’il cessa deprendre des photos, McCandless cessa également de tenir son journal. Il ne le reprit que l’année suivante lorsqu’il alla en Alaska. Par conséquent,on sait peu de chose sur ses voyages après son départ de Las Vegas en mai 1991.Nous apprenons cependant par une lettre qu’il écrivit à Jan Burres qu’il passa les mois de juillet et août sur la côte de l’Oregon,probablement aux environs d’Astoria. Il se plaignait que « le brouillard etla pluie soient souvent insupportables ». En septembre, il descendit en Californie en faisant du stop sur l’autoroute 101 puis, bifurquant vers l’est, il entra à nouveau dans le désert. Et, au début d’octobre, il s’était établi à Bullhead City en Arizona.L’idiome trompeur de la fin du XXe siècle désigne Bullhead Citycomme une « commune ». En réalité, la ville – dépourvue de centre – est un conglomérat désordonné de quartiers et d’avenues qui s’étendent sur treize ou quatorze kilomètres le long de la rive du Colorado, juste en face des grands buildings où sont installés les hôtels et les casinos deLaughlin, dans le Nevada. Le trait distinctif de Bullhead, c’est son autoroute de Mohave Valley : quatre voies d’asphalte avec des stations service et des fast-foods franchisés, des chiropracteurs et des boutiques de vidéo, des magasins de pièces détachées pour automobiles et despièges à touristes.', '2018-08-26 17:02:53'),
(6, 'Chapitre-6 Anza-Borrego', 'Jean Forteroche', 'Aucun homme n’a jamais suivi son propre génie jusqu’au point où il l’égare. Bien qu’il en résultât une faiblesse physique, personne sans doute ne peut dire qu’il fallait en déplorer les conséquences, car celles-ci correspondaient à une vie en conformité avec des principes plus élevés.Si le jour et la nuit deviennent tels que vous les saluez joyeusement, et sila vie produit une senteur pareille à celle des fleurs et des plantes aromatiques, si elle est plus souple, plus étincelante, plus immortelle, encela réside votre réussite. La nature tout entière vous acclame et vous devez momentanément vous accorder à vous-même votre bénédiction.Les plus grands biens et les plus grandes valeurs sont loin d’avoir été reconnus. Nous en venons facilement à en douter. Bientôt, nous les oublions. Ils sont pourtant la plus haute réalité… La vraie moisson de ma vie quotidienne est quelque chose d’aussi intangible et d’aussi indescriptible que les teintes du matin et du soir. C’est un peu depoussière d’étoile, c’est un morceau d’arc-en-ciel que j’ai attrapé.Henry David Thoreau, Walden ou la vie dans les bois.Passage souligné dans l’un des livres trouvés parmi les affaires de Chris McCandless.Le 4 janvier 1993, l’auteur de ce livre reçut une lettre inhabituelle,d’une écriture tremblée, vieillotte, qui faisait penser à celle d’un hommeâgé. Cette lettre commençait par : « À celui que ça intéresse. »Je souhaiterais recevoir un exemplaire du magazine qui a raconté l’histoire de la mort du jeune homme (Alex McCandless) en Alaska.J’aimerais écrire à celui qui a enquêté sur ce fait divers. Je l’ai conduitde Salton City Calif… en mars 1992… jusqu’à Grand Junction Co… C’est là que j’ai laissé Alex pour qu’il fasse du stop jusqu’au S. D. [Dakota duSud]. Il disait qu’il donnerait de ses nouvelles. La dernière fois que j’en ai eu, c’était une lettre, la première semaine d’avril 1992. Pendant notre trajet, Alex m’a pris en photo sur son appareil et moi je l’ai filmé avec mon Caméscope.Si vous avez un exemplaire de ce magazine, dites-moi combien il coûte. D’après ce que j’ai compris, il était malade. Si c’est bien le cas, je voudrais savoir comment ça s’est produit, parce qu’il avait toujours une bonne quantité de riz dans son sac à dos + des vêtements + plein d’argent.Sincèrement Ronald A. Franz.', '2018-08-26 17:02:58'),
(7, 'Chapitre-7 Carthage', 'Jean Forteroche', 'Il y avait quelques livres… L’un d’eux, La Progression du pèlerin,parlait d’un homme qui quitte sa famille, on ne sait pas pourquoi. Je l’ai beaucoup lu, ici et là. C’était intéressant, mais difficile.Mark Twain,Les Aventures de Huckleberry Finn.Il est exact que beaucoup de créateurs ne parviennent pas à établiravec les autres des relations personnelles adultes, et certains d’entre euxsont extrêmement isolés. Il est également vrai que, dans certains cas, un traumatisme, qui a pu prendre la forme d’une séparation ou d’une perte,a orienté la personne potentiellement créatrice dans le sens du développement des aspects de sa personnalité qui peuvent trouver leur accomplissement dans un isolement relatif. Mais cela ne veut pas direque la création solitaire est elle-même pathologique.Anthony Storr,La Solitude : un retour vers le soi.La grosse John Deere 8020 est immobile, silencieuse, dans la lumière déclinante du soir, loin de tout, au milieu d’un champ à demi moissonnédu Dakota du Sud. Les tennis boueuses de Wayne Westerberg sortent del’avant de la moissonneuse, comme si la machine était en train de l’avaler complètement à la façon d’un énorme reptile métallique digérant saproie. « Passez-moi cette putain de clef à molette ! demande une voix irritée qui sort assourdie des profondeurs de l’engin. Ou bien êtes-vous trop occupés à vous tenir tout autour les mains dans les poches ? » La moissonneuse-batteuse est tombée en panne pour la troisième fois en trois jours et Westerberg essaie désespérément de remplacer une bague difficile à atteindre avant la tombée de la nuit.Une heure plus tard il émerge, maculé de graisse et couvert de paille,mais il a réussi. « Désolé d’avoir crié comme ça, s’excuse-t-il. Il y a eutrop de journées où nous avons travaillé dix-huit heures. Je deviens un peu hargneux, je suppose. La saison est tellement avancée, et tout. Et enoutre, nous ne sommes pas assez nombreux. On comptait sur Alex pour nous aider. » Cinquante jours se sont écoulés depuis qu’on a trouvé le corps d’Alex sur la piste Stampede.', '2018-08-26 17:03:05'),
(8, 'Chapitre-8 Alaska', 'Jean Forteroche', 'Après tout, c’est peut-être une mauvaise habitude des gens talentueux et créateurs de s’investir dans des activités pathologiquement démesurées qui fournissent des perspectives remarquables mais neconstituent pas un mode de vie durable pour ceux qui sont incapables detraduire leurs blessures psychiques en un art ou une pensée significatifs.Théodore Roszak,À la recherche du miraculeux.En Amérique, nous avons la tradition de la « Grande Rivière à deuxCoeurs » : elle consiste à transporter ses blessures dans la nature pour ytrouver une guérison, une conversion, un repos ou tout ce que l’on voudra. Et, comme dans la nouvelle d’Hemingway, si vos blessures ne sont pas trop graves, cela marche. Mais ici, nous ne sommes pas dans le Michigan, ni en l’occurrence au Big Woods de Faulkner, dans le Mississippi. Ici, nous sommes en Alaska.Edward Hoagland,Voyage à Chalkyitsik.Quand on découvrit le corps de McCandless en Alaska et que les circonstances de sa disparition eurent été rapportées par les médias, de nombreuses personnes en conclurent que ce garçon devait avoir l’esprit un peu dérangé. L’article d’Outside provoqua une grande quantité decourrier et un nombre non négligeable de ces lettres jetait l’opprobre sur McCandless – et sur moi également, l’auteur de l’article, pour avoir glorifié ce que certains considéraient comme une mort imbécile.Beaucoup de ces lettres venaient de l’Alaska. Un habitant de Healy, levillage proche du début de la piste Stampede, écrivait : « Selon moi, Alexest un idiot. L’auteur décrit un homme qui a donné une petite fortune,quitté une famille aimante, abandonné voiture, montre et carte, et brûlé l’argent qui lui restait, avant de venir vadrouiller dans la nature à l’ouest de Healy. »Un autre correspondant exprimait sa réprobation :« Personnellement, je ne vois rien de positif dans le mode de vie de McCandless ou dans sa doctrine de la vie sauvage. Aller s’installer dans lanature en se sachant mal préparé et survivre après avoir frôlé la mort nevous rend pas meilleur ; c’est seulement que vous avez sacrément de la chance. »', '2018-08-26 17:03:11'),
(9, 'Chapitre-9 Le ravin Davis', 'Jean Forteroche', 'Quant à savoir à quel moment je rendrai visite à la civilisation, je peux dire que ce ne sera pas de sitôt, je pense. Je ne suis pas las de la nature ; au contraire, je jouis toujours plus intensément de sa beauté etde la vie errante que je mène. Je préfère la selle de mon cheval aux voitures des villes, le ciel étoilé à un toit, la piste incertaine et difficile qui conduit vers l’inconnu à n’importe quelle chaussée pavée et la paix profonde de la vie libre au mécontentement qu’engendrent les villes.Dans ces conditions, me blâmes-tu de rester dans cet endroit auquel jesens que j’appartiens, où je suis seul avec l’univers autour de moi ? Il est vrai que la compagnie de gens intelligents me manque, mais ceux avec lesquels je peux partager ce qui a tant d’importance pour moi sont si peu nombreux que j’ai appris à m’en passer. Il me suffit d’être environné parla beauté…Par ta seule description sommaire, je sais que je ne pourrais pas supporter la routine, le train train de la vie que tu es forcé de mener. Je ne crois pas que je pourrai jamais m’établir quelque part. J’ai trop connu ce que la vie a de profond et je préférerais n’importe quoi à un retour au trivial.Extrait de la dernière lettre d’Everett Ruess à son frère Waldo, datée du 11 novembre 1934.Ce qu’Everett Ruess recherchait, c’était la beauté, et il la concevaitd’une façon plutôt romantique. Nous pourrions être tentés de nousmoquer de l’extravagance de sa valeur-beauté s’il n’y avait quelque chose de presque magnifique dans son acharnement à s’y consacrer.L’esthétique est ridicule dans la conversation affectée d’un salon, et même un peu obscène parfois ; en tant que mode de vie, il arrive qu’elle atteigne à la dignité. Si nous nous moquons d’Everett Ruess, il faudra aussi nous moquer de John Muir, parce qu’il y a peu de différence entre eux, l’âge excepté.Wallace Stegner, Pays mormon.', '2018-08-26 17:05:39'),
(10, 'Chapitre-10 Fairbanks', 'Jean Forteroche', 'AGONISANT DANS LA FORÊT, UN RANDONNEUR NOTE SES DERNIERS INSTANTS.Anchorage, 12 septembre (AP) – Dimanche dernier, un jeune randonneur, immobilisé par une blessure, a été trouvé mort dans un campement isolé de l’intérieur de l’Alaska. Personne ne sait encore aveccertitude qui il était. Mais son journal intime et deux notes trouvés surplace racontent l’histoire poignante de ses efforts désespérés et bientôtfutiles pour essayer de survivre. Le journal indique que cet homme , que l’on croit être un Américaind’environ trente ans, pourrait bien s’être blessé dans une chute à la suitede laquelle il a dû rester à son camp pendant plus de trois mois. Il raconte comment il a tenté de se maintenir en vie en chassant et enconsommant des plantes sauvages, sans autre résultat qu’un constantaffaiblissement.L’une de ses deux notes est un appel au secours adressé à toutepersonne qui viendrait à son camp pendant que lui-même chercherait dela nourriture dans les environs. La seconde note est un adieu aumonde…Une autopsie effectuée cette semaine dans les services du coroner àFairbanks établit que l’homme est mort de dénutrition, probablement fin juillet. Les autorités ont trouvé dans ses affaires un nom qu’elles pensent être le sien. Mais jusqu’à présent elles n’ont pu confirmer son identité et,en attendant, se sont refusées à la divulguer.The New York Times.13 septembre 1992.Au moment où le New York Times rapportait l’histoire du randonneur, cela faisait une semaine que la police montée d’Alaska essayait de découvrir son identité. Lorsqu’il mourut, McCandless portait un sweat-shirt bleu sur lequel était imprimé le logo d’une entreprise dedépannage de Santa Barbara. Quand on s’adressa à lui, le remorqueur d’épaves assura ne rien savoir de l’homme ni de la façon dont il avait acquis le vêtement. Comme le journal bref et sibyllin que l’on avait trouvé près du corps comportait en maints endroits des observations succinctes sur la flore et la faune, on se demanda si McCandless n’était pas un biologiste de terrain. Mais cela non plus ne conduisit nulle part.', '2018-08-26 17:07:19'),
(11, 'Chapitre-11 Chesapeake', 'Jean Forteroche', 'Tout avait changé soudainement. Le ton, le climat moral ; on ne savait que penser, ni qui croire. C’était comme si on nous avait conduits par la main – tels de petits enfants – toute notre vie et que soudain nous nous retrouvions seuls ; il fallait apprendre à marcher par soi-même. Il n’y avait personne auprès de nous, ni parents ni quiconque dont nous respections le jugement. Dans une telle époque, on ressentait le besoin de se consacrer à un idéal – la vie, la vérité ou la beauté –, de lui obéir, au lieu de suivre les règles humaines qui avaient été mises au rebut. Nousdevions nous soumettre à un but ultime plus pleinement, avec moins de réserve que nous ne l’avions fait dans les jours paisibles et familiers de la vie passée, qui était maintenant abolie et avait disparu pour de bon.Boris Pasternak, Le Docteur Jivago.Passage souligné dans l’un des livres trouvés avec les affaires de ChrisMcCandless. On peut lire, écrit de sa main, dans la marge au-dessus du passage : « Besoin d’un but. »Samuel Walter McCandless, Jr., âgé de cinquante-six ans, est unhomme taciturne. Il porte la barbe, ses cheveux poivre et sel assez longs sont ramenés en arrière et dégagent son grand front. Grand, de stature solide, il porte des lunettes à monture métallique qui lui donnent l’aird’un professeur. Sept semaines après la découverte du corps de son fils enveloppé dans le sac de couchage bleu que Billie avait confectionné pourlui, Walt concentre son regard sur un voilier qui évolue devant la fenêtre de sa maison du front de mer. Contemplant sans expression la Chesapeake Bay, il pense à haute voix : « Comment se fait-il qu’un enfant qui a en lui tant de compassion puisse causer une telle douleur à ses parents ? »', '2018-08-26 17:34:35'),
(12, 'Chapitre-12 Annandale', 'Jean Forteroche', 'En 1986, par un week-end de printemps chaud et lourd, Chris obtint son diplôme du lycée Woodson, et Walt et Billie donnèrent une soirée en son honneur.L’anniversaire de Walt tombant quelques jours plus tard, le 10 juin,Chris offrit à son père un très beau télescope.« Je me souviens du jour où il a offert le télescope à Papa, raconte Carine. Chris avait déjà bu quelques verres ce soir-là, il était un peu parti.Ça le rendait très ému. Il retenait ses larmes tout en disant à Papa que,bien qu’avec les années des différences soient apparues entre eux, il lui était reconnaissant de tout ce qu’il avait fait pour lui. Puis il ajouta qu’il l’admirait d’être parti de rien, d’avoir entrepris des études tout en travaillant, de s’être donné à fond pour élever huit enfants. Ce fut un discours émouvant. Tout le monde avait la gorge nouée. Et ensuite, il a fait son voyage. »Walt et Billie ne tentèrent pas d’empêcher leur fils de partir. Mais ils le persuadèrent d’accepter une carte de crédit Texaco à toutes fins utiles et ils obtinrent sa promesse qu’il téléphonerait tous les trois jours. « On a eu le coeur qui battait pendant tout le temps de ce voyage, dit Walt, mais il n’y avait aucun moyen de l’empêcher de s’en aller. »Chris quitta la Virginie en direction du sud puis de l’ouest. Il traversa les grandes plaines du Texas, passa par la canicule du Nouveau-Mexique et de l’Arizona et arriva sur la côte du Pacifique. Au début, il téléphonait régulièrement, puis, à mesure que l’été avançait, les appels se firent plus espacés. Il ne fut de retour à la maison que deux jours avant le début du trimestre d’automne à Emory. Quand il pénétra dans la maison d’Annandale, il portait une barbe broussailleuse, ses cheveux étaient longs et emmêlés et son corps déjà mince avait perdu quinze kilos.', '2018-09-03 18:44:30'),
(13, 'Chapitre-13 Virginia Beach', 'Jean Forteroche', 'Chez Carine McCandless à Virginia Beach, il y a deux photographies encadrées sur le manteau de la cheminée : l’une représente Chris lycéen,l’autre le montre à sept ans en costume, la cravate de travers, à côté de Carine dans une robe à fanfreluches, un chapeau de Pâques tout neuf sur la tête. « Ce qui est stupéfiant, dit Carine en examinant les photos de son frère, c’est que malgré le temps qui sépare ces deux photos – elles ont été prises à dix ans d’intervalle – son expression est la même. »Elle a raison. Sur les deux clichés, Chris fixe l’objectif avec le même regard pensif et récalcitrant, comme s’il avait été interrompu en plein milieu d’une pensée importante et était ennuyé de perdre son temps devant un appareil photo. Son expression est encore plus frappante sur la photo de Pâques parce qu’elle contraste avec le sourire exubérant de Carine. « C’est tout à fait lui, dit-elle avec un sourire affectueux, tout en passant le bout de ses doigts sur l’image. Il avait souvent cet air-là. »Buckley, le shetland que Chris aimait tant, est étendu aux pieds de Carine. Il a treize ans, maintenant. Son museau grisonne et il clopine comme un arthritique. Cependant, quand Max, le rottweiler de dix-huit mois de Carine, fait une incursion sur son territoire, le petit chien malade n’hésite pas à administrer à l’intrus, avec un puissant aboiement, une série de morsures bien placées qui font détaler le gros animal de 65 kilos.« Chris adorait Buck, se souvient Carine. L’été où il a disparu, il voulait l’emmener avec lui. Après la cérémonie à Emory, il a demandé à Maman et à Papa s’ils étaient d’accord, mais ils ont refusé parce que Buckley venait d’être heurté par une voiture et était encore souffrant . Aujourd’hui, bien sûr, ils voient les choses autrement, même s’il est vrai que la blessure de Buck était sérieuse. Le vétérinaire disait qu’il ne pourrait plus remarcher. Mais mes parents ne peuvent s’empêcher depenser – et moi avec eux, d’ailleurs – que les choses auraient pu tourner autrement si Chris avait eu Buck avec lui. Chris n’hésitait pas à mettre sa vie en péril, mais il n’aurait jamais voulu faire courir un danger à Buckley. Il n’aurait pas pris les mêmes risques. »Carine McCandless a à peu près la même taille que son frère et lui ressemble assez pour que les gens aient souvent demandé s’ils étaient jumeaux. Parlant avec animation, elle écarte ses longs cheveux avec un mouvement de la tête et fait des gestes de ses petites mains expressives.Elle est pieds nus. Elle porte au cou une croix en or. Son jean impeccable est repassé.', '2018-09-03 18:49:22'),
(14, 'Chapitre-14 La Calotte de glace de Stikine', 'Jean Forteroche', 'Dans sa dernière carte postale à Wayne Westerberg, McCandless avait écrit : « Si cette aventure tourne mal et que tu n’entendes plus parler de moi, je veux que tu saches que je te considère comme quelqu’un de formidable. Maintenant, je m’enfonce dans la forêt. » Quand il fut avéré que l’aventure avait eu une fin tragique, cette déclaration mélodramatique alimenta l’hypothèse que le jeune homme avait été dès le départ suicidaire et qu’en entrant dans le sous-bois, il avait l’intention de n’en plus revenir. Pour ma part, je n’en suis pas si sûr.Ce qui me fait soupçonner que la mort de McCandless était fortuite,que c’était un terrible accident, c’est la lecture des quelques documents qu’il laissait ainsi que mes entretiens avec les hommes et les femmes qui l’ont fréquenté pendant la dernière année de sa vie. Mais ma saisie intuitive de ses intentions tient aussi à une considération plus personnelle.On m’a dit que dans ma jeunesse j\'étais têtu, renfermé, enclin à des actes téméraires, versatile. D’une façon générale, je décevais mon père.Tout comme pour McCandless, ceux qui représentaient l’autorité paternelle faisaient naître en moi un mélange de fureur contenue et de désir de plaire. Si quelque chose s’emparait de mon imagination, je m’y consacrais avec un zèle proche de l’obsession et depuis l’âge de dix-sept ans jusqu’à l’approche de la trentaine, ce quelque chose, c’était l’escalade.Je consacrais la plus grande partie de ma journée à imaginer, et plus tard à entreprendre, l’ascension de montagnes éloignées en Alaska et au Canada – d’obscures cimes raides et effrayantes, dont personne au monde n’avait entendu parler, à l’exception de quelques mordus de la grimpe. Cela eut des effets bénéfiques. En fixant mes vues sur un sommet après l’autre, je finis par traverser sans dommage l’épais brouillard de ma post-adolescence. Il était important que je grimpe. Le danger baignait toute chose – la courbe des rochers, la couleur orange et jaune des lichens, la texture des nuages – dans une lueur qui lui conférait un relief brillant. La vie vibrait un ton plus haut. Le monde devenait réel.', '2018-09-03 18:52:58'),
(15, 'Chapitre-15 La Calotte de glace de Stikine', 'Jean Forteroche', '<p>Mais nous savons peu de chose tant que nous n&rsquo;avons pas fait l&rsquo;exp&eacute;rience de ce qu&rsquo;il y a d&rsquo;incontr&ocirc;lable en nous. Parcourons les glaciers et les torrents, escaladons de dangereuses montagnes et&nbsp;laissons l&rsquo;opinion prononcer ses interdictions.<br /><em><strong>John Muir, Les Montagnes de Californie.</strong></em><br /><br />Avez-vous remarqu&eacute; la l&eacute;g&egrave;re incurvation au coin de la bouche deSam II quand il vous regarde ? Cela signifie d&rsquo;abord qu&rsquo;il ne veut pas que vous l&rsquo;appeliez Sam II et aussi qu&rsquo;il a une jambe de bois &agrave; gauche et un crochet mena&ccedil;ant &agrave; droite et qu&rsquo;il est pr&ecirc;t &agrave; vous tuer avec l&rsquo;un ou l&rsquo;autre s&rsquo;il en a l&rsquo;occasion. Le p&egrave;re est mis &agrave; l&rsquo;&eacute;cart. Ce qu&rsquo;il dit habituellement dans ce genre de confrontation, c&rsquo;est : &laquo; J&rsquo;ai chang&eacute; tes couches, petit morveux. &raquo; Mais ce n&rsquo;est pas ce qu&rsquo;il faudrait dire.<br />D&rsquo;abord parce que ce n&rsquo;est pas vrai (les m&egrave;res changent neuf couches sur dix) et ensuite parce que cela rappelle imm&eacute;diatement &agrave; Sam II ce qui le rend enrag&eacute;, qu&rsquo;il est petit alors que vous &ecirc;tes grand, mais non, ce n&rsquo;est pas &ccedil;a, qu&rsquo;il est faible alors que vous &ecirc;tes puissant, mais non, ce n&rsquo;est pas &ccedil;a non plus, il est furieux d&rsquo;&ecirc;tre contingent alors que vous &ecirc;tes<br />n&eacute;cessaire, non, pas tout &agrave; fait, ce qui le rend malade c&rsquo;est qu&rsquo;il vous aimait et que vous n&rsquo;y avez m&ecirc;me pas fait attention.<br /><em><strong>Donald Barthelme, Le P&egrave;re mort.</strong></em><br /><br />Mais nous savons peu de chose tant que nous n&rsquo;avons pas fait l&rsquo;exp&eacute;rience de ce qu&rsquo;il y a d&rsquo;incontr&ocirc;lable en nous. Parcourons les glaciers et les torrents, escaladons de dangereuses montagnes et&nbsp;laissons l&rsquo;opinion prononcer ses interdictions.<strong><em><br />John Muir, Les Montagnes de Californie.<br /></em><br /></strong>Avez-vous remarqu&eacute; la l&eacute;g&egrave;re incurvation au coin de la bouche deSam II quand il vous regarde ? Cela signifie d&rsquo;abord qu&rsquo;il ne veut pas que vous l&rsquo;appeliez Sam II et aussi qu&rsquo;il a une jambe de bois &agrave; gauche et un crochet mena&ccedil;ant &agrave; droite et qu&rsquo;il est pr&ecirc;t &agrave; vous tuer avec l&rsquo;un ou l&rsquo;autre s&rsquo;il en a l&rsquo;occasion. Le p&egrave;re est mis &agrave; l&rsquo;&eacute;cart. Ce qu&rsquo;il dit habituellement dans ce genre de confrontation, c&rsquo;est : &laquo; J&rsquo;ai chang&eacute; tes couches, petit morveux. &raquo; Mais ce n&rsquo;est pas ce qu&rsquo;il faudrait dire.<br />D&rsquo;abord parce que ce n&rsquo;est pas vrai (les m&egrave;res changent neuf couches sur dix) et ensuite parce que cela rappelle imm&eacute;diatement &agrave; Sam II ce qui le rend enrag&eacute;, qu&rsquo;il est petit alors que vous &ecirc;tes grand, mais non, ce n&rsquo;est pas &ccedil;a, qu&rsquo;il est faible alors que vous &ecirc;tes puissant, mais non, ce n&rsquo;est pas &ccedil;a non plus, il est furieux d&rsquo;&ecirc;tre contingent alors que vous &ecirc;tes<br />n&eacute;cessaire, non, pas tout &agrave; fait, ce qui le rend malade c&rsquo;est qu&rsquo;il vous aimait et que vous n&rsquo;y avez m&ecirc;me pas fait attention.<br />Donald Barthelme, Le P&egrave;re mort.<br /><br />Apr&egrave;s &ecirc;tre descendu du flanc du Devils Thumb, une neige abondante accompagn&eacute;e de vents violents m&rsquo;obligea &agrave; rester sous la tente pendant la plus grande partie des trois jours suivants. Les heures passaient lentement. Pour tenter de les faire passer plus vite, je fumai cigarette sur cigarette tant que ma provision le permit, et je lus. Quand je n&rsquo;eus plus rien &agrave; lire, j&rsquo;en fus r&eacute;duit &agrave; &eacute;tudier le dessin des renforts du plafond de la toile de tente. Je le fis pendant des heures, allong&eacute; sur le dos, tout en<br />menant avec moi-m&ecirc;me un chaud d&eacute;bat : devrais-je redescendre jusqu&rsquo;&agrave; la c&ocirc;te d&egrave;s que le temps s&rsquo;am&eacute;liorerait, ou bien fallait-il attendre l&rsquo;occasion d&rsquo;entreprendre une nouvelle tentative ? En v&eacute;rit&eacute;, mon escapade sur la face nord m&rsquo;avait secou&eacute; et je n&rsquo;avais plus envie d&rsquo;escalader le Thumb. Mais l&rsquo;id&eacute;e de retourner &agrave; Boulder sur cette d&eacute;faite n&rsquo;&eacute;tait pas non plus tr&egrave;s attrayante. Je ne pouvais que trop facilement imaginer l&rsquo;expression satisfaite de ceux qui &ndash; persuad&eacute;s de mon &eacute;chec d&egrave;s le d&eacute;part &ndash; viendraient m&rsquo;exprimer leurs condol&eacute;ances.</p>', '2018-09-05 14:40:58'),
(16, 'Chapitre-16 L’intérieur de l’Alaska', 'Jean Forteroche', '<p>Esterick Evans, Quatre Mille Milles &agrave; pied dans les &Eacute;tats etTerritoires de l&rsquo;Ouest pendant l&rsquo;hiver et le printemps 1818.<br />La nature attirait ceux qui &eacute;taient fatigu&eacute;s ou d&eacute;go&ucirc;t&eacute;s de l&rsquo;homme et de ses oeuvres. Elle n&rsquo;offrait pas seulement un moyen d&rsquo;&eacute;chapper &agrave; la soci&eacute;t&eacute;, mais elle permettait aussi aux esprits romantiques de pratiquer le culte, souvent c&eacute;l&eacute;br&eacute; par eux, de leur propre &acirc;me. La solitude et la libert&eacute; totale dans la nature cr&eacute;aient des conditions parfaites, &agrave; la fois pour la m&eacute;lancolie et pour la jubilation.<br /><strong><em>Roderick Nash,</em></strong><strong><em>La Nature et l&rsquo;esprit am&eacute;ricain.<br /></em></strong><br />Le 15 avril 1992, Chris McCandless quitta Carthage dans la cabine du camion charg&eacute; de graines de tournesol. Sa &laquo; grande odyss&eacute;e en Alaska &raquo; commen&ccedil;ait. Trois jours plus tard, il traversa la fronti&egrave;re canadienne &agrave; Roosville, en Colombie-Britannique. De l&agrave;, il fit du stop en direction du nord, passant par Skookumchuck, Radium Junction, Lake Louise, Jasper, Prince George. Arriv&eacute; &agrave; Dawson Creek, il prit dans le centre-ville une photo du panneau indicateur qui marque le d&eacute;but de l&rsquo;autoroute de<br />l&rsquo;Alaska. On y lit : &laquo; Mile 0 &ndash; Fairbanks 1 523 miles &raquo;, soit 2 450 kilom&egrave;tres. Faire de l&rsquo;auto-stop est devenu difficile sur l&rsquo;autoroute de l&rsquo;Alaska. Il n&rsquo;est pas rare de voir dans les environs de Dawson Creek une douzaine ou plus d&rsquo;hommes et de femmes tendant le pouce avec un air malheureux. Certains attendent une semaine, voire plus. Mais McCandless ne connut pas une telle attente. Le 21 avril &ndash; &agrave; peine six jours apr&egrave;s son d&eacute;part de&nbsp;Carthage &ndash;, il arriva &agrave; Liard River, au seuil du territoire du Yukon.</p>', '2018-09-05 15:09:09');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pass` varchar(155) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `pass`) VALUES
(1, 'Jean Forteroche', '*405E6513A4ABFFBCAEAAEC146ACD7B93AC19B04C');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
