<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html;charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/x.tld" prefix="x"%>
<%@ taglib uri="/WEB-INF/tld/sql.tld" prefix="sql"%>
<!-- Accès fragment entête -->
<%@ include file="../entete.jspf"%>

<!--  Corps -->

<!-- Liste des villageois -->
<sql:setDataSource driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/lesgaulois" user="root" password="" />
<sql:query
	sql="SELECT * FROM VILLAGEOIS, SPECIALITE WHERE SPECIALITE.ID_SPECIALITE = VILLAGEOIS.ID_SPECIALITE ORDER BY NOM ASC"
	var="villageois" />
<!-- afficher les villageois -->
<tr>
	<td>
		<div class="titreListe">Les Villageois :</div> <c:forEach
			var="gaulois" begin="0" items="${villageois.rows}">
			<br />
			<div class="unGaulois">
				<table>
					<tr>
						<td><a href="RechGaulois?<c:out value="${gaulois.ID_VILLAGEOIS}" />">
								<img src='imagesGaulois/<c:out value="${gaulois.IMAGE}" />'
								style="width: 100px;" />
						</a></td>
						<td>Nom : <c:out value="${gaulois.NOM}" /> <br />
							Specialité :<c:out value="${gaulois.NOM_SPECIALITE}" /> <br />
							Habite : <c:out value="${gaulois.ADRESSE}" />

						</td>
					</tr></table>
			
			</div>
		</c:forEach>
	</td>
</tr>
<!--  Fin corps -->

<!-- Accès fragment pied de page -->
<%@ include file="../piedpage.jspf"%>
