<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>free matrimonials,india matrimonial,marriage sites,horoscope matrimonial services,marriage,kannada matrimonial</title>
<meta name="Description" content=" Free Indian matrimonials site, kannada matrimonials, Indian marriages, India Matrimonial, Shadi, Marriage bureaus,Life partner,sangathi,Hindu Matrimonial,Lingayath Matrimonial" />
<meta name="keywords" content="Matrimony,Matrimonial,Matrimonials,Marriage sites,Free matrimonials,Indian matrimonials,Match making,Life partner,sangathi,Bride,Groom,Partner selection,shadi,Hindu Matrimonials,Muslim,Jain,christian,Kannada Matrimonials" />
<meta name="title" content="mysangathi.com Matrimonials;  Free Indian matrimonials site, Matchmaking, Muslim matrimonials, Shadi, Marriage bureaus, Indian marriages, Hindu,Lingayath Matrimonials ,Gowda's,kannada matrimonials" />
<meta name="google-site-verification" content="G1jAlEnFZvk2FHH8-SImtp5DKw_cQbP_VyZ1Hhg2Bcg" />
<meta name="comment" content=" Matrimonial Site; Your link to Free Indian matrimonials site, Matchmaking, matrimonials, Indian marriages, India Matrimonial, Shadi, Marriage bureaus, Lingayath  Matrimonial,kannada matrimonials " />
<meta name="document-classification" content=" Free Matrimonial Service" />
<meta name="robots" content="index, follow" />
<link rel="canonical" href="http://www.mysangathi.com/" />

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/jquery-ui.min.css" rel="stylesheet">

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

