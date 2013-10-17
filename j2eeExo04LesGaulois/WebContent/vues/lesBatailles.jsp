<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/x.tld" prefix="x" %>
<%@ taglib uri="/WEB-INF/tld/sql.tld" prefix="sql" %>
<!-- Accès fragment entête -->
<%@ include file="../entete.jspf" %> 

<!--  Corps -->

	<!-- Liste des batailles -->
	<sql:setDataSource driver="com.mysql.jdbc.Driver" 
		url="jdbc:mysql://localhost:3306/lesgaulois" 
		user="root" password=""/>
	<sql:query sql="SELECT * FROM BATAILLE, LIEU WHERE BATAILLE.ID_LIEU = LIEU.ID_LIEU ORDER BY DATE_BATAILLE ASC" var="lesBatailles"/>

	<!-- afficher les batailles -->
	<tr>
		<td>
			<div class="titreListe">
				Les Batailles :
			</div>
		<ul>
			<c:forEach var="bataille" begin="0" items="${lesBatailles.rows}">
		    <li class="uneBataille" >
 				<h4><c:out value="${bataille.NOM_BATAILLE}"/></h4>
				<ul>
					<li><b>Date : </b><c:out value="${bataille.DATE_BATAILLE}"/></li>
					<li><b>Lieu : </b><c:out value="${bataille.NOM_LIEU}"/></li>


					<sql:query sql="SELECT NOM, COUNT(QTE) AS NOMBRE FROM prise_casque, villageois 
					WHERE prise_casque.ID_BATAILLE = ${bataille.ID_BATAILLE}
					AND prise_casque.ID_VILLAGEOIS = villageois.ID_VILLAGEOIS 
					GROUP BY NOM" var="lesParticipants"/>
						<c:forEach var="participant" begin="0" items="${lesParticipants.rows}">
			    		<ul>
    						<li class="unParticipant">
 								<c:out value="${participant.NOM}"/>
 								, <c:out value="${participant.NOMBRE}"/> casque(s)
							</li>    
    					</ul>
						</c:forEach>
				</ul>
			</li>
			<hr/>
			</c:forEach>
		</ul>
		</td>
	</tr>
			
			
<!--  Fin corps -->

<!-- Accès fragment pied de page -->
<%@ include file="../piedpage.jspf" %> 			