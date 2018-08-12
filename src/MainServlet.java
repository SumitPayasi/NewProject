
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;


public class MainServlet extends HttpServlet 
{
	String name;
	
	static final String JDBC_DRIVER ="com.mysql.jdbc.Driver";        
    static final String DATABASE_URL = "jdbc:mysql://localhost/Forum";
    int no;
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		
		PrintWriter out=res.getWriter();
		res.setContentType("text/html");
		Connection conn=null;
		Statement stat=null;
		/*Cookie[] ck=req.getCookies();
		if(ck!=null)
		{
		for(int i=0;i<ck.length;i++)
		{
			if(ck[i].getName().equals("SessionId"))
			{
		  value=ck[i].getValue();
			}
			}
		}*/
		HttpSession session=req.getSession();
		String value=session.getAttribute("SessionId").toString();
		try
		{
	//		HttpSession session=req.getSession();
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DATABASE_URL,"root","12345");
			stat=conn.createStatement();
			System.out.println("Connection is established");
	    
			ResultSet result=stat.executeQuery("select questionno from questiontable");
	     
			while(result.next())
	     {
	    	 no=result.getInt("questionno");
	    	 
	     
	     }
	    no++;
			int a=stat.executeUpdate("insert into  questiontable values("+no+","+"'"+req.getParameter("question")+" By:-"+value+"'"+","+"'"+value+"'"+")");
		System.out.println("updated rows:"+a);
		RequestDispatcher view=req.getRequestDispatcher("Main.jsp");
		view.forward(req,res);
		}
		catch(SQLException e)
	{
		System.out.println("sql exception");
	}
	catch(ClassNotFoundException e)
	{
		System.out.println("class not found");
	}
		}
}
