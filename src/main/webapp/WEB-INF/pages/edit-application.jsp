<!DOCTYPE html>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="tr">
<head>
<title>Edit Application</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<a:url value="/resources/css/bootstrap.min.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />

<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

<SCRIPT type="text/javascript">
function printForm(divName) {
     var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}
</SCRIPT>
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
				<a:url value="/resources/img/logo2.png" var="imgURL" />
				<a class="navbar-brand" href=""><img src="${imgURL}"
					align="left" width="200" height="50"></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a
						href="${pageContext.request.contextPath}/home.html">Ana Sayfa</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a:if
							test="${pageContext.request.userPrincipal.name != null}">
							<a href="javascript:document.getElementById('logout').submit()">Logout</a>
						</a:if><span class="glyphicon glyphicon-log-in"></span> Login</li>
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
			<div class="col-sm-8 text-left" style="width: 75%; height: auto">
				<h1>Uygulama Düzenleme</h1>
				<p style="width: 1024px;">
					<c:form id="printableArea" method="POST" commandName="application"
						action="${pageContext.request.contextPath}/application/edit/${application.applicationId}.html">
						<table style="width:100%;">
							<tbody>
								<tr>
									<td style="text-align:right; width: 200px; background-color: #DCDCDC"><b>Uygulama Kodu :</b></td>
									<td colspan="2"><c:input class="form-control" id="ex1"
											type="text" path="applicationCode" /></td>
									<td style="text-align:right; width: 200px; background-color: #DCDCDC"><B>Uygulama Adı :</B></td>
									<td colspan="2"><c:input class="form-control" id="ex3"
											type="text" path="applicationName" /></td>
								</tr>
								<tr>
									<td style="text-align:right; background-color: #DCDCDC"><b>Uygulama Açıklaması:</b></td>
									<td colspan="2"><c:input class="form-control" id="ex3"
											type="text" path="applicationNutShell" /></td>
									<td style="text-align:right; background-color: #DCDCDC"><b>Uygulama Ortak Kullanıcı Kodu :</b></td>
									<td colspan="2"><c:input class="form-control" id="ex1"
											type="text" path="applicationCommonUserCode" /></td>
								</tr>
								<tr>
									<td style="text-align:right; background-color: #DCDCDC"><b>Uygulama Sahibi Müdürlük :</b></td>
									<td colspan="2"><c:input class="form-control" id="ex3"
											type="text" path="applicationDirection" /></td>
									<td style="text-align:right; background-color: #DCDCDC"><b>Uygulama Sahibi Birim :</b></td>
									<td colspan="2"><c:input class="form-control" id="ex3"
											type="text" path="applicationUnit" /></td>
								</tr>
								<tr>
									<td style="text-align:right; background-color: #DCDCDC"><b>Uygulama Sorumlusu :</b></td>
									<td colspan="2"><c:input class="form-control" id="ex3"
											type="text" path="applicationOfficer" /></td>
									<td style="text-align:right; background-color: #DCDCDC"><b>Uygulama Geliştiriciler :</b></td>
									<td colspan="2"><c:input class="form-control" id="ex3"
											type="text" path="applicationDevelopers" /></td>
								</tr>
								<tr>
									<td style="text-align:right; background-color: #DCDCDC"><b>Uygulama Destekçileri :</b></td>
									<td colspan="2"><c:input class="form-control" id="ex1"
											type="text" path="applicationSupport" /></td>
									<td style="text-align:right; background-color: #DCDCDC"><b>Uygulama Ekran Sayısı :</b></td>
									<td><c:input class="form-control" id="ex1" type="number"
											path="applicationScreenNumber" /></td>
									<TD />
								</tr>
								<tr>
									<td style="text-align:right; background-color: #DCDCDC"><b>Uygulama Rapor Sayısı :</b></td>
									<td><c:input class="form-control" id="ex1" type="number"
											path="applicationReportNumber" /></td>
									<TD />
									<td style="text-align:right; background-color: #DCDCDC"><b>Uygulama Kullanıcı Sayısı :</b></td>
									<td><c:input class="form-control" id="ex1" type="number"
											path="applicationUserCount" /></td>
									<TD />
								</tr>

								<tr>
									<td colspan="6" align="left"><h3>
											<p align="left">Teknik Bilgiler :</p>
										</h3></td>
								</tr>
								<tr>
									<td style="text-align:right; background-color: #DCDCDC"><b>Donanım Platformu :</b><br /> <sup>(Anabilgisayar,
											AS/400, Sunucu, DMZ vs.)</sub></td>
									<td colspan="2"><c:input class="form-control" id="ex1" type="text"
											path="applicationHardwarePlatform" /></td>
									<td style="text-align:right; background-color: #DCDCDC"><b>İşletim Sistemi :</b><br /> <sup>(z/os, OS/400,
											Windows, Linux, Unix vs.)</sup></td>

									<td colspan="2"><c:input class="form-control" id="ex1" type="text"
											path="applicationOS" /></td>
								</tr>
								<tr>
									<td style="text-align:right; background-color: #DCDCDC"><b>Uyumlu Web Tarayıcı :</b><br /> <sup>(Firefox, IE,
											Chrome vs. Uyumlu Versiyon)</sup></td>
									<td colspan="2"><c:input class="form-control" id="ex1" type="text"
											path="applicationBrowser" /></td>
									<td style="text-align:right; background-color: #DCDCDC"><b>Sunucu Ortamı :</b><br> <sup>(WAS, CICS, Tomcat, PHP
											sunucu vs.)</sup></td>
									<td colspan="2"><c:input class="form-control" id="ex1" type="text"
											path="applicationServer" /></td>
								</tr>
								<tr>

									<td style="text-align:right; background-color: #DCDCDC"><b>Veri Depolama Ortamı :</b><br> <sup>(DB2 for z/OS, DB2,
											LUW, VSAM, SQLServer, MySql)</sup></td>
									<td colspan="2"><c:input class="form-control" id="ex1" type="text"
											path="applicationDatabase" /></td>
									<td style="text-align:right; background-color: #DCDCDC"><b>Programlama Dili :</b><br /> <sup>(JAVA, PHP,
											Natural, PL/1, ASP, Excel Makroları)</sup></td>
									<td colspan="2"><c:input class="form-control" id="ex1" type="text"
											path="applicationProgrammingLang" /></td>
								</tr>
								<tr>
									<td style="text-align:right; background-color: #DCDCDC"><b>Yetkilendirme Ortamı :</b><br /> <sup>(TSS, EDS, AD
											vs.)</sup></td>
									<td colspan="2"><c:input class="form-control" id="ex1" type="text"
											path="applicationAuthorization" /></td>
									<TD colspan="3" />
								</tr>
								<tr>
									<td colspan="6"><h3>
											<p align="left">Uygulama Kritik Bilgileri :</p>
										</h3></td>
								</tr>
								<tr>
									<td style="text-align:right; background-color: #DCDCDC"><b>Kesinti Tahammül Süresi :</b><br /> <sup>(Saat)</sup></td>
									<td colspan="2"><c:input class="form-control" id="ex1"
											type="text" path="criticalData.interruptTolerationTime" /></td>
									<td style="text-align:right; background-color: #DCDCDC"><b>Çalışmazsa Alternatif Uygulama :</b></td>
									<td colspan="2"><c:input class="form-control" id="ex1"
											type="text" path="applicationAlternativeApp" /></td>
								</tr>
								<tr>
									<td style="text-align:right; background-color: #DCDCDC"><b>Kesintiden Etkilenen Uygulamalar :</b></td>
									<td colspan="2"><c:input class="form-control" id="ex1"
											type="text" path="criticalData.affectedApplications" /></td>


									<td style="text-align:right; background-color: #DCDCDC"><b>Kritik Saat :</b></td>
									<td colspan="2"><c:input class="form-control" id="ex1"
											type="text" path="criticalData.criticalHours" /></td>
								</tr>
								<tr>
									<td style="text-align:right; background-color: #DCDCDC"><b>Kritik Gün :</b></td>
									<td colspan="2"><c:input class="form-control" id="ex1"
											type="text" path="criticalData.criticalDays" /></td>
									<td style="text-align:right; background-color: #DCDCDC"><b>İlgili Modüller :</b></td>
									<td colspan="2"><c:input class="form-control" id="ex1"
											type="text" path="criticalData.relatedModuls" /></td>
								</tr>
								<tr>
									<td style="text-align:right"><input type="submit" value="Edit" /> <input
										type="button" onclick="printForm('printableArea')"
										value="Formu Yazdır" /></td>
									<td colspan="4"></td>
								</tr>
							</tbody>
						</table>
					</c:form>
				</p>
				<hr>
				<h3></h3>
				<p></p>
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