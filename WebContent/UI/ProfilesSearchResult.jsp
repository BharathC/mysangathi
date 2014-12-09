<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="s" uri="/struts-tags"%>
    <%@ taglib prefix="img" uri="/struts-images"%>
    <%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page import="java.sql.Date" %>
<%@page session="false" %>
<%@ page isELIgnored="false" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MySangathi Matrimony,MySangathi Matrimony,free matrimonials,india matrimonial,marriage sites,horoscope matrimonial services,marriage</title>
<meta name="Description" content=" Free Indian matrimonials site, kannada matrimonials, Indian marriages, India Matrimonial, Shadi, Marriage bureaus,Life partner,sangathi,Hindu Matrimonial,Lingayath Matrimonial" />
<meta name="keywords" content="Matrimony,Matrimonial,Matrimonials,Marriage sites,Free matrimonials,Indian matrimonials,Match making,Life partner,sangathi,Bride,Groom,Partner selection,shadi,Hindu Matrimonials,Muslim,Jain,christian,Kannada Matrimonials" />
<meta name="title" content="mysangathi.com Matrimonials;  Free Indian matrimonials site, Matchmaking, Muslim matrimonials, Shadi, Marriage bureaus, Indian marriages, Hindu,Lingayath Matrimonials ,Gowda's,kannada matrimonials" />
<meta name="comment" content=" Matrimonial Site; Your link to Free Indian matrimonials site, Matchmaking, matrimonials, Indian marriages, India Matrimonial, Shadi, Marriage bureaus, Lingayath  Matrimonial,kannada matrimonials " />

<meta name="document-classification" content=" Free Matrimonial Service" />
<meta name="robots" content="noindex, nofollow" />
<link rel="canonical" href="http://www.mysangathi.com/" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" media="all" href="css/jquery.fancybox.css"></link>


<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery.fancybox.js?v=2.0.6"></script>
<script type="text/javascript" src="js/jctextcopyprotector.js"></script>

  
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
#footerimage {
	background-image: url(images/bottom.jpg);

}
body {
	font-family:"Arial",Times New Roman,Georgia,Serif;
}
#registration {
	margin-top: 25px;
}

/* Display image */

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

 /* HOVER STYLES */
      div#pop-up2 {
        display: none;
        position: absolute;
        
        width: 105px;
        color: #000000;
        border: 1px solid #1a1a1a;
        font-size: 90%;
        border:2px solid #a1a1a1;
		padding:1px; 
		background:#dddddd;
		
      }
#showphoto img{
      width:300px;
      height:auto;
      }
 .fancybox-inner {
 width:auto!important;
 height:auto!important;}
.rss-popup {
    margin: 800px;
    padding: 0;
    width: 100px;
    position: relative;
}

.fancybox-wrap, .fancybox-desktop, .fancybox-type-inline, .fancybox-opened { width:auto!important;} 

#basic-information { padding:30px; margin-top:20px;}

#basic-information span { font-weight:bold; font-size:20px; color:#b03b10;}

#sub { width: 100PX;
HEIGHT: 40PX;
background-color: #5d9e64;
COLOR: #FFFFFF;
font-size: 20PX;
border:none;-moz-border-radius: 10px;
    -webkit-border-radius: 10px;
    -khtml-border-radius: 10px;
    border-radius: 10px;cursor:pointer;}
</style>
</head>

