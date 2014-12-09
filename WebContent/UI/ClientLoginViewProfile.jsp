<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
       <%@ taglib prefix="s" uri="/struts-tags"%>
    
      <%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
      
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
<meta name="comment" content=" Matrimonial Site; Your link to Free Indian matrimonials site, Matchmaking, matrimonials, Indian marriages, India Matrimonial, Shadi, Marriage bureaus, Lingayath  Matrimonial,kannada matrimonials " />

<meta name="document-classification" content=" Free Matrimonial Service" />

<meta name="robots" content="index, follow" />

<link rel="canonical" href="http://www.mysangathi.com/" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/jquery-ui.min.css" rel="stylesheet">
<style type="text/css">
#container {
	margin-top: -10px;
	margin-right: auto;
	margin-bottom: 20px;
	margin-left: auto;
	background-image: url(images/);
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
</style>



</head>

<body>
<div id="container"  class="container ">	<!-- Container Starts-->
			<div id="banner"  class="row">   			<!-- banner Starts-->
                            <div align="center" >
                            <img src="images/banner.jpg" class=" img-responsive img-thumbnail" >
                           </div>
            </div>	                                <!-- banner Ends-->
  

			<div id="menu" class="row">	<!-- menu Starts-->	
              
                            <ul class=" col-md-offset-1 nav nav-pills nav">
                            <li > <!--Home button  -->
                           
                                   <s:url action="MyProfileAction.action"  id="urlTagb" ></s:url>
								   <s:a href="%{urlTagb}"> Home</s:a>
							
							<!-- Home button End --></li>
                             <li><a href="#" id="contact" class="" rel="popover"
                             data-content="Phone :(91)(080)26730904 
                                           Mobile:(91)9845199675,9663821291
                                           Technical support:Mobile:(91)9632905725" 
							 data-original-title="Contact us:">
                             <span class="glyphicon glyphicon-earphone"></span> Contact Us</a>
                             </li>
                              
                              <li>
                              	<s:url action="LogoutAction.action" id="urlTag1"></s:url> 
                             	<s:a href="%{urlTag1}" ><span class="glyphicon glyphicon-log-out"></span> Logout</s:a>
                              </li>
                              
                              <li>
                              	<s:if test="%{#session.myprofile.isadmin == 'true'}">
									<font face="verdana" color="black" >Welcome
										<s:property id="name"  value="%{#session.myprofile.name}"/>
										<!--  &nbsp;And
										Your ReferenceId: <s:property  id = "referenceid" value ="%{#session.myprofile.referenceid}" /></font>-->
									</s:if>
									<s:else>
									<font face="verdana" color="black" >Welcome
										<s:property id="name"  value="%{#session.myprofile.name}"/>&nbsp;And
										Your ReferenceId: <s:property  id = "referenceid" value ="%{#session.myprofile.referenceid}" /></font>
							     </s:else>
                              </li>
                            </ul>


			</div>	<!-- menu Ends-->
               
				<div id="content" class="row">  <!--Row1 content Starts -->
                         
                			<div class="col-md-7 col-md-offset-1 col-sm-7 col-sm-offset-1"> <!-- basic info -->
                			<s:form theme="simple">
                              <table  border="0" class="table table-responsive table-striped table-hover table-condensed thumbnail">
                                            <tr>
                                              <td colspan="3"><h4 class="text-danger text-center thumbnail">Personal Details :</h4></td>
                                             
                                            </tr>
                                            <tr>
                                              <td width="200">
                                             		 <h5 class="text-primary text-right"> Name :</h5>
                                              </td>
                                              <td width="200" colspan="2">
                                              	<center><s:property value="%{#session.profile.name}"  /> </center>
                                              </td>
                                             
                                            </tr>
                                            <tr>
                                             <td ><h5 class="text-primary text-right">Date of Birth :</h5></td>
                                              <td colspan="2">	<center><s:property value="%{#session.profile.dateofbirth}"  /> </center></td>
                                             
                                            </tr>
                                            <tr>
                                               <td><h5 class="text-primary text-right">Gender  :</h5></td> 
                                               <td colspan="2">	<center><s:property value="%{#session.profile.gender}"  /> </center></td>
                                             
                                            </tr>
                                            <tr>
                                              <td><h5 class="text-primary text-right">Religion :</h5></td> 
                                              <td colspan="2">	<center><s:property value="%{#session.profile.religion}"  /> </center></td>
                                             
                                            </tr>
                                            <tr>
                                             <td><h5 class="text-primary text-right">Caste :</h5></td> 
                                             <td colspan="2"><center><s:property value="%{#session.profile.caste}"  /> </center></td>
                                             
                                            </tr>
                                            <tr>
                                              <td><h5 class="text-primary text-right">Sub Caste :</h5></td>
                                               <td colspan="2">	<center><s:property value="%{#session.profile.subcaste}"  /> </center></td>
                                             
                                            </tr>
                                            <tr>
                                               <td><h5 class="text-primary text-right">Nakshatra :</h5></td>
                                                <td colspan="2"><center><s:property value="%{#session.profile.nakshtra}"  /> </center></td>
                                             
                                            </tr>
                                            <tr>
                                              <td><h5 class="text-primary text-right">Rashi :</h5></td>
                                               <td colspan="2">	<center><s:property value="%{#session.profile.rashi}"  /> </center></td>
                                             
                                            </tr>
                                            <tr>
                                              <td><h5 class="text-primary text-right">Marital Status :</h5></td>
                                               <td colspan="2">	<center><s:property value="%{#session.profile.martialstatus"  /> </center></td>
                                             
                                            </tr>
                                            <tr>
                                             <td colspan="3"><h4 class="text-danger text-center thumbnail">Professional Details :</h4></td>
                                             
                                            </tr>
                                            <tr>
                                             <td><h5 class="text-primary text-right">Qualification :</h5></td>
                                              <td colspan="2">	<center><s:property value="%{#session.profile.education}"  /> </center></td>
                                             
                                            </tr>
                                            <tr>
                                             <td><h5 class="text-primary text-right">Profession :</h5></td> 
                                             <td colspan="2"><center><s:property value="%{#session.profile.profession}"  /> </center></td>
                                             
                                            </tr>
                                            <tr>
                                             <td><h5 class="text-primary text-right">Name of the company :</h5></td> 
                                             <td colspan="2"><center><s:property value="%{#session.profile.companyname}"  /> </center></td>
                                             
                                            </tr>
                                            <tr>
                                             <td><h5 class="text-primary text-right">Working country :</h5></td> 
                                             <td colspan="2"><center><s:property value="%{#session.profile.countrylivingin}"  /> </center></td>
                                             
                                            </tr>
                                            <tr>
                                              <td colspan="3"><h4 class="text-danger text-center thumbnail">Parents Details :</h4></td>
                                            </tr>
                                            <tr>
                                              <td><h5 class="text-primary text-right">Father Name :</h5></td>
                                               <td colspan="2">	
                                               <center>
                                               		<s:property value="%{#session.profile.fathername}" /> 
                                               </center></td>
                                             
                                            </tr>
                                            <tr>
                                             <td><h5 class="text-primary text-right">Father Occupation :</h5></td> 
                                             <td colspan="2">
                                             	<center><s:property value="%{#session.profile.fatheroccupation}"/> </center>
                                             </td>
                                             
                                            </tr>
                                            <tr>
                                             <td><h5 class="text-primary text-right">Mother Name :</h5></td>
                                              <td colspan="2"><center><s:property value="%{#session.profile.mothername}"  /> </center></td>
                                             
                                            </tr>
                                            <tr>
                                             <td><h5 class="text-primary text-right">Mother Occupation :</h5></td>
                                             
                                              <td colspan="2"><center><s:property value="%{#session.profile.motheroccupation}"  /> </center></td>
                                             
                                            </tr>
                                            <tr>
                                             <td width="200"><h5 class="text-primary text-right">Siblings :</h5>                                         
                                             </td>
                                             <td width="220"><h5 class="text-primary text-left">No of brothers :</h5>
                                             	<center><s:property value="%{#session.profile.noofbrothers}"  /> </center>
                                             </td>
                                             <td width="210"><h5 class="text-primary text-left">No of Sisters :</h5>
                                             	<center><s:property value="%{#session.profile.noofsisters}"  /> </center>
                                             </td>
                                            </tr>
                                          </table>
									</s:form>
									
                                         <!--Start Admin Section -->
                                           <s:if  test="%{#session.myprofile.isadmin == 'true' && profile.paidstatus == 'paid'}">	
                                           <s:hidden name="profileid" value="%{profile.profileid}" />
                                           
                                          <div> 
                                        
                                         <table border="0" class="table table-responsive table-striped table-hover table-condensed thumbnail" >
                                              <tr>
                                                 <td colspan="3"><h4 class="text-danger text-center thumbnail">Admin Section :</h4></td>
                                              </tr>
                                              <tr>
                                                <td width="200"><h5 class="text-primary text-right">Paid :</h5></td>
                                                <td  width="200"colspan="2"><s:checkbox name="paidstatus"   value="true" disabled="true" theme="simple"/></td>
                                                
                                              </tr>
                                              <tr>
                                               <td><h5 class="text-primary text-right">Payment Date :</h5></td>
                                                <td colspan="2"><s:property value="profile.paymentdate" /></td>
                                              </tr>
                                              <tr>
                                               <td><h5 class="text-primary text-right">Payment Type :</h5></td>
                                                <td colspan="2"><s:property  value="profile.paymenttype" /></td>
                                              </tr>
                                              <tr>
                                               <td><h5 class="text-primary text-right">Comments :</h5></td>
                                                <td colspan="2"><s:property  value="profile.comments" /></td>
                                              </tr>
                                              <tr>
                                               <td><h5 class="text-primary text-right">Amount :</h5></td>
                                                <td colspan="2"><s:property  value="profile.amountpaid" /></td>
                                              </tr>
                                              <tr>
                                                <td width="200"><h5 class="text-primary text-right">Profile Status:</h5></td>
                                                <td width="200" >
                                                		<center>
                                                			<s:radio label="Profile Status" name="inactive" theme="simple" id="inactive" list="#{'1':'Deactivate','0':'Activate'}" value="%{profile.inactive}" onclick="setprofilestatus(this)"/>
                                                		</center>
                                                </td>
                                               <!--  <td width="200"><center><input type="radio" name="status" value="deactive">Deactivate</center></td>-->
                                              </tr>
                                              <tr>
                                                <td colspan="3">
                                                        <center>
                                                            <input type="submit" value="Change Profile Status" class="btn btn-success" onclick="deactivateprofile()">
                                                            <s:hidden name="deactivate" id="deactivate"></s:hidden>
                                                        </center>
                                                </td>
                                                
                                              </tr>
                                            </table>

                                        
                                         </div>   <!--End Admin Section -->
                                          </s:if>
                                          
                                          
                                          <!--  -->
                                          <s:if test="%{#session.myprofile.isadmin == 'false'}">
	
											<!-- <form action="InterestProfileAction.action" method="post" id="form1">-->	
											<s:hidden value="%{#session.myprofile.profileid}" name="fromprofileid" id="fromprofileid"></s:hidden>
											
										    <!--  <s:textfield label="interestedprofileid"  value="%{interestprofile.toprofileid}" name="toiprofileid" id="toiprofileid"></s:textfield> -->
											<s:hidden label="myprofileid" value="%{profile.profileid}" name="toprofileid" id="toprofileid"></s:hidden>
											
											<s:if test="%{interestcount == 0}">
											
											<tr>
											<td><div id="interestprofile">
											<P>Click below button to show your interest on this profile. Admin will communicate with the partner and get back to you with update.</P> 
												<input type="button"  value="Interest Profile" onclick="interestprofile()"/></div></td>
										 	</tr>
										 	
										 </s:if>
										 <s:else>
										 <tr><td><div id="interestedtoid" >
										  <b>You are selected this profile as Interested.</b>
										  </div></td></tr>
										</s:else>	
										 <div id="interested" style="display:none">
												<b>You are selected this profile as Interested.</b>
											</div>
										 <br />
                                          
                                          
                                          	</s:if>
                                          
                                  
                                          <!--Admin Payment section if the member is not paid  -->
                                            <s:if  test="%{#session.myprofile.isadmin == 'true' && profile.paidstatus != 'paid'}">
                                            <s:form action="AdminPaymentAction.action" method="post" id="AdminPaymentAction"  name="AdminPaymentAction" theme="simple">
                                             <s:hidden name="profileid" value="%{profile.profileid}" />
                                          <div> 
                                            <table border="0" class="table table-responsive table-striped table-hover table-condensed thumbnail">
                                              <tr>
                                                 <td colspan="3"><h4 class="text-danger text-center thumbnail">Admin Section :</h4></td>
                                              </tr>
                                              <tr>
                                                <td width="200"><h5 class="text-primary text-right">Paid :</h5></td>
                                                <td  width="200"colspan="2">
                                                
                                                	<s:checkbox name="paidstatus" label="Paid" value="paid"  id="paidstatus" >
                                                	</s:checkbox>
                                                	
                                                </td>
                                                
                                              </tr>
                                              <tr>
                                               <td><h5 class="text-primary text-right">Payment Date :</h5></td>
                                                <td colspan="2">
                                                
                                                	<s:select  list="#{'':'day','1':'1','2':'2','3':'3','4':'4','5':'5','6':'6','7':'7','8':'8','9':'9','10':'10','11':'11','12':'12','13':'13','14':'14','15':'15','16':'16','17':'17','18':'18','19':'19','20':'20','21':'21','22':'22','23':'23','24':'24','25':'25','26':'26','27':'27','28':'28','29':'29','30':'30','31':'31'}" name="dob_day" id="dob_day" onchange="setpaymentdate()"></s:select>
													<s:select  list="#{'':'Month','1':'JAN','2':'FEB','3':'MAR','4':'APR','5':'MAY','6':'JUN','7':'JUL','8':'AUG','9':'SEP','10':'OCT','11':'NOV','12':'DEC' }" name="dob_month" id="dob_month" onchange="setpaymentdate()"></s:select>
													<s:select  list="#{'':'Year','2013':'2013','2012':'2012','2011':'2011' }" name="dob_year" id="dob_year" onchange="setpaymentdate()"></s:select>
													<s:hidden id="paymentdate" name="paymentdate"/>
 	
                                                </td>
                                              </tr>
                                              <tr>
                                               <td><h5 class="text-primary text-right">Payment Type :</h5></td>
                                                <td colspan="2">
                                                	<s:select name="paymenttype" id="payment" label="Payment Type"  list="#{'Cheque':'Cheque','Online Transfer':'Online Transfer','Cash':'Cash' , 'Others':'Others'}" ></s:select>
                                                </td>
                                              </tr>
                                              <tr>
                                               <td><h5 class="text-primary text-right">Comments :</h5></td>
                                                <td colspan="2"> 
                                                	<s:textfield id="comm" name="comments"  label="Comments"></s:textfield>
                                                </td>
                                              </tr>
                                              <tr>
                                               <td><h5 class="text-primary text-right">Amount :</h5></td>
                                                <td colspan="2">
                                                	<s:textfield  id="amount" name="amountpaid"  label="Amount Paid"></s:textfield>
                                                </td>
                                              </tr>
                                              <tr>
                                                <td width="200"><h5 class="text-primary text-right">Profile Status:</h5></td>
                                                <td width="200">
                                                	<center>
                                                			<s:radio label="Profile Status" name="inactive" id="inactive" list="#{'1':'Deactivate','0':'Activate'}" value="%{profile.inactive}" onclick="setprofilestatus(this)"/>
                                                	</center>
                                                </td>
                                                <!-- <td width="200"><center><input type="radio" name="status" value="deactive">Deactivate</center></td>-->
                                              </tr>
                                              <tr>
                                                <td colspan="3">
                                                		<center>
                                                			<input type="submit" value="Change Profile Status" class="btn btn-success" onclick="deactivateprofile()">
                                                			 <s:hidden name="deactivate" id="deactivate"></s:hidden>
                                                		</center>
                                                </td>
                                                
                                              </tr>
                                            </table>

                                        
                                         </div>  
                                         </s:form>
                                         </s:if> 
                                         <!--End Admin payment section Section -->
                    
                            </div>                                 <!-- basic info Ends -->
                            
                            <div class="col-md-3 col-sm-3 thumbnail"> 
                            		 <!-- Start Profile picture-->
                                        <div id="photosection">
											<s:if test="%{profile.photo==null}">
										       No photo available
										        </s:if>
										        <s:else>
										
										     <img class="img-responsive" style="margin-top:57px;" src="<s:property value="profile.photo"/>"  height="auto" onmouseover="disableRightClick()"/>
										</s:else>
										</div>
                                    <!--End Profile picture-->
                            
                                    <div class="thumbnail">   <!--Show contact information -->
                                    
                                       Contact information:
                                    
                                    </div>   <!--End Show contact information -->
                             
                   
                   
                    </div>                <!--Row1 content Ends -->        
                     
                    
          
          
		 <div id="footer" class="row" >	 <!-- Footer Starts-->
							<div id="footerimage" class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 img-responsive img-rounded"><center> <p class="text-primary"> Copyright © 2014 MySangathi.com. All rights reserved.</p>
           </center></div>
		 </div>	 <!-- Footer Ends-->
