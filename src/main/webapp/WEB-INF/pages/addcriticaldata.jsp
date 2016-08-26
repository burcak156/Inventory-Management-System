<!DOCTYPE html>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="tr">
<head>
<title>Edit Application</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
				<a class="navbar-brand" href="#">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Projects</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p>
					<a href="#">Link</a>
				</p>
				<p>
					<a href="#">Link</a>
				</p>
				<p>
					<a href="#">Link</a>
				</p>
			</div>
			<div class="col-sm-8 text-left">
				<h1>Add application page</h1>
				<p>Here you can add a new application.</p>
				<c:form method="POST" commandName="criticaldata"
					action="${pageContext.request.contextPath}/application/addcritical.html">>
						<table style="width: 1366px;">
						<tbody>
							<tr>
								<td colspan="6"><h3>
										<p align="left">Uygulama Kritik Bilgileri :</p>
									</h3></td>
							</tr>
							<tr>
								<td>Kesinti Tahammül Süresi :<br /> <sup>(Saat)</sup></td>
								<td><c:input class="form-control" id="ex1" type="text"
										path="interruptTolerationTime" /></td>
<%-- 								<td>Çalışmazsa Alternatif Uygulama :</td>
								<td><c:input class="form-control" id="ex1" type="text"
										path="applicationAlternativeApp" /></td> --%>
								<td>Kesintiden Etkilenen Uygulamalar :</td>
								<td><c:input class="form-control" id="ex1" type="text"
										path="affectedApplications" /></td>

							</tr>
							<tr>
								<td>Kritik Saat :</td>
								<td><c:input class="form-control" id="ex1" type="text"
										path="criticalHours" /></td>
								<td>Kritik Gün :</td>
								<td><c:input class="form-control" id="ex1" type="text"
										path="criticalDays" /></td>
								<td>İlgili Modüller :</td>
								<td><c:input class="form-control" id="ex1" type="text"
										path="relatedModuls" /></td>
							</tr>
							<tr>
<%-- 							<td><c:input class="form-control" id="ex1" type="text"
										path="application"></c:input>
							</td> --%>
							</tr>
							<tr>
								<td><input type="submit" value="addcritical" /></td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</c:form>
				<p>

					<a href="${pageContext.request.contextPath}/home.html">Home
						page</a>
				</p>
				<hr>
				<h3>Test</h3>
				<p>Lorem ipsum...</p>
			</div>
			<!--     <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div> -->
		</div>
	</div>

	<footer class="container-fluid text-center">
		<p>Central Bank of the Republic of Turkey</p>
	</footer>

</body>
</html>
