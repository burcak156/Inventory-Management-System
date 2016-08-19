<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GridView for Java - jQuery Data Table</title>
<link href="/resources/css/demo_page.css" rel="stylesheet" type="text/css" />
<link href="/resources/css/demo_table.css" rel="stylesheet" type="text/css" />       
<link href="/resources/css/demo_table_jui.css" rel="stylesheet" type="text/css" />

<link href="/resources/css/jquery-ui-1.8.24.custom.css" rel="stylesheet" type="text/css" media="all" />
<script src="/resources/js/jquery.js" type="text/javascript"></script>
<script src="/resources/js/jquery.dataTables.js" type="text/javascript"></script>
 <script type="text/javascript">
        $(document).ready(function () {
            $("#companies").dataTable({
                "sPaginationType": "full_numbers",
                "bJQueryUI": true               
            });
        });
 </script>
</head>
<body id="dt_example">
<div id="container">
<h1>Gridview for Java using jQuery DataTable plugin</h1>
<div id="demo_jui">
<table id="companies" class="display">
		            <thead>
		                <tr>
		                    <th><u>Country</u></th>
		                    <th><u>Revenue</u></th>
		                    <th><u>Sales_Manager</u></th>
		                    <th><u>Year</u></th>
		                </tr>
		            </thead>
		            <tbody>
		          		<% for(SalesReport c: FetchDataFromDb.GetSalesData()){ %>
						  <tr>
						    <td><%=c.getCountry()%></td>
						    <td><%=c.getRevenue()%></td>
						    <td><%=c.getSalesmanager()%></td>
						    <td><%=c.getYear()%></td>
						  </tr>
						<% } %>
		            </tbody>
		        </table>
		        </div>
 </div>
</body>
</html>






 --%>














































<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
</html>