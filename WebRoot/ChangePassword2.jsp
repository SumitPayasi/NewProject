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
            function isEmpty(s)
            {
                var i;
                if((s==null)||s.length==0)
                {
                    return true;
                }
                for(i=0;i<s.length;i++)
                {
                    var c=s.charAt(i);
                    if(whitespace.indexOf(c)==-1)
                        return false;
                }
                return true;
            }
            
            function validate()
            {
            
              if(isEmpty(document.LoginForm.psd.value))
                {
                    alert("Error: password is required");
                    document.LoginForm.psd.focus();
                    return false;
                }
                else if(isEmpty(document.LoginForm.npsd.value))
                {
                    alert("Error: please new enter password");
                    document.LoginForm.npsd.focus();
                    return false;
                }
                 else if(isEmpty(document.LoginForm.cpsd.value))
                {
                    alert("Error: please re-enter password");
                    document.LoginForm.psd.focus();
                    return false;
                }
                    else  if( document.LoginForm.npsd.value!= document.LoginForm.cpsd.value)
            {
        alert("The two passwords do not match");
           return (false);
              }
              return true;
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
			<li><a href="Gallery2.jsp" title="">Gallery</a></li>
			<li><a href="About2.jsp" title="">About</a></li>
			<li><a href="LogOutServlet2" title="">Logout</a></li>
		</ul>
  </div> 
    <div id="logo">
		<h1 align="center">&nbsp;</h1>
		<p align="center">&nbsp;</p>
		<div align="center"><strong><span class="style5">Change&nbsp; Password <br> </span></strong></div>
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
      <h5>
  <center> Change Password:-
  </center></h5>  <body><h5>
       <% Connection conn=null;
	Statement stat=null;%>
    <%Class.forName("com.mysql.jdbc.Driver");
    conn=DriverManager.getConnection("jdbc:mysql://localhost/Forum","root","12345");
		stat=conn.createStatement();%>
		<form action="ChangePasswordServlet2" id="LoginForm" name="LoginForm" method="post" onsubmit="return validate();">
		<table width="430" height="120" align="center" border="0" cellpadding="10" cellspacing="0">
	 <tr><td>enter old password</td><td><input type="password" name="psd"></td></tr>	
		<tr><td>enter new password</td><td><input type="password" name="npsd"></td></tr>
		<tr><td>enter confirm password</td><td><input type="password" name="cpsd"></td></tr>
		<tr><td></td><td align="right"><input type=submit value="CHANGE PASSWORD"></td></tr>
		</table>
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
  