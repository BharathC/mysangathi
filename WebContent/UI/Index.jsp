<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>	
<s:head theme="ajax" debug="true" /> 
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>MySangathi Matrimony,free matrimonials,india matrimonial,marriage sites,horoscope matrimonial services,marriage</title>
<meta name="Description" content=" Free Indian matrimonials site, kannada matrimonials, Indian marriages, India Matrimonial, Shadi, Marriage bureaus,Life partner,sangathi,Hindu Matrimonial,Lingayath Matrimonial" />
<meta name="keywords" content="Matrimony,Matrimonial,Matrimonials,Marriage sites,Free matrimonials,Indian matrimonials,Match making,Life partner,sangathi,Bride,Groom,Partner selection,shadi,Hindu Matrimonials,Muslim,Jain,christian,Kannada Matrimonials" />
<meta name="title" content="mysangathi.com Matrimonials;  Free Indian matrimonials site, Matchmaking, Muslim matrimonials, Shadi, Marriage bureaus, Indian marriages, Hindu,Lingayath Matrimonials ,Gowda's,kannada matrimonials" />
<meta name="google-site-verification" content="G1jAlEnFZvk2FHH8-SImtp5DKw_cQbP_VyZ1Hhg2Bcg" />
<meta name="robots" content="index, follow" />
<link rel="canonical" href="http://www.mysangathi.com/" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type ="text/javascript" src="js/jquery.js"></script> 
<script type ="text/javascript" src="js/jquery.jdpicker.js"></script>
<link rel="stylesheet" href="css/jdpicker.css" type="text/css" media="screen" /> 
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>

<title>MySangathi Matrimony</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
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

#registration {
	margin-bottom: 20px;
}
#footerimage {
	background-image: url(images/bottom.jpg);

}
#row2{
  margin-top: 20px;
}

#footer{
	margin-top:20px;
}

