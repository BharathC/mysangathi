package org.mindlinks.BS;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.log4j.Logger;
import org.mindlinks.Actionclasses.ProfileupdateAction;
import org.mindlinks.BO.UserBO;
import org.mindlinks.Bean.Subscription;
import org.mindlinks.Bean.User;
import org.mindlinks.Exceptions.AuthenticateUserException;
import org.mindlinks.HibernateDAO.EmailHandlerThread;



public class UserBS
{
	private static final Logger logger = Logger.getLogger(UserBS.class);

	public String setInitialPassword(String username, String password)
	{
		logger.info("ENTER::THE SET INITIAL PASSWORD BS"+password);
		UserBO userbo = new UserBO();
		String setpassword = userbo.setInitialPassword(username, password);
		logger.info("EXIT::THE SET INITIAL PASSWORD BS"+username);
		return setpassword;

	}

	public boolean changeUserPassword(User user) throws AuthenticateUserException
	{
		logger.info("ENTER::THE CHANGE USER  PASSWORD BS"+user);
		boolean flag = false;
		UserBO loginbo = new UserBO();
		flag = loginbo.changeUserPassword(user);
		System.out.println("flag in BS    " + flag);
		logger.info("EXIT::THECHANGE USER  PASSWORD  BS"+user);
		return flag;

	}

	public boolean Checkpassword(User user) throws AuthenticateUserException
	{
		logger.info(" ENTER :: THE CHECK USER PASSWORD IN USER BS"  + user);
		boolean flag;
		UserBO loginbo = new UserBO();
		flag = loginbo.changeUserPassword(user);
		System.out.println("flag in BS  checkpassword  " + flag);
		logger.info("EXIT::THE CHECK USER PASSWORD IN USER BS "   + user);

		return flag;

	}

	public boolean checkusername(User user) throws AuthenticateUserException
	{
		logger.info(" ENTER IN TO THE  CHECK USER NAME METHOED IN USERBS" + user);
		boolean flag = true;
		UserBO loginbo = new UserBO();
		flag = loginbo.checkusername(user);
		System.out.println("flag in BS  checkpassword  "  + flag);
		logger.info("EXIT::THE CHANGE USER  NAME IN USER  BS" + user);
		return flag;

	}

	public boolean forgetChangeUserPassword(User user) throws AuthenticateUserException
	{
		logger.info("ENTER::THE CHANGE USER  PASSWORD BS" + user);
		boolean flag = false;
		UserBO loginbo = new UserBO();
		flag = loginbo.forgetChangeUserPassword(user);
		System.out.println("flag in BS    " + flag);
		logger.info("EXIT::THECHANGE USER  PASSWORD  BS" + user);
		return flag;

	}

