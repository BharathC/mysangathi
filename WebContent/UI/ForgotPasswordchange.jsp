<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>MySangathi Matrimony,free matrimonials,india matrimonial,marriage sites,horoscope matrimonial services,marriage</title>
<meta name="Description" content=" Free Indian matrimonials site, kannada matrimonials, Indian marriages, India Matrimonial, Shadi, Marriage bureaus,Life partner,sangathi,Hindu Matrimonial,Lingayath Matrimonial" />
<meta name="keywords" content="Matrimony,Matrimonial,Matrimonials,Marriage sites,Free matrimonials,Indian matrimonials,Match making,Life partner,sangathi,Bride,Groom,Partner selection,shadi,Hindu Matrimonials,Muslim,Jain,christian,Kannada Matrimonials" />
<meta name="title" content="mysangathi.com Matrimonials;  Free Indian matrimonials site, Matchmaking, Muslim matrimonials, Shadi, Marriage bureaus, Indian marriages, Hindu,Lingayath Matrimonials ,Gowda's,kannada matrimonials" />
<meta name="google-site-verification" content="G1jAlEnFZvk2FHH8-SImtp5DKw_cQbP_VyZ1Hhg2Bcg" />
<meta name="robots" content="index, follow" />
<link rel="canonical" href="http://www.mysangathi.com/" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
<script type="text/javascript">


(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  
	  })
	  
	  (window,document,'script','//www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-45860640-1', 'mysangathi.com');
	  ga('send', 'pageview');

	  
	  
$(function() {
    var moveLeft = 10;

    var moveDown = 20;

    $('a#trigger').hover(function(e) {
      $('div#pop-up').show();
      //.css('top', e.pageY + moveDown)
      //.css('left', e.pageX + moveLeft)
      //.appendTo('body');
    }, function() {
      $('div#pop-up').hide();
    });

    $('a#trigger').mousemove(function(e) {
      $("div#pop-up").css('top', e.pageY + moveDown).css('left', e.pageX +  moveLeft);
    });

  });
  
function Cancel(){
	
	document.getElementById("ProfileAction").reset();
	
}
  
function forgotpassword()
{
 // var username=document.getElementById('username').value;	
  var newpassword = document.getElementById('newpassword').value;
  var conformpassword = document.getElementById('cpassword').value;
  
 // alert("user name"+username);
  //alert("new pass"+newpassword);
 // alert("confirm pass"+confirmpassword);
 

/*if(username == '')
{
	alert("Enter the  Email Id");
	return false;
}*/

if( newpassword == '')
{
	alert("Enter the New Password");
	return false;
}
if(conformpassword == '')
{
	alert("Enter the conformpassword");
	return false;
}
if(newpassword.length < 6)
{
	alert("New password will grater than 6 characters");
	return false;
}
if(conformpassword.length < 6)
{
		alert("New password will greater than 6 characters")
		
}
	
if(newpassword != conformpassword)
{
	alert("New password and conform password not matching");
	return false;
}





document.forms["ProfileAction"].submit();
alert(" Your Password Changed Sucessfully");
}

  
   
</script>
</head>
<body>

<%@page import="org.mindlinks.HibernateDAO.UserDAO"%>
<%@ page import="java.io.*,java.util.* " %>
<%    
            Properties prop=new Properties();
            prop.load(getClass().getClassLoader().getResourceAsStream("resources.properties"));
            String mysangathiURL=prop.getProperty("mysangathi");
       	
			String Password=request.getParameter("Oldpassword"); 
			String Username=request.getParameter("username"); 
%>


<% mysangathiURL=mysangathiURL+"/ForgotChangePasswordAction.action";%>
 <form action=<%=mysangathiURL %> method="post" id="ProfileAction" name="ProfileAction">
<table>
            
<tr><td>  

<input type="hidden" name="username" value="<%=Username %>" />

</td></tr> 
<tr><td>	<s:password  name="password" id="newpassword" label="New Password" /></td></tr>
<tr><td>	<s:password name="cpassword"    id="cpassword" label="Confirm New Password" /></td></tr>
	
<tr><td>	<input type="button"  value="Change Password"  onclick="forgotpassword()"  /></td> 
		<td><input  type="button"  value="Cancel"   onclick="Cancel()"/></td>
</tr>

	</table>
</form>

</body>
</html>