</div>     <!-- Container Ends-->



<!-- Javascript -->

<script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/jquery.ui.core.min.js" type="text/javascript"></script>
<script src="js/jquery.ui.widget.min.js" type="text/javascript"></script>
<script src="js/jquery.ui.datepicker.min.js" type="text/javascript"></script>

<script>
$(function() {
    $( "#datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true
    });
  });
</script>

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

	  
function goBack()
{
window.history.back()
}

jQuery(document).ready(function()
{
    jQuery().jctextcopyprotector();
});   

window.onload=function(){
 {	$("#slidedetails").hide();
}

	$("#contactdetails").click(function () {
	   $('.slidedetails').slideToggle();
	});

	$("#reset").click(function(){
		location.reload();
	});
}


$(".modalbox").fancybox();  
function submitMessage(fromprofileid,toprofileid)
{
	
	
	        var message=document.getElementById('getmessage').value;
	       //  alert("Message New IS=================="+document.getElementById('getmessage').value);
	        //var toprofileid=document.getElementById('toprofileid').value;
    	
			//alert("fromprofileid    is   "+fromprofileid);
			//alert("to profile id is   "+toprofileid);
        	//var fromprofileid=document.getElementById('fromprofileid').value;
        	
        	
         
        	//alert("3================"+fromprofileid);
        	
        	//$(".modalbox").fancybox(); 
        	$.post("AdminMessageSaveAction.action",{'fromprofileid':fromprofileid ,'toprofileid':toprofileid,'message':message}, function(data)
        			{
        				//alert(data);
        				location.reload(true);
        		        //$("").html(data);

        		      
        			});
           
        	
        	
        }
 

