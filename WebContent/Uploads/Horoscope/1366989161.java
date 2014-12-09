package org.mindlinks.BS;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.log4j.Logger;
import org.mindlinks.Actionclasses.ProfileupdateAction;
import org.mindlinks.BO.ProfileBO;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Utility.Email;

public class ProfileBS
{
	private static final Logger logger = Logger.getLogger(ProfileBS.class);

	public Boolean createProfile(Profile profile)
	{

		logger.info("ENTER::THE CREATE PROFILE BS");
		Properties prop = new Properties();

		System.out.println("INSIDE BS DOB IS" + profile.getDateofbirth() + "   Firstname is " + profile.getFirstname());
		/*
		 * Calendar cal1 = new GregorianCalendar(); Calendar cal2 = new
		 * GregorianCalendar(); int age = 0; int factor = 0; DateFormat df = new
		 * SimpleDateFormat("MM-dd-yyyy"); String date1 =
		 * df.format(profile.getDateofbirth()); Date date1 = new
		 * SimpleDateFormat("MM-dd-yyyy").parse(profile.getDateofbirth()); Date
		 * date2 = new SimpleDateFormat("MM-dd-yyyy").parse(currentDate);
		 * cal1.setTime(date1); cal2.setTime(date2);
		 * if(cal2.get(Calendar.DAY_OF_YEAR) < cal1.get(Calendar.DAY_OF_YEAR)) {
		 * factor = -1; } age = cal2.get(Calendar.YEAR) -
		 * cal1.get(Calendar.YEAR) + factor;
		 * System.out.println("Your age is: "+age);
		 */
		ProfileBO profilebo = new ProfileBO();
		Boolean registerstatus = profilebo.createProfile(profile);
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.googlemail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
        logger.info("ENTRY:: THE SENDING EMAIL SESSION IS STARTED");
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator()
		{
			protected PasswordAuthentication getPasswordAuthentication()
			{
				logger.info("RETURNS:: THE PASSWORD AUTHENTIFICATION IS RETURNED");
				return new PasswordAuthentication("info@mysangathi.com", "mysangathi123#");
			}
		});

