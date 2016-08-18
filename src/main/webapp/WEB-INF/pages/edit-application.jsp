<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<?xml version="1.0" encoding="UTF-8" ?>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Edit Application</title>
</head>
<body>
<h1>Edit Application</h1>
<p>Here you can edit the app</p>
<p>${message}</p>
<form:form method="POST" commandName="application" action="${pageContext.request.contextPath}/application/edit/${application.applicationId}.html">
<table>
<tbody>
	<tr>
		<td>Uygulama Kodu:</td><td><form:input path="applicationCode"/></td>
		<td>Uygulama Adı: </td><td><form:input path="applicationName"/></td>
		<td>Uygulama Açıklaması:</td><td><form:input path="applicationNutShell"/></td>
		<td></td>
	</tr>
	<tr>
	
	</tr>
	<tr>
		<td><input type="submit" value="Edit" /></td>
		<td></td>
	</tr>
</tbody>
</table>
</form:form>

<p><a href="${pageContext.request.contextPath}/home.html">Home page</a></p>
</body>
</html>