<body onload="return disableCtrlKeyCombination(event);" onkeypress="return disableCtrlKeyCombination(event);" onkeydown="return disableCtrlKeyCombination(event);" onselectstart="return false">
<div id="container"  class="container ">	<!-- Container Starts-->
			<div id="banner"  class="row">   			<!-- banner Starts-->
                            <div align="center" >
                            <img src="images/banner.jpg" class=" img-responsive img-thumbnail" >
                           </div>
            </div>	                                <!-- banner Ends-->
  

			<div id="menu" class="row">	<!-- menu Starts-->	
              
                            <ul class=" col-md-offset-1 nav nav-pills">
                            <li>
                            	   <s:url action="MyProfileAction.action"  id="urlTagb" ></s:url>
								   <s:a href="%{urlTagb}"> Home</s:a>
							</li>
                            <li ></li>
                            <!--li><a href="#" id="contact" class="" rel="popover"
                             data-content="Phone :(91)(80)26723353,(80)26730904 
                                           Mobile:(91)9845199675,9663821291
                                           Technical support:Mobile:(91)9632905725" 
							 data-original-title="Contact us:">
                             <span class="glyphicon glyphicon-earphone"></span> Contact Us</a>
                             </li-->
                     
                               <!--Logout Botton -->
                             <li>
                             	<s:url action="LogoutAction.action" id="urlTag1"></s:url> 
                             	<s:a href="%{urlTag1}" ><span class="glyphicon glyphicon-log-out"></span> Logout</s:a>
                             </li>
                             <!-- Logout Botton End -->
                              <li>
                              	<s:if test="%{#session.myprofile.isadmin == 'true'}">
									<h6 class="text-primary thumbnail">Welcome
										<s:property id="name"  value="%{#session.myprofile.name}"/></h6>
										<!--  &nbsp;And
										Your ReferenceId: <s:property  id = "referenceid" value ="%{#session.myprofile.referenceid}" /></font>-->
									</s:if>
									<s:else>
									<h6 class="text-primary thumbnail">Welcome
										<s:property id="name"  value="%{#session.myprofile.firstname}"/>&nbsp;And
										Your ReferenceId: <s:property  id = "referenceid" value ="%{#session.myprofile.referenceid}" /></h6>
							     </s:else>
                              </li>
                         
                            </ul>


			</div>	<!-- menu Ends-->

				
               <div class="row"> <!--row Starts -->
                  <div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1">   <!--Content Starts -->

										<s:if test="%{#session.myprofile.paidstatus != 'paid'   &&  #session.myprofile.isadmin == 'false'}">
										
											
										    <center>
											<h4 class="text-primary thumbnail">You are not a paid member.To view profile details  <!--  <strong>contactAdmin : 9845199675, 9663821291</strong>  --> 
										 	     <a class="btn btn-success">Upgrade Profile</a></h4>
										    </center>
										</s:if>
										
										<display:table name="profiles" id="profilerow"  requestURI="SearchAction.action" class="table table-responsive table-striped table-hover table-condensed table-bordered thumbnail" varTotals="totals" pagesize="10" partialList="17" >
											<display:column property="referenceid" title="RefernceId" sortable="true" ></display:column>
											<display:column property="name" title="Name" sortable="true"> </display:column>
											<display:column property="gender" title="Gender" sortable="true"> </display:column>
											<display:column property="age" title="Age" sortable="true"> </display:column>
											<display:column property="religion" title="Religion" sortable="false"> </display:column>
											<display:column property="caste" title="Caste" sortable="false"> </display:column>
											<display:column property="subcaste" title="Subcaste" sortable="false"> </display:column>
											<display:column property="education" title="Education" sortable="false"> </display:column>
											<display:column property="profession" title="Profession" sortable="false"> </display:column>
										<!--
											To show the admin the active and inactive of profile status 27-03-13(javed).
										-->
										<s:if test="%{isadmin == 'true' }"> 
											<display:column media="html" title="Profile Status" >
											<!--<s:property  value="#attr.profilerow.inactive"/>-->
											 <s:if test="%{#attr.profilerow.inactive == 1}" >
												Inactive
											 </s:if>
											 <s:elseif test="%{#attr.profilerow.inactive == 0}" >
											 Active
											 </s:elseif>  
											 </display:column>
										</s:if>
										<!--
										   To show the admin the amount is paid or not 28-03-13(javed).
										-->
										<s:if test="%{#session.myprofile.isadmin  == 'true' }"> 
										<display:column media="html" title="AmountPaid">
										 <s:if test="%{#attr.profilerow.amountpaid ==0.0}" >
											 Amount not paid
										 </s:if>
										 <s:else>
										 <s:property  value="#attr.profilerow.amountpaid" />
										 </s:else>
										 </display:column>
										</s:if> 
										<display:column media="html" title="View Photo">
										<s:if test="%{#attr.profilerow.getPhoto() ==null  || #attr.profilerow.getPhoto().equals('null') }">
										
										no photo available
										  </s:if>
										<s:else>
										<a href="#showphoto" class="modalbox"  id="trigger2" onclick="showphoto(<s:property value="#attr.profilerow.profileid"/>)">view photo</a>&nbsp;
										
										<!-- <div id="pop-up2"> 
											<img src="<s:property value="#attr.profilerow.photo"/>" width="105" height="75" /> -->
										
										  <!--  <a href="<s:property value="#attr.profilerow.photo"/>" width="75" height="75" />
										 <img src="<s:property value="profilerow.photo"/>" width="110px" height="100px"  /> --> 
										<!-- </div> -->
										<!--
										  <a href="<s:property value="#attr.profilerow.photo"/>" width="75" height="75" />
										 -->
										 </s:else>
										 </display:column>
										<s:if test="%{paidstatus == 'paid' || isadmin == 'true'}">
										<display:column media="html" title="View partner's profile">
										<a href="ProfileviewAction.action?isadmin=<%=request.getParameter("isadmin") %>&&profileid=${profilerow.profileid}&&fromprofileid=%{#session.myprofile.profileid}%>">View partner's profile</a>
										</display:column>
										</s:if>
										</display:table>
										
										
										
										
										
										
               
              						 </div>  <!-- content ends -->
               
               </div> <!--row Ends -->
		
			<div id="footer" class="row" >	 <!-- Footer Starts-->
          <div id="footerimage" class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 img-responsive img-rounded">
          <center> <p><strong> Copyright © 2014 MySangathi.com. All rights reserved.</strong></p></center>
          </div>
		 </div>	 <!-- Footer Ends-->
    <!-- Container Ends-->

