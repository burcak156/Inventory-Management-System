<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<h1>List of teams</h1>
<p>Here you can see the list of the teams, edit them, remove or update.</p>
<table border="1px" cellpadding="0" cellspacing="0" >
<thead>
<tr>
<th width="10%">id</th><th width="15%">name</th><th width="10%">code</th><th width="10%">actions</th>
</tr>
</thead>
<tbody>
<c:forEach var="application" items="${applications}">
<tr>
	<td>${application.applicationId}</td>
	<td>${application.applicationName}</td>
	<td>${application.applicationCode}</td>
	<td>
	<a href="${pageContext.request.contextPath}/application/edit/${application.applicationId}.html">Edit</a><br/>
	<a href="${pageContext.request.contextPath}/application/delete/${application.applicationId}.html">Delete</a><br/>
	</td>
</tr>
</c:forEach>
</tbody>
</table>

<p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>

	
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
    <script src="/resources/js/dataTables.scroller.min.js"></script>
    <script src="/resources/js/jszip.min.js"></script>
    <script src="/resources/js/pdfmake.min.js"></script>
    <script src="/resources/js/vfs_fonts.js"></script>


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