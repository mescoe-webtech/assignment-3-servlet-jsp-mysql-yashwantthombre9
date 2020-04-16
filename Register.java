

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String uname = request.getParameter("username");
		String pass = request.getParameter("password");
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/yashwant","root","root");
			PreparedStatement ps = con.prepareStatement("insert into credentials values (?,?)");
			ps.setString(1,uname);
			ps.setString(2, pass);
		
			
			int i = ps.executeUpdate();
			if(i>0) {
				out.println("You are registered Successfully!!");
				out.print("<a href='login.jsp'>Click Here for Login</a>");
			}
			else {
				out.print("Error!!");
			}
		}
		catch(Exception ee) {
			ee.printStackTrace();
		}
		
	}

}
