<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%session=request.getSession();
		String value=session.getAttribute("SessionId").toString(); %>
  <html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Metamorphosis Design Free Css Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {
	color: #CC0033;
	font-weight: bold;
	font-size: xx-large;
	background-color: #CCCCCC;
}
.style5 {
	font-size: xx-large;
	color: #FFFFFF;
}
.style6 {
	font-size: 24px;
	font-style: italic;
	font-weight: bold;
}
.style7 {font-size: 24px}
-->
</style>
</head>
<body>
<div id="content">
<div id="back">
<!-- header begins -->
<div id="header">
    <div id="menu">
		<ul>
			<li><a href="Home.html" title="">Home</a></li>
			<li></li>
			<li><a href="Gallery2.jsp" title="">Gallery</a></li>
			<li><a href="LogOutServlet2" title="">Logout</a></li>
			<li><a href="Contact2.jsp" title="">Contact</a></li>
			<li><a href="ViewProfile2.jsp" title="">view profile</a></li>
		</ul>
  </div> 
    <div id="logo">
		<h1 align="center">&nbsp;</h1>
		<p align="center">&nbsp;</p>
		<div align="center"><strong><span class="style5">Welcome <%=value%><br></span></strong></div>
	  </div>   
</div>

<!-- header ends -->
<!-- content begins -->
 <div id="main">
   <div id="top">
     <div id="left">
       <p align="center" class="style6">&nbsp;</p>
       <p align="center" class="style6"></p>
      
  
 <h5>
  <center></center></h5>  <body><h5>
 <%!String name;
	
	static final String JDBC_DRIVER ="com.mysql.jdbc.Driver";        
    static final String DATABASE_URL = "jdbc:mysql://localhost/Forum"; %>
 <%
 Connection conn=null;
		Statement stat=null; %>
 <% Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DATABASE_URL,"root","12345");
			stat=conn.createStatement();
			//out.println("<html><body>");
			
		//	ResultSet result=stat.executeQuery("select questionno from questiontable where question="+"'"+request.getParameter("quest1")+"'");
		//	System.out.println("executable::>");
		//	while(result.next())
		// {
			
		//	System.out.println(result.getInt("questionno"));
			
		//	}
		//	System.out.println("locally generated"+a);
	     int a=Integer.parseInt(request.getParameter("quest1"));	
		//	String strr=request.getParameter("quest1");
			System.out.println("vlaue of a==>"+a);
			session=request.getSession();
		//	session.setAttribute("quest1",strr);
			session.setAttribute("no",a);
			out.println("<form method=post  action=AnswerServlet2>");
			//out.println("Welcome "+value+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a  href=LogOutServlet2>LogOut</a> <br>");
			ResultSet res1=stat.executeQuery("select answer from answertable where questionno="+a);
			System.out.println("Query is executed:");
			out.println("<h5>Previous Answers are:<select name=ans1 size=3 width=30>");
			int no=1;
			while(res1.next())
			{
				out.println("<option>"+no+"."+res1.getString("answer"));
			no++;
			}
			out.println("</select><br><br></h5>");
			out.println("<br><br><h5> Write Your Answer"+"<input type=text name=answer1><br><br><center><input type=submit value=Post></h5></center></form></body></html>");
			%>
       </div>
	<div style="clear: both;"></div>
<!--content ends -->
<!--footer begins -->


</div>
<div id="bottom"></div>
</div>
</div>
<div id="footer">
<p>Copyright &copy; 2010. Designed by Students of RIT</p>
</div>
</div>
<!-- footer ends-->
</body>
</html>