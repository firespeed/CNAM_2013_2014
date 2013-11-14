<%@ page language="java" contentType="text/html;charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/x.tld" prefix="x"%>
<%@ taglib uri="/WEB-INF/tld/sql.tld" prefix="sql"%>
<!-- Accès fragment entête -->
<%@ include file="../header.jspf"%>

<div class="ariane">Admin &gt; Gestion des Vid&eacute;os &gt;
	Cr&eacute;ation d'une vid&eacute;o</div>


<div class="titre">
	<span class="titrePage">Cr&eacute;ation d'une vid&eacute;o</span> <span>
		<a href="adminVideo"> <img src='images/retour.png'
			class="imageRetour" title="Retour à la liste des vid&eacute;os" />
	</a>
	</span>
</div>
<hr />


<form enctype="multipart/form-data" action="" method="post">
	<div class="blocPage">
		<div class="blocVideo">
			<table class="table100">
				<tr>
					<td class="entreeTexteCenter">Image</td>
				</tr>
				<tr>
					<td>
						<div id="prev_fichierVideo"></div>
					</td>
				</tr>
				<tr>
					<td>
						<div>
							<input class="file" id="fichierVideo" type='file' name="image"
								title="Charger une image" />
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div>
			<table style="">
				<tr>
					<td class="entreeTexte">titre :</td>
					<td><input type='text' name="titre" size='30'
						class="entreeTexte" /></td>
				</tr>
				<tr>
					<td class="entreeTexte">Dur&eacute;e :</td>
					<td class="entreeTexte"><input type='text' name="duree"
						size='8' class="entreeTexte" />&nbsp;mn</td>
				</tr>
				<tr>
					<td class="entreeTexte">Ref. animation :</td>
					<td><input type="text" class="entreeTexte" size="12"
						name="anim" /></td>
				</tr>
				<tr>
					<td class="entreeTexte">Ann&eacute;e :</td>
					<td><input type='text' name="annee" size='8'
						class="entreeTexte" /></td>
				</tr>
				<tr>
					<td class="entreeTexte" colspan="2">Synopsis :</td>
				</tr>
				<tr>
					<td colspan="2"><textArea name="synopsis" rows="6" cols="50"
							class="corps"></textArea></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td><input type="submit" value="valider" class="entreeTexte" />
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>

			</table>
		</div>
		<hr />
		<div>
			<div class="textConsult2">Nationnalit&eacute;</div>
			<br />
			<div class="floatLeft">
				<input type="checkbox" name="pays_8" />Allemagne
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="pays_3" />Angleterre
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="pays_4" />Australie
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="pays_16" />Bénin
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="pays_7" />Canada
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="pays_6" />Danemark
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="pays_13" />Espagne
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="pays_2" />Etats-Unis
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="pays_1" />France
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="pays_12" />Irlande
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="pays_14" />Italie
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="pays_10" />Japon
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="pays_5" />Nouvelle-Zelande
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="pays_9" />Roumanie
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="pays_11" />Suisse
			</div>
		</div>
		<div class="arretFloat"></div>
		<hr />
		<div>
			<div class="textConsult2">Cat&eacute;gorie</div>
			<br />
			<div class="floatLeft">
				<input type="checkbox" name="cat_1" />Action
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="cat_2" />Aventure
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="cat_3" />Comédie
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="cat_4" />Documentaire
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="cat_14" />Drame
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="cat_15" />Espionnage
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="cat_5" />Famille
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="cat_6" />Fantastique
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="cat_10" />Guerre
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="cat_17" />Historique
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="cat_11" />Horreur
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="cat_16" />Musical
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="cat_7" />Policier
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="cat_13" />Romance
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="cat_8" />Science-Fiction
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="cat_12" />Thriller
			</div>
			<div class="floatLeft">
				<input type="checkbox" name="cat_9" />Western
			</div>
		</div>
		<div class="arretFloat"></div>
		<hr />
		<div>
			<div class="textConsult2">Type</div>
			<br />
			<div style="float: left;">
				<input type="checkbox" name="type_3" />Divertissement
			</div>
			<div style="float: left;">
				<input type="checkbox" name="type_1" />Films
			</div>
			<div style="float: left;">
				<input type="checkbox" name="type_4" />Kids
			</div>
			<div style="float: left;">
				<input type="checkbox" name="type_5" />Mangas
			</div>
			<div style="float: left;">
				<input type="checkbox" name="type_2" />Serie
			</div>
		</div>
		<div class="arretFloat"></div>
	</div>
</form>
</div>
<!-- Accès fragment pied de page -->
<%@ include file="../footer.jspf"%>