/*function submiteactionmsessage()
{
	var toprofileid=document.getElementById('profileid').value;
	var fromprofileid=document.getElementById('toprofileid').value;
	//alert(toprofileid);
	//alert(fromprofileid);
	$(".modalbox").fancybox();
	$.post("AdminMessageAction.action",{'fromprofileid':fromprofileid ,'toprofileid':toprofileid}, function(data)
	{
		alert(data);
		
        $("#inline").html(data);

      
	});
	
}*/

//window.location.reload(true);

window.onload=function(){
 {	$("#slidedetails").hide();
}

	$("#contactdetails").click(function () {
	   $('.slidedetails').slideToggle();
	});

	$("#reset").click(function(){
		location.reload();
	});
}


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
  
function setpaymentdate()
{	
 //alert(document.getElementById('inactive').value);
	if(document.getElementById('paidstatus').checked == false)
	{
		alert("Mark the checkbox");
		return false;
	}
	
	/*if(document.getElementById('dob_day').value == '')
	{
		alert("Enter the payment date");
		return false;
	}
	if(document.getElementById('dob_month').value == '')
	{
		alert("Enter the payment month");
		return false;
	}
	if(document.getElementById('dob_year').value == '')
	{
		alert("Enter the payment year");
		return false;
	}*/
	if(document.getElementById('payment').value == '')
	{
		alert("Enter the payment type");
		return false;
	}
	if(document.getElementById('comm').value == '')
    {
		alert("Enter the payment comments");
		return false;
    }
	if(document.getElementById('amount').value == '')
    {
		alert("Enter the payment amount paid");
		return false;
    }
	
	var birthday=document.getElementById('dob_day').value;
	var birthmonth=document.getElementById('dob_month').value;
	var birthyear=document.getElementById('dob_year').value;	
	document.getElementById('paymentdate').value=birthmonth+'/'+birthday+'/'+birthyear;
	alert("PAYMENT DATE IS"+document.getElementById('paymentdate').value);
	alert("Updated Sucessfully!");
	document.forms["AdminPaymentAction"].submit();
   // location.reload(true);

}