		try
		{

			logger.info("ENTER::THE CREATE PROFILE BS TRY BLOCK TO SEND MAIL");
			prop.load(ProfileupdateAction.class.getClassLoader().getResourceAsStream("resources.properties"));
			String mysangathi = prop.getProperty("mysangathi");
			System.out.println("====mysangathi url=============" + mysangathi);
			System.out.println("Entering generateAuthCode()");
			// getting the current time in nanoseconds
			long decimalNumber = System.nanoTime();
			System.out.println("current time in nanoseconds: " + decimalNumber);

			// To convert time stamp to alphanumeric code.
			// We need to convert base10(decimal) to base36
			String strBaseDigits = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
			String strTempVal = "";
			int mod = 0;
			// String concat is costly, instead we could have use stringbuffer
			// or stringbuilder
			// but here it wont make much difference.
			while (decimalNumber != 0)
			{
				mod = (int) (decimalNumber % 36);
				strTempVal = strBaseDigits.substring(mod, mod + 1) + strTempVal;
				decimalNumber = decimalNumber / 36;
			}
			System.out.println("alphanumeric code generated from TimeStamp : " + strTempVal);
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("info@mysangathi.com"));
			System.out.println("After from address");
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(profile.getEmail()));
			message.setSubject("MySangathi activation url ");
			System.out.println("After subject");
			message.setContent("Dear "+ profile.getFirstname()+ ",<br/>   Thank you for registering with MySangathi<br>   Please click on below link to activate your profile on MySangathi. <br><br/>   <a href=http://ec2-50-112-9-187.us-west-2.compute.amazonaws.com:8080/mysangathi/UI/subscribe_changepassword.jsp?rannum="+ strTempVal+ "&username="+ profile.getEmail()
					+ ">Click here to activate your Account.</a><br/><br/>The account details is mentioned below: <br/>"
					+ "   Your username is :"
					+ profile.getEmail()
					+ " <br> Your temporary password is  : "
					+ strTempVal
					+ "</br> <br>Your ReferenceID:"
					+ profile.getReferenceid()
					+ " <b>Note:</b>Please quote your  ReferenceID for future correspondance.</br><p> <b>Note:</b> If you not a paid member, please contact admin:(91) 9845199675,9663821291.</p><br/> <p>Regards,</p>"
					+ "</br>  <p>MySangathi Team.</p> " + "", "text/html");
	        System.out.println("After Activation URL");
			String url = mysangathi + "/UI/subscribe_changepassword.jsp?rannum=" + strTempVal + "&username=" + profile.getEmail();
			System.out.println("the urel" + url);
			Transport.send(message);
			
			logger.info(" MESSAGE :: EMAIL SENT");
		
			logger.info("ENTER::THE CREATE PROFILE BS TRY BLOCK TO SUBSCRIBE THE MAIL");
			boolean subscribedflag = profilebo.subscribe(profile.getEmail(), url, strTempVal);
			System.out.println("subscribedfalg inside BO AFTER subscrption" + subscribedflag);
		}
		catch (MessagingException e)
		{
			logger.info("ENTER :: THE CREATE PROFILE CATCH BLOCK MESSAGING EXECPTION");
			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			
			//This will iterate through all the set of error messages and build the string
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}

			//Send the email to strace the issue
			throw new RuntimeException(e);

		}
		catch (IOException e)
		{
			logger.info("");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return registerstatus;

	}

	public Profile updateProfile(Profile profile)
	{
		logger.info("ENTER::THE UPDATE PROFILE BS");
		Profile profile1 = null;
		System.out.println("middlename is " + profile.getMiddlename());
		System.out.println("lastname is " + profile.getLastname());
		ProfileBO profilebo = new ProfileBO();
		profile1 = profilebo.updateProfile(profile);
		logger.info("EXITE::THE UPDATE PROFILE BS");

		return profile1;
	}

	public Profile getProfileById(int profileid)
	{
		logger.info("ENTER::THE GET PROFILE BY ID PROFILE BS");
		Profile profile = new Profile();
		ProfileBO profilebo = new ProfileBO();
		profile = profilebo.getProfileById(profileid);
		logger.info("EXITE::THE GET PROFILE BY ID PROFILE BS");
		return profile;

	}

	public ArrayList<Profile> searchProfiles(Profile profile)
	{
		logger.info("ENTER::THE SEARCH PROFILES BS");
		ArrayList<Profile> profiles = new ArrayList<Profile>();
		ProfileBO profilebo = new ProfileBO();
		profiles = profilebo.searchProfiles(profile);
		logger.info("EXITE::THE SEARCH PROFILES BS");
		return profiles;
	}

	public ArrayList<Profile> searchByNameProfiles(Profile profile)
	{
		logger.info("ENTER::THE SEARCH BY NAME PROFILES BS");
		ArrayList<Profile> profiles = new ArrayList<Profile>();
		ProfileBO profilebo = new ProfileBO();
		profiles = profilebo.searchByNameProfiles(profile);
		logger.info("::THE SEARCH BY NAME PROFILES BS");
		return profiles;

	}

	public Profile setpaymentdata(Profile profile)
	{
		Boolean transstatus;
		Profile profile1 = null;
		ProfileBO profilebo = new ProfileBO();
		profile1 = profilebo.setpaymentdata(profile);

		return profile1;
	}

	public Profile uploadProfile(Profile profile)
	{
		
		Profile profile1 = null;
		Properties prop = new Properties();

		System.out.println("**************INSIDE BS DOB IS" + profile.getDateofbirth() + "   Firstname is " + profile.getFirstname());
		/*
		 * Calendar cal1 = new GregorianCalendar(); Calendar cal2 = new
		 * GregorianCalendar(); int age = 0; int factor = 0; DateFormat df = new
		 * SimpleDateFormat("MM-dd-yyyy"); String date1 =
		 * df.format(profile.getDateofbirth()); Date date1 = new
		 * SimpleDateFormat("MM-dd-yyyy").parse(profile.getDateofbirth()); Date
		 * date2 = new SimpleDateFormat("MM-dd-yyyy").parse(currentDate);
		 * cal1.setTime(date1); cal2.setTime(date2);
		 * if(cal2.get(Calendar.DAY_OF_YEAR) < cal1.get(Calendar.DAY_OF_YEAR)) {
		 * factor = -1; } age = cal2.get(Calendar.YEAR) -
		 * cal1.get(Calendar.YEAR) + factor;
		 * System.out.println("Your age is: "+age);
		 */
		ProfileBO profilebo = new ProfileBO();
		profile1 = profilebo.uploadProfile(profile);

		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.googlemail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator()
		{
			protected PasswordAuthentication getPasswordAuthentication()
			{
				return new PasswordAuthentication("info@mysangathi.com", "mysangathi123#");
			}
		});
		

		Session session1 = Session.getDefaultInstance(props, new javax.mail.Authenticator()
		{
			protected PasswordAuthentication getPasswordAuthentication()
			{
				return new PasswordAuthentication("info@mysangathi.com", "mysangathi123#");
			}
		});

		try
		{
			prop.load(ProfileupdateAction.class.getClassLoader().getResourceAsStream("resources.properties"));
			String mysangathi = prop.getProperty("mysangathi");
			System.out.println("====mysangathi url=============" + mysangathi);
			System.out.println("Entering generateAuthCode()");
			// getting the current time in nanoseconds
			long decimalNumber = System.nanoTime();
			System.out.println("current time in nanoseconds: " + decimalNumber);

			// To convert time stamp to alphanumeric code.
			// We need to convert base10(decimal) to base36
			String strBaseDigits = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
			String strTempVal = "";
			int mod = 0;
			// String concat is costly, instead we could have use stringbuffer
			// or stringbuilder
			// but here it wont make much difference.
			while (decimalNumber != 0)
			{
				mod = (int) (decimalNumber % 36);
				strTempVal = strBaseDigits.substring(mod, mod + 1) + strTempVal;
				decimalNumber = decimalNumber / 36;
			}

			System.out.println("alphanumeric code generated from TimeStamp : " + strTempVal);
			System.out.println("email from UI IS    " + profile.getEmail());
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("info@mysangathi.com"));
			System.out.println("After from address");
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(profile.getEmail()));
			message.setSubject("MySangathi activation url ");
			System.out.println("After subject");
			System.out.println("After subject");
			message.setContent("Dear "+ profile.getFirstname()+ ",<br/>   Thank you for registering with MySangathi<br>   Please click on below link to activate your profile on MySangathi. <br><br/>   <a href=http://ec2-50-112-9-187.us-west-2.compute.amazonaws.com:8080/mysangathi/UI/subscribe_changepassword.jsp?rannum="+ strTempVal+ "&username="+ profile.getEmail()
					+ ">Click here to activate your Account.</a><br/><br/>The account details is mentioned below: <br/>"
					+ "   Your username is :"
					+ profile.getEmail()
					+ " <br> Your temporary password is  : "
					+ strTempVal
					+ "</br> <br>Your ReferenceID:"
					+ profile.getReferenceid()
					+ " <b>Note:</b>Please quote your  ReferenceID for future correspondance.</br><p> <b>Note:</b> If you not a paid member, please contact admin:(91) 9845199675,9663821291.</p><br/> <p>Regards,</p>"
					+ "</br>  <p>MySangathi Team.</p> " + "", "text/html");
	        System.out.println("After Activation URL");
			String url = mysangathi + "/UI/subscribe_changepassword.jsp?rannum=" + strTempVal + "&username=" + profile.getEmail();
			Transport.send(message);
			System.out.println("After MESSAGE SENT");

			System.out.println("Message Sent");
			InternetAddress[] toemails = new InternetAddress[2]; 
			String emailids[] = {"info@mysangathi.com","bskmanjunath@yahoo.com"};

			System.out.println("Second mail  ----------------------Starts--------------------------------------------------");
			 
				MimeMessage message1 = new MimeMessage(session1);
				message1.setFrom(new InternetAddress("info@mysangathi.com"));
				System.out.println("Second mail After from address");
				for (int i = 0; i < emailids.length; i++)
	            {
					toemails[i] = new InternetAddress(emailids[i]);
	            }
				message1.setRecipients(Message.RecipientType.TO, toemails);

				message1.setSubject("MySangathi New Profile Updated ");
				System.out.println("Second mail  After subject");
				message1.setContent("Dear Admin,<br/> <P> This is  to notify that name of the profile  "+profile.getFirstname()+ " with the ReferenceID :  "+profile.getReferenceid()+"  is Regestered in MySangathi  </p>" ,"text/html");


				Transport.send(message1);
				System.out.println("Second mail  After MESSAGE SENT");

				System.out.println("Second mail  Message Sent");
				System.out.println("Second mail --------------------------------------------------------------ENDS-----------");

				boolean subscribedflag = profilebo.subscribe(profile.getEmail(), url, strTempVal);
				System.out.println("subscribedfalg inside BO AFTER subscrption" + subscribedflag);

		}
		catch (MessagingException e)
		{

			//Send exception email notification - Start
			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			
			//This will iterate through all the set of error messages and build the string
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}

			Email oemail = new Email();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			oemail.session=session;
			String[] ToAddress = new String[1];
			ToAddress[0]="mysangathiexception@gmail.com";
			
			try{
				sendEmail(oemail);
			}catch(Exception ex){
				
			}; //Forget this exception
			//Send exception email notification - End
			
			throw new RuntimeException(e);

		}
		catch (IOException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return profile1;
	}

	public String getPhotoPathFromProfile(int profileId)
	{
		String photopath = null;
		Profile profile = new Profile();
		ProfileBO profilebo = new ProfileBO();
		photopath = profilebo.getPhotoPathFromProfile(profileId);

		return photopath;

	}
	public void sendEmail(Email email) throws Exception
	{
		logger.info("Inside sendEmail()");
		
		try{
				Message message = new MimeMessage(email.session);
				message.setFrom(new InternetAddress(email.FromAddress));
				message.setSubject(email.Subject);
		
				message.setContent(email.Content, "text/html");
		
				if(email.ToAddress != null)
				{
					InternetAddress[] toemails = new InternetAddress[email.ToAddress.length]; 
			
					 
						for (int i = 0; i < email.ToAddress.length; i++)
			            {
							toemails[i] = new InternetAddress(email.ToAddress[i]);
			            }
						
						message.setRecipients(Message.RecipientType.TO, toemails);
						
			
						Transport.send(message);
				}
		}
		catch(Exception ex){
			throw ex;
		}
		
		 
		
		
		
	}
	
}
