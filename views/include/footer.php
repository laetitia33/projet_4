<footer>
	
	<p>&copy; 2018 Jean Forteroche tous droits réservés<br></p>
	<p> <?php
    if(empty($_SESSION['authorization_user'])) {
        echo "<a class='' href='index.php?action=login'>Administration</a>";
    }
    else{
        echo 'Bievenue sur le site '.$_SESSION['login'].' - <a class="" href="index.php?action=logout">Se déconnecter</a>';
    }?> </p>
	<p id="legal">Mentions légales</p>
	<div id="legalnotice">
		<a href="#ferme" title="fermer" id="closelegal">X</a>
		<h2 id= "titlenotice">Mentions légales</h2>
		<h3>Edition du site</h3>
		<P> Editeur du site https://forteroche.000webhostapp.com/: Madame laetitia bernardi Adresse : 24 rue henri dheurle, 33260 la teste de buch</p>
		<h3>Propriété Intellectuelle</h3>
		<p>L'ensemble de ce site relève de la législation française et internationale sur le droit d'auteur et la propriété intellectuelle. Tous les droits de reproduction sont réservés, y compris les représentations iconographiques et photographiques. La reproduction, adaptation et/ou traduction de tout ou partie de ce site sur un support quel qu'il soit, est formellement interdite sauf autorisation expresse du Directeur de la publication.</p>
		<h3>Modification du site</h3>
		<p>L'équipe éditoriale se réserve le droit de modifier ou de corriger le contenu de ce site et de ces mentions légales à tout moment et ceci sans préavis.</p>
		<h3>Hébergeur</h3>
		<p>Le site https://forteroche.000webhostapp.com/</p>
	</div>
	<a href="https://github.com/laetitia33/projet_4">
		<img src="public/image/github.png" alt="image github"/><span>Lien Github ;)</span>
	</a>
</footer>

