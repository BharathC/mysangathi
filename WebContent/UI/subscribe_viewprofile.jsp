<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
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


<!--<script type ="text/javascript" src="js/jquery.js"></script>-->
<script type="text/javascript" src="js/jquery.jdpicker.js"></script>
<link rel="stylesheet" href="css/jdpicker.css" type="text/css"
	media="screen" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<link rel="stylesheet" type="text/css" media="all"
	href="css/jquery.fancybox.css">
<script type="text/javascript" src="js/jquery.fancybox.js?v=2.0.6"></script>
<script type="text/javascript" src="js/jctextcopyprotector.js"></script>
<%@
page import="org.mindlinks.BO.LoginBO"%>
<script type="text/javascript">

(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  
	  })
	  
	  (window,document,'script','//www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-45860640-1', 'mysangathi.com');
	  ga('send', 'pageview');

	  
function tt()
{
	document.forms["setpassword"].submit();
}

</script>
</head>
<body>
	<%

   LoginBO  loginBo=new LoginBO();
   String FromprofileId=request.getParameter("username");
   String ToprofileId=request.getParameter("profileid");
   String isadmin="flase";
   String url="http://localhost:8094/mysangathi";
   
 
%>



	<!-- 
   <%=FromprofileId %>
   <%=ToprofileId %>
     <%=isadmin %>
      <%=url %> -->




	<% url=url+"/ClientCallAction.action";%>



	<a
		href="ProfileviewAction.action?isadmin=<%=isadmin %>&&profileid= <%=ToprofileId %>&&fromprofileid= <%=FromprofileId %>">View
		partner's profile</a>
	<s:hidden value="%{#session.myprofile.profileid}" id="pp" />


	<input type="hidden" value="<%=ToprofileId %>" id="pp1" />
	<input type="hidden" value=" <%=isadmin %>" id="isadmin" />



	<form action=<%=url %> method="post" id="setpassword"
		name="setpassword">
		<s:hidden value="%{#session.myprofile.profileid}"
			id="sessionprofileid" name="sessionprofileid" />
		<input type="hidden" value="<%=ToprofileId %>" id="fromprofileid"
			name="fromprofileid" /> <input type="hidden"
			value="<%=FromprofileId %>" id="profileid" name="profileid" /> <input
			type="hidden" value="<%=isadmin %>" id="isadmin" name="isadmin" /> <input
			type="button" value="View partner's profile" onclick="tt()" />

	</form>
	<!--<s:property value="%{#session.myprofile.profileid}" />-->

</body>


</html>