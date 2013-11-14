<%@ page language="java" contentType="text/html;charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/x.tld" prefix="x"%>
<%@ taglib uri="/WEB-INF/tld/sql.tld" prefix="sql"%>
<!-- Accès fragment entête -->
<%@ include file="../header.jspf"%>


<div class="ariane">Admin &gt; Gestion des participants &gt;
	Consulter un participant</div>

<div class="titre">
	<span class="titrePage">Consulter un participant</span> <span> <a
		href="adminParticipant"> <img
			src='images/retour.png' class="imageRetour"
			title="Retour à la liste des participants" />
	</a>
	</span>
</div>
<hr />

<div class="blocPage">

	<div class="cadrePersonne">

		<div class="imagePersonne">
			<img src="imagespersonnes/J.J.Abrams.jpg" />
		</div>

		<div class="textConsult1">
			Jeffrey Jacob &nbsp; Abrams <br />N&eacute; le : 27 Juin en 1966
			<hr />
			Nationalit&eacute; : Etats-Unis
			<hr />
			R&eacute;alisateur &nbsp;
		</div>
		<div class="arretFloat"></div>
	</div>


	<div class="textConsult2">
		<hr />
		<div class="textConsultTitre">R&eacute;alisations :</div>
		<hr />
		<div class="photoFilm">
			<div>
				<img src='imagesvideos/starTrekIntoTheDarkness.jpg'
					class="imageFilm" />
			</div>
			<div>Star Trek Into Darkness</div>
		</div>
		<div class="arretFloat"></div>
	</div>


</div>
</div>



<!-- Accès fragment pied de page -->
<%@ include file="../footer.jspf"%>