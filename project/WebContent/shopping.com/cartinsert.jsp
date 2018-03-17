<%@page import="java.sql.*"%>
<%
	String watch = request.getParameterValues("watch");
	String shoe = request.getParameterValues("shoe");
	String shirt = request.getParameterValues("shirt");
	String sunglass = request.getParameterValues("sunglass");
	String backpack = request.getParameterValues("backpack");
	String trouser = request.getParameterValues("trouser");
	if (watch != null) {
		watch = "1";
	} else {
		watch = "0";
	}
	if (shoe != null) {
		shoe = "1";
	} else {
		shoe = "0";
	}
	if (shirt != null) {
		shirt = "1";
	} else {
		shirt = "0";
	}
	if (sunglass != null) {
		sunglass = "1";
	} else {
		sunglass = "0";
	}
	if (backpack != null) {
		backpack = "1";
	} else {
		backpack = "0";
	}
	if (trouser != null) {
		trouser = "1";
	} else {
		trouser = "0";
	}
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
		Statement st = con.createStatement();
		String sql = "insert into transrecord(watch,shoe,shirt,sunglass,backpack,trouser) values (?,?,?,?,?,?)";
		PreparedStatement pst = connection.prepareStatement(sql);
		pst.setString(2, watch);
		pst.setString(3, shoe);
		pst.setString(4, shirt);
		pst.setString(5, sunglass);
		pst.setString(6, backpack);
		pst.setString(7, trouser);
		int i = pst.executeUpdate();
		if (i > 0)
			out.println("Data is successfully inserted into database.");
		pst.close();
	} catch (Exception e) {
		System.out.println(e);
	}
%>
