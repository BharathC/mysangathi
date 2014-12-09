<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="s" uri="/struts-tags"%>

<s:head theme="ajax" debug="true" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

#footer{
	margin-top:10px;
}

.dirarrow {
	 display: inline-block;
  height: auto;
  max-width: 100%;
  padding: 4px;
  line-height: 1.428571429;
  background-color: #ffffff;
 
  border-radius: 4px;
  -webkit-transition: all 0.2s ease-in-out;
          transition: all 0.2s ease-in-out;
	}
</style>
</head>

<body onload="showcaste()">
<div id="container"  class="container ">	<!-- Container Starts-->
			<div id="banner"  class="row">   			<!-- banner Starts-->
                            <div align="center" >
                            <img src="images/banner.jpg" class=" img-responsive img-thumbnail" >
                           </div>
            </div>	                                <!-- banner Ends-->
  

			<div id="menu" class="row">	<!-- menu Starts-->	
              
                            <ul class=" col-md-offset-1 nav nav-pills nav">
                             <li >
                                   <s:url action="MyProfileAction.action"  id="urlTagb" ></s:url>
								   <s:a href="%{urlTagb}"> Home</s:a>
							</li>
                            
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

				
                <div id="content1" class="row ">	 <!-- content1 Starts-->
                   <s:form action="MatchMakingProfileSaveAction.action" method="post" 	name="macthmakingprofiles" id="macthmakingprofiles" theme="simple">
                   
                   <!-- Sending the hidden fields to the controller -->
                   <s:hidden    value="%{#session.myprofile.profileid}"  id="profileid"   name="profileid"></s:hidden>
	               <s:hidden	value="%{#session.myprofile.name}"       id="name"        name="name"></s:hidden>
	               <s:hidden    value="%{#session.myprofile.username}"   id="username" 	  name="username"></s:hidden>
	               <input type="hidden" value="myvalue" id="myid" />
	               <!-- hidden fields ends here -->
	               
	                
                       <div class="col-md-7 col-md-offset-2 ">
                     
                              <div class="panel panel-success">
                                <div class="panel-heading">
                                 <center> <h3 class="panel-title text-danger">Select your preferred partner  criteria options</h3> </center>
                                </div>
                                <div class="panel-body"><center>
                                <table   cellpadding="3" class=" ">
                                                <tr>
                                                  <td colspan="4" width="500"><center><h4 class="text-primary">Match making profiles</h4></center></td> 
                                                  </tr>
                                                <tr>
                                                  <td colspan="4"><center> 
		                                                  				<s:if test="%{#session.myprofile.gender == 'male'}">
																			<h4 align="center" class="text-primary">[Brides Profiles]</h4>
																				<h4 align="center" class="text-primary">Select your Bride criteria.</h4>
																					<s:hidden name="gender" value="female"></s:hidden>
																						</s:if> <s:elseif test="%{#session.myprofile.gender == 'female'}">
		
																					<h4 align="center" class="text-primary">[Grooms Profiles]</h4>
																				<h4 align="center" class="text-primary">Select your Groom criteria.</h4>
																			<s:hidden name="gender" value="male"></s:hidden>
																		</s:elseif> 
																	      <s:elseif test="%{#session.myprofile.isadmin == 'true'}">
																	      </s:elseif>
																</center>
												  </td>
                                                  </tr>
                                                <tr >
                                                 <!--  <td colspan="4"><center> <h4 class="text-primary">Select your Bride criteria.</center></h4></td>-->
                                                </tr>
                                                <tr>
                                                  <td >MinAge:</td>
                                                  <td >
                                                      <s:select	name="fromage" id="age2" label="MaxAge" value="%{#session.matchprofile.fromage}" cssClass="form-control"	 list="#{'18':'18','19':'19','20':'20','21':'21','22':'22','23':'23','24':'24','25':'25','26':'26','27':'27','28':'28','29':'29','30':'30','31':'31','32':'32','33':'33','34':'34','35':'35','36':'36','37':'37','38':'38','39':'39','40':'40','41':'41','42':'42','43':'43','44':'44','45':'45','46':'46','47':'47','48':'48','49':'49','50':'50' }"  />  
                                                  </td>
                                                  <td>MaxAge:</td>
                                                  <td >
                                                  	<s:select  name="toage" id="age1" label="MinAge" cssClass="form-control"	list="#{'22':'22','23':'23','24':'24','25':'25','26':'26','27':'27','28':'28','29':'29','30':'30','31':'31','32':'32','33':'33','34':'34','35':'35','36':'36','37':'37','38':'38','39':'39','40':'40','41':'41','42':'42','43':'43','44':'44','45':'45','46':'46','47':'47','48':'48','49':'49','50':'50'}" value="%{#session.matchprofile.toage}" />
                                                  </td>
                                                </tr>
                                                <tr>
                                                  <td >Religion <span class="text-danger">*</span> :</td>
                                                  <td  >
                                                      
                                                     	   <s:select  	label="Religion*" headerValue="religion" cssClass="form-control"	list="#{'':'Select the religion','Hindu':'Hindu','Jain':'Jain','Sikh' :'Sikh' ,'Christian':'Christian','Muslim':'Muslim','Parsi':'Parsi','Buddhist':'Buddhist','Jewish':'Jewish','No Religion':'No Religion','Other':'Other'}" 	name="religion" id="religion" value="%{#session.matchprofile.religion}" />
                                                        	
                                                  </td>
                                                  
                                                </tr>
                                                <tr>
                                                  <td>Caste<span class="text-danger">*</span>:</td>
                                                  <td>
                                                     <s:select label="Caste*" cssClass="form-control" list="#{'Akkasale':'Akkasale','Brahmin':'Brahmin','Darji':'Darji','Devanga':'Devanga','Eidiga':'Eidiga','Ganiga':'Ganiga','Ganga Matastharu':'Ganga Matastharu','Gowda':'Gowda','Golla':'Golla','Kshatriyas':'Kshatriyas','Kurba':'Kurba','Madivala':'Madivala','Okkaliga':'Okkaliga','Vaishyas' :'Vaishyas' ,'S.C/S.T':'S.C/S.T','Lingayath':'Lingayath','Parsi':'Parsi','Vishwakarma':'Vishwakarma','Buddhist':'Buddhist','Jewish':'Jewish','No Religion':'No Religion','Other':'Other'}" id="caste_list" name="caste_list" multiple="true" 	value="%{#session.matchprofile.caste}" />
                                                  </td>
                                                  
                                                  
                                                  <td ><a><img class="" src="images/leftarrow.png"  onclick="sendSelectedOptions()"> </a> <br>
                                                  <a> <img src="images/ritearrow.png" onclick="removeSelectedOptions()"> </a></td>
                                                  <td> 
                                                     <select size=5 name="caste" id="caste" multiple="multiple" class="form-control"  ></select>
                                                 </td>
                                                </tr>
                                                <tr>
                                                  <td colspan="4"><center><h4 class="text-primary">Hold CRTL to select multiple caste</center></h4></td>
                                                  
                                                </tr>
                                                <tr>
                                                  <td>Education<span class="text-danger">*</span>:</td>
                                                    <td>
                                                    
                                                     <s:select label="Education*" cssClass="form-control"	list="#{'B.A':'B.A','B.Arch':'B.Arch','B.Com':'B.Com' ,'B.Ed':'B.Ed','B.Pharm':'B.Pharm','B.Sc':'B.Sc','BBA':'BBA','BCA':'BCA','BDS':'BDS','BE':'BE','BHM':'BHM','BA LLB':'BA LLB','CA':'CA','CS':'CS','Diploma':'Diploma','ICWA':'ICWA','Integrated PG':'Integrated PG','Intermediate':'Intermediate','LLB':'LLB','M.Arch':'M.Arch','M.Com':'M.Com','M.Ed':'M.Ed','M.Pharm':'M.Pharm','M.Phil':'M.Phil','M.Sc':'M.Sc','M.Tech':'M.Tech','MA':'MA','MBA':'MBA','MBA PGDM':'MBA PGDM','MBBS':'MBBS','MCA':'MCA','MD/MS':'MD/MS','ME/M.Tech':'ME/M.Tech','ML/LLM':'ML/LLM','MS':'MS','Other Bachelor Degree':'Other Bachelor Degree','Other Masters':'Other Masters','Phd/Doctorate':'Phd/Doctorate','12th Standard':'12th Standard','10th Standard':'10th Standard','Below 10th Standard':'Below 10th Standard','others':'others'}" 	name="education_list" id="education_list" multiple="true" />
                                                     
                                                   </td>
                                                  
                                                  
                                                  
                                                    <td>
                                                        <img class="" src="images/leftarrow.png" onclick="sendEducationSelectedOptions()">  <br>
                                                        <img src="images/ritearrow.png" onclick="removeEducationSelectedOptions()"></td>
                                                    <td >
                                                     <select name="education" id="education"  size=5 multiple="multiple" 	class="form-control"></select>
                                                  </td>
                                                </tr>
                                                <tr>
                                                  <td colspan="4"><center><h4 class="text-primary">Hold CTRL to select multiple Education</center></h4></td>
                                                  
                                                </tr>
                                                <tr>
                                                  <td>Work location<span class="text-danger">*</span>:</td>
                                                  <td><s:select label="Worklocation" cssClass="form-control" headerValue="worklocation"  list="#{'India':'India','USA':'USA','Malaysia':'Malaysia','Singapore':'Singapore','Canada':'Canada','United Kingdom':'United Kingdom','Afghanistan':'Afghanistan','Albania':'Albania','Algeria':'Algeria','American Samoa':'American Samoa','Andorra':'Andorra','Angola':'Angola','Anguilla':'Anguilla','Antarctica':'Antarctica','Antigua and Barbuda':'Antigua and Barbuda','Argentinan':'Argentinan','Armenia':'Armenia','Aruba':'Aruba','Australia':'Australia','Austria':'Austria','Azerbaijan':'Azerbaijan','Bahamas':'Bahamas','Bahrain':'Bahrain','Bangladesh':'Bangladesh','Barbados':'Barbados','Belarus':'Belarus','Belgium':'Belgium','Belize':'Belize','Benin':'Benin','Bermuda':'Bermuda','Bhutan':'Bhutan','Bolivia':'Bolivia','Botswana':'Botswana','Bouvet Island':'Bouvet Island','Brazil':'Brazil','Brunei':'Brunei','Bulgaria':'Bulgaria','Burkina Faso':'Burkina Faso','Burundi':'Burundi','Cambodia':'Cambodia','Cameroon':'Cameroon','Cape Verde':'Cape Verde','Cayman Islands':'Cayman Islands','Chad':'Chad','Chile':'Chile','China':'China','Christmas Island':'Christmas Island','Cocos Islands':'Cocos Islands','Colombia':'Colombia','Costa Rica':'Costa Rica','Croatia':'Croatia','Cuba':'Cuba','Cyprus':'Cyprus','Czech Republic':'Czech Republic','Denmark':'Denmark','Dominican Republic':'Dominican Republic','Ecuador':'Ecuador','Egypt':'Egypt','El Salvador':'El Salvador','Ethiopia':'Ethiopia','Fiji':'Fiji','Finland':'Finland','France':'France','Gambia':'Gambia','Georgia':'Georgia','Germany':'Germany','Ghana':'Ghana','Greece':'Greece','Guatemala':'Guatemala','Guyana':'Guyana','Haiti':'Haiti','Honduras':'Honduras','Hong Kong':'Hong Kong','Hungary':'Hungary','Iceland':'Iceland','Indonesia':'Indonesia','Iran':'Iran','Iraq':'Iraq','Ireland':'Ireland','Israel':'Israel','Italy':'Italy','Ivory Coast':'Ivory Coast','Jamaica':'Jamaica','Japan':'Japan','Jordan':'Jordan','Kazakhstan':'Kazakhstan','Kenya':'Kenya','Kiribati':'Kiribati','North Korea':'North Korea','South Korea':'South Korea','Kuwait':'Kuwait','Kyrgyzstan':'Kyrgyzstan','Laos':'Laos','Latvia':'Latvia','Lebanon':'Lebanon','Liberia':'Liberia','Libya':'Libya','Lithuania':'Lithuania','Luxembourg':'Luxembourg','Maldives':'Maldives','Mali':'Mali','Mauritius':'Mauritius','Mexico':'Mexico','Monaco':'Monaco','Mongolia':'Mongolia','Morocco':'Morocco','Myanmar':'Myanmar','Namibia':'Namibia','Nepal':'Nepal','Netherlands':'Netherlands','New Zealand':'New Zealand','Nicaragua':'Nicaragua','Nigeria':'Nigeria','Norfolk Island':'Norfolk Island','Norway':'Norway','Oman':'Oman','Pakistan':'Pakistan','Panama':'Panama','Papua New Guinea':'Papua New Guinea','Paraguay':'Paraguay','Peru':'Peru','Philippines':'Philippines','Poland':'Poland','Portugal':'Portugal','Puerto Rico':'Puerto Rico','Qatar':'Qatar','Romania':'Romania','Russia':'Russia','Rwanda':'Rwanda','Saudi Arabia':'Saudi Arabia','Senegal':'Senegal','Somalia':'Somalia','South Africa':'South Africa','Spain':'Spain','Sri Lanka':'Sri Lanka','Sudan':'Sudan','Sweden':'Sweden','Switzerland':'Switzerland','Syria':'Syria','Taiwan':'Taiwan','Tajikistan':'Tajikistan','Tanzania':'Tanzania','Thailand':'Thailand','Trinidad and Tobago':'Trinidad and Tobago','Tunisia':'Tunisia','Turkey':'Turkey','Uganda':'Uganda','Ukraine':'Ukraine','UAE':'UAE','Uruguay':'Uruguay','Uzbekistan':'Uzbekistan','Vanuatu':'Vanuatu','Vatican City':'Vatican City','Venezuela':'Venezuela','Vietnam':'Vietnam','Yemen':'Yemen','Zambia':'Zambia','Zimbabwe':'Zimbabwe'}"  name="worklocation_list" id="worklocation_list" multiple="true" />
                                                  </td>
                                                  <td class=" "><img class="" src="images/leftarrow.png" onclick="selectWorklocation()"> <br>
                                                  <img src="images/ritearrow.png"  onclick="removeSelectedWorklocation()"></td>
                                                  <td>
                                                     <select name="worklocation"	id="worklocation" size=5 multiple="multiple" size=5 class="form-control"></select> 
                                                  </td>
                                                </tr>
                                                <tr>
                                                  <td colspan="4"><center><input type="submit" value=" Save " class="btn btn-success"  onclick="return SaveMatchMakingProfile()"> </center></td>
                                                  <!-- <td colspan="2"><center><input type="reset" value="Cancel" class="btn btn-success" onclick="removeSelectedOptionsCancel()"></center></td> -->
                                                  
                                                </tr>
                                              </table>
                                              </center>

                                </div>
                              </div>
                        
                       </div>   
                    </s:form>       
     		 </div>	<!-- content1 Ends-->







			
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

	  
	  
	var selectcaste = null;
	function sendEducationSelectedOptions() {

		var a = $("select#education_list option:selected").val();
	//	alert(a);

		$("select#education_list option:selected").each(function() {
			//alert("inside each");
			/*	var selectededucation=new Option($(this).text(),$(this).text());
				alert("Var selected"+selectededucation);
				var postion=$(this).attr("rel");
				alert(postion);
				selected.setAttribute("rel",position);
				var pos3 = $(this).attr("value");
				alert("position is"+pos3);
			  selected.setAttribute("value",pos3);
			  $("select#rightSelect1").append(selected); */

			var selected = new Option($(this).text(), $(this).text());
			//alert("Var selected" + selected);
			var pos = $(this).attr("rel");
			//alert("positon selected" + pos);

			selected.setAttribute("rel", pos);

			var pos2 = $(this).attr("value");
			//alert("position is" + pos2);
			selected.setAttribute("value", pos2);

			$("select#education").append(selected);

		});

		$("select#education_list option:selected").remove();

		// $("select#education option:selected").each(function(){
		/*	var selected=new Option($(this).text(),$(this).text());
			alert("Var selected"+selected);
			var pos = $(this).attr("rel");
			alert("positon selected"+pos);
			
			selected.setAttribute("rel",pos);
			
			var pos2 = $(this).attr("value");
			alert("position is"+pos2);
		   selected.setAttribute("value",pos2);
		    
		    $("select#rightSelect1").append(selected); */

		//	});
	}

	function removeEducationSelectedOptions() {
		//alert('Inside the removeEducationSelectedOptions');
		
		
			// $("select#education option:selected").remove();
			 
			 $("select#education option:selected").each(function() {
					//alert("inside each");
					/*	var selectededucation=new Option($(this).text(),$(this).text());
						alert("Var selected"+selectededucation);
						var postion=$(this).attr("rel");
						alert(postion);
						selected.setAttribute("rel",position);
						var pos3 = $(this).attr("value");
						alert("position is"+pos3);
					  selected.setAttribute("value",pos3);
					  $("select#rightSelect1").append(selected); */

					var selected = new Option($(this).text(), $(this).text());
					//alert("Var selected" + selected);
					var pos = $(this).attr("rel");
					//alert("positon selected" + pos);

					selected.setAttribute("rel", pos);

					var pos2 = $(this).attr("value");
					//alert("position is" + pos2);
					selected.setAttribute("value", pos2);

					$("select#education_list").append(selected);
				});
			 
			 $("select#education option:selected").remove();

		sortDropDownListByText('education_list');

	}

	function selectWorklocation() {
		//alert("inside the selectWorklocation()");

		var b = $("select#worklocation_list").val();
		//alert(b);
		$("select#worklocation_list option:selected").each(function() {

			//alert("1");
			var select = new Option($(this).text(), $(this).text());
			//alert("Var selected"+select);
			var position = $(this).attr("rel");
			//alert("positon selected"+position);

			select.setAttribute("rel", position);

			var position2 = $(this).attr("value");
			//alert("position is"+position2);
			select.setAttribute("value", position2);

			$("select#worklocation").append(select);

		});
		//$("select#worklocation_list option:selected").hide();
		$("select#worklocation_list option:selected").remove();
	}
	
	function removeSelectedWorklocation() {//alert("inside the removeSelectedWorklocation()");
		//$("select#worklocation option:selected").remove();
		
		$("select#worklocation option:selected").each(function() {

			//alert("1");
			var select = new Option($(this).text(), $(this).text());
			//alert("Var selected"+select);
			var position = $(this).attr("rel");
			//alert("positon selected"+position);

			select.setAttribute("rel", position);

			var position2 = $(this).attr("value");
			//alert("position is"+position2);
			select.setAttribute("value", position2);

			$("select#worklocation_list").append(select);

		});
		//$("select#worklocation_list option:selected").hide();
		$("select#worklocation option:selected").remove();

		sortDropDownListByText('worklocation_list');
	}
	
	
	
	function removeSelectedOptionsCancel() {
		//alert("Inside the removeSelectedCasteOptionsCancel");
		
        var castvalidation = 	$('#caste').find('option').attr('selected', 'selected').remove();
		
		var educationvalidation=$('#education').find('option').attr('selected', 'selected').remove();

		 var worklocationvalidation=$('#worklocation').find('option').attr('selected', 'selected').remove();
		 
		
	

	}
	

	/*
	 jQuery(document).ready(function(){
	 jQuery().jctextcopyprotector();
	 });   */

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

		$('a#trigger').mousemove(
				function(e) {
					$("div#pop-up").css('top', e.pageY + moveDown).css('left',
							e.pageX + moveLeft);
				});
	});

	window.onload = getsetdateofbirth();

	/*
	 function validation(){

	 var fname=document.getElementById('firstname').value;
	 var lname=document.getElementById('lastname').value;
	 var dob=document.getElementById('dateofbirth').value;
	 var gender1=document.getElementById('gender1').value;
	 var gender2=document.getElementById('gender2').value;
	 var maritalstatus=document.getElementById('martialstatus').value;
	 var religion=document.getElementById('religion').value;
	 var caste=document.getElementById('caste').value;
	 var phone=document.getElementById('phoneno').value;
	 var mobile=document.getElementById('mobileno').value;
	 var email=document.getElementById('email').value;
	 var password=document.getElementById('password').value;
	 var confirmpassword=document.getElementById('cpassword').value;
	 var education=document.getElementById('education').value;
	 var profession=document.getElementById('profession').value;
	 var workplace=document.getElementById('workplace').value;
	 /*
	 alert(fname);
	 alert(lname);
	 alert(dob);
	 alert(gender1);
	 alert(gender2);
	 alert(maritalstatus);
	 alert(religion);alert(caste);
	 alert(phone);alert(mobile);alert(email);alert(password);alert(confirmpassword);
	 alert(education);
	 alert(profession);
	 alert(workplace);*/

	/* if(fname==''){
	alert("Enter FirstName");
	document.getElementById('firstname').focus;
	return false;
	
	
	 }
	 if(lname==''){
	alert("Enter LastName");
	document.getElementById('lastname').focus;
	return false;
	
	
	 }
	 
	 if((document.getElementById('gender1').checked==false)&&(document.getElementById('gender2').checked==false)){
	alert("Select the Gender");
	return false;
	
	
	 }
	 if(maritalstatus==''){
	alert("Select the Marital Status");
	document.getElementById('martialstatus').focus;
	return false;
	
	
	 }
	 if(religion==''){
	alert("Select the Religion");
	document.getElementById('religion').focus;
	return false;	
	
	 }

	 if(caste==''){
	alert("Enter the Caste");
	document.getElementById('caste').focus;
	return false;	
	
	 }
	 if(phone==''){
	alert("Enter the Phone Number");
	document.getElementById('phoneno').focus;
	return false;	
	
	 }
	 if(mobile==''){
	alert("Enter the Mobile Number");
	document.getElementById('mobileno').focus;
	return false;	
	
	 }
	 if(email==''){
	alert("Enter the EmailID");
	document.getElementById('email').focus;
	return false;	
	
	 }*/
	/* if(email!=''){
	 
	  var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	  if (!filter.test(email.value)) {
	  alert("Enter Valid Email Address!");
	  document.getElementById("email").focus();
	  return false;
	   }	
	 }*/
	/* if(password==''){
	alert("Enter the Password");
	document.getElementById('password').focus;
	return false;	
	
	  }else if(password.length < 7){
	alert("Password should contain more than 6 Characters");
	document.getElementById('password').focus;
	return false;
	  }
	 if(confirmpassword==''){
	alert("Enter the Confirm Password");
	document.getElementById('cpassword').focus;
	return false;	
	
	  }else if(confirmpassword.length < 7){
	alert("Confirm Password should contain more than 6 Characters");
	document.getElementById('cpassword').focus;
	return false;
	 }
	  if((password!='')&&(confirmpassword!='')&&(password!=confirmpassword)){
	alert("Password and Confirm Password Must be Same");
	document.getElementById('cpassword').focus;
	return false;
	  }

	  if(education==''){
	alert("Select the Education");
	document.getElementById('education').focus;
	return false;	
	
	  }
	 if(profession==''){
	alert("Select the Profession Type");
	document.getElementById('profession').focus;
	return false;	
	
	  }
	 if(workplace==''){
	alert("Enter the Work Location");
	document.getElementById('workplace').focus;
	return false;	
	
	 }
	 if(document.getElementById('terms').checked==false){
	 alert("Agree the Terms and Conditions");
	 return false;
	 }else{
	  document.forms["ProfileAction"].submit();
	  
	 }	
	}

	function showchildren(){
	var maritalstatus=document.getElementById('martialstatus').value;
	if((maritalstatus!='Never Married')&&(maritalstatus!=0)){
		document.getElementById('children').style.display='block';
	}
	else{
		document.getElementById('children').style.display='none';	
	}
	} */

	function setphoneno() {

		if (document.getElementById('residence_country').value != '') {
			document.getElementById('phoneno').value = '('
					+ document.getElementById('residence_country').value
					+ ')-(' + document.getElementById('residence_STD').value
					+ ')-(' + document.getElementById('residence_no').value
					+ ')';
		}
		if ((document.getElementById('residence_country').value != '')
				&& (document.getElementById('residence_STD').value != '')) {
			document.getElementById('phoneno').value = '('
					+ document.getElementById('residence_country').value
					+ ')-(' + document.getElementById('residence_STD').value
					+ ')-(' + document.getElementById('residence_no').value
					+ ')';
		} else {
			document.getElementById('phoneno').value = document
					.getElementById('residence_no').value;
		}

	}
	function setheight() {

		if ((document.getElementById('hfeet').value != '')
				&& (document.getElementById('hinch').value != '')) {
			document.getElementById('residence_country').value = document
					.getElementById('hfeet').value
					+ '-' + document.getElementById('hinch').value;
		}

	}

	$(document).ready(
			function() {

				var s = document.getElementById('olddob').value;
				document.getElementById('dob_day').value = s.substr(0, 2);
				document.getElementById('dob_month').value = s.substr(3, 2);
				var birthyear = s.substr(6, 2);
				if (birthyear > 13) {
					birthyear = '19' + birthyear;
				} else {
					birthyear = '20' + birthyear;
				}
				document.getElementById('dob_year').value = birthyear;
				document.getElementById('dateofbirth').value = document
						.getElementById('dob_day').value
						+ '/'
						+ document.getElementById('dob_month').value
						+ '/' + birthyear;

			});

	function setdateofbirth() {
		var birthday = document.getElementById('dob_day').value;
		var birthmonth = document.getElementById('dob_month').value;
		var birthyear = document.getElementById('dob_year').value;
		document.getElementById('dateofbirth').value = birthday + '/'
				+ birthmonth + '/' + birthyear;

	}

	function showinterstedprofiles(profileid) {
		//alert(profileid);
		$(".modalbox").fancybox();
		$.post("DisplayInterestedProfilesAction.action", {
			'profileid' : profileid
		}, function(data) {
			//alert(data);

			$("#inline2").html(data);
		});

	}

	function searchresultvalidation() {
		//alert("hello");

		var Religion = document.getElementById('religion').value;

		var Caste = document.getElementById('caste').value;

		if (Religion == '') {
			alert("Enter The Religion");
			return false;

		}
		if (Caste == '') {
			alert("Enter The Caste");
			return false;
		}
		document.forms["searchaction"].submit();
	}

	function activationurl() {
		var username = document.getElementById('username').value;

		if (username == '') {
			alert("Enter Email Id");
			return false;
		}

		//var  status  = document.getElementById('status').value;
		$.post("ActivationurlStatusAction.action", {
			'username' : username
		}, function(data) {
			//alert(data);
			if (data == "Error") {
				alert("Invalid Email Id");
				return false;

			} else if (data == "ACTIVATED") {
				alert("Email is already activated");
				return false;
			} else {
				alert("Your activation link is sent to the your mail");
				return false;
			}

		});

		//document.getElementById("activationaction").submit();

	}

	function SaveMatchMakingProfile() {
		
	
		$("#caste").on('change', function() {
			$("#caste_list").html($(this).val());
		});

		$("#education").on('change', function() {
			$("#education_list").html($(this).text());
		});

		$("#worklocation").on('change', function() {
			$("#worklocation_list").html($(this).text());
		});

		var castvalidation = 	$('#caste').find('option').attr('selected', 'selected').text();
		
		var educationvalidation=$('#education').find('option').attr('selected', 'selected').text();

		 var worklocationvalidation=$('#worklocation').find('option').attr('selected', 'selected').text();
		 
		 
	//	alert('javed'+castvalidation);
		
		var  religion=document.getElementById('religion').value;
		
		if(religion=='')
		{
			alert('Enter the religion');
			return false;
		}
		
		if(castvalidation=='')
		{
			alert('Enter the caste ');
			return false;
		}
		if(educationvalidation=='')
		{
			alert('Enter the education');
			return false;
		}
		
		if(worklocationvalidation=='')
		{
			alert('Enter the work location');
			return false;
		}

		$('#caste').find('option').attr('selected', 'selected').text();

		$('#education').find('option').attr('selected', 'selected');

		$('#worklocation').find('option').attr('selected', 'selected');
		//$('#worklocation>option:selected').text();

		//document.forms["macthmakingprofiles"].submit();
		alert("Your criteria is saved. We will send notification about matching profiles on regular interval. Please check your Email.");
		$("#macthmakingprofiles").submit();
		//document.getElementById('hidebutton').style.visibility = "hidden";
		//alert("Profile Updated Sucessfully!");
		
	}

	function sendSelectedOptions() {
		//alert("Inside the getSelectedData()");
		//alert(caste);
		$("select#caste_list option:selected").each(function() {
			var selected = new Option($(this).text(), $(this).text());
			//alert("Var selected"+selected);
			var pos = $(this).attr("rel");
			//alert("positon selected"+pos);

			selected.setAttribute("rel", pos);

			var pos2 = $(this).attr("value");
			//alert("position is"+pos2);

			//selectcaste=pos2;
			$('#selectId').val('newValue');

			selected.setAttribute("value", pos2);

			selectcaste = pos2;
			//alert("Selected caste is"+selectcaste);
			selected.setAttribute("value", pos2);
			//alert(""+selectcaste1);

			$("select#caste").append(selected);

		});
		//$("select#caste_list option:selected").hide();
		$("select#caste_list option:selected").remove();

		sortDropDownListByText('caste');
		//alert(selectcaste);
		/*var select=document.getElementById("caste").value;
		alert(select);*/

	}
	function removeSelectedOptions() {
		//alert("Inside the removeSelectedCasteOptions");

		//$("select#caste option:selected").remove();
		
			$("select#caste option:selected").each(function() {
			var selected = new Option($(this).text(), $(this).text());
			//alert("Var selected"+selected);
			var pos = $(this).attr("rel");
			//alert("positon selected"+pos);

			selected.setAttribute("rel", pos);

			var pos2 = $(this).attr("value");
			//alert("position is"+pos2);

			//selectcaste=pos2;
			$('#selectId').val('newValue');

			selected.setAttribute("value", pos2);

			selectcaste = pos2;
			//alert("Selected caste is"+selectcaste);
			selected.setAttribute("value", pos2);
			//alert(""+selectcaste1);

			$("select#caste_list").append(selected);

		});
		$("select#caste  option:selected").remove();


		sortDropDownListByText('caste_list');

	}

	function update() {

		var username = document.getElementById('username').value;
		//alert("The username is" + username);
		var profileid = document.getElementById('profileid').value;
		//alert("The profileid is" + profileid);

		//var idname=document.getElementById("rightSelect").value;
		//alert('id name is:'+idname);

		var caste1 = document.getElementById('caste').value;
	//	alert("The caste is==============>>" + caste1);

		var religion = document.getElementById('religion').value;
		
		//alert("The religion is==============>>" + religion);
		var fromage = document.getElementById('age1').value;
		//alert("The form age is" + fromage);
		var toage = document.getElementById('age2').value;
		//alert("The to age is" + toage);
		var education1 = document.getElementById('education').values;
		//alert('The education is' + education);
		var worklocation1 = document.getElementById('worklocation').values;
		//alert('The work location is' + worklocation);

		//document.forms["matchingprofiles"].submit();

		//var  status  = document.getElementById('status').value;
		$.post("MatchMakingProfileUpdateAction.action", {
			'caste' : caste,
			'religion' : religion,
			'profileid' : profileid,
			'fromage' : fromage,
			'toage' : toage,
			'username' : username,
			'education' : education,
			'worklocation' : worklocation
		}, function(data) {
			//alert('hhhhhhhhhhhhh');
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

		//alert("inside the update function");

	}
	function showcaste() {
		

		var item = '<s:property value="#session.matchprofile.caste" />';
		if (item.length !== 0) {

			var WorkLocation = item.split(",");

			//For loop for WorkLocation
			//alert('array length is    '+WorkLocation.length);
			for ( var i = 0; i < WorkLocation.length; i++) {
				var option1 = new Option(WorkLocation[i], WorkLocation[i]);
				$("select#caste").append(option1);
				$("#caste_list option[value='"+option1.value.trim()+"']").remove();
			}
			showEducation();
			workLocation();
		}

	}

	function showEducation() {

		
		var education = '<s:property value="#session.matchprofile.education"/>';
		if(education.length !=0)
		{	
		var EducationIn = education.split(",");
		//For loop for WorkLocation
		
		for ( var i = 0; i < EducationIn.length; i++) {
			
			var option2 = new Option(EducationIn[i], EducationIn[i]);
	
			$("select#education").append(option2);
			$("#education_list option[value='"+option2.value.trim()+"']").remove();

		}
		}

	}
	function workLocation() {

		
		var WLocation = '<s:property value="#session.matchprofile.worklocation"/>';
		if(WLocation.length !=0)
		{
		var WorkLocation = WLocation.split(",");
		//For loop for WorkLocation
		
		for ( var i = 0; i < WorkLocation.length; i++) {
			
			var option2 = new Option(WorkLocation[i], WorkLocation[i]);
			

			$("select#worklocation").append(option2);
			$("#worklocation_list option[value='"+option2.value.trim()+"']").remove();

		}
		
		}

	}

	
</script>
</body>
</html>
