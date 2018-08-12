<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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
<title></title>
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

<div id="content">
<div id="back">
<!-- header begins -->
<div id="header">
    <div id="menu">
		<ul>
			<li><a href="LogOutServlet2" title="">Home</a></li>
			<li></li>
			<li><a href="#" title="">Gallery</a></li>
			<li><a href="#" title="">About</a></li>
			<li><a href="#" title="">Contact</a></li>
		</ul>
  </div> 
    <div id="logo">
		<h1 align="center">&nbsp;</h1>
		<p align="center">&nbsp;</p>
		<div align="center"><strong><span class="style5">Welcome&nbsp;<%=value%></span></strong></div>
	  </div>   
</div>

<!-- header ends -->
<!-- content begins -->
 <div id="main">
   <div id="top">
     <div id="left">
       <p align="center" class="style6">&nbsp;</p>
       <p align="center" class="style6"></p>
    <base href="<%=basePath%>">
         
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 

  
</html>
