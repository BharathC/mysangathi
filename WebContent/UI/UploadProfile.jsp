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
<script type ="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<style type="text/css">
<h3><font color="red">Validation Errors</font></h3>
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

body {
	font-family:"Arial",Times New Roman,Georgia,Serif;
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
                            </ul>


			</div>	<!-- menu Ends-->
			
              <s:form action="UploadProfileAction.action" method="post"  enctype="multipart/form-data" id="UploadProfileAction" name="UploadProfileAction" theme="simple"> 
                
                
                <!--<s:hidden value="%{profile.inactive}"                name="inactive" />
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
				<s:hidden value="%{profile.profileid}"               name="profileid" />-->
				
				 
					<div id="content" class="row">  <!--Row1 content Starts -->
                         
                			<div class="col-md-8 col-md-offset-1 col-sm-8 col-sm-offset-1"> <!-- basic info -->
                              
                                     
                 <table  border="0" class="table table-responsive table-condensed table-hover table-striped thumbnail"  >
                              <tr>
                                <td colspan="5"><h5 class="text-danger text-left thumbnail">Basic Information :</h5></td>
                               </tr>
                              <tr>
                                <td ><h5 class="text-primary text-center">First Name<span class="text-danger"> * </span> :</h5></td>
                                <td >
                                				<center>
                                						<s:textfield  cssClass="form-control"  name="firstname" id="firstname" />
                                						<s:fielderror><s:param>firstname</s:param></s:fielderror>
                                              
                                			   </center>
                                </td>
                                <td width="20">&nbsp;</td>
                                <td ><h5 class="text-primary text-center">Middle Name :</h5></td>
                                <td >
                                		<center> 
                                			<s:textfield cssClass="form-control" name="middlename"  />
                                			<s:fielderror><s:param>middlename</s:param></s:fielderror>
                                		</center>
                                </td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Last Name<span class="text-danger"> * </span> :</h5></td>
                                <td ><center>
                                       <s:textfield  cssClass="form-control" name="lastname" id="lastname"  />
                                       <s:fielderror><s:param>firstname</s:param></s:fielderror>
                                      </center>
                                </td>
                                <td>&nbsp;</td>
                                  <td><h5 class="text-primary text-center">Date of Birth<span class="text-danger"> * </span> :</h5></td>
                                <td>
                                    
                                   <!--  <input name="dateofbirth" id="datepicker" type="text" class="form-control" placeholder="Date of birth" > -->
                                   
                                     <s:select label="Date Of Birth*"  list="#{'':'day','1':'1','2':'2','3':'3','4':'4','5':'5','6':'6','7':'7','8':'8','9':'9','10':'10','11':'11','12':'12','13':'13','14':'14','15':'15','16':'16','17':'17','18':'18','19':'19','20':'20','21':'21','22':'22','23':'23','24':'24','25':'25','26':'26','27':'27','28':'28','29':'29','30':'30','31':'31'}"  id="dob_day" onchange="setdateofbirth()"></s:select>
									 <s:select  list="#{'':'Month','1':'JAN','2':'FEB','3':'MAR','4':'APR','5':'MAY','6':'JUN','7':'JUL','8':'AUG','9':'SEP','10':'OCT','11':'NOV','12':'DEC' }"  id="dob_month" onchange="setdateofbirth()"></s:select>
									 <s:select  list="#{'':'Year','1995':'1995','1994':'1994','1993':'1993','1992':'1992','1991':'1991','1990':'1990','1989':'1989','1988':'1988','1987':'1987','1986':'1986','1985':'1985','1984':'1984','1983':'1983','1982':'1982','1981':'1981','1980':'1980','1979':'1979','1978':'1978','1977':'1977','1976':'1976','1975':'1975','1974':'1974','1973':'1973','1972':'1972','1971':'1971','1970':'1970','1969':'1969','1968':'1968','1967':'1967','1966':'1966','1965':'1965','1964':'1964','1963':'1963','1962':'1962','1961':'1961','1960':'1960','1959':'1959','1958':'1958','1957':'1957','1956':'1956','1955':'1955','1954':'1954','1953':'1953','1952':'1952','1951':'1951','1950':'1950' }"  id="dob_year" onchange="setdateofbirth()"></s:select>
									 <s:hidden name="dateofbirth" id="dateofbirth" ></s:hidden>
                                  
                                </td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Mobile No :</h5></td>
                                <td >
                                	 <s:select  name="countrycode" cssClass="form-control" list="#{'':'CountryCode','+91':'+91','+1':'+1','+61':'+61','+880':'+880','+86':'+86','+92':'+92','+94':'+94','+39':'+39','+44':'+44','+34':'+34','+49':'+49','+044':'+044','+65':'+65' }"></s:select>
                                </td>
                                <td>&nbsp;</td>
                                <td >
                                <center>
	                                     <s:textfield   name="mobileno" cssClass="form-control"> </s:textfield> 
	                                       <s:fielderror><s:param>mobileno</s:param></s:fielderror>
	                            </center> 
	                            </td>
                                <td>&nbsp;</td>
                              
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Gender <span class="text-danger"> * </span> :</h5></td>
                                <td><center>
                                	  <s:radio label="Gender*" name="gender" id="gender" list="#{'male':'Male','female':'Female'}"  onclick="setit(this)" /> 
                                	  <s:fielderror><s:param>gender</s:param></s:fielderror>
                                	</center>
                                </td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Email <span class="text-danger"> * </span>:</h5></td>
                                <td>
                                	<center> 
                               			
                               			  <s:textfield id="email" cssClass="form-control" name="email"  label="Email*" />
										 <div id="duplicateemail" style="display: none ; color:red ; font:italic bold">Email-ID already exists.</div>
                               			   <s:fielderror><s:param>email</s:param></s:fielderror>
                               	   </center>
                               	</td>
                              </tr>
                              <tr>
			                                <td><h5 class="text-primary text-center">Residence No :</h5></td>
			                                <td >
			                                    <center> <s:select id="residencecountry" cssClass="form-control"  name="residencecountry" list="#{'':'CountryCode','India (+91)':'India (+91)','USA (+1)':'USA (+1)','United Kingdom(+44)':'United Kingdom(+44)','Singapore(+65)':'Singapore(+65)','Australia (+61)':'Australia (+61)','Bangladesh (+880)':'Bangladesh (+880)','China (+86)':'China (+86)','Pakistan (+92)':'Pakistan (+92)','Sri Lanka (+94)':'Sri Lanka (+94)'}"   ></s:select> </center> </td>    
					                        <td>&nbsp;</td>     
											<td> <center><s:textfield id="residencestd" cssClass="form-control"   name="residencestd" /> </center> </td>   
					                        <td><center><s:textfield id="phoneno" cssClass="form-control"  name="phoneno"   /></center> </td>           

                              </tr>
                              <tr>
                                <td colspan="5"><h5 class="text-danger text-left thumbnail">Education and Work Information</h5></td>
                                
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Education <span class="text-danger"> * </span> :</h5></td>
                                <td><center> 
                                        <s:select  cssClass="form-control"  list="#{'':'Select Education','B.A':'B.A','B.Arch':'B.Arch','B.Com':'B.Com' ,'B.Ed':'B.Ed','B.Pharm':'B.Pharm','B.Sc':'B.Sc','BBA':'BBA','BCA':'BCA','BDS':'BDS','BE':'BE','BHM':'BHM','BA LLB':'BA LLB','CA':'CA','CS':'CS','Diploma':'Diploma','ICWA':'ICWA','Integrated PG':'Integrated PG','Intermediate':'Intermediate','LLB':'LLB','M.Arch':'M.Arch','M.Com':'M.Com','M.Ed':'M.Ed','M.Pharm':'M.Pharm','M.Phil':'M.Phil','M.Sc':'M.Sc','M.Tech':'M.Tech','MA':'MA','MBA':'MBA','MBA PGDM':'MBA PGDM','MBBS':'MBBS','MCA':'MCA','MD/MS':'MD/MS','ME/M.Tech':'ME/M.Tech','ML/LLM':'ML/LLM','MS':'MS','Other Bachelor Degree':'Other Bachelor Degree','Other Masters':'Other Masters','Phd/Doctorate':'Phd/Doctorate','12th Standard':'12th Standard','10th Standard':'10th Standard','Below 10th Standard':'Below 10th Standard','others':'others'}" name="education" id="education"   />
                                         <s:fielderror><s:param>education</s:param></s:fielderror>
								   </center>
                                 </td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Multiple Education  :</h5></td>
                                <td><center> <s:textfield  name="mulitipleeducaaiondeatiles"   cssClass="form-control"  ></s:textfield></center></td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Profession <span class="text-danger"> * </span>:</h5></td>
                                <td>
                                	<center> 
                                		<s:select  cssClass="form-control" headerValue="profession" list="#{'':'Slect Profession','Accountant':'Accountant','Acting Professional':'Acting Professional','Advertising Professional':'Advertising Professional','Advocate':'Advocate','Air Hostess':'Air Hostess','Airlines/Aviation Professional':'Airlines/Aviation Professional','Animator':'Animator','Architect':'Architect','Artisan':'Artisan','Arts Craftsman':'Arts Craftsman','Banker':'Banker','Beautician':'Beautician','Business Person':'Business Person','Call Centre/ ITES':'Call Centre/ ITES','Chartered Accountant':'Chartered Accountant','Chef':'Chef','Chemist':'Chemist','Civil Engineer':'Civil Engineer','Civil Services - Armed Forces':'Civil Services - Armed Forces','Civil Services - Accounts':'Civil Services - Accounts','Civil Services - IAS':'Civil Services - IAS','Civil Services - IES':'Civil Services - IES','Civil Services - IFS':'Civil Services - IFS','Civil Services - IPS':'Civil Services - IPS','Civil Services - IRS':'Civil Services - IRS','Civil Services - Information Service':'Civil Services - Information Service','Civil Services - Ordanance Factories':'Civil Services - Ordanance Factories','Civil Services - Postal Service':'Civil Services - Postal Service','Civil Services - Railways':'Civil Services - Railways','Civil Services - Trade Service':'Civil Services - Trade Service','Civil Services / IAS Allied Services':'Civil Services / IAS Allied Services','Clerical Official':'Clerical Official','Clerical Staff':'Clerical Staff','Commercial Pilot':'Commercial Pilot','Company Secretary':'Company Secretary','Computer Professional':'Computer Professional','Consultant':'Consultant','Contractor':'Contractor','Corporate Communication':'Corporate Communication','Corporate Planning':'Corporate Planning','Cost Accountant':'Cost Accountant','Creative Person':'Creative Person','Customer Service/Operations/CRM':'Customer Service/Operations/CRM','Defence Employee':'Defence Employee','Dentist':'Dentist','Designer':'Designer','Disc Jockey(DJ)':'Disc Jockey(DJ)','Doctor':'Doctor','Economist':'Economist','Educationist':'Educationist','Engineer':'Engineer','Event Manager':'Event Manager','Executive':'Executive','Export/Import/Foreign Trade':'Export/Import/Foreign Trade','Factory worker':'Factory worker','Farmer':'Farmer','Fashion Designer':'Fashion Designer','Freelancer':'Freelancer','Front Office/Secretarial Staff':'Front Office/Secretarial Staff','Government - Banking/Insurance':'Government - Banking/Insurance','Government - PSU':'Government - PSU','Government Employee':'Government Employee','HR Professional':'HR Professional','Hardware Professional':'Hardware Professional','Health Care Professional':'Health Care Professional','Home Maker':'Home Maker','Hotel Professional':'Hotel Professional','Industrialist':'Industrialist','Interior Designer':'Interior Designer','Investments':'Investments','Jeweller':'Jeweller','Jewelry designer':'Jewelry designer','Journalist':'Journalist','Law Enforcement':'Law Enforcement','Lawyer':'Lawyer','Lecturer':'Lecturer','Legal Professional':'Legal Professional','Management Profession':'Management Profession','Marketing Professional':'Marketing Professional','Media Professional':'Media Professional','Medical Professional':'Medical Professional','Medical Transcriptionist':'Medical Transcriptionist','Merchant Naval Officer':'Merchant Naval Officer','Modelling':'Modelling','Not Working':'Not Working','Nurse':'Nurse','Occupational Therapist':'Occupational Therapist','Officer':'Officer','Optician':'Optician','Paramedical Professional':'Paramedical Professional','Pharmacist':'Pharmacist','Physicist':'Physicist','Physiotherapist':'Physiotherapist','Pilot':'Pilot','Police/Security Forces':'Police/Security Forces','Politician':'Politician','Private Banking/Insurance':'Private Banking/Insurance','Production Professional':'Production Professional','Professor':'Professor','Psychologist':'Psychologist','Public Relations Professional':'Public Relations Professional','R and D Engineering':'R and D Engineering','Radio Jockey(RJ)':'Radio Jockey(RJ)','Real Estate Professional':'Real Estate Professional','Receptionist':'Receptionist','Research Scholar':'Research Scholar','Retailer':'Retailer','Retired Person':'Retired Person','Sales Professional':'Sales Professional','Scientist':'Scientist','Security Professional':'Security Professional','Self Employed':'Self Employed','Shipping':'Shipping','Social Worker':'Social Worker','Software Professional/Consultant':'Software Professional/Consultant','Sportsman':'Sportsman','Student':'Student','Supervisor':'Supervisor','TV/ Films Professional':'TV/ Films Professional','Teacher':'Teacher','Technician':'Technician','Training Professional':'Training Professional','Transportation Professional':'Transportation Professional','Tutor':'Tutor','Veterinary Doctor':'Veterinary Doctor','Video Jockey(VJ)':'Video Jockey(VJ)','Volunteer':'Volunteer','Web Designer':'Web Designer','Well Placed':'Well Placed','Writer':'Writer','Zoologist':'Zoologist','Others':'Others'}" name="profession" id="profession"   />
                                		  <s:fielderror><s:param>profession</s:param></s:fielderror>
                                    </center>
                                </td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Company Name :</h5></td>
                                <td><center> <s:textfield name="companyname"  cssClass="form-control"></s:textfield></center></td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Company Number :</h5></td>
                                <td><center> <s:textfield name="companyno"  cssClass="form-control"  /> </center></td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Work Place :</h5></td>
                                <td>
                                	<center> 
                                		<s:select  cssClass="form-control"  list="#{'':'Select WorkPlace','India':'India','United States of America':'United States of America','Malaysia':'Malaysia','Singapore':'Singapore','Canada':'Canada','United Kingdom':'United Kingdom','Afghanistan':'Afghanistan','Albania':'Albania','Algeria':'Algeria','American Samoa':'American Samoa','Andorra':'Andorra','Angola':'Angola','Anguilla':'Anguilla','Antarctica':'Antarctica','Antigua and Barbuda':'Antigua and Barbuda','Argentinan':'Argentinan','Armenia':'Armenia','Aruba':'Aruba','Australia':'Australia','Austria':'Austria','Azerbaijan':'Azerbaijan','Bahamas':'Bahamas','Bahrain':'Bahrain','Bangladesh':'Bangladesh','Barbados':'Barbados','Belarus':'Belarus','Belgium':'Belgium','Belize':'Belize','Benin':'Benin','Bermuda':'Bermuda','Bhutan':'Bhutan','Bolivia':'Bolivia','Bosnia and Herzegovina':'Bosnia and Herzegovina','Botswana':'Botswana','Bouvet Island':'Bouvet Island','Brazil':'Brazil','Brunei':'Brunei','Bulgaria':'Bulgaria','Burkina Faso':'Burkina Faso','Burundi':'Burundi','Cambodia':'Cambodia','Cameroon':'Cameroon','Cape Verde':'Cape Verde','Cayman Islands':'Cayman Islands','Central African Republic':'Central African Republic','Chad':'Chad','Chile':'Chile','China':'China','Christmas Island':'Christmas Island','Cocos Islands':'Cocos Islands','Colombia':'Colombia','Costa Rica':'Costa Rica','Croatia':'Croatia','Cuba':'Cuba','Cyprus':'Cyprus','Czech Republic':'Czech Republic','Denmark':'Denmark','Dominican Republic':'Dominican Republic','Ecuador':'Ecuador','Egypt':'Egypt','El Salvador':'El Salvador','Ethiopia':'Ethiopia','Fiji':'Fiji','Finland':'Finland','France':'France','Gambia':'Gambia','Georgia':'Georgia','Germany':'Germany','Ghana':'Ghana','Greece':'Greece','Guatemala':'Guatemala','Guyana':'Guyana','Haiti':'Haiti','Honduras':'Honduras','Hong Kong':'Hong Kong','Hungary':'Hungary','Iceland':'Iceland','Indonesia':'Indonesia','Iran':'Iran','Iraq':'Iraq','Ireland':'Ireland','Israel':'Israel','Italy':'Italy','Ivory Coast':'Ivory Coast','Jamaica':'Jamaica','Japan':'Japan','Jordan':'Jordan','Kazakhstan':'Kazakhstan','Kenya':'Kenya','Kiribati':'Kiribati','North Korea':'North Korea','South Korea':'South Korea','Kuwait':'Kuwait','Kyrgyzstan':'Kyrgyzstan','Laos':'Laos','Latvia':'Latvia','Lebanon':'Lebanon','Liberia':'Liberia','Libya':'Libya','Lithuania':'Lithuania','Luxembourg':'Luxembourg','Maldives':'Maldives','Mali':'Mali','Mauritius':'Mauritius','Mexico':'Mexico','Monaco':'Monaco','Mongolia':'Mongolia','Morocco':'Morocco','Myanmar':'Myanmar','Namibia':'Namibia','Nepal':'Nepal','Netherlands':'Netherlands','New Zealand':'New Zealand','Nicaragua':'Nicaragua','Nigeria':'Nigeria','Norfolk Island':'Norfolk Island','Norway':'Norway','Oman':'Oman','Pakistan':'Pakistan','Panama':'Panama','Papua New Guinea':'Papua New Guinea','Paraguay':'Paraguay','Peru':'Peru','Philippines':'Philippines','Poland':'Poland','Portugal':'Portugal','Puerto Rico':'Puerto Rico','Qatar':'Qatar','Romania':'Romania','Russia':'Russia','Rwanda':'Rwanda','Saudi Arabia':'Saudi Arabia','Senegal':'Senegal','Somalia':'Somalia','South Africa':'South Africa','Spain':'Spain','Sri Lanka':'Sri Lanka','Sudan':'Sudan','Sweden':'Sweden','Switzerland':'Switzerland','Syria':'Syria','Taiwan':'Taiwan','Tajikistan':'Tajikistan','Tanzania':'Tanzania','Thailand':'Thailand','Trinidad and Tobago':'Trinidad and Tobago','Tunisia':'Tunisia','Turkey':'Turkey','Uganda':'Uganda','Ukraine':'Ukraine','United Arab Emirates':'United Arab Emirates','Uruguay':'Uruguay','Uzbekistan':'Uzbekistan','Vanuatu':'Vanuatu','Vatican City':'Vatican City','Venezuela':'Venezuela','Vietnam':'Vietnam','Yemen':'Yemen','Zambia':'Zambia','Zimbabwe':'Zimbabwe'}" name="workplace" id="workplace" />
 										
                                	</center>
                                </td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Annual Income :</h5></td>
                                <td><center> <s:textfield name="annualincome"  cssClass="form-control"></s:textfield></center></td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Currency :</h5></td>
                                <td><center> <s:select  cssClass="form-control" name="currency" list="#{'':'Select Currency','Indian Rupees':'Indian Rupees' ,'US Dollar':'US Dollar','EURO':'EURO','Singapore Dollar':'Singapore Dollar','Australian Dollar':'Australian Dollar','Pound':'Pound','Other':'Other'}" /></center></td>
                              </tr>
                              <tr>
                                <td colspan="5"><h5 class="text-danger text-left thumbnail">Personal Information :</h5></td>
                                
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Nakshatra :</h5></td>
                                <td><center> <s:textfield name="nakshatra" cssClass="form-control" ></s:textfield> </center></td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Rashi :</h5></td>
                                <td><center> <s:textfield name="rashi" cssClass="form-control" ></s:textfield> </center></td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Religion<span class="text-danger"> * </span> :</h5></td>
                                <td>
                                	<center> 
                                		<s:select cssClass="form-control"  headerValue="religion" list="#{'':'Select Religion','Hindu':'Hindu','Jain':'Jain','Sikh':'Sikh' ,'Christian':'Christian','Muslim':'Muslim','Parsi':'Parsi','Buddhist':'Buddhist','Jewish':'Jewish','No Religion':'No Religion','Other':'Other'}" name="religion" id="religion" value="%{profile.religion}"/>
                                		  <s:fielderror><s:param>religion</s:param></s:fielderror>
                                	</center>
                                </td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Mother toungue :</h5></td>
                                <td><center> <s:textfield name="mothertongue" cssClass="form-control" ></s:textfield> </center></td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Caste <span class="text-danger"> * </span>:</h5></td>
                                <td>
                                	<center> 
                                	   <s:select cssClass="form-control" headerValue="caste" list="#{'':'Select Caste ','Brahmin':'Brahmin','Kshatriyas':'Kshatriyas','Vaishyas':'Vaishyas' ,'Shudras':'Shudras','Lingayath':'Lingayath','Parsi':'Parsi','Buddhist':'Buddhist','Jewish':'Jewish','No Religion':'No Religion','Other':'Other'}" name="caste" id="caste" value="%{profile.caste}"/>
                                	  <s:fielderror><s:param>caste</s:param></s:fielderror>
                                	</center>
                               </td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Sub Caste :</h5></td>
                                <td><center> <s:textfield id="subcaste" name="subcaste" maxlength="50" cssClass="form-control"  /> </center></td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Horoscope :</h5></td>
                                <td cssClass="form-control">
                                        <center>
                                   		       <s:file  label="Horoscope" name="horoscopeupload" cssClass="form-control" />

										</center>
									</td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Upload Photo :</h5></td>
                                <td>
                                     <center> 
                                          <s:file label="Photo"  name="photoupload" cssClass="form-control" />
									</center>
								 </td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Heigth : Feet</h5></td>
                               
                                <td ><center> 
                                			<s:textfield name="hfeet"  id="hfeet" size="4" cssClass="form-control"  ></s:textfield>
                                	</center></td>
                                	<td>&nbsp;</td>
                                	<td><center><h5 class="text-primary text-center">Inch:</h5></center></td>		
                                	<td ><center>
                                	
                                	<s:textfield name="hinch"  id="hinch" size="4" cssClass="form-control" theme="simple"  ></s:textfield>
                                			
                                    </center>
                                     </td>
                                     
                               
                                </tr>
                                <tr>
                                <td><h5 class="text-primary text-center">Hobbies :</h5></td>
                                <td><center> <s:textfield name="hobbies" cssClass="form-control" ></s:textfield></center> </td>
                                <td colspan="3">&nbsp;</td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Country :</h5></td>
                                <td><center> <s:select cssClass="form-control"  list="#{'':'Select Country ','India':'India','United States of America':'United States of America','Malaysia':'Malaysia','Singapore':'Singapore','Canada':'Canada','United Kingdom':'United Kingdom','Afghanistan':'Afghanistan','Albania':'Albania','Algeria':'Algeria','American Samoa':'American Samoa','Andorra':'Andorra','Angola':'Angola','Anguilla':'Anguilla','Antarctica':'Antarctica','Antigua and Barbuda':'Antigua and Barbuda','Argentinan':'Argentinan','Armenia':'Armenia','Aruba':'Aruba','Australia':'Australia','Austria':'Austria','Azerbaijan':'Azerbaijan','Bahamas':'Bahamas','Bahrain':'Bahrain','Bangladesh':'Bangladesh','Barbados':'Barbados','Belarus':'Belarus','Belgium':'Belgium','Belize':'Belize','Benin':'Benin','Bermuda':'Bermuda','Bhutan':'Bhutan','Bolivia':'Bolivia','Bosnia and Herzegovina':'Bosnia and Herzegovina','Botswana':'Botswana','Bouvet Island':'Bouvet Island','Brazil':'Brazil','Brunei':'Brunei','Bulgaria':'Bulgaria','Burkina Faso':'Burkina Faso','Burundi':'Burundi','Cambodia':'Cambodia','Cameroon':'Cameroon','Cape Verde':'Cape Verde','Cayman Islands':'Cayman Islands','Central African Republic':'Central African Republic','Chad':'Chad','Chile':'Chile','China':'China','Christmas Island':'Christmas Island','Cocos Islands':'Cocos Islands','Colombia':'Colombia','Costa Rica':'Costa Rica','Croatia':'Croatia','Cuba':'Cuba','Cyprus':'Cyprus','Czech Republic':'Czech Republic','Denmark':'Denmark','Dominican Republic':'Dominican Republic','Ecuador':'Ecuador','Egypt':'Egypt','El Salvador':'El Salvador','Ethiopia':'Ethiopia','Fiji':'Fiji','Finland':'Finland','France':'France','Gambia':'Gambia','Georgia':'Georgia','Germany':'Germany','Ghana':'Ghana','Greece':'Greece','Guatemala':'Guatemala','Guyana':'Guyana','Haiti':'Haiti','Honduras':'Honduras','Hong Kong':'Hong Kong','Hungary':'Hungary','Iceland':'Iceland','Indonesia':'Indonesia','Iran':'Iran','Iraq':'Iraq','Ireland':'Ireland','Israel':'Israel','Italy':'Italy','Ivory Coast':'Ivory Coast','Jamaica':'Jamaica','Japan':'Japan','Jordan':'Jordan','Kazakhstan':'Kazakhstan','Kenya':'Kenya','Kiribati':'Kiribati','North Korea':'North Korea','South Korea':'South Korea','Kuwait':'Kuwait','Kyrgyzstan':'Kyrgyzstan','Laos':'Laos','Latvia':'Latvia','Lebanon':'Lebanon','Liberia':'Liberia','Libya':'Libya','Lithuania':'Lithuania','Luxembourg':'Luxembourg','Maldives':'Maldives','Mali':'Mali','Mauritius':'Mauritius','Mexico':'Mexico','Monaco':'Monaco','Mongolia':'Mongolia','Morocco':'Morocco','Myanmar':'Myanmar','Namibia':'Namibia','Nepal':'Nepal','Netherlands':'Netherlands','New Zealand':'New Zealand','Nicaragua':'Nicaragua','Nigeria':'Nigeria','Norfolk Island':'Norfolk Island','Norway':'Norway','Oman':'Oman','Pakistan':'Pakistan','Panama':'Panama','Papua New Guinea':'Papua New Guinea','Paraguay':'Paraguay','Peru':'Peru','Philippines':'Philippines','Poland':'Poland','Portugal':'Portugal','Puerto Rico':'Puerto Rico','Qatar':'Qatar','Romania':'Romania','Russia':'Russia','Rwanda':'Rwanda','Saudi Arabia':'Saudi Arabia','Senegal':'Senegal','Somalia':'Somalia','South Africa':'South Africa','Spain':'Spain','Sri Lanka':'Sri Lanka','Sudan':'Sudan','Sweden':'Sweden','Switzerland':'Switzerland','Syria':'Syria','Taiwan':'Taiwan','Tajikistan':'Tajikistan','Tanzania':'Tanzania','Thailand':'Thailand','Trinidad and Tobago':'Trinidad and Tobago','Tunisia':'Tunisia','Turkey':'Turkey','Uganda':'Uganda','Ukraine':'Ukraine','United Arab Emirates':'United Arab Emirates','Uruguay':'Uruguay','Uzbekistan':'Uzbekistan','Vanuatu':'Vanuatu','Vatican City':'Vatican City','Venezuela':'Venezuela','Vietnam':'Vietnam','Yemen':'Yemen','Zambia':'Zambia','Zimbabwe':'Zimbabwe'}" name="country" id="country"  /></center></td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">State :</h5></td>
                                <td><center> <s:select name="state"  cssClass="form-control"  list="#{'':'Select State ','Karnataka':'Karnataka','Andhra Pradesh':'Andhra Pradesh','Arunachal Pradesh':'Arunachal Pradesh','Assam':'Assam','Bihar':'Bihar','Chhattisgarh':'Chhattisgarh','Goa':'Goa','Gujarat':'Gujarat','Haryana':'Haryana','Himachal Pradesh':'Himachal Pradesh','Jammu and Kashmir':'Jammu and Kashmir','Jharkhand':'Jharkhand','Kerala':'Kerala','Madhya Pradesh':'Madhya Pradesh','Maharashtra':'Maharashtra','Manipur':'Manipur','Meghalaya':'Meghalaya','Mizoram':'Mizoram','Nagaland':'Nagaland','Orissa':'Orissa','Punjab':'Punjab','Rajasthan':'Rajasthan','Sikkim':'Sikkim','Tamil Nadu':'Tamil Nadu','Tripura':'Tripura','Uttar Pradesh':'Uttar Pradesh','Uttarakhand':'Uttarakhand','West Bengal':'West Bengal','Chandigarh':'Chandigarh','Daman and Diu':'Daman and Diu','Lakshadweep':'Lakshadweep','Delhi':'Delhi','Puducherry':'Puducherry','Outside India':'Outside India'}" ></s:select></center></td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">City :</h5></td>
                                <td><center> <s:textfield name="city" cssClass="form-control"  ></s:textfield></center></td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Current Working Status :</h5></td>
                                <td><center><s:textfield name="currentworkstatus" cssClass="form-control"  ></s:textfield></center></td>
                              </tr>
                              <tr>
                                <td><h5 class="text-primary text-center">Marital Status :</h5></td>
                                <td><center> 
                                           <s:select label="Martial Status " cssClass="form-control" name="martialstatus" id="maritalstatus" onchange="showchildren()" list="#{'':'Select the Marital Status','Never Married':'Never Married','Divorced':'Divorced','Separated':'Separated','Awaiting Divorce':'Awaiting Divorce','Widow/widower':'Widow/widower' }"  >
	
											</s:select>
                                    </center>
                                 </td>
                                <td>&nbsp;</td>
                                <td ><h5 class="text-primary text-center">Have Children :</h5></td>
                                <td ><center><s:radio   name="havechildren" list="#{'1':'Yes','2':'No'}" />  </center></td>
                              </tr>
                              <tr>
                                <td colspan="5"><h5 class="text-danger text-left thumbnail">Parents Details</h5></td>
                                
                              </tr>
                               <tr>
                                <td ><h5 class="text-primary text-center">Father Name :</h5></td>
                                <td><center><s:textfield  cssClass="form-control"  name="fathername" id="fathername" /></center></td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">FatherOccupation:</h5></td>
                                <td><center> <s:textfield  cssClass="form-control"  name="fatheroccupation" id="fatheroccupation"/></center></td>
                              </tr>
                              
                               <tr>
                                <td ><h5 class="text-primary text-center"4>Mother Name :</h5></td>
                                <td><center><s:textfield  cssClass="form-control"  name="mothername" id="mothername" /></center></td>
                                 <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">Mother Occupation :</h5></td>
                                <td><center><s:textfield  cssClass="form-control"  name="motheroccupation" id="motheroccupation"/></center></td>
                              </tr>
                               <tr>
                                <td ><h5 class="text-primary text-center">No of brothers :</h5></td>
                                <td><center> <s:textfield  cssClass="form-control"  name="noofbrothers" id="noofbrothers"  onchange="noofbrother()"/></center></td>
                                <td>&nbsp;</td>
                                <td><h5 class="text-primary text-center">No of sisters :</h5></td>
                                <td><center> <s:textfield cssClass="form-control"  name="noofsisters" id="noofsisters"  onchange="noofsister()"/></center></td>
                              </tr>
                              
                              <tr>
                              <td colspan="2"><center><input type="button" value="Upload Profile" class="btn btn-success " onclick=" return validate()"  id="hidebutton"></center></td>
                              <td colspan="3"><center><input type="reset" value="Reset  All" class="btn btn-success btn-sm"></center></td>
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
                   <center> <p>Copyright © 2014 MySangathi.com. All rights reserved.</p></center>
                </div>
		    </div>	 <!-- Footer Ends-->
</div>     <!-- Container Ends-->



<!-- Javascript -->
<script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>

<script type="text/javascript">
$(function ()
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

<script type="text/javascript" src="js/jctextcopyprotector.js"></script>
  
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
 
function myFunction()
{
	alert("Profile Upload Sucessfully!");
}

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


function setdateofbirth(){
	var birthday=document.getElementById('dob_day').value;
	var birthmonth=document.getElementById('dob_month').value;
	var birthyear=document.getElementById('dob_year').value;	
	document.getElementById('dateofbirth').value=birthmonth+'/'+birthday+'/'+birthyear;
	//document.getElementById('dateofbirth').value=birthyear+'-'+birthmonth+'-'+birthday;	
	
}

/*function myFunction()
{
	var birthday=document.getElementById('dob_day').value;
	var birthmonth=document.getElementById('dob_month').value;
	var birthyear=document.getElementById('dob_year').value;	
	document.getElementById('dateofbirth').value=birthmonth+'/'+birthday+'/'+birthyear;
	alert("Profile Uploaded Sucessfully123!");
}
*/
function validate()

{
	alert('------------>>>>'+document.getElementById('email').value)
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

alert(ajaxRequest.responseText );

if( ajaxRequest.responseText =='duplicate'){
	alert('duplicate');
	document.getElementById('duplicateemail').style.display='block';
	return false;
}else if(ajaxRequest.responseText =='unique')
{
	alert('unique');
	if(document.getElementById('dob_day').value==' ')
	{
		alert("Enter the birth date");
		return false;
	}
	if(document.getElementById('dob_day').value==' ')
	{
		alert("Enter the birth mounth");
		return false;
	}
	if(document.getElementById('dob_year').value=='')
	{
		alert("Enter the birth year");
		return false;
	}
	var birthday=document.getElementById('dob_day').value;
	var birthmonth=document.getElementById('dob_month').value;
	var birthyear=document.getElementById('dob_year').value;	
	document.getElementById('dateofbirth').value=birthmonth+'/'+birthday+'/'+birthyear;
	
	var buttonVisible = document.getElementById('hidebutton').style.visibility;
	document.forms["UploadProfileAction"].submit();
	document.getElementById('hidebutton').style.visibility = "hidden";
	alert("Profile Upload Sucessfully!");
}
//document.all.resultRow.innerHTML =ajaxRequest.responseText ;

//document.all.loginStatus.style.color = "GREEN";

}

}

alert('-------open----->>>>'+document.getElementById('email').value)
ajaxRequest.open("POST", "UniqueEmailAction.action?email="+document.getElementById('email').value, true);

ajaxRequest.send(null);

}