<body onload="getsetdateofbirth()">
<div id="container"  class="container ">	<!-- Container Starts-->
			<div id="banner"  class="row">   			<!-- banner Starts-->
                            <div align="center" >
                            <img src="images/banner.jpg" class=" img-responsive img-thumbnail" >
                           </div>
            </div>	                                <!-- banner Ends-->
  

			<div id="menu" class="row">	<!-- menu Starts-->	
              
                            <ul class=" col-md-offset-1 nav nav-pills nav">
                            <!--Home button  -->
                             <li >
                                   <s:url action="MyProfileAction.action"  id="urlTagb" ></s:url>
								   <s:a href="%{urlTagb}"> Home</s:a>
							</li>
							<!-- Home button End -->
                           <li><a href="#" id="contact" class="" rel="popover"
                             data-content="Phone :(91)(080)26730904 
                                           Mobile:(91)9845199675,9663821291
                                           Technical support:Mobile:(91)9632905725" 
							 data-original-title="Contact us:">
                             <span class="glyphicon glyphicon-earphone"></span> Contact Us</a>
                             </li>
                             

                            
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
                <s:form action="ProfileupdateAction.action"  cssClass="form" method="post" id="ProfileupdateAction" name="ProfileupdateAction" enctype="multipart/form-data" theme="simple">
                
                
                <s:hidden value="%{profile.inactive}"                name="inactive" />
				<s:hidden value="%{profile.profilecreateddate}"      name="profilecreateddate" />
				<s:hidden value="%{profile.createdby}"               name="createdby" />
				<s:hidden value="%{profile.paidstatus}"              name="paidstatus"></s:hidden>
				<s:hidden value="%{profile.paymentdate}"             name="paymentdate" ></s:hidden>
				<s:hidden  value="%{profile.comments}"               name="comments"></s:hidden>
				<s:hidden value="%{profile.amountpaid}"              name="amountpaid"> </s:hidden>
				
				<s:hidden value="%{profile.paymenttype}"             name="paymenttype"> </s:hidden>
				<s:hidden value="%{profile.photo}"                   name="photo"> </s:hidden>
				<s:hidden value="%{profile.photouploadeddate}"       name="photouploadeddate"> </s:hidden> 
				<s:hidden value="%{profile.horoscope}"               name="horoscope"> </s:hidden>
				<s:hidden value="%{profile.horoscopeuploadeddate}"   name="horoscopeuploadeddate"> </s:hidden>
				<s:hidden value="%{profile.profileid}"               name="profileid" />
				
				<s:hidden value="%{profile.isadmin}" name="isadmin"></s:hidden>
				<s:hidden value="%{profile.referenceid}" name="referenceid"></s:hidden>
				<s:hidden value="%{profile.profilestatus}" name="profilestatus"></s:hidden>	
				
				 
					<div id="content" class="row">  <!--Row1 content Starts -->
                         
                			<div class="col-md-8 col-md-offset-1 col-sm-8 col-sm-offset-1"> <!-- basic info -->
                              
                                     
                 <table  border="0" class="table table-responsive table-condensed table-hover table-striped thumbnail"  >
                 				<tr>
                                <td colspan="5"><h5 class="text-danger text-center thumbnail">Update Profile </h5></td>
                               </tr>
                              <tr>
                                <td colspan="5"><h5 class="text-danger text-left thumbnail">Basic Information :</h5></td>
                               </tr>
                              <tr>
                                <td ><h5 class="text-primary ">First Name<span class="text-danger"> * </span> :</h5></td>
                                <td>
                                	<center> 
                                		<s:textfield cssClass="form-control" name="firstname" id="firstname" value="%{profile.firstname}"/>
                                		<!--<s:fielderror> <s:param>firstname</s:param></s:fielderror>-->
                                	</center>
                                </td>
                                <td width="20">&nbsp;</td>
                                <td ><h5 class="text-primary ">Middle Name :</h5></td>
                                <td >
                                	<center>
                                		<s:textfield cssClass="form-control"  name="middlename" value="%{profile.middlename}" />
                                		<!--<s:fielderror><s:param>middlename</s:param></s:fielderror>-->
                                    </center>
                                 </td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Last Name :</h5></td>
                                <td >
                                		<center> 
                                			<s:textfield cssClass="form-control"  name="lastname" id="lastname" cssStyle="float:left" value="%{profile.lastname}" />
                                			<!--<s:fielderror><s:param>firstname</s:param></s:fielderror>-->
                                		</center>
                                </td>
                                <td>&nbsp;</td>
                                  <td ><h5 class="text-primary text-center">Date of Birth<span class="text-danger"> * </span> :</h5></td>
                                <td>
                                	<center>
                                		<s:select label="Date Of Birth*"  list="#{'1':'1','2':'2','3':'3','4':'4','5':'5','6':'6','7':'7','8':'8','9':'9','10':'10','11':'11','12':'12','13':'13','14':'14','15':'15','16':'16','17':'17','18':'18','19':'19','20':'20','21':'21','22':'22','23':'23','24':'24','25':'25','26':'26','27':'27','28':'28','29':'29','30':'30','31':'31'}"  id="dob_day" onchange="setdateofbirth()"></s:select>
										<s:select  list="#{'1':'JAN','2':'FEB','3':'MAR','4':'APR','5':'MAY','6':'JUN','7':'JUL','8':'AUG','9':'SEP','10':'OCT','11':'NOV','12':'DEC' }"  id="dob_month" onchange="setdateofbirth()"></s:select>
										<s:select  list="#{'1995':'1995','1994':'1994','1993':'1993','1992':'1992','1991':'1991','1990':'1990','1989':'1989','1988':'1988','1987':'1987','1986':'1986','1985':'1985','1984':'1984','1983':'1983','1982':'1982','1981':'1981','1980':'1980','1979':'1979','1978':'1978','1977':'1977','1976':'1976','1975':'1975','1974':'1974','1973':'1973','1972':'1972','1971':'1971','1970':'1970','1969':'1969','1968':'1968','1967':'1967','1966':'1966','1965':'1965','1964':'1964','1963':'1963','1962':'1962','1961':'1961','1960':'1960','1959':'1959','1958':'1958','1957':'1957','1956':'1956','1955':'1955','1954':'1954','1953':'1953','1952':'1952','1951':'1951','1950':'1950' }"  id="dob_year" onchange="setdateofbirth()"></s:select>
										<s:hidden id="dateofbirth" name="dateofbirth" value="%{profile.dateofbirth}"/>
                                	</center>
                               </td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Mobile No <span class="text-danger"> * </span>:</h5></td>
                                <td >
                                	 <s:select  name="countrycode" cssClass="form-control" list="#{'Select ':'Select','+91':'+91','+1':'+1','+61':'+61','+880':'+880','+86':'+86','+92':'+92','+94':'+94','+39':'+39','+44':'+44','+34':'+34','+49':'+49','+044':'+044','+65':'+65' }"></s:select>
                                </td>
                                <td>&nbsp;</td>
                                <td >
                                <center>
	                                     <s:textfield name="mobileno" cssClass="form-control" value="%{profile.mobileno}"></s:textfield> 
	                                    <!--  <s:fielderror><s:param>mobileno</s:param></s:fielderror>-->
	                            </center> 
	                            </td>
                                <td>&nbsp;</td>
                              
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Gender <span class="text-danger"> * </span> :</h5></td>
                                <td>
	                                <center> 
	                                	<s:textfield label="Gender*"  cssClass="form-control" value="%{profile.gender}" name="gender" readonly="true"/>
	                                	 <!--<s:fielderror><s:param>gender</s:param></s:fielderror>-->
	                                </center>
	                            </td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Email <span class="text-danger"> * </span>:</h5></td>
                                <td>
                                	<center> 
                                		<s:textfield label="Email*" cssClass="form-control" value="%{profile.email}" name="email" readonly="true"/> 
                                	</center>
                                </td>
                              </tr>
                              <tr>
			                                <td><h5 class="text-primary text-center">Residence No :</h5></td>
			                                <td >
			                                    <center> <s:select id="residencecountry" cssClass="form-control"  name="residencecountry" list="#{'':'CountryCode','India (+91)':'India (+91)','USA (+1)':'USA (+1)','United Kingdom(+44)':'United Kingdom(+44)','Singapore(+65)':'Singapore(+65)','Australia (+61)':'Australia (+61)','Bangladesh (+880)':'Bangladesh (+880)','China (+86)':'China (+86)','Pakistan (+92)':'Pakistan (+92)','Sri Lanka (+94)':'Sri Lanka (+94)'}" value="%{profile.residencecountry}"  ></s:select> </center> </td>    
					                        <td>&nbsp;</td>     
											<td> <center><s:textfield id="residencestd" cssClass="form-control"   name="residencestd" size="6" maxlength="8" value="%{profile.residencestd}" /> </center> </td>   
					                        <td><center><s:textfield id="phoneno" cssClass="form-control"  name="phoneno" size="10" maxlength="10"  value="%{profile.phoneno}"/></center> </td>           

                              </tr>
                              <tr>
                                <td colspan="5"><h5 class="text-danger text-left thumbnail">Education and Work Information</h5></td>
                                
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Education <span class="text-danger"> * </span> :</h5></td>
                                <td><center> 
                                        <s:select  cssClass="form-control"  list="#{'Select ':'Select','B.A':'B.A','B.Arch':'B.Arch','B.Com':'B.Com' ,'B.Ed':'B.Ed','B.Pharm':'B.Pharm','B.Sc':'B.Sc','BBA':'BBA','BCA':'BCA','BDS':'BDS','BE':'BE','BHM':'BHM','BA LLB':'BA LLB','CA':'CA','CS':'CS','Diploma':'Diploma','ICWA':'ICWA','Integrated PG':'Integrated PG','Intermediate':'Intermediate','LLB':'LLB','M.Arch':'M.Arch','M.Com':'M.Com','M.Ed':'M.Ed','M.Pharm':'M.Pharm','M.Phil':'M.Phil','M.Sc':'M.Sc','M.Tech':'M.Tech','MA':'MA','MBA':'MBA','MBA PGDM':'MBA PGDM','MBBS':'MBBS','MCA':'MCA','MD/MS':'MD/MS','ME/M.Tech':'ME/M.Tech','ML/LLM':'ML/LLM','MS':'MS','Other Bachelor Degree':'Other Bachelor Degree','Other Masters':'Other Masters','Phd/Doctorate':'Phd/Doctorate','12th Standard':'12th Standard','10th Standard':'10th Standard','Below 10th Standard':'Below 10th Standard','others':'others'}" name="education" id="education" value="%{profile.education}"  />
								   </center>
                                 </td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Multiple Education  :</h5></td>
                                <td>
                                	<center> 
                                	    <s:textfield  name="mulitipleeducaaiondeatiles"   cssClass="form-control"  value="%{profile.mulitipleeducaaiondeatiles}" ></s:textfield>
                                	</center>
                                </td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Profession <span class="text-danger"> * </span>:</h5></td>
                                <td>
                                	<center> 
                                	    <s:select  cssClass="form-control" headerValue="profession" list="#{'Select ':'Select','Accountant':'Accountant','Acting Professional':'Acting Professional','Advertising Professional':'Advertising Professional','Advocate':'Advocate','Air Hostess':'Air Hostess','Airlines/Aviation Professional':'Airlines/Aviation Professional','Animator':'Animator','Architect':'Architect','Artisan':'Artisan','Arts Craftsman':'Arts Craftsman','Banker':'Banker','Beautician':'Beautician','Business Person':'Business Person','Call Centre/ ITES':'Call Centre/ ITES','Chartered Accountant':'Chartered Accountant','Chef':'Chef','Chemist':'Chemist','Civil Engineer':'Civil Engineer','Civil Services - Armed Forces':'Civil Services - Armed Forces','Civil Services - Accounts':'Civil Services - Accounts','Civil Services - IAS':'Civil Services - IAS','Civil Services - IES':'Civil Services - IES','Civil Services - IFS':'Civil Services - IFS','Civil Services - IPS':'Civil Services - IPS','Civil Services - IRS':'Civil Services - IRS','Civil Services - Information Service':'Civil Services - Information Service','Civil Services - Ordanance Factories':'Civil Services - Ordanance Factories','Civil Services - Postal Service':'Civil Services - Postal Service','Civil Services - Railways':'Civil Services - Railways','Civil Services - Trade Service':'Civil Services - Trade Service','Civil Services / IAS Allied Services':'Civil Services / IAS Allied Services','Clerical Official':'Clerical Official','Clerical Staff':'Clerical Staff','Commercial Pilot':'Commercial Pilot','Company Secretary':'Company Secretary','Computer Professional':'Computer Professional','Consultant':'Consultant','Contractor':'Contractor','Corporate Communication':'Corporate Communication','Corporate Planning':'Corporate Planning','Cost Accountant':'Cost Accountant','Creative Person':'Creative Person','Customer Service/Operations/CRM':'Customer Service/Operations/CRM','Defence Employee':'Defence Employee','Dentist':'Dentist','Designer':'Designer','Disc Jockey(DJ)':'Disc Jockey(DJ)','Doctor':'Doctor','Economist':'Economist','Educationist':'Educationist','Engineer':'Engineer','Event Manager':'Event Manager','Executive':'Executive','Export/Import/Foreign Trade':'Export/Import/Foreign Trade','Factory worker':'Factory worker','Farmer':'Farmer','Fashion Designer':'Fashion Designer','Freelancer':'Freelancer','Front Office/Secretarial Staff':'Front Office/Secretarial Staff','Government - Banking/Insurance':'Government - Banking/Insurance','Government - PSU':'Government - PSU','Government Employee':'Government Employee','HR Professional':'HR Professional','Hardware Professional':'Hardware Professional','Health Care Professional':'Health Care Professional','Home Maker':'Home Maker','Hotel Professional':'Hotel Professional','Industrialist':'Industrialist','Interior Designer':'Interior Designer','Investments':'Investments','Jeweller':'Jeweller','Jewelry designer':'Jewelry designer','Journalist':'Journalist','Law Enforcement':'Law Enforcement','Lawyer':'Lawyer','Lecturer':'Lecturer','Legal Professional':'Legal Professional','Management Profession':'Management Profession','Marketing Professional':'Marketing Professional','Media Professional':'Media Professional','Medical Professional':'Medical Professional','Medical Transcriptionist':'Medical Transcriptionist','Merchant Naval Officer':'Merchant Naval Officer','Modelling':'Modelling','Not Working':'Not Working','Nurse':'Nurse','Occupational Therapist':'Occupational Therapist','Officer':'Officer','Optician':'Optician','Paramedical Professional':'Paramedical Professional','Pharmacist':'Pharmacist','Physicist':'Physicist','Physiotherapist':'Physiotherapist','Pilot':'Pilot','Police/Security Forces':'Police/Security Forces','Politician':'Politician','Private Banking/Insurance':'Private Banking/Insurance','Production Professional':'Production Professional','Professor':'Professor','Psychologist':'Psychologist','Public Relations Professional':'Public Relations Professional','R and D Engineering':'R and D Engineering','Radio Jockey(RJ)':'Radio Jockey(RJ)','Real Estate Professional':'Real Estate Professional','Receptionist':'Receptionist','Research Scholar':'Research Scholar','Retailer':'Retailer','Retired Person':'Retired Person','Sales Professional':'Sales Professional','Scientist':'Scientist','Security Professional':'Security Professional','Self Employed':'Self Employed','Shipping':'Shipping','Social Worker':'Social Worker','Software Professional/Consultant':'Software Professional/Consultant','Sportsman':'Sportsman','Student':'Student','Supervisor':'Supervisor','TV/ Films Professional':'TV/ Films Professional','Teacher':'Teacher','Technician':'Technician','Training Professional':'Training Professional','Transportation Professional':'Transportation Professional','Tutor':'Tutor','Veterinary Doctor':'Veterinary Doctor','Video Jockey(VJ)':'Video Jockey(VJ)','Volunteer':'Volunteer','Web Designer':'Web Designer','Well Placed':'Well Placed','Writer':'Writer','Zoologist':'Zoologist','Others':'Others'}" name="profession" id="profession"  value="%{profile.profession}" />
                                	     <!--<s:fielderror><s:param>profession</s:param></s:fielderror>-->
                                    </center>
                                </td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Company Name :</h5></td>
                                <td>
                                	<center> 
                                		<s:textfield name="companyname"  cssClass="form-control" value="%{profile.companyname}"></s:textfield>
                                	</center>
                                </td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Company Number :</h5></td>
                                <td>
                                	<center> 
                                		<s:textfield name="companyno"  cssClass="form-control" value="%{profile.companyno}" />
                                   </center>
                                </td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Work Place :</h5></td>
                                <td>
                                	<center> 
                                		<s:select  cssClass="form-control"  list="#{'Select ':'Select','India':'India','United States of America':'United States of America','Malaysia':'Malaysia','Singapore':'Singapore','Canada':'Canada','United Kingdom':'United Kingdom','Afghanistan':'Afghanistan','Albania':'Albania','Algeria':'Algeria','American Samoa':'American Samoa','Andorra':'Andorra','Angola':'Angola','Anguilla':'Anguilla','Antarctica':'Antarctica','Antigua and Barbuda':'Antigua and Barbuda','Argentinan':'Argentinan','Armenia':'Armenia','Aruba':'Aruba','Australia':'Australia','Austria':'Austria','Azerbaijan':'Azerbaijan','Bahamas':'Bahamas','Bahrain':'Bahrain','Bangladesh':'Bangladesh','Barbados':'Barbados','Belarus':'Belarus','Belgium':'Belgium','Belize':'Belize','Benin':'Benin','Bermuda':'Bermuda','Bhutan':'Bhutan','Bolivia':'Bolivia','Bosnia and Herzegovina':'Bosnia and Herzegovina','Botswana':'Botswana','Bouvet Island':'Bouvet Island','Brazil':'Brazil','Brunei':'Brunei','Bulgaria':'Bulgaria','Burkina Faso':'Burkina Faso','Burundi':'Burundi','Cambodia':'Cambodia','Cameroon':'Cameroon','Cape Verde':'Cape Verde','Cayman Islands':'Cayman Islands','Central African Republic':'Central African Republic','Chad':'Chad','Chile':'Chile','China':'China','Christmas Island':'Christmas Island','Cocos Islands':'Cocos Islands','Colombia':'Colombia','Costa Rica':'Costa Rica','Croatia':'Croatia','Cuba':'Cuba','Cyprus':'Cyprus','Czech Republic':'Czech Republic','Denmark':'Denmark','Dominican Republic':'Dominican Republic','Ecuador':'Ecuador','Egypt':'Egypt','El Salvador':'El Salvador','Ethiopia':'Ethiopia','Fiji':'Fiji','Finland':'Finland','France':'France','Gambia':'Gambia','Georgia':'Georgia','Germany':'Germany','Ghana':'Ghana','Greece':'Greece','Guatemala':'Guatemala','Guyana':'Guyana','Haiti':'Haiti','Honduras':'Honduras','Hong Kong':'Hong Kong','Hungary':'Hungary','Iceland':'Iceland','Indonesia':'Indonesia','Iran':'Iran','Iraq':'Iraq','Ireland':'Ireland','Israel':'Israel','Italy':'Italy','Ivory Coast':'Ivory Coast','Jamaica':'Jamaica','Japan':'Japan','Jordan':'Jordan','Kazakhstan':'Kazakhstan','Kenya':'Kenya','Kiribati':'Kiribati','North Korea':'North Korea','South Korea':'South Korea','Kuwait':'Kuwait','Kyrgyzstan':'Kyrgyzstan','Laos':'Laos','Latvia':'Latvia','Lebanon':'Lebanon','Liberia':'Liberia','Libya':'Libya','Lithuania':'Lithuania','Luxembourg':'Luxembourg','Maldives':'Maldives','Mali':'Mali','Mauritius':'Mauritius','Mexico':'Mexico','Monaco':'Monaco','Mongolia':'Mongolia','Morocco':'Morocco','Myanmar':'Myanmar','Namibia':'Namibia','Nepal':'Nepal','Netherlands':'Netherlands','New Zealand':'New Zealand','Nicaragua':'Nicaragua','Nigeria':'Nigeria','Norfolk Island':'Norfolk Island','Norway':'Norway','Oman':'Oman','Pakistan':'Pakistan','Panama':'Panama','Papua New Guinea':'Papua New Guinea','Paraguay':'Paraguay','Peru':'Peru','Philippines':'Philippines','Poland':'Poland','Portugal':'Portugal','Puerto Rico':'Puerto Rico','Qatar':'Qatar','Romania':'Romania','Russia':'Russia','Rwanda':'Rwanda','Saudi Arabia':'Saudi Arabia','Senegal':'Senegal','Somalia':'Somalia','South Africa':'South Africa','Spain':'Spain','Sri Lanka':'Sri Lanka','Sudan':'Sudan','Sweden':'Sweden','Switzerland':'Switzerland','Syria':'Syria','Taiwan':'Taiwan','Tajikistan':'Tajikistan','Tanzania':'Tanzania','Thailand':'Thailand','Trinidad and Tobago':'Trinidad and Tobago','Tunisia':'Tunisia','Turkey':'Turkey','Uganda':'Uganda','Ukraine':'Ukraine','United Arab Emirates':'United Arab Emirates','Uruguay':'Uruguay','Uzbekistan':'Uzbekistan','Vanuatu':'Vanuatu','Vatican City':'Vatican City','Venezuela':'Venezuela','Vietnam':'Vietnam','Yemen':'Yemen','Zambia':'Zambia','Zimbabwe':'Zimbabwe'}" name="workplace" id="workplace" value="%{profile.workplace}" />
                                	</center>
                                </td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Annual Income :</h5></td>
                                <td>
                                	<center>
                                		 <s:textfield name="annualincome"  cssClass="form-control" value="%{profile.annualincome}"></s:textfield>
                                    </center>
                                </td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Currency :</h5></td>
                                <td>
                                	<center> 
                                		<s:select  cssClass="form-control" name="currency" list="#{'Select ':'Select','Indian Rupees':'Indian Rupees' ,'US Dollar':'US Dollar','EURO':'EURO','Singapore Dollar':'Singapore Dollar','Australian Dollar':'Australian Dollar','Pound':'Pound','Other':'Other'}" value="%{profile.currency}" />
                                	</center>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="5"><h5 class="text-danger text-left thumbnail">Personal Information :</h5></td>
                                
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Nakshatra :</h5></td>
                                <td>
                                	<center> 
                                		<s:textfield name="nakshatra" cssClass="form-control" value="%{profile.nakshatra}"></s:textfield> 
                                	</center>
                                </td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Rashi :</h5></td>
                                <td>
                                	<center>
                                	 <s:textfield name="rashi" cssClass="form-control" value="%{profile.rashi}"></s:textfield> 
                                	</center>
                                </td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Religion<span class="text-danger"> * </span> :</h5></td>
                                <td>
                                	<center> 
                                		<s:select cssClass="form-control" headerValue="religion" list="#{'Select ':'Select','Hindu':'Hindu','Jain':'Jain','Sikh':'Sikh' ,'Christian':'Christian','Muslim':'Muslim','Parsi':'Parsi','Buddhist':'Buddhist','Jewish':'Jewish','No Religion':'No Religion','Other':'Other'}" name="religion" id="religion" value="%{profile.religion}"/> 
                                	</center>
                                </td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Mother toungue :</h5></td>
                                <td>
                                	<center>
                                        <s:textfield name="mothertongue" cssClass="form-control" value="%{profile.mothertongue}"></s:textfield>
                                  	</center>
                                </td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Caste <span class="text-danger"> * </span>:</h5></td>
                                <td>
                           			 <center>
                                		<s:select cssClass="form-control" headerValue="caste" list="#{'Select ':'Select','Brahmin':'Brahmin','Kshatriyas':'Kshatriyas','Vaishyas':'Vaishyas' ,'Shudras':'Shudras','Lingayath':'Lingayath','Parsi':'Parsi','Buddhist':'Buddhist','Jewish':'Jewish','No Religion':'No Religion','Other':'Other'}" name="caste" id="caste" value="%{profile.caste}"/>
                                	 </center>
                                </td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Sub Caste <span class="text-danger"> * </span>:</h5></td>
                                <td><center> <s:textfield id="subcaste" name="subcaste" cssClass="form-control" maxlength="50" label="Sub Caste" value="%{profile.subcaste}"/> </center></td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Horoscope :</h5></td>
                                <td cssClass="form-control">
                                        <center>
                                   		       <s:if test="%{profile.horoscope == null || profile.horoscope.equals('')}">
												<div id="horoscope">
												</div>
												<s:file name="horoscopeupload" value="profile.horoscope"/>
												</s:if>
												<s:else>
												<div id="hidehoroscope">
												<s:property  value="%{profile.horoscope}" />
												
												<s:a href="#" cssClass="btn btn-xs btn-success" onclick="document.getElementById('changehoroscope').style.display='block'; document.getElementById('hidehoroscope').style.display='none';  return false;">Change Horoscope</s:a>
												</div>
												<s:div id="changehoroscope" cssStyle="display:none;">
												<s:file  name="horoscopeupload" cssClass="form-control"  />
												</s:div>
												</s:else> 
										</center></td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Upload Photo <span class="text-danger"> * </span> :</h5></td>
                                <td>
                                  <center> 
                                          <s:if test="%{profile.photo==null ||profile.photo.equals('')}">

											<s:file  label="Photo" name="photoupload" />
											
											</s:if>
											<s:else>
											<div id="hidephoto">
											<s:property  value="%{profile.photo}" />
											
											<s:a href="#" cssClass="btn btn-xs btn-success" onclick="document.getElementById('changephoto').style.display='block'; document.getElementById('hidephoto').style.display='none';return false;">Change Photo </s:a>
											</div>
											<s:div id="changephoto"   cssStyle="display:none;" >
											<s:file label="Photo"  name="photoupload" />
											</s:div>
											</s:else>
									</center> </td>
                              </tr>
                               <tr>
                                <td><h5 class="text-primary text-center">Heigth : Feet</h5></td>
                                <td><center> 
                                			<s:textfield name="hfeet"  cssClass="form-control" id="hfeet" size="4" label="Height" value="%{profile.hfeet}"></s:textfield>
                                			
                                			
                                    </center>
                                     </td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Inch :</h5></td>
                                <td><center> <s:textfield name="hinch"  cssClass="form-control" id="hinch" size="4" value="%{profile.hinch}"></s:textfield></center> </td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Hobbies :</h5></td>
                                <td><center> <s:textfield name="hobbies" cssClass="form-control" value="%{profile.hobbies}"></s:textfield></center> </td>
                                <td colspan="3">&nbsp;</td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Country :</h5></td>
                                <td>
                                	<center> 
                                		<s:select label="Country" cssClass="form-control" list="#{'Select ':'Select','India':'India','United States of America':'United States of America','Malaysia':'Malaysia','Singapore':'Singapore','Canada':'Canada','United Kingdom':'United Kingdom','Afghanistan':'Afghanistan','Albania':'Albania','Algeria':'Algeria','American Samoa':'American Samoa','Andorra':'Andorra','Angola':'Angola','Anguilla':'Anguilla','Antarctica':'Antarctica','Antigua and Barbuda':'Antigua and Barbuda','Argentinan':'Argentinan','Armenia':'Armenia','Aruba':'Aruba','Australia':'Australia','Austria':'Austria','Azerbaijan':'Azerbaijan','Bahamas':'Bahamas','Bahrain':'Bahrain','Bangladesh':'Bangladesh','Barbados':'Barbados','Belarus':'Belarus','Belgium':'Belgium','Belize':'Belize','Benin':'Benin','Bermuda':'Bermuda','Bhutan':'Bhutan','Bolivia':'Bolivia','Bosnia and Herzegovina':'Bosnia and Herzegovina','Botswana':'Botswana','Bouvet Island':'Bouvet Island','Brazil':'Brazil','Brunei':'Brunei','Bulgaria':'Bulgaria','Burkina Faso':'Burkina Faso','Burundi':'Burundi','Cambodia':'Cambodia','Cameroon':'Cameroon','Cape Verde':'Cape Verde','Cayman Islands':'Cayman Islands','Central African Republic':'Central African Republic','Chad':'Chad','Chile':'Chile','China':'China','Christmas Island':'Christmas Island','Cocos Islands':'Cocos Islands','Colombia':'Colombia','Costa Rica':'Costa Rica','Croatia':'Croatia','Cuba':'Cuba','Cyprus':'Cyprus','Czech Republic':'Czech Republic','Denmark':'Denmark','Dominican Republic':'Dominican Republic','Ecuador':'Ecuador','Egypt':'Egypt','El Salvador':'El Salvador','Ethiopia':'Ethiopia','Fiji':'Fiji','Finland':'Finland','France':'France','Gambia':'Gambia','Georgia':'Georgia','Germany':'Germany','Ghana':'Ghana','Greece':'Greece','Guatemala':'Guatemala','Guyana':'Guyana','Haiti':'Haiti','Honduras':'Honduras','Hong Kong':'Hong Kong','Hungary':'Hungary','Iceland':'Iceland','Indonesia':'Indonesia','Iran':'Iran','Iraq':'Iraq','Ireland':'Ireland','Israel':'Israel','Italy':'Italy','Ivory Coast':'Ivory Coast','Jamaica':'Jamaica','Japan':'Japan','Jordan':'Jordan','Kazakhstan':'Kazakhstan','Kenya':'Kenya','Kiribati':'Kiribati','North Korea':'North Korea','South Korea':'South Korea','Kuwait':'Kuwait','Kyrgyzstan':'Kyrgyzstan','Laos':'Laos','Latvia':'Latvia','Lebanon':'Lebanon','Liberia':'Liberia','Libya':'Libya','Lithuania':'Lithuania','Luxembourg':'Luxembourg','Maldives':'Maldives','Mali':'Mali','Mauritius':'Mauritius','Mexico':'Mexico','Monaco':'Monaco','Mongolia':'Mongolia','Morocco':'Morocco','Myanmar':'Myanmar','Namibia':'Namibia','Nepal':'Nepal','Netherlands':'Netherlands','New Zealand':'New Zealand','Nicaragua':'Nicaragua','Nigeria':'Nigeria','Norfolk Island':'Norfolk Island','Norway':'Norway','Oman':'Oman','Pakistan':'Pakistan','Panama':'Panama','Papua New Guinea':'Papua New Guinea','Paraguay':'Paraguay','Peru':'Peru','Philippines':'Philippines','Poland':'Poland','Portugal':'Portugal','Puerto Rico':'Puerto Rico','Qatar':'Qatar','Romania':'Romania','Russia':'Russia','Rwanda':'Rwanda','Saudi Arabia':'Saudi Arabia','Senegal':'Senegal','Somalia':'Somalia','South Africa':'South Africa','Spain':'Spain','Sri Lanka':'Sri Lanka','Sudan':'Sudan','Sweden':'Sweden','Switzerland':'Switzerland','Syria':'Syria','Taiwan':'Taiwan','Tajikistan':'Tajikistan','Tanzania':'Tanzania','Thailand':'Thailand','Trinidad and Tobago':'Trinidad and Tobago','Tunisia':'Tunisia','Turkey':'Turkey','Uganda':'Uganda','Ukraine':'Ukraine','United Arab Emirates':'United Arab Emirates','Uruguay':'Uruguay','Uzbekistan':'Uzbekistan','Vanuatu':'Vanuatu','Vatican City':'Vatican City','Venezuela':'Venezuela','Vietnam':'Vietnam','Yemen':'Yemen','Zambia':'Zambia','Zimbabwe':'Zimbabwe'}" name="country" id="country" value="%{profile.country}" />
                                	</center>
                                </td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">State :</h5></td>
                                <td><center> <s:select cssClass="form-control" name="state" list="#{'Select ':'Select','Karnataka':'Karnataka','Andhra Pradesh':'Andhra Pradesh','Arunachal Pradesh':'Arunachal Pradesh','Assam':'Assam','Bihar':'Bihar','Chhattisgarh':'Chhattisgarh','Goa':'Goa','Gujarat':'Gujarat','Haryana':'Haryana','Himachal Pradesh':'Himachal Pradesh','Jammu and Kashmir':'Jammu and Kashmir','Jharkhand':'Jharkhand','Kerala':'Kerala','Madhya Pradesh':'Madhya Pradesh','Maharashtra':'Maharashtra','Manipur':'Manipur','Meghalaya':'Meghalaya','Mizoram':'Mizoram','Nagaland':'Nagaland','Orissa':'Orissa','Punjab':'Punjab','Rajasthan':'Rajasthan','Sikkim':'Sikkim','Tamil Nadu':'Tamil Nadu','Tripura':'Tripura','Uttar Pradesh':'Uttar Pradesh','Uttarakhand':'Uttarakhand','West Bengal':'West Bengal','Chandigarh':'Chandigarh','Daman and Diu':'Daman and Diu','Lakshadweep':'Lakshadweep','Delhi':'Delhi','Puducherry':'Puducherry','Outside India':'Outside India'}" value="%{profile.state}"></s:select></center></td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">City :</h5></td>
                                <td><center> <s:textfield name="city" cssClass="form-control" value="%{profile.city}"></s:textfield></center></td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Current Working Status :</h5></td>
                                <td><center><s:textfield name="currentworkstatus" cssClass="form-control" value="%{profile.currentworkstatus}"></s:textfield></center></td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Marital Status :</h5></td>
                                <td><center> 
                                            <s:select label="Marital Status" cssClass="form-control" name="martialstatus" id="maritalstatus" onchange="showchildren()" list="#{'Select ':'Select','Never Married':'Never Married','Divorced':'Divorced','Separated':'Separated','Awaiting Divorce':'Awaiting Divorce','Widow/widower':'Widow/widower' }" value="%{profile.martialstatus}" >
                                            </s:select>
                                    </center>
                                 </td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Have Children :</h5></td>
                                <td><center><s:radio  name="havechildren" list="#{'1':'Yes','2':'No'}" />  </center></td>
                              </tr>
                              <tr>
                                <td colspan="5"><h5 class="text-danger text-left thumbnail">Parents Details</h5></td>
                                
                              </tr>
                               <tr>
                                <td ><h5 class="text-primary text-center">Father Name :</h5></td>
                                <td><center><s:textfield cssClass="form-control" name="fathername" id="fathername" value="%{profile.fathername}"/></center></td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">FatherOccupation:</h5></td>
                                <td><center> <s:textfield  cssClass="form-control" name="fatheroccupation" id="fatheroccupation" value="%{profile.fatheroccupation}"/></center></td>
                              </tr>
                              
                               <tr>
                                <td ><h5 class="text-primary text-center"4>Mother Name :</h5></td>
                                <td><center><s:textfield  cssClass="form-control" name="mothername" id="mothername" value="%{profile.mothername}"/></center></td>
                                 <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Mother Occupation :</h5></td>
                                <td><center><s:textfield  cssClass="form-control" name="motheroccupation" id="motheroccupation" value="%{profile.motheroccupation}"/></center></td>
                              </tr>
                               <tr>
                                <td ><h5 class="text-primary text-center">No of brothers :</h5></td>
                                <td><center> <s:textfield  cssClass="form-control" name="noofbrothers" id="noofbrothers" value="%{profile.noofbrothers}" onchange="noofbrother()"/></center></td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">No of sisters :</h5></td>
                                <td><center> <s:textfield cssClass="form-control" name="noofsisters" id="noofsisters" value="%{profile.noofsisters}" onchange="noofsister()"/></center></td>
                              </tr>
                              
                              <tr>
                              <td colspan="5"><center><input type="submit" value="Update Profile" class="btn btn-success btn-sm" onclick="updatesubmit()" id="hidebutton"></center></td>
                              <!-- <td colspan="3"><center><input type="reset" value="Reset  All" class="btn btn-success btn-sm"></center></td>-->
                              </tr>
                            </table>         
                            </div>                                 <!-- basic info Ends -->
                            
                            <div class="col-md-2 col-sm-2 thumbnail"> 
                            		
                            		 <img src="<s:property value="profile.photo"/>" class="img-thumbnail img-responsive" onmouseover="disableRightClick()"/>
                            
                            </div>
                            
                   
                   
                    </div>                <!--Row1 content Ends -->        
                     
                     
                     
                  </s:form> 
                
                
               
          
          
          
			<div id="footer" class="row" >	 <!-- Footer Starts-->
		          <div id="footerimage" class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 img-responsive img-rounded">
		          	<center> <p> Copyright &copy; 2014 MySangathi.com. All rights reserved.</p></center>
		          </div>
			 </div>	 <!-- Footer Ends-->
