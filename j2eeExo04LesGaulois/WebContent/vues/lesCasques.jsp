<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/x.tld" prefix="x" %>
<%@ taglib uri="/WEB-INF/tld/sql.tld" prefix="sql" %>
<!-- Accès fragment entête -->
<%@ include file="../entete.jspf" %> 

<!--  Corps -->
	<!-- Liste des casques -->
	<sql:setDataSource driver="com.mysql.jdbc.Driver" 
		url="jdbc:mysql://localhost:3306/lesgaulois" 
		user="root" password=""/>
		<sql:query sql="SELECT * FROM casque, type_casque WHERE casque.ID_TYPE_CASQUE = type_casque.ID_TYPE_CASQUE ORDER BY NOM_CASQUE ASC" var="lesCasques"/>
	<!-- afficher les casques -->
	<tr>
		<td>
		<div class="titreListe">
			Les Casques :
		</div>
		<ul>
			<c:forEach var="casque" begin="0" items="${lesCasques.rows}">
	   		<li class="unCasque">
	 			<c:out value="${casque.NOM_CASQUE}"/>
	 			, type : 
	 			<c:out value="${casque.NOM_TYPE_CASQUE}"/> 
			</li>
	</c:forEach>
	</ul>
</td>
</tr>

<!--  Fin corps -->

<!-- Accès fragment pied de page -->
<%@ include file="../piedpage.jspf" %> 			