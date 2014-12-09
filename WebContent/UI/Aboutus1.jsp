<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>free matrimonials,india matrimonial,marriage sites,horoscope matrimonial services,marriage,kannada matrimonial</title>
<meta name="Description" content=" Free Indian matrimonials site, kannada matrimonials, Indian marriages, India Matrimonial, Shadi, Marriage bureaus,Life partner,sangathi,Hindu Matrimonial,Lingayath Matrimonial" />
<meta name="keywords" content="Matrimony,Matrimonial,Matrimonials,Marriage sites,Free matrimonials,Indian matrimonials,Match making,Life partner,sangathi,Bride,Groom,Partner selection,shadi,Hindu Matrimonials,Muslim,Jain,christian,Kannada Matrimonials" />
<meta name="title" content="mysangathi.com Matrimonials;  Free Indian matrimonials site, Matchmaking, Muslim matrimonials, Shadi, Marriage bureaus, Indian marriages, Hindu,Lingayath Matrimonials ,Gowda's,kannada matrimonials" />
<meta name="google-site-verification" content="G1jAlEnFZvk2FHH8-SImtp5DKw_cQbP_VyZ1Hhg2Bcg" />

 <meta name="robots" content="index, follow" />
<link rel="canonical" href="http://www.mysangathi.com/" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<style type="text/css">

body 
{
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
#toplinks 
{
	width: 256px;
	height:auto;
	float: right;
}




</style>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
 <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
 <script type="text/javascript" src="js/jctextcopyprotector.js"></script>
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
  
  

jQuery(document).ready(function(){
    jQuery().jctextcopyprotector();
}); 
  
</script>
</head>

<body>

<%@ page import="java.io.*,java.util.* " %>
<%    
            String mysangathiURL1;
			String mysangathiURL2;
            Properties prop=new Properties();
            prop.load(getClass().getClassLoader().getResourceAsStream("resources.properties"));
            String mysangathiURL=prop.getProperty("mysangathi");
       	
			
%>
<div id=banner>
<% mysangathiURL1=mysangathiURL+"/images/Capture1.JPG";%>
<img style="margin-top:180px; width:998px;" src="<%=mysangathiURL1 %>" />
</div>

<div id="background">
<br /> <br /><br />
<div id="toplinks">||
 

 <a href="#" id="trigger">Contact Us</a>&nbsp;||&nbsp;
 <div id="pop-up">
  <p>Contact Us:</p>
        <p>
          Phone : (91)(80) 26723353,(80) 26730904</p>
          <p>Mobile :(91) 9845199675,9663821291
   		</p>
   		
</div>

<a href="<%=mysangathiURL %>">Back</a>
</div>


<!--<a href="http://www.mysangathi.com">Back</a>-->
<br /><br />
<font face="verdana" color="green">FOUNDER:</font>
<font face="Calibri">&nbsp;&nbsp;Mr.B.H.MANJUNATH IAS (Retd) is the founder of MySangathi matrimonial services.
He belongs to IAS cadre and &nbsp;&nbsp;retired from service about 3 years ago.At the time
of retirement, he was holding the position of Secretary to the &nbsp;&nbsp;government of Karnataka
co-operation department. Most of the time he has served in rural parts of North Karnataka.</p></font>

<font face="verdana" color="green">ASTROLOGER:</font>
<font face="Calibri"><p>&nbsp;&nbsp;Dr. Siddanthi Puttahonnaiah is a well known astrologer in Mysore. He is a Sanskrit
scholar and he is also the author of &nbsp; Panchanga. He has got wide experience in horoscope
matching. He will be available for consultation on the &nbsp;&nbsp;matrimonial matters.</p></font> 

<div style="clear:both;"></div>
<div id="footer">
<hr style="color:#FF6600" />

<center><br/></center>
Copyright &copy; 2014 MySangthi.com. All rights reserved.
</div>
</div>

</body>
</html>