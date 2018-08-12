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
  <SCRIPT type="text/javascript">
            <!-- Define white spaces-->
            var whitespace=" \t\n\r";
            function validate()
            {
            if( document.LoginForm.users.value=="")
  {
  alert("You must select a user to delete");
  return (false);
  }	
 else
  if(document.LoginForm1.query.value==0)
  {
  alert("You must select a query to delete");
  return (false);
  }	
 else if
 {
  
  }
  }
  </script>
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
<h5>
  <center></center></h5>  <body><h5>
<div id="content">
<div id="back">
<!-- header begins -->
<div id="header">
    <div id="menu">
		<ul>
			<li><a href="Home.html" title="">Home</a></li>
			<li></li>
			<li><a href="#" title="">Gallery</a></li>
			<li><a href="#" title="">About</a></li>
			<li><a href="LogOutServlet2" title="">Logout</a></li>
		</ul>
  </div> 
    <div id="logo">
		<h1 align="center">&nbsp;</h1>
		<p align="center">&nbsp;</p>
		<div align="center"><strong><span class="style5">Welcome&nbsp;<%=value%><br> </span></strong></div>
	  </div>   
</div>

<!-- header ends -->
<!-- content begins -->
 <div id="main">
   <div id="top">
     <div id="left">
       <p align="center" class="style6">&nbsp;</p>
       <!-- <p align="center" class="style6"></p>
     -->
 <h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="ChangePassword2.jsp">change password</a></h5>
  <form  method =post action=DeleteUserServlet2 id="LoginForm" name="LoginForm" onsubmit="return validate();">
   <h5><br>
  </h5> <% Connection conn=null;
	Statement stat=null;%>
    <%Class.forName("com.mysql.jdbc.Driver");
    conn=DriverManager.getConnection("jdbc:mysql://localhost/Forum","root","12345");
		stat=conn.createStatement();
		ResultSet result=stat.executeQuery("select uid from login where type=2");
    System.out.println("query is executed:");
    %><h5>select user to be deleted:</h5>
    <select name=users size=1><option value="">--select the user--</option>
   <% while(result.next())
	{%>
	<%out.println("<option value="+result.getString("uid")+">"+result.getString("uid")+"</option>");%>
	<%}%>
	</select><br><br><center><input type=submit value="DELETE USER"></center></form>
       <form  method =post action=DeleteQueryServlet2 id="LoginForm1" name="LoginForm1" onsubmit="return validate();">
    <%
	ResultSet result1=stat.executeQuery("select * from questiontable");
    
    %><h5>select query to be deleted:</h5>
    <select name=query size=1>
    <option value=0>--select the question--</option>
   <% while(result1.next())
	{%>
		<%out.println("<option value="+result1.getInt("questionno")+">"+result1.getString("question")+"</option>");%>
	<%}%>
	</select><br><br><p align="center"><input type=submit value="DELETE QUERY"> 
          </form>
  
 
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