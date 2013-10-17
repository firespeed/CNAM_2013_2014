<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/x.tld" prefix="x" %>
<%@ taglib uri="/WEB-INF/tld/sql.tld" prefix="sql" %>
<!-- Accès fragment entête -->
<%@ include file="../entete.jspf" %> 

<!--  Corps -->

	<!-- Liste des potions -->
	<sql:setDataSource driver="com.mysql.jdbc.Driver" 
		url="jdbc:mysql://localhost:3306/lesgaulois" 
		user="root" password=""/>
	<sql:query sql="SELECT * FROM POTION ORDER BY NOM_POTION ASC" var="lesPotions"/>

	<!-- afficher les potions -->
	<tr>
		<td>
			<div class="titreListe">
				Les Potions :
			</div>
		<ul>
			<c:forEach var="potion" begin="0" items="${lesPotions.rows}">
		    <li class="unePotion" >
 				<c:out value="${potion.NOM_POTION}"/>
 				<ul>
					<li><b>Composition :</b></li>
					<sql:query sql="SELECT * FROM ingredient, compose 
					WHERE compose.ID_POTION = ${potion.ID_POTION}
					AND compose.ID_INGREDIENT = ingredient.ID_INGREDIENT 
					ORDER BY NOM_INGREDIENT ASC" var="lesIngredients"/>
						<c:forEach var="ingredient" begin="0" items="${lesIngredients.rows}">
			    		<ul>
    						<li class="unIngredient">
 								<c:out value="${ingredient.QTE}"/>
 								<c:out value="${ingredient.NOM_INGREDIENT}"/>
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