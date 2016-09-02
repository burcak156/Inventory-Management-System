<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>

<!-- CSS -->

<c:url
	value="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500"
	var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />
<c:url value="/resources/css/bootstrap.min.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />
<c:url value="/resources/css/font-awesome.min.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />
<c:url value="/resources/css/form-elements.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />
<c:url value="/resources/css/css/style.css" var="cssURL" />
<link rel="stylesheet" type="text/css" media="screen" href="${cssURL}" />


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>

<body>

	<!-- Top content -->
	<div class="top-content">

		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2 text">
						<h1>
							<strong>CBRT</strong> Login
						</h1>
						<div class="description">
							<p>
								<c:if test="${not empty error}">
									<div>${error}</div>
								</c:if>
								<c:if test="${not empty message}">
									<div>${message}</div>
								</c:if>
							</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 form-box">
						<div class="form-top">
							<div class="form-top-left">
								<h3>Login to System</h3>
								<p>Enter your username and password to log on:</p>
							</div>
							<div class="form-top-right"></div>
						</div>
						<div class="form-bottom">
							<form name='login' role="form"
								action="<c:url value='/loginPage'/>" method="post"
								class="login-form">
								<div class="form-group">
									<label class="sr-only" for="form-username">Username</label> <input
										type="text" name='username' placeholder="Username..."
										class="form-username form-control" id="form-username">
								</div>
								<div class="form-group">
									<label class="sr-only" for="form-password">Password</label> <input
										type="password" name='password' placeholder="Password..."
										class="form-password form-control" id="form-password">
								</div>
								<button name="submit" type="submit" class="btn">Sign
									in!</button>
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>


	<!-- Javascript -->
	<script src="/resources/js/jquery-1.11.1.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/jquery.backstretch.min.js"></script>
	<script src="/resources/js/scripts.js"></script>
	
	
	
	<!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
</body>
</html>