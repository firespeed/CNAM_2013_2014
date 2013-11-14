<%@ page language="java" contentType="text/html;charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/x.tld" prefix="x"%>
<%@ taglib uri="/WEB-INF/tld/sql.tld" prefix="sql"%>
<!-- Accès fragment entête -->
<%@ include file="../header.jspf"%>


<div class="ariane">Admin &gt; Gestion des participants</div>


<div class="titre">
	<span class="titrePage">Gestion des participants</span> <span> <a
		href="adminNewParticipant"> <img
			src='images/nouveau.png' class="imageNouveau"
			title='Nouveau participant' />
	</a>
	</span>
</div>

<div class="corps">
	<hr />
	<table class="tableAlpha">
		<tr>
			<td class='indexAlpha'>Tous</td>
			<td class='indexAlpha'>A</td>
			<td class='indexAlpha'>B</td>
			<td class='indexAlpha'>C</td>
			<td class='indexAlpha'>D</td>
			<td class='indexAlpha'>E</td>
			<td class='indexAlpha'>F</td>
			<td class='indexAlpha'>G</td>
			<td class='indexAlpha'>H</td>
			<td class='indexAlpha'>I</td>
			<td class='indexAlpha'>J</td>
			<td class='indexAlpha'>K</td>
			<td class='indexAlpha'>L</td>
			<td class='indexAlpha'>M</td>
			<td class='indexAlpha'>N</td>
			<td class='indexAlpha'>O</td>
			<td class='indexAlpha'>P</td>
			<td class='indexAlpha'>Q</td>
			<td class='indexAlpha'>R</td>
			<td class='indexAlpha'>S</td>
			<td class='indexAlpha'>T</td>
			<td class='indexAlpha'>U</td>
			<td class='indexAlpha'>V</td>
			<td class='indexAlpha'>W</td>
			<td class='indexAlpha'>X</td>
			<td class='indexAlpha'>Y</td>
			<td class='indexAlpha'>Z</td>
		</tr>
	</table>

	<div>
		<table>
			<tr class="titre">
				<td class="t3">R</td>
				<td class="t3">A</td>
				<td class="t21">Nom</td>
				<td class="t25">Pr&eacute;nom</td>
				<td class="t25">Pays</td>
				<td class="t25">Mouvements</td>
			</tr>

			<tr class="ligneAdmin A">
				<td><img src='images/realisateur.png' class='picto' /></td>
				<td></td>
				<td class='nom'>Abrams</td>
				<td class='prenom'>Jeffrey Jacob</td>
				<td class='pays'>Etats-Unis</td>
				<td><a href="adminParticipantModifier?id=10">
						<img src='images/modifier.png' class='picto' title="Modifier" />
				</a> <a href="adminParticipantVideo?id=10"> <img
						src='images/participation.png' class='picto'
						title="Participation vidéos" />
				</a> <a href="adminParticipantConsulter?id=10"> <img
						src='images/consulter.png' class='picto' title="Consulter" />
				</a> <a href="adminParticipantSupprimer?id=10"> <img
						src='images/supprimer.png' class='picto' title="Supprimer" />
				</a></td>
			</tr>

			<tr class="ligneAdmin A">
				<td></td>
				<td><img src='images/acteur.png' class='picto' /></td>
				<td class='nom'>Adams</td>
				<td class='prenom'>Amy</td>
				<td class='pays'>Etats-Unis</td>
				<td><a href="adminParticipantModifier?id=7">
						<img src='images/modifier.png' class='picto' title="Modifier" />
				</a> <a href="adminParticipantVideo?id=7"> <img
						src='images/participation.png' class='picto'
						title="Participation vidéos" />
				</a> <a href="adminParticipantConsulter?id=7"> <img
						src='images/consulter.png' class='picto' title="Consulter" />
				</a> <a href="adminParticipantSupprimer?id=7"> <img
						src='images/supprimer.png' class='picto' title="Supprimer" />
				</a></td>
			</tr>

			<tr class="ligneAdmin A">
				<td><img src='images/realisateur.png' class='picto' /></td>
				<td></td>
				<td class='nom'>Aja</td>
				<td class='prenom'>Alexandres</td>
				<td class='pays'>France</td>
				<td><a href="adminParticipantModifier?id=49">
						<img src='images/modifier.png' class='picto' title="Modifier" />
				</a> <a href="adminParticipantVideo?id=49"> <img
						src='images/participation.png' class='picto'
						title="Participation vidéos" />
				</a> <a href="adminParticipantConsulter?id=49"> <img
						src='images/consulter.png' class='picto' title="Consulter" />
				</a> <a href="adminParticipantSupprimer?id=49"> <img
						src='images/supprimer.png' class='picto' title="Supprimer" />
				</a></td>
			</tr>

			<tr class="ligneAdmin A">
				<td></td>
				<td><img src='images/acteur.png' class='picto' /></td>
				<td class='nom'>Alexandra</td>
				<td class='prenom'>Maria Lara</td>
				<td class='pays'>Roumanie</td>
				<td><a href="adminParticipantModifier?id=84">
						<img src='images/modifier.png' class='picto' title="Modifier" />
				</a> <a href="adminParticipantVideo?id=84"> <img
						src='images/participation.png' class='picto'
						title="Participation vidéos" />
				</a> <a href="adminParticipantConsulter?id=84"> <img
						src='images/consulter.png' class='picto' title="Consulter" />
				</a> <a href="adminParticipantSupprimer?id=84"> <img
						src='images/supprimer.png' class='picto' title="Supprimer" />
				</a></td>
			</tr>

			<tr class="ligneAdmin A">
				<td><img src='images/realisateur.png' class='picto' /></td>
				<td></td>
				<td class='nom'>Amenabar</td>
				<td class='prenom'>Alexandro</td>
				<td class='pays'>Espagne</td>
				<td><a href="adminParticipantModifier?id=88">
						<img src='images/modifier.png' class='picto' title="Modifier" />
				</a> <a href="adminParticipantVideo?id=88"> <img
						src='images/participation.png' class='picto'
						title="Participation vidéos" />
				</a> <a href="adminParticipantConsulter?id=88"> <img
						src='images/consulter.png' class='picto' title="Consulter" />
				</a> <a href="adminParticipantSupprimer?id=88"> <img
						src='images/supprimer.png' class='picto' title="Supprimer" />
				</a></td>
			</tr>

			<tr class="ligneAdmin A">
				<td></td>
				<td><img src='images/acteur.png' class='picto' /></td>
				<td class='nom'>Armitage</td>
				<td class='prenom'>Richard</td>
				<td class='pays'>Angleterre</td>
				<td><a href="adminParticipantModifier?id=19">
						<img src='images/modifier.png' class='picto' title="Modifier" />
				</a> <a href="adminParticipantVideo?id=19"> <img
						src='images/participation.png' class='picto'
						title="Participation vidéos" />
				</a> <a href="adminParticipantConsulter?id=19"> <img
						src='images/consulter.png' class='picto' title="Consulter" />
				</a> <a href="adminParticipantSupprimer?id=19"> <img
						src='images/supprimer.png' class='picto' title="Supprimer" />
				</a></td>
			</tr>

			<tr class="ligneAdmin A">
				<td></td>
				<td><img src='images/acteur.png' class='picto' /></td>
				<td class='nom'>Astin</td>
				<td class='prenom'>Sean</td>
				<td class='pays'>Etats-Unis</td>
				<td><a href="adminParticipantModifier?id=78">
						<img src='images/modifier.png' class='picto' title="Modifier" />
				</a> <a href="adminParticipantVideo?id=78"> <img
						src='images/participation.png' class='picto'
						title="Participation vidéos" />
				</a> <a href="adminParticipantConsulter?id=78"> <img
						src='images/consulter.png' class='picto' title="Consulter" />
				</a> <a href="adminParticipantSupprimer?id=78"> <img
						src='images/supprimer.png' class='picto' title="Supprimer" />
				</a></td>
			</tr>

			<tr class="ligneAdmin B">
				<td></td>
				<td><img src='images/acteur.png' class='picto' /></td>
				<td class='nom'>Bale</td>
				<td class='prenom'>Christian</td>
				<td class='pays'>Angleterre</td>
				<td><a href="adminParticipantModifier?id=22">
						<img src='images/modifier.png' class='picto' title="Modifier" />
				</a> <a href="adminParticipantVideo?id=22"> <img
						src='images/participation.png' class='picto'
						title="Participation vidéos" />
				</a> <a href="adminParticipantConsulter?id=22"> <img
						src='images/consulter.png' class='picto' title="Consulter" />
				</a> <a href="adminParticipantSupprimer?id=22"> <img
						src='images/supprimer.png' class='picto' title="Supprimer" />
				</a></td>
			</tr>

			<tr class="ligneAdmin B">
				<td></td>
				<td><img src='images/acteur.png' class='picto' /></td>
				<td class='nom'>Bennett</td>
				<td class='prenom'>Manu</td>
				<td class='pays'>Nouvelle-Zelande</td>
				<td><a href="adminParticipantModifier&id=20">
						<img src='images/modifier.png' class='picto' title="Modifier" />
				</a> <a href="adminParticipantVideo?id=20"> <img
						src='images/participation.png' class='picto'
						title="Participation vidéos" />
				</a> <a href="adminParticipantConsulter?id=20"> <img
						src='images/consulter.png' class='picto' title="Consulter" />
				</a> <a href="adminParticipantSupprimer?id=20"> <img
						src='images/supprimer.png' class='picto' title="Supprimer" />
				</a></td>
			</tr>

			<tr class="ligneAdmin B">
				<td><img src='images/realisateur.png' class='picto' /></td>
				<td></td>
				<td class='nom'>Bird</td>
				<td class='prenom'>Brad</td>
				<td class='pays'>Etats-Unis</td>
				<td><a href="adminParticipantModifier?id=26">
						<img src='images/modifier.png' class='picto' title="Modifier" />
				</a> <a href="adminParticipantVideo?id=26"> <img
						src='images/participation.png' class='picto'
						title="Participation vidéos" />
				</a> <a href="adminParticipantConsulter?id=26"> <img
						src='images/consulter.png' class='picto' title="Consulter" />
				</a> <a href="adminParticipantSupprimer?id=26"> <img
						src='images/supprimer.png' class='picto' title="Supprimer" />
				</a></td>
			</tr>

			<tr class="ligneAdmin B">
				<td></td>
				<td><img src='images/acteur.png' class='picto' /></td>
				<td class='nom'>Bonham Carter</td>
				<td class='prenom'>Helena</td>
				<td class='pays'>Angleterre</td>
				<td><a href="adminParticipantModifier?id=103">
						<img src='images/modifier.png' class='picto' title="Modifier" />
				</a> <a href="adminParticipantVideo?id=103"> <img
						src='images/participation.png' class='picto'
						title="Participation vidéos" />
				</a> <a href="adminParticipantConsulter?id=103"> <img
						src='images/consulter.png' class='picto' title="Consulter" />
				</a> <a href="adminParticipantSupprimer?id=103"> <img
						src='images/supprimer.png' class='picto' title="Supprimer" />
				</a></td>
			</tr>
		</table>
	</div>


	<!-- Accès fragment pied de page -->
	<%@ include file="../footer.jspf"%>