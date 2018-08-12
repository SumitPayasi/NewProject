<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
            function isLength(len)
            {
            if(len<10)
            {
            alert("mobile no. should be 10 digit");
            return false;
            }
            return true;
            }
            function checkNum(x)
            {

                var s_len=x.value.length ;
                var s_charcode = 0;
                for (var s_i=0;s_i<s_len;s_i++)
                {
                    s_charcode = x.value.charCodeAt(s_i);
                    if(!((s_charcode>=48 && s_charcode<=57)))
                    {
                        alert("Only Numeric Values Allowed");
                        x.value='';
                        x.focus();
                        return false;
                    }
                }
                return true;
            }
            function checkemail(txt) {
var s =txt.indexOf("@");
var t=txt.indexOf(".");
if ((t==-1)||(s==-1))
{
alert("please enter correct email");
return false;
}
return true;
}
function checkuser(str)
{ 
xmlHttp=GetXmlHttpObject();
if (xmlHttp==null)
  {
  alert ("Your browser does not support AJAX!");
  return;
  } 
var url="checkUser.jsp";
url=url+"?q="+str;
xmlHttp.onreadystatechange=stateChanged;
xmlHttp.open("GET",url,true);
xmlHttp.send(null);
}
function stateChanged() 
{ 
if (xmlHttp.readyState==4)
{ 
document.getElementById("user").innerHTML=xmlHttp.responseText;
}
}