function interestprofile()
{
	document.getElementById('interestprofile').style.display='none';
	var toprofileid=document.getElementById('toprofileid').value;
	var fromprofileid=document.getElementById('fromprofileid').value;
	//alert(toprofileid);
	//	alert(fromprofileid);
	$.post("InterestProfileAction.action",{'fromprofileid':fromprofileid ,'toprofileid':toprofileid} , function(data) {
	

		
	
	if( data == 'interested')
	{

		 
		document.getElementById('interestprofile').style.display='none';
		document.getElementById('interested').style.display='block';
		document.getElementById('interestedtoid').style.display='none';
		
	     return false;
	}else if(data == 'notinterested'){
		document.getElementById('interestprofile').style.display='block';
		
		return false;
	}
	});
}


function setprofilestatus(activate)
{
	document.getElementById('deactivate').value=activate.value;
}

function deactivateprofile()
{
	
	//var value1=document.getElementById("deactivate").value;
	//var value2=document.getElementById("activate").value;
	
	//alert("Value one is"+value1);
	//alert("value two is"+value2);
	//alert("profile status is ");
	var profilestatus=document.getElementById('deactivate').value;
	//alert("profile status is below");
	//alert(profilestatus);
	
	if(profilestatus == '1')
	{
		
    	
     alert("Deactivating the Profile");  // added the alert message of Deactivation 28-03-13.
    
	}else if(profilestatus == '0')
	{
		 alert("Activating the Profile"); // added the alert message of Deactivation 28-03-13.
			
	}
	
	
	
	
	var profileid=document.getElementById('profileid').value;
	//alert(profileid);
	$.post("ProfileStatusAction.action",{'inactive':profilestatus ,'profileid':profileid} , function(data) 
	{
		//document.getElementById('deactivate').checked=true;		
		//location.reload(true);
	});
	
	
}

