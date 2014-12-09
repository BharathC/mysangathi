<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
 <s:head theme="ajax" debug="true"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MySangathi Matrimony,sangathi matrimonial,kannada matrimonial,free matrimonials,india matrimonial,marriage sites,horoscope matrimonial services,marriage</title>
<meta name="Description" content=" Free Indian matrimonials site, kannada matrimonials, Indian marriages, India Matrimonial, Shadi, Marriage bureaus,Life partner,sangathi,Hindu Matrimonial,Lingayath Matrimonial" />
<meta name="keywords" content="Matrimony,Matrimonial,Matrimonials,Marriage sites,Free matrimonials,Indian matrimonials,Match making,Life partner,sangathi,Bride,Groom,Partner selection,shadi,Hindu Matrimonials,Muslim,Jain,christian,Kannada Matrimonials" />
<meta name="title" content="mysangathi.com Matrimonials;  Free Indian matrimonials site, Matchmaking, Muslim matrimonials, Shadi, Marriage bureaus, Indian marriages, Hindu,Lingayath Matrimonials ,Gowda's,kannada matrimonials" />
<meta name="google-site-verification" content="G1jAlEnFZvk2FHH8-SImtp5DKw_cQbP_VyZ1Hhg2Bcg" />
<meta name="comment" content=" Matrimonial Site; Your link to Free Indian matrimonials site, Matchmaking, matrimonials, Indian marriages, India Matrimonial, Shadi, Marriage bureaus, Lingayath  Matrimonial,kannada matrimonials " />
<meta name="document-classification" content=" Free Matrimonial Service" />
<meta name="robots" content="index, follow" />
<link rel="canonical" href="http://www.mysangathi.com/" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<style type="text/css">
#container {
	
	margin-right: auto;
	
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
table {
	margin-top: 20px;
	margin-bottom: 20px;
}

#footerimage {
	background-image: url(images/bottom.jpg);

}

#footer{
	margin-top:10px;
}
body {
	font-family:"Arial",Times New Roman,Georgia,Serif;
}
</style>
</head>

<body>
<div id="container"  class="container ">	<!-- Container Starts-->
			<div id="banner"  class="row">   			<!-- banner Starts-->
                            <div  align="center" >
                            <img src="images/banner.jpg" class=" img-responsive img-thumbnail" >
                           </div>
            </div>	                                <!-- banner Ends-->
  

			<div id="menu" class="row">	<!-- menu Starts-->	
              
                            <ul class=" col-md-offset-1 nav nav-pills">
                            <!-- Home Page Link -->
                            
                            <li>
	                             <s:url action="MyProfileAction.action"  id="urlTagb" ></s:url>
							     <s:a href="%{urlTagb}"> Home</s:a>
							</li>
							<!-- Home Page Like Ends Here -->
							
							 <li><a href="#" id="contact" class="" rel="popover"
                             data-content="Phone :(91)(080)26730904 
                                           Mobile:(91)9845199675,9663821291
                                           Technical support:Mobile:(91)9632905725" 
							 data-original-title="Contact us:">
                             <span class="glyphicon glyphicon-earphone"></span> Contact Us</a>
                             </li>
                             
                           <!-- Logout Link Start Here -->
                             
                              <li>
                              
                              	<s:url action="LogoutAction.action" id="urlTag1"></s:url> 
                             	<s:a href="%{urlTag1}" ><span class="glyphicon glyphicon-log-out"></span> Logout</s:a>
                              	
                              </li>
                              <!--Logout Link Start Here Ends Here -->
                              
                             
                            </ul>


			</div>	<!-- menu Ends-->

				
               <div class="row">  <!-- content Strats -->
               <div class="col-md-6 col-md-offset-3"> <center>
               <div class="panel panel-success">
                                  <div class="panel-heading">
                                    <h3 class="panel-title text-danger">Change Password</h3>
                                  </div>
                                  <div class="panel-body">
                             <form action="ChangePasswordAction.action" method="post" id="ProfileAction" name="ProfileAction" >
                             <s:hidden  value="%{#session.myprofile.username}" id="username"  name="username"  />
                               <table  border="1" bordercolor="#99FF99 " class="table table-responsive"  >
                                  <tr>
                                    <td width="200" class="text-primary"><center>Old Password</center></td>
                                    <td width="200"><s:password id="oldpassword"  cssClass="form-control" theme="simple" /></td>
                                  </tr>
                                  <tr>
                                    <td class="text-primary"><center>New Password</center></td>
                                    <td><s:password  name="password" id="newpassword" cssClass="form-control" theme="simple"/></td>
                                  </tr>
                                  <tr>
                                    <td class="text-primary"><center>Conform Password</center></td>
                                    <td><s:password   id="cpassword" cssClass="form-control" theme="simple"/></td>
                                  </tr>
                                  <tr>
                                    <td><center><!-- <input type="submit" value="Submit" class="btn btn-success " onclick="changepassword()">-->
                                     <!-- <img style="cursor:pointer; float:right;" class="btn btn-success " onclick="changepassword()" /> -->
                                     <a  class="btn btn-success" onclick="changepassword()">Submit</a>
                                     </center></td>
                                    <td><center><input type="reset" value="Reset" class="btn btn-success" onclick="Cancel()"></center></td>
                                  </tr>
                                </table>

                    </form>
                                  </div>
                                </div>

                   </center>
               </div>
               
               </div>   <!-- content Ends -->
             
             
		  <div id="footer" class="row" >	 <!-- Footer Starts-->
          <div id="footerimage" class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 img-responsive img-rounded">
          <center> <p> Copyright &copy; 2014 MySangathi.com. All rights reserved.</p></center>
          </div>
		 </div>	 <!-- Footer Ends-->
</div>     <!-- Container Ends-->



<!-- Javascript -->
<script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
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
  
function changepassword()
{
	
	 


   var username=document.getElementById('username').value;	
 
   var password=document.getElementById('oldpassword').value;
   
   
    
    var newpassword = document.getElementById('newpassword').value;
    var conformpassword = document.getElementById('cpassword').value;
    
  
  
    if(password =='')
    {
    	 alert("Enter the Old Password");
     	 return false;
    	 
    }

    if(newpassword == '' ){
    	alert("Enter the New Password");
    	return false;
    }
    if(conformpassword == '' ){
    	alert("Enter the conform password");
    	return false;
    }

    if(newpassword.length <= 6)
    {
    	alert("The new password should be grater than 6 character");
    	return false;
    }
    if(conformpassword.length <=6)
    {
    		alert("The conform password should be greater than 6 character");
    		return false;
    }
    if(newpassword != conformpassword)
    {
    	alert("The new password does not match with the conform password");
    	return false;
    }
		
    

	$.post("CheckChangePasswordUserNameAndPasswordAction.action",{'username':username ,'password':password} , function(data)
	{
		//alert(data);
		if(data=="Notmatching")
		{
			
			alert("Old Password is Wrong!");
			return false;
		}
		else 
		{
			
			
			document.forms["ProfileAction"].submit();
			alert("Password Changed Sucessfully");
		}
		
	});


}

  
   
</script>


</body>
</html>
