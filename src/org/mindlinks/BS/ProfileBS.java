package org.mindlinks.BS;

import java.io.IOException;
import java.nio.channels.SeekableByteChannel;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;

import org.apache.commons.httpclient.HttpException;
import org.apache.log4j.Logger;
import org.mindlinks.Actionclasses.ProfileupdateAction;
import org.mindlinks.BO.ProfileBO;
import org.mindlinks.Bean.Profile;
import org.mindlinks.HibernateDAO.EmailHandlerThread;
import org.mindlinks.HibernateDAO.ProfileDAO;

public class ProfileBS
{
	private static final Logger logger = Logger.getLogger(ProfileBS.class);

	public Boolean createProfile(Profile profile)
	{

		logger.info("ENTER::THE CREATE PROFILE BS"+profile);
		Properties prop = new Properties();

		//System.out.println("INSIDE BS DOB IS" + profile.getDateofbirth() + "   Firstname is " + profile.getFirstname());
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
		
		/*
		props.put("mail.smtp.host", "smtp.googlemail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator()
		{
			protected PasswordAuthentication getPasswordAuthentication()
			{
				logger.info("ENTER INTO THE SESSION IN THE CREATE PROFILE METHOED IN THE PROFILE  BS ");
				return new PasswordAuthentication("admin@mysangathi.com", "mysangathi123#");
			}
		});
		
		Session session1 = Session.getDefaultInstance(props, new javax.mail.Authenticator()
		{
			
			protected PasswordAuthentication getPasswordAuthentication()
			{
				return new PasswordAuthentication("admin@mysangathi.com", "mysangathi123#");
			}
		});

		try
		{

			logger.info("ENTER::THE CREATE PROFILE BS TRY BLOCK TO SEND MAIL"+profile.getEmail());
			prop.load(ProfileupdateAction.class.getClassLoader().getResourceAsStream("resources.properties"));
			String mysangathi = prop.getProperty("mysangathi");
			// getting the current time in nanoseconds
			long decimalNumber = System.nanoTime();

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
			//System.out.println("alphanumeric code generated from TimeStamp : " + strTempVal);
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("admin@mysangathi.com"));
			//System.out.println("After from address");
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(profile.getEmail()));
			message.setSubject("Mysangathi activation Url");
			//System.out.println("After subject");
			message.setContent("Dear "+ profile.getFirstname()+ ",<br/>   Thank you for registering with MySangathi<br>   Please click on below link to activate your profile on MySangathi. <br><br/>   <a href="+mysangathi+"/UI/subscribe_changepassword.jsp?rannum="+ strTempVal+ "&username="+ profile.getEmail()
					+ ">Click here to activate your Account.</a><br/><br/>The account details is mentioned below: <br/>"
					+ "   Your username is :"
					+ profile.getEmail()
					+ " <br> Your temporary password is  : "
					+ strTempVal
					+ "</br> <br>Your ReferenceID:"
					+ profile.getReferenceid()
					+ " <b>Note:</b>Please quote your  ReferenceID for future correspondance.</br><p> <b>Note:</b> If you not a paid member, please contact admin:(91) 9845199675,9663821291.</p><br/> <p>Regards,</p>"
					+ "</br>  <p>MySangathi Team.</p> " + "", "text/html");
	       // System.out.println("After Activation URL");
			String url = mysangathi + "/UI/subscribe_changepassword.jsp?rannum=" + strTempVal + "&username=" + profile.getEmail();
			//System.out.println("the urel" + url);
			Transport.send(message);
			//System.out.println("After MESSAGE SENT");

			//System.out.println("Message Sent");

			//System.out.println("Second mail  ----------------------Starts--------------------------------------------------");
			//System.out.println("Message Sent");
			InternetAddress[] toemails = new InternetAddress[2]; 
			String emailids[] = {"admin@mysangathi.com"};

				MimeMessage message1 = new MimeMessage(session1);
				message1.setFrom(new InternetAddress("admin@mysangathi.com"));
				//System.out.println("Second mail After from address");
				for (int i = 0; i < emailids.length; i++)
	            {
					toemails[i] = new InternetAddress(emailids[i]);
	            }
				message1.setRecipients(Message.RecipientType.TO, toemails);

				message1.setSubject("MySangathi New Profile Updated ");
				//System.out.println("Second mail  After subject");
				message1.setContent("Dear Admin,<br/> <P> The registration notification that name of the profile   <b>"+profile.getName()+ "</b> with the ReferenceID :  <b>"+profile.getReferenceid()+"</b> is registered in MySangathi.</p>" +"<p>Regards,</p>"
				+profile.getName()+ "", "text/html");


				Transport.send(message1);
				//System.out.println("Second mail  After MESSAGE SENT");

				//System.out.println("Second mail  Message Sent");
				//System.out.println("Second mail --------------------------------------------------------------ENDS-----------");
			
			logger.info("EXIT::THE CREATE PROFILE BS TRY BLOCK TO SUBSCRIBE THE MAIL"+message1);
			boolean subscribedflag = profilebo.subscribe(profile.getEmail(), url, strTempVal);*/
			//System.out.println("subscribedfalg inside BO AFTER subscrption" + subscribedflag);
		
		
		props.put("mail.smtp.host", "smtp.googlemail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator()
		{
			protected PasswordAuthentication getPasswordAuthentication()
			{
				return new PasswordAuthentication("admin@mysangathi.com", "mysangathi123#");
			}
		});
		

		Session session1 = Session.getDefaultInstance(props, new javax.mail.Authenticator()
		{
			protected PasswordAuthentication getPasswordAuthentication()
			{
				return new PasswordAuthentication("admin@mysangathi.com", "mysangathi123#");
			}
		});

		try
		{
			String FromAddress="";
			String ToAddress="";
			String Content="";
			String Subject="";
			logger.info("ENTER::THE CREATE PROFILE BS TRY BLACK"+profile);
			prop.load(ProfileupdateAction.class.getClassLoader().getResourceAsStream("resources.properties"));
			String mysangathi = prop.getProperty("mysangathi");
			long decimalNumber = System.nanoTime();

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

	    	Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("admin@mysangathi.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(profile.getEmail()));
			message.setSubject("Mysangathi activation Url");
			message.setContent("Dear "+ profile.getFirstname()+ ",<br/>   Thank you for registering with MySangathi<br>   Please click on below link to activate your profile on MySangathi. <br><br/>   <a href="+mysangathi+"/UI/subscribe_changepassword.jsp?rannum="+ strTempVal+ "&username="+ profile.getEmail()
					+ ">Click here to activate your Account.</a><br/><br/>The account details is mentioned below: <br/>"
					+ "   Your username is :"
					+ profile.getEmail()
					+ " <br> Your temporary password is  : "
					+ strTempVal
					+ "</br> <br>Your ReferenceID:"
					+ profile.getReferenceid()
					+ " <b>Note:</b>Please quote your  ReferenceID for future correspondance.</br><p> <b>Note:</b> If you not a paid member, please contact admin:(91) 9845199675,9663821291.</p><br/> <p>Regards,</p>"
					+ "</br>  <p>MySangathi Team.</p> " + "", "text/html");
			String url = mysangathi + "/UI/subscribe_changepassword.jsp?rannum=" + strTempVal + "&username=" + profile.getEmail();
			
			
			Transport.send(message);
			
			
			//String url = mysangathi + "/UI/subscribe_changepassword.jsp?rannum=" + strTempVal + "&username=" + profile.getEmail();
			
			//added the thread class for save the email history table on 12-02-13 of 
			FromAddress="admin@mysangathi.com";
			ToAddress=profile.getEmail();
			Content="Dear "+ profile.getFirstname()+ ",<br/>   Thank you for registering with MySangathi<br>   Please click on below link to activate your profile on MySangathi. <br><br/>   <a href="+mysangathi+"/UI/subscribe_changepassword.jsp?rannum="+ strTempVal+ "&username="+ profile.getEmail()
				+ ">Click here to activate your Account.</a><br/><br/>The account details is mentioned below: <br/>"
				+ "   Your username is :"
				+ profile.getEmail()
				+ " <br> Your temporary password is  : "
				+ strTempVal
				+ "</br> <br>Your ReferenceID:"
				+ profile.getReferenceid()
				+ " <b>Note:</b>Please quote your  ReferenceID for future correspondance.</br><p> <b>Note:</b> If you not a paid member, please contact admin:(91) 9845199675,9663821291.</p><br/> <p>Regards,</p>"
				+ "</br>  <p>MySangathi Team.</p> "
				+ "";
			Subject="Mysangathi activation Url";
			//added the thread class for save the email history table on 12-02-13
			Thread emailhandler3 = new Thread(new EmailHandlerThread(FromAddress, ToAddress, Content, Subject,0 ));

			emailhandler3.start();
			
			
			logger.info("ENTER::THE CREATE PROFILE BS TRY BLACK AFTER MAIL SEND"+ profile.getEmail());
			logger.info("ENTER::THE CREATE PROFILE BS TRY BLACK SENDING MAIL TO ADMIN"+ profile.getEmail());
			InternetAddress[] toemails = new InternetAddress[1]; 
			String emailids[] = {"admin@mysangathi.com"};

				MimeMessage message1 = new MimeMessage(session1);
				message1.setFrom(new InternetAddress("admin@mysangathi.com"));
				for (int i = 0; i < emailids.length; i++)
	            {
					toemails[i] = new InternetAddress(emailids[i]);
	            }
				message1.setRecipients(Message.RecipientType.TO, toemails);

				message1.setSubject("MySangathi New Profile Updated ");
				message1.setContent("Dear Admin,<br/> <P> This is  to notify that name of the profile  "+profile.getFirstname()+ " with the ReferenceID :  "+profile.getReferenceid()+"  And email is: "+profile.getUsername()+" is Regestered in MySangathi  </p>" ,"text/html");


				Transport.send(message1);

				logger.info("ENTER::THE CREATE PROFILE BS TRY BLACK SENDING SUBSCRIBE LINK"+message1);
				boolean subscribedflag = profilebo.subscribe(profile.getEmail(), url, strTempVal);
		}
		catch (MessagingException e)
		{
			logger.error("ENTER::THE CREATE PROFILE BS TRY CATCH BLACK TO SEND MAIL"+e);
			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBS oemail = new EmailBS();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			//oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		}
		catch (IOException e)
		{
			// TODO Auto-generated catch block
			logger.error("ENTER::THE CREATE PROFILE BS TRY CATCH BLACK TO SEND MAIL"+e);
			e.printStackTrace();
		}

		return registerstatus;

	}

	public Profile updateProfile(Profile profile)
	{
		logger.info("ENTER::THE UPDATE PROFILE BS"+profile);
		Profile profile1 = null;
		ProfileBO profilebo = new ProfileBO();
		profile1 = profilebo.updateProfile(profile);
		logger.info("EXITE::THE UPDATE PROFILE BS"+profile);

		return profile1;
	}

	public Profile getProfileById(int profileid)
	{
		logger.info("ENTER::THE GET PROFILE BY ID PROFILE BS"+profileid);
		Profile profile = new Profile();
		ProfileBO profilebo = new ProfileBO();
		profile = profilebo.getProfileById(profileid);
		logger.info("EXITE::THE GET PROFILE BY ID PROFILE BS"+profileid);
		return profile;

	}

	public ArrayList<Profile> searchProfiles(Profile profile)
	{
		logger.info("ENTER::THE SEARCH PROFILES BS"+profile);
		ArrayList<Profile> profiles = new ArrayList<Profile>();
		ProfileBO profilebo = new ProfileBO();
		profiles = profilebo.searchProfiles(profile);
		logger.info("EXITE::THE SEARCH PROFILES BS"+profile);
		return profiles;
	}

	public ArrayList<Profile> searchByNameProfiles(Profile profile)
	{
		logger.info("ENTER::THE SEARCH BY NAME PROFILES BS"+profile);
		ArrayList<Profile> profiles = new ArrayList<Profile>();
		ProfileBO profilebo = new ProfileBO();
		profiles = profilebo.searchByNameProfiles(profile);
		logger.info("EXITE::THE SEARCH BY NAME PROFILES BS"+profile);
		return profiles;

	}

	public Profile setpaymentdata(Profile profile)
	{
		logger.info("ENTER::THE SET PAYMENT DATA PROFILES BS"+profile);
		Boolean transstatus;
		Profile profile1 = null;
		ProfileBO profilebo = new ProfileBO();
		profile1 = profilebo.setpaymentdata(profile);
		logger.info("EXITE::THE SET PAYMENT DATA PROFILES BS"+profile);
		return profile1;
	}

	public Profile uploadProfile(Profile profile)
	{
		
		Profile profile1 = null;
		Properties prop = new Properties();
		logger.info("ENTER::THE UPLOAD PROFILE BS"+profile);
		//System.out.println("**************INSIDE BS DOB IS" + profile.getDateofbirth() + "   Firstname is " + profile.getFirstname());
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
				return new PasswordAuthentication("admin@mysangathi.com", "mysangathi123#");
			}
		});
		

