<!DOCTYPE html>
<?xml version="1.0" encoding="UTF-8" ?>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
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
				<h1>Welcome</h1>
				<p style="width: 1366px;">
					<c:form method="POST" commandName="application"
						action="${pageContext.request.contextPath}/application/edit/${application.applicationId}.html">
						<table style="width: 1366px;">
							<tbody>
								<tr>
									<td>Uygulama Kodu:</td>
									<td><c:input class="form-control" id="ex1" type="text"
											path="applicationCode" /></td>
									<td>Uygulama Adı:</td>
									<td><c:input class="form-control" id="ex3" type="text"
											path="applicationName" /></td>
									<td>Uygulama Açıklaması:</td>
									<td><c:input class="form-control" id="ex3" type="text"
											path="applicationNutShell" /></td>
								</tr>
								<tr>
									<td>Uygulama Sahibi Müdürlük :</td><td></td>
									<td>Uygulama Sahibi Birim : </td><td></td>
								</tr>
								
								<tr>
									<td>Uygulama Sorumlusu :</td><td></td>
									<td>Uygulama Geliştiriciler :</td><td colspan="2"></td>
								</tr>
								<tr>
									<td>Uygulama Ortak Kullanıcı Kodu :</td><td><c:input class="form-control" id="ex1" type="text"
											path="applicationCommonUserCode" /></td>
									<td>Uygulama Ekran Sayısı :</td><td><c:input class="form-control" id="ex1" type="number"
											path="applicationScreenNumber" /></td>
									<td>Uygulama Rapor Sayısı :</td><td><c:input class="form-control" id="ex1" type="number"
											path="applicationReportNumber" /></td>
								</tr>
								
								<tr>
									<td colspan="6"><label for="ex3"><h3>Teknik
												Bilgiler :</h3></label></td>
								</tr>
								<tr>
									<td>Donanım Platformu :<br /><sup>(Anabilgisayar, AS/400, Sunucu, DMZ vs.)</sub></td>
									<td><c:input class="form-control" id="ex1" type="text"
											path="applicationHardwarePlatform" /></td>
									<td>İşletim Sistemi :<br /><sup>(z/os, OS/400, Windows, Linux, Unix vs.)</sup></td>
									<td><c:input class="form-control" id="ex1" type="text"
											path="applicationOS" /></td>
									<td>Uyumlu Web Tarayıcı :<br /><sup>(Firefox, IE, Chrome vs. Uyumlu Versiyon)</sup></td>
									<td><c:input class="form-control" id="ex1" type="text"
											path="applicationBrowser" /></td>
								</tr>
								<tr>
									<td>Sunucu Ortamı :</br><sup>(WAS, CICS, Tomcat, PHP sunucu vs.)</sup></td>
									<td><c:input class="form-control" id="ex1" type="text"
											path="applicationServer" /></td>
									<td>Veri Depolama Ortamı :</br><sup>(DB2 for z/OS, DB2, LUW, VSAM, SQLServer, MySql)</sup></td>
									<td><c:input class="form-control" id="ex1" type="text"
											path="applicationDatabase" /></td>
									<td>Programlama Dili :<br /><sup>(JAVA, PHP, Natural, PL/1, ASP, Excel Makroları)</sup></td>
									<td><c:input class="form-control" id="ex1" type="text"
											path="applicationProgrammingLang" /></td>
								</tr>
								<tr>
									<td>Yetkilendirme Ortamı :<br /><sup>(TSS, EDS, AD vs.)</sup></td><td><c:input class="form-control" id="ex1" type="text"
											path="applicationAuthorization" /></td>
								</tr>
								<tr>
									<td><input type="submit" value="Edit" /></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</c:form>
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
		<p>Footer Text</p>
	</footer>

</body>
</html>











<%-- <%@taglib uri="http://www.springframework.org/tags/form" prefix="c" %>

<?xml version="1.0" encoding="UTF-8" ?>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Edit Application</title>
</head>



<body>

<div class="container">
  <h2>Horizontal form with static control</h2>
  <form class="form-horizontal" role="form">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <p class="form-control-static">someone@example.com</p>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>


<h1>Edit Application</h1>
<p>Here you can edit the app</p>
<p>${message}</p>
<c:form method="POST" commandName="application" action="${pageContext.request.contextPath}/application/edit/${application.applicationId}.html">
<table border="2">
<tbody>
	<tr>
		<td>Uygulama Kodu:</td><td><c:input path="applicationCode"/></td>
		<td>Uygulama Adı: </td><td><c:input path="applicationName"/></td>
		<td>Uygulama Açıklaması:</td><td><c:input path="applicationNutShell"/></td>
	</tr>
	<tr>
	<td><h3>Teknik Bilgiler:</h3></td></tr>
	<tr>
	<td>Donanım Platformu :</td><td><c:input path="applicationHardwarePlatform"/></td>
	<td>İşletim Sistemi :</td><td><c:input path="applicationOS"/></td>
	<td>Uyumlu Web Tarayıcı :</td><td></td>
	</tr>
	<tr>
		<td><input type="submit" value="Edit" /></td>
		<td></td>
	</tr>
</tbody>
</table>
</c:form>

<p><a href="${pageContext.request.contextPath}/home.html">Home page</a></p>
</body>
</html> --%>