<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Image show</title>
</head>
<body>
	<%
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			// establishing connection with databases

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
			String sql="select * from backpack";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				String filename=rs.getString(2);
				//int id=rs.getInt(1);
				Blob blob = rs.getBlob(3);
				FileOutputStream out1=new FileOutputStream("C:\\Users\\Abhay\\eclipse-workspace\\firstproject\\WebContent\\images\\"+ filename);
			//	byte byteArray[] = blob.getBytes(1, (int) blob.length());
				out1.write(blob.getBytes(1, (int) blob.length()));
				System.out.println("Successfully stored");
				out1.close();
		%>
		<table>
				<tr>
				<td><image src="C:\\Users\\Abhay\\eclipse-workspace\\firstproject\\WebContent\\images\\<%=filename %>"/></td>
				
				</tr>
		
		
		</table>	
		<% 
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}
		%>
</body>
</html>