body {
	font-family:"Arial",Times New Roman,Georgia,Serif;
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
  
 <!--   <div class="row">

                <div class="col-md-6  col-md-offset-3 " >
                 <p class="alert alert-danger"><strong> NEWS : Now you can access Mysangathi.com Website from your mobile.</strong> </p>
                 </div>
    </div>   -->
			<div id="menu" class="row">	<!-- menu Starts-->	
              
                            <ul class=" col-md-offset-1 nav nav-pills thumbanil">
                            <li class="active">
                            	<a href="#" >Home</a>
                            </li>
                            <li >
                           <!--  <s:url action="AboutUsAction.action"  id="urlTagb" ></s:url>
								  <s:a href="%{urlTagb}"> About us</s:a>-->
								  
							<a href="UI/Aboutus.jsp">About us</a>
                            </li>
                            <li>
                            	<a href="UI/Servies.jsp">Our Services</a>
                            </li>
                            <li>
                            	<a href="UI/privacy.jsp" >Terms and Conditions</a>
                            </li>
                            <li><a href="#" id="contact" class="" rel="popover"
                             data-content="Phone :(91)(080)26730904 
                                           Mobile:(91)9845199675,9663821291
                                           Technical support:Mobile:(91)9632905725" 
							 data-original-title="Contact us:">
                             <span class="glyphicon glyphicon-earphone"></span> Contact Us</a>
                             </li>
                            </ul>


			</div>	<!-- menu Ends-->

				
                <div id="content1" class="row ">	 <!-- Row1 Starts-->
                            <div class="col-md-6 col-md-offset-1">
                                            <div class="panel panel-success" > 
                                                      <div class="panel-heading">
                                                       <h3 class="panel-title"><strong><span class="text-primary">DEAR GUEST,</span></strong></h3>
                                                       </div>
                                                      <div class="panel-body">
                                                      <blockquote>Welcome to MySangathi. It is my endeavour to provide the authenticated data on 
                                                      matrimonial matters which
                                                      should result in the successful married life of the prospective bride/grooms. 
                                                      
                                                      Regards, 
                                                      B.H.MANJUNATH. IAS (retd) 
                                                      Founder MySangathi.</blockquote>
                                                      </div>
                                             </div>
                                            
                          
                        
                            </div >
                            <div class="col-md-5" id="login" > 
                              		<div id="register">
                                     
                                        <table border="3" bordercolor="#99FF99" width="370" >
                                        <s:actionerror />
                                         <s:form action="LoginAction.action" name="LoginAction" id="LoginAction" method="post" theme="simple">
                                          <tr >
                                            <td width="181"><center>  <h4> <span class="text-primary">Already a member ?</span> </h4> </center></td>
                                            <td width="181" > <center> <h4> <span class="text-danger">Sign in </span> </h4> </center></center></td>
                                          </tr >  	
                                          <tr>
                                            <td class="panel-body">Username:</td>
                                            <td> 
                                               <s:textfield name="username"  id="username" label="UserName" cssClass="form-control"/>
                                                <s:fielderror><s:param>username</s:param></s:fielderror>
                                              
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="panel-body">Password:</td>
                                            <td>
                                                 <s:password name="password" id="password" label="Password" cssClass="form-control" />
                                                  <s:fielderror><s:param>password</s:param></s:fielderror>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td > <center><input type="submit" class="btn btn-sm btn-success" value="Sign In">  </center></td>
                                            </s:form>
                                          
                                            <td>
                                                <center>
                                                
                                                  <s:form action="LoadForgotPasswordAction.action" method="post" id="LoadForgotPasswordAction" name="LoadForgotPasswordAction">
																
													<input type="submit" class="btn btn-sm btn-success" value="Forgot password ?" onclick="forgotpasswordsubmit()">
														</s:form>
                                                </center>
                                            </td>
                                          </tr>
                                        </table> 
                                  
                                     </div>   
                                                   
                             </div>         
     		 </div>	<!-- Row1 Ends-->
             
             <div id="row2" class="row">  <!-- Row2 starts-->
             
             					 <div class="col-md-6 col-md-offset-1">
                                			 <div class="row">               <!-- subcontent1 Starts-->
                          		<div class="col-md-6  col-xs-6 ">
                                			 <div class="panel panel-success " > 
                                                  <div class="panel-heading">
                                                   <h3 class="panel-title"><strong><span class="text-primary">WHO ARE WE ?</span></strong></h3>
                                                   </div>
                                                  <div class="panel-body">
                                                
                                                 <p> We are a group of senior citizens supported by professionals with an objective 
                                                     to help the people by providing required matrimonial data.
                                                    We have provided easy options to reach us by uploading the profile via internet.</p>
                                                 </div>
                                           </div>   						
                                </div>
                                <div class="col-md-6 col-xs-6">
                                			 <div class="panel panel-success " > 
                                                  <div class="panel-heading">
                                                   <h3 class="panel-title"><strong> <span class="text-primary">WHAT WE DO ?</span></strong></h3>
                                                   </div>
                                                  <div class="panel-body">
                                                
                                                   <p> We will assure you the best services regarding matrimonial data.
                                                        We carefully review the profiles and provide the authenticated details 
                                                        of prospective partners.
                                                   </p>
                                                 </div>
                                                 
                                               </div>
                                            </div>
                                 </div>                            <!-- subcontent1 Ends-->
                                
                                        
                          
                        <div class="row">	 <!-- subcontent2 Starts-->
						<div class="col-md-12">
                        				<div class="panel-group" id="accordion">
                                                        <div class="panel panel-success">
                                                          <div class="panel-heading">
                                                            <h4 class="panel-title">
                                                              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                                                <span class="text-primary">WHAT SERVICE WE PROVIDE?  
                                                                <span class="glyphicon glyphicon-chevron-down"></span> 
                                                                 </span> click here
                                                              </a>
                                                            </h4>
                                                          </div>
                                                          <div id="collapseOne" class="panel-collapse collapse">
                                                            <div class="panel-body">
                                                              Currently, we provide following services;<br>
                                                                  -Matrimony Data.<br>
                                                                  -Horoscope Matching.<br>
                                                            </div>
                                                          </div>
                                                        </div>
                                                        <div class="panel panel-success">
                                                          <div class="panel-heading">
                                                            <h4 class="panel-title">
                                                              <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                                              <span class="text-primary">WANT TO SEND FEEDBACK ?
                                                               <span class="glyphicon glyphicon-chevron-down"></span>
                                                              </span> click here
                                                              </a>
                                                            </h4>
                                                          </div>
                                                          <div id="collapseTwo" class="panel-collapse collapse">
                                                            <div class="panel-body">
                                                              Any feedback related to our services, please send email to:admin@mysangathi.com
                                                            </div>
                                                          </div>
                                                        </div>
                                                        <div class="panel panel-success">
                                                          <div class="panel-heading">
                                                            <h4 class="panel-title">
                                                              <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                                                <span class="text-primary ">ANY QUERY ?
                                                                 <span class="glyphicon glyphicon-chevron-down"></span>
                                                                </span> click here
                                                              </a>
                                                            </h4>
                                                          </div>
                                                          <div id="collapseThree" class="panel-collapse collapse">
                                                            <div class="panel-body">
                                                             <address>
                                                              <strong>Contact Us:</strong><br>
                                                          
                                                          No 195,1st block,3rd phase 100ft ring road,<br>
                                                          Banashakari layout,Bangalore 560085,karnataka,India.<br>
                                                      
                                                          Phone :(91)(080)26730904<br>
                                                      
                                                          Mobile:(91)9845199675,9663821291<br>
                                                      
                                                          Technical support:Mobile:(91)9632905725<br>
                                                      
                                                          send email:admin@mysangathi.com<br>
                                                          </address>
                                                            </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                      </div>
   		                 </div>	<!-- Sub content2 Ends-->
                                 </div>
                                 
                                  <div class="col-md-5 ">
                                  
                                  
                                  		  <div id="registration" class="hidden-xs hidden-sm">
                                      <s:form action="ProfileAction.action" name="ProfileAction" id="ProfileAction" method="post" theme="simple">
                                      			<table   border="3" bordercolor="#99FF99  " width="370">
                                                              <tr>
                                                                <td width="180"><h4> <span class="text-primary">New to MySangathi?</span> </h4></td>
                                                                <td ><h4> <span class="text-danger">FREE Registration</span> </h4></td>
                                                              </tr>
                                                              <tr>
                                                                <td>Name*:</td>
                                                                <td>
                                                                	<s:textfield name="firstname" id="firstname" label="Name*" cssClass="form-control"/>
                                                                	<s:fielderror><s:param>firstname</s:param></s:fielderror>
                                                                </td>
                                                              </tr>
                                                              <tr>
                                                                <td>Date Of Birth*:</td>
                                                                <td ><!-- <input name="dob" type="text" class="form-control" >-->
                                                                    <s:select  label="Date Of Birth*"  list="#{'':'day','01':'1','02':'2','03':'3','04':'4','05':'5','06':'6','07':'7','08':'8','09':'9','10':'10','11':'11','12':'12','13':'13','14':'14','15':'15','16':'16','17':'17','18':'18','19':'19','20':'20','21':'21','22':'22','23':'23','24':'24','25':'25','26':'26','27':'27','28':'28','29':'29','30':'30','31':'31'}" name="dob_day" id="dob_day" ></s:select>
																	<s:select  list="#{'':'Month','01':'JAN','02':'FEB','03':'MAR','04':'APR','05':'MAY','06':'JUN','07':'JUL','08':'AUG','09':'SEP','10':'OCT','11':'NOV','12':'DEC' }" name="dob_month" id="dob_month"  ></s:select>
																	<s:select  list="#{'':'Year','1995':'1995','1994':'1994','1993':'1993','1992':'1992','1991':'1991','1990':'1990','1989':'1989','1988':'1988','1987':'1987','1986':'1986','1985':'1985','1984':'1984','1983':'1983','1982':'1982','1981':'1981','1980':'1980','1979':'1979','1978':'1978','1977':'1977','1976':'1976','1975':'1975','1974':'1974','1973':'1973','1972':'1972','1971':'1971','1970':'1970','1969':'1969','1968':'1968','1967':'1967','1966':'1966','1965':'1965','1964':'1964','1963':'1963','1962':'1962','1961':'1961','1960':'1960','1959':'1959','1958':'1958','1957':'1957','1956':'1956','1955':'1955','1954':'1954','1953':'1953','1952':'1952','1951':'1951','1950':'1950' }" name="dob_year" id="dob_year" ></s:select>
																	<s:hidden id="dateofbirth" name="dateofbirth"/> 
                                                                </td>
                                                              </tr>
                                                              <tr>
                                                                <td>Gender*:</td>
                                                                <td ><center><div >
                                                                        <!-- <input type="radio" name="gender" value="male" > Male
                                                                        <input type="radio" name="gender" value="female" > Female-->
                                                                        <s:hidden id ="tempgender" name="tempgender"/>
                                                                        <s:fielderror><s:param>gender</s:param></s:fielderror>
                                                                        <s:radio name="gender" id="gender" list="#{'male':'Male','female':'Female'}"  onclick="setit(this)" />
                                                                     	
                                                                    </div>
                                                                    </center>
                                                               </td>
                                                              </tr>
                                                              <tr>
                                                                <td>Religion*:</td>
                                                                <td> 
                                                                     <s:select label="Religion*" cssClass="form-control" headerValue="religion" list="#{'':'Select the religion','Hindu':'Hindu','Jain':'Jain','Sikh' :'Sikh' ,'Christian':'Christian','Muslim':'Muslim','Parsi':'Parsi','Buddhist':'Buddhist','Jewish':'Jewish','No Religion':'No Religion','Other':'Other','Jainism':'Jainism','Christianity':'Christianity','Lingayatism':'Lingayatism'}" name="religion" id="religion" />
                                                                     <s:fielderror><s:param>religion</s:param></s:fielderror>
                                                                </td>
                                                              </tr>
                                                              <tr>
                                                                <td>Caste*:</td>
                                                                <td>
                                                                	 <s:select label="Caste*" cssClass="form-control" headerValue="caste" list="#{'':'Select the caste','Akkasale':'Akkasale','Brahmin':'Brahmin','Darji':'Darji','Devanga':'Devanga','Eidiga':'Eidiga','Ganiga':'Ganiga','Ganga Matastharu':'Ganga Matastharu','Gowda':'Gowda','Golla':'Golla','Kshatriyas':'Kshatriyas','Kurba':'Kurba','Madivala':'Madivala','Okkaliga':'Okkaliga','Vaishyas' :'Vaishyas' ,'S.C/S.T':'S.C/S.T','Lingayath':'Lingayath','Parsi':'Parsi','Vishwakarma':'Vishwakarma','Buddhist':'Buddhist','Jewish':'Jewish','No Religion':'No Religion','Other':'Other'}" name="caste" id="caste" />
                                                                	  <s:fielderror><s:param>caste</s:param></s:fielderror>
                                                                </td>
                                                              </tr>
                                                              <tr>
                                                                <td>Phone No(optional):</td>
                                                                <td> 
                                                                	 <s:textfield id="phoneno" cssClass="form-control" name="phoneno" label="Phone No(optional)" />
                                                                	 <s:fielderror><s:param>phoneno</s:param></s:fielderror>
                                                                </td>
                                                              </tr>
                                                              <tr>
                                                                <td>Mobile No*:</td>
                                                                <td>
                                                                	 <s:textfield id="mobileno" cssClass="form-control" name="mobileno"  label="Mobile No*" />
                                                                	 <s:fielderror><s:param>mobileno</s:param></s:fielderror>
                                                                </td>
                                                              </tr>
                                                              <tr>
                                                                <td>Email* : <span id="email1" class="glyphicon glyphicon-info-sign" title="This will be your MySangathi username"></span></td>
                                                                <td>
                                                                	 <s:textfield id="email" cssClass="form-control" name="email" title="This will be your MySangathi username" />
                                                                	   <div id="duplicateemail" style="display: none ; color:red ; font:italic bold">E-mail already exists.</div>
                                                                	
                                                                	 <s:fielderror><s:param>email</s:param></s:fielderror>
                                                                </td>
                                                              </tr>
                                                              <tr>
                                                                <td>Education*:</td>
                                                                <td>
                                                                     <s:select label="Education*" cssClass="form-control" list="#{'':'Select the education','B.A':'B.A','B.Arch':'B.Arch','B.Com' :'B.Com' ,'B.Ed':'B.Ed','B.Pharm':'B.Pharm','B.Sc':'B.Sc','BBA':'BBA','BCA':'BCA','BDS':'BDS','B.E':'B.E','BHM':'BHM','BA LLB':'BA LLB','CA':'CA','CS':'CS','Diploma':'Diploma','ICWA':'ICWA','Integrated PG':'Integrated PG','Intermediate':'Intermediate','LLB':'LLB','M.Arch':'M.Arch','M.Com':'M.Com','M.Ed':'M.Ed','M.Pharm':'M.Pharm','M.Phil':'M.Phil','M.Sc':'M.Sc','M.Tech':'M.Tech','MA':'MA','MBA':'MBA','MBA PGDM':'MBA PGDM','MBBS':'MBBS','MCA':'MCA','MD/MS':'MD/MS','ME/M.Tech':'ME/M.Tech','ML/LLM':'ML/LLM','MS':'MS','Other Bachelor Degree':'Other Bachelor Degree','Other Masters':'Other Masters','Phd/Doctorate':'Phd/Doctorate','12th Standard':'12th Standard','10th Standard':'10th Standard','Below 10th Standard':'Below 10th Standard','others':'others'}" name="education" id="education" />
                                                                     <s:fielderror><s:param>education</s:param></s:fielderror>
                                                                </td>
                                                              </tr>
                                                              <tr>
                                                                <td>Profession*:</td>
                                                                <td>
                                                                     <s:select label="Profession*" cssClass="form-control" list="#{'':'Select the profession','Accountant':'Accountant','Acting Professional':'Acting Professional','Advertising Professional':'Advertising Professional','Advocate':'Advocate','Air Hostess':'Air Hostess','Airlines/Aviation Professional':'Airlines/Aviation Professional','Animator':'Animator','Architect':'Architect','Artisan':'Artisan','Arts Craftsman':'Arts Craftsman','Banker':'Banker','Beautician':'Beautician','Business Person':'Business Person','Call Centre/ ITES':'Call Centre/ ITES','Chartered Accountant':'Chartered Accountant','Chef':'Chef','Chemist':'Chemist','Civil Engineer':'Civil Engineer','Civil Services - Armed Forces':'Civil Services - Armed Forces','Civil Services - Accounts':'Civil Services - Accounts','Civil Services - IAS':'Civil Services - IAS','Civil Services - IES':'Civil Services - IES','Civil Services - IFS':'Civil Services - IFS','Civil Services - IPS':'Civil Services - IPS','Civil Services - IRS':'Civil Services - IRS','Civil Services - Information Service':'Civil Services - Information Service','Civil Services - Ordanance Factories':'Civil Services - Ordanance Factories','Civil Services - Postal Service':'Civil Services - Postal Service','Civil Services - Railways':'Civil Services - Railways','Civil Services - Trade Service':'Civil Services - Trade Service','Civil Services / IAS Allied Services':'Civil Services / IAS Allied Services','Clerical Official':'Clerical Official','Clerical Staff':'Clerical Staff','Commercial Pilot':'Commercial Pilot','Company Secretary':'Company Secretary','Computer Professional':'Computer Professional','Consultant':'Consultant','Contractor':'Contractor','Corporate Communication':'Corporate Communication','Corporate Planning':'Corporate Planning','Cost Accountant':'Cost Accountant','Creative Person':'Creative Person','Customer Service/Operations/CRM':'Customer Service/Operations/CRM','Defence Employee':'Defence Employee','Dentist':'Dentist','Designer':'Designer','Disc Jockey(DJ)':'Disc Jockey(DJ)','Doctor':'Doctor','Economist':'Economist','Educationist':'Educationist','Engineer':'Engineer','Event Manager':'Event Manager','Executive':'Executive','Export/Import/Foreign Trade':'Export/Import/Foreign Trade','Factory worker':'Factory worker','Farmer':'Farmer','Fashion Designer':'Fashion Designer','Freelancer':'Freelancer','Front Office/Secretarial Staff':'Front Office/Secretarial Staff','Government - Banking/Insurance':'Government - Banking/Insurance','Government - PSU':'Government - PSU','Government Employee':'Government Employee','HR Professional':'HR Professional','Hardware Professional':'Hardware Professional','Health Care Professional':'Health Care Professional','Home Maker':'Home Maker','Hotel Professional':'Hotel Professional','Industrialist':'Industrialist','Interior Designer':'Interior Designer','Investments':'Investments','Jeweller':'Jeweller','Jewelry designer':'Jewelry designer','Journalist':'Journalist','Law Enforcement':'Law Enforcement','Lawyer':'Lawyer','Lecturer':'Lecturer','Legal Professional':'Legal Professional','Management Profession':'Management Profession','Marketing Professional':'Marketing Professional','Media Professional':'Media Professional','Medical Professional':'Medical Professional','Medical Transcriptionist':'Medical Transcriptionist','Merchant Naval Officer':'Merchant Naval Officer','Modelling':'Modelling','Not Working':'Not Working','Nurse':'Nurse','Occupational Therapist':'Occupational Therapist','Officer':'Officer','Optician':'Optician','Paramedical Professional':'Paramedical Professional','Pharmacist':'Pharmacist','Physicist':'Physicist','Physiotherapist':'Physiotherapist','Pilot':'Pilot','Police/Security Forces':'Police/Security Forces','Politician':'Politician','Private Banking/Insurance':'Private Banking/Insurance','Production Professional':'Production Professional','Professor':'Professor','Psychologist':'Psychologist','Public Relations Professional':'Public Relations Professional','R and D Engineering':'R and D Engineering','Radio Jockey(RJ)':'Radio Jockey(RJ)','Real Estate Professional':'Real Estate Professional','Receptionist':'Receptionist','Research Scholar':'Research Scholar','Retailer':'Retailer','Retired Person':'Retired Person','Sales Professional':'Sales Professional','Scientist':'Scientist','Security Professional':'Security Professional','Self Employed':'Self Employed','Shipping':'Shipping','Social Worker':'Social Worker','Software Professional/Consultant':'Software Professional/Consultant','Sportsman':'Sportsman','Student':'Student','Supervisor':'Supervisor','TV/ Films Professional':'TV/ Films Professional','Teacher':'Teacher','Technician':'Technician','Training Professional':'Training Professional','Transportation Professional':'Transportation Professional','Tutor':'Tutor','Veterinary Doctor':'Veterinary Doctor','Video Jockey(VJ)':'Video Jockey(VJ)','Volunteer':'Volunteer','Web Designer':'Web Designer','Well Placed':'Well Placed','Writer':'Writer','Zoologist':'Zoologist','Others':'Others'}" name="profession" id="profession" />
                                                                     <s:fielderror><s:param>profession</s:param></s:fielderror>
                                                                </td>
                                                              </tr>
                                      	                          <tr>
                                                                <td>Native Country*:</td>
                                                                <td>
                                                                     <s:select label=" Native Country*" cssClass="form-control"  list="#{'':'Select the Country','India':'India','United States of America':'United States of America','Malaysia':'Malaysia','Singapore':'Singapore','Canada':'Canada','United Kingdom':'United Kingdom','Afghanistan':'Afghanistan','Albania':'Albania','Algeria':'Algeria','American Samoa':'American Samoa','Andorra':'Andorra','Angola':'Angola','Anguilla':'Anguilla','Antarctica':'Antarctica','Antigua and Barbuda':'Antigua and Barbuda','Argentinan':'Argentinan','Armenia':'Armenia','Aruba':'Aruba','Australia':'Australia','Austria':'Austria','Azerbaijan':'Azerbaijan','Bahamas':'Bahamas','Bahrain':'Bahrain','Bangladesh':'Bangladesh','Barbados':'Barbados','Belarus':'Belarus','Belgium':'Belgium','Belize':'Belize','Benin':'Benin','Bermuda':'Bermuda','Bhutan':'Bhutan','Bolivia':'Bolivia','Bosnia and Herzegovina':'Bosnia and Herzegovina','Botswana':'Botswana','Bouvet Island':'Bouvet Island','Brazil':'Brazil','Brunei':'Brunei','Bulgaria':'Bulgaria','Burkina Faso':'Burkina Faso','Burundi':'Burundi','Cambodia':'Cambodia','Cameroon':'Cameroon','Cape Verde':'Cape Verde','Cayman Islands':'Cayman Islands','Central African Republic':'Central African Republic','Chad':'Chad','Chile':'Chile','China':'China','Christmas Island':'Christmas Island','Cocos Islands':'Cocos Islands','Colombia':'Colombia','Costa Rica':'Costa Rica','Croatia':'Croatia','Cuba':'Cuba','Cyprus':'Cyprus','Czech Republic':'Czech Republic','Denmark':'Denmark','Dominican Republic':'Dominican Republic','Ecuador':'Ecuador','Egypt':'Egypt','El Salvador':'El Salvador','Ethiopia':'Ethiopia','Fiji':'Fiji','Finland':'Finland','France':'France','Gambia':'Gambia','Georgia':'Georgia','Germany':'Germany','Ghana':'Ghana','Greece':'Greece','Guatemala':'Guatemala','Guyana':'Guyana','Haiti':'Haiti','Honduras':'Honduras','Hong Kong':'Hong Kong','Hungary':'Hungary','Iceland':'Iceland','Indonesia':'Indonesia','Iran':'Iran','Iraq':'Iraq','Ireland':'Ireland','Israel':'Israel','Italy':'Italy','Ivory Coast':'Ivory Coast','Jamaica':'Jamaica','Japan':'Japan','Jordan':'Jordan','Kazakhstan':'Kazakhstan','Kenya':'Kenya','Kiribati':'Kiribati','North Korea':'North Korea','South Korea':'South Korea','Kuwait':'Kuwait','Kyrgyzstan':'Kyrgyzstan','Laos':'Laos','Latvia':'Latvia','Lebanon':'Lebanon','Liberia':'Liberia','Libya':'Libya','Lithuania':'Lithuania','Luxembourg':'Luxembourg','Maldives':'Maldives','Mali':'Mali','Mauritius':'Mauritius','Mexico':'Mexico','Monaco':'Monaco','Mongolia':'Mongolia','Morocco':'Morocco','Myanmar':'Myanmar','Namibia':'Namibia','Nepal':'Nepal','Netherlands':'Netherlands','New Zealand':'New Zealand','Nicaragua':'Nicaragua','Nigeria':'Nigeria','Norfolk Island':'Norfolk Island','Norway':'Norway','Oman':'Oman','Pakistan':'Pakistan','Panama':'Panama','Papua New Guinea':'Papua New Guinea','Paraguay':'Paraguay','Peru':'Peru','Philippines':'Philippines','Poland':'Poland','Portugal':'Portugal','Puerto Rico':'Puerto Rico','Qatar':'Qatar','Romania':'Romania','Russia':'Russia','Rwanda':'Rwanda','Saudi Arabia':'Saudi Arabia','Senegal':'Senegal','Somalia':'Somalia','South Africa':'South Africa','Spain':'Spain','Sri Lanka':'Sri Lanka','Sudan':'Sudan','Sweden':'Sweden','Switzerland':'Switzerland','Syria':'Syria','Taiwan':'Taiwan','Tajikistan':'Tajikistan','Tanzania':'Tanzania','Thailand':'Thailand','Trinidad and Tobago':'Trinidad and Tobago','Tunisia':'Tunisia','Turkey':'Turkey','Uganda':'Uganda','Ukraine':'Ukraine','United Arab Emirates':'United Arab Emirates','Uruguay':'Uruguay','Uzbekistan':'Uzbekistan','Vanuatu':'Vanuatu','Vatican City':'Vatican City','Venezuela':'Venezuela','Vietnam':'Vietnam','Yemen':'Yemen','Zambia':'Zambia','Zimbabwe':'Zimbabwe'}" name="country" id="country" />
                                                                     <s:fielderror><s:param>country</s:param></s:fielderror>
                                                                </td>
                                                              </tr>
                                                              <tr>
                                                                <td colspan="2"><center>
                                                                     <s:checkbox name="terms"  id="terms" label="Agreed to the Terms and conditions" /><a href="UI/privacy.jsp">Terms and Conditions</a></center>
                                                                </td>                                                              
                                                              </tr>
                                                              
                                                                <td colspan="2"><center>
                                                                <input type="button" value="Register" class="btn btn-success" onclick="validation()"  id ="hidebutton"></center> 
                                                                </td>
                                                                
                                                             
                                                            </table>
                                      			</s:form>
                                      
                                      </div> 
                                  </div>
             </div>  <!-- Row2 Ends-->
             
             
             


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
$('#email').tooltip('hide');
$('#email1').tooltip('hide');
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




$(function() 
		{
    var moveLeft = 10;
  
    var moveDown = 20;
    
    $('a#trigger').hover(function(e) 
    {
      $('div#pop-up').show();
    
    }, function() {
      $('div#pop-up').hide();
    });
    
    $('a#trigger').mousemove(function(e) {
      $("div#pop-up").css('top', e.pageY + moveDown).css('left', e.pageX +  moveLeft);
    });
    
  });
 
 
 
 
 
 

function setdateofbirth()
{	
	var birthday=document.getElementById('dob_day').value;
	alert(birthday);
	var birthmonth=document.getElementById('dob_month').value;
	alert(birthmonth);
	var birthyear=document.getElementById('dob_year').value;
	alert(birthyear);
	document.getElementById('dateofbirth').value=birthday+'/'+birthmonth+'/'+birthyear;
	
}

function setit(gender)
{
	
	   //alert('hi'+gender.value);
		//var value= document.getElementById('gender').value = gender.value;
		document.getElementById('tempgender').value= gender.value;
		var gen=document.getElementById('tempgender').value;
		//alert('hi++++++++++++++'+gen);
}
  



function checkemailuniqueness(email)
{

	//alert("-------------->>"+email);
		
	$.post("UniqueEmailAction.action", {'email': email},function (data){
	
		var responsestring = data;
		
		if(responsestring == 'duplicate')
		{
			
			document.getElementById('duplicateemail').style.display='block';
            return false;
		}
		else if(responsestring == 'unique')
		{
			 
			 var buttonVisible = document.getElementById('hidebutton').style.visibility;
		     document.forms["ProfileAction"].submit();
		     document.getElementById('hidebutton').style.visibility = "hidden";
		     return true;
		}
		
       

    });
	
}

function validation()
{
	
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
	
	if(document.getElementById('terms').checked == false)
	{
		alert("Please accept Terms and condtion");
		return false;

	}
	
	

    var birthday=document.getElementById('dob_day').value;
    var birthmonth=document.getElementById('dob_month').value;
    var birthyear=document.getElementById('dob_year').value;	
    document.getElementById('dateofbirth').value=birthmonth+'/'+birthday+'/'+birthyear;

    var dob = document.getElementById('dateofbirth').value;
    var currentdate = new Date();
    var today = new Date();


	var curr_date = today.getDate();
	var curr_month = today.getMonth() + 1;
	var curr_year = today.getFullYear();
	var age =  curr_year - birthyear;
	
	
//	alert(age);
	
	var gender=document.getElementById('tempgender').value;
//	alert('hi++++++++++++++'+gender);
			
	
	if(gender =='male' && age<=21)
	{
		alert("Your age should  be grater than 21 to register");
		return false;
	}
		
	

	var email=document.getElementById('email').value;
	
	//alert('---------------->>>'+email);
	
	
	if(email =='')
	{ 
		 alert("Enter The email id");
		 return false;
	}
	
 checkemailuniqueness(email); 

	
}



//forgot password submit  from

function  forgotpasswordsubmit()
{
	document.forms["LoadForgotPasswordAction"].submit();
}

// To check the active and inactive user

function tocheckUserActiveOrInactiveUser()
{
	var  username=document.getElementById("username").value;
	

	
	  
	  $.post("CheckTheLoginUserIsActiveOrInactive.action", {'username': username},function (data)
	  {
		 // alert(data);
		  if(data=="ERROR")
		  {
			  alert("The  User is inactive");
			  return false;
		  }
		  else
			  {
			  document.forms["LoginAction"].submit();
			  }
		  
		 
		  
	  });
	  
	  

}




</script>

</body>
</html>
