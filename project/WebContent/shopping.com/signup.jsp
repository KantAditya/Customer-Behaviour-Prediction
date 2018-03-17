<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Signup | Shopping.Com</title>
<link href="shirtshtml/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="shirtshtml/css/heroic-features.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="index.jsp">Shopping.Com</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="cart.jsp">Cart</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container">
		<header
			class="jumbotron my-4 masthead bg-success text-white text-center">
		<div class="container">
			<div class="panel panel-primary col-xs-6 col-xs-offset-3">
				</br>
				<div class="container panel-heading">
					<h1>SIGNUP</h1>
				</div>
				<div class="container panel-body">
					<h3 class="text-warning">Login to continue shopping</h3>
					<form method="GET" action="/firstproject/consumer">
						<div class="form-group">
							<label for="username">Name:</label> <input type="text"
								class="form-control" name="username">
						</div>
						<div class="form-group">
							<label for="email">Email:</label> <input type="email"
								class="form-control" name="email">
						</div>
						<div class="form-group">
							<label for="password">Password:</label> <input type="password"
								class="form-control" name="password">
						</div>
						
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
				</div>
				<div class="container panel-footer">
					<p>
						Already have an account? Then go to <a href="login.jsp"
							class="ac"><button class="btn btn-default">Login</button></a>
					</p>
				</div>
				</br>
			</div>
		</div>
		</header>
	</div>
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Shopping.Com 2018| All Rights
				Reserved | Contact Us: +91 69696 96969</small>
		</div>
	</div>
	<!-- Bootstrap core JavaScript -->
	<script src="shirtshtml/vendor/jquery/jquery.min.js"></script>
	<script src="shirtshtml/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>