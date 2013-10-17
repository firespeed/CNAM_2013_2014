<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html;charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/x.tld" prefix="x"%>
<%@ taglib uri="/WEB-INF/tld/sql.tld" prefix="sql"%>
<!-- Acc�s fragment ent�te -->
<%@ include file="../entete.jspf"%>

<!--  Corps -->
<!--  est appel� par lesVillageois.jsp en cliquant sur une image via  -->
<!--  la servlet RechGaulois.java  -->

<!-- afficher les villageois -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Bienvenue Client</title>
</head>
<body>
	<jsp:useBean id="villageois" class="lesGaulois.beans.Villageois"
		scope="request" />
	<jsp:setProperty property="*" name="villageois" />
	<h3>
		Affichage d�tail villageois<br></br>
	</h3>
	<h2><jsp:getProperty property="nom" name="villageois" /></h2>
	<h2><jsp:getProperty property="adresse" name="villageois" /></h2>
</body>
</html>

<!--  Fin corps -->

<!-- Acc�s fragment pied de page -->
<%@ include file="../piedpage.jspf"%>
