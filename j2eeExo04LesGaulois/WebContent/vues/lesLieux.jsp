<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/x.tld" prefix="x" %>
<%@ taglib uri="/WEB-INF/tld/sql.tld" prefix="sql" %>
<!-- Accès fragment entête -->
<%@ include file="../entete.jspf" %> 

<!--  Corps -->

	<!-- Liste des lieux -->
	<sql:setDataSource driver="com.mysql.jdbc.Driver" 
		url="jdbc:mysql://localhost:3306/lesgaulois" 
		user="root" password=""/>
		<sql:query sql="SELECT * FROM lieu ORDER BY NOM_LIEU ASC" var="lesLieux"/>

	<!-- afficher les lieux -->
	<tr>
		<td style='vertical-align:text-top;'>
		<div class="titreListe">
				Les Lieux :
			</div>
		<ul>
			<c:forEach var="lieu" begin="0" items="${lesLieux.rows}">
		    <li class="unLieu" >
 				<h4><c:out value="${lieu.NOM_LIEU}"/></h4>
				<ul>
					<li>Les batailles suivantes s'y sont déroulées :
						<sql:query sql="SELECT * FROM bataille 
						WHERE ID_LIEU = ${lieu.ID_LIEU}" var="lesBatailles"/>
							<c:forEach var="bataille" begin="0" items="${lesBatailles.rows}">
				    		<ul>
	    						<li class="uneBataille">
	 								<c:out value="${bataille.NOM_BATAILLE}"/>
	 								, date : <c:out value="${bataille.DATE_BATAILLE}"/>
								</li>    
	    					</ul>
						</c:forEach>
					</li>
				</ul>
				<ul>
					<li>Les personnes y habitant :
						<sql:query sql="SELECT * FROM villageois 
						WHERE ID_LIEU = ${lieu.ID_LIEU}" var="lesVillageois"/>
							<c:forEach var="villageois" begin="0" items="${lesVillageois.rows}">
				    		<ul>
	    						<li class="unGaulois">
	 								<c:out value="${villageois.NOM}"/>
								</li>    
	    					</ul>
							</c:forEach>
					</li>
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