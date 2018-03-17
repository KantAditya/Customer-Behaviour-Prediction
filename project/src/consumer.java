
import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**

 */
@WebServlet("/consumer")
public class consumer extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public consumer() {
        // TODO Auto-generated constructor stub
    }
    @Override
    public  void init() throws ServletException{
    	super.init();
    	result.main(null);
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String connectionURL = "jdbc:mysql://localhost:3306/project";
		  Connection connection=null;
		  response.setContentType("text/html");
		  PrintWriter out=response.getWriter();
		  //get the variables entered in the form
		  String username = request.getParameter("username");
		  String password= request.getParameter("password");
		 
		  try {
		  // Load the database driver
		  Class.forName("com.mysql.jdbc.Driver");
		  // Get a Connection to the database
		  connection = DriverManager.getConnection
		  (connectionURL, "root", ""); 
		  //Add the data into the database
		  String sql = 
		  "insert into Login values (?,?)";
		  PreparedStatement pst = 
		  connection.prepareStatement(sql);
		  pst.setString(1, username);
		  pst.setString(2, password);

		  int i= pst.executeUpdate();
		  if(i>0)
			  out.print("successfil");
		  pst.close();
		  }
		  catch(Exception e){
			  System.out.println(e);
		  }
		  finally {
		  // Always close the database connection.
		  try {
		  if (connection != null) connection.close();
		  }
		  catch (SQLException e) {
			  System.out.println(e);
		  }
		  }
	}


}
