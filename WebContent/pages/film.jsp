<%@ page language="java" contentType="text/html;charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/x.tld" prefix="x"%>
<%@ taglib uri="/WEB-INF/tld/sql.tld" prefix="sql"%>
<!-- Accès fragment entête -->
<%@ include file="../header.jspf"%>

<div class="ariane">Accueil &gt; cinema</div>
<c:forEach var="video" begin="0" items="${requestScope['arrVideo']}">
<div class="titreVideo">Avatar</div>
<hr />

<div>
	<div class="divImageBig">
		<img src="imagesvideos/<c:out value="${video.image}" />" class="imageBig" />
	</div>

	<div class="ficheFilm">
		<div class="divRealisateurs">
			<span class="libelleVideoFiche">R&eacute;alisateurs :</span>
			<hr />

			<div class="unRealisateur">
				<div>
					<img src="imagespersonnes/JamesCameron.jpg" class="imageParticip" />
				</div>
				<div>James Cameron</div>
			</div>
		</div>

		<div class="divActeurs">
			<span class="libelleVideoFiche">Acteurs :</span>
			<hr />

			<div class="unActeur">
				<div>
					<img src="imagespersonnes/ZoeSaldana.jpg" class="imageParticip" />
				</div>
				<div>Zoe Saldana</div>


			</div>

			<div class="unActeur">
				<div>
					<img src="imagespersonnes/SamWorthington.jpg" class="imageParticip" />
				</div>
				<div>Sam Worthington</div>


			</div>

			<div class="unActeur">
				<div>
					<img src="imagespersonnes/SigourneyWeaver.jpg"
						class="imageParticip" />
				</div>
				<div>Sigourney Weaver</div>


			</div>
		</div>
		<div class="arretFloat"></div>
		<div class="divSynopsis">
			<span class="libelleVideoFiche">Synopsis :</span>
			<hr />
			<div class="synopsis">
				<p><c:out value="${video.synopsys}" /></p>
			</div>
		</div>


	</div>
</div>

<div style="float: none;">
	<hr />
</div>
<div class="titreVideo">BANDE ANNONCE</div>
<div>
	<hr />
</div>
<div id='blogvision'>
	<iframe id="ba"
		src='http://www.allocine.fr/_video/iblogvision.aspx?cmedia=19135625'>
	</iframe>
</div>
</c:forEach>





<!-- Accès fragment pied de page -->
<%@ include file="../footer.jspf"%>
