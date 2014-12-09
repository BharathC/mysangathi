package org.mindlinks.BS;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.log4j.Logger;
import org.mindlinks.BO.InterestProfileBO;
import org.mindlinks.Bean.InterestProfile;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Bean.ProfileViews;
import org.mindlinks.Bean.ProfileViews;
import org.mindlinks.HibernateDAO.EmailHandlerThread;
import org.mindlinks.HibernateDAO.InterestProfileDAO;
import org.mindlinks.Utility.StoreProfileViewThread;

public class InterestProfileBS
{
	private static final Logger logger = Logger.getLogger(InterestProfileBS.class);

	public boolean createInterestProfile(int fromprofileid, int toprofileid)
	{

		logger.info("ENTER::THE CREATE INTEREST PROFILE BS"+fromprofileid);
		Map<String, String> interestdata = new HashMap<String, String>();
		InterestProfileBO ipbo = new InterestProfileBO();
		boolean intereststatus = ipbo.createInterestProfile(fromprofileid, toprofileid);
		interestdata = ipbo.sendMailIntrestedUser(fromprofileid, toprofileid);

		System.out.println("STATE::" + intereststatus);
		if (intereststatus == true)
		{
			logger.info("ENTER::THE CREATE INTEREST PROFILE BS INSIDE THE CHEKS THE INTERESTATUS IS TRUE"+intereststatus );
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
				
				
				logger.info("ENTER::THE CREATE INTEREST PROFILE BS IN SIDE THE TRY BLOCK TO SEND THE MAIL"+ interestdata.get("fromfirstname"));
				long decimalNumber = System.nanoTime();

				// To convert time stamp to alphanumeric code.
				// We need to convert base10(decimal) to base36
				String strBaseDigits = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
				String strTempVal = "";
				int mod = 0;
				// String concat is costly, instead we could have use
				// stringbuffer or stringbuilder
				// but here it wont make much difference.
				/*
				 * while(decimalNumber!= 0){ mod=(int) (decimalNumber % 36);
				 * strTempVal=strBaseDigits.substring(mod,mod+1)+strTempVal;
				 * decimalNumber=decimalNumber/36; } System.out.println(
				 * "alphanumeric code generated from TimeStamp : "+strTempVal);
				 */

				Message message = new MimeMessage(session);
				message.setFrom(new InternetAddress("admin@mysangathi.com"));
				message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("admin@mysangathi.com"));
				message.setSubject("Interested Profile");
				//System.out.println("After subject");
				/*
				 * message.setContent("Dear Admin" +
				 * interestdata.get("tofirstname") +
				 * ",<br/>&nbps This is to let you know name of the person with   Please click on below link to Activate Your Profile on Mysangathi.</br> "
				 */
				message.setContent("Dear  Admin" +",<br/> New interest is shown by the user with following details:</br> </br>" + "<br/><b>Profile who shown Interest:</b><p>User Name:" + interestdata.get("fromfirstname") + " " + "AND RefrenceId :"
						+  interestdata.get("fromreferenceid") + "</br>," + "<br/><b>Choosen Profile:</b><p>User Name:" + interestdata.get("tofirstname") + " " + "AND RefrenceId :"+ interestdata.get("toreferenceid") + ",</p></br>Regards," + "<p>MySangathi Support Team</p>", "text/html");

				Transport.send(message);
				logger.info("EXIT::THE CREATE INTEREST PROFILE BS TRY BLOCK AFTER MESSAGE SENT"+ interestdata.get("fromfirstname"));
				
				//added the thread class for save the email history table on 12-02-13 of javed
				//start
				FromAddress="admin@mysangathi.com";
				ToAddress="admin@mysangathi.com";
				Content="Dear  Admin" +",<br/> New interest is shown by the user with following details:</br> </br>" + "<br/><b>Profile who shown Interest:</b><p>User Name:" + interestdata.get("fromfirstname") + " " + "AND RefrenceId :"
					+  interestdata.get("fromreferenceid") + "</br>," + "<br/><b>Choosen Profile:</b><p>User Name:" + interestdata.get("tofirstname") + " " + "AND RefrenceId :"+ interestdata.get("toreferenceid") + ",</p></br>Regards," + "<p>MySangathi Support Team</p>";
				
				Subject="Interested Profile";
				//added the thread class for save the email history table on 12-02-13 javed
				Thread emailhandler3 = new Thread(new EmailHandlerThread(FromAddress, ToAddress, Content, Subject,0 ));
				emailhandler3.start();
				
				//End here
				// boolean subscribedflag
				// =ipbo.subscribe(profile.getEmail(),url,strTempVal);
				// System.out.println("subscribedfalg inside BO AFTER subscrption"+subscribedflag);
			}
			catch (MessagingException e)
			{
				logger.error("EXIT::THE CREATE INTEREST PROFILE BS CATCH BLOCK " +e );
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

		}
		logger.info("RETUREN::THE CREATE INTEREST PROFILE BS AND IT RETURNS THE INTREST STATUS" + interestdata.get("fromfirstname"));
		return intereststatus;
	}

	public ArrayList<Profile> interestedProfiles(int profileid)
	{

		logger.info("ENTER::THE INTERESTED PROFILES BS" +profileid);
		ArrayList<Profile> profiles = null;

		InterestProfileBO ipbo = new InterestProfileBO();
		profiles = ipbo.interestedProfiles(profileid);
		logger.info("EXIT::THE INTERESTED PROFILE BS");
		return profiles;
	}

	public int getInterestedprofileById(int fromprofileid, int toprofileid)
	{
		logger.info("ENTER::THE GET INTERESTED PROFILES BY ID BS" +toprofileid);
		int interestcount;
		InterestProfile interestprofile = new InterestProfile();
		InterestProfileBO ipbo = new InterestProfileBO();
		interestprofile = ipbo.getInterestedprofileById(fromprofileid, toprofileid);
		if (interestprofile != null)
		{
			logger.info("ENTER::THE GET INTERESTED PROFILES BY ID BS CHCKS THE INTERESTED PROFILE NOT EQUALS NULL"+interestprofile);
			interestcount = 1;

		}
		else
		{
			logger.info("ENTER::THE GET INTERESTED PROFILES BY ID BS CHCKS THE INTERESTED PROFILE  EQUALS NULL" +interestprofile);
			interestcount = 0;
		}
		
		//1.Create profile object and populate the variables
		
		logger.info("ENTER::THE PROFILE VIEWS IN THE  INTERESTED PROFILES BY ID BS");
		ProfileViews profile = new ProfileViews();
	  profile.setFromprofileid(fromprofileid);
	  System.out.println();
	    logger.info("IN INTRUSTED PROFILES FROM PROFILE ID IS" +profile.getFromprofileid());
		profile.setToprofileid(toprofileid);
		logger.info("IN INTRUSTED PROFILES TO PROFILE ID IS "+profile.getToprofileid());
		
		
		/*
		profile.getToprofileid();
		profile.getFromRefrenceId();
		profile.getFromprofileid();
		*/
		
		//2.Set the values of the profile view member variables
		StoreProfileViewThread newThread = new StoreProfileViewThread(profile);
		InterestProfileBO spvt = new InterestProfileBO();
		spvt.StoreProfileViewThread(profile);
		newThread.start();
		
		
		
		logger.info("RETURN::THE GET INTERESTED PROFILES BY ID BS CHCKS THE INTERESTED PROFILE RETURNS INTRESTPROFILE COUNT"+interestcount);
		return interestcount;
	}
	
	public boolean interestProfileMessage(int fromprofileid,int toprofileid , String message)
	{  
		boolean  flag;
		
		//System.out.println("message in bs========="+message);
		logger.info("ENTER::THE INTRESTED PROFILE MESSAGE BS METHOD");
		InterestProfileDAO  interestprofiledao=new InterestProfileDAO();
		flag=interestprofiledao.interestProfileMessage(fromprofileid,toprofileid, message);
		logger.info("ENTER::THE INTRESTED PROFILE MESSAGE BS METHOD");
		return flag;
		
	}
	
	
	

}
