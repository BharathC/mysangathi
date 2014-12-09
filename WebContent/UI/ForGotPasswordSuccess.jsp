<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
       	
			
%>
<div id="container"  class="container ">	<!-- Container Starts-->
			<div id="banner"  class="row">   			<!-- banner Starts-->
                            <div  align="center" >
                            <img src="images/banner.jpg" class=" img-responsive img-thumbnail" >
                           </div>
            </div>	                                <!-- banner Ends-->
  

			<div id="menu" class="row">	<!-- menu Starts-->	
              
                            <ul class=" col-md-offset-1 nav nav-pills">
                            <li><a href="<%=mysangathiURL%>">Home</a></li>
                           
                          
                              
                            <li><a href="#" id="contact" class="" rel="popover"
                             data-content="Phone :(91)(080)26730904 
                                           Mobile:(91)9845199675,9663821291
                                           Technical support:Mobile:(91)9632905725" 
							 data-original-title="Contact us:">
                             <span class="glyphicon glyphicon-earphone"></span> Contact Us</a>
                             </li>
                            </ul>


			</div>	<!-- menu Ends-->

				
               <div class="row">  <!-- content Strats -->
               <div class="col-md-9 col-md-offset-1"> <center>
                       <div class="panel panel-success">
                         
                          <div class="panel-body ">
                           <h4 class="text-primary thumbnail">Your password is sent to your email.    </h4>
                          </div>
                        </div>
                   </center>
               </div>
               
               </div>   <!-- content Ends -->
             
             
		 <div id="footer" class="row" >	 <!-- Footer Starts-->
							<div id="footerimage" class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 img-responsive img-rounded">
                            <center> <p><strong> Copyright © 2013 MySangathi.com. All rights reserved.</strong></p>
                            </center>
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

</body>
</html>