</div>     <!-- Container Ends-->



<!-- Javascript -->
<script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/jquery.ui.core.min.js" type="text/javascript"></script>
<script src="js/jquery.ui.widget.min.js" type="text/javascript"></script>
<script src="js/jquery.ui.datepicker.min.js" type="text/javascript"></script>

<script type="text/javascript">
$(function ()
{ $("#contact").popover();
});
</script>

<script>
$(function() {
    $( "#datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true
    });
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



jQuery(document).ready(function()
{
    jQuery().jctextcopyprotector();
});   


function disableRightClick()
{
	
	
//if IE4+  
document.onselectstart=new Function ("return false") ; 
document.oncontextmenu=new Function ("return false")  ;
//if NS6  
if (window.sidebar)
{  
	 document.onmousedown=disableselect(e);
	 document.onclick=reEnable();
}  

}

function disableselect(e)
{  
		 return false ; 
}  

function reEnable()
{  
		 return true ; 
}  

function setdate()
	{
	alert("hello");
	$('#dateofbirth').jdPicker();
}

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

function noofbrother()
{
	var numbers = /^[-+]?[0-9]+$/;
	var nobro=document.getElementById("noofbrothers").value;
	
	//alert("f=========="+nobro)
	//var val=document.getElementById("nobro.value.match(numbers)").value;
	//alert("Profile Updated Sucessfully!  "+nobro.value.match(numbers));
	if(nobro.match(numbers))
	{
		//alert("hi");
		return true;
		
	}else
	{
		  alert("Enter the numeric value");
		  return false;
	}
	//alert("Profile Updated Sucessfully!  "+nobro);
	//return false;
}

function  noofsister()
{
	var numbers = /^[-+]?[0-9]+$/;
	var nosis=document.getElementById("noofsisters").value;
	//alert("f=========="+nosis)
	if(nosis.match(numbers))
	{
		//alert("hi");
		return true;
		
	}else
	{
		  alert("Enter the numeric value");
		  return false;
	}
	
	
	
}
//window.onload=getsetdateofbirth();
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



function getsetdateofbirth()
{
	//alert("onload function  alert");
	var s=document.getElementById('dateofbirth').value;
	//alert("date of birth is   "+s);
	var arr=s.split('/');
	//alert(arr[0]);
	///alert(arr[1]);
	//alert(arr[2]);
	
	//document.getElementById('dob_day').value=s.substr(0, 2);
	//document.getElementById('dob_month').value=s.substr(3, 2);
	//var birthyear=s.substr(6, 2);
document.getElementById('dob_month').value=arr[0];
document.getElementById('dob_day').value=arr[1];
	var birthyear=arr[2];
	
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
	//vat noofbrothers=document.getElementById('noofbrothers').value;
	//alert(noofbrothers);
	
	var birthday=document.getElementById('dob_day').value;
	var birthmonth=document.getElementById('dob_month').value;
	var birthyear=document.getElementById('dob_year').value;	
	document.getElementById('dateofbirth').value=birthmonth+'/'+birthday+'/'+birthyear;
	//alert('-------------->>>>'+document.getElementById('dateofbirth').value)
	//document.getElementById('dateofbirth').value=birthyear+'-'+birthmonth+'-'+birthday;	
	
}


function updatesubmit(){
	setdateofbirth();
	
	//validatenoofsisterandbrothers();
	
	
	var buttonVisible = document.getElementById('hidebutton').style.visibility;
	
	document.forms["ProfileupdateAction"].submit();
	document.getElementById('hidebutton').style.visibility = "hidden";
	alert("Profile Updated Sucessfully!");
}
//document.all.resultRow.innerHTML =ajaxRequest.responseText ;

//document.all.loginStatus.style.color = "GREEN";
$(".modalbox").fancybox();
function showhoroscope(profileid)
{
	
	alert(profileid);
	//alert("show horoscope");
	//Make An ajax call and send the ID to Action Class
	
	$.post("DisplayHoroscopeAction.action",{'profileId':profileid} , function(data) {
		/*WinId = window.open('', 'newwin', 'width=400,height=500');
		alert()
        WinId.document.open();
        WinId.document.write(data);
        WinId.document.close();*/
        alert(data);
        $("#showhoroscope").html(data);

      
        //$("#showphoto").dialog();
//document.getElementById("showphoto").style.display="block";
		});
}



</script>
</body>
</html>
