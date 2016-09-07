<!DOCTYPE html>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="a"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="tr">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<title>Uygulama Listesi</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:url value="/resources/css/bootstrap.min.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />


<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
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

<c:url value="/resources/css/jquery.dataTables.min.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />
<c:url value="/resources/css/buttons.dataTables.min.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />


<script type="text/javascript"
	src="<c:url value="/resources/js/jquery-1.12.3.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery.dataTables.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/dataTables.buttons.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/buttons.flash.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/jszip.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/pdfmake.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/vfs_fonts.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/buttons.html5.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/buttons.print.min.js"/>"></script>

<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		$('#example').DataTable({
			dom : 'Bfrtip',
			buttons : [ 'copy', 'csv', 'excel', 'pdf', 'print' ]
		});
	});
</script>
<script>
	$(document).ready(function() {
		$('.detailedBtn').click(function() {
			$(".HideShowDiv").toggle(500);
		});
	});
</script>
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
				<img src="${imgURL}" align="left" width="200" height="50">
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a
						href="${pageContext.request.contextPath}/home.html">Ana Sayfa</a></li>
					<li class="active"><a
						href="${pageContext.request.contextPath}/application/applicationlist.html">Uygulama
							Listesi</a></li>
					<li class="active"><a
						href="${pageContext.request.contextPath}/application/addapplication.html">Yeni
							Uygulama Ekle </a></li>
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
			<div class="col-sm-8 text-left">
				<h1>Uygulama Listesi</h1>

				<div class="container">
					<BUTTON class="detailedBtn">Detaylı Arama Seçenekleri</BUTTON>
					
					<div class="HideShowDiv">
						${message}
						
						<form
							action="${pageContext.request.contextPath}/application/applicationlist.html"
							method="GET">
							<input id="search" name="search" placeholder="Search...">
							<select name="dropdown">
							<option value="">Select Area</option>
								<option value="applicationDevelopers" selected>Uygulama
									Geliştiriciler</option>
								<option value="applicationSupport">Uygulama Destekçiler</option>
								<option value="applicationCommonUserCode">Uygulama
									Ortak Kullanıcı Kodu</option>
							</select> 
							<select name="devDrop">
								<c:forEach var="dev" items="${devList}">
									<option><c:out value="${dev}" /></option>
								</c:forEach>
							</select>


						<%--<a:select path="dev">
								<a:option value="${dev}" label="${dev}">
								</a:option>
							</a:select> --%>
							<input type=submit value="Search">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
					</div>
			
					<table id="example" class="display nowrap" width="100%"
						cellspacing="0" style="color: Black">
						<thead>
							<tr>
								<th style="color: DarkRed">Uygulama Kodu</th>
								<th style="color: DarkRed">Uygulama Adı</th>
								<th style="color: DarkRed">Uygulama Sahibi Müdürlük</th>
								<th style="color: DarkRed">Uygulama Sahibi Birim</th>
								<th style="color: DarkRed">Uygulama Sorumlusu</th>
								<th style="color: DarkRed">Uygulama Açıklaması</th>
								<th style="color: DarkRed">İşlemler</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="app" items="${applications}">
								<tr>
									<td><c:out value="${app.applicationCode}" /></td>
									<td><c:out value="${app.applicationName}" /></td>
									<td><c:out value="${app.applicationDirection}" /></td>
									<td><c:out value="${app.applicationUnit}" /></td>
									<td><c:out value="${app.applicationOfficer}" /></td>
									<td><c:out value="${app.applicationNutShell}" /></td>
									<td><a
										href="${pageContext.request.contextPath}/application/edit/${app.applicationId}.html">Detay/Düzenle</a><br />
										<a
										href="${pageContext.request.contextPath}/application/delete/${app.applicationId}.html">Sil</a><br />
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<footer class="container-fluid text-center">
		<p>Central Bank of the Republic of Turkey - Information
			Technologies</p>
	</footer>
</body>
</html>