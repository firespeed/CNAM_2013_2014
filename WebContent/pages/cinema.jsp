<%@ page language="java" contentType="text/html;charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/x.tld" prefix="x"%>
<%@ taglib uri="/WEB-INF/tld/sql.tld" prefix="sql"%>
<!-- Acc�s fragment ent�te -->
<%@ include file="../header.jspf"%>

<div class="ariane">Accueil &gt; cinema</div>


<div class="titre">Les films</div>

<div class="corps">



	<div style="height: 220px;">
		<div style="margin-left: 10px; float: left; width: 180px;">
			<a href="film?id=1"> <img
				src="imagesvideos/avatar.jpg" class="imageSmall" />
			</a>
		</div>

		<div>
			<div class="titreVideo">Avatar</div>
			<div style="margin-left: 10px;">
				<span class="libelleVideo">Nationalit&eacute;s :</span> Etats-Unis
			</div>
			<div style="margin-left: 10px;">
				<span class="libelleVideo">R�alisateurs :</span> James Cameron
			</div>

			<div style="margin-left: 10px;">
				<span class="libelleVideo">Acteurs :</span> Zoe Saldana, Sam
				Worthington, Sigourney Weaver
			</div>

			<div style="margin-left: 10px;">
				<span class="libelleVideo">Synopsis : </span>
				<p>Malgr� sa paralysie, Jake Sully, un ancien marine immobilis�
					dans un fauteuil roulant, est rest� un combattant au plus p...</p>
			</div>

			<div style="margin-left: 10px;">
				<span class="libelleVideo">Cat�gories :</span> Aventure
				Science-Fiction
			</div>
		</div>


	</div>
	<hr />
	<div style="height: 220px;">
		<div style="margin-left: 10px; float: left; width: 180px;">
			<a href="film?id=14"> <img
				src="imagesvideos/bloodDiamond.jpg" class="imageSmall" />
			</a>
		</div>

		<div>
			<div class="titreVideo">Blood Diamond</div>
			<div style="margin-left: 10px;">
				<span class="libelleVideo">Nationalit&eacute;s :</span> Etats-Unis
				Allemagne
			</div>
			<div style="margin-left: 10px;">
				<span class="libelleVideo">R�alisateurs :</span> Edward Zwinck
			</div>

			<div style="margin-left: 10px;">
				<span class="libelleVideo">Acteurs :</span> Leonardo DiCaprio,
				Djimon Hounsou, Jennifer Connelly
			</div>

			<div style="margin-left: 10px;">
				<span class="libelleVideo">Synopsis : </span>
				<p>Alors qu'il purge une peine de prison pour ses trafics,
					Archer rencontre Solomon Vandy, un p�cheur d'origine Mende. Arra...
				</p>
			</div>

			<div style="margin-left: 10px;">
				<span class="libelleVideo">Cat�gories :</span> Aventure Thriller
				Drame
			</div>
		</div>
	</div>
	<hr />
	<div style="height: 220px;">
		<div style="margin-left: 10px; float: left; width: 180px;">
			<a href="film?id=7"> <img
				src="imagesvideos/drive.jpg" class="imageSmall" />
			</a>
		</div>

		<div>
			<div class="titreVideo">Drive</div>
			<div style="margin-left: 10px;">
				<span class="libelleVideo">Nationalit&eacute;s :</span> Etats-Unis
			</div>
			<div style="margin-left: 10px;">
				<span class="libelleVideo">R�alisateurs :</span> Nicolas Winding
				Refn
			</div>

			<div style="margin-left: 10px;">
				<span class="libelleVideo">Acteurs :</span> Ryan Gosling , Carey
				Mulligan, Bryan Cranston
			</div>

			<div style="margin-left: 10px;">
				<span class="libelleVideo">Synopsis : </span>
				<p>Un jeune homme solitaire, "The Driver", conduit le jour �
					Hollywood pour le cin�ma en tant que cascadeur et la nuit pour...</p>
			</div>

			<div style="margin-left: 10px;">
				<span class="libelleVideo">Cat�gories :</span> Action Thriller
			</div>
		</div>


	</div>
</div>
</div>
<!-- Acc�s fragment pied de page -->
<%@ include file="../footer.jspf" %> 