function checkemailuniqueness(email)
{

	alert('checkemailuniqueness'+email);
		
	$.post("UniqueEmailAction.action", {'email': email},function (data)
	{
		alert("---------------responsestring------------------->"+data)
		var responsestring = data;
		
		if(responsestring == 'duplicate')
		{
			
			document.getElementById('duplicateemail').style.display='block';
            return false;
		}
		else if(responsestring == 'unique')
		{
			 
		
			
			var buttonVisible = document.getElementById('hidebutton').style.visibility;
			document.forms["UploadProfileAction"].submit();
			document.getElementById('hidebutton').style.visibility = "hidden";
			alert("Profile Upload Sucessfully!");
		    return true;
		}
		
       

    });
	
}

function validate00()
{
	alert("----------------validate-------------->")
	if(document.getElementById('dob_day').value=='')
	{
		alert("Enter the birth date");
		return false;
	}
	if(document.getElementById('dob_month').value=='')
	{
		alert("Enter the birth month");
		return false;
	}
	if(document.getElementById('dob_year').value=='')
	{
		alert("Enter the birth year");
		return false;
	}
	
	
	//var  test=document.getElementById('terms').checked == false;
	//alert("the term is"+test);
	
    var birthday=document.getElementById('dob_day').value;
    var birthmonth=document.getElementById('dob_month').value;
    var birthyear=document.getElementById('dob_year').value;	
    document.getElementById('dateofbirth').value=birthmonth+'/'+birthday+'/'+birthyear;

    var dob = document.getElementById('dateofbirth').value;
    
    alert('------dob------>'+dob)

	var email=document.getElementById('email').value;
	
	alert('----kkkkkkkkkkkk------------>>>'+email);
	
	
	if(email =='')
	{ 
		 alert("Enter The email id");
		 return false;
	}
	
 checkemailuniqueness(email); 

}

</script>

</body>
</html>
