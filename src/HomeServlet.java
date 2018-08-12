

import javax.servlet.http.HttpServlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;

public class HomeServlet extends HttpServlet {
	static final String JDBC_DRIVER ="com.mysql.jdbc.Driver";        
    static final String DATABASE_URL = "jdbc:mysql://localhost/Forum";
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
            PrintWriter out=res.getWriter();				
			Connection conn=null;
			Statement stat=null;
		
		String	name=req.getParameter("Name");
		System.out.println(name);
		String	uid=req.getParameter("uid");
		System.out.println(uid);
		String psd=req.getParameter("psd");
		System.out.println(psd);
	
		String sex=req.getParameter("sex");
		System.out.println(sex);
		String hintquest=req.getParameter("hintquest");
		System.out.println(hintquest);
		String hintans=req.getParameter("hintans");
		System.out.println(hintans);
		String branch=req.getParameter("branch");
		System.out.println(branch);
		String 	address=req.getParameter("address");
		System.out.println(address);
		String	email=req.getParameter("email");
		System.out.println(email);	
		String str1=req.getParameter("date");
			String str2=req.getParameter("month");
			String str3=req.getParameter("year");
			String st="/";
			String str=str3+st+str2+st+str1;
			System.out.println("Date of birth"+str);
			try
			{
				Class.forName(JDBC_DRIVER);
				conn=DriverManager.getConnection(DATABASE_URL,"root","12345");
				stat=conn.createStatement();
				System.out.println("Connection is established");
			int a=stat.executeUpdate("insert into register values('"+name+"','"+uid+"','"+psd+"','"+str+"','"+sex+"','"+hintquest+"','"+hintans+"','"+branch+"','"+address+"','"+email+"',"+req.getParameter("mobno")+")");
			System.out.println("first is executed:");
			int b=stat.executeUpdate("insert into login values('"+uid+"','"+psd+"',"+2+")");
			System.out.println("user is registered successfully");
			
			}
				catch(SQLException e)
			{
				System.out.println("sql exception");
			}
			catch(ClassNotFoundException e)
			{
				System.out.println("class not found");
			}
			
			RequestDispatcher view=req.getRequestDispatcher("Home.html");
			view.forward(req,res);
			
			}
}
