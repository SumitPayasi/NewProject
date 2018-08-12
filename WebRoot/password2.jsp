<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Contact.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
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

<h5>
  <center></center></h5>  <body><h5>
<%! boolean bl=false;
	static final String JDBC_DRIVER ="com.mysql.jdbc.Driver";        
    static final String DATABASE_URL = "jdbc:mysql://localhost/Forum";%>
<div id="content">
<div id="back">
<!-- header begins -->
<div id="header">
    <div id="menu">
		<ul>
			<li><a href="Home.html" title="">Home</a></li>
			<li></li>
			<li><a href="Gallery2.jsp" title="">Gallery</a></li>
			<li><a href="About2.jsp" title="">About</a></li>
			<li><a href="Contact2.jsp" title="">Contact</a></li>
			<li>&nbsp; 
		<br></li>
		</ul>
  </div> 
    <div id="logo">
		<p align="center">&nbsp;</p>
		<div align="center"><strong><span class="style5">PASSWORD<br> </span></strong></div>
	  </div>   
</div>

<!-- header ends -->
<!-- content begins -->

 <div id="main">
   <div id="top">
     <div id="left">
      <p align="center" class="style6">&nbsp;</p>
       <p align="center" class="style6"></p>   </div>
   
    <%
     String userid="hemendra1";
			String password="12345";
			
		Connection conn=null;
		Statement stat=null;
		     Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DATABASE_URL,"root","12345");
				stat=conn.createStatement();	
			ResultSet result=stat.executeQuery("select * from register where HintQuest="+"'"+request.getParameter("quest")+"'"+"and UserId='"+request.getParameter("uid")+"'");
         		System.out.println("query is executed:");
         		while(result.next())
{
        System.out.println("value==>"+result.getString("HntAns")+" and"+request.getParameter("ans"));
	 if(request.getParameter("ans").equals(result.getString("HntAns")))
	{
	userid=result.getString("UserId");
	password=result.getString("Password");
	bl=true;
	System.out.println("entered into loop:");
	break;
	}
}
			
   if(bl)
   {
	 out.println("\t&nbsp;&nbsp;your UserId is "+userid);
	out.println("<br><br>\t&nbsp;&nbsp;your password is "+password);
	
	  bl=false;
   }
   else if(!bl)
   {
	   out.println("&nbsp;&nbsp;you entered a wrong answer:");
   }%>
  <%out.println("<html><body><br><br><center><a href=Userlogin.jsp>Go To Login </a></center></body></html>");%>
	<div style="clear: both;"></div>
<!--content ends -->
<!--footer begins -->
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