/*
function interestprofile()

{

var ajaxRequest; // The variable that makes Ajax possible!





try

{

// Opera 8.0+, Firefox, Safari

ajaxRequest = new XMLHttpRequest();

} catch (e){

// Internet Explorer Browsers

try{

ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");

} catch (e) {

try{

ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");

} catch (e){

// Something went wrong

alert("Your browser broke!");

return false;

}

}

}

// Create a function that will receive data sent from the server

ajaxRequest.onreadystatechange = function()

{

if(ajaxRequest.readyState == 4)

{

//alert(ajaxRequest.responseText );

if( ajaxRequest.responseText == 'interested')
{

	 
	document.getElementById('interestprofile').style.display='none';
	document.getElementById('interested').style.display='block';
	document.getElementById('interestedtoid').style.display='none';
	
     return false;
}else if(ajaxRequest.responseText == 'notinterested'){

	
	return false;
}
//document.all.resultRow.innerHTML =ajaxRequest.responseText ;

//document.all.loginStatus.style.color = "GREEN";

}

}

alert(document.getElementById('fromprofileid').value);

alert(document.getElementById('toprofileid').value);
ajaxRequest.open("GET", "InterestProfileAction.action?fromprofileid="+document.getElementById('fromprofileid').value+"&toprofileid="+document.getElementById('toprofileid').value, true);

ajaxRequest.send(null);

}

*/

