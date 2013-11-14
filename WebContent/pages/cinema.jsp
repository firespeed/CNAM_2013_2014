<%@ page language="java" contentType="text/html;charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/x.tld" prefix="x"%>
<%@ taglib uri="/WEB-INF/tld/sql.tld" prefix="sql"%>
<!-- Accès fragment entête -->
<%@ include file="../header.jspf"%>

<div class="ariane">Accueil &gt; cinema</div>


<div class="titre">Les films</div>

<div class="corps">
<c:forEach var="video" begin="0" items="${requestScope['arrVideo']}">
			
						

				<div style="height: 220px; margin-top: 25px;">
		<div style="margin-left: 10px; float: left; width: 180px;">
			<a href="film?id=1"> <img
				src="imagesvideos/<c:out value="${video.image}" />" class="imageSmall" />
			</a>
		</div>

		<div>
			<div class="titreVideo"><c:out value="${video.titre}" /></div>
			<div style="margin-left: 10px;">
				<span class="libelleVideo">Nationalit&eacute;s :</span> NC
			</div>
			<div style="margin-left: 10px;">
				<span class="libelleVideo">Réalisateurs :</span> NC
			</div>

			<div style="margin-left: 10px;">
				<span class="libelleVideo">Acteurs :</span> NC
			</div>

			<div style="margin-left: 10px;">
				<span class="libelleVideo">Synopsis : </span>
				<p><c:out value="${video.synopsys}" /></p>
			</div>

			<div style="margin-left: 10px;">
				<span class="libelleVideo">Catégories :</span> NC
			</div>
		</div>


	</div>
</c:forEach>


</div>
<!-- Accès fragment pied de page -->
<%@ include file="../footer.jspf" %> 