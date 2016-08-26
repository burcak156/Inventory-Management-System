<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<title>DataTables Bootstrap 3 example</title>

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
						<td></td>
						<td></td>
						<td></td>
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

	<script type="text/javascript">
	// For demo to fit into DataTables site builder...
	$('#example')
		.removeClass( 'display' )
		.addClass('table table-striped table-bordered');
</script>
</body>
</html>