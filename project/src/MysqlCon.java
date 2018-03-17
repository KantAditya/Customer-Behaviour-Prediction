
import java.io.*;
import java.sql.*;  
class MysqlCon{  
public static void main(String args[]){ 
	int confidence=60;
try{  
Class.forName("com.mysql.jdbc.Driver");  

//establishing connection with databases

Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/project","root","");

//here sonoo is database name, root is username and password  

Statement stmt=con.createStatement();  

ResultSet rows=stmt.executeQuery("select TID from transrecord");

// finding the no of rows in table

	while(rows.next()) {
		int row=rows.getInt(1);
	}
	rows.last();
	int rowcount=rows.getRow();
//	System.out.println(rowcount);
	int[][] a=new int[rowcount+1][8];
ResultSet rs=stmt.executeQuery("select * from transrecord");  

while(rs.next())  {
	
	//retrieve value from table and store in array
	
	for(int i=1;i<=rowcount;i++) {
		rs.absolute(i);
			for(int j=2;j<=7;j++) {
				a[i][j]=rs.getInt(j);
		}
			
// printing tables value for checking purpose

//System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+"	 "+rs.getInt(4)+"  "+rs.getString(5)+"  "+rs.getString(6));
	}
	
//output printing
	
for(int i=1;i<=rowcount;i++) {
	for(int j=2;j<=7;j++) {
System.out.print(a[i][j]+" ");
}
	System.out.println();
}
}
//storing console output to text file

File file=new File("C:\\Users\\Abhay\\eclipse-workspace\\firstproject\\src\\out.txt");
FileWriter fw=new FileWriter(file);
PrintWriter pw=new PrintWriter(fw);
for(int i=1;i<=rowcount;i++) {
	for(int j=2;j<=7;j++) {
		pw.print(a[i][j]+" ");
}
		pw.println();
}
pw.close();

File file1=new File("C:\\Users\\Abhay\\eclipse-workspace\\firstproject\\src\\config.txt");
FileWriter fw1=new FileWriter(file1);
PrintWriter pw1=new PrintWriter(fw1);
	pw1.println("6");
	pw1.println(rowcount);
	pw1.println(confidence);
pw1.close();


con.close();  
}catch(Exception e){ System.out.println(e);}  
}  
}
