<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- iCheck -->
    <link href="/resources/css/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="/resources/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/buttons.bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/responsive.bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/scroller.bootstrap.min.css" rel="stylesheet" type="text/css">
</head>
<body>
			<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Default Example <small>Users</small></h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <p class="text-muted font-13 m-b-30">
                      DataTables has most features enabled by default, so all you need to do to use it with your own tables is to call the construction function: <code>$().DataTable();</code>
                    </p>
                    <table id="datatable" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>Name</th>
                          <th>Position</th>
                          <th>Office</th>
                          <th></th>
                          <th></th>
                          <th></th>
                        </tr>
                      </thead>

                      <tbody>
                      <c:forEach items="${apps}" var="apps">
                        <tr>
                          <td>${apps.appName}</td>
                          <td>${apps.appCode}</td>
                          <td>${apps.applicationId}</td>
                          <td></td>
                          <td></td>
                          <td></td>
                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>
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