		Session session1 = Session.getDefaultInstance(props, new javax.mail.Authenticator()
		{
			protected PasswordAuthentication getPasswordAuthentication()
			{
				return new PasswordAuthentication("admin@mysangathi.com", "mysangathi123#");
			}
		});

		try
		{
			String FromAddress="";
			String ToAddress="";
			String Content="";
			String Subject="";
			
			
			logger.info("ENTER::THE UPLOAD PROFILE BS TRY BLACK"+profile);
			prop.load(ProfileupdateAction.class.getClassLoader().getResourceAsStream("resources.properties"));
			String mysangathi = prop.getProperty("mysangathi");
			long decimalNumber = System.nanoTime();

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

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("admin@mysangathi.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(profile.getEmail()));
			message.setSubject("Mysangathi activation Url");
			message.setContent("Dear "+ profile.getFirstname()+ ",<br/>   Thank you for registering with MySangathi<br>   Please click on below link to activate your profile on MySangathi. <br><br/>   <a href="+mysangathi+"/UI/subscribe_changepassword.jsp?rannum="+ strTempVal+ "&username="+ profile.getEmail()
					+ ">Click here to activate your Account.</a><br/><br/>The account details is mentioned below: <br/>"
					+ "   Your username is :"
					+ profile.getEmail()
					+ " <br> Your temporary password is  : "
					+ strTempVal
					+ "</br> <br>Your ReferenceID:"
					+ profile.getReferenceid()
					+ " <b>Note:</b>Please quote your  ReferenceID for future correspondance.</br><p> <b>Note:</b> If you not a paid member, please contact admin:(91) 9845199675,9663821291.</p><br/> <p>Regards,</p>"
					+ "</br>  <p>MySangathi Team.</p> " + "", "text/html");
			String url = mysangathi + "/UI/subscribe_changepassword.jsp?rannum=" + strTempVal + "&username=" + profile.getEmail();
			Transport.send(message);
		
			
			
			
			//String url = mysangathi + "/UI/subscribe_changepassword.jsp?rannum=" + strTempVal + "&username=" + profile.getEmail();
			
			//added the thread class for save the email history table on 12-02-13
			
			FromAddress="admin@mysangathi.com";
			ToAddress=profile.getEmail();
			Content="Dear "+ profile.getFirstname()+ ",<br/>   Thank you for registering with MySangathi<br>   Please click on below link to activate your profile on MySangathi. <br><br/>   <a href="+mysangathi+"/UI/subscribe_changepassword.jsp?rannum="+ strTempVal+ "&username="+ profile.getEmail()
				+ ">Click here to activate your Account.</a><br/><br/>The account details is mentioned below: <br/>"
				+ "   Your username is :"
				+ profile.getEmail()
				+ " <br> Your temporary password is  : "
				+ strTempVal
				+ "</br> <br>Your ReferenceID:"
				+ profile.getReferenceid()
				+ " <b>Note:</b>Please quote your  ReferenceID for future correspondance.</br><p> <b>Note:</b> If you not a paid member, please contact admin:(91) 9845199675,9663821291.</p><br/> <p>Regards,</p>"
				+ "</br>  <p>MySangathi Team.</p> "
				+ "";
			Subject="Mysangathi activation Url";
			
			//added the thread class for save the email history table on 12-02-13
			Thread emailhandler3 = new Thread(new EmailHandlerThread(FromAddress, ToAddress, Content, Subject,0 ));
			emailhandler3.start();
			
			
			logger.info("ENTER::THE UPLOAD PROFILE BS TRY BLACK AFTER MAIL SEND"+ profile.getEmail());
			logger.info("ENTER::THE UPLOAD PROFILE BS TRY BLACK SENDING MAIL TO ADMIN"+ profile.getEmail());
			InternetAddress[] toemails = new InternetAddress[2]; 
			
			    String emailids[] = {"admin@mysangathi.com"};

				MimeMessage message1 = new MimeMessage(session1);
				message1.setFrom(new InternetAddress("admin@mysangathi.com"));
				for (int i = 0; i < emailids.length; i++)
	            {
					toemails[i] = new InternetAddress(emailids[i]);
	            }
				message1.setRecipients(Message.RecipientType.TO, toemails);

				message1.setSubject("MySangathi New Profile Updated ");
				message1.setContent("Dear Admin,<br/> <P> This is  to notify that name of the profile  "+profile.getFirstname()+ " with the ReferenceID :  "+profile.getReferenceid()+"  is Regestered in MySangathi  </p>" ,"text/html");


				Transport.send(message1);

				logger.info("ENTER::THE UPLOAD PROFILE BS TRY BLACK SENDING SUBSCRIBE LINK"+message1);
				boolean subscribedflag = profilebo.subscribe(profile.getEmail(), url, strTempVal);

		}
		catch (MessagingException e)
		{
			logger.info("ENTER::THE UPLOAD PROFILE BS CATCH BLACK"+e);
			//throw new RuntimeException(e);
			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBS oemail = new EmailBS();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		}
		catch (IOException e)
		{
			// TODO Auto-generated catch block
			logger.info("ENTER::THE UPLOAD PROFILE BS CATCH BLACK"+e);
			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBS oemail = new EmailBS();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}

		return profile1;
	}

