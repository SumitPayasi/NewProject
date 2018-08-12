<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%session=request.getSession();
String value=session.getAttribute("SessionId").toString(); %>
<html>
  <head><script LANGUAGE="JavaScript">
<!--//

var ThisPageNumber=20;
//-->
    </script>
<script LANGUAGE="JavaScript" src="PostAnswerServlet2.jsp">
<!--//

//-->
    </script>


<SCRIPT LANGUAGE="JAVASCRIPT">
<!--//
function goToPage2(){
PageIndex2=document.form2.quest1.selectedIndex

if (document.form2.quest1.options[PageIndex2].value != "none")

{

location = document.form2.quest1.options[PageIndex2].value

}

}
//-->

</SCRIPT>
  
    <base href="<%=basePath%>">
    
    <title>My JSP 'Main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
 <head> <meta http-equiv="content-type" content="text/html; charset=utf-8" />
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
			
			<li><a href="Gallery2.jsp" title="">Gallery</a></li>
			<li><a href="About2.jsp" title="">About</a></li>
			<li><a href="LogOutServlet2" title="">LogOUT</a></li>
		    <li><a href="ViewProfile2.jsp" title="">View profile</a></li>
		</ul>
  </div> 
    <div id="logo">
		<h1 align="center">&nbsp;</h1>
		<p align="center">&nbsp;</p>
		<div align="center"><strong><span class="style5">Welcome <%=value%><br></span></strong></div>
	  </div>   
</div>
<!-- content begins -->
 <div id="main">
   <div id="top">
     <div id="left">
       <p align="center" class="style6">&nbsp;</p>
      <!--  <p align="center" class="style6">Submit Your Details</p>
    --><base href="<%=basePath%>">
    
    <title>My JSP 'Register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


<!-- header ends -->
  <h5>
  <center></center></h5>  <body><h5> 
  <h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <a href="ChangePassword2.jsp">change password</a></h5>
  <form name="form2" method =post action=MainServlet2>
 <h5> <br><br>If you want to give answer the goto following link<br>
  </h5><center><br>
  <h5>
  <br> Post Your Question&nbsp;   <textarea name=question></textarea>
</h5><input type=submit></center><br></form>
    <br><br>
     <%!String name;
		static final String JDBC_DRIVER ="com.mysql.jdbc.Driver";        
    static final String DATABASE_URL = "jdbc:mysql://localhost/Forum"; %>
    <%Connection conn=null;
		Statement stat=null; %>
		<%Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DATABASE_URL,"root","12345");
			stat=conn.createStatement();
			ResultSet result=stat.executeQuery("select * from questiontable");
			
			out.println("<form method=post action=PostAnswerServlet2.jsp>");
		%><h5>
		If you want to give answer </h5>
  			 <% out.println("<h5>Select the Question</h5>"); %>
			<%out.println("<select name=quest1 selected=selected size=1 onchange=goToPage2()><option>--select the question--</option>");%>		<% while(result.next())
			{
				out.println("<option value="+result.getInt("questionno")+">"+result.getString("question")+"</option>");
			}
			out.println("</select><br><br>");
			out.println("<center><input type=submit value=Post></center></form>"); %>
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