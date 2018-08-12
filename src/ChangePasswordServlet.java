
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;




public class ChangePasswordServlet extends HttpServlet 
{


	static final String JDBC_DRIVER ="com.mysql.jdbc.Driver";        
    static final String DATABASE_URL = "jdbc:mysql://localhost/Forum";
public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
	PrintWriter out=res.getWriter();
	res.setContentType("text/html");
	Connection conn=null;
	Statement stat=null;
	HttpSession session=req.getSession();
	String userid=session.getAttribute("SessionId").toString();
	String st=req.getParameter("npsd");
	System.out.println("new password==>"+st);
	try
	{
		Class.forName(JDBC_DRIVER);
		conn=DriverManager.getConnection(DATABASE_URL,"root","12345");
		stat=conn.createStatement();
			ResultSet result=stat.executeQuery("select * from register where UserId='"+userid+"'");
	System.out.println("main query is executed:==>");
		while(result.next())
		{
			if((result.getString("Password").toString()).equals(req.getParameter("psd")))
			{
				int upd=stat.executeUpdate("update register set Password='"+st+"'where UserId='"+userid+"'");
				System.out.println("first query is executed:");
				int upd1=stat.executeUpdate("update login set paswd='"+req.getParameter("npsd")+"'where uid='"+userid+"'");
			 System.out.println("second query is executed:");
			 RequestDispatcher view=req.getRequestDispatcher("Home.html");
				view.forward(req,res);
			}
			else 
			{
				out.println("you entered wrong old password");
				
			}
		}
	
	}
		catch(SQLException e)
		{
			//System.out.println("sql exceptt");
		}
		catch(ClassNotFoundException e)
		{
			System.out.println("class is not founded:");
		}
	}
	}