	public String getPhotoPathFromProfile(int profileId)
	{
		logger.info("ENTER:THE GET PHOTO PATH FROM PROFILE BS"+profileId);
		String photopath = null;
		Profile profile = new Profile();
		ProfileBO profilebo = new ProfileBO();
		photopath = profilebo.getPhotoPathFromProfile(profileId);
		logger.info("EXIT:THE GET PHOTO PATH FROM PROFILE BS"+profileId);
		return photopath;

	}
	
	public String getHoroscopeFromProfile(int profileId)
	{
		logger.info("ENTER:THE GET HOTOSCOPE FROM PROFILE BS"+profileId);
		String horoscopepath=null;
		ProfileBO profilebo = new ProfileBO();
		Profile profile = new Profile();
		horoscopepath=profilebo.getHoroscopeFromProfile(profileId);
		logger.info("EXIT:THE GET HOTOSCOPE FROM PROFILE BS"+profileId);
		return horoscopepath;
		
	}
	
	public String checkUserIsActiveOrInactive(String username)
	{
		logger.info("ENTER:THE CHECK USER IS ACTIVE OR INACTIVE FROM PROFILE BS"+username);
		String status=null;
		ProfileDAO   profiledao=new ProfileDAO();
		status=profiledao.checkTheUserIsActiveOrInactive(username);
		if(status.equals('1'))
		{
			//System.out.println("inside the if condition status equls 1"+status);
			status="ERROR";
		}else
		{
			//System.out.println("inside the if else condition status equls 0"+status);
			status="SUCCESS";
		}
		System.out.println("user status in bs is "+status);
		return status;
		
	}
	
