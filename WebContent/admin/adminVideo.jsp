<%@ page language="java" contentType="text/html;charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/x.tld" prefix="x"%>
<%@ taglib uri="/WEB-INF/tld/sql.tld" prefix="sql"%>
<!-- Accès fragment entête -->
<%@ include file="../header.jspf"%>

<div class="ariane">Accueil &gt; cinema</div>


<div class="titre">
	<span class="titrePage"> Gestion des Vid&eacute;os </span> <span>
		<a href="adminNewVideo"> <img src='images/nouveau.png'
			class="imageNouveau" title='Nouvelle Vid&eacute;os' />
	</a>
	</span>
</div>

<div>
	<hr />
	<div class="blocPage">
		<div class="cadreVideo">

			<div class="imageVideo">
				<img src="imagesvideos/avatar.jpg" class="imageSmall" />
			</div>

			<div>
				<div class="titreVideo">Avatar</div>
				<div>
					<span class="libelleVideo">Nationalit&eacute;s :</span> Etats-Unis
				</div>
				<div>
					<span class="libelleVideo">Réalisateurs :</span> James Cameron
				</div>

				<div>
					<span class="libelleVideo">Acteurs :</span> Zoe Saldana, Sam
					Worthington, Sigourney Weaver
				</div>

				<div>
					<span class="libelleVideo">Synopsis : </span>
					<p>Malgré sa paralysie, Jake Sully, un ancien marine immobilisé
						dans un fauteuil roulant, est resté un combattant au plus p...</p>
				</div>

				<div>
					<span class="libelleVideo">Catégories :</span> Aventure
					Science-Fiction
				</div>

				<div class="menuVideo">
					<a href="adminVideoModifier?id=10"> <img
						src='images/modifier.png' class="picto"
						title="Modifier cette vid&eacute;o" />
					</a> <a href="film?id=10"> <img src='images/consulter.png'
						class="picto" title="Consulter cette vid&eacute;o" />
					</a> <a href="adminVideoParticipant?id=10"> <img
						src='images/participation.png' class='picto'
						title="Participation vidéos" />
					</a> <a href="adminVideoSupprimer?id=10"> <img
						src='images/supprimer.png' class="picto"
						title="Supprimer cette vid&eacute;o" />
					</a>
				</div>

			</div>
			<div class="arretFloat"></div>
		</div>

	</div>
	<hr />
	<div class="blocPage">
		<div class="cadreVideo">

			<div class="imageVideo">
				<img src="imagesvideos/bloodDiamond.jpg" class="imageSmall" />
			</div>

			<div>
				<div class="titreVideo">Blood Diamond</div>
				<div>
					<span class="libelleVideo">Nationalit&eacute;s :</span> Etats-Unis
					Allemagne
				</div>
				<div>
					<span class="libelleVideo">Réalisateurs :</span> Edward Zwinck
				</div>

				<div>
					<span class="libelleVideo">Acteurs :</span> Leonardo DiCaprio,
					Djimon Hounsou, Jennifer Connelly
				</div>

				<div>
					<span class="libelleVideo">Synopsis : </span>
					<p>Alors qu'il purge une peine de prison pour ses trafics,
						Archer rencontre Solomon Vandy, un pêcheur d'origine Mende.
						Arra...</p>
				</div>

				<div>
					<span class="libelleVideo">Catégories :</span> Aventure Thriller
					Drame
				</div>

				<div class="menuVideo">
					<a href="adminVideoModifier?id=14"> <img
						src='images/modifier.png' class="picto"
						title="Modifier cette vid&eacute;o" />
					</a> <a href="film?id=14"> <img src='images/consulter.png'
						class="picto" title="Consulter cette vid&eacute;o" />
					</a> <a href="adminVideoParticipant?id=14"> <img
						src='images/participation.png' class='picto'
						title="Participation vidéos" />
					</a> <a href="adminVideoSupprimer?id=14"> <img
						src='images/supprimer.png' class="picto"
						title="Supprimer cette vid&eacute;o" />
					</a>
				</div>

			</div>
			<div class="arretFloat"></div>
		</div>

	</div>
	<hr />
	<div class="blocPage">
		<div class="cadreVideo">

			<div class="imageVideo">
				<img src="imagesvideos/drive.jpg" class="imageSmall" />
			</div>

			<div>
				<div class="titreVideo">Drive</div>
				<div>
					<span class="libelleVideo">Nationalit&eacute;s :</span> Etats-Unis
				</div>
				<div>
					<span class="libelleVideo">Réalisateurs :</span> Nicolas Winding
					Refn
				</div>

				<div>
					<span class="libelleVideo">Acteurs :</span> Ryan Gosling , Carey
					Mulligan, Bryan Cranston
				</div>

				<div>
					<span class="libelleVideo">Synopsis : </span>
					<p>Un jeune homme solitaire, "The Driver", conduit le jour à
						Hollywood pour le cinéma en tant que cascadeur et la nuit pour...
					</p>
				</div>

				<div>
					<span class="libelleVideo">Catégories :</span> Action Thriller
				</div>

				<div class="menuVideo">
					<a href="adminVideoModifier?id=7"> <img
						src='images/modifier.png' class="picto"
						title="Modifier cette vid&eacute;o" />
					</a> <a href="film?id=7"> <img src='images/consulter.png'
						class="picto" title="Consulter cette vid&eacute;o" />
					</a> <a href="adminVideoParticipant?id=7"> <img
						src='images/participation.png' class='picto'
						title="Participation vidéos" />
					</a> <a href="adminVideoSupprimer?id=7"> <img
						src='images/supprimer.png' class="picto"
						title="Supprimer cette vid&eacute;o" />
					</a>
				</div>

			</div>
			<div class="arretFloat"></div>
		</div>

	</div>
	<hr />
	<div class="blocPage">
		<div class="cadreVideo">

			<div class="imageVideo">
				<img src="imagesvideos/fightClub.jpg" class="imageSmall" />
			</div>

			<div>
				<div class="titreVideo">Fight Club</div>
				<div>
					<span class="libelleVideo">Nationalit&eacute;s :</span> Etats-Unis
					Allemagne
				</div>
				<div>
					<span class="libelleVideo">Réalisateurs :</span> David Fincher
				</div>

				<div>
					<span class="libelleVideo">Acteurs :</span> Brad Pitt, Edward
					Norton, Helena Bonham Carter
				</div>

				<div>
					<span class="libelleVideo">Synopsis : </span>
					<p>Le narrateur, sans identité précise, vit seul, travaille
						seul, dort seul, mange seul ses plateaux-repas pour une personn...
					</p>
				</div>

				<div>
					<span class="libelleVideo">Catégories :</span> Action Fantastique
					Drame
				</div>

				<div class="menuVideo">
					<a href="adminVideoModifier?id=30"> <img
						src='images/modifier.png' class="picto"
						title="Modifier cette vid&eacute;o" />
					</a> <a href="film?id=30"> <img src='images/consulter.png'
						class="picto" title="Consulter cette vid&eacute;o" />
					</a> <a href="adminVideoParticipant?id=30"> <img
						src='images/participation.png' class='picto'
						title="Participation vidéos" />
					</a> <a href="adminVideoSupprimer?id=30"> <img
						src='images/supprimer.png' class="picto"
						title="Supprimer cette vid&eacute;o" />
					</a>
				</div>

			</div>
			<div class="arretFloat"></div>
		</div>

	</div>
	<hr />
	<div class="blocPage">
		<div class="cadreVideo">

			<div class="imageVideo">
				<img src="imagesvideos/gamesofthrones-saison4.png"
					class="imageSmall" />
			</div>

			<div>
				<div class="titreVideo">Games Of Thrones - Saison 4</div>
				<div>
					<span class="libelleVideo">Nationalit&eacute;s :</span> Etats-Unis
				</div>
				<div>
					<span class="libelleVideo">Réalisateurs :</span>
				</div>

				<div>
					<span class="libelleVideo">Acteurs :</span>
				</div>

				<div>
					<span class="libelleVideo">Synopsis : </span>
					<p>Il y a très longtemps, à une époque oubliée, une force a
						détruit l'équilibre des saisons. Dans un pays où l'été peut dur...
					</p>
				</div>

				<div>
					<span class="libelleVideo">Catégories :</span> Action Aventure
					Fantastique Drame
				</div>

				<div class="menuVideo">
					<a href="adminVideoModifier?id=35"> <img
						src='images/modifier.png' class="picto"
						title="Modifier cette vid&eacute;o" />
					</a> <a href="film?id=35"> <img src='images/consulter.png'
						class="picto" title="Consulter cette vid&eacute;o" />
					</a> <a href="adminVideoParticipant?id=35"> <img
						src='images/participation.png' class='picto'
						title="Participation vidéos" />
					</a> <a href="adminVideoSupprimer?id=35"> <img
						src='images/supprimer.png' class="picto"
						title="Supprimer cette vid&eacute;o" />
					</a>
				</div>

			</div>
			<div class="arretFloat"></div>
		</div>

	</div>


</div>



<!-- Accès fragment pied de page -->
<%@ include file="../footer.jspf"%>
