
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class LoginAdminServlet extends HttpServlet
{
	boolean x=false;
	static final String JDBC_DRIVER ="com.mysql.jdbc.Driver";        
    static final String DATABASE_URL = "jdbc:mysql://localhost/Forum";

	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		
		Connection conn=null;
		Statement stat=null;
		
		try
		{
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DATABASE_URL,"root","12345");
			stat=conn.createStatement();
			ResultSet result=stat.executeQuery("select * from login where type=1");

			while(result.next())
			{
			 		
			if((req.getParameter("uid").equals(result.getString("uid")))&(req.getParameter("psd").equals(result.getString("paswd"))))
			{
			
			x=true;
			}      		 
			
						
			}
			
	          
	         
	    /*    {
	        	res.sendRedirect("Adminlogin.jsp");
				
	        	
	        }*/
	        if(x!=false)
	         {
	        	 
	        	 
	        	 String sessionId=req.getParameter("uid");
	        	HttpSession session=req.getSession();
	        	session.setAttribute("SessionId",sessionId);
//	        	 Cookie ck=new Cookie("SessionId1",);
	//        	 res.addCookie(ck);        	 
	        	 res.sendRedirect("Admin.jsp");
	             	        	 
	         }
	        else
	        {
	        	res.sendRedirect("Adminlogin.jsp");
	        }
	        x=false;
			
				
		}
		catch(SQLException e)
		{
			System.out.println("sql error:");
		}
catch(ClassNotFoundException e)
{
	System.out.println("class not found:");
}
	}
}