/*function interests(){
	var message=document.getElementById('message');
	var InterestProfile = {"fromprofileid": "12", "toprofileid": "11" , "message":"hi guys"};
	                                 
	                             
	                         
	$.ajax({
        data: InterestProfile,
        type: "POST", 
        url: "InterestProfileAction.action",
        contentType: "application/json",
        dataType: "json" 

         });
	
		
		
        //$('#duplicate').css('display','none');
       // $('#showdata').html(data);

	/*$.ajax( {
	    type : "POST",
	    url : "InterestProfileAction.action",
	    data : {'message':message},
	    success : function(data) {
	        console.log("success"); 
	        },
	            error:error : function(request, textStatus, errorThrown) {
	        console.log("Error Thrown:"  +request.statusText); 
	        }
	 });}*/

	 function setmessage(message){
		 
		document.getElementById("getmessage").value=message.value;
		 
	 }
	 
	 
 function disableselect(e)
 {  
		 return false ; 
 }  

 function reEnable()
 {  
		 return true ; 
 }  
 function disableRightClick()
 {
//if IE4+  
 document.onselectstart=new Function ("return false") ; 
 document.oncontextmenu=new Function ("return false")  ;
 //if NS6  
 if (window.sidebar)
 {  
	 document.onmousedown=disableselect(e)  ;
	 document.onclick=reEnable();
 }  
 }	

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
</script>

</body>
</html>