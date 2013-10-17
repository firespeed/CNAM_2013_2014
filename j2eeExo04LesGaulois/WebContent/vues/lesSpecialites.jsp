<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/x.tld" prefix="x" %>
<%@ taglib uri="/WEB-INF/tld/sql.tld" prefix="sql" %>
<!-- Accès fragment entête -->
<%@ include file="../entete.jspf" %> 

<!--  Corps -->

<!-- Liste des specialites -->
<sql:setDataSource driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost:3306/lesgaulois" 
user="root" password=""/>
<sql:query sql="SELECT * FROM SPECIALITE ORDER BY NOM_SPECIALITE ASC" var="lesSpecialites"/>
<!-- afficher les specialites -->
<tr>
	<td>
		<div class="titreListe">
				Les Spécialit&eacute;s :
		</div>
		<ul>
		<c:forEach var="specialite" begin="0" items="${lesSpecialites.rows}">
	   		<li class="uneSpecialite" >
	 			<c:out value="${specialite.NOM_SPECIALITE}"/>
			</li>
		</c:forEach>
		</ul>
	
	
	</td>
</tr>

<!--  Fin corps -->

<!-- Accès fragment pied de page -->
<%@ include file="../piedpage.jspf" %> 			