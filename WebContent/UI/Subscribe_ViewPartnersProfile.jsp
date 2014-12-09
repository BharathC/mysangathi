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

<style type="text/css">
body {
	background-color: #FFFFFF;
	margin:0px;
	padding: 0px;
	background-attachment: scroll;
	background-position: center center;


}
/* HOVER STYLES */
      div#pop-up {
        display: none;
        position: absolute;

        width: 230px;
        color: #000000;
        border: 1px solid #1a1a1a;
        font-size: 90%;
        border:2px solid #a1a1a1;
		padding:10px;
		background:#dddddd;
		border-radius:25px
      }
       h3 {
        margin: 0;
        padding: 0;
        font-weight: normal;
      }
*html { margin: 0px;
	padding: 0px;}


#background {
	background-image: url(http://www.mysangathi.com/images/content-bg.jpg);
	height: auto;
	width: 996px;
	background-repeat: repeat-x;
	border:1px solid #74ad78;
	margin:0 auto;
}
#banner {
	background-image: url(http://www.mysangathi.com/images/Capture.JPG);
	background-repeat: no-repeat;
	height: 180px;
	width: 1000px;
	margin:0 auto;
}
#footer {
	width:1000px;
	height:auto;
	margin:0px auto 0px;
	background-image: url(http://www.mysangathi.com/images/bottom.jpg);
	text-align:center;


}
#toplinks {
	width: 256px;
	height:auto;
	float: right;


}
#formstwo { width:380px; height:auto; float:right; }
</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
 <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
   <script type="text/javascript" src="js/jctextcopyprotector.js"></script>
  
<script type="text/javascript">


(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  
	  })
	  
	  (window,document,'script','//www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-45860640-1', 'mysangathi.com');
	  ga('send', 'pageview');



jQuery(document).ready(function(){
    jQuery().jctextcopyprotector();
});

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
  
  
  
  

 
 
 function tt()
 {
 	document.forms["setpassword"].submit();
 }




  
   
</script>
<%@
page import="org.mindlinks.BO.LoginBO"%>
<%@
page import="org.mindlinks.BS.ProfileBS"%>
</head>
<body onload="tt()">
<%@ page import="java.io.*,java.util.* " %>
<%    
			String mysangathiURL1;
            Properties prop=new Properties();
            prop.load(getClass().getClassLoader().getResourceAsStream("resources.properties"));
            String mysangathiURL=prop.getProperty("mysangathi");
       	
        	String profileid=request.getParameter("profileid"); 
			String fromprofileid=request.getParameter("fromprofileid"); 
			
%>

<%

   LoginBO  loginBo=new LoginBO();

   ProfileBS  profilebs=new ProfileBS();
   String paidStatus=profilebs.checkPaidStatus(request.getParameter("profileid"));
   
   String FromprofileId=request.getParameter("username");
   String ToprofileId=request.getParameter("profileid");
   
   String isadmin="flase";
   String url="http://localhost:8094/mysangathi";
   
 
%>



<!-- 
   <%=FromprofileId %>
   <%=ToprofileId %>
     <%=isadmin %>
      <%=url %>
     <%=paidStatus %> 
     <%=profileid%>
     <s:hidden value="%{#session.myprofile.profileid}" id="pp" />
 -->

<% mysangathiURL=mysangathiURL+"/ClientCallAction.action";%>



   <%if(paidStatus.equals("paid")){%>
   
	<input type="hidden" value="<%=ToprofileId %>" id="pp1" />
	<input type="hidden" value=" <%=isadmin %>" id="isadmin" />
	
   <form action=<%=mysangathiURL %> method="post" id="setpassword" name="setpassword">
		<s:hidden value="%{#session.myprofile.profileid}"  id="sessionprofileid" name="sessionprofileid" />
	<input type="hidden" value="<%=ToprofileId %>" id="fromprofileid"  	name="fromprofileid" />
	<input type="hidden" value="<%=FromprofileId %>" id="profileid" name="profileid" />
	<input type="hidden" value="<%=isadmin %>" id="isadmin" name="isadmin" />
	<!--  <input type="button" value="View partner's profile" />-->

	</form>
   
   <%} 
   else if(paidStatus.equals("notpaid")){%>
  
   <table align="center" border="1" bordercolor="green" bgcolor="green">
   <tr>
   <td> <H1 align="center" style="color:white;">Your  not a paid member please contact Admin.</H1></td>
   </tr>
   
   </table>
   <%}%>



</body>
</html>