	public String forgotpassword(User user) throws AuthenticateUserException
	{
		logger.info("ENTER:: IN TO THE FORGOT PASSWORD IN USER  NAME BS" + user);
		String status = "";
		
	    logger.info("ENTER::THE CHANGE USER  NAME BS");
    	
    long decimalNumber =0;
	/*String strTempVal = "";
	String strBaseDigits = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	int mod = 0;
	UserBO userbo = new UserBO();
	
	while (decimalNumber != 0)
	{
		mod = (int) (decimalNumber % 36);
		strTempVal = strBaseDigits.substring(mod, mod + 1) + strTempVal;
		decimalNumber = decimalNumber / 36;

	}
	String username=user.getUsername();
	String password=strTempVal;
	System.out.println("password in userbs is   "+password);
		status = userbo.setInitialPassword(username, password);
*/
		// send email to the user.
    String username=user.getUsername();
		logger.info("ENTER :: IN TO THE FORGOT PASSWORD SEND MAIL IN THE USER  NAME BS " + username);
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

			logger.info("ENTER :: IN TO THE FORGOT PASSWORD SEND MAIL TRY BLOCK IN THE USER  NAME BS "+username);
			props.load(ProfileupdateAction.class.getClassLoader().getResourceAsStream("resources.properties"));
			String mysangathi = props.getProperty("mysangathi");
			// getting the current time in nanoseconds
			decimalNumber = System.nanoTime();

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
			// System.out.println("alphanumeric code generated from TimeStamp : "
			// + strTempVal);
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("admin@mysangathi.com"));
			// System.out.println("After from address");
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(user.getUsername()));
			message.setSubject("Mysangathi activation Url");
			// System.out.println("After subject");
			message.setContent(
					"Dear Member "
							+ ",<br/>   <br>Forgot temporary password is mentioned below: <br>"+ " <br> Your temporary password is  : "+ strTempVal+ "<br/><br/><b>Note:</b> If you wants change the temporary password click below link.<br/>  <br/> <a href="+mysangathi+"/UI/ForgotPasswordchange.jsp?rannum="
							+ strTempVal+"&username="
							+ user.getUsername()
							+ ">Click here to change the temporary password.</a><br/> <br/><b>Note:</b> If you not a paid member, please contact admin:(91) 9845199675,9663821291.</p><br/> <p>Regards,</p>"
							+ "</br>  <p>MySangathi Team.</p> " + "", "text/html");
			// System.out.println("After Activation URL");
			String url = mysangathi + "/UI/ForgotPasswordchange.jsp?rannum=" + strTempVal + "&username=" + user.getUsername();
			// System.out.println("the urel" + url);
			Transport.send(message);
			// System.out.println("After MESSAGE SENT");
			
			//added the thread class for save the email history table on 12-02-13 of javed
			//start
			FromAddress="admin@mysangathi.com";
			ToAddress=user.getUsername();
			Content="Dear Member "
				+ ",<br/>   <br>Forgot temporary password is mentioned below: <br>"+ " <br> Your temporary password is  : "+ strTempVal+ "<br/><br/><b>Note:</b> If you wants change the temporary password click below link.<br/>  <br/> <a href="+mysangathi+"/UI/ForgotPasswordchange.jsp?rannum="
				+ strTempVal+"&username="
				+ user.getUsername()
				+ ">Click here to change the temporary password.</a><br/> <br/><b>Note:</b> If you not a paid member, please contact admin:(91) 9845199675,9663821291.</p><br/> <p>Regards,</p>"
				+ "</br>  <p>MySangathi Team.</p> " + "";
			
			Subject="Mysangathi activation Url";
			//added the thread class for save the email history table on 12-02-13 javed
			Thread emailhandler3 = new Thread(new EmailHandlerThread(FromAddress, ToAddress, Content, Subject,0 ));
			emailhandler3.start();
			
			//End here

			// System.out.println("Message Sent");

			// System.out.println("Second mail  ----------------------Starts--------------------------------------------------");
			// System.out.println("Message Sent");
			InternetAddress[] toemails = new InternetAddress[2];
			String emailids[] =
			{ "admin@mysangathi.com", "bskmanjunath@yahoo.com" };

			MimeMessage message1 = new MimeMessage(session1);
			message1.setFrom(new InternetAddress("admin@mysangathi.com"));
			// System.out.println("Second mail After from address");
			for (int i = 0; i < emailids.length; i++)
			{
				toemails[i] = new InternetAddress(emailids[i]);
			}
			message1.setRecipients(Message.RecipientType.TO, toemails);

			message1.setSubject("MySangathi New Profile Updated ");
			// System.out.println("Second mail  After subject");
			message1.setContent("Dear Admin,<br/> <P> The registration notification that name of the profile ", "text/html");

			Transport.send(message1);
			// System.out.println("Second mail  After MESSAGE SENT");

			// System.out.println("Second mail  Message Sent");
			// System.out.println("Second mail --------------------------------------------------------------ENDS-----------");
			String password=strTempVal;
			System.out.println("password in userbs is   "+password);
			UserBO userbo = new UserBO();
				status = userbo.setInitialPassword(username, password);
			logger.info("EXIT::IN TO THE FORGOT PASSWORD SEND MAIL TRY BLOCK IN THE USER  NAME BS"+username);
		//	boolean subscribedflag = userbo.subscribe(user.getUsername(), url, strTempVal);
			// System.out.println("subscribedfalg inside BO AFTER subscrption" +
			// subscribedflag);

		}
		catch (IOException e)
		{
			
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
		   //   26-3-13 vijay prasan kumar made changes end

		}
		catch (AddressException e)
		{
			// TODO Auto-generated catch block
			//   26-3-13 vijay prasan kumar made changes 
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
			//   26-3-13 vijay prasan kumar made changes end
		}
		catch (MessagingException e)
		{
			// TODO Auto-generated catch block
			//   26-3-13 vijay prasan kumar made changes 
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
			//   26-3-13 vijay prasan kumar made changes end
		}

		return status;

	}
	
	public String activationstatusurl(String username) throws AuthenticateUserException
	{
		logger.info(" ENTER IN TO THE  ACTIVATION STATUS URL METHOED IN USERBS"+username);
		boolean flag = false;
		UserBO loginbo = new UserBO();
		String status = null;
		Subscription subscriptiondb=null;
		//String userdbname= userdb.getUsername();
		//String statusdb = userdb.getStatus();
		subscriptiondb= loginbo.activationstatusurl(username);
		
		
		if(subscriptiondb == null)
		{

			logger.info(" ENTER IN TO THE  ACTIVATION STATUS URL METHOED IN USERBS IF SUBSCRIPTION DB IS NULL"+username);
			status="ERROR";
		 
		}
		else if (subscriptiondb != null) 
		{

			logger.info(" ENTER IN TO THE  ACTIVATION STATUS URL METHOED IN USERBS IF SUBSCRIPTONDB IS NOT EQUALS TO NULL"+username);
			String userdbname= subscriptiondb.getUsername();
			String statusdb = subscriptiondb.getStatus();
			logger.info("user db "+userdbname);
			System.out.println("user bs db username=="+userdbname);
			
			//System.out.println("user status "+statusdb);
			logger.info("user data base status"+statusdb);
			
			//System.out.println("url=================================="+subscriptiondb.getUrl());
			
			
			if(statusdb.equals("Active") )
			{
				//System.out.println("The user is already active");

				logger.info(" ENTER IN TO THE  ACTIVATION STATUS URL METHOED IN USERBS IF SUBSCRIPTIONDB IS EQUALS ACTIVE"+username);
				status="ACTIVATED";
				 
				
			}
			else if(statusdb.equals("Inactive"))
			{
				//System.out.println("The status is in active sending mail");

				logger.info(" ENTER IN TO THE  ACTIVATION STATUS URL METHOED IN USERBS IF STATUS DB EQUALS TO INACTIVE"+username);
				long decimalNumber = System.nanoTime();;
				String strTempVal = "";
				String strBaseDigits = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
				int mod = 0;
				UserBO userbo = new UserBO();
				
				while (decimalNumber != 0)
				{
					mod = (int) (decimalNumber % 36);
					strTempVal = strBaseDigits.substring(mod, mod + 1) + strTempVal;
					decimalNumber = decimalNumber / 36;
					System.out.println("string as password is    "+strTempVal);

				}
				
				String password=strTempVal;
				System.out.println("password  inside the activation url in BS "+password);

				
				//userbo.setInitialPassword(username, password);

				// send email to the user.

				logger.info("ENTER :: IN TO THE FORGOT PASSWORD SEND MAIL IN THE USER  NAME BS "+username);
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

				
				try
				{
					String FromAddress="";
					String ToAddress="";
					String Content="";
					String Subject="";

					logger.info(" ENTER IN TO THE  TRY BLOCK IN ACTIVATION STATUS URL METHOED IN USERBS"+username);
					props.load(ProfileupdateAction.class.getClassLoader().getResourceAsStream("resources.properties"));
					String mysangathi = props.getProperty("mysangathi");
					// getting the current time in nanoseconds
					decimalNumber = System.nanoTime();
					//System.out.println("url=================================="+subscriptiondb.getUrl());
					
					
					// To convert time stamp to alphanumeric code.
					// We need to convert base10(decimal) to base36
					strBaseDigits = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
					strTempVal = "";
					mod = 0;
					// String concat is costly, instead we could have use stringbuffer
					// or stringbuilder
					// but here it wont make much difference.
					while (decimalNumber != 0)
					{
						mod = (int) (decimalNumber % 36);
						strTempVal = strBaseDigits.substring(mod, mod + 1) + strTempVal;
						decimalNumber = decimalNumber / 36;
					}
					// System.out.println("alphanumeric code generated from TimeStamp : "
					// + strTempVal);
					Message message = new MimeMessage(session);
					message.setFrom(new InternetAddress("admin@mysangathi.com"));
					// System.out.println("After from address");
					message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(username));
					message.setSubject("Mysangathi activation Url");
					// System.out.println("After subject");
					/*message.setContent(
							"Dear Member "
									+ ",<br/>   <br>   This is your Activation link  <br><br/>   <a href="+mysangathi+"/UI/subscribe_changepassword.jsp?rannum="+ strTempVal+ "&username="+ username+ ">" +
											"        Click here to reset password .</a><br/><br/>The account temporary password is mentioned below: <br/>"

									+ " <br> Your temporary password is  : "+ strTempVal+ " <b>Note:</b>Please quote your  ReferenceID for future correspondance.</br><p> <b>Note:</b> If you not a paid member, please contact admin:(91) 9845199675,9663821291.</p><br/> <p>Regards,</p>"
									+ "</br>  <p>MySangathi Team.</p> " + "", "text/html");*/
					message.setContent(
							"Dear Member "
									+ ",<br/>   <br>   This is your Activation link  <br><br/>   <a href="+subscriptiondb.getUrl()+" "+
											" >       Click here to reset password .</a><br/><br/>The account temporary password is mentioned below: <br/>"

									+ " <br> Your temporary password is  : "+ subscriptiondb.getTemppassword()+ " <br/> <b>Note:</b> If you not a paid member, please contact admin:(91) 9845199675,9663821291.</p><br/> <p>Regards,</p>"
									+ "</br>  <p>MySangathi Team.</p> " + "", "text/html");
					System.out.println("After Activation URL");
					 System.out.println("the urel" +subscriptiondb.getUrl() );
					Transport.send(message);
					// System.out.println("After MESSAGE SENT");

					// System.out.println("Message Sent");
					
					//added the thread class for save the email history table on 12-02-13 of javed
					//start
					FromAddress="admin@mysangathi.com";
					ToAddress=username;
					Content="Dear Member "
						+ ",<br/>   <br>   This is your Activation link  <br><br/>   <a href="+subscriptiondb.getUrl()+" "+
						" >       Click here to reset password .</a><br/><br/>The account temporary password is mentioned below: <br/>"

			     	+ " <br> Your temporary password is  : "+ subscriptiondb.getTemppassword()+ " <br/> <b>Note:</b> If you not a paid member, please contact admin:(91) 9845199675,9663821291.</p><br/> <p>Regards,</p>"
				    + "</br>  <p>MySangathi Team.</p> " + "";
					
					Subject="Mysangathi activation Url";
					//added the thread class for save the email history table on 12-02-13 javed
					Thread emailhandler3 = new Thread(new EmailHandlerThread(FromAddress, ToAddress, Content, Subject,0 ));
					emailhandler3.start();
					
					//End here

					
					logger.info(" EXIT:: IN TO THE  TRY BLOCK IN ACTIVATION STATUS URL METHOED IN USERBS"+username);
				//	boolean subscribedflag = userbo.subscribe(username, url, strTempVal);
					// System.out.println("subscribedfalg inside BO AFTER subscrption" +
					// subscribedflag);

				}
				catch (IOException e)
				{
					
					//   26-3-13 vijay prasan kumar made changes 
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
				   //   26-3-13 vijay prasan kumar made changes end

				}
				catch (AddressException e)
				{
					// TODO Auto-generated catch block
					//   26-3-13 vijay prasan kumar made changes 
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
					//   26-3-13 vijay prasan kumar made changes end
				}
				catch (MessagingException e)
				{
					// TODO Auto-generated catch block
					//   26-3-13 vijay prasan kumar made changes 
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
					//   26-3-13 vijay prasan kumar made changes end
				
					//return "SUCCESS";
				}
				
				logger.info(" EXIT::  IN ACTIVATION STATUS URL METHOED IN USERBS"+username);
				status="SUCCESS";
				 
			
			}
				
				
				
			}
		return status;
		
		
	
		
	/*	if( username == userdbname)
		{
			flag=true;
			if( statusdb == "Active");
			{
				flag=true;
				System.out.println("your account is already activated");
			
			}
		
		
		
		 if(userdbname != username)
		{
			flag=false;
			System.out.println("please enter the correct user name");
			
		}
		
		if( username == userdbname)
		{
			flag=true;
			if( statusdb == "Inactive")
			{
				
				
				
			
		
	*/

		
	
	}
	
	public String checkForgotPasswordUserName(String username) throws AuthenticateUserException
	{
		logger.info(" ENTER IN TO THE  CHECK USER METHOED IN USERBS"+username);
		boolean flag = false;
		UserBO loginbo = new UserBO();
		String status = null;
		User userdb=null;
		//String userdbname= userdb.getUsername();
		//String statusdb = userdb.getStatus();
		userdb= loginbo.checkForgotPasswordUserName(username);
		
		
		if(userdb == null)
		{
			System.out.println("User Name is Not Present in the database");
			status="ERROR";
		 
		}
		else if (userdb != null) 
		{
			String userdbname= userdb.getUsername();
			String statusdb = userdb.getStatus();
			logger.info("user db "+userdbname);
			System.out.println("user bs db username=="+userdbname);
			
			System.out.println("user status "+statusdb);
			logger.info("user data base status"+statusdb);
			logger.info(" EXIT::  IN CHECK USER METHOED IN USERBS"+username);
			status="SUCCESS";
				 
			
		}
		//System.out.println("HI JAVED CHECK STATUES"+status);		
		return status;
		
	
	}
	
	public String checkChangePassworUserNameAndPassword(String username,String password)
	{
		String status=null;
		logger.info("check Change Passwor User Name And Password METHOD");
	    UserBO  userbo=new UserBO();
		status = userbo.CheckchangePasswordUserNameAndPassword(username, password);
		logger.info("check Change Passwor User Name And Password==============" +status);
		return status;
	}

}
	

