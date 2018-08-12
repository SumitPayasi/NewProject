
import javax.servlet.http.HttpServlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;


public class LoginServlet extends HttpServlet
{
	int count=0;
//	boolean x=false;
	static final String JDBC_DRIVER ="com.mysql.jdbc.Driver";        
    static final String DATABASE_URL = "jdbc:mysql://localhost/Forum";
public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
	
	Connection conn=null;
	Statement stat=null;
	String y=req.getParameter("psd");
	
	try
	{
		Class.forName(JDBC_DRIVER);
		conn=DriverManager.getConnection(DATABASE_URL,"root","12345");
		stat=conn.createStatement();
		String str1=req.getParameter("uid");
		PreparedStatement pstmt= conn.prepareStatement("select paswd from login where type=2 and uid=?");
		pstmt.setString(1, str1);
		ResultSet result=pstmt.executeQuery();
		
		while(result.next())
		{
			String a=result.getString(1);	
		if(y.compareTo(a)==0)
		{
		
	//	x=true;
		++count;
			break;
		}      		 
		
					
		}
		pstmt.close();
		//System.out.println("Count="+count);
          
         if(count==1)
        {
        	 String sessionId=req.getParameter("uid");
        	 String sessionPsd=req.getParameter("psd");
           	HttpSession session=req.getSession();
          // session.putValue("SessionId", sessionId);
           session.setAttribute("SessionId", sessionId);
           session.setAttribute("SessionPsd", sessionPsd);
           //Cookie ck=new Cookie("SessionId",sessionId);
           //	ck.setPath("/QuestionServlet"); 
           //	res.addCookie(ck);  
        	 RequestDispatcher view=req.getRequestDispatcher("Main.jsp");
        	 view.forward(req, res);
        	//res.sendRedirect("MainJspServlet2");
			
        	
        }
         else
         {
        	    	 
        	        	 
        	 RequestDispatcher view=req.getRequestDispatcher("Userlogin.jsp");
        	 view.forward(req,res);
        	 //res.sendRedirect("Userlogin.jsp");
         }
         count =0;
               
					
	}
	
	catch(ClassNotFoundException e)
	{
		System.out.println("class is not found:");
		
	}
	catch(SQLException e)
	{
		System.out.println("sql exception is thrown");
		
	}
	
}
}