<!-- Javascript -->
<script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
 <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery.fancybox.js?v=2.0.6"></script>
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


function disableCtrlKeyCombination(e)
{
//list all CTRL + key combinations you want to disable
var forbiddenKeys = new Array('a','c','x','v');
var key;
var isCtrl;

if(window.event)
{
key = window.event.keyCode;     //IE
if(window.event.ctrlKey)
isCtrl = true;
else
isCtrl = false;
}
else
{

key = e.which;     //firefox
if(e.ctrlKey)
isCtrl = true;
else
isCtrl = false;
}

//if ctrl is pressed check if other key is in forbidenKeys array
if(isCtrl)
{
for(i=0; i<forbiddenKeys.length; i++)
{
//case-insensitive comparation
if(forbiddenKeys[i].toLowerCase() == String.fromCharCode(key).toLowerCase())
{
/*alert('Key combination CTRL + '+String.fromCharCode(key) +' has been disabled.');*/
return false;
}
}
}
return true;
}
	
	/*
jQuery(document).ready(function()
{
    jQuery().jctextcopyprotector();
}); 
*/

$(function() 
{
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
  
/*function partnerprofile(data){
	alert(data);
	
}*/

$(".modalbox").fancybox();

function showphoto(profileid){
	
	//Make An ajax call and send the ID to Action Class
  //  alert('===========================>>>>'+profileid)

	$.post("DisplayImageAction.action",{'profileId':profileid} , function(data) {
		//alert('incoming data is'+data)
        jQuery().jctextcopyprotector();
        $("#showphoto").html(data);

		});
}



$(function() 
		{
	   var moveLeft = 10;
	    var moveDown = 20;
	    
	    $('a#trigger2').hover(function(e) {
	      $('div#pop-up2').show();
	      //.css('top', e.pageY + moveDown)
	      //.css('left', e.pageX + moveLeft)
	      //.appendTo('body');
	    }, function() {
	      $('div#pop-up2').hide();
	    });
	    
	    $('a#trigger2').mousemove(function(e) {
	      $("div#pop-up2").css('top', e.pageY + moveDown).css('left', e.pageX +  moveLeft);
	    });
	    
	  });

</script>

<div id="showphoto" >
</div>
										
</body>
</html>