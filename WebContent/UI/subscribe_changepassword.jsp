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
function Activateuser(){
	var username=document.getElementById('txtusername').value;
	var password=document.getElementById('txtpassword').value;
	alert(username);
	alert(password);
}



(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  
	  })
	  
	  (window,document,'script','//www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-45860640-1', 'mysangathi.com');
	  ga('send', 'pageview');

/*$(document).ready(function (){
	
	
	var data = {userName:username,password:password};
	var user= JSON.stringify(data);
	$.ajax({
        data: user,
        type: "POST", 
        url: "http://localhost:8089/mysangathi/UserAction.action",
        contentType: "application/json",
        dataType: "json" 

         })
	
});*/





</script>
<%@page import="org.mindlinks.HibernateDAO.UserDAO"%>
</head>
<body>
<% UserDAO userclient = new  UserDAO(); 
   String subscribedstatus=userclient.checkuserpassword(request.getParameter("username"),request.getParameter("rannum"));
   String Username=request.getParameter("username");
   String oldpassword=request.getParameter("rannum");
   %>
   <input type="hidden" value=<%=subscribedstatus %> id="subscribedstatus" >
   <%if(subscribedstatus.equals("access")){%>
   <jsp:forward page="Subchangepassword.jsp" >
    <jsp:param name="Username" value="<%=Username %>" />
    <jsp:param name="Oldpassword" value="<%=oldpassword %>" />
     </jsp:forward><%} 
   else if(subscribedstatus.equals("active")){%>
   
   <H3 align="center">Your  Account has already been Activated.</H3><%}else if(subscribedstatus.equals("error")){%>
<H3 align="center"><font face="Verdana">The email id is register with the MySangathi you cannot activate your account.</font></H3><%}%>

<!--    
<div id="changepassword" style="">


</div>
--> 
</body>
</html>