<!DOCTYPE html>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="tr">
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<c:url value="/resources/css/bootstrap.min.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />

<script
	src="/resources/js/jquery.min.js"></script>
<script
	src="/resources/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

tr {
	border: 2px solid black;
}

td {
	text-align: right;
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<c:url value="/resources/img/logo2.png" var="imgURL" />
			<a class="navbar-brand" href=""><img src="${imgURL}" align="left" width="200" height="50"></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="${pageContext.request.contextPath}/home.html">Ana Sayfa</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><c:if
							test="${pageContext.request.userPrincipal.name != null}">
							<a href="javascript:document.getElementById('logout').submit()">Logout</a>
						</c:if><span class="glyphicon glyphicon-log-in"></span></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p>
					<a href="${pageContext.request.contextPath}/home.html">Ana
						Sayfa</a>
				</p>
				<p>
					<a
						href="${pageContext.request.contextPath}/application/applicationlist.html">Tüm
						Uygulamalar</a>
				</p>
				<p>
					<a
						href="${pageContext.request.contextPath}/application/addapplication.html">Uygulama
						Ekle </a>
				</p>
			</div>
			<div class="col-sm-8 text-left">
				
				<div align="center" style="margin: 20px 0px 5px; width: auto;">
				<c:url value="/resources/img/logotcmb.png" var="imgURL" />
				<img src="${imgURL}" alt="" title=""></div>
				<h1>Hoşgeldiniz</h1>
				
				<h4> <== İŞLEM YAPMAK İÇİN SOL MENÜYÜ KULLANINIZ</h4>
<%-- 
				<c:url value="/logout" var="logoutUrl" />
				<form id="logout" action="${logoutUrl}" method="post">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>
				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<a href="javascript:document.getElementById('logout').submit()">Logout</a>
				</c:if> --%>
				<hr>
				<h3></h3>
				<p></p>
			</div>
		</div>
	</div>

	<footer class="container-fluid text-center">
		<p>Central Bank of the Republic of Turkey - Information
			Technologies</p>
	</footer>

</body>
</html>