<%@page import="org.mindlinks.Actionclasses.ChangeAction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="s" uri="/struts-tags"%>
       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>MySangathi Matrimony,MySangathi Matrimony,free matrimonials,india matrimonial,marriage sites,horoscope matrimonial services,marriage</title>
<meta name="Description" content=" Free Indian matrimonials site, kannada matrimonials, Indian marriages, India Matrimonial, Shadi, Marriage bureaus,Life partner,sangathi,Hindu Matrimonial,Lingayath Matrimonial" />
<meta name="keywords" content="Matrimony,Matrimonial,Matrimonials,Marriage sites,Free matrimonials,Indian matrimonials,Match making,Life partner,sangathi,Bride,Groom,Partner selection,shadi,Hindu Matrimonials,Muslim,Jain,christian,Kannada Matrimonials" />
<meta name="title" content="mysangathi.com Matrimonials;  Free Indian matrimonials site, Matchmaking, Muslim matrimonials, Shadi, Marriage bureaus, Indian marriages, Hindu,Lingayath Matrimonials ,Gowda's,kannada matrimonials" />
<meta name="comment" content=" Matrimonial Site; Your link to Free Indian matrimonials site, Matchmaking, matrimonials, Indian marriages, India Matrimonial, Shadi, Marriage bureaus, Lingayath  Matrimonial,kannada matrimonials " />

<meta name="document-classification" content=" Free Matrimonial Service" />
<meta name="robots" content="noindex, nofollow" />
<link rel="canonical" href="http://www.mysangathi.com/" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>

<script type="text/javascript">


(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  
	  })
	  
	  (window,document,'script','//www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-45860640-1', 'mysangathi.com');
	  ga('send', 'pageview');

	  
	  
function CheckPassword(){
var password=document.getElementById('password').value;
var cpassword=document.getElementById('cpassword').value;
if(password==null){
	alert("Enter the Password");
	return false;
	}
if(cpassword==null){
	alert("Enter the Confirm Password");
	return false;
	}
	if((password!=null)&&(cpassword!=null)){
	if(password.length < 6){
		alert("Password Should be more than 6 characters");
		return false;
		
	}
	if(cpassword.length < 6){
		alert("Confirm Password Should be more than 6 characters");
		return false;
		
	}
	if(password!=cpassword){
		alert("Password does not match the conform password");
		return false;
		
		
	}	
		
		
	}
	document.forms["setpassword"].submit();
	
}




</script>
</head>

<body>

<%@ page import="java.io.*,java.util.* " %>
<%    
            Properties prop=new Properties();
            prop.load(getClass().getClassLoader().getResourceAsStream("resources.properties"));
            String mysangathiURL=prop.getProperty("mysangathi");
       	
			String Password=request.getParameter("Oldpassword"); 
			String Username=request.getParameter("Username"); 
%>
<% mysangathiURL=mysangathiURL+"/ChangeAction.action";%>
<H2 align="center">Your account has been activated.  You can change the Password here.</H2>
<form action=<%=mysangathiURL %> method="post" id="setpassword" name="setpassword">
<input type="hidden" value="<%=Username %>" name="username">

  <table>
  <tr>
<td><s:password  name="password" id="password"  label="New Password"/></td>
</tr>
 <tr>
<td><s:password   name="cpassword" id="cpassword" label="Confirm New Password"/></td>
</tr>
<tr>
<td><font face="Verdana" color=Red">Password should be  more than  six character*</font></td>
</tr>
<tr>
<td><input type="button"  value="Save Password" onclick="CheckPassword()"/></td>
</tr>
 </table>
</form>

</body>
</html>