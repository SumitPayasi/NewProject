
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;


public class DeleteUserServlet extends HttpServlet 
{
	

	static final String JDBC_DRIVER ="com.mysql.jdbc.Driver";        
    static final String DATABASE_URL = "jdbc:mysql://localhost/Forum";
public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
	Connection conn=null;
	Statement stat=null;
	HttpSession session=req.getSession();
	String value=session.getAttribute("SessionId").toString();
	String userid=req.getParameter("users");
	try
	{
		Class.forName(JDBC_DRIVER);
		conn=DriverManager.getConnection(DATABASE_URL,"root","12345");
		stat=conn.createStatement();
	int b=stat.executeUpdate("delete from login where uid="+"'"+userid+"'");
	int a=stat.executeUpdate("delete from register where UserId="+"'"+userid+"'");
	res.sendRedirect("Admin.jsp");
	}
		catch(SQLException e)
		{
			System.out.println("sql exceptt");
		}
		catch(ClassNotFoundException e)
		{
			System.out.println("class is not founded:");
		}
	}
	}