	public  void  sendGreeatingsMail()
	{
		List  listofdateofbrith=null;
		
		/*java.util.Date currentdate = new java.util.Date();
		java.util.Calendar cal = java.util.Calendar.getInstance();
		java.util.Date utilDate = cal.getTime();
		
		System.out.println("THE TODAYS DATE IS util date is "+utilDate);*/
		
		/*DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Calendar cal1 = Calendar.getInstance();
		System.out.println(dateFormat.format(cal1.getTime()));
		
		System.out.println("================"+cal1.getTime().getDay());
		
		System.out.println("================"+cal1.getTime().getMonth());*/
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(cal.getTime());
		int month = cal.get(Calendar.MONTH) + 1;
		int day = cal.get(Calendar.DATE);
		int year = cal.get(Calendar.YEAR);
		
		System.out.println("cal month==========="+month);
		System.out.println("cal day==========="+day);
		
		ProfileDAO   profiledb=new ProfileDAO();
		listofdateofbrith=profiledb.sendGreeatingsMail();
		Iterator it = listofdateofbrith.iterator();
		
		while(it.hasNext())
		{
			
			
			Object o = (Object)it.next();
			Profile p = (Profile) o;
			java.util.Date  date=p.getDateofbirth();
			Calendar cal12 = Calendar.getInstance();
			cal.setTime(date);
			int month2 = cal.get(Calendar.MONTH) + 1;
		    int day2 = cal.get(Calendar.DATE);
			int year2 = cal.get(Calendar.YEAR);
			
			//System.out.println("==month2======"+month2);
			//System.out.println("===day2====="+day2);
			//System.out.println("===year2====="+year2);
			
			if(day2==day && month==month2)
			{
				System.out.println("hi equals");
				System.out.println("name is"+p.getEmail());
				logger.info("ENTER:SENDING MAIL TO THE IF DAY AND MONTH MATCHS INSIDE THE IF CONDITION"+p.getEmail());
				Properties  props=new Properties();
				props.put("mail.smtp.host", "smtp.googlemail.com");
				props.put("mail.smtp.socketFactory.port", "465");
				props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.port", "465");
				
				Session  session=Session.getDefaultInstance(props, new  Authenticator()
				{
					protected PasswordAuthentication getPasswordAuthentication()
					{
						return new PasswordAuthentication("admin@mysangathi.com", "mysangathi123#");
					}
				});
				
				
				try
				{
					logger.info("ENTER: : BEFOR MESSAGE SENT");
					Message  message=new MimeMessage(session);
					message.setFrom(new InternetAddress("admin@mysangathi.com"));
					message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(p.getEmail()));
					message.setSubject("Mysangathi birth day wish");
					message.setContent("Dear "+ p.getFirstname()+ ",<br/>" +
							" Thank you for registering with MySangathi<br>  " +
							" "
							+ "   Your username is :"
							+ p.getEmail()+ "</br> <br>Your ReferenceID:"
							+ p.getReferenceid()
							+ " <b>Note:</b>Please quote your  ReferenceID for future correspondance.</br><p> <b>Note:</b> If you not a paid member, please contact admin:(91) 9845199675,9663821291.</p><br/> <p>Regards,</p>"
							+ "</br>  <p>MySangathi Team.</p> " + "", "text/html");
					Transport.send(message);
					logger.info("ENTER: : AFTER MESSAGE SENT");
					
				}
				catch (AddressException e)
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				catch (MessagingException e)
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
			System.out.println("--------In Profile BS--------------");
		}
	
	}
	public String checkPaidStatus(String profileid)
	{
		System.out.println("---------------------------------------->"+profileid);

		int profileId = Integer.parseInt(profileid);
		System.out.println("---------------------------------------->"+profileId);
		
		
		String paidstatus=null;
		ProfileDAO   profiledb=new ProfileDAO();
		paidstatus=profiledb.checkPaidStatus(profileId);
		
		
		
		return paidstatus;
		
	}
	public void profileUpdateInSalesForce(Profile profile)
	{
		logger.info("ENTER::THE UPDATE PROFILE BS" + profile);
		Profile profile1 = null;
		ProfileBO profilebo = new ProfileBO();
		 profilebo.profileUpdateInSalesForce(profile);
		logger.info("EXITE::THE UPDATE PROFILE BS" + profile);

		
	}
	
	public void toConvertMysangathiUserToLeads(Profile profile)
	{
		ProfileBO profilebo = new ProfileBO();
		try
		{
			try
			{
				profilebo.toConvertMysangathiUserToLeads(profile);
			}
			catch (ParseException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		catch (HttpException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (IOException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (ServletException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public void toUploadProfileToSalesForce(Profile profile)
	{
		ProfileBO profilebo = new ProfileBO();
		try
		{
			try
			{
				profilebo.toUploadProfileToSalesForce(profile);
			}
			catch (ParseException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		catch (HttpException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (IOException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (ServletException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void main(String[] args)
	{
		ProfileBS bs=new ProfileBS();
		bs.sendGreeatingsMail();
	}
}
