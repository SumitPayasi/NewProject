
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class LogOutServlet extends HttpServlet 
{
	//Cookie k;
	//String name;
	//String value;
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		PrintWriter out=res.getWriter();
		res.setContentType("text/html");
		out.println("<html><head>");
		out.println("<script language=javaScript> javascript:window.history.forward(1)</script><head><html>");
		HttpSession session=req.getSession();
		session.invalidate();
		
		RequestDispatcher view=req.getRequestDispatcher("Home.html");
		view.forward(req,res);
		//res.sendRedirect("Home.html");
		
	}

}
