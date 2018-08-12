<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Metamorphosis Design Free Css Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #CC0000; font-weight: bold; font-size: xx-large;}
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
</style></head>
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
			<li><a href="About2.jsp" title="">About</a></li>
			<li><a href="Contact2.jsp" title="">Contact</a></li>
		</ul>
  </div> 
    <div id="logo">
		<h1 align="center">&nbsp;</h1>
		<p align="center">&nbsp;</p>
		<div align="center"><strong><span class="style5">FORGET PASSWORD </span></strong></div>
		<p align="center" class="style4">&nbsp;</p>
    </div>   
</div>

<!-- header ends -->
<!-- content begins -->
 <div id="main">
   <div id="top">
     <div id="left">
       <font size=6><p align="center"> Please give your answers</p></font>
     <font size=3>  <form id="form1" method="post" action="password2.jsp">
               <table width="459" border="0" align="center">
           <tr><td valign="top">User Id</td><td valign="top"><input type="text" name="uid"/></td></tr>
           <tr>
             <td>Hint Question</td>
             <td><select  name="quest" size="1">
  <option value="" selected="selected">--Select  the Hint Question--</option>
<option value="What is your Favourite Colour ?">What is your Favourite Colour ?</option>
                 <option value="What is your Pet name?">What is your Pet name?</option>
                 <option value="What is your favourite Celebrity name?">What is your favourite Celebrity name?</option>
                 <option value="What is your Nick name?">What is your Nick name?</option>
                 <option value="What is your favourite Picnic spot?">What is your favourite Picnic spot?</option>
                 <option value="Who is your favourite Sports Man?">Who is your favourite Sports Man?</option>
             <option value="What is your Hobby ?">What is your Hobby ?</option>
             <option value="Other">Other</option>

</select></td>
           </tr>
           <tr>
             <td>Answer</td>
             <td><input type="text" name="ans" /></td>
           </tr>
          <tr><td></td>
         <font size=5><td align="center"><input name="Submit" type="submit" value="GET PASSWORD"/>
           </td></font>
         </tr></table>
         </form></font>
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