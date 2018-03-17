<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>HIGHLANDER | Shopping.com</title>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/small-business.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="../../index.jsp">Shopping.Com</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="../shirts.html">Back
						to Menu</a></li>
				<li class="nav-item"><a class="nav-link" href="../../login.jsp">Login</a></li>
				<li class="nav-item"><a class="nav-link"
					href="../../signup.jsp">Signup</a></li>
				<li class="nav-item"><a class="nav-link" href="../../cart.jsp">Cart</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container">
		<div class="row my-4">
			<div class="col-lg-8">
				<img class="img-fluid rounded" src="02.jpg" alt="">
			</div>
			<div class="col-lg-4">
				<h1>HIGHLANDER Men Olive Green Slim Fit Camouflage Printed
					Casual Shirt</h1>
				<h3>Original Price: Rs. 1149(50% OFF)</h3>
				<h2>Rs. 574</h2>
				<p>Olive green camouflage printed casual shirt, has a cutaway
					collar, button placket, 1 pocket, long sleeves, curved hem; 100%
					cotton; Machine-wash.</p>
				<a class="btn btn-success btn-lg" href="../../cart.jsp">Add to
					Cart</a>
			</div>
		</div>
		<div class="card text-white bg-secondary my-4 text-center">
			<div class="card-body">
				<h2 class="text-white m-0">SIMILAR PRODUCTS</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<h4 class="card-title">Roadster</h4>
						<p class="card-text">Men Black And Grey Regular Fit Checked
							Casual Shirt</p>
					</div>
					<div class="card-footer">
						<a href="../shirt01html/shirt01.jsp" class="btn btn-success">More
							Info</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<h4 class="card-title">ether</h4>
						<p class="card-text">Men BLUE ANTI MICROBIAL FILAFIL Slim Fit
							Shirt</p>
					</div>
					<div class="card-footer">
						<a href="../shirt03html/shirt03.jsp" class="btn btn-success">More
							Info</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 mb-4">
				<div class="card h-100">
					<div class="card-body">
						<h4 class="card-title">WROGN</h4>
						<p class="card-text">Men Blue And White Slim Fit Striped
							Casual Shirt</p>
					</div>
					<div class="card-footer">
						<a href="../shirt04html/shirt04.jsp" class="btn btn-success">More
							Info</a>
					</div>
				</div>
			</div>
		</div>
		<div class="card text-white bg-secondary my-4 text-center">
			<div class="card-body">
				<h2 class="text-white m-0">FREQUENTLY BOUGHT TOGETHER</h2>
			</div>
		</div>
		<div class="row">
			<%
				String st = new String();
				String s = "";
				String configFile = "C:\\Users\\Abhay\\eclipse-workspace\\firstproject\\src\\config1.txt";
				try {
					File file = new File(configFile);
					BufferedReader data = new BufferedReader(new FileReader(file));
					while ((st = data.readLine()) != null) {
						s = s + st;
					}
					char x = '3';
					char a;
					int n = 0;
					for (int i = 1; i < s.length(); i++) {
						if (s.charAt(i) == ' ' || s.charAt(i) == x) {
						} else {
							a = s.charAt(i);
							n = Character.getNumericValue(a);
							Class.forName("com.mysql.jdbc.Driver");
							// establishing connection with databases
							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
							String sql = "select s.* from product p,watch s where p.pid=" + n + " && p.id=s.id";
							PreparedStatement ps = con.prepareStatement(sql);
							ResultSet rs = ps.executeQuery();
							while (rs.next()) {
								String filename = rs.getString(2);
								//int id=rs.getInt(1);
								Blob blob = rs.getBlob(3);
								FileOutputStream out1 = new FileOutputStream(
										"C:\\Users\\Abhay\\eclipse-workspace\\firstproject\\WebContent\\images\\"
												+ filename);
								//	byte byteArray[] = blob.getBytes(1, (int) blob.length());
								out1.write(blob.getBytes(1, (int) blob.length()));
								out1.close();
			%>
			<div class="col-lg-3 col-md-6 mb-4">
				<div class="card">
					<img
						src="C:\\Users\\Abhay\\eclipse-workspace\\firstproject\\WebContent\\images\\<%=filename%>" />
				</div>
			</div>
			<%
				}
							rs.close();
						}
					}

				} catch (SQLException e) {
					e.printStackTrace();
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</div>
	</div>
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Shopping.Com 2018| All Rights
				Reserved | Contact Us: +91 69696 96969</small>
		</div>
	</div>
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>