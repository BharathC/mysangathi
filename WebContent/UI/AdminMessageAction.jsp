<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>free matrimonials,india matrimonial,marriage sites,horoscope matrimonial services,marriage</title>
<meta name="Description" content=" Free Indian matrimonials site, kannada matrimonials, Indian marriages, India Matrimonial, Shadi, Marriage bureaus,Life partner,sangathi,Hindu Matrimonial,Lingayath Matrimonial" />
<meta name="keywords" content="Matrimony,Matrimonial,Matrimonials,Marriage sites,Free matrimonials,Indian matrimonials,Match making,Life partner,sangathi,Bride,Groom,Partner selection,shadi,Hindu Matrimonials,Muslim,Jain,christian,Kannada Matrimonials" />
<meta name="title" content="mysangathi.com Matrimonials;  Free Indian matrimonials site, Matchmaking, Muslim matrimonials, Shadi, Marriage bureaus, Indian marriages, Hindu,Lingayath Matrimonials ,Gowda's,kannada matrimonials" />
<meta name="google-site-verification" content="G1jAlEnFZvk2FHH8-SImtp5DKw_cQbP_VyZ1Hhg2Bcg" />
 <meta name="robots" content="noindex, nofollow" />
<link rel="canonical" href="http://www.mysangathi.com/" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">

#divstyle{
    padding-top: 10px;
}
</style>
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

</script>

</head >
<body>

	<form  action="AdminMessangeSaveAction.action"  method="post" name="AdminMessangeSaveAction" id="AdminMessangeSaveAction" >
	<s:hidden value="%{fromprofileid}" name="fromprofileid"  id="fromprofileid" />
	<s:hidden value="%{toprofileid}" name="toprofileid"  id="toprofileid"/>
	
	   
	   	   <label>Enter the Action message</label>
	   	   <s:textarea name="message" id="message"  cols="20" rows="5"/>
	   
	      <s:submit value="submit" name="submit" />	   
	      <br/>
	 <!--< <a style="float:right;"><img src="images/Submit.png"  onclick = "showphoto()"/></a>-->
	   <!-- <input type="button"  value="Save" onclick="showphoto()">-->
	
	 </form>
</body>
</html>