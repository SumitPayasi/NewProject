<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script language=javaScript> javascript:window.history.forward(1)</script>
<script type="text/javascript">
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
                if(isEmpty(document.Userlogin.uid.value))
                {
                    alert("Error: user name is required");
                    document.LoginForm.unm.focus();
                    return false;
                }
                if(isEmpty(document.Userlogin.psd.value))
                {
                    alert("Error: password is required");
                    document.LoginForm.pass.focus();
                    return false;
                }
                    return true;
        }
            
</script>
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
       <p align="center" class="style6">&nbsp;</p>
       <p align="center" class="style6"></p>
         <form name="Userlogin" method="post" action="LoginServlet2" onsubmit="return validate();">
         <table width="522" height="167" border="0" align="center">
           <tr>
             <td height="73">User Id </td>
             <td><input name="uid" type="text"/></td>
           </tr>
           <tr>
             <td width="266" height="78">Password</td>
             <td width="398"><label>
               <input type="password" name="psd" />
             </label></td>
           </tr>
         </table>
         <p align="justify">
           <label></label>
           <label></label>
         </p>
         <p align="center">           <a href="HintQuest2.jsp" class="style7">Forgot Password</a>           </p>
         <p align="center">
 
 <input name="Submit" type="submit" class="style7" value="LOGIN" />
           <label></label>
         </p>
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