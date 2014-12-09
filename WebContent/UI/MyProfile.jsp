<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="s" uri="/struts-tags"%>
 <s:head theme="ajax" debug="true"/>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

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
<link rel="stylesheet" type="text/css" media="all" href="css/jquery.fancybox.css" />

<style type="text/css">
#container {
	margin-right: auto;
	margin-bottom: 10px;
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
                            <!-- Show only if admin equals to true -->
                             <s:if test="%{#session.myprofile.isadmin == 'true'}">
                            	 <li >
                            	      <s:url action="PreUploadProfileAction.action"  id="urlTag2" ></s:url>
                            	      
                            	      <s:a href="%{urlTag2}"><span class="glyphicon glyphicon-upload"> </span> Upload Profile</s:a>
                            	 </li>
                            	 <li>
                            	 
                            	    <s:url action="MiscPaymentAction.action" id="urlMiscpay"></s:url>
                            	    <s:a href="%{urlMiscpay}">MiscPayment</s:a>
                            	 <!-- 	<a href="UI/MiscPayment.jsp">MiscPayment</a>  -->
                            	 </li>
                             </s:if>
                            
                            <!-- Display only if admin equals false-->
                            <s:if test="%{#session.myprofile.isadmin == 'false'}">
	                            <li >
	                                  <!-- 
	                                 <div href="#inline2 " class="modalbox nav nav-pill"  id="trigger2"  onclick="showinterstedprofiles(<s:property value="%{#session.myprofile.profileid}"/>)">
	                            		 <s:a href="#" theme="simple" cssClass=""><span class=" glyphicon glyphicon-heart" > </span> Interested Profile</s:a>
	                            	</div> -->
	                            	
										 						
	                            </li>
	                            <li >
	                            	<s:url action="UpdateProfileAction.action"  id="urlTag" >
   										 <s:param name="profileid"><s:property value="%{#session.myprofile.profileid}"/></s:param>
									</s:url>
                                     <s:a href="%{urlTag}"><span class="glyphicon glyphicon-upload"> </span> Update Profile</s:a>
	                                   
	                            </li> 
	                             <li >
	                            	<s:url action="MatchMakingProfile.action"  id="urlTag4" >
									</s:url>
                                     <s:a href="%{urlTag4}"><span class="glyphicon glyphicon-user"> </span>  My Partner Criteria </s:a>
	                            </li> 
	                            <li>
	                            	<s:url action="" id="urlastro"></s:url>
	                            	<s:a href="%urlastro"> Astrology Check </s:a>
	                            </li>
                            </s:if>
                            <li>
                                <s:if test="%{#session.myprofile.isadmin == 'true'}">
								</s:if>
								<s:else>
								<s:url action="LoadChangePasswordAction.action"  id="urlTag3" >
								</s:url>
								<s:a href="%{urlTag3}">Change Password</s:a>
								</s:else>
								
							</li>
                           <!-- <li><a href="#" id="contact" class="" rel="popover"
                             data-content="Phone :(91)(080)26730904 
                                           Mobile:(91)9845199675,9663821291
                                           Technical support:Mobile:(91)9632905725" 
							 data-original-title="Contact us:">
                             <span class="glyphicon glyphicon-earphone"></span> Contact Us</a>
                             </li>   -->
                            <li>
                            	<s:url action="LogoutAction.action" id="urlTag1"></s:url> 
                             	<s:a href="%{urlTag1}" ><span class="glyphicon glyphicon-log-out"></span> Logout</s:a>
                            </li>
                             
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

				
               
                    
                    
                    
                    <div  id="content2" class="row">         <!-- content Starts -->
                   
                   	<div class="col-md-5 col-md-offset-1 ">     <!--Start Search by criteria-->
                    		
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                
                                  <h3 class="panel-title text-danger">Search  Profiles</h3>
                                </div>
                                <div class="panel-body">
                                
                              <s:form action="SearchAction.action" method="post" name="searchaction" id="searchaction" theme="simple">
                              
                                <s:hidden value="%{#session.myprofile.profileid}" id="profileid" name="profileid"></s:hidden>
								<s:hidden value="%{#session.myprofile.username}" id="username" name="username"></s:hidden>
								<s:hidden value="%{#session.myprofile.isadmin}" id="isadmin" name="isadmin"></s:hidden>
								<s:hidden value="%{#session.myprofile.paidstatus}" id="paidstatus" name="paidstatus"></s:hidden>
								<s:hidden  value="%{#session.matchprofile.profileid}" id="matchprofileid"  name="profileid"></s:hidden>
								<s:hidden value="%{#session.myprofile.education}" id="education" name="education"></s:hidden>
								<s:hidden value="%{#session.myprofile.workplace}" id="workplace" name="workplace"></s:hidden>
                              
                                <table align="center"  cellpadding="10">
                                              <tr>
                                                <td  ><p class="text-primary text-center">Looking for</p> </td>
                                                <td colspan="3" > 
                                                <s:if test="%{#session.myprofile.gender == 'male'}">
 														<p align="center">[Brides Profiles]</p>
														<s:hidden name="gender" value="female"></s:hidden>
														</s:if>
														<s:elseif test="%{#session.myprofile.gender == 'female'}">
														
														<p align="center">[Grooms Profiles]</p>
														<s:hidden name="gender" value="male"></s:hidden>
														</s:elseif>
														<s:elseif test="%{#session.myprofile.isadmin == 'true'}">
														
														<s:radio  theme="simple" name="gender"  id="gender1" list="#{'female':'Bride','male':'Groom'}"/>
														<br /> <br /><br /> 
														</s:elseif>
                                                
                                                
                                                </td>
                                                
                                              </tr>
                                              <tr>
                                                <td><p class="text-primary text-center">Age  </p> </td>
                                             <td>
                                                <s:select cssClass="" name="fromage" id="age1"  list="#{'18':'18','19':'19','20':'20','21':'21','22':'22','23':'23','24':'24','25':'25','26':'26','27':'27','28':'28','29':'29','30':'30','31':'31','32':'32','33':'33','34':'34','35':'35','36':'36','37':'37','38':'38','39':'39','40':'40','41':'41','42':'42','43':'43','44':'44','45':'45','46':'46','47':'47','48':'48','49':'49','50':'50'}" value="%{#session.matchprofile.fromage}" />
                                              </td>
                                                <td><p class="text-primary">to : </p></td>
                                              <td>
                                                <s:select cssClass="" name="toage" id="age2"  list="#{'22':'22','23':'23','24':'24','25':'25','26':'26','27':'27','28':'28','29':'29','30':'30','31':'31','32':'32','33':'33','34':'34','35':'35','36':'36','37':'37','38':'38','39':'39','40':'40','41':'41','42':'42','43':'43','44':'44','45':'45','46':'46','47':'47','48':'48','49':'49','50':'50' }" value="%{#session.matchprofile.toage}"  />
                                              </td>
                                              </tr>
                                              <tr>
                                                <td> <p class="text-primary text-center">Religion *</p></td>
                                                <td colspan="2" >
                                                	<s:select  cssClass="form-control" headerValue="religion" list="#{'':'Select the religion','Hindu':'Hindu','Jain':'Jain','Sikh' :'Sikh' ,'Christian':'Christian','Muslim':'Muslim','Parsi':'Parsi','Buddhist':'Buddhist','Jewish':'Jewish','No Religion':'No Religion','Other':'Other'}" name="religion" id="religion" value="%{#session.matchprofile.religion}" />		
                                                </td>
                                                
                                              </tr>
                                              <tr>
                                                <td><p class="text-primary text-center">Caste * </p></td>
                                                <td colspan="2">
                                                	<s:select  cssClass="form-control" headerValue="caste" list="#{'':'Select the caste','Akkasale':'Akkasale','Brahmin':'Brahmin','Darji':'Darji','Devanga':'Devanga','Eidiga':'Eidiga','Ganiga':'Ganiga','Ganga Matastharu':'Ganga Matastharu','Gowda':'Gowda','Golla':'Golla','Kshatriyas':'Kshatriyas','Kurba':'Kurba','Madivala':'Madivala','Okkaliga':'Okkaliga','Vaishyas' :'Vaishyas' ,'S.C/S.T':'S.C/S.T','Lingayath':'Lingayath','Parsi':'Parsi','Vishwakarma':'Vishwakarma','Buddhist':'Buddhist','Jewish':'Jewish','No Religion':'No Religion','Other':'Other'}" name="caste" id="caste"   value="%{#session.matchprofile.caste}"/>		
                                                
                                                </td>
                                                
                                              </tr>
                                              <s:if test="%{#session.myprofile.isadmin == 'false'}"> 
                                              <tr>
                                                <td> <s:checkbox name="Search" id="search" cssStyle="float:right;"  onclick="save_data()"/> </td>
                                                <td colspan="2">
                                                <p class="text-primary text-center">Save by criteria</p> </td>
                                                
                                              </tr>
                                              </s:if>
                                              <tr>
                                                <td colspan="3"><center>
                                                  <button type="submit" class="btn btn-success" onclick="return searchresultvalidation()">
                                                  <span class="glyphicon glyphicon-search"></span> Search </button></center></td>
                                                
                                              </tr>
                                  </table>
                                 </s:form>
                                  
                                </div>
                              </div>
                    </div>                <!--End Search by criteria-->
                    
						<div class="row">   <!-- Sub content start -->
                        
                        <div class="col-md-5">
                                    
                                                                       <!--Start Search by Name-->
                                   <div class="panel panel-success">
                                    <div class="panel-heading">
                                      <h3 class="panel-title text-danger">Quick Search by Name  :</h3>
                                    </div>
                                    <div class="panel-body">
                                    <s:form  action="SearchByNameAction.action" method="post" theme="simple">
                                     <table  cellpadding="10">
                                                <tr>
                                                  <td width="300"><s:textfield  name="name"  id="name" cssClass="form-control" value=""></s:textfield></td>
                                                  <td width="300"><button type="submit" class="btn btn-success "  onclick=" return ValidateSerchByName()">
                                                  <span class="glyphicon glyphicon-search"></span> Search by Name</button></td>
                                                </tr>
                                      </table> 
                                    </s:form>
                                    </div>
                                  </div>                               <!--End Search by Name-->
                                  
                                  
                                    <!--Start Search by Reference ID  -->                          
                                    <s:if test="%{#session.myprofile.isadmin == 'true'}"> 
                                   <div class="panel panel-success">
                                    <div class="panel-heading">
                                      <h3 class="panel-title text-danger">Search by Reference ID  :</h3>
                                    </div>
                                    <div class="panel-body">
                                   
                                   <s:form action="SearchUpdateProfileAction.action" method="post" theme="simple">
                                     <table  cellpadding="10">
                                                <tr>
                                                  <td width="300">
                                                 <s:textfield   name="referenceid"  id="referenceid" value="" cssClass="form-control"></s:textfield>
                                                  <!--<s:actionerror />-->
                                                </td>
                                                  <td width="300">
                                                  <button type="submit" class="btn btn-success" onclick="return SerarchValidationByReferenceID()">
                                                  <span class="glyphicon glyphicon-search"></span> Search by ID </button></td>
                                                  
                                                </tr>
                                      </table> 
                                   </s:form>
                                   </div>
                                  </div>
                                    </s:if>                        <!--End Search by Reference ID -->
                                  
                                  
                                    
                                    
                                    <!--Start Send Activation URL-->
                                    <s:if test="%{#session.myprofile.isadmin == 'true'}">
                                    <div class="panel panel-success">
                                        <div class="panel-heading">
                                          <h3 class="panel-title text-danger">Send Activation URL</h3>
                                        </div>
                                        <div class="panel-body">
                                     
                                         <form  action="post" >
                                         <table  cellpadding="10">
                                                <tr>
                                                  <td width="300"><s:textfield name ="username"  id ="username1" value="" theme="simple" cssClass="form-control"></s:textfield></td>
                                                  <td width="300"><a class="btn btn-success " onclick ="activationurl()" id="hidebutton"><span class="glyphicon glyphicon-send"></span> Send URL</a>
                                                  </td>
                                                </tr>
                                         </table>
                                         </form>
                                        
                                        </div>
                                      </div>
                                       </s:if>
                                                                                 <!--End Send Activation URL-->
                                      
                                     
                                    											    <!-- Start Interested profile  -->
                                      <s:if test="%{#session.myprofile.isadmin == 'false'}"> 
                                      <div class="panel panel-success">
                                    <div class="panel-heading">
                                      <h3 class="panel-title text-danger">Interested Profiles :</h3>
                                    </div>
                                    <div class="panel-body">
                                
                                     <table  cellpadding="10">
                                                <tr>
                                                 <td width="300"><center>
                                                         
                                                 
                                                 	<div href="#inline2 " class="modalbox"  id="trigger2"  onclick="showinterstedprofiles(<s:property value="%{#session.myprofile.profileid}"/>)">
                                                 	 <button type="submit" class="btn btn-success btn-lg ">
                                                 	  <span class="glyphicon glyphicon-user"></span> Interested Profile
                                                 	 </button>
													</div>
                                                 
                                                  </center>
                                                  
                                                 </td>
                                                </tr>
                                      </table> 
                                    
                                    </div>
                                  </div>  
                                  </s:if>     
                                      
                                       												 <!-- End Interested profile  -->
                            
                                                              
                        
                        </div>
                        
                        </div>      <!-- Sub content End -->
                
                           
     		    </div>	<!-- content Ends-->
             
             
		<div id="footer" class="row" >	 <!-- Footer Starts-->
          <div id="footerimage" class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 img-responsive img-rounded">
          <center> <p> Copyright © 2014 MySangathi.com. All rights reserved.</p></center>
          </div>
		 </div>	 <!-- Footer Ends-->
</div>     <!-- Container Ends-->



<!-- Javascript -->

<script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery.fancybox.js"></script>
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

    $('a#trigger').hover(function(e)
    {
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
  
window.onload=getsetdateofbirth();


function setphoneno(){
	
	if(document.getElementById('residence_country').value!=''){
		document.getElementById('phoneno').value='('+document.getElementById('residence_country').value+')-('+document.getElementById('residence_STD').value+')-('+document.getElementById('residence_no').value+')';
	}if((document.getElementById('residence_country').value!='')&&(document.getElementById('residence_STD').value!='')){
		document.getElementById('phoneno').value='('+document.getElementById('residence_country').value+')-('+document.getElementById('residence_STD').value+')-('+document.getElementById('residence_no').value+')';	
	}else{
		document.getElementById('phoneno').value=document.getElementById('residence_no').value;	
	}
	
	
	
}
function setheight(){
	
	if((document.getElementById('hfeet').value!='')&&(document.getElementById('hinch').value!='')){
			document.getElementById('residence_country').value=document.getElementById('hfeet').value+'-'+document.getElementById('hinch').value;
	}
	
	
}

function getsetdateofbirth(){
	var profileid = document.getElementById('matchprofileid').value;
	   //alert('--------profileid-------'+profileid);
	    if(profileid.length == 0 )
		{
	    	//alert('inside if');
			 document.getElementById("search").checked = false;
	    	
		}else{
			//alert('inside else');
			  document.getElementById("search").checked = true;
		}
	var s=document.getElementById('olddob').value;
	document.getElementById('dob_day').value=s.substr(0, 2);
	document.getElementById('dob_month').value=s.substr(3, 2);
	var birthyear=s.substr(6, 2);
	if(birthyear > 13){
		birthyear='19'+birthyear;
	}else{
		birthyear='20'+birthyear;
	}
	document.getElementById('dob_year').value=birthyear;
	document.getElementById('dateofbirth').value=document.getElementById('dob_day').value+'/'+document.getElementById('dob_month').value+'/'+birthyear;
}

function setdateofbirth()
{
	var birthday=document.getElementById('dob_day').value;
	var birthmonth=document.getElementById('dob_month').value;
	var birthyear=document.getElementById('dob_year').value;	
	document.getElementById('dateofbirth').value=birthday+'/'+birthmonth+'/'+birthyear;
	
	
}

function showinterstedprofiles(profileid)
{
	//alert(profileid);
    $(".modalbox").fancybox();
	$.post("DisplayInterestedProfilesAction.action",{'profileid':profileid} , function(data) {
		//alert(data);

		$("#inline2").html(data);
	});

	
}

function SerarchValidationByReferenceID()
{
	//alert("hi");
	
	var referenceid=document.getElementById('referenceid').value;
	if(referenceid=='')
	{
		alert("Enter The Reference ID");
		return false;
		
	}
}

function ValidateSerchByName()
{
//	alert('inside validate serchbyName');
	
	var  name=document.getElementById('name').value;
	
	
	
	if(name=='')
	{
		alert("Enter The Name");
		return false;
		
	}
	
}

function searchresultvalidation()
{
	//alert("hello");
	

/*	var moduleNameRadio=document.getElementsByName("gender");
	//alert("===>"+moduleNameRadio);

	for(var i=0;i<moduleNameRadio.length;i++)
	{
	       if(moduleNameRadio[i].checked){
	         // alert('Radio button selected');
	          //Add your code here....
	      }else
	      {
	    	  alert('Select Gender');
	    	  return false;
	      }
	}*/
	
	
	
	var Religion=document.getElementById('religion').value;

	var Caste=document.getElementById('caste').value;
	
	//alert('-----Caste---------->>>>'+Caste);
	
	//alert('-----Religion---------->>>>'+Religion);

	/* if(gender=='')
		{
		alert("Enter The gender");
		return false;
		
		} */
		
	if(Religion=='')
	{
		alert("Enter The Religion");
		return false;
		
	}
	if(Caste=='')
	{
		alert("Enter The Caste");
		return false;
	}
	document.forms["searchaction"].submit();
}	


function activationurl()
{
	var username = document.getElementById('username1').value;
	 
	if(username=='')
	{
		alert("Enter Email Id");
		return false;
	}

	//var  status  = document.getElementById('status').value;
	 $.post("ActivationurlStatusAction.action",{'username':username } ,function(data)
	{
		 			//alert(data);
					if (data == "Error")
					{
						alert("Invalid Email Id");
						return false;
						
						
					}else if(data=="ACTIVATED")      
					 {
						alert("Email is already activated");
						return false;
					 }
					else
					   {
						    alert("Your activation link is sent to the your mail");
						    return false;
					   }
					
					
	});
	 
	 //document.getElementById("activationaction").submit();
	  
	
}

function save_data()
{
	
	//alert(11);
	
	//var checked1= document.getElementById("search").checked = false;
	//alert('--------------->>>>>false>>>>>>>>>>'+checked1);
	var checked= document.getElementById("search").checked;
	//alert('checked-----------'+checked);
	if(checked==false)
    {
		// alert('Already set the criteria')
		  document.getElementById("search").checked = true;
    }else
	{
	//alert('--------------->>>true>>>>>>>>>>>>'+checked);
	var username=document.getElementById('username').value;
	//alert("The username is"+username);
	var profileid=document.getElementById('profileid').value;
	//alert("The profileid is"+profileid);
	var profileid=document.getElementById('profileid').value;
	//alert("The profileid is"+profileid);
	var caste=document.getElementById('caste').value;
	//alert("The caste is"+caste);
	var religion=document.getElementById('religion').value;;
	//alert("The caste is"+religion);
	var fromage=document.getElementById('age1').value;
	//alert("The caste is"+fromage);
	var toage=document.getElementById('age2').value;
	//alert("The caste is"+toage);
	var education=document.getElementById('education').value;
// alert("the education is"+education);
   var worklocation=document.getElementById('workplace').value;
// alert("the workplace is"+worklocation);
	//document.forms["matchingprofiles"].submit();
	
	//var  status  = document.getElementById('status').value;
	$.post("MatchMakingProfileSaveAction.action",{'caste':caste,'religion':religion,'profileid':profileid, 'fromage':fromage, 'toage':toage,'username':username,'education':education,'worklocation':worklocation} ,function(data)
	{
		 			//alert('hhhhhhhhhhhhh'+data);
					/*if (data == "Error")
					{
						alert("Invalid Email Id");
						return false;
						
						
					}else if(data=="ACTIVATED")      
					 {
						alert("Email is already activated");
						return false;
					 }
					else
					   {
						    alert("Your activation link is sent to the your mail");
						    return false;
					   }*/
					
					
	});
	 
	}
	//document.forms["matchingprofiles"].submit();
	//alert("updated sucessfully");
	//alert("Your criteria is saved.We will send notification about matching profiles on regular interval.Please check your Email.");

}
	

</script>

<div id="inline2" >
</div>
</body>
</html>