<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
			<li><a href="Contact2.jsp" title="">Contact</a></li>
		</ul>
  </div> 
    <div id="logo">
		<h1 align="center">&nbsp;</h1>
		<p align="center">&nbsp;</p>
		<div align="center"><strong><span class="style5">USER LOGIN </span></strong></div>
	  </div>   
</div>

<!-- header ends -->
<!-- content begins -->
 <div id="main">
     <div id="top">
       <div id="left">
 <p align="center" class="style6">&nbsp;
          <p align="center" class="style6">
          
          
<form>
			  <table border="1">
<%
String u=(String)session.getAttribute("SessionId");
String p=(String)session.getAttribute("SessionPsd");
try {
				      Class.forName("com.mysql.jdbc.Driver"); 
				     //out.println("driver loaded");
				      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Forum","root","12345"); 
				      ResultSet rs =null;
				      Statement s = con.createStatement(); 
				      String sql = "SELECT * FROM register"+ 
				        " WHERE UserId='" + u + "'" + 
				        " AND Password='" + p + "'";
				       rs = s.executeQuery(sql);
				    
				      if (rs.next()) 
	                              {
                                     
                                   String sql1 = "SELECT Name FROM register"+ 
				        " WHERE  UserId='" + u + "'" + 
				        " AND Password='" + p + "'";
                                       rs = s.executeQuery(sql1);
	
                     while(rs.next())
                     {
                    out.println("<tr><th width=181 height=45 scope=row> <div align=center>Name</div></th>"+
                  "<th width=307><div align=center>" +rs.getString(1)+"</div></th></tr>");
                     
                     }
                                   
                                    String sql2 = "SELECT Dob FROM register"+ 
				        " WHERE UserId='" + u + "'" + 
				        " AND Password='" + p + "'";
				      rs = s.executeQuery(sql2);
                     
				      while(rs.next())
		                     {
		             out.println("<tr><th height=39 scope=row><div align=center>Date of Birth</div></th><th><div align=center>"+rs.getString(1)+"</div></th>");
		             out.println(" </tr>");
				    	     }
	                                    
	                                 String sql3 = "SELECT Sex FROM register"+ 
				        " WHERE UserId='" + u + "'" + 
				        " AND Password='" + p + "'";
				      rs = s.executeQuery(sql3);
                     
				      while(rs.next())
		                     {  out.println("<tr><th height=40 scope=row><div align=center>Gender</div></th><th><div align=center>"+rs.getString(1)+"</div></td></tr>");
             
				    	     }   
	        
	        
	                                 String sql4 = "SELECT Branch FROM register"+ 
				        " WHERE UserId='" + u + "'" + 
				        " AND Password='" + p + "'";
				      rs = s.executeQuery(sql4);
                     
				      while(rs.next())
		                     {
		       out.println(" <tr><th height=38 scope=row><div align=center>Branch</div></th><th><div align=center>"+rs.getString(1)+"</div></th></tr>");
                              
				    	     } 
	        
	                                 String sql5 = "SELECT Address FROM register"+ 
				        " WHERE UserId='" + u + "'" + 
				        " AND Password='" + p + "'";
                              
                                          
                                                      rs = s.executeQuery(sql5);
                                                      while(rs.next())
                                                      {                
                                                    out.println("<tr><th height=38 scope=row><div align=center>Address</div></th><th><div align=center>"+rs.getString(1)+"</div></th></tr>");
                
                                                      }
                               
                                      String sql6 = "SELECT Email FROM register"+ 
				        " WHERE UserId='" + u + "'" + 
				        " AND Password='" + p + "'";
                              
                                          
                                                      rs = s.executeQuery(sql6);
                                                      while(rs.next())
                                                      {                
                              out.println("<tr><th height=38 scope=row><div align=center>Email</div></th><th><div align=center>"+rs.getString(1)+"</div></th></tr>");
                          
                                                      }
                              
	                                    
	                                      String sql7 = "SELECT Mobno FROM register"+ 
				        " WHERE UserId='" + u + "'" + 
				        " AND Password='" + p + "'";
                              
                                          
                                                      rs = s.executeQuery(sql7);
                                                      while(rs.next())
                                                      {                
                                               out.println("<tr><th height=32 scope=row><div align=center>Mobile no.</div></th><th><div align=center>"+rs.getString(1)+"</div></th></tr>");
                     
                                                      }
                                                      
                   }
				     
				   }   				       
				    
				    catch (ClassNotFoundException e) {
				      System.out.println(e.toString()); 
				    } 
				    catch (SQLException e) {
				      System.out.println(e.toString()); 
				    } 
				    catch (Exception e) {
				      System.out.println(e.toString()); 
				    } 
				   %>
                   </table>
		</form>
			  <div align="center"></div>
		  </div>
		<p>&nbsp;</p>
                       
                   
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