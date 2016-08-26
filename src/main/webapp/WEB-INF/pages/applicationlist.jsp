<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<title>Uygulama Listesi</title>
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
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css" />

<script type="text/javascript"
	src="https://cdn.datatables.net/r/bs-3.3.5/jqc-1.11.3,dt-1.10.8/datatables.min.js"></script>
<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		$('#example').DataTable();
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
					<a
						href="${pageContext.request.contextPath}/application/applicationlist.html">Tüm
						Uygulamalar</a>
				</p>
				<p>
					<a
						href="${pageContext.request.contextPath}/application/addapplication.html">Uygulama Ekle
					</a>
				</p>
			</div>
			<div class="col-sm-8 text-left">
				<h1>Uygulama Listesi</h1>

				<div class="container">

					<table id="example" class="display" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th>Uygulama Kodu</th>
								<th>Uygulama Adı</th>
								<th>Uygulama Sahibi Müdürlük</th>
								<th>Uygulama Sahibi Birim</th>
								<th>Uygulama Sorumlusu</th>
								<th>Uygulama Açıklaması</th>
								<th></th>
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
										href="${pageContext.request.contextPath}/application/edit/${app.applicationId}.html">Edit</a><br />
										<a
										href="${pageContext.request.contextPath}/application/delete/${app.applicationId}.html">Delete</a><br />
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
		<p>Central Bank of the Republic of Turkey</p>
	</footer>

	<script type="text/javascript">
					// For demo to fit into DataTables site builder...
					$('#example').removeClass('display').addClass(
							'table table-striped table-bordered');
				</script>
</body>
</html>
















<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>


<c:url value="/resources/css/fixedHeader.bootstrap.min.csss"
	var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />
<c:url value="/resources/css/bootstrap.min.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />
<c:url value="/resources/css/font-awesome.min.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />
<c:url value="/resources/css/green.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />
<c:url value="/resources/css/responsive.bootstrap.min.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />
<c:url value="/resources/css/scroller.bootstrap.min.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />
<c:url value="/resources/css/dataTables.bootstrap.min.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />
<c:url value="/resources/css/custom.min.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />
<c:url value="/resources/css/buttons.bootstrap.min.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />
</head>
<body>


	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>
					Fixed Header Example <small>Users</small>
				</h2>
				
				
			</div>
			<div class="x_content">
				<p class="text-muted font-13 m-b-30">This example shows
					FixedHeader being styling by the Bootstrap CSS framework.</p>
				<table id="datatable-fixed-header"
					class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>Uygulama Kodu</th>
							<th>Uygulama Adı</th>
							<th>Uygulama Sahibi Müdürlük</th>
							<th>Uygulama Sahibi Birim</th>
							<th>Uygulama Sorumlusu</th>
							<th>Uygulama Açıklaması</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="app" items="${applications}">
							<tr>
								<td><c:out value="${app.applicationCode}" /></td>
								<td><c:out value="${app.applicationName}" /></td>
								<td></td>
								<td></td>
								<td></td>
								<td><c:out value="${app.applicationNutShell}" /></td>
								<td><a
									href="${pageContext.request.contextPath}/application/edit/${app.applicationId}.html">Edit</a><br/>
									<a
									href="${pageContext.request.contextPath}/application/delete/${app.applicationId}.html">Delete</a><br/>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<p>
					<a href="${pageContext.request.contextPath}/home.html">Home
						page</a>
				</p>
			</div>
		</div>
	</div>
<!-- jQuery -->
    <script src="/resources/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="/resources/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/resources/js/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/resources/js/nprogress.js"></script>
    <!-- Datatables -->
    <script src="/resources/js/jquery.dataTables.min.js"></script>
    <script src="/resources/js/dataTables.bootstrap.min.js"></script>
    <script src="/resources/js/dataTables.buttons.min.js"></script>
    <script src="/resources/js/buttons.bootstrap.min.js"></script>
    <script src="/resources/js/buttons.flash.min.js"></script>
    <script src="/resources/js/buttons.html5.min.js"></script>
    <script src="/resources/js/buttons.print.min.js"></script>
    <script src="/resources/js/dataTables.fixedHeader.min.js"></script>
    <script src="/resources/js/dataTables.keyTable.min.js"></script>
    <script src="/resources/js/dataTables.responsive.min.js"></script>
    <script src="/resources/js/responsive.bootstrap.js"></script>
    <script src="/resources/js/datatables.scroller.min.js"></script>
    <script src="/resources/js/jszip.min.js"></script>
    <script src="/resources/js/pdfmake.min.js"></script>
    <script src="/resources/js/vfs_fonts.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="/resources/js/custom.min.js"></script>

    <!-- Datatables -->
    <script>
      $(document).ready(function() {
        var handleDataTableButtons = function() {
          if ($("#datatable-buttons").length) {
            $("#datatable-buttons").DataTable({
              dom: "Bfrtip",
              buttons: [
                {
                  extend: "copy",
                  className: "btn-sm"
                },
                {
                  extend: "csv",
                  className: "btn-sm"
                },
                {
                  extend: "excel",
                  className: "btn-sm"
                },
                {
                  extend: "pdfHtml5",
                  className: "btn-sm"
                },
                {
                  extend: "print",
                  className: "btn-sm"
                },
              ],
              responsive: true
            });
          }
        };

        TableManageButtons = function() {
          "use strict";
          return {
            init: function() {
              handleDataTableButtons();
            }
          };
        }();

        $('#datatable').dataTable();
        $('#datatable-keytable').DataTable({
          keys: true
        });

        $('#datatable-responsive').DataTable();

        $('#datatable-scroller').DataTable({
          ajax: "js/datatables/json/scroller-demo.json",
          deferRender: true,
          scrollY: 380,
          scrollCollapse: true,
          scroller: true
        });

        var table = $('#datatable-fixed-header').DataTable({
          fixedHeader: true
        });

        TableManageButtons.init();
      });
    </script>
    <!-- /Datatables -->
</body>
</html> --%>