<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MySangathi Matrimony</title>
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
  
  
  
  
 function forgotpassword()
 {
	//alert("test"); 
	 var username = document.getElementById('username').value;
	 if(username == '')
		{
			 alert("Enter Email Id");
			 return false;
	    }
	 
		 
	// alert("Forgot password1:"+username);
	 
	 $.post("CheckForgotPasswordUsernameAction.action",{'username':username} , function(data)
				{
					 //alert(data);
			//	 alert("Data1:"+data);
					
						if (data=="Error")
						{
							alert("Invalid Email Id");
							return false;
							
						}else{
							
							document.getElementById("ProfileAction").submit();
							return true;
						}
						
						
				});
	 
	 
	
	
	
 }
 
 function validateForm()
 {
	//alert("Key code:"+window.event.keyCode); 
	if(window.event.keyCode != 13)
		{return};
		
	 var username = document.getElementById('username').value;
	 if(username == '')
		{
			 alert("Enter Email Id");
			 return false;
	    }
		 
	// alert(username);
	 
	 $.post("CheckForgotPasswordUsernameAction.action",{'username':username} , function(data)
				{
					// alert(data);
					
						if (data=="Error")
						{
							alert("Invalid Email Id");
							return false;
							
						}else{
							
							document.getElementById("ProfileAction").submit();
							return true;
						}
						
						
				});
	 
	 return false;
	
	
	
	 
	 
 }
 
 function login()
 {
	 var username=document.getElementById('username').value;	
	 var password=document.getElementById('password').value;
	 var profileid=document.getElementById('profileid').value;
	 
	 alert('username----------------'+username);
	 alert('password----------------'+password);
	 alert('profileid---------------'+profileid);
	 
	 $.post("ClientLoginAction.action",{'username':username ,'password':password,'profileid':profileid} , function(data)
			 {
			 
			 		
		 document.forms["ClientProfileAction"].submit();
			 	
			 	
			 	});
	 
 }
 

 /* 
function Cancel(){
	
	document.getElementById("ProfileAction").reset;
	
}
  
function changepassword()
{
var username=document.getElementById('username').value;	
var password=document.getElementById('oldpassword').value;



$.post("CheckpasswordAction.action",{'username':username ,'password':password} , function(data)
{
	if(data=="Notmatching"){
		
		alert("Password is Wrong!");
		return false;
	}
	
	});
 var newpassword = document.getElementById('newpassword').value;
  var confirmpassword = document.getElementById('cpassword').value;




if(newpassword == null ){
	alert("Enter the New Password");
	return false;
}
if(confirmpassword == null ){
	alert("Enter the New Password");
	return false;
}
if(newpassword <= 6)
	{
	alert("New password will grater than 6 characters  special character");
	return false;
	}
	if(confirmpassword <=6){
		alert("New password will greater than 6 characters and  chareate")
		
	}
if(newpassword != confirmpassword){
	alert("New password and conform password not matching");
	return false;
}





document.forms["ProfileAction"].submit();
alert("Password sucessfully");
}
*/
  
   
</script>
</head>
<body>
<%@ page import="java.io.*,java.util.* " %>
<%    
			String mysangathiURL1;
            Properties prop=new Properties();
            prop.load(getClass().getClassLoader().getResourceAsStream("resources.properties"));
            String mysangathiURL=prop.getProperty("mysangathi");
       	
        	String profileid=request.getParameter("profileid"); 
			String fromprofileid=request.getParameter("fromprofileid"); 
			
%>



<!-- <%=profileid%>




 -->



<div id=banner>

<img style="margin-top:180px; width:998px;" src="http://www.mysangathi.com/images/Capture1.JPG" />
</div>

<div id="background">

<div id="toplinks">||&nbsp;
<a href="<%=mysangathiURL%>">Home</a>&nbsp;  ||&nbsp;
&nbsp;
<a href="#" id="trigger">Contact Us</a>&nbsp;
<div id="pop-up">
  <p>Contact Us:</p>
        <p>
          Phone : (91)(80) 26723353,(80) 26730904</p>
          <p>Mobile :(91) 9845199675,9663821291
   		</p>
        <p>
        Technical support:
        Mobile:(91)9632905725 </p>
</div>
</div>
<br /><br /><br />
<!-- 
<s:property  value="fromprofileid" />
<s:property  value="profileid"/> -->


hi javed

 <div style="clear:both;"></div>
<div id="footer">
<hr style="color:#FF6600" />
<center>
Copyright &copy;  2013 MySangthi.com. All rights reserved.</center>
</div>
</div>
</body>
</html>
