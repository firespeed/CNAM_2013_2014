<%@ page language="java" contentType="text/html;charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/x.tld" prefix="x"%>
<%@ taglib uri="/WEB-INF/tld/sql.tld" prefix="sql"%>
<!-- Accès fragment entête -->
<%@ include file="../header.jspf"%>

<div class="ariane">Admin &gt; Gestion des participants &gt;
	Modifier un participant</div>


<div class="titre">
	<span class="titrePage">Modifier un participant</span> <span> <a
		href="adminParticipant"> <img src='images/retour.png'
			class="imageRetour" title="Retour à la liste des participants" />
	</a>
	</span>
</div>
<hr />


<form enctype="multipart/form-data" action="" method="post">
	<div class="blocPage">

		<div class="blocVideo2">
			<div>
				<table>
					<tr>
						<td class="entreeTexteCenter">Image actuelle</td>

						<td class="entreeTexteCenter">Nouvelle image</td>
					</tr>


					<tr>
						<td>
							<div id="imageActuelle">
								<img src="imagespersonnes/J.J.Abrams.jpg" class="photoParticip" />
							</div>
						</td>

						<td>
							<div id="prev_fichierParticipant"></div>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<div>
								<input class="file" id="fichierParticipant" type='file'
									name="image" title="Charger une image" />
							</div>
						</td>
					</tr>

				</table>
			</div>
		</div>
		<div class="ficheActeur">
			<table class="tFicheActeur">
				<tr>
					<td class="entreeTexte">Nom :</td>
					<td><input type='text' name="nom" size='20'
						class="entreeTexte" value="Abrams" /></td>
				</tr>
				<tr>
					<td class="entreeTexte">Pr&eacute;nom :</td>
					<td><input type='text' name="prenom" size='20'
						class="entreeTexte" value="Jeffrey Jacob " /></td>
				</tr>
				<tr>
					<td class="entreeTexte">N&eacute; le :</td>
					<td><input type="text" class="entreeTexte date" name="date"
						value="27/06/1966" /></td>
				</tr>
				<tr>
					<td class="entreeTexte">Pays :</td>
					<td><select id="selectPays" name="pays" class="entreeTexte">
							<option value="8">Allemagne</option>
							<option value="3">Angleterre</option>
							<option value="4">Australie</option>
							<option value="16">Bénin</option>
							<option value="7">Canada</option>
							<option value="6">Danemark</option>
							<option value="13">Espagne</option>
							<option selected value="2">Etats-Unis</option>
							<option value="1">France</option>
							<option value="12">Irlande</option>
							<option value="14">Italie</option>
							<option value="10">Japon</option>
							<option value="5">Nouvelle-Zelande</option>
							<option value="9">Roumanie</option>
							<option value="11">Suisse</option>
					</select></td>
				<tr>
				<tr>
					<td>&nbsp;</td>
					<td><input type="submit" value="valider" name="valider"
						class="entreeTexte" /></td>
				</tr>


			</table>
		</div>
		<div class="arretFloat"></div>
	</div>
</form>
</div>

<!-- Accès fragment pied de page -->
<%@ include file="../footer.jspf"%>