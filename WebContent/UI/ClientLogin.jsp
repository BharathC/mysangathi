<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="s" uri="/struts-tags"%>
       <s:head theme="ajax" debug="true" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MySangathi Matrimony,free matrimonials,india matrimonial,marriage sites,horoscope matrimonial services,marriage</title>
<meta name="Description" content=" Free Indian matrimonials site, kannada matrimonials, Indian marriages, India Matrimonial, Shadi, Marriage bureaus,Life partner,sangathi,Hindu Matrimonial,Lingayath Matrimonial" />
<meta name="keywords" content="Matrimony,Matrimonial,Matrimonials,Marriage sites,Free matrimonials,Indian matrimonials,Match making,Life partner,sangathi,Bride,Groom,Partner selection,shadi,Hindu Matrimonials,Muslim,Jain,christian,Kannada Matrimonials" />
<meta name="title" content="mysangathi.com Matrimonials;  Free Indian matrimonials site, Matchmaking, Muslim matrimonials, Shadi, Marriage bureaus, Indian marriages, Hindu,Lingayath Matrimonials ,Gowda's,kannada matrimonials" />
<meta name="google-site-verification" content="G1jAlEnFZvk2FHH8-SImtp5DKw_cQbP_VyZ1Hhg2Bcg" />
<meta name="robots" content="index, follow" />
<link rel="canonical" href="http://www.mysangathi.com/" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<style type="text/css">
#container {
	margin-top: -10px;
	margin-right: auto;
	margin-bottom: 20px;
	margin-left: auto;
	}


#menu {
	margin-top: 10px;
	margin-right: auto;
	margin-bottom: 10px;
	margin-left: auto;
}
div {
	margin-right: auto;
	margin-left: auto;
}

#registration {
	margin-top: 25px;
}
#footerimage {
	background-image: url(images/bottom.jpg);

}
</style>
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
<div id="container"  class="container ">	<!-- Container Starts-->
			<div id="banner"  class="row">   			<!-- banner Starts-->
                            <div  align="center" >
                            <img src="images/banner.jpg" class=" img-responsive img-thumbnail" >
                           </div>
            </div>	                                <!-- banner Ends-->
  

			<div id="menu" class="row">	<!-- menu Starts-->	
              
                            <ul class=" col-md-offset-1 nav nav-pills">
                            <li> <a href="index.html">Home</a></li>
                           <li ><a href="Aboutus.html">About us</a></li>
                           <li class="active"><a href="#">Login</a></li>  
                              <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a> </li>
                              <li><a href="#" id="contact" class="" rel="popover"
                             data-content="Phone :(91)(80)26723353,(80)26730904 
                                           Mobile:(91)9845199675,9663821291
                                           Technical support:Mobile:(91)9632905725" 
							 data-original-title="Contact us:">
                             <span class="glyphicon glyphicon-earphone"></span> Contact Us</a></li>
                            </ul>


			</div>	<!-- menu Ends-->

				
               <div class="row">  <!-- content Strats -->
               <div class="col-md-6 col-md-offset-3"> <center>
               <div class="panel panel-success">
                                  <div class="panel-heading">
                                    <h3 class="panel-title text-danger"> Login </h3>
                                  </div>
                                  <div class="panel-body">
                           <s:form action="ClientLoginAction.action" method="post" id="ClientProfileAction" name="ClientProfileAction" theme="simple">
                              <input type="hidden" value="<%=profileid%>"  id="profileid" name="profileid"/>
                               <table  border="1" bordercolor="#99FF99 " class="table table-responsive"  >
                                  <tr>
                                    <td width="200" class="text-primary"><center>User Name :</center></td>
                                    <td width="200"><s:textfield name="username"  id="username" cssClass="form-control" /></td>
                                  </tr>
                                  <tr>
                                    <td class="text-primary"><center>Password</center></td>
                                    <td><s:password name="password" id="password" cssClass="form-control"/></td>
                                  </tr>
                                  <tr>
                                    <td>
                                    	<center>
                                    		<input type="submit" value="Submit" class="btn btn-success "  onclick="login()" >
                                    	</center>
                                    </td>
                                    <td><center><input type="reset" value="Reset" class="btn btn-success" ></center></td>
                                  </tr>
                                </table>

                           </s:form>
                                  </div>
                                </div>

                   </center>
               </div>
               
               </div>   <!-- content Ends -->
             
             
		 <div id="footer" class="row" >	 <!-- Footer Starts-->
							<div id="footerimage" class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 img-responsive img-rounded">
                            <center> <p><strong> Copyright © 2014 MySangathi.com. All rights reserved.</strong></p>
                            </center>
                            </div>
		 </div>	 <!-- Footer Ends-->
</div>     <!-- Container Ends-->



<!-- Javascript -->
<script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jctextcopyprotector.js"></script>
   
<script type="text/javascript">
$(function ()
{ $("#contact").popover();
});
</script>

  
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
	 
	// alert('username----------------'+username);
	// alert('password----------------'+password);
	// alert('profileid---------------'+profileid);
	 
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
</body>
</html>
