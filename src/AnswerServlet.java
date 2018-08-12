
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

import java.sql.*;



public class AnswerServlet extends HttpServlet 
{
	String name;
	
	
	static final String JDBC_DRIVER ="com.mysql.jdbc.Driver";        
    static final String DATABASE_URL = "jdbc:mysql://localhost/Forum";
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		
		String name;
	//	String value="sdfae";
		PrintWriter out=res.getWriter();
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
		}
		*/
		HttpSession session=req.getSession();
		String value=session.getAttribute("SessionId").toString();
	//	String str=session.getAttribute("quest1").toString();
		String str1=session.getAttribute("no").toString();
		try
		{
			
			
	//		HttpSession session=req.getSession();
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DATABASE_URL,"root","12345");
			stat=conn.createStatement();
	
		//System.out.println("string is detected"+str);	
		System.out.println("Connection is established");
	 	System.out.println("questionno is detected:"+str1);
	
	 int a=stat.executeUpdate("insert into  answertable values("+"'"+req.getParameter("answer1")+" By:-"+value+"'"+","+str1+","+"'"+value+"'"+")");
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