function GetXmlHttpObject()
{
var xmlHttp=null;
try
  {
  // Firefox, Opera 8.0+, Safari
  xmlHttp=new XMLHttpRequest();
  }
catch (e)
  {
  // Internet Explorer
  try
    {
    xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
    }
  catch (e)
    {
    xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
  }
return xmlHttp;
}


            function validate()
            {
            if(isEmpty(document.LoginForm.Name.value))
                {
                    alert("Error: user name is required");
                    document.LoginForm.Name.focus();
                    return false;
                }
                                
                                
         else if(isEmpty(document.LoginForm.uid.value))
                {
                    alert("Error: user id is required");
                    document.LoginForm.uid.focus();
                    return false;
                }
             else if(isEmpty(document.LoginForm.psd.value))
                {
                    alert("Error: password is required");
                    document.LoginForm.psd.focus();
                    return false;
                }
                else if(document.LoginForm.psd.value.length<7)
                {
                alert("Error:Minimum 7 character required");
                return false;
                
                }
                else if(isEmpty(document.LoginForm.cpsd.value))
                {
                    alert("Error: please re-enter password");
                    document.LoginForm.psd.focus();
                    return false;
                }
         else  if( document.LoginForm.psd.value!= document.LoginForm.cpsd.value)
            {
        alert("The two passwords do not match");
           return (false);
              }
else if( document.LoginForm.year.value==""||document.LoginForm.month.value==""||document.LoginForm.date.value=="")
  {
  alert("You must select a Date of Birth");
 return (false);
  }	
 else if( document.LoginForm.sex.value=="")
  {
  alert("You must select a Gender");
  return (false);
  }	
  else if( document.LoginForm.hintquest.value=="")
  {
  alert("You must select a Hint Question");
 return (false);
  }	
 else if(isEmpty(document.LoginForm.hintans.value))
                {
                    alert("Error: Please Enter Hint Answer");
                    document.LoginForm.hintans.focus();
                    return false;
                }
     else  if( document.LoginForm.branch.value=="")
   {
   alert("You must select a branch");
  return (false);
   }	
   else  if(isEmpty(document.LoginForm.address.value))
                {
                    alert("Error: please enter address");
                    document.LoginForm.psd.focus();
                    return false;
                }
       else  if(isEmpty(document.LoginForm.email.value))
                {
                    alert("Error: E-mail is required");
                    document.LoginForm.email.focus();
                    return false;
                }

           else if (!checkemail(document.LoginForm.email.value))
                {
                return false;
                }
                 else if(isEmpty(document.LoginForm.mobno.value))
                {
                    alert("mobile number cant be left blank");
                    document.LoginForm.mobno.focus();
                    return false;
                }
  
                else if(checkNum(document.LoginForm.mobno))
                    {
                         if(document.LoginForm.mobno.value.length!=10)
                     {
                                alert("Mobile no. must be of 10 digit");
                               return false;
                     }
                     return true;
                    }
                     
                 else  if(document.LoginForm.mobno.value.length<10)
                     {
                                alert("Mobile no. must be of 10 digit");
                               return false;
                     }
             else if(document.LoginForm.mobno.value.length)
             {
             
             }
                     
                    
            
            }
            </script>
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
		<div align="center"><strong><span class="style5">REGISTRATION</span></strong></div>
	  </div>   
</div>

<!-- header ends -->
<!-- content begins -->
 <div id="main">
   <div id="top">
     <div id="left">
       <p align="center" class="style6">&nbsp;</p>
       <p align="center" class="style6"><br></p>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<h5>
  <center> Enter Your Detailed:
  </center></h5>  <body><h5>
  <form method="post" target="" id="LoginForm" action="HomeServlet2" name="LoginForm" onsubmit="return validate();">

  <table width="680" height="689" align="center" border="0" cellpadding="10" cellspacing="0">
 <tr><td> Name </td><td><input type="text" name="Name" onkeypress="CheckKeysForUserName(event);"></td></tr>
<tr><td> UserId</td><td> <input type="text" name="uid"></td></tr>
<tr><td>  Password </td><td><input type="password" name="psd" onclick="return checking();"></td><td class="formtext1" align="left" height="2">Minimum 7 characters</td></tr>
<tr><td>Re-enter Password</td><td><input type="password" name="cpsd" onclick="return checking();" maxlength="19"></td></tr>
<tr><td>Date of Birth </td><td><select name="year"><option value="" selected="selected">--Year--</option><option value="1965">1965</option>		<option value="1966">1966</option>		<option value="1967">1967</option>		<option value="1968">1968</option>		<option value="1969">1969</option>		<option value="1970">1970</option>		<option value="1971">1971</option>		<option value="1972">1972</option>		<option value="1973">1973</option>		<option value="1974">1974</option>		<option value="1975">1975</option>		<option value="1976">1976</option>		<option value="1977">1977</option>		<option value="1978">1978</option>		<option value="1979">1979</option>		<option value="1980">1980</option>		<option value="1981">1981</option>		<option value="1982">1982</option>		<option value="1983">1983</option>		<option value="1984">1984</option>		<option value="1985">1985</option>		<option value="1986">1986</option>		<option value="1987">1987</option>		<option value="1988">1988</option>		<option value="1989">1989</option>		<option value="1990">1990</option>		<option value="1991">1991</option>		<option value="1992">1992</option>		<option value="1993">1993</option>		<option value="1994">1994</option>		<option value="1995">1995</option>		<option value="1996">1996</option>		<option value="1997">1997</option>		<option value="1998">1998</option>		<option value="1999">1999</option>		<option value="2000">2000</option>		<option value="2001">2001</option>		<option value="2002">2002</option>		<option value="2003">2003</option>		<option value="2004">2004</option>		<option value="2005">2005</option></select><select name="month"><option value="" selected="selected">--Month--</option>
		<option value="01">January</option>
		<option value="02">February</option>
		<option value="03">March</option>
		<option value="04">April</option>
		<option value="05">May</option>
		<option value="06">June</option>
		<option value="07">July</option>
		<option value="08">August</option>
		<option value="09">September</option>
		<option value="10">October</option>
		<option value="11">November</option>
		<option value="12">December</option></select><select name="date"><option value="" selected="selected">--Date--<option value="1">1</option>		<option value="2">2</option>		<option value="3">3</option>		<option value="4">4</option>		<option value="5">5</option>		<option value="6">6</option>		<option value="7">7</option>		<option value="8">8</option>		<option value="9">9</option>		<option value="10">10</option>		<option value="11">11</option>		<option value="12">12</option>		<option value="13">13</option>		<option value="14">14</option>		<option value="15">15</option>		<option value="16">16</option>		<option value="17">17</option>		<option value="18">18</option>		<option value="19">19</option>		<option value="20">20</option>		<option value="21">21</option>		<option value="22">22</option>		<option value="23">23</option>		<option value="24">24</option>		<option value="25">25</option>		<option value="26">26</option>		<option value="27">27</option>		<option value="28">28</option>		<option value="29">29</option>		<option value="30">30</option>		<option value="31">31</option></select></td></tr>
<tr><td> Sex</td><td>  <select name="sex" size="1"><option value="" selected="selected">--Select--</option><option value="M">Male</option>
 <option value="F">Female</option></select></td></tr>
 <tr><td>Select the Hint question</td><td> <select  name="hintquest" size="1">
  <option value="" selected="selected">--Select  the Hint Question--</option>
<option value="What is your Favourite Colour ?">What is your Favourite Colour ?</option>
                 <option value="What is your Pet name?">What is your Pet name?</option>
                 <option value="What is your favourite Celebrity name?">What is your favourite Celebrity name?</option>
                 <option value="What is your Nick name?">What is your Nick name?</option>
                 <option value="What is your favourite Picnic spot?">What is your favourite Picnic spot?</option>
                 <option value="Who is your favourite Sports Man?">Who is your favourite Sports Man?</option>
             <option value="What is your Hobby ?">What is your Hobby ?</option>
             <option value="Other">Other</option>

</select></td></tr>
<tr><td>Hint answer</td> <td><input type="text" name="hintans" maxlength="29"></td></tr>
<tr><td>Branch</td><td><select name="branch" size="1">
<option value="" selected="selected">--Select the Branch--</option>
<option value="CSE">CSE</option>
<option value="EC">EC</option>
<option value="MECH">MECH</option>
<option value="IT">IT</option>
</select></td></tr>
<tr><td>Address</td><td><textarea  name="address"></textarea></td></tr>
<tr><td>Email</td><td><input type="text" name="email"></td><td><span class="style2">Example:Name@domain.com</span> </td></tr>
<tr><td>Mobile Number</td><td><input type="text" name="mobno" maxlength="10"></td></tr>
 <tr><td align="center"><input type="reset" value="Reset the form"></td>
 <td> <input type="submit" value="Register"></td></tr>
    
 </